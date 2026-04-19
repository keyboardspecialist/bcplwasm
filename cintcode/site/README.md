# BCPL → WebAssembly Playground

Static site that runs BCPL programs compiled to WebAssembly by the
new `bcplwasm` backend (`com/bcplcgwasm.b`). The compiler emits
WebAssembly Text Format (`.wat`); `wat2wasm` assembles to `.wasm`;
`runtime.js` loads the module with a host-provided BCPL stdlib and
executes.

## Layout

```
site/
  index.html       — UI: example dropdown, source/output panes,
                     collapsible WAT pane, stdin textarea
  runtime.js       — BcplRuntime class: stdlib imports, memory access,
                     string/vec helpers, loader
  build.sh         — recompile each examples/*.b via cintsys + wat2wasm
  examples/
    hello.b        — writef
    fact.b         — recursion, FOR
    nested.b       — nested function definitions (hoisted)
    valof.b        — VALOF/RESULTIS nesting
    bitfield.b     — SLCT / OF field load and store
    cgoto.b        — computed GOTO via LF of local label
    fmod.b         — FLT (#MOD, #:=), %f format
    shifts.b       — logical >>, <<, hex format
    vec.b          — getvec / freevec
    echo.b         — rdch, reads from stdin pane
    *.wat, *.wasm  — built artifacts
```

## Running locally

Any static web server works. Example:

```bash
cd site
python3 -m http.server 8000
# open http://localhost:8000/
```

ES module imports mean you need a real server — opening `index.html`
as `file://` will not work.

## Rebuilding examples

Requires `cintsys` with `bcplwasm` compiled into `cin/`, and
`wat2wasm` from the [WABT](https://github.com/WebAssembly/wabt) tools
on `PATH` (or set `WAT2WASM=/path/to/wat2wasm`).

```bash
./build.sh
```

Each `examples/<name>.b` yields `<name>.wat` and `<name>.wasm`.

## Adding an example

1. Drop `foo.b` in `examples/`.
2. Add `<option value="foo">foo</option>` to the `<select>` in
   `index.html`.
3. Re-run `./build.sh`.

## Runtime API

`runtime.js` exports one class:

```js
import { BcplRuntime } from "./runtime.js";

const rt = new BcplRuntime(
  (s) => process.stdout.write(s),   // writeOut — receives all output
  "input text\n"                     // stdin — consumed by rdch()
);
await rt.load("examples/hello.wasm");
rt.run();                            // calls fn_L10 (the start function)
```

### Host-imported stdlib

| Global | Function | Notes |
|--------|----------|-------|
| 2  | `stop(n)`      | halts execution (throws `BcplHalt`) |
| 25 | `getvec(n)`    | returns n+1 word block, 0 on OOM |
| 27 | `freevec(p)`   | links block to free list for reuse |
| 38 | `rdch()`       | returns next char from stdin buffer, −1 at EOF |
| 41 | `wrch(c)`      | writes one char |
| 84 | `newline()`    | writes `\n` |
| 86 | `writen(n)`    | writes signed decimal |
| 89 | `writes(s)`    | writes BCPL string (length-prefixed) |
| 94 | `writef(fmt, a, b, c, d)` | formatted output — supports `%n`, `%d`, `%i`, `%u`, `%c`, `%s`, `%x`, `%o`, `%b`, `%f`, `%e`, `%g` with BCPL's two width conventions (`%i4` and `%5.2f`) |

## Calling convention

See `../CLAUDE.md` (section "WebAssembly Backend") for the full memory
layout, calling convention, and function-table layout. Short version:

- All expression-stack slots and memory are `i32`. Float ops use
  `i32.reinterpret_f32` / `f32.reinterpret_i32` bit casts.
- Callers store args at `P!(k+3..)`, save `(old_P, 0, fn_idx)` at
  `P!(k..k+2)`, advance `$P` by `k`, `call_indirect`.
- Callee reads args at `P!3..`, restores `$P` from `P!0` on return.
- Every function body is one `(loop $__dispatch (if …) …)` dispatched
  on `$__lab`.

## Deploying to GitHub Pages

The `site/` directory is self-contained — push it to a repo, enable
GitHub Pages pointing at that directory, done. The committed
`.wat`/`.wasm` artifacts are loaded directly; no build step runs in
CI.
