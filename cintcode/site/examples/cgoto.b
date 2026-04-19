SECTION "cgoto"

GET "libhdr"

LET start() = VALOF
{ LET target = ?
  FOR i = 1 TO 3 DO
  { IF i = 1 DO target := L1
    IF i = 2 DO target := L2
    IF i = 3 DO target := L3
    GOTO target

  L1: writef("one ");   LOOP
  L2: writef("two ");   LOOP
  L3: writef("three*n"); LOOP
  }
  RESULTIS 0
}
