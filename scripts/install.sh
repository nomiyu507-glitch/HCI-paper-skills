#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${CODEX_HOME:-$HOME/.codex}/skills"

mkdir -p "$DEST"

for skill_dir in "$ROOT"/skills/*; do
  [ -d "$skill_dir" ] || continue
  name="$(basename "$skill_dir")"
  ln -sfn "$skill_dir" "$DEST/$name"
  echo "Linked $name -> $DEST/$name"
done

echo "Shared skills installed. Restart Codex."
