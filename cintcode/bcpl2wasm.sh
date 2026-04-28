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
WASM_OPT="${WASM_OPT:-wasm-opt}"

# Imports that may suspend execution. wasm-opt --asyncify instruments
# only the call paths reaching these — every other code path is
# untouched, so the cost is bounded.
# NOTE: do NOT include bcpl_sys here. sys() is called constantly
# (Sys_flt fires for every float op), and instrumenting it would
# add asyncify overhead to all programs even those without coroutines.
ASYNC_IMPORTS="env.bcpl_cowait,env.bcpl_callco,env.bcpl_resumeco,env.bcpl_changeco,env.bcpl_delay"

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

[ -x bin/cintsys ]     || { echo "error: bin/cintsys not built" >&2; exit 1; }
[ -f cin/bcplwasm ]    || { echo "error: cin/bcplwasm missing (bootstrap via CLAUDE.md)" >&2; exit 1; }

echo "bcplwasm $SRC to $WAT" | bin/cintsys >/dev/null
[ -s "$WAT" ] || { echo "error: empty $WAT (check source)" >&2; exit 2; }

# Optional asyncify post-pass — only if WASM_OPT is on PATH AND
# ASYNCIFY=1 is set in env. Off by default to keep example bundles
# small. Coroutine demos set ASYNCIFY=1.
asyncify_if_enabled() {
  local in="$1"; local out="$2"
  if [ "${ASYNCIFY:-0}" = "1" ] && command -v "$WASM_OPT" >/dev/null 2>&1; then
    "$WASM_OPT" --asyncify --enable-bulk-memory --enable-reference-types \
      --pass-arg=asyncify-imports@"$ASYNC_IMPORTS" \
      "$in" -o "$out"
  else
    [ "$in" = "$out" ] || cp "$in" "$out"
  fi
}

# Count modules in output. `(module` at column 0 marks each boundary.
NMOD=$(grep -c '^(module' "$WAT" || true)

if [ "$NMOD" -le 1 ]; then
  "$WAT2WASM" "$WAT" -o "${BASE}.wasm"
  asyncify_if_enabled "${BASE}.wasm" "${BASE}.wasm"
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
  asyncify_if_enabled "${BASE}-${i}.wasm" "${BASE}-${i}.wasm"
done

# Keep the combined .wat around too for human inspection, but the
# canonical artifacts are the -N.wasm files.
echo "built $NMOD modules: ${BASE}-1..${NMOD}.wasm"
