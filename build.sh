#!/usr/bin/env bash
set -euo pipefail

release_url="https://github.com/weholdings2026/driveforma-website/releases/download/v117/DriveForma-deploy-v117.zip"
release_sha256="40f8dfb3c81bff7ffa3dc5fc8da841a71ddfb8141715429484e947e36c7f7468"
release_tmp="$(mktemp -d)"
trap 'rm -rf "$release_tmp"' EXIT
archive="$release_tmp/website.zip"

curl --fail --location --retry 3 --output "$archive" "$release_url"
if command -v sha256sum >/dev/null 2>&1; then
  printf '%s  %s\n' "$release_sha256" "$archive" | sha256sum --check -
else
  printf '%s  %s\n' "$release_sha256" "$archive" | shasum -a 256 --check -
fi

mkdir "$release_tmp/public"
unzip -q "$archive" -d "$release_tmp/public"
test -s "$release_tmp/public/index.html"
rm -rf -- public
mv "$release_tmp/public" public
printf 'DriveForma marketing website v117 ready.\n'
