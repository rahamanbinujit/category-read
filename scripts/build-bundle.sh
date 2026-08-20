#!/usr/bin/env bash
# Rebuilds BUNDLE.md — a single self-contained file for assistants that can't
# fetch a whole repo. Run this after any knowledge change, before tagging a release.
set -euo pipefail
cd "$(dirname "$0")/.."
S="."
VER=$(python3 -c "import json;print(json.load(open('manifest.json'))['version'])")
UPD=$(python3 -c "import json;print(json.load(open('manifest.json'))['updated'])")
OUT="BUNDLE.md"

{
  echo "<!-- Category Read v$VER — generated bundle. Do not edit by hand."
  echo "     Edit the source files in knowledge/ and run scripts/build-bundle.sh -->"
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
  cat "SKILL.md"
  for f in \
    "knowledge/method/how-to-read-a-trend.md" \
    "knowledge/patterns/cross-category-patterns.md" \
    "knowledge/patterns/retail-and-channel.md" \
    "knowledge/categories/skincare.md" \
    "knowledge/categories/sun-care.md" \
    "knowledge/categories/fragrance.md" \
    "knowledge/categories/hair-and-scalp.md" \
    "knowledge/categories/body-and-personal-care.md" \
    "knowledge/categories/makeup.md" \
    "knowledge/wellness/supplements-and-ingestibles.md" \
    "knowledge/wellness/functional-food-and-beverage.md" \
    "knowledge/wellness/womens-health.md"
  do
    echo; echo; echo "---"; echo
    echo "<!-- source: $f -->"
    echo
    cat "$f"
  done
} > "$OUT"

echo "built $OUT — $(wc -w < "$OUT" | tr -d ' ') words, $(du -h "$OUT" | cut -f1)"
