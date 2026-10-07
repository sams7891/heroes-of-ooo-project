# Heroes of Ooo: development and installation guide

This project adapts Adventure Time: Heroes of Ooo 1.2.10 for personal use on a
Galaxy A55 5G and makes its recovered code editable. It is an Apktool/smali
project, not the publisher's original Java project. The release retains package
`com.globalfun.adventuretime.free`, version name `1.2.10`, and version code `24`.
The repository release tag identifies our changes separately from that Android
version number.

## What changed, how, and why

| Change | Implementation | Reason |
| --- | --- | --- |
| Installation compatibility | Remove both ARM32 Immersion native libraries and force the haptic SDK factory down its existing failure path | The installer rejected the original APK's native ABI on the A55 |
| SDK declaration | Raise minimum SDK from 9 to 24; the omitted target SDK therefore has an effective value of 24 | Address modern Android's low-target installation restriction; requires Android 7.0 or later |
| Faster text | `UI.moveCursor` overrides the speed argument with `const/4 p3, 0x3` | Reveal dialogue more quickly while leaving simulation timing intact |
| Smoother rendering | Keep 70 ms simulation ticks; draw between ticks at roughly 16 ms intervals and interpolate positions | The original 70 ms pacing limited visual updates to roughly 14.3 FPS; shortening gameplay ticks would also speed up the game |
| Editable build | Reassemble `decoded/smali` with Apktool and sign through the Python build tools | Allow code and asset changes without the unavailable original Java sources |

The optional native library, `libImmEndpointWarpJ.so`, implements Immersion
media haptics used by AdColony video advertisements. The factory already
returns `null` if library loading fails. The patch forces that branch rather
than converting ARM32 machine code into ARM64. The game's ordinary vibration
route through Android's `Vibrator` remains. Advertising SDK classes remain too.
See [the compatibility analysis](COMPATIBILITY.md) for bytecode details.

The rendering changes are in `Engine.smali`, `Actor.smali`, `Room.smali`, and
the new `RenderClock.smali`. Before simulation updates, previous actor positions,
jump height, and camera positions are saved. Drawing blends previous and current
values according to elapsed time within the 70 ms step. Input, animation,
collisions, combat, and UI logic remain in simulation updates. Interpolation
introduces one simulation tick of visual latency. New actors, explicit location
changes, and quick camera focus snap rather than blending across a teleport.
Hidden/rotated screens and stalls longer than 280 ms reset the deadline.
Smaller overruns catch up with fixed ticks while drawing is skipped.
See [fixed-step rendering](FIXED_STEP_RENDERING.md).

This design aims for smoother movement with unchanged gameplay speed. It is
not evidence of a measured 60 FPS result, nor proof that every render path is
free of side effects. Device testing remains necessary.

## Install the release and preserve progress

Download `heroes-of-ooo-build.apk` from the private GitHub release. On the phone,
open it and allow installation from the app you used to open the APK when Android
requests that permission. Keep Android's security scanning enabled.

If this is replacing a previous development build signed with the same key,
install it as an update. With Android SDK Platform Tools, USB debugging enabled,
and the phone's USB authorization accepted:

```powershell
adb devices
adb install -r .\heroes-of-ooo-build.apk
```

Do not uninstall the existing game or clear its storage to resolve an update
error. Saved data normally belongs to the installed app. Updates require the
same package and compatible signing identity. The publisher APK and our first
compatibility-test APK use different certificates from this development release.
An incompatible signature requires investigating save migration before replacing
the installation. This project does not supply an automatic save exporter.

Development certificate SHA-256:

```text
9fd9a8a69d5d7cb6d00dc55ac7c5a731f4be84168b8922438157d84e9a8323a1
```

The public fingerprint can be shared. Keep the private signing files in
`.local/keys` backed up privately. They are deliberately excluded from Git.
A fresh clone creates a new key unless you restore your existing key directory
locally before building; that new identity cannot update an existing installation
signed with your old key. Never commit a key to fix this.

