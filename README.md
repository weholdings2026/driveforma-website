# DriveForma marketing website — v122

Adds an optional **Comments or questions** field to the walkthrough enquiry form.
Visitors can include up to 2,000 characters. Comments are delivered with the other
enquiry details to info@driveforma.ai through the existing background form route.
The existing Sending / Sent states, repeat-click protection and retry behavior remain.

## Complete website backup

- [DriveForma-deploy-v122.zip](https://github.com/weholdings2026/driveforma-website/releases/download/v122/DriveForma-deploy-v122.zip)
- 181 public runtime files; 45,835,867 bytes
- SHA-256: `ce4ee38e71e3af815f517bbc7212846b38cf5b3f73d4ed7b7c554ba4bb4bc093`

Only walkthrough.html, walkthrough-submit-v119.js and walkthrough-submit-v119.css
change from v121. The HTML refreshes the script/style cache version to 122. The
form's optional multiline field is mapped to the existing delivery service's
MultiLine field; its company notification template includes that field.

## Deployment

Publish the v122 ZIP release before committing this launcher. Render marketing
service driveforma-marketing (`srv-dbklfrui0phs73akbm5g`) uses `bash build.sh` and
publish directory `public`. The launcher verifies the ZIP checksum before extraction.
Preserve existing domain/TLS settings and all dashboard redirects/rewrites, especially
`/api/walkthrough` and `/teams-dealerships`. The API rewrite remains a dashboard
setting; it is not defined by render.yaml.

## Rollback

Restore launcher commit `831f75e2fc5f3923ef8a742a5d75bed97d35d214` for v121, or its
pinned ZIP (SHA `ce7e0f8144f4de87751b45ad0de9e94f0af407f198cd2968dd4bacee37082fe6`).
The newly added upstream comments field is optional, so older website submissions
remain compatible. Earlier release assets are preserved.

This repository and ZIP contain public marketing files only. The original running
app and the separate app UI preview are not changed. GitHub's generated Source
code archive contains this launcher, not the complete website backup.
