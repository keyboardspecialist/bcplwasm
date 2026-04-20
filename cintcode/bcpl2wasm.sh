#!/usr/bin/env bash
# Compile a BCPL source to one or more WebAssembly modules.
#
# Single-section programs yield <base>.wat + <base>.wasm. Multi-section
# programs (BCPL source separated by `.`) yield <base>-1..N.wat/.wasm;
# they all plug into the same master.wasm at load time.
#
# Usage: ./bcpl2wasm.sh input.b [output-base]

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "usage: $0 input.b [output-base]" >&2
  exit 1
fi

SRC="$1"
BASE="${2:-${SRC%.b}}"
WAT="${BASE}.wat"
WAT2WASM="${WAT2WASM:-wat2wasm}"

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

[ -x bin/cintsys ]     || { echo "error: bin/cintsys not built" >&2; exit 1; }
[ -f cin/bcplwasm ]    || { echo "error: cin/bcplwasm missing (bootstrap via CLAUDE.md)" >&2; exit 1; }

echo "bcplwasm $SRC to $WAT" | bin/cintsys >/dev/null
[ -s "$WAT" ] || { echo "error: empty $WAT (check source)" >&2; exit 2; }

# Count modules in output. `(module` at column 0 marks each boundary.
NMOD=$(grep -c '^(module' "$WAT" || true)

if [ "$NMOD" -le 1 ]; then
  "$WAT2WASM" "$WAT" -o "${BASE}.wasm"
  echo "built: $WAT ${BASE}.wasm"
  exit 0
fi

# Multi-module: split on `(module` boundaries, write <base>-N.wat each.
awk -v base="$BASE" '
  /^\(module/ { n++; fn = sprintf("%s-%d.wat", base, n); }
  { if (fn) print > fn }
' "$WAT"

for i in $(seq 1 "$NMOD"); do
  "$WAT2WASM" "${BASE}-${i}.wat" -o "${BASE}-${i}.wasm"
done

# Keep the combined .wat around too for human inspection, but the
# canonical artifacts are the -N.wasm files.
echo "built $NMOD modules: ${BASE}-1..${NMOD}.wasm"
