# Amazon Release Final Checklist (v0.2.1)

## Build Artifacts

- [x] RogueMobile.apk generated
- [x] RogueMobile-licenses.zip generated
- [x] RogueMobile.apk.idsig generated

## APK Metadata Verification

- [x] packageName = jp.lukunsoft.roguemobile
- [x] versionName = 0.2.1
- [x] versionCode = 2
- [x] minSdkVersion = 24
- [x] targetSdkVersion = 35

## Signature Verification

- [x] APK signed
- [x] v2 signature verified
- [x] v3 signature verified

## Integrity Hashes

- [x] RogueMobile.apk SHA-256
  - c8d51ec92822036872392afe3248f28f27b9d2b0061b8e9a232c328ced08b549
- [x] RogueMobile-licenses.zip SHA-256
  - ffa8b62076073cf4812f73a5c74b039cf1f287596f25eba7712812b0c656c654

## License Bundle Contents

- [x] LICENSE
- [x] docs/third_party_fonts/README.md
- [x] docs/third_party_fonts/DejaVuSansMono-LICENSE.txt
- [x] docs/third_party_fonts/NotoSansJP-OFL-1.1.txt

## Manual Checks Before Amazon Submission

- [ ] Amazon Developer Console: create new app listing (new package name app)
- [ ] Upload RogueMobile.apk and verify device compatibility report
- [ ] Set app as free and select distribution regions
- [ ] Fill content rating and policy declarations
- [ ] Paste release notes summary
- [ ] Attach/host license references in listing text as needed

## Notes

- `aapt dump badging` prints one parser warning line in this environment, but required metadata values were obtained.
- Build-tools fallback message appeared (using 34.0.0), but export/sign/verify completed successfully.
