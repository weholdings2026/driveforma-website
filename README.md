# DriveForma website

This repository deploys the marketing website from a versioned GitHub Release ZIP. The website files live in the release asset, so the Git repository contains only these small deployment files.

## Current release

- Repository: `weholdings2026/driveforma-website`
- Tag: `v116`
- Asset: `DriveForma-deploy-v116.zip`
- Download: [DriveForma-deploy-v116.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v116/DriveForma-deploy-v116.zip)
- SHA-256: `d592e96225d08fe33d0f843bf08240ee03002f70baebb886e525326defac5d02`

The ZIP contains the 159 public website files at its root, including `index.html`. It contains no internal notes, audits, application backend, credentials or customer records. Keep a downloaded copy as the website backup.

## Publish the release, then deploy

1. Upload the four repository files: `README.md`, `build.sh`, `render.yaml`, `.gitignore`.
2. Create a published GitHub Release tagged `v116` and attach the exact `DriveForma-deploy-v116.zip` asset. Do not rename or replace this asset: its SHA-256 is pinned in `build.sh`.
3. Create a **new Render Static Site** connected to this repository. Leave Root Directory blank, set Build Command to `bash build.sh`, and Publish Directory to `public`.
4. Set `SKIP_INSTALL_DEPS=true`. The included `render.yaml` provides the equivalent Blueprint configuration for this new site.

The build downloads the ZIP over HTTPS, verifies its SHA-256 before extraction, checks `index.html`, and publishes only the extracted `public/` directory. An unpublished/missing asset or a mismatched hash fails the build.

No SPA rewrite is required: this is a multi-page HTML website. Validate the homepage, feature pages, Teams & dealerships, walkthrough, Terms, Privacy and the AI listing example after deployment.

## Future releases and rollback

For the next website revision, publish a new tag and ZIP asset, then update both the release URL and SHA-256 in `build.sh`. Preserve prior release assets. To restore this version, restore the repository commit that pins `v116` and redeploy. The ZIP can also be downloaded and used as a complete static website backup.

## Existing Drive application

This repository configures only the marketing website. The existing application and its login remain unchanged at <https://drive-demo.onrender.com/auth/login>. The website's `brand-config.js` and Sign in links remain exactly as supplied in the ZIP. No app subdomain, backend service, database, persistent disk, app deployment or app configuration belongs in this repository.

Render documentation: [Static Sites](https://render.com/docs/static-sites) · [Blueprint specification](https://render.com/docs/blueprint-spec).
