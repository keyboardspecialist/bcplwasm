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
