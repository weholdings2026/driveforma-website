# DriveForma marketing website — v123

Prepared locally; browser QA and publication are pending.

The homepage demo toolbar floated over its car and prices because it was independently sticky; it now stays in normal flow on touch screens and wide layouts.
The Inventory presentation toolbar uses the same contained-header rule. Narrow
headers can wrap their controls. Intentional complete-workspace story pins remain.

## Complete website backup

- [DriveForma-deploy-v123.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v123/DriveForma-deploy-v123.zip)
- 182 public runtime files; 45,836,303 bytes
- SHA-256: `489e26e738ca337af6facc927669dbb1e6eaf25944fe34488d461a8765a07b19`

Compared with v122, only `index.html` and `inventory.html` change, importing the new
`presentation-header-v123.css` last. The other 179 files are byte-identical. All
JavaScript, photos, form submission behavior and Sign in destinations are unchanged.
The ZIP has sorted flat runtime paths, fixed timestamps and no enclosing folder.
It is the complete website backup; preserve the v122 ZIP and earlier release assets.

## Deployment

Complete browser QA before publishing. Publish release v123 with the exact ZIP
above BEFORE committing the launcher to
[weholdings2026/driveforma-website](https://github.com/weholdings2026/driveforma-website).
Automatic Render deployment on repository commits is active. The checksum-pinned
build rejects a mismatched download before replacing `public/`.

Render marketing service `driveforma-marketing` (`srv-dbklfrui0phs73akbm5g`) keeps
build command `bash build.sh`, publish directory `public`, and existing domain/TLS
settings. Preserve dashboard routes, especially `/api/walkthrough` and
`/teams-dealerships`; these existing rewrites are not defined by `render.yaml`.
Record the successful launcher commit and deployment ID after publication.

QA should cover homepage `/?demo=presentation`, ordinary scrolling past the green
E 450 card, Sales/Guest switches, narrow portrait screens, Android landscape or
desktop-site mode, and `/inventory.html#customer-presentation`. Check intentional
AI, follow-up and team story progression still works. No live enquiry is needed.

## Rollback to v122

- Verified launcher: `63980dc391b4df8724983cfd03431eef3b948fcc`
- Verified Render deploy: `dep-dbl0tjss728c739a9usg`
- [Previous complete ZIP](https://github.com/weholdings2026/driveforma-website/releases/download/v122/DriveForma-deploy-v122.zip)
- SHA-256: `ce4ee38e71e3af815f517bbc7212846b38cf5b3f73d4ed7b7c554ba4bb4bc093`
- 181 public runtime files; 45,835,867 bytes

Restore that launcher commit with Render Manual Deploy, or restore its exact ZIP
and pinned build. Dashboard routes are independent of ZIP restoration. v122 retains
the optional 2,000-character walkthrough comments field and its existing delivery
mapping. Both versions leave the original Drive app and separate app UI preview
unchanged. GitHub's generated Source code archive contains only the launcher, not
the complete website backup.
