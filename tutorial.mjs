// BCPL playground tutorial track.
//
// Each TRACK entry names a file at site/examples/<slug>.b and carries
// metadata the Examples tab shows as you preview the lesson. The
// track is ordered; Prev/Next navigation walks it in this order.
//
// Keep this file in sync with site/examples/*.b. A lesson file whose
// slug isn't in TRACK still shows in the Examples list (as a loose
// demo), but without tutorial metadata or prev/next navigation.

export const LEVELS = [
  { n: 1, name: "First Steps"       },
  { n: 2, name: "Control Flow"      },
  { n: 3, name: "Functions & Scope" },
  { n: 4, name: "Data Structures"   },
  { n: 5, name: "I/O & System"      },
  { n: 6, name: "Advanced"          },
  { n: 7, name: "Objects"           },
];

export const TRACK = [
  // ---- Level 1 — First Steps ------------------------------------
  {
    slug: "01-hello",
    title: "Hello, BCPL",
    level: 1,
    topic: "basics",
    summary: "Your first BCPL program. SECTION, GET, writef, start/RESULTIS.",
    goals: [
      "Declare a SECTION and GET \"libhdr\"",
      "Write a start() function returning an int",
      "Call writef with the *n newline escape",
    ],
    prereqs: [],
  },
  {
    slug: "02-comments",
    title: "Comments",
    level: 1,
    topic: "basics",
    summary: "// line comments and /* ... */ block comments.",
    goals: [
      "Use line comments for brief notes",
      "Use block comments to disable larger regions",
      "Know that BCPL block comments do not nest",
    ],
    prereqs: ["01-hello"],
  },
  {
    slug: "03-variables",
    title: "Variables & Expressions",
    level: 1,
    topic: "basics",
    summary: "LET, :=, integer arithmetic, number formats.",
    goals: [
      "Declare locals with LET",
      "Reassign with :=",
      "Use +, -, *, /, MOD, integer precedence",
      "Read decimal, hex (#x), octal (#o), binary (#b) literals",
    ],
    prereqs: ["01-hello"],
  },
  {
    slug: "04-strings-chars",
    title: "Strings & Characters",
    level: 1,
    topic: "basics",
    summary: "BCPL string layout (length byte + chars) and the % byte operator.",
    goals: [
      "Know that s%0 is the string length",
      "Index into a string with s%i (1..n)",
      "Use writef %s vs %c",
      "Write escape sequences *n *s *t *\" *'",
    ],
    prereqs: ["03-variables"],
  },

  // ---- Level 2 — Control Flow ----------------------------------
  {
    slug: "05-conditionals",
    title: "IF, UNLESS, TEST",
    level: 2,
    topic: "control",
    summary: "Three forms of conditional plus the -> ternary expression.",
    goals: [
      "IF cond DO stmt",
      "UNLESS cond DO stmt (IF ~cond)",
      "TEST cond THEN … ELSE …",
      "Expression form: a -> b, c",
    ],
    prereqs: ["03-variables"],
  },
  {
    slug: "06-boolean-short-circuit",
    title: "Boolean Evaluation",
    level: 2,
    topic: "control",
    summary: "& and | short-circuit in Boolean context; act bitwise on values.",
    goals: [
      "Short-circuit & and | inside IF/WHILE/TEST",
      "Bitwise & and | in arithmetic context",
      "~ in Boolean vs bitwise context",
    ],
    prereqs: ["05-conditionals"],
  },
  {
    slug: "07-for-loop",
    title: "FOR loops",
    level: 2,
    topic: "control",
    summary: "FOR with BY, nested loops, LOOP/BREAK/NEXT/EXIT.",
    goals: [
      "FOR i = a TO b DO …",
      "Custom step with BY",
      "LOOP skips to next iteration; BREAK exits the enclosing loop",
      "NEXT/EXIT in MATCH/EVERY",
    ],
    prereqs: ["05-conditionals"],
  },
  {
    slug: "08-while-until",
    title: "WHILE, UNTIL, REPEAT",
    level: 2,
    topic: "control",
    summary: "Head-tested and tail-tested loops.",
    goals: [
      "WHILE cond DO body",
      "UNTIL cond DO body",
      "{ body } REPEAT and REPEATWHILE/REPEATUNTIL",
    ],
    prereqs: ["07-for-loop"],
  },
  {
    slug: "09-switchon",
    title: "SWITCHON",
    level: 2,
    topic: "control",
    summary: "Multi-way dispatch with CASE, DEFAULT, ENDCASE.",
    goals: [
      "SWITCHON expr INTO { CASE k: … ENDCASE }",
      "DEFAULT branch",
      "How ENDCASE differs from implicit fallthrough in C",
    ],
    prereqs: ["07-for-loop"],
  },

  // ---- Level 3 — Functions & Scope ------------------------------
  {
    slug: "10-functions",
    title: "Functions & Routines",
    level: 3,
    topic: "functions",
    summary: "Value-returning functions (=) vs side-effect routines (BE).",
    goals: [
      "LET sqr(x) = x*x — returns a value",
      "LET greet(s) BE writef(\"hi %s*n\", s) — returns nothing",
      "Pass primitives; everything's a word",
      "RETURN vs RESULTIS",
    ],
    prereqs: ["05-conditionals"],
  },
  {
    slug: "11-recursion",
    title: "Recursion",
    level: 3,
    topic: "functions",
    summary: "Self-calling functions. Factorial walk-through.",
    goals: [
      "Base case + recursive case",
      "The call stack",
      "When recursion beats iteration (and when it doesn't)",
    ],
    prereqs: ["10-functions"],
  },
  {
    slug: "12-valof",
    title: "VALOF / RESULTIS",
    level: 3,
    topic: "functions",
    summary: "Turn a block into an expression that yields a value.",
    goals: [
      "VALOF { … RESULTIS v }",
      "Local variables inside a VALOF block",
      "Nested VALOF",
    ],
    prereqs: ["10-functions"],
  },
  {
    slug: "13-nested-fns",
    title: "Nested Functions",
    level: 3,
    topic: "functions",
    summary: "Functions declared inside VALOF. The compiler hoists them.",
    goals: [
      "Scope rules for nested LET inside VALOF",
      "Access outer-function variables",
      "Helpers that only make sense inside one caller",
    ],
    prereqs: ["12-valof"],
  },
  {
    slug: "14-cgoto",
    title: "Computed GOTO",
    level: 3,
    topic: "functions",
    summary: "Take the address of a local label and jump to it at runtime.",
    goals: [
      "Declare labels with `name:`",
      "Capture label addresses",
      "Use an index into a table of labels for dispatch",
    ],
    prereqs: ["09-switchon"],
  },

  // ---- Level 4 — Data Structures --------------------------------
  {
    slug: "15-vectors",
    title: "Vectors",
    level: 4,
    topic: "data",
    summary: "VEC n and the ! word-indexing operator.",
    goals: [
      "LET v = VEC 10 gives a stack vector",
      "v!0, v!1, … are word slots",
      "Initialise with FOR",
      "Pass vectors to functions",
    ],
    prereqs: ["07-for-loop"],
  },
  {
    slug: "16-multidim",
    title: "Multi-dimensional Data",
    level: 4,
    topic: "data",
    summary: "Dynamic heap vectors (getvec/freevec) and vector-of-vectors.",
    goals: [
      "getvec(n) for heap allocation",
      "freevec(v) to return memory",
      "Vector of vectors for 2-D tables",
      "When to choose heap vs VEC",
    ],
    prereqs: ["15-vectors"],
  },
  {
    slug: "17-bit-manipulation",
    title: "Bit Manipulation",
    level: 4,
    topic: "data",
    summary: "Shifts, logical ops, and setbit/testbit for bit vectors.",
    goals: [
      "LSHIFT / RSHIFT (logical)",
      "LOGAND / LOGOR / XOR / EQV bitwise ops",
      "setbit / testbit on a word bit-vector",
      "Packing flags into a single word",
    ],
    prereqs: ["03-variables"],
  },
  {
    slug: "18-bitfield",
    title: "Bit Fields (SLCT / OF)",
    level: 4,
    topic: "data",
    summary: "SLCT length:shift:offset and the OF operator.",
    goals: [
      "MANIFEST a field selector with SLCT",
      "Read fields: (SLCT l:s:o) OF ptr",
      "Write fields: (SLCT l:s:o) OF ptr := value",
      "When SLCT is worth the trouble",
    ],
    prereqs: ["17-bit-manipulation"],
  },
  {
    slug: "19-manifest-static",
    title: "MANIFEST and STATIC",
    level: 4,
    topic: "data",
    summary: "Compile-time constants vs program-global state.",
    goals: [
      "MANIFEST { name = value } for constants",
      "STATIC { name = value } for persistent storage",
      "When each applies",
    ],
    prereqs: ["03-variables"],
  },

  // ---- Level 5 — I/O & System ----------------------------------
  {
    slug: "20-stdin-echo",
    title: "Reading stdin",
    level: 5,
    topic: "io",
    summary: "rdch() in a loop until EOF.",
    goals: [
      "rdch returns next char or -1 at EOF",
      "Echo input back with wrch",
      "Loop termination on EOF",
    ],
    prereqs: ["08-while-until"],
  },
  {
    slug: "21-streams",
    title: "Named Streams",
    level: 5,
    topic: "io",
    summary: "Open, select, and close write + read streams.",
    goals: [
      "findoutput(name) opens a write stream",
      "selectoutput(h) switches current output",
      "endstream commits data to storage",
      "Round-trip via findinput",
    ],
    prereqs: ["20-stdin-echo"],
  },
  {
    slug: "22-format-output",
    title: "Formatted Output",
    level: 5,
    topic: "io",
    summary: "writed, writeu, writez, writehex, writeoct, writeflt, writee.",
    goals: [
      "Signed vs unsigned widths",
      "Zero vs space padding",
      "Hex/oct widths",
      "Float fixed-point and exponential",
    ],
    prereqs: ["03-variables"],
  },
  {
    slug: "23-parsing",
    title: "Reading Numbers & Tokens",
    level: 5,
    topic: "io",
    summary: "readn, rditem, str2numb, string_to_number.",
    goals: [
      "readn parses integers from input",
      "rditem returns token type codes",
      "string_to_number: full parser, value in result2",
      "Check result2 for success",
    ],
    prereqs: ["21-streams"],
  },
  {
    slug: "24-rdargs",
    title: "Command-line Args",
    level: 5,
    topic: "io",
    summary: "rdargs parses argv against a key-spec string.",
    goals: [
      "Write a FROM/A,TO/K,N/K/N,-v/S spec",
      "Inspect argv after rdargs",
      "/A required, /K keyed, /N numeric, /S switch",
    ],
    prereqs: ["04-strings-chars"],
  },
  {
    slug: "25-floats",
    title: "Floating Point (FLT mode)",
    level: 5,
    topic: "io",
    summary: "FLT feature: # prefix for float ops, #:= assignment.",
    goals: [
      "Write float constants: 3.14, 1.0e-3",
      "Float ops: #+ #- #* #/ #MOD",
      "Float compare: #= #~= #< #> #<= #>=",
      "Convert via FLT/FIX",
    ],
    prereqs: ["03-variables"],
  },

  // ---- Level 6 — Advanced / Bonus -------------------------------
  {
    slug: "26-match-patterns",
    title: "MATCH Expressions",
    level: 6,
    topic: "advanced",
    summary: "MCPL pattern matching: ranges, alternatives, guards.",
    goals: [
      "MATCH (args) : pat ,.., pat => expr",
      "Ranges like 0..9, alternatives a|b|c",
      "NEXT and EXIT inside a MATCH",
      "MATCH command form (side effects)",
    ],
    prereqs: ["09-switchon"],
  },
  {
    slug: "27-every-sum",
    title: "EVERY Expressions",
    level: 6,
    topic: "advanced",
    summary: "Run every matching arm and accumulate the results.",
    goals: [
      "EVERY (args) : pat ,.., pat => expr",
      "All matching arms contribute",
      "Result type inferred from arm expressions",
    ],
    prereqs: ["26-match-patterns"],
  },

  // ---- Level 7 — Objects ----------------------------------------
  {
    slug: "28-method-sugar",
    title: "Method-call Sugar",
    level: 7,
    topic: "objects",
    summary: "E#(args) desugars to (args0!0!E)(args) at compile time.",
    goals: [
      "Understand BCPL's OOP calling convention",
      "Build a methods vector and point obj!0 at it",
      "Use E#(obj, …) and its equivalent (obj!0!E)(obj, …)",
    ],
    prereqs: ["15-vectors"],
  },
  {
    slug: "29-first-class",
    title: "Your First Class",
    level: 7,
    topic: "objects",
    summary: "Class = methods vector + fields vector. init/destroy convention.",
    goals: [
      "Layout methods and fields vectors",
      "InitObj (slot 0) and CloseObj (slot 1) convention",
      "Write a tiny local mkobj that allocates + initialises",
      "Create multiple instances sharing one methods vector",
    ],
    prereqs: ["28-method-sugar"],
  },
  {
    slug: "30-inheritance",
    title: "Inheritance",
    level: 7,
    topic: "objects",
    summary: "Derive a class; override methods; call super via back-pointer.",
    goals: [
      "Copy parent methods into the derived methods vector",
      "Override selected methods",
      "Keep a private slot holding the parent's method to call super",
    ],
    prereqs: ["29-first-class"],
  },
  {
    slug: "31-mkobj-helper",
    title: "A Reusable mkobj",
    level: 7,
    topic: "objects",
    summary: "Generic mkobj: one helper, any class following the InitObj convention.",
    goals: [
      "Encapsulate the allocate-and-initialise pattern",
      "Pass init arguments via @a (address-of-first-arg)",
      "Apply the same helper to different classes",
    ],
    prereqs: ["29-first-class"],
  },
];

// Quick-lookup helpers used by the UI.
export const BY_SLUG = new Map(TRACK.map(e => [e.slug, e]));

export function nextSlug(slug) {
  const i = TRACK.findIndex(e => e.slug === slug);
  return i >= 0 && i < TRACK.length - 1 ? TRACK[i + 1].slug : null;
}
export function prevSlug(slug) {
  const i = TRACK.findIndex(e => e.slug === slug);
  return i > 0 ? TRACK[i - 1].slug : null;
}
