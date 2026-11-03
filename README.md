# DriveForma website

This repository deploys the public marketing website from a versioned GitHub Release ZIP. The website is in the release asset. The repository contains only build.sh, README.md, render.yaml and .gitignore.

## Current package

- Release: v120
- [Complete ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v120/DriveForma-deploy-v120.zip)
- Files: 181, with index.html at the ZIP root
- ZIP bytes: 45,835,591
- SHA-256: `adc6d8a4b7848579f3567e832766c0c8b52269384240688b05ad449d208ad1a3`
- Launcher commit: record the exact new commit after publishing the asset and committing this launcher.

## v120 routing fix

The live v119 clean URL /teams-dealerships works, but /teams-dealerships/ keeps its slash after Render rewrites it and therefore resolves relative styles/scripts/images under an incorrect subdirectory. An explicit trailing-slash 301 rule was tested before the clean rewrite and did not fire. Do not rely on or recommend that rule.

The Teams document now places `<base href="/teams-dealerships">` before all asset links. Its file-like base resolves relative assets at the origin root even when JavaScript is disabled. A small synchronous canonical-teams-v120.js also runs before the assets and normalizes only /teams-dealerships/, /teams-dealerships.html and known legacy team filenames to /teams-dealerships through history.replaceState. It preserves the query, fragment and history state, without navigation. Fragment links resolve to the canonical Teams page.

Local browser QA confirmed canonical cleanup for slash/.html entry paths, query/fragment preservation, zero broken images, zero horizontal overflow and functioning section anchors. Source checks cover 647 runtime references and 39 script syntax checks.

All v119 page content, demos, styling, homepage cleanup and in-site walkthrough behavior are otherwise unchanged. The existing app remains https://drive-demo.onrender.com/auth/login.

## Publish order

1. Publish GitHub Release v120 with the exact DriveForma-deploy-v120.zip asset FIRST. Preserve its filename and bytes. Never overwrite the v119 or older release assets.
2. Only then commit this four-file launcher. Automatic deploy on commits is active. GitHub's generated Source code ZIP contains only the launcher and is not the website backup; the release tag may still point to an older launcher because the asset must be published first.
3. Retain Render Static Site driveforma-marketing (srv-dbklfrui0phs73akbm5g), Root Directory blank, Build Command bash build.sh, Publish Directory public and SKIP_INSTALL_DEPS=true.
4. Confirm deployment and record the exact v120 launcher commit/deployment ID.

The build behavior is unchanged: download the pinned asset, verify SHA-256 before extraction, check index.html and replace only public/. The ZIP contains only public static runtime assets and the font license, excluding credentials, internal notes, source image masters, archives, application backend and customer records.

## Render routes

Keep the API rewrite ahead of any broad fallback. Dashboard routes are independent of the ZIP.

| Source | Action | Destination |
| --- | --- | --- |
| /api/walkthrough | Rewrite | https://forms.zohopublic.ca/infodrive1/form/DriveFormawalkthroughenquiries/formperma/xGmh_xOnnLbbDUQmqSEYHaRgmwqzAriLeqbDd1z5CUA/htmlRecords/submit |
| /teams-dealerships | Rewrite | /teams-dealerships.html |
| /dealerships-revamp.html | Redirect 301 | /teams-dealerships |
| /dealerships.html | Redirect 301 | /teams-dealerships |
| /wireframe-luxury-v2.html | Redirect 301 | / |

Remove the ineffectual /teams-dealerships/ redirect rule if it remains. The v120 base/client cleanup handles that incoming URL; it does not depend on that redirect. Existing static-file routes, including /index.html and /teams-dealerships.html, can take precedence over redirects and therefore use their respective client cleanup scripts.

The exact Canadian Zoho API rewrite is already live and was verified to preserve POST and deliver all five fields to info@driveforma.ai. Keep public/HTML submissions and its NewRecord owner notification enabled. The website only submits to /api/walkthrough and accepts the exact native acknowledgment with matching same-origin URL, expected HTML content type when present, no form, exact thank-you text and tick. It never inserts upstream HTML or treats a generic HTTP 200 as Sent. Request acceptance and email delivery are separate outcomes.

The public package keeps index.html and teams-dealerships.html and omits the legacy dealerships-revamp.html, dealerships.html and wireframe-luxury-v2.html. The clean Teams rewrite remains required. Preserve all marketing domain/TLS settings and the existing application service.

## v119 rollback snapshot

- Verified launcher: `220d1d24aed03f6af5c4e7be9ae4f8d5ec721b52`
- [Verified commit](https://github.com/weholdings2026/driveforma-website/commit/220d1d24aed03f6af5c4e7be9ae4f8d5ec721b52)
- Verified live deployment: dep-dbkoqos9v7es73csc1k0
- [Complete ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v119/DriveForma-deploy-v119.zip)
- SHA-256: `640b5f2c642f2dda147a13b75a9ccfb3b1e5de7f6ef0b46ca73b82dc8d7177e0`
- 180 files; 45,835,275 bytes

Use that exact launcher commit for v119, which retains the known trailing-slash asset issue; use its canonical /teams-dealerships URL.

## Older stable v118 rollback

- Verified launcher: `0a211abebe0f398a56c6d66ccf5105342cd90104`
- [Verified commit](https://github.com/weholdings2026/driveforma-website/commit/0a211abebe0f398a56c6d66ccf5105342cd90104)
- [Complete ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v118/DriveForma-deploy-v118.zip)
- SHA-256: `932969bbb6cbf8abc1b2943b6a067357a2b935581815a6b4a99bd0cc9f1ec2be`
- 170 files; 45,592,483 bytes

Use Render Manual Deploy > Deploy a specific commit for the verified launcher. v118 restores the email-app form and old runtime team filenames. On v118 rollback, remove the clean Teams rewrite or point it to /dealerships-revamp.html and remove any legacy-to-clean team redirect that would create a loop. API routing is independent of the static ZIP.

Do not change the Drive application's repository, backend, authentication, database, persistent disk or deployment during marketing publication or restore.
