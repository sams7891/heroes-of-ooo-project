# v1.2.10-personal.1 — A55 compatibility and interpolated rendering

Personal development prerelease based on the latest uploaded project.

## Changes and reasons

- Removed the optional ARM32 Immersion video-ad haptics libraries and forced
  the existing SDK factory failure path, addressing the A55 installation ABI error.
- Raised the minimum/effective target SDK to 24 for modern installation
  compatibility. This is not a native ARM64 port.
- Retained the 70 ms gameplay simulation step and added intermediate rendering
  with actor, jump/shadow, camera, and tile interpolation. This addresses choppy
  movement without intentionally speeding up combat, animation, or cooldowns.
- Added snap/reset behavior for location changes, room camera focus, suspension,
  and long stalls to reduce interpolation and catch-up artifacts.
- Increased dialogue character budget to 3 per simulation update.
- Included editable smali, Python build tools, reference Java, and a practical
  setup/install/edit/test guide at `docs/PROJECT_GUIDE.md`.

## Validation

Eleven archive/signing tests passed. APK CRC, DEX integrity, APK v2 signature,
zero packaged native libraries, and the haptics failure path were verified.
Reassembling the uploaded source produced identical uncompressed APK payload
entries to the supplied release APK. The initial compatibility APK was reported
working on the A55. Runtime/gameplay/frame-rate validation of this rendering
release is still pending; no measured 60 FPS claim is made.

## Install without losing progress

Install as an update only when the installed package and signing identity match.
Use `adb install -r heroes-of-ooo-build.apk`. Never uninstall or clear app data
to resolve a signature mismatch before investigating save migration. Keep your
existing `.local/keys` private and backed up for future updates.

APK SHA-256:
`fe5b1ecf73fed3c245f72eb7d9bcbf1601cb65669c8be57340328dc8d8b72c5f`

Signing certificate SHA-256:
`9fd9a8a69d5d7cb6d00dc55ac7c5a731f4be84168b8922438157d84e9a8323a1`

Android package/version: `com.globalfun.adventuretime.free`, `1.2.10` / `24`.
Minimum API: 24. The private signing key is not part of the release or repository.
