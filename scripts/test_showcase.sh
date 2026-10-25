#!/usr/bin/env bash
set -euo pipefail
# Builds the showcase, runs its automated input injection headless and
# captures the screenshots into screenshots/.
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"
mkdir -p screenshots
odin build . -out:ui_showcase
./ui_showcase --headless
rm -f ui_showcase
ls -lh screenshots/*.png
