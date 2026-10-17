# Pitch Pipe for Push 3 Standalone

An **experimental, unverified** Max for Live audio effect derived from the *core functionality* of Iftah's Pitch Pipe. It has been reimplemented using built-in Max/MSP objects in an attempt to work on Push 3 Standalone (Linux). It is **not** a full port of the original, and it has **not yet been run in Ableton Live or on Push hardware**.

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
