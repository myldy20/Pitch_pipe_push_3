# Push 3 Standalone research notes (2026-10-17)

These notes distinguish documented behavior from still-unverified assumptions.

## Referenced implementations and lessons

| Reference | What it demonstrates | Applied here |
| --- | --- | --- |
| [Ableton / maxdevtools](https://github.com/Ableton/maxdevtools) | Production guideline: isolate dependencies, store/recall Live parameters, freeze only at distribution; patch-code standard includes a dedicated Push banks subpatcher. | Built-in object allowlist, explicit live.banks, stable parameters, offline graph checks; native Freeze deferred to Mac |
| [Sidewinder](https://github.com/robenkleene/sidewinder) | Open-source sequencer documents installing a frozen AMXD into Push's User Library and browsing it on device. | Manual install instructions and acceptance plan |
| [CDM / Isotonik guide](https://cdm.link/2023/09/making-max-for-live-devices-work-on-push-and-push-3-standalone/) | Push controls need explicitly mapped banks (eight encoders per bank); a device built around a computer screen needs a hardware-focused UI. | Two banks, hardware test for labels and readouts |
| [Grids 4 Push discussion](https://maxforlive.com/library/device/9793/grids-4-push) | Push encoder support and Push Standalone compatibility can diverge when devices include external objects. | Reject third-party binaries in candidate |
| [Autonomia user reports](https://max4.live/device/8887/autonomia/) | Some parameters may display even if the device's runtime behavior fails. | Treat successful bank rendering as insufficient for release |
| [m4l-jweb](https://github.com/alienmind/m4l-jweb) | Open-source tooling can generate patcher and AMXD containers without Max Editor; headless targets explicitly reject browser-only features. | Reproducible candidate archive; keep testing limitations explicit |

## Compatibility conclusions

1. Ableton explicitly cautions that third-party Max for Live devices are not guaranteed to run on Push Standalone: https://help.ableton.com/hc/en-us/articles/8506527153308-Max-for-Live-Devices-on-Push-3-standalone
2. External binaries are platform-specific; the original Pitch Pipe embeds macOS-specific `maxess.element` / `maxess.keyboard`. This candidate replaces their functionality with a smaller native Max/MSP DSP patch. This means several original UI/accessibility features are missing, by design.
3. `live.banks` exposes M4L parameters but does not solve every Push UX challenge. Status-only fields may behave like knobs; check this on hardware.
4. Native Max's `live.text` treats a `bang` as a **toggle** (https://docs.cycling74.com/reference/live.text); the first candidate sent startup bangs, potentially enabling the reference tone. The corrected version uses `outputvalue` messages to report current state without changing it.
5. Static CI cannot simulate Max/MSP scheduler/audio execution. The Max Console, tone output, detection accuracy, parameter recall, CPU and Push display all require later runtime tests.

## Design follow-ups

- Explore separating five true controls (A4 Ref, Tone Enable, Tone Note, Level, Wave) from read-only diagnostic displays. Push offers encoder-centric value display, so achieving a genuinely read-only live status requires a deliberate workaround and hardware validation.
- Add an optional instrument mode that mutes dry audio and leaves tuning feedback visible.
- Validate native Max freeze/save path and simplify the file packaging workflow before any public release.
- If more advanced tuner accuracy is needed, benchmark `fzero~` against voice/bass fundamentals, octave errors and onset latency; all claims about tracking accuracy require captured Max runtime data.
