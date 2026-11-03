# DriveForma website

This repository deploys the marketing website from a versioned GitHub Release ZIP. The website files live in the release asset, so the Git repository contains only these small deployment files.

## Current release

- Repository: `weholdings2026/driveforma-website`
- Tag: `v117`
- Asset: `DriveForma-deploy-v117.zip`
- Download: [DriveForma-deploy-v117.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v117/DriveForma-deploy-v117.zip)
- SHA-256: `40f8dfb3c81bff7ffa3dc5fc8da841a71ddfb8141715429484e947e36c7f7468`
- ZIP size: 45,197,307 bytes

The ZIP contains the 164 public website files at its root, including `index.html` and the font license. It contains no internal notes, audits, application backend, credentials or customer records. Keep a downloaded copy as the website backup.

v117 repairs AI and Teams scroll motion, adds walkthrough photo motion, removes the extra walkthrough hero button, and restores the walkthrough footer route. The walkthrough form opens the visitor's email app with all five form values addressed to `info@driveforma.ai`. The visitor must press Send in that app; the website does not submit the enquiry to a server. The form provides an Open email draft link and Copy enquiry fallback.

## Publish the release, then deploy

1. Update `README.md` and `build.sh` in this repository together. Keep `render.yaml` and `.gitignore` unchanged.
2. Publish a GitHub Release tagged `v117` and attach the exact `DriveForma-deploy-v117.zip` asset. Do not rename or replace the asset: its SHA-256 is pinned in `build.sh`.
3. Use the existing Render marketing Static Site, `driveforma-marketing` (`srv-dbklfrui0phs73akbm5g`). Keep Root Directory blank, Build Command `bash build.sh`, Publish Directory `public`, and `SKIP_INSTALL_DEPS=true`.
4. Trigger Manual Deploy for the wrapper commit containing the v117 URL and hash. This service uses a public Git URL, so a GitHub push or release upload does not itself trigger a deploy.

The build downloads the ZIP over HTTPS, verifies its SHA-256 before extraction, checks `index.html`, and publishes only the extracted `public/` directory. An unpublished/missing asset or a mismatched hash fails the build.

No SPA rewrite is required: this is a multi-page HTML website. Validate the homepage, feature pages, Teams & dealerships, walkthrough, Terms, Privacy and the AI listing example after deployment.

## Future releases and rollback

For the next website revision, publish a new tag and ZIP asset, then update both the release URL and SHA-256 in `build.sh`. Preserve prior release assets. To restore v117, redeploy the wrapper commit that pins the v117 URL and hash above. The ZIP can also be downloaded and used as a complete static website backup.

The v116 rollback remains available:

- Wrapper commit: `d8e7a95a6fe60b0f1d421d5a0ea2a531038afd42`
- Asset: [DriveForma-deploy-v116.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v116/DriveForma-deploy-v116.zip)
- SHA-256: `d592e96225d08fe33d0f843bf08240ee03002f70baebb886e525326defac5d02`
- Contents: 159 public files; 45,188,394 bytes.

Use Render Manual Deploy > Deploy a specific commit to rebuild that version. Rolling back to v116 also restores its older walkthrough form behavior; the v117 email-app form is part of the v117 website ZIP.

## Existing Drive application

This repository configures only the marketing website. The existing application and its login remain unchanged at <https://drive-demo.onrender.com/auth/login>. The website's `brand-config.js` and Sign in links remain exactly as supplied in the ZIP. No app subdomain, backend service, database, persistent disk, app deployment or app configuration belongs in this repository.

Render documentation: [Static Sites](https://render.com/docs/static-sites) · [Blueprint specification](https://render.com/docs/blueprint-spec).
