// BCPL stdlib manifest — single source of truth for which host functions
// are wired into the wasm runtime and at which function-table index.
//
// Each `slots[i]` entry corresponds to table index `i`:
//   { name: "<bcpl-global-name>", impl: "<runtime.js imp_ method>" }
// The name is the BCPL global it maps to; the global number comes from
// parsing g/libhdr.h (see parse-libhdr.mjs). The elem segment in
// master.wat is generated from this list in order.
//
// `aliases` map extra BCPL globals onto an already-wired tidx (e.g.
// binrdch aliased to rdch's tidx).
//
// `overrides` force a specific global number to a specific tidx,
// overriding the name-derived mapping. Used for the diagnostic
// stop_fn (tidx 34) that sits at G!2 instead of the unassigned-slot-0
// default.

export const slots = [
  { tidx: 0,  name: "stop",           impl: "imp_stop"          },
  { tidx: 1,  name: "rdch",           impl: "imp_rdch"          },
  { tidx: 2,  name: "wrch",           impl: "imp_wrch"          },
  { tidx: 3,  name: "newline",        impl: "imp_newline"       },
  { tidx: 4,  name: "writen",         impl: "imp_writen"        },
  { tidx: 5,  name: "writes",         impl: "imp_writes"        },
  { tidx: 6,  name: "writef",         impl: "imp_writef"        },
  { tidx: 7,  name: "getvec",         impl: "imp_getvec"        },
  { tidx: 8,  name: "freevec",        impl: "imp_freevec"       },
  { tidx: 9,  name: "muldiv",         impl: "imp_muldiv"        },
  { tidx: 10, name: "abort",          impl: "imp_abort"         },
  { tidx: 11, name: "randno",         impl: "imp_randno"        },
  { tidx: 12, name: "capitalch",      impl: "imp_capitalch"     },
  { tidx: 13, name: "compch",         impl: "imp_compch"        },
  { tidx: 14, name: "compstring",     impl: "imp_compstring"    },
  { tidx: 15, name: "findoutput",     impl: "imp_findoutput"    },
  { tidx: 16, name: "findinput",      impl: "imp_findinput"     },
  { tidx: 17, name: "selectoutput",   impl: "imp_selectoutput"  },
  { tidx: 18, name: "selectinput",    impl: "imp_selectinput"   },
  { tidx: 19, name: "endstream",      impl: "imp_endstream"     },
  { tidx: 20, name: "endread",        impl: "imp_endread"       },
  { tidx: 21, name: "endwrite",       impl: "imp_endwrite"      },
  { tidx: 22, name: "output",         impl: "imp_output"        },
  { tidx: 23, name: "input",          impl: "imp_input"         },
  { tidx: 24, name: "rdargs",         impl: "imp_rdargs"        },
  { tidx: 25, name: "unrdch",         impl: "imp_unrdch"        },
  { tidx: 26, name: "rewindstream",   impl: "imp_rewindstream"  },
  { tidx: 27, name: "findinoutput",   impl: "imp_findinoutput"  },
  { tidx: 28, name: "errwrch",        impl: "imp_errwrch"       },
  { tidx: 29, name: "sawritef",       impl: "imp_sawritef"      },
  { tidx: 30, name: "sys",            impl: "imp_sys"           },
  { tidx: 31, name: "level",          impl: "imp_level"         },
  { tidx: 32, name: "longjump",       impl: "imp_longjump"      },
  { tidx: 33, name: "pathfindinput",  impl: "imp_pathfindinput" },
  // tidx 34 is the diagnostic stop_fn — routed via G!2 override below.
  { tidx: 34, name: "stop_fn",        impl: "imp_stop_fn"       },
  // Phase 2A — Tier-A memory + bit ops
  { tidx: 35, name: "copystring",     impl: "imp_copystring"    },
  { tidx: 36, name: "copy_words",     impl: "imp_copy_words"    },
  { tidx: 37, name: "clear_words",    impl: "imp_clear_words"   },
  { tidx: 38, name: "copy_bytes",     impl: "imp_copy_bytes"    },
  { tidx: 39, name: "packstring",     impl: "imp_packstring"    },
  { tidx: 40, name: "unpackstring",   impl: "imp_unpackstring"  },
  { tidx: 41, name: "getword",        impl: "imp_getword"       },
  { tidx: 42, name: "putword",        impl: "imp_putword"       },
  { tidx: 43, name: "setbit",         impl: "imp_setbit"        },
  { tidx: 44, name: "testbit",        impl: "imp_testbit"       },
  { tidx: 45, name: "setvec",         impl: "imp_setvec"        },
  // Phase 2B — Tier-A format group
  { tidx: 46, name: "writed",         impl: "imp_writed"        },
  { tidx: 47, name: "writeu",         impl: "imp_writeu"        },
  { tidx: 48, name: "writet",         impl: "imp_writet"        },
  { tidx: 49, name: "writez",         impl: "imp_writez"        },
  { tidx: 50, name: "writehex",       impl: "imp_writehex"      },
  { tidx: 51, name: "writeoct",       impl: "imp_writeoct"      },
  { tidx: 52, name: "writee",         impl: "imp_writee"        },
  { tidx: 53, name: "writeflt",       impl: "imp_writeflt"      },
  { tidx: 54, name: "newpage",        impl: "imp_newpage"       },
  { tidx: 55, name: "codewrch",       impl: "imp_codewrch"      },
  { tidx: 56, name: "errwritef",      impl: "imp_errwritef"     },
  // Phase 2C — Tier-A parse group
  { tidx: 57, name: "readn",          impl: "imp_readn"             },
  { tidx: 58, name: "readflt",        impl: "imp_readflt"           },
  { tidx: 59, name: "rditem",         impl: "imp_rditem"            },
  { tidx: 60, name: "str2numb",       impl: "imp_str2numb"          },
  { tidx: 61, name: "string_to_number", impl: "imp_string_to_number" },
  { tidx: 62, name: "findarg",        impl: "imp_findarg"           },
];

// Extra BCPL globals that share a table slot with another entry.
// name here must exist in libhdr.h; tidx must match `slots[i].tidx`.
export const aliases = [
  { name: "binrdch",  tidx: 1 },   // → rdch
  { name: "binwrch",  tidx: 2 },   // → wrch
];

// Force a specific global to point at a specific tidx regardless of
// the name-based mapping. Used so G!2 (stop) routes through imp_stop_fn
// (tidx 34) — a diagnostic distinguishable from slot 0 traps.
export const overrides = [
  { gnum: 2, tidx: 34, note: "stop → imp_stop_fn (diagnostic)" },
];

// Bookkeeping: name "stop_fn" is NOT in libhdr.h; it's synthetic.
// Excluded from name-based G-assignment; only used via override above.
export const nonLibhdrNames = new Set(["stop_fn"]);
