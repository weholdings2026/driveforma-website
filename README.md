# DriveForma website

This repository deploys the public marketing website from a versioned GitHub Release ZIP. The website lives in that release asset; this Git repository contains only four small launcher files.

## Current website package

- Website release: `v118`
- Complete asset: [DriveForma-deploy-v118.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v118/DriveForma-deploy-v118.zip)
- Files: 170, with `index.html` at the ZIP root
- Size: 45,592,483 bytes
- SHA-256: `932969bbb6cbf8abc1b2943b6a067357a2b935581815a6b4a99bd0cc9f1ec2be`
- v118 launcher: the commit that pins `build.sh` to the v118 asset and SHA-256 above; identify it in this repository’s history.

The ZIP contains runtime website files, including the font license. It excludes credentials, internal notes, generated image masters, the application backend and customer records. Existing PNG vehicle and follow-up photos are public runtime assets and are included.

v118 adds scroll-through progression to both Follow-up examples and the dealership staff example, keeps Book a walkthrough before Sign in in the shared navigation, and replaces the soft enlarged key banner with a crisp native wide photo. The existing AI and team leader progression is retained. The walkthrough form still opens a prefilled email-app draft addressed to `info@driveforma.ai`; visitors must press Send there. There is no external form embed or automatic server submission.

## Publish the asset before changing the launcher

1. Publish the GitHub Release tagged `v118` and attach the exact `DriveForma-deploy-v118.zip` asset above. Preserve its filename and bytes.
2. After the asset is published, update this repository's `build.sh` and `README.md` together. Automatic deploy on repository commits is active, so changing the pin first can start a build before the asset exists.
3. Keep the existing Render Static Site `driveforma-marketing` (`srv-dbklfrui0phs73akbm5g`), Root Directory blank, Build Command `bash build.sh`, Publish Directory `public`, and `SKIP_INSTALL_DEPS=true`.
4. Confirm a successful live deployment. If a build ran before its asset was ready, publish the asset and use Manual Deploy for the same launcher commit.

The build downloads the exact asset, verifies SHA-256 before extraction, checks `index.html`, and publishes only `public/`. Do not bypass a missing-asset or checksum failure.

### Important: the release tag is not the website backup

The v118 release is published before the launcher update to prevent premature automatic deployment. Its Git tag can therefore point to the previous launcher commit. The complete v118 website is **DriveForma-deploy-v118.zip**, not GitHub's automatically generated **Source code (zip)**. Restore with this exact asset, or with the exact v118 launcher commit recorded after the update. Do not assume deploying the v118 Git tag restores v118.

## Rollback

Preserve all prior releases. The verified v117 launcher commit is:

`be950a596babee9c7c80cab51445821cfdcfd582`

- [v117 complete website ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v117/DriveForma-deploy-v117.zip)
- SHA-256: `40f8dfb3c81bff7ffa3dc5fc8da841a71ddfb8141715429484e947e36c7f7468`
- 164 files; 45,197,307 bytes

The older v116 release is also preserved:

- Launcher commit: `d8e7a95a6fe60b0f1d421d5a0ea2a531038afd42`
- [v116 complete website ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v116/DriveForma-deploy-v116.zip)
- SHA-256: `d592e96225d08fe33d0f843bf08240ee03002f70baebb886e525326defac5d02`

Use Render Manual Deploy > Deploy a specific commit for the verified launcher commit of the version required. v117 has the email-app enquiry form; v116 restores its earlier form behavior.

## Existing Drive application

Only the marketing website belongs here. The existing application and login remain <https://drive-demo.onrender.com/auth/login>. Do not change its backend, repository, database, disk, authentication or app deployment when publishing this marketing site.
