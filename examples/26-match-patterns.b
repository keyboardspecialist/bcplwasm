// 26-match-patterns: MCPL-style MATCH expressions.
//
// Concepts:
//   - MATCH (args) : pat,..,pat => expr  (repeat)
//   - Patterns: literal n, range a..b, alternatives a|b|c, wildcard ?.
//   - MATCH stops at the first matching arm (see 27-every-sum for
//     the all-matching variant).
//   - If nothing matches, the result is 0.

SECTION "match"

GET "libhdr"

LET classify(n) = MATCH (n)
  :   0         => "zero"
  :   1 | 2 | 3 => "small"
  :   4..10     => "medium"
  :  11..99     => "big"
  :   ?         => "huge"

LET start() = VALOF
{ FOR i = 0 TO 8 DO
    writef("%i3 -> %s*n", i*i, classify(i*i))
  RESULTIS 0
}
