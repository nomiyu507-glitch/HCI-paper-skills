#!/usr/bin/env bash
set -euo pipefail

DEST="${CODEX_HOME:-$HOME/.codex}/skills"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$DEST"

echo "Installing PaperSpine..."
git clone --depth 1 https://github.com/WUBING2023/PaperSpine.git "$TMP/PaperSpine"
bash "$TMP/PaperSpine/install.sh" codex

echo "Installing research-paper-writing..."
git clone --depth 1 https://github.com/Master-cai/Research-Paper-Writing-Skills.git "$TMP/research-paper-writing"
rm -rf "$DEST/research-paper-writing"
cp -R "$TMP/research-paper-writing/research-paper-writing" "$DEST/"

echo "Installing journal-recommender..."
git clone --depth 1 https://github.com/zero565656/journal-recommender.git "$TMP/journal-recommender"
rm -rf "$DEST/journal-recommender"
cp -R "$TMP/journal-recommender" "$DEST/journal-recommender"
rm -rf "$DEST/journal-recommender/.git"

echo "Optional upstream skills installed. Restart Codex."
