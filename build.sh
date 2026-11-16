#!/usr/bin/env bash
set -euo pipefail

release_url="https://github.com/weholdings2026/driveforma-website/releases/download/v165/DriveForma-deploy-v165.zip"
release_sha256="92c7225bb4df16cf25360cead54deb7d135488bfb9fa4e3e770845e476a33f11"
release_tmp="$(mktemp -d)"
trap 'rm -rf "$release_tmp"' EXIT
archive="$release_tmp/website.zip"
curl --fail --location --retry 3 --output "$archive" "$release_url"
if command -v sha256sum >/dev/null 2>&1; then
  printf '%s  %s\n' "$release_sha256" "$archive" | sha256sum --check -
else
  printf '%s  %s\n' "$release_sha256" "$archive" | shasum -a 256 --check -
fi
mkdir "$release_tmp/v165"
unzip -q "$archive" -d "$release_tmp/v165"
python3 website_v166_patch.py --source "$release_tmp/v165" --output "$release_tmp/public"
test -s "$release_tmp/public/index.html"
test -s "$release_tmp/public/walkthrough-cta-v166.css"
test -s "$release_tmp/public/font-assets/Drive-CTA-Fraunces.ttf"
test -s "$release_tmp/public/font-assets/Fraunces-OFL.txt"
test -s "$release_tmp/public/brand-assets/df-walkthrough-seal-v166.svg"
test -s "$release_tmp/public/video-preview/driveforma-owner-film-loop.mp4"
rm -rf -- public
mv "$release_tmp/public" public
printf 'DriveForma marketing website v166 ready.\n'
