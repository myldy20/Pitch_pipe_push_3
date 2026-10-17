"""Static contract checks. Cannot emulate a Max DSP runtime or Push firmware."""
import json
import math
import sys
import unittest
from collections import defaultdict, deque
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))
from build_amxd import encode_amxd, decode_amxd, SOURCE

ALLOWED = {
    "plugin~", "plugout~", "fzero~", "speedlim", "split", "t", "delay",
    "prepend", "expr", "clip", "peakamp~", "f", "cycle~", "saw~",
    "selector~", "pack", "line~", "loadbang", "deferlow", "live.banks",
    "+~", "*~", "hip~", "+"
}

class PatchTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.raw = SOURCE.read_bytes()
        cls.patch = json.loads(cls.raw)["patcher"]
        cls.boxes = {b["box"]["id"]: b["box"] for b in cls.patch["boxes"]}
        cls.lines = [x["patchline"] for x in cls.patch["lines"]]
        cls.by_text = {b.get("text"): i for i, b in cls.boxes.items() if "text" in b}
        cls.edges = defaultdict(list)
        for line in cls.lines:
            cls.edges[line["source"][0]].append(line["destination"][0])

    def path_exists(self, origin, target):
        queue, seen = deque([origin]), set()
        while queue:
            node = queue.popleft()
            if node == target:
                return True
            if node in seen:
                continue
            seen.add(node)
            queue.extend(self.edges[node])
        return False

    def test_patch_is_parseable(self):
        self.assertEqual(len(self.boxes), len(self.patch["boxes"]))
        self.assertGreater(len(self.lines), 40)

    def test_valid_patchcords_and_port_indices(self):
        for line in self.lines:
            src, dst = line["source"], line["destination"]
            self.assertIn(src[0], self.boxes)
            self.assertIn(dst[0], self.boxes)
            self.assertTrue(0 <= src[1] < self.boxes[src[0]]["numoutlets"], line)
            self.assertTrue(0 <= dst[1] < self.boxes[dst[0]]["numinlets"], line)

    def test_no_third_party_externals(self):
        for box in self.boxes.values():
            if box["maxclass"] == "newobj":
                self.assertIn(box["text"].split()[0], ALLOWED, box["text"])
            else:
                self.assertIn(box["maxclass"], {"comment", "message", "live.numbox", "live.text", "live.menu"})
        self.assertEqual(self.patch.get("dependency_cache", []), [])

    def test_audio_signal_paths(self):
        i, o = self.by_text["plugin~"], self.by_text["plugout~"]
        self.assertTrue(self.path_exists(i, o))
        self.assertEqual({line["destination"][1] for line in self.lines if line["destination"][0] == o}, {0, 1})
        self.assertEqual({line["source"][1] for line in self.lines if line["source"][0] == i}, {0, 1})
        for osc in ("cycle~", "saw~"):
            self.assertTrue(self.path_exists(self.by_text[osc], o))

    def test_tuner_does_not_hear_its_own_reference_tone(self):
        fzero = next(i for i, b in self.boxes.items() if b.get("text", "").startswith("fzero~ "))
        self.assertTrue(self.path_exists(self.by_text["plugin~"], fzero))
        self.assertTrue(self.path_exists(self.by_text["hip~ 45."], fzero))
        self.assertTrue(self.path_exists(fzero, self.by_text["delay 900"]))
        for osc in ("cycle~", "saw~"):
            self.assertFalse(self.path_exists(self.by_text[osc], fzero))

    def test_two_push_banks_and_eight_slots(self):
        self.assertIn("live.banks", self.by_text)
        params = self.patch["parameters"]
        valid = {p[0] for p in params.values() if isinstance(p, list)}
        banks = params["parameterbanks"]
        self.assertEqual(len(banks), 2)
        used = []
        for bank in banks.values():
            self.assertEqual(len(bank["parameters"]), 8)
            for name in bank["parameters"]:
                self.assertTrue(name == "-" or name in valid)
                if name != "-":
                    used.append(name)
        self.assertEqual(set(used), valid)
        self.assertEqual(len(used), len(set(used)))

    def test_parameter_defaults_and_domains(self):
        values = {}
        for box in self.boxes.values():
            if box["maxclass"] not in ("live.numbox", "live.text", "live.menu"):
                continue
            attrs = box["saved_attribute_attributes"]["valueof"]
            values[attrs["parameter_longname"]] = attrs
            self.assertEqual(box["parameter_enable"], 1)
            self.assertEqual(attrs["parameter_initial_enable"], 1)
            initial = attrs["parameter_initial"][0]
            self.assertLessEqual(attrs.get("parameter_mmin", 0), initial)
            self.assertLessEqual(initial, attrs["parameter_mmax"])
        self.assertEqual(values["A4 Reference"]["parameter_initial"], [440])
        self.assertEqual(values["Tone Enable"]["parameter_initial"], [0])
        self.assertEqual(values["Audio Thru"]["parameter_initial"], [1])
        self.assertEqual(values["Tone Note"]["parameter_initial"], [69])

    def test_tuning_math_vectors(self):
        def calc(freq, a4):
            note = 69 + 12 * math.log2(freq / a4)
            near = math.floor(note + 0.5)
            return near, 100 * (note - near)
        for frequency, reference, note in [
            (440, 440, 69), (432, 432, 69), (220, 440, 57),
            (261.625565, 440, 60), (880, 440, 81),
        ]:
            actual, cents = calc(frequency, reference)
            self.assertEqual(actual, note)
            self.assertLess(abs(cents), 0.01)
        self.assertAlmostEqual(calc(440 * 2 ** (25 / 1200), 440)[1], 25, places=5)

    def test_archive_roundtrip(self):
        binary = encode_amxd(self.raw)
        self.assertEqual(decode_amxd(binary), self.raw)
        self.assertLess(len(binary), 250_000)
        self.assertTrue(binary.startswith(b"ampf"))
        self.assertIn(b"JSONfnam", binary)

    def test_known_ux_limitation_is_tracked(self):
        readouts = {"Detected Note", "Detune Cents", "Detected Hz", "Input Level"}
        matches = []
        for box in self.boxes.values():
            if box["maxclass"] not in ("live.numbox", "live.text", "live.menu"):
                continue
            val = box["saved_attribute_attributes"]["valueof"]
            if val["parameter_longname"] in readouts:
                matches.append(val)
        self.assertEqual(len(matches), 4)
        for val in matches:
            self.assertEqual(val["parameter_invisible"], 4)

if __name__ == "__main__":
    unittest.main()
