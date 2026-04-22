// Validator: ensure site/master.wat is in sync with
//   (a) g/libhdr.h  (BCPL global-number authority)
//   (b) site/stdlib-manifest.mjs (names ↔ table index)
//
// Regenerates master.wat via gen-master.mjs, compares to on-disk
// site/master.wat. Any drift fails the check.
//
// Also sanity-checks:
//   - Every name in manifest (minus nonLibhdrNames) is present in libhdr.
//   - No two entries target the same table slot.
//   - Generated $init has no duplicate G! store (same gnum twice).
//
// Exit: 0 = pass, 1 = fail.

import fs from "node:fs";
import { execSync } from "node:child_process";
import { slots, aliases, nonLibhdrNames } from "./stdlib-manifest.mjs";
import { parseLibhdr } from "./parse-libhdr.mjs";

const ROOT   = "/Users/jsobotka/code/BCPLwasm/cintcode";
const LIBHDR = `${ROOT}/g/libhdr.h`;
const MASTER = `${ROOT}/site/master.wat`;
const GEN    = `${ROOT}/site/gen-master.mjs`;

let failures = 0;
const fail = (msg) => { console.error("FAIL:", msg); failures++; };

// --- 1. Manifest self-consistency ------------------------------------
{
  const seen = new Map();
  for (const s of slots) {
    if (seen.has(s.tidx)) fail(`duplicate tidx ${s.tidx}: ${seen.get(s.tidx)} and ${s.name}`);
    seen.set(s.tidx, s.name);
  }
}

// --- 2. Every manifest name exists in libhdr.h -----------------------
const nameToGnum = parseLibhdr(LIBHDR);
for (const s of slots) {
  if (nonLibhdrNames.has(s.name)) continue;
  if (!nameToGnum.has(s.name)) fail(`slot ${s.tidx} name "${s.name}" not in libhdr.h`);
}
for (const a of aliases) {
  if (!nameToGnum.has(a.name)) fail(`alias "${a.name}" not in libhdr.h`);
}

// --- 3. Regenerate master.wat, compare to on-disk -------------------
const regen = execSync(`node "${GEN}"`, { encoding: "utf8" });
const onDisk = fs.readFileSync(MASTER, "utf8");
if (regen !== onDisk) {
  fail(`site/master.wat out of sync with gen-master.mjs output.`);
  // Write diff to stderr for inspection.
  const a = onDisk.split("\n"), b = regen.split("\n");
  const lim = Math.min(a.length, b.length);
  for (let i = 0; i < lim; i++) {
    if (a[i] !== b[i]) {
      console.error(`  line ${i+1}:`);
      console.error(`    on-disk  : ${a[i]}`);
      console.error(`    generated: ${b[i]}`);
      if (i > 5) break; // cap noise
    }
  }
  if (a.length !== b.length) {
    console.error(`  line counts differ: on-disk=${a.length} generated=${b.length}`);
  }
  console.error(`\n  To fix:  node site/gen-master.mjs > site/master.wat ` +
    `&& wat2wasm site/master.wat -o site/master.wasm`);
}

// --- 4. Parse master.wat's $init, look for duplicate gnum stores ----
{
  const rx = /\(i32\.store \(i32\.const\s+(\d+)\) \(i32\.const\s+(\d+)\)\)/g;
  const gnums = new Map();  // gnum -> last tidx
  let m;
  while ((m = rx.exec(onDisk)) !== null) {
    const byte = Number(m[1]);
    const tidx = Number(m[2]);
    if (byte < 4) continue;         // G!0 = globsize init, ignore
    const gnum = (byte - 4) / 4;
    if (gnums.has(gnum) && gnums.get(gnum) !== tidx) {
      fail(`duplicate G!${gnum} init — tidx ${gnums.get(gnum)} then ${tidx}`);
    }
    gnums.set(gnum, tidx);
  }
}

// --- 5. Cintcode-zone check: every G!N we store is in 0..209 --------
{
  const rx = /\(i32\.store \(i32\.const\s+(\d+)\) \(i32\.const\s+\d+\)\)/g;
  let m;
  while ((m = rx.exec(onDisk)) !== null) {
    const byte = Number(m[1]);
    if (byte < 4) continue;
    const gnum = (byte - 4) / 4;
    if (gnum > 209) fail(`G!${gnum} exceeds Cintcode stdlib range (0..209)`);
  }
}

if (failures > 0) {
  console.error(`\n${failures} failure(s).`);
  process.exit(1);
}
console.log(`ok: manifest consistent, master.wat in sync ` +
  `(${slots.length} slots, ${aliases.length} aliases, ` +
  `${nameToGnum.size} libhdr globals).`);
