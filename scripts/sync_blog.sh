#!/usr/bin/env bash
set -euo pipefail

SRC="external/blog-content/_posts"
DST="_posts"

mkdir -p "$DST"

if [ -d "$SRC" ]; then
  cp -f "$SRC"/*.md "$DST"/ 2>/dev/null || true
  echo "Synced posts from submodule."
else
  echo "No submodule posts found at $SRC"
fi