#!/usr/bin/env bash
# Build the downloadable member-facing zip for brief-materiales.
#
# Package contents: BRIEF.md + logos/ + a short LEEME-PRIMERO.txt with the
# 3 usage steps. Version is read from BRIEF.md's own header line so the zip
# name always matches the content, without a second place to update by hand.
#
# Usage: scripts/build-pack.sh
# Output: dist/brief-materiales-v<version>.zip (dist/ is gitignored)
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_DIR="$REPO_ROOT/brief-materiales"
DIST_DIR="$REPO_ROOT/dist"
BRIEF_FILE="$SKILL_DIR/BRIEF.md"

if ! command -v zip >/dev/null 2>&1; then
  echo "Error: 'zip' is required but not installed." >&2
  exit 1
fi

if [ ! -f "$BRIEF_FILE" ]; then
  echo "Error: $BRIEF_FILE not found." >&2
  exit 1
fi

# Extract "**Versión:** X.Y.Z" from the BRIEF.md header.
VERSION="$(grep -m1 -E '^\*\*Versión:\*\*' "$BRIEF_FILE" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')"

if [ -z "$VERSION" ]; then
  echo "Error: could not read a version number from $BRIEF_FILE." >&2
  exit 1
fi

echo "Building brief-materiales pack, version $VERSION"

WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

PACK_DIR="$WORK_DIR/brief-materiales"
mkdir -p "$PACK_DIR/logos"

cp "$BRIEF_FILE" "$PACK_DIR/BRIEF.md"
cp "$SKILL_DIR"/logos/*.svg "$PACK_DIR/logos/"
cp "$SKILL_DIR"/logos/*.png "$PACK_DIR/logos/"
cp "$SKILL_DIR/logos/LEEME.md" "$PACK_DIR/logos/LEEME.md"

cat > "$PACK_DIR/LEEME-PRIMERO.txt" <<EOF
BRIEF DE MATERIALES - PARTIDO OBRERO (v$VERSION)

Como usar este paquete:

1. Subi el archivo BRIEF.md a tu IA (ChatGPT, Gemini, DeepSeek, Claude...),
   junto con los logos de la carpeta logos/ que necesites.
2. Contale a la IA que queres comunicar, con tus propias palabras. Te va a
   ir preguntando los datos que falten (titulo, fecha, quien firma, etc.).
3. Revisa el texto final letra por letra antes de imprimir o publicar
   nada. Las IA que generan imagenes a veces escriben mal el texto de
   adentro de la imagen.

Mas detalle en BRIEF.md y en logos/LEEME.md.
EOF

mkdir -p "$DIST_DIR"
ZIP_PATH="$DIST_DIR/brief-materiales-v${VERSION}.zip"
rm -f "$ZIP_PATH"

(cd "$WORK_DIR" && zip -r -X -q "$ZIP_PATH" "brief-materiales")

echo "Built: $ZIP_PATH"
