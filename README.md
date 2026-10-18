# Pitch Pipe for Push 3 Standalone

An **experimental, unverified** Max for Live audio effect derived from the *core functionality* of Iftah's Pitch Pipe. It has been reimplemented using built-in Max/MSP objects in an attempt to work on Push 3 Standalone (Linux). It is **not** a full port of the original, and it **has loaded on desktop Live and Push 3 Standalone during first user testing**, but the user reported `No Signal` and zero input readouts, so its end-to-end tuning behavior remains **unverified**.

## Features
- Monophonic input pitch estimate via native `fzero~`; nearest MIDI note, cents, Hz and input-level readouts
- Adjustable concert pitch A4, 400–480 Hz (default 440)
- Sine/saw reference tone, selectable MIDI note and tone gain (off by default)
- Stereo audio-through (on by default)
- Two parameter pages of up to eight Push encoder slots (`live.banks`)
- No third-party objects or external audio assets/scripts in the patch

## Development

```bash
python -m unittest discover -s tests -v
python tools/build_amxd.py
```

The generated `dist/Pitch Pipe P3.amxd` is a **candidate** built using the AMXD archive layout found in the supplied device; the script does **not** run Max, does not freeze the device, and cannot certify that Max will load or execute it.

GitHub Actions runs the static checks on commits and PRs, then publishes the resulting file as the `pitch-pipe-p3-UNVERIFIED-candidate` workflow artifact.

## Quick start: tuning a bass

Pitch Pipe P3 is an **audio effect**, not a MIDI instrument. The four readouts are **Note**, **Cents** (negative = flat; positive = sharp), **Hz** (estimated input frequency) and **Input** (peak input level, 0–100%). If **Input remains 0 while playing**, the effect is not receiving audio at its input; first correct routing or monitoring before adjusting tuner sensitivity.

For a bass connected to Push 3 Standalone:

1. Plug bass into a Push input (use appropriate input mode/preamp/gain; watch for clipping).
2. Create/select an **audio track**. Choose the physical input under Audio From and the correct channel; arm the track and use **Monitor = Auto** or **Monitor = In** for constant input. On Push Standalone, selecting an audio track normally arms it automatically.
3. Put Pitch Pipe P3 **after** the audio source in the device chain. **For an existing audio clip** use Monitor = **Off**, or Auto with the track **not armed**; then press Play. Do **not** use Monitor = In while testing a clip: that mode suppresses clip playback. (For a live bass cable, the earlier Monitor = In / Auto armed instructions apply.)
4. Begin with **Tone Off**, **Thru On**, **A4 = 440**, and play **one sustained bass note**. Check that the input meter rises above zero before interpreting the note/cents.
5. Standard four-string tuning: **E1 41.20 Hz, A1 55.00 Hz, D2 73.42 Hz, G2 98.00 Hz**. Five-string low B0 is 30.87 Hz. Adjust each string until Cents is near 0.
6. The Tone/Pitch/Level/Wave controls are for an **optional reference oscillator**. Turn Tone On and raise Level above 0 if you want to tune by ear. The Pitch control does not choose the note detected by the tuner.
7. On Push, `Tuner` bank includes Note, Cents, Hz, Input, A4, Tone, Pitch, Level. `Output` bank includes Wave and Thru.

If Input is still 0, verify the track's meters with Ableton's built-in Tuner as a routing reference. If Input moves but Note remains No Signal, raise the instrument/preamp level, play a single clean sustained note, and check the Max Console for `fzero~` errors. Unlike the built-in Tuner, this device still needs real-world validation of bass octave accuracy.

The [official Push 3 manual's audio setup section](https://www.ableton.com/en/push/manual/#recording-audio) documents audio inputs and Auto/In monitoring.

## Changes after first hardware feedback

The initial version had undocumented numeric readouts; `live.text` toggles showed `val1/val2` on Push because automation labels were missing, and the analysis chain used a 45 Hz high-pass and comparatively high `fzero~` threshold. In this revision we add legends and automation labels, reduce the pre-detection filter cutoff to 15 Hz, change `fzero~` threshold to 0.002, and use `assign` (rather than silent `set`) to publish measurements to the Live-facing parameters. The last change is **intended** to make measurements update reliably on Push, but needs testing on your device.

## Install / hardware verification

Use a current Ableton Live with Max for Live on Mac first. Open the AMXD on an audio track and check the Max Console for errors; then transfer to Push's User Library using Live's Places > Push browser. Full manual verification checklist: [docs/manual-test-plan.md](docs/manual-test-plan.md).

## What automation covers

- Valid patcher JSON; object and patchcord references / port numbers
- A curated allowlist of core objects, and absence of declared external dependencies
- Graph-level audio input/output routing; oscillator connected to output but isolated from tuner input
- Push parameter banks and their defined parameters
- Expected Live parameter defaults, domain bounds and nominal tuning arithmetic
- Reproducible AMXD wrapping and extraction

**What automation cannot cover:** Max object instantiation, oscillator audio quality, `fzero~` real-world pitch accuracy, click/pop behavior, saved Set recall in Live, latency, CPU usage, parameter display/rendering on Push and real Linux/Push compatibility.

## Known risks

1. Four measurement fields are exposed as parameter-bank entries. They are status values and should be considered effectively read-only, but the encoders can still turn them before a new measurement overwrites the values.
2. Status controls use `parameter_invisible=4` (Visible Not Stored); their behavior needs validation against the Max runtime installed on Push.
3. The current `fzero~` settings prioritize a single monophonic input. Polyphonic, noisy or transient-rich sources can cause wrong octave readings.
4. Output is a mix of dry input (when enabled) and reference oscillator; avoid high levels and check clipping.
5. The archive is constructed without the Max app's native Freeze/Save workflow. Confirm loading, then freeze and save from Live before distributing a release.

## Acknowledgements and references

- Original concept: Pitch Pipe by Iftah; this repo contains a limited functional reimplementation, without the original interface, narration, instrument presets or keyboard controls.
- [Ableton: Max for Live on Push 3 Standalone](https://help.ableton.com/hc/en-us/articles/8506527153308-Max-for-Live-Devices-on-Push-3-standalone)
- [Ableton/maxdevtools production guidelines](https://github.com/Ableton/maxdevtools/tree/main/m4l-production-guidelines)
- [Ableton/maxdevtools patch code standard](https://github.com/Ableton/maxdevtools/tree/main/patch-code-standard)
- [Sidewinder, a documented Push Standalone M4L project](https://github.com/robenkleene/sidewinder)
- [Cycling '74 fzero~ reference](https://docs.cycling74.com/reference/fzero~/)

License: **not yet determined**. Before publishing an upstream release, check the terms of the original device, even though this candidate does not include its external binaries.
