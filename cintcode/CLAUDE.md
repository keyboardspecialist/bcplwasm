# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

The **BCPL Cintcode System** — a portable, self-hosting implementation of the BCPL programming language. "Cintcode" is Cambridge Interpretive Code, a bytecode format executed by a C interpreter (`cintsys`). BCPL source compiles to Cintcode, which runs on any platform with a C compiler.

The BCPL compiler itself is written in BCPL and runs inside `cintsys`, making this a self-hosting system.

## Building

```bash
# 32-bit system (produces bin/cintsys)
make clean
make

# 64-bit system (produces bin/cintsys64)
make clean64
make run64
```

`make` auto-detects available libraries (SDL, OpenGL, ALSA) via `sysc/mkdefines-h.c`, which generates `sysc/defines.h`.

## Required Environment Variables

```bash
export BCPLROOT=$HOME/distribution/BCPL/cintcode
export BCPLPATH=$BCPLROOT/cin        # 32-bit compiled Cintcode cache
export BCPLHDRS=$BCPLROOT/g          # BCPL header files
export BCPLSCRIPTS=$BCPLROOT/s       # Command scripts
export PATH=$PATH:$BCPLROOT/bin

# 64-bit variants use the same root but different PATH:
export BCPL64PATH=$BCPLROOT/cin64
```

## Running the System

```bash
bin/cintsys          # Start 32-bit BCPL interactive CLI
bin/cintsys64        # Start 64-bit BCPL interactive CLI
```

Once inside the BCPL CLI:
```
c compall            # Recompile all standard commands
cmpltest             # Run compiler test suite
bench                # Run benchmark
logout               # Exit
```

## Compiling a BCPL Program

Inside the BCPL CLI:
```
bcpl com/myprog.b to cin/myprog   # Compile to Cintcode
myprog                             # Run it
```

Or from shell using the `bcpl` command (wraps the compiler pipeline).

## Architecture

### Execution Flow

```
Source (.b file)
  → bcplsyn.b   (lexer/syntax checker)
  → bcpltrn.b   (parser → intermediate tree)
  → bcplcgcin.b (code generator → Cintcode)
  → .cin file   (bytecode)
  → cintmain.c  (loads into memory)
  → fasterp.o   (executes Cintcode instructions)
```

### Three-Layer Structure

**C layer (`sysc/`)** — platform-specific interpreter and I/O:
- `cintmain.c` — main entry, memory init, bootstrapping, I/O streams
- `cinterp.c` — Cintcode interpreter, compiled three ways:
  - `cinterp.o` (CINTERPyes) — slow, debug-rich
  - `fasterp.o` (FASTERPyes) — optimized for normal use
  - `rasterp.o` (RASTERPyes) — memory profiling
- `cfuncs.c`, `kblib.c` — C library interface, keyboard/tty
- `sdlfn.c`, `glfn.c`, `alsafn.c` — optional SDL/OpenGL/ALSA bindings

**BCPL runtime (`sysb/`)** — system services written in BCPL:
- `bootsys.b` — bootloader, heap init, debugger, loads resident modules
- `blib.b` — core built-in library (vectors, strings, memory, I/O)
- `dlibsys.b` — device library
- `clisys.b` — command-line interface

**Compiler & tools (`com/`)** — ~260 BCPL programs:
- `bcplsyn.b` — lexer and syntax checker
- `bcpltrn.b` — compiler front-end (tree generation, symbol tables)
- `bcplcgcin.b` — Cintcode backend
- `bcplcgrpi.b` — Raspberry Pi native backend
- `bcplcgsial.b` — SIAL intermediate backend
- `bcplcgz80.b` — Z80 backend
- `bcplcgwasm.b` — WebAssembly (WAT) backend (see below)
- `bcplwasm.b` — compiler driver that swaps `bcplcgcin.b` for `bcplcgwasm.b`

**Headers (`g/`)** — BCPL `.h` files (manifests, `GET` directives):
- `libhdr.h` — standard header, included by nearly all programs
- `bcplfecg.h` — compiler front-end/back-end interface

**Compiled caches (`cin/`, `cin64/`)** — pre-compiled Cintcode for fast loading; `cin/syscin/` holds resident modules (boot, blib, cli, dlib).

