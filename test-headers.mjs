// Header collision check for BCPL /g/*.h files.
//
// Goal: ensure no two headers assign the same BCPL global number to
// different names in the Cintcode stdlib range (0-209). Protects
// programs that GET multiple headers from silent shadowing.
//
// Strategy:
//   1. Parse each header's GLOBAL block. Resolve each entry's base:
//      - `name: <int>`    → explicit numeric base, gnum = that int
//      - `name: <IDENT>`  → symbolic base, looked up from a known
//                           manifest table (ug, g_sdlbase, etc.)
//      - `name`           → prev + 1
//   2. Only track globals whose final gnum lands in 0..209.
//   3. Flag collisions and out-of-range placements.
//   4. Special-case PAL75HDR: redefines ug=200 → incompatible with
//      libhdr. Reported as warning, not a collision.

import fs from "node:fs";
import path from "node:path";

const G_DIR = "/Users/jsobotka/code/BCPLwasm/cintcode/g";

// Known manifest bases. Values tracked directly — matches libhdr.h:249
// and zone map from the stdlib-expansion plan.
const KNOWN_BASE = {
  ug:           210,  // first user global
  tg:           200,  // first non-reset global
  intg:         210,  // = ug per bcplfecg.h:27
  feg:          285,  // intg+75
  trng:         360,  // feg+75
  cgg:          450,  // trng+90
  g_grbase:     450,
  g_bdrawbase:  450,
  g_sdlbase:    450,
  g_glbase:     450,
  g_sndbase:    450,
  g_alsabase:   500,
  g_extbase:    950,
  ArithGlobs:   350,  // arith.h default
};

// Parse ONE GLOBAL block: returns array of { name, gnum }.
// `aliasNumToNames` (optional out) accumulates gnum → [names] to
// record within-file aliases (e.g. unhold/release both 159).
function parseGlobals(src) {
  const gStart = src.indexOf("GLOBAL {");
  if (gStart < 0) return [];
  let depth = 0, gEnd = -1;
  for (let i = gStart + "GLOBAL ".length; i < src.length; i++) {
    const c = src[i];
    if (c === "{") depth++;
    else if (c === "}") { depth--; if (depth === 0) { gEnd = i; break; } }
  }
  if (gEnd < 0) return [];
  const body = src.slice(gStart, gEnd).split("\n")
    .map(l => l.replace(/\/\/.*$/, "").replace(/\/\*[\s\S]*?\*\//g, ""))
    .join("\n");

  const out = [];
  let current = null;  // running gnum

  // Walk the body, splitting on ; and newlines. Each token is either
  //   name:value    (sets current)
  //   name          (uses current+1)
  const stmts = body.split(/[;\n]/).map(s => s.trim()).filter(Boolean);
  for (const stmt of stmts) {
    // Skip the `GLOBAL {` and `}` if they leaked in.
    if (/^GLOBAL\s*\{?/.test(stmt)) continue;
    if (/^\}?$/.test(stmt)) continue;

    const m = stmt.match(/^([A-Za-z_][A-Za-z0-9_]*)\s*:\s*([A-Za-z_0-9+\-*\s]+)$/);
    if (m) {
      const name = m[1];
      const rhs  = m[2].trim();
      // Numeric literal.
      if (/^\d+$/.test(rhs)) {
        current = Number(rhs);
      } else if (rhs in KNOWN_BASE) {
        current = KNOWN_BASE[rhs];
      } else {
        // Arithmetic form like `intg+75` or `g_sdlbase+N`.
        const arith = rhs.match(/^([A-Za-z_][A-Za-z0-9_]*)\s*([+\-])\s*(\d+)$/);
        if (arith && arith[1] in KNOWN_BASE) {
          const sign = arith[2] === "-" ? -1 : 1;
          current = KNOWN_BASE[arith[1]] + sign * Number(arith[3]);
        } else {
          // Unresolvable — mark as null and skip.
          current = null;
        }
      }
      if (current !== null) out.push({ name, gnum: current });
      continue;
    }
    const bare = stmt.match(/^([A-Za-z_][A-Za-z0-9_]*)\s*$/);
    if (bare) {
      if (current === null) continue;
      current = current + 1;
      out.push({ name: bare[1], gnum: current });
      continue;
    }
    // Comma-separated bare names on one line (e.g. `foo, bar`).
    const comma = stmt.split(",").map(s => s.trim()).filter(Boolean);
    if (comma.length > 1) {
      for (const c of comma) {
        const bn = c.match(/^([A-Za-z_][A-Za-z0-9_]*)$/);
        if (bn && current !== null) {
          current = current + 1;
          out.push({ name: bn[1], gnum: current });
        }
      }
    }
  }
  return out;
}

let failures = 0, warnings = 0;
const fail = (s) => { console.error("FAIL:", s); failures++; };
const warn = (s) => { console.error("WARN:", s); warnings++; };

const files = fs.readdirSync(G_DIR)
  .filter(f => f.endsWith(".h"))
  .map(f => path.join(G_DIR, f));

// Headers to treat specially.
const LEGACY = /origlibhdr\.h$|libhdrold\.h$|pal75hdr\.h$/i;

// Collect all (file, name, gnum) triples in Cintcode range.
const byGnum = new Map();   // gnum → [{ file, name }]

for (const file of files) {
  const base = path.basename(file);
  const src  = fs.readFileSync(file, "utf8");
  const entries = parseGlobals(src);

  if (LEGACY.test(base)) {
    warn(`${base} is a legacy/alt header — do not combine with libhdr.h.`);
    continue;
  }

  for (const { name, gnum } of entries) {
    if (gnum < 0 || gnum > 209) continue;
    if (!byGnum.has(gnum)) byGnum.set(gnum, []);
    byGnum.get(gnum).push({ file: base, name });
  }
}

// Collision = same gnum, different names from DIFFERENT files.
// Within one file, multiple names at one gnum is an intentional
// alias (e.g. libhdr's `unhold; release: 159`, `glob0; globsize: 0`).
for (const [gnum, uses] of byGnum) {
  // Build file → names set. Two distinct names from two distinct
  // files would shadow each other when both headers are GET'd.
  const byFile = new Map();  // file → Set<name>
  for (const u of uses) {
    if (!byFile.has(u.file)) byFile.set(u.file, new Set());
    byFile.get(u.file).add(u.name);
  }
  if (byFile.size < 2) continue;  // single-file aliases are fine

  // Merge all names across files; if >1 distinct name AND they span
  // files, flag.
  const allNames = new Set();
  for (const names of byFile.values())
    for (const n of names) allNames.add(n);
  if (allNames.size < 2) continue;  // same name, different files = OK

  const summary = [...byFile.entries()]
    .map(([f, ns]) => `${[...ns].join("/")} (${f})`).join(" vs ");
  fail(`G!${gnum} collision: ${summary}`);
}

if (failures === 0 && warnings === 0) {
  console.log(`ok: ${files.length} headers scanned, no collisions in ` +
    `Cintcode range 0..209 (${byGnum.size} distinct globals claimed).`);
} else if (failures === 0) {
  console.log(`ok with ${warnings} warning(s).`);
} else {
  console.error(`\n${failures} collision(s), ${warnings} warning(s).`);
  process.exit(1);
}
