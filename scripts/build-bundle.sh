#!/usr/bin/env bash
# Rebuilds BUNDLE.md — a single self-contained file for assistants that can't
# fetch a whole repo. Run this after any knowledge change, before tagging a release.
set -euo pipefail
cd "$(dirname "$0")/.."
S="skills/category-read"
VER=$(python3 -c "import json;print(json.load(open('manifest.json'))['version'])")
UPD=$(python3 -c "import json;print(json.load(open('manifest.json'))['updated'])")
OUT="BUNDLE.md"

{
  echo "<!-- Category Read v$VER — generated bundle. Do not edit by hand."
  echo "     Edit the source files under $S/ and run scripts/build-bundle.sh -->"
  echo
  echo "# Category Read — Complete Bundle"
  echo
  echo "**Version $VER · updated $UPD · published by Clayface (https://clayface.ai)**"
  echo
  echo "This single file contains the complete skill: behaviour instructions, the"
  echo "analytical method, and all knowledge files. Paste it, upload it, or point your"
  echo "assistant at it. Everything below is one skill."
  echo
  echo "---"
  echo
  cat "$S/SKILL.md"
  for f in \
    "$S/knowledge/method/how-to-read-a-trend.md" \
    "$S/knowledge/patterns/cross-category-patterns.md" \
    "$S/knowledge/patterns/retail-and-channel.md" \
    "$S/knowledge/categories/skincare.md" \
    "$S/knowledge/categories/sun-care.md" \
    "$S/knowledge/categories/fragrance.md" \
    "$S/knowledge/categories/hair-and-scalp.md" \
    "$S/knowledge/categories/body-and-personal-care.md" \
    "$S/knowledge/categories/makeup.md" \
    "$S/knowledge/wellness/supplements-and-ingestibles.md" \
    "$S/knowledge/wellness/functional-food-and-beverage.md" \
    "$S/knowledge/wellness/womens-health.md"
  do
    echo; echo; echo "---"; echo
    echo "<!-- source: $f -->"
    echo
    cat "$f"
  done
} > "$OUT"

echo "built $OUT — $(wc -w < "$OUT" | tr -d ' ') words, $(du -h "$OUT" | cut -f1)"
