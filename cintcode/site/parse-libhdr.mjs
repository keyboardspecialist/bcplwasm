// Parse g/libhdr.h GLOBAL { ... } block → Map<name, gnum>.
// Handles `name: N` declarations and `a; b: N` (where b follows a).
// Ignores MANIFEST/SECTION and everything outside the GLOBAL block.
//
// Tolerates:
//   foo:  42
//   bar : 43
//   qux;  quux: 50   (qux = 50-1 = 49, quux = 50)  [rare]
//   // comments
//   /* block comments (naive, single-line) */

import fs from "node:fs";

export function parseLibhdr(path) {
  const src = fs.readFileSync(path, "utf8");
  const nameToGnum = new Map();

  // Extract the first GLOBAL { ... } block (libhdr.h has exactly one).
  const gStart = src.indexOf("GLOBAL {");
  if (gStart < 0) throw new Error("no GLOBAL block in " + path);
  let depth = 0;
  let gEnd = -1;
  for (let i = gStart + "GLOBAL ".length; i < src.length; i++) {
    const c = src[i];
    if (c === "{") depth++;
    else if (c === "}") { depth--; if (depth === 0) { gEnd = i; break; } }
  }
  if (gEnd < 0) throw new Error("unterminated GLOBAL block");
  const body = src.slice(gStart, gEnd);

  // Strip // comments line-by-line.
  const lines = body.split("\n").map(l => l.replace(/\/\/.*$/, ""));

  // Regex: `name: N` (optional whitespace). N may be positive integer only.
  const rxNumbered = /^\s*([A-Za-z_][A-Za-z0-9_]*)\s*:\s*(\d+)\s*;?\s*$/;

  // Multi-declaration on same line: `a; b: N` — last gets explicit N,
  // earlier share trailing-comma-style numbering. Most common shape in
  // libhdr.h is:    unhold: 159; release: 159
  // which is two names at the SAME number. Handle by splitting on `;`.
  for (const raw of lines) {
    const parts = raw.split(";").map(s => s.trim()).filter(Boolean);
    // Find the rightmost part with an explicit number.
    let lastNum = null;
    for (let i = parts.length - 1; i >= 0; i--) {
      const m = parts[i].match(rxNumbered);
      if (m) { lastNum = Number(m[2]); break; }
    }
    for (const p of parts) {
      const m = p.match(rxNumbered);
      if (m) {
        nameToGnum.set(m[1], Number(m[2]));
      } else {
        // Bare name on same line; only meaningful if it carries a
        // number from a sibling on the line (e.g. `unhold; release: 159`
        // — unhold inherits 159). For libhdr.h that only happens in
        // the alias form. Attach lastNum.
        const bare = p.match(/^\s*([A-Za-z_][A-Za-z0-9_]*)\s*$/);
        if (bare && lastNum !== null) nameToGnum.set(bare[1], lastNum);
      }
    }
  }

  return nameToGnum;
}

// When invoked directly: dump parsed map.
if (import.meta.url === `file://${process.argv[1]}`) {
  const path = process.argv[2] ??
    "/Users/jsobotka/code/BCPLwasm/cintcode/g/libhdr.h";
  const m = parseLibhdr(path);
  const sorted = [...m.entries()].sort((a, b) => a[1] - b[1]);
  for (const [name, num] of sorted) console.log(`${num}\t${name}`);
  console.error(`\ntotal: ${m.size} globals`);
}
