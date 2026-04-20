#!/usr/bin/env bash
# Compile a BCPL source file to a WebAssembly module.
#
# Usage:  ./bcpl2wasm.sh input.b [output-basename]
#
#   input.b          BCPL source (must have SECTION and typically a start())
#   output-basename  produces <basename>.wat and <basename>.wasm; defaults to
#                    the input stem (e.g. prog.b -> prog.wat, prog.wasm)
#
# Prerequisites:
#   - cintsys built (run: make)
#   - cin/bcplwasm compiled (run once after fresh clone:
#       echo "bcpl com/bcplwasm.b to cin/bcplwasm" | bin/cintsys)
#   - wat2wasm on PATH, or set WAT2WASM=/path/to/wat2wasm
#   - BCPL env vars set (see CLAUDE.md)

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "usage: $0 input.b [output-basename]" >&2
  exit 1
fi

SRC="$1"
BASE="${2:-${SRC%.b}}"
WAT="${BASE}.wat"
WASM="${BASE}.wasm"
WAT2WASM="${WAT2WASM:-wat2wasm}"

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

if [ ! -x bin/cintsys ]; then
  echo "error: bin/cintsys not built. Run 'make' first." >&2
  exit 1
fi

if [ ! -f cin/bcplwasm ]; then
  echo "error: cin/bcplwasm missing. Bootstrap with:" >&2
  echo "  echo 'bcpl com/bcplwasm.b to cin/bcplwasm' | bin/cintsys" >&2
  exit 1
fi

echo "bcplwasm $SRC to $WAT" | bin/cintsys >/dev/null

if [ ! -s "$WAT" ]; then
  echo "error: compile produced empty $WAT — check BCPL source for errors" >&2
  exit 2
fi

"$WAT2WASM" "$WAT" -o "$WASM"
echo "built: $WAT  $WASM"