## Set up on Windows

Install Python 3 and a JDK 17 or later. Install Android SDK Platform Tools if
you want ADB installation. Git is needed for repository work.

Clone the private repository to a short path and open its root folder in your
editor. In PowerShell, from that folder:

```powershell
py -3 -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe project.py doctor
.\.venv\Scripts\python.exe project.py build
.\.venv\Scripts\python.exe project.py verify .\build\heroes-of-ooo-build.apk
.\.venv\Scripts\python.exe -m unittest discover -s tests
```

The pinned dependencies are cryptography 46.0.0 and Apktool 2.12.1. The build
checks the bundled Apktool hash. Output is `build/heroes-of-ooo-build.apk` and
a JSON verification report. See [build details](BUILDING.md).

Use `project.py build` for code changes. `build-assets` and `build-compat`
use the reference/original bytecode and do not assemble the current smali
rendering changes.

## Where to edit

| Path | Purpose |
| --- | --- |
| `decoded/smali/com/globalfun/adventuretime/free/` | Editable game code |
| `decoded/assets/high/` and `decoded/assets/medium/` | Game assets |
| `reference/java/com/globalfun/adventuretime/free/` | Decompiled Java for reading only; predates these smali changes |
| `project.py` and `hooo/` | Build, compatibility checks, and signing |
| `docs/` | Setup, architecture, validation, and patch explanations |

VS Code works well for smali and Python edits. Android Studio can open the
folder for editing and provide an emulator, but this project has no Gradle
Android application module. Build with the commands above rather than Studio's
normal Run button. Decompiled Java can contain reconstruction errors and edits
to it do not change the APK. Resources are retained in raw/encoded form; do not
treat the manifest or compiled resources as an ordinary source XML project.

To change dialogue speed, find `UI.smali`, method
`moveCursor(Ljava/lang/String;II)I`, and adjust its `const/4 p3, 0x3` instruction.
Value `1` restores the original character budget, `3` is the current faster
setting, and `6` is faster again. Spaces are skipped, so these are budgets per
simulation update rather than exact characters per second. Setting zero is not
a supported way to slow text down. Never change the 70 ms simulation step as
a shortcut to higher FPS.

## Test in Android Studio's emulator

Create an API 24 or newer virtual device in Device Manager, start it, then use
ADB to install the built APK. If several devices are connected, choose the
target explicitly with `adb -s SERIAL install -r PATH_TO_APK`. A fresh emulator
has its own empty save data; it does not inherit phone progress.

Static verification confirms ZIP CRCs, DEX integrity, the forced haptics failure
path, absence of native libraries, and the project's APK v2 signature. Eleven
tests passed when preparing this release. A separate Apktool assembly of the
uploaded source produced identical uncompressed payload entries to the supplied
signed release APK. These checks do not establish gameplay correctness or
device frame rate. The initial compatibility APK was reported working by the
owner on the A55; runtime validation of this rendering release remains pending.

Compare against a reference installation on a separate emulator/device so the
reference's different signing identity does not replace your phone installation:

- Compare movement duration, combat, cooldowns, and animation speed.
- Watch camera scrolling, sprites, jumps, shadows, and room tiles together.
- Test teleports, room entry, scene changes, dialogue, and menus.
- Background and resume the app; check for catch-up bursts or stale positions.
- Confirm an update keeps a known save and the compatibility patch still works.
- Record device/API, release hash, observations, and any logs in the validation notes.

## Continue development and release

Work on a Git branch, inspect the diff, build, run tests, and test on a device.
Commit source and documentation; keep keys, environments, and generated build
directories out of Git. Upload the signed APK as a release asset with its
verification JSON and SHA-256 checksum. Release tags such as
`v1.2.10-personal.1` describe personal changes without pretending to be an
official publisher release. Mark experimental rendering releases as prereleases
until runtime checks pass. Game content and third-party components retain their
respective owners' rights; this repository does not relicense them.
