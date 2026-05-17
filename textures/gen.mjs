// Procedural sample textures. Run:
//   node site/textures/gen.mjs
// Produces brick.png, stone.png, checker.png in site/textures/.
//
// Minimal pure-JS PNG encoder for 8-bit RGBA images. Uses node's
// built-in zlib for the IDAT deflate. No third-party deps.

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { deflateSync } from "node:zlib";

const HERE = path.dirname(fileURLToPath(import.meta.url));

// ---------- PNG encoder --------------------------------------------

const SIG = Buffer.from([0x89,0x50,0x4E,0x47,0x0D,0x0A,0x1A,0x0A]);

// CRC32 (PNG-spec polynomial). Compute table once.
const CRC_TABLE = (() => {
  const t = new Uint32Array(256);
  for (let n = 0; n < 256; n++) {
    let c = n;
    for (let k = 0; k < 8; k++) c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
    t[n] = c >>> 0;
  }
  return t;
})();
function crc32(buf) {
  let c = 0xFFFFFFFF >>> 0;
  for (const b of buf) c = (CRC_TABLE[(c ^ b) & 0xFF] ^ (c >>> 8)) >>> 0;
  return (c ^ 0xFFFFFFFF) >>> 0;
}

function chunk(type, data) {
  const len = Buffer.alloc(4); len.writeUInt32BE(data.length, 0);
  const typeBuf = Buffer.from(type, "ascii");
  const crc = Buffer.alloc(4);
  crc.writeUInt32BE(crc32(Buffer.concat([typeBuf, data])), 0);
  return Buffer.concat([len, typeBuf, data, crc]);
}

function encodePNG(w, h, rgba) {
  // IHDR: width, height, bit depth=8, colour type=6 (RGBA), filter=0, interlace=0
  const ihdr = Buffer.alloc(13);
  ihdr.writeUInt32BE(w, 0);
  ihdr.writeUInt32BE(h, 4);
  ihdr[8]  = 8;   // bit depth
  ihdr[9]  = 6;   // colour type RGBA
  ihdr[10] = 0;   // compression
  ihdr[11] = 0;   // filter
  ihdr[12] = 0;   // interlace
  // IDAT: per-scanline filter byte (0 = None) + raw RGBA bytes, deflated.
  const stride = w * 4;
  const raw = Buffer.alloc(h * (stride + 1));
  for (let y = 0; y < h; y++) {
    raw[y * (stride + 1)] = 0;
    rgba.copy(raw, y * (stride + 1) + 1, y * stride, (y + 1) * stride);
  }
  const idat = deflateSync(raw);
  return Buffer.concat([SIG, chunk("IHDR", ihdr), chunk("IDAT", idat), chunk("IEND", Buffer.alloc(0))]);
}

// ---------- Texture procedural functions ---------------------------

function make(w, h, fn) {
  const buf = Buffer.alloc(w * h * 4);
  for (let y = 0; y < h; y++) {
    for (let x = 0; x < w; x++) {
      const [r, g, b, a = 255] = fn(x, y);
      const o = (y * w + x) * 4;
      buf[o]     = r;
      buf[o + 1] = g;
      buf[o + 2] = b;
      buf[o + 3] = a;
    }
  }
  return buf;
}

// Deterministic value-noise (no RNG dependency).
function vnoise(x, y) {
  let s = (x * 374761393 + y * 668265263) | 0;
  s = (s ^ (s >>> 13)) * 1274126177 | 0;
  return ((s ^ (s >>> 16)) >>> 0) / 0xFFFFFFFF;
}

// Brick texture: red bricks with grey mortar. Rows offset every other.
function brickPixel(x, y) {
  const ROW = 16, COL = 32, MORTAR = 2;
  const row = Math.floor(y / ROW);
  const shift = (row & 1) * (COL / 2);
  const yInRow = y % ROW;
  const xShifted = (x + shift) % COL;
  if (yInRow < MORTAR || xShifted < MORTAR) return [60, 60, 60];   // mortar
  // brick body with slight noise + edge shading
  const n = vnoise(x, y) * 24 - 12;
  const r = 165 + n, g = 70 + n * 0.5, b = 55 + n * 0.3;
  return [r | 0, g | 0, b | 0];
}

// Stone block texture: irregular grey tiles.
function stonePixel(x, y) {
  const ROW = 16, COL = 24;
  const yInRow = y % ROW;
  const xInCol = ((x + (Math.floor(y / ROW) & 1) * (COL / 2))) % COL;
  if (yInRow < 1 || xInCol < 1) return [30, 30, 30];   // grout
  const v = 110 + vnoise(x, y) * 60;
  const c = v | 0;
  return [c, c, c];
}

// Checkerboard texture — useful for verifying coordinate plumbing.
function checkerPixel(x, y) {
  const sz = 8;
  return ((Math.floor(x / sz) + Math.floor(y / sz)) & 1)
    ? [240, 240, 240]
    : [40, 40, 40];
}

// Sky panorama — 256 wide × 64 tall. Sampled by ray angle for U
// (column) and by screen-Y for V. Blue gradient + low-frequency
// "clouds" via combined value-noise.
function skyPixel(x, y) {
  // Vertical gradient: deep blue up top, pale blue at horizon.
  const t = y / 64;
  const bgR = 40 + (180 - 40) * t;
  const bgG = 90 + (200 - 90) * t;
  const bgB = 160 + (230 - 160) * t;
  // Two-octave cloud noise.
  const n1 = vnoise(Math.floor(x / 8),  Math.floor(y / 6));
  const n2 = vnoise(Math.floor(x / 24), Math.floor(y / 14));
  const cloud = Math.max(0, (n1 * 0.4 + n2 * 0.6) - 0.5) * 2;  // 0..1
  // Clouds thin toward the top, dense near horizon.
  const cw = cloud * Math.min(1, t * 1.4);
  const r = bgR + (240 - bgR) * cw;
  const g = bgG + (240 - bgG) * cw;
  const b = bgB + (250 - bgB) * cw;
  return [r | 0, g | 0, b | 0];
}

// Wood plank ceiling — warm browns, plank seams every 16 rows.
function woodPixel(x, y) {
  const PLANK = 16, SEAM = 1;
  const row = Math.floor(y / PLANK);
  if (y % PLANK < SEAM) return [40, 25, 15];                   // seam
  // Vertical grain: noise along x with stretching along y.
  const grain = vnoise(x, Math.floor(y / 2) + row * 17);
  const shade = 0.85 + grain * 0.30;
  const baseR = 120, baseG = 80, baseB = 45;
  return [(baseR * shade) | 0, (baseG * shade) | 0, (baseB * shade) | 0];
}

// ---------- Build ---------------------------------------------------

const PALETTE = [
  ["brick.png",   64, 64, brickPixel],
  ["stone.png",   64, 64, stonePixel],
  ["checker.png", 64, 64, checkerPixel],
  ["sky.png",    256, 64, skyPixel],
  ["wood.png",    64, 64, woodPixel],
];

for (const [name, w, h, fn] of PALETTE) {
  const png = encodePNG(w, h, make(w, h, fn));
  fs.writeFileSync(path.join(HERE, name), png);
  console.log(`wrote ${name}  ${w}×${h}  ${png.length} bytes`);
}
