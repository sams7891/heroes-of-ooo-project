# Validation status

Prepared on 2026-10-04 for the supplied 1.2.10 APK.

## Confirmed on your phone

You reported that the original compatibility-test APK **installed and ran
correctly** on your Galaxy A55 5G. The exact file is retained as
`reference/confirmed-working.apk`. This is a user-reported device result; it
does not imply exhaustive gameplay, save, advertisement or network testing.

## Project checks completed

- The Python compatibility build reproduces **every uncompressed archive-entry
  byte** of that confirmed APK. Signing identity, ZIP alignment and container
  bytes may differ.
- Relative to the original, the compatibility path changes only `classes.dex`
  and `AndroidManifest.xml`, and removes the native library/signature entries.
- The editable smali project was assembled successfully by bundled Apktool.
  Its unsigned and signed outputs pass ZIP, DEX and compatibility verification.
- All **41,442 defined methods** match the confirmed APK in descriptors, access
  flags, register/input/output/try counts and raw instruction bytes after the
  unmodified smali rebuild. This check excludes debug offsets and the exception
  handler data outside instruction arrays.
- The rebuilt APK keeps all other archive payloads identical to the confirmed
  APK. The DEX was fully parsed: **613,142 instructions/payload records**.
- V2 RSA signatures and content digests pass the included verifier. OpenSSL
  independently reported `Verified OK` for the rebuilt APK's RSA signature.
- A real source edit enabling `Main.logMessage` was applied, rebuilt and
  inspected. Its compiled DEX calls `android.util.Log.d` as intended. The edit
  was then reverted in the downloadable default project.
- **Nine automated integration tests passed**, including wrong-input rejection,
  archive preservation, changed-asset isolation, certificate reuse, deterministic
  signing with one key, alignment and tamper rejection.
- The decoded tree has no case-insensitive path collisions.

Evidence is in `reports/`. Original APKs are unchanged. Private signing keys,
temporary builds, and the full JADX distribution are excluded from the download.

## Still requires your device testing

The newly reassembled APK and logging example were not run on a phone or
Android emulator in this environment. Their static/build checks passed; your
device confirmation applies to the original reference APK. Check gameplay and
the behavior you edit on the A55. A full Android XML resource rebuild is an
experimental path with additional work, as explained in `BUILDING.md`.