### 32/64-bit Duality

The same C source handles both word sizes via `TARGET64` and `CURRENT64` preprocessor flags. `cin/` holds 32-bit Cintcode; `cin64/` holds 64-bit. The compiler accepts `t32`/`t64` flags to cross-compile.

## Key Conventions

- BCPL source files use `.b` extension; compiled Cintcode has no extension (stored in `cin/`)
- Headers use `.h` extension and are accessed via `GET "libhdr"` directives
- The `g/` directory is the standard header search path
- `com/` programs are the user-facing commands; `sysb/` programs are the runtime internals
- `cin/syscin/` files are loaded at boot and stay resident in memory

## WebAssembly Backend

New backend in `com/bcplcgwasm.b` emits WebAssembly Text Format (`.wat`).
Driver `com/bcplwasm.b` composes `bcplsyn` + `bcpltrn` + `bcplcgwasm`.

### Bootstrap from source

`cin/bcplwasm` is not tracked (the whole `cin/` directory is gitignored —
Cintcode bytecode is a build artifact). Fresh clone needs a one-time
bootstrap:

```bash
# Build cintsys itself.
make

# Set BCPL env (see "Required Environment Variables" above).
export BCPLROOT=$PWD
export BCPLPATH=$BCPLROOT/cin
export BCPLHDRS=$BCPLROOT/g
export BCPLSCRIPTS=$BCPLROOT/s
export PATH=$PATH:$BCPLROOT/bin

# Compile the wasm backend driver into Cintcode.
echo "bcpl com/bcplwasm.b to cin/bcplwasm" | bin/cintsys
```

After that, `bcplwasm` is a normal cintsys command.

### Compile a BCPL program to wasm

Inside the BCPL CLI (or piped as above):
```
bcplwasm com/hello.b to hello.wat
```

