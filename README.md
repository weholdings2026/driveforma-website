# DriveForma marketing website — v121

Prepared locally. Not published or deployed. Verify the separate app preview service
and its working sign-in at the exact address below before publishing this package.

## Package

- Release: v121
- [Website ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v121/DriveForma-deploy-v121.zip)
- Public files: 181, with `index.html` and `teams-dealerships.html` at the ZIP root
- ZIP bytes: 45,835,638
- SHA-256: `ce7e0f8144f4de87751b45ad0de9e94f0af407f198cd2968dd4bacee37082fe6`

The only website change is the Sign in address:
`https://drive-demo.onrender.com/auth/login` →
`https://driveforma-ui-preview.onrender.com/auth/login`.
Both HTML links and the shared JavaScript login configuration use the new address.
All other website bytes, photos, demos, form behavior and asset paths are unchanged
from v120. The original Drive application's code, configuration, data and service
are unchanged. This ZIP contains public marketing assets only.

## Publish order

1. Verify the separate preview's exact hostname, sign-in and app behavior. If its
   actual service name differs, rebuild the ZIP and checksum before proceeding.
2. Publish release v121 with this exact ZIP first. Preserve older release assets.
3. Commit the launcher files. Automatic Render deployment on commits is active.
4. Keep marketing service `driveforma-marketing` (`srv-dbklfrui0phs73akbm5g`), build
   command `bash build.sh`, publish directory `public`, and the existing dashboard
   routes. Record the resulting launcher commit and deployment ID after success.

The build verifies the pinned SHA-256 before extraction and replaces only `public/`.
Keep `/api/walkthrough` and `/teams-dealerships` rewrites and all existing marketing
domain/TLS settings unchanged. GitHub's generated source ZIP contains the launcher,
not the website backup. No app source, credentials or customer records are included.

## Restore v120

- Verified launcher: `b4beb5674b7a9ccdb473b576998feaf013644040`
- [Previous complete ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v120/DriveForma-deploy-v120.zip)
- SHA-256: `adc6d8a4b7848579f3567e832766c0c8b52269384240688b05ad449d208ad1a3`
- 181 files; 45,835,591 bytes

Restoring v120 also restores the original website Sign in destination. Its marketing
routing fix and walkthrough behavior are retained. Do not redeploy, replace or
reconfigure the original Drive app as part of marketing publication or rollback.
