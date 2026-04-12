# License Compliance Checklist

Use this checklist before publishing source archives or binaries.

## Upstream (Rogue2.Official / rougeclone2)
- [ ] `docs/upstream-rogue2official/COPYING` is included.
- [ ] Upstream related documents are included under `docs/upstream-rogue2official/`.
- [ ] No extra redistribution restrictions were added beyond upstream terms.

## Third-Party Font (DejaVu Sans Mono)
- [ ] `assets/fonts/DejaVuSansMono.ttf` is included only as part of this software package.
- [ ] `docs/third_party_fonts/DejaVuSansMono-LICENSE.txt` is included.
- [ ] `docs/third_party_fonts/README.md` is included.
- [ ] If the font is modified, renamed-font conditions are checked and satisfied.

## Third-Party Font (Noto Sans JP)
- [ ] `assets/fonts/NotoSansJP-Regular.otf` is included only as part of this software package.
- [ ] `docs/third_party_fonts/NotoSansJP-OFL-1.1.txt` is included.
- [ ] `docs/third_party_fonts/README.md` is included.
- [ ] If the font is modified, OFL renamed-font conditions are checked and satisfied.

## Project Notices
- [ ] Root `LICENSE` is included.
- [ ] `README.md` and `README.en.md` still point to the bundled license documents.
- [ ] For APK-only release, `LICENSE` and `docs/third_party_fonts/` are shipped together in the release artifact (zip/tar/release assets).
