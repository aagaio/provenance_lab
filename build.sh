#!/usr/bin/env bash
# build.sh - produz o artefato cuja proveniencia sera assinada
set -euo pipefail

mkdir -p dist
echo "app v1.0 - build $(date -u +%FT%TZ) - commit ${GITHUB_SHA:-local}" > dist/app.txt

echo "Artefato construido:"
cat dist/app.txt
sha256sum dist/app.txt
