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

### Compile + assemble

Inside the BCPL CLI:
```
bcplwasm com/hello.b to hello.wat
```

Then assemble with [WABT](https://github.com/WebAssembly/wabt):
```
wat2wasm hello.wat -o hello.wasm
```

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

`(table $ftable 256 funcref)`. Slots:
- `0..stdlib_count-1` = host-imported stdlib (see below).
- `stdlib_count..` = user functions in declaration order.

LF of a function label pushes table index. LF of a local (dispatch) label pushes the in-function dispatch-loop index used by computed `GOTO`.

### Control flow

Each function body is one `(loop $__dispatch (if ...) (if ...) ... )`. A local `$__lab` names the active basic block; every `JUMP`/`JT`/`JF`/`GOTO` does `local.set $__lab; br $__dispatch`. Entry block has `$__lab = 0`. Labels get indices from a prescan.

### Typelessness

BCPL words are untyped bit patterns. All expression-stack locals and memory are `i32` (or `i64` on 64-bit target — not yet implemented). Float ops reinterpret: `(i32.reinterpret_f32 (f32.<op> (f32.reinterpret_i32 a) (f32.reinterpret_i32 b)))`. `#FNEG`/`#FABS` flip/clear the sign bit directly.

### Host-imported stdlib

`site/runtime.js` supplies these via `(import "env" "...")`. Table slots fixed at 0..8. `$__init` stores each slot index into the matching BCPL global number:

| tidx | import | global | purpose |
|------|--------|--------|---------|
| 0  | `bcpl_stop`       |  2 | halt (BcplHalt) |
| 1  | `bcpl_rdch`       | 38 | read char from stdin |
| 2  | `bcpl_wrch`       | 41 | write char |
| 3  | `bcpl_newline`    | 84 | write newline |
| 4  | `bcpl_writen`     | 86 | write integer |
| 5  | `bcpl_writes`     | 89 | write BCPL string |
| 6  | `bcpl_writef`     | 94 | formatted write |
| 7  | `bcpl_getvec`     | 25 | allocate n+1 words |
| 8  | `bcpl_freevec`    | 27 | free vector |
| 9  | `bcpl_muldiv`     |  5 | (a*b)/c with 64-bit intermediate |
| 10 | `bcpl_abort`      | 28 | halt with error flag (BcplHalt isAbort) |
| 11 | `bcpl_randno`     | 34 | random integer in [1..n] |
| 12 | `bcpl_capitalch`  | 96 | uppercase a-z |
| 13 | `bcpl_compch`     | 97 | case-insensitive char compare |
| 14 | `bcpl_compstring` | 98 | BCPL string compare |
| 15 | `bcpl_findoutput` | 49 | open named write stream (browser storage-backed) |
| 16 | `bcpl_findinput`  | 48 | open named read stream |
| 17 | `bcpl_selectoutput` | 57 | set current output stream, return previous |
| 18 | `bcpl_selectinput`  | 56 | set current input stream, return previous |
| 19 | `bcpl_endstream`  | 62 | close stream; write streams commit to storage |
| 20 | `bcpl_endread`    | 60 | close current input stream |
| 21 | `bcpl_endwrite`   | 61 | close current output stream |

Named streams persist across page loads via `localStorage` (keys prefixed `bcpl:`). In Node test harness falls back to an in-memory `Map`.

### Playground

`site/index.html` + `site/runtime.js` run compiled `.wasm` in-browser with the stdlib. `site/build.sh` rebuilds all examples (`site/examples/*.b`). See `site/README.md`.
