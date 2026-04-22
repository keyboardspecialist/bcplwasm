#!/usr/bin/env bash
# Re-compile each example to .wat (via bcplwasm inside cintsys) and
# assemble to .wasm (via wat2wasm).
#
# Requires: BCPLROOT, BCPLPATH env set; wat2wasm on PATH.

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$DIR/.." && pwd)"
cd "$ROOT"

WAT2WASM="${WAT2WASM:-wat2wasm}"

# Validate master.wat vs libhdr.h + stdlib-manifest.mjs before
# building examples. Fails fast if any drift.
node site/test-globals.mjs

for src in site/examples/*.b; do
  base="${src%.b}"
  name="$(basename "$base")"
  echo ">> $name"
  echo "bcplwasm $src to ${base}.wat" | bin/cintsys >/dev/null
  "$WAT2WASM" "${base}.wat" -o "${base}.wasm"
done
echo "built: $(ls site/examples/*.wasm | wc -l) modules"
