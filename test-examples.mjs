// Smoke test: every example .wasm in site/examples/ must instantiate
// against the real master.wasm + runtime stdlib without error.
//
// This catches:
//   - Build artifacts that don't match the imports master.wasm exposes.
//   - register() failing (e.g. table/static base mismatch).
//   - Module-format breakage from a regressed backend emit.
//
// What it does NOT check:
//   - Runtime output correctness. That needs per-example golden files.
//   - Behaviour of coroutine/SDL/stdin examples that need browser host
//     services. Those are skipped explicitly below.

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));

// runtime.js loadMaster/loadProgram call global fetch with relative
// URLs. Polyfill it for node: turn "name" / "file://..." into a disk
// read off the site/ directory.
globalThis.fetch = async (url) => {
  let p = String(url);
  if (p.startsWith("file://")) p = fileURLToPath(p);
  if (!path.isAbsolute(p)) p = path.join(HERE, p);
  const bytes = await fs.promises.readFile(p);
  return { arrayBuffer: async () => bytes.buffer.slice(bytes.byteOffset, bytes.byteOffset + bytes.byteLength) };
};

const { BcplRuntime, BcplHalt } = await import("./runtime.js");

// Examples needing browser host (SDL canvas, real stdin, real argv):
// these still must INSTANTIATE — we just don't try to run() them.
const RUN_SKIP = new Set([
  "20-stdin-echo",      // expects readable stdin
  "24-rdargs",          // expects argv
  "32-coroutines",      // asyncify needs browser-style yield
  "33-sdl-bouncer",     // needs SDL canvas context
  "35-raycaster",       // continuous game loop — only ends on Esc
  "36-raycaster-tex",   // ditto
  "37-raycaster-textured",  // ditto
  "38-raycaster-skyfloor",  // ditto
  "39-wad-reader",      // needs a binary WAD asset uploaded
  "40-doom-mapview",    // needs a WAD asset + SDL canvas; runs game loop
  "41-doom-mapnav",     // same — WAD + canvas + game loop
  "42-doom-3dview",     // same — WAD + canvas + game loop
  "43-doom-bsp",        // same — WAD + canvas + game loop
  "44-doom-wall-tex",   // same — WAD + canvas + game loop
  "45-doom-flats",      // same — WAD + canvas + game loop
  "46-doom-light",      // same — WAD + canvas + game loop
  "47-doom-pegging",    // same — WAD + canvas + game loop
  "48-doom-sprites",    // same — WAD + canvas + game loop
  "49-doom-collide",    // same — WAD + canvas + game loop
  "50-doom-sky",        // same — WAD + canvas + game loop
  "51-doom-rot",        // same — WAD + canvas + game loop
  "52-doom-doors",      // same — WAD + canvas + game loop
  "53-doom-anim",       // same — WAD + canvas + game loop
  "54-doom-weapon",     // same — WAD + canvas + game loop
  "stdlib",             // pure library — no start()
]);

const examples = fs.readdirSync(path.join(HERE, "examples"))
  .filter(n => n.endsWith(".wasm"))
  .sort();

let failures = 0;
let ran = 0, compared = 0;

for (const f of examples) {
  const name = f.replace(/\.wasm$/, "");
  const rt = new BcplRuntime();
  let out = "";
  rt.writeOut = (s) => { out += s; };

  try {
    await rt.loadMaster("master.wasm");
    await rt.loadProgram(`examples/${f}`);
    rt.initMaster();
  } catch (e) {
    console.error(`FAIL ${name}  instantiate: ${e.message}`);
    failures++;
    continue;
  }

  if (RUN_SKIP.has(name)) {
    console.log(`ok  ${name}  instantiate (run skipped)`);
    continue;
  }

  try {
    await rt.run();
    ran++;
  } catch (e) {
    if (!(e instanceof BcplHalt)) {
      console.error(`FAIL ${name}  run: ${e.message}`);
      failures++;
      continue;
    }
  }

  const expectedPath = path.join(HERE, "examples", `${name}.expected`);
  if (fs.existsSync(expectedPath)) {
    const expected = fs.readFileSync(expectedPath, "utf8");
    if (out === expected) {
      console.log(`ok  ${name}  run+output`);
      compared++;
    } else {
      console.error(`FAIL ${name}  output mismatch`);
      console.error(`  expected: ${JSON.stringify(expected)}`);
      console.error(`  actual:   ${JSON.stringify(out)}`);
      failures++;
    }
  } else {
    console.log(`ok  ${name}  run (no .expected)`);
  }
}

if (failures > 0) {
  console.error(`\n${failures} example(s) failed.`);
  process.exit(1);
}
console.log(`\nok: ${examples.length} examples instantiated, ${ran} ran, ${compared} output-checked.`);
