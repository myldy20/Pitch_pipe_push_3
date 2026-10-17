# Push 3 Standalone hardware verification checklist

Complete on **a copy of the device**. A green GitHub Actions run is only a static pass.

## Phase A: macOS + Live/Max
1. Download `Pitch Pipe P3.amxd` from the latest successful Actions run artifact.
2. Drop it onto an **audio** track in Live 12 Suite; set audio input and Monitor = In.
3. Right-click the device title > Open Max Window. Record any missing object, error or warning, with the Live + bundled Max versions.
4. Verify the device loads initially with **Tone Enable = Off**, **Audio Thru = On**, **Waveform = Sine**. This explicitly tests the original initialization bug.
5. Generate reference sine waves and route them into the device:
   - 440 Hz at A4=440: A4 / 0 cents
   - 220 Hz: A3 / 0 cents
   - ~261.63 Hz: C4 / 0 cents
   - 432 Hz with A4=432: A4 / 0 cents
   - 440 Hz with A4=432: A4 / about +31.8 cents
   - silence: readouts reset after approximately 900 ms
6. Enable reference tone, choose A4, Sine, Level 0.1: audible clean 440 Hz on both output channels. Toggle Saw; check amplitude and harmonics.
7. With tone OFF, switch Audio Thru OFF/ON: input should mute/pass respectively. Repeat with tone ON.
8. Turn Tone Level to maximum carefully; watch output peak meters for clipping when input is also passed through.
9. Save a Live Set with changed A4, pitch, level, waveform and thru. Close/reopen and confirm settings are recalled and tone is not unexpectedly enabled.
10. Test two instances on separate tracks: changing one does not change the other.
11. Inspect CPU usage and parameter banks using Push in Control Mode.

## Phase B: Push Standalone
1. Transfer the AMXD from Live's Places > Push > User Library, then disconnect the Mac / switch to standalone.
2. Insert the device on an audio track; verify **no incompatible-object error**.
3. Open the device controls; verify **Tuner / Tone** and **Input** banks appear, labels fit, and controls change as intended.
4. Check readouts while playing single sustained notes; identify whether they refresh on Push and whether encoder interactions cause confusing transient values.
5. Repeat audio-thru and reference-tone tests on headphones **at low volume**. Verify both channels, no unexpected tone at boot.
6. Save/reopen Set. Power-cycle Push and reopen; check saved state, no parameter reset glitches.
7. Record Push OS, Live version, Max runtime if available, test audio interface/config, screenshots/videos and errors.

## Acceptance thresholds
- No missing object or patcher error.
- Initial tone is OFF and the audio-thru path is ON.
- For clean stable sine inputs: correct octave/note; steady cents generally within +/- 5 (needs real runtime evidence).
- Audio routing and saved parameter state survive reload.
- No stuck reference tone, feedback path, loud transient or persistent clipping.
- Encoder pages usable without a desktop screen.

Only after these steps may a release be labeled **Push-verified**.

Useful references:
- https://github.com/robenkleene/sidewinder
- https://help.ableton.com/hc/en-us/articles/8506527153308-Max-for-Live-Devices-on-Push-3-standalone
- https://docs.cycling74.com/reference/live.text
