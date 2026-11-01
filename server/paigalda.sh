#!/bin/bash
# Tõmbab rakenduse image'i GHCR-ist ja käivitab selle konteinerina flask-cd.
# Serveris image'it ei ehitata: see tuleb registrist valmis kujul.
# Kasutus (repositooriumi kaustas): bash server/paigalda.sh [tag, vaikimisi latest]
# Selles skriptis on vigu. Praktikumi osas 5 leiad ja parandad need.
set -euo pipefail
cd "$(dirname "$0")/.."

REPO=$(basename -s .git "$(git remote get-url origin)")
IMAGE="ghcr.io/hkhk-automation/${REPO,,}"
TAG="${1:-latest}"

echo "== image $IMAGE:$TAG"
docker pull "$IMAGE:$TAG"

echo "== konteiner flask-cd"
docker rm -f flask-cd >/dev/null 2>&1 || true
docker run -d --name flask-cd --restart unless-stopped -p 8088:80 "$IMAGE:$TAG"

echo "== versioon"
curl -fsS --retry 10 --retry-all-errors --retry-delay 1 localhost:8088/versioon
echo
