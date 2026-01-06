#!/usr/bin/env bash
set -euo pipefail

# Deletes all .srt files under the project's `subs` directory.
# Run from the repository root (htmlcss) or execute directly.
# bash scripts/delete_srt.sh

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$ROOT_DIR/subs"

if [ ! -d "$TARGET_DIR" ]; then
  echo "Directory not found: $TARGET_DIR" >&2
  exit 1
fi

echo "Deleting .srt files under: $TARGET_DIR"
find "$TARGET_DIR" -type f -name '*.srt' -print -exec rm -f {} +
echo "Done."
