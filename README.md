# DriveForma website

This repository deploys the public marketing website from a versioned GitHub Release ZIP. The website is in the release asset. This repository contains only four launcher files: build.sh, README.md, render.yaml and .gitignore.

## Current website package

- Website release: v119
- Complete asset: [DriveForma-deploy-v119.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v119/DriveForma-deploy-v119.zip)
- Files: 180, with index.html at the ZIP root
- Size: 45,835,275 bytes
- SHA-256: `640b5f2c642f2dda147a13b75a9ccfb3b1e5de7f6ef0b46ca73b82dc8d7177e0`
- Launcher commit: record the exact new commit after the v119 asset is published and this launcher is committed; the v119 release tag may still point to the previous launcher.

The ZIP contains public static runtime files and the font license. It excludes credentials, internal notes, generated image masters, archives, application backend and customer records. Public runtime PNG photographs are included. The existing application and login remain https://drive-demo.onrender.com/auth/login.

## v119 changes

The demo windows fit ordinary laptop viewports while preserving readable controls, internal content access and full-width bottom progress. Both Follow-up stories, the team-leader story and staff example retain forward/reverse scroll progression and manual controls; mobile and reduced-motion reading remains normal flow. The Teams dealership introduction has focused photo/text motion and the closing sample now uses DriveForma Motors. Public copy, page titles, canonical URLs, sitemap, robots file and a custom 404 were reviewed. Homepage address cleanup removes only the old home filenames and #top, preserving queries and other section anchors.

The walkthrough form submits inside the website to /api/walkthrough. It disables controls while Sending, accepts only the verified native Zoho acknowledgment, then locks Sent until refresh. Failures preserve the entered values and allow a manual retry. The confirmed acknowledgment means the request was accepted; email notifications are a separate delivery step. The configured Canadian Zoho backend and delivery to info@driveforma.ai were live-tested before packaging.

## Publish the asset before changing the launcher

1. Publish GitHub Release v119 and attach the exact DriveForma-deploy-v119.zip above. Preserve its filename and bytes. Do not replace a previous release asset.
2. Only after that asset is available, commit this launcher's build.sh and README.md together. Retain render.yaml and .gitignore. Automatic deployment on repository commits is active.
3. Keep the existing Render Static Site driveforma-marketing (srv-dbklfrui0phs73akbm5g), Root Directory blank, Build Command bash build.sh, Publish Directory public and SKIP_INSTALL_DEPS=true.
4. Preserve the dashboard routes below and confirm a successful deployment. If a build ran before its asset existed, publish the asset and manually deploy the same launcher commit.

The build downloads the exact asset, verifies SHA-256 before extraction, checks index.html and replaces only public/. Its extraction behavior is unchanged from v118. Do not bypass a missing-asset or checksum failure.

GitHub's automatically generated Source code (zip) contains only the launcher and is not a website backup. Because the release asset must be published before changing the launcher, the v119 tag can point to an older launcher. Restore with the exact complete asset or the exact verified launcher commit, rather than assuming the tag pins v119.

## Render redirects and rewrites

These rules belong to the marketing Static Site dashboard. They are not website files, and ZIP extraction does not create or remove them. Keep the API rule ahead of any broad fallback.

| Source | Action | Destination |
| --- | --- | --- |
| /api/walkthrough | Rewrite | https://forms.zohopublic.ca/infodrive1/form/DriveFormawalkthroughenquiries/formperma/xGmh_xOnnLbbDUQmqSEYHaRgmwqzAriLeqbDd1z5CUA/htmlRecords/submit |
| /teams-dealerships | Rewrite | /teams-dealerships.html |
| /dealerships-revamp.html | Redirect 301 | /teams-dealerships |
| /dealerships.html | Redirect 301 | /teams-dealerships |
| /wireframe-luxury-v2.html | Redirect 301 | / |
| /teams-dealerships/ | Redirect 301, recommended | /teams-dealerships |

The API rewrite is already live and was tested to preserve POST and the form payload. It returns the native Zoho HTML acknowledgment through the same-origin /api/walkthrough address. Do not replace the generated HTML endpoint with the public form UI URL. Its permalink is a public submission target, not an app credential. Keep Zoho public/HTML submission enabled and the NewRecord owner notification configured for info@driveforma.ai. Browser success requires the same-origin endpoint, expected HTML content type when provided, no form, the exact thank-you text and its tick marker. Never turn an arbitrary HTTP 200 or iframe load into Sent.

The homepage also normalizes /index.html and removes the old #top fragment in the browser; Render gives existing static files priority over redirect rules. The published package keeps index.html and teams-dealerships.html. It omits dealerships-revamp.html, dealerships.html and wireframe-luxury-v2.html. The clean Teams rewrite is therefore required. Other existing .html routes are retained. Preserve the marketing domains and existing TLS/domain-forwarding settings.

## Rollback to v118

- Verified v118 launcher commit: `0a211abebe0f398a56c6d66ccf5105342cd90104`
- [Verified commit](https://github.com/weholdings2026/driveforma-website/commit/0a211abebe0f398a56c6d66ccf5105342cd90104)
- [Complete v118 ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v118/DriveForma-deploy-v118.zip)
- SHA-256: `932969bbb6cbf8abc1b2943b6a067357a2b935581815a6b4a99bd0cc9f1ec2be`
- 170 files; 45,592,483 bytes

Use Render Manual Deploy > Deploy a specific commit for that verified launcher. v118 restores the email-app walkthrough form and old runtime team filenames. Review the v119 redirect rules during rollback: remove the /teams-dealerships rewrite or point it at /dealerships-revamp.html, and avoid redirecting that legacy file back into the clean route. The API rewrite is independent of ZIP rollback. Preserve the prior ZIP and launcher commits.

Do not change the Drive app service, repository, authentication, database, persistent disk or deployment when publishing or restoring this marketing website.
