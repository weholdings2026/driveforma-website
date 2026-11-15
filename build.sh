#!/usr/bin/env bash
set -euo pipefail

release_url="https://github.com/weholdings2026/driveforma-website/releases/download/v145/DriveForma-deploy-v145.zip"
release_sha256="10262bd71c8daf0edf86c57566fbeb3fe8f66dc391fbd4fcdb0ee292c54492e5"
release_tmp="$(mktemp -d)"
trap 'rm -rf "$release_tmp"' EXIT
archive="$release_tmp/website.zip"

curl --fail --location --retry 3 --output "$archive" "$release_url"
if command -v sha256sum >/dev/null 2>&1; then
  printf '%s  %s\n' "$release_sha256" "$archive" | sha256sum --check -
else
  printf '%s  %s\n' "$release_sha256" "$archive" | shasum -a 256 --check -
fi

mkdir "$release_tmp/v145"
unzip -q "$archive" -d "$release_tmp/v145"
python3 website_v146_patch.py --source "$release_tmp/v145" --output "$release_tmp/public"
test -s "$release_tmp/public/index.html"

# Keep the existing sign-in controls pointed at the production app.
sed "s|loginUrl:'https://driveforma-ui-preview.onrender.com/auth/login'|loginUrl:'https://app.driveforma.ai/auth/login'|" \
  "$release_tmp/public/brand-config.js" > "$release_tmp/brand-config.js"
mv "$release_tmp/brand-config.js" "$release_tmp/public/brand-config.js"
rm -rf -- public
mv "$release_tmp/public" public
printf 'DriveForma marketing website v146 ready.\n'