Assemble with [WABT](https://github.com/WebAssembly/wabt):
```
wat2wasm hello.wat -o hello.wasm
```

### Rebuild all site examples

```bash
./site/build.sh     # runs bcplwasm + wat2wasm over every site/examples/*.b
```

`build.sh` picks up `WAT2WASM=/path/to/wat2wasm` if wat2wasm isn't on PATH.

### Test the wasm playground

```bash
cd site && npm test
```

Runs three checks:
1. `test-globals.mjs` — `master.wat` regenerates byte-identical against the libhdr / stdlib-manifest sources of truth.
2. `test-headers.mjs` — no two `g/*.h` headers map different names to the same global number in the stdlib range.
3. `test-examples.mjs` — every `site/examples/*.wasm` instantiates against the real `master.wasm` and host stdlib. Examples that don't need browser host services also `run()`; any with a sibling `<name>.expected` file get a stdout golden-diff.

Add a new golden by capturing the program's stdout and dropping it in `site/examples/<name>.expected`.

### Hosted playground

The `pages` branch ships pre-built `site/examples/*.{wat,wasm}` so GitHub
Pages can serve them directly with no build step. Users who want to
modify examples clone `main`, bootstrap as above, rebuild, and either
use it locally or push a fresh `pages` branch.

### Target word size

The Wasm backend currently emits 32-bit linear-memory code only. The
frontend defaults to the host word size, so on `cintsys64` you must
pass `T32` explicitly:

```
bcplwasm T32 com/hello.b to hello.wat
```

Without `T32` on a 64-bit host, codegen aborts with:
`WASM CG: target word size 8 bytes not supported.`

On 32-bit `cintsys` the default is already T32 — no flag needed.

### Memory layout (32-bit target)

All addresses are BCPL word addresses. Byte address = word × 4.

| word addr | region |
|-----------|--------|
| 0 | reserved |
| 1..1000 | global vector (G!0..G!999) |
| 1001..1001+stat_n | static data (strings, DATALAB items) |
| 1001+stat_n (aligned)+ | BCPL stack (P grows up) |
| top of memory down | heap (getvec bump allocator) |

Exported Wasm globals: `$G` (word addr 1), `$P` (mutable, set by `$__init`).

### Calling convention (matches cintcode's F_k)

Caller (for a call with OCODE `FNAP k` / `RTAP k`):
1. Store args at caller `P!(k+3..)`.
2. Save `(old_P, 0, fn_idx)` at caller `P!(k..k+2)`.
3. Advance `$P` by `k` words.
4. `call_indirect $ftable (type $bcpl_fn) fn_idx`.
5. FNAP captures return value at `$t{k}` and sets `cssp := k+1`.
6. RTAP drops return value, `cssp := k`.

Callee:
- Reads args at `P!3..`.
- On FNRN: copies return value to `$t0`, restores `P := mem[P*4]` (i.e. P!0), `return $t0`.
- On RTRN: restores P, `return (i32.const 0)`.

### Function table

`(table $ftable 256 funcref)` lives in `master.wasm`. Slots `0..74` are host-imported stdlib functions; program modules append their own functions starting at `$TB` (table_base — a runtime-supplied global per program). The loader (`site/runtime.js`) two-pass-instantiates each program: probe size, bump-allocate `$TB`/`$SB`, then real instantiate + call `register()`.

LF of a function label pushes table index. LF of a local (dispatch) label pushes the in-function dispatch-loop index used by computed `GOTO`.

### Control flow

Each function body is one `(loop $__dispatch (if ...) (if ...) ... )`. A local `$__lab` names the active basic block; every `JUMP`/`JT`/`JF`/`GOTO` does `local.set $__lab; br $__dispatch`. Entry block has `$__lab = 0`. Labels get indices from a prescan.

### Typelessness

BCPL words are untyped bit patterns. All expression-stack locals and memory are `i32` (or `i64` on 64-bit target — not yet implemented). Float ops reinterpret: `(i32.reinterpret_f32 (f32.<op> (f32.reinterpret_i32 a) (f32.reinterpret_i32 b)))`. `#FNEG`/`#FABS` flip/clear the sign bit directly.

### Host-imported stdlib

`site/runtime.js` supplies ~75 stdlib functions via `(import "env" "bcpl_*")`, imported into `master.wasm` at fixed table slots `0..74`. `master.wat` (line ~110+) is the source of truth: it writes each slot index into the matching BCPL global number (e.g. G!94 = writef → slot 6) so user code's `FNAP via G!n` dispatches to the host.

Coverage includes: core I/O (rdch, wrch, newline, writef + family — writed/writeu/writet/writez/writehex/writeoct/writee/writeflt), stream control (findinput/output/inoutput, selectinput/output, endstream/read/write, rewindstream, pathfindinput), memory (getvec, freevec, copy_words/bytes, clear_words, setvec, packstring/unpackstring, getword/putword, setbit/testbit), strings (capitalch, compch, compstring, copystring, str2numb, string_to_number, readn, readflt, rditem), arithmetic (muldiv, randno, setseed), control flow (abort, level, longjump, stop_fn), coroutines (createco/deleteco/callco/cowait/resumeco/initco/changeco), system (sys, rdargs, findarg, intflag, memoryfree, stackfree, delay, newpage). `sardch`/`sawrch`/`binrdch`/`binwrch` are aliased to the regular rdch/wrch slots.

Named streams persist across page loads via `localStorage` (keys prefixed `bcpl:`). Node test harness falls back to an in-memory `Map`.

### writef format codes

`imp_writef` in `site/runtime.js` implements the BLIB `write_format` codes that real BCPL programs use: `%n`, `%d`, `%i`, `%u`, `%c`, `%s`, `%x`, `%o`, `%b`, `%z`, `%t`, `%f`, `%e`, `%g`, `%n.mD` (scaled fixed-point), `%#` (codewrch), `%$`/`%+` (advance arg), `%-` (back up arg). Both `%nD` (single digit post-code width) and `%n.mD` (explicit `width.precision` pre-code) forms work. `%M` (message-table lookup) and `%P` (pluralisation) from canonical blib are intentionally omitted — no message DB in the browser playground.

### Playground

`site/index.html` + `site/runtime.js` run compiled `.wasm` in-browser with the stdlib. `site/build.sh` rebuilds all examples (`site/examples/*.b`). See `site/README.md`.
