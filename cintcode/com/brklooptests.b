GET "libhdr.h"

GLOBAL {
  testno: ug
  errcount
}
LET start() = VALOF
{ testno := 8001
  errcount := 0
  newline()
  tst(tstf1(10), 55)
  tst(tstf2(10), 43)
  tst(tstf3(10), 6)
  tst(tstf4(10), 43)
  tst(tstf5(10), 24)
  tst(tstf6(10), 24)
  tst(tstf7(10), 24)
  tst(tstf8(10), 24)
  tst(tstf9(10), 24)

// The tstg functions which fail the repetition test.

  testno := 8020
  
  tst(tstg1(10), 0)
  tst(tstg2(10), 0)
  tst(tstg3(10), 0)
  tst(tstg4(10), 1)
  tst(tstg5(10), 24)
  tst(tstg6(10), 24)
  tst(tstg7(10), 0)
  tst(tstg8(10), 0)
  tst(tstg9(10), 24)

  // The tsth functions containing BREAK or LOOP not
  // within the body of the repetitve command they
  // are in.

  // Tests at 40 ar for the original definititon of
  // BREAK and LOOP
  testno := 8040

  writef("*nOld version of BREAK and LOOP*n")
  tst(tsth1(10), 99)
  tst(tsth2(10), 99)

  // Tests at 50 ar for the new definititons of
  // BREAK and LOOP
  testno := 8050
  
  writef("*nNew version of BREAK and LOOP*n")
  tst(tstk1(10), 99)
  tst(tstk2(10), 101)

  writef("*nError count = %n*n", errcount)
  RESULTIS 0
}

AND tst(x, y) BE
{ LET res = x=y -> "Good", "Bad"
  UNLESS x=y DO errcount, res := errcount+1, "Bad"
  writef("testno=%i3: x=%i3 y=%i3 %s*n", testno, x, y, res)
  testno := testno+1
}

AND tstf1(n) = VALOF
{ LET i, x = 0, 0
  WHILE i < n DO
  { i := i+1
    x := x+i
  }

  RESULTIS x
}

AND tstf2(n) = VALOF
{ LET i, x = 0, 0
  WHILE i < n DO
  { i := i+1
    IF i=4 | i=8 LOOP
    x := x+i
  }

  RESULTIS x
}

AND tstf3(n) = VALOF
{ LET i, x = 0, 0
  WHILE i < n DO
  { i := i+1
    IF i=4 | i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstf4(n) = VALOF
{ LET i, x = 0, 0

  { i := i+1
    IF i=4 | i=8 LOOP
    x := x+i
  } REPEATWHILE i < n

  RESULTIS x
}

AND tstf5(n) = VALOF
{ LET i, x = 0, 0
  
  { i := i+1
    IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  } REPEAT

  RESULTIS x
}

AND tstf6(n) = VALOF
{ LET x = 0

  FOR i = 1 TO n DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstf7(n) = VALOF
{ LET x = 0

  FOR i = 1 TO 10 DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstf8(n) = VALOF
{ LET x = 0

  FOR i = 1 TO 10 DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstf9(n) = VALOF
{ LET x = 0

  FOR i = 1 DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

// The tstg functions which fail the repetition test.

AND tstg1(n) = VALOF
{ LET i, x = 0, 0
  WHILE i > 10 DO
  { i := i+1
    x := x+i
  }

  RESULTIS x
}

AND tstg2(n) = VALOF
{ LET i, x = 0, 0
  WHILE i > 10 DO
  { i := i+1
    IF i=4 | i=8 LOOP
    x := x+i
  }

  RESULTIS x
}

AND tstg3(n) = VALOF
{ LET i, x = 0, 0
  WHILE i > 10 DO
  { i := i+1
    IF i=4 | i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstg4(n) = VALOF
{ LET i, x = 0, 0

  { i := i+1
    IF i=4 | i=8 LOOP
    x := x+i
  } REPEATWHILE FALSE

  RESULTIS x
}

AND tstg5(n) = VALOF
{ LET i, x = 0, 0
  
  { i := i+1
    IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  } REPEAT

  RESULTIS x
}

AND tstg6(n) = VALOF
{ LET x = 0

  FOR i = 1 TO n DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstg7(n) = VALOF
{ LET x = 0

  FOR i = 1 TO 0 DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstg8(n) = VALOF
{ LET x = 0

  FOR i = 1 TO 0 DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

AND tstg9(n) = VALOF
{ LET x = 0

  FOR i = 1 DO
  { IF i=4 LOOP
    IF i=8 BREAK
    x := x+i
  }

  RESULTIS x
}

// The tsth functions which fail the repetition test.

AND tsth1(n) = VALOF
{ FOR i = 1 TO 2 DO
  { LET i, x = 0, 0
    WHILE i > 10+BREAK DO
    { i := i+1
      IF i=4 | i=8 LOOP
      x := x+i
    }
    RESULTIS x
  }

  RESULTIS 99
}

AND tsth2(n) = VALOF
{ FOR i = 1 TO 2 DO
  { LET i, x = 0, 0
  
    { i := i+1
      IF i=4 | i=8 LOOP
      x := x+i
    } REPEATWHILE i > 10+BREAK

    RESULTIS x
  }
  RESULTIS 99
}

AND tsth3(n) = VALOF
{ FOR i = 1 TO 2 DO
  { LET i, x = 0, 0
    WHILE i > 10+RESULTIS 50 DO
    { i := i+1
      IF i=4 | i=8 LOOP
      x := x+i
    }
    RESULTIS x
  }

  RESULTIS 99
}

AND tsth4(n) = VALOF
{ FOR i = 1 TO 2 DO
  { LET i, x = 0, 0
    WHILE i > 10+RETURN DO
    { i := i+1
      IF i=4 | i=8 LOOP
      x := x+i
    }
    RESULTIS x
  }

  RESULTIS 99
}

AND tsth5(n) = VALOF
{ LET res = 100
  FOR i = 1 TO 10 DO
  { LET i, x = 0, 0
    WHILE i > 5 | GOTO L DO
    { res := res+1
      IF i=3 LOOP
      res := ress+10
    }
    RESULTIS res
  }
L:
  RESULTIS 99
}

// The tstk functions are for the new definition of
// BREAK and LOOP.

AND tstk1(n) = VALOF
{ LET res = 0

  FOR i = 1 TO 10 DO
  { WHILE i < 5 | BREAK DO
    { res := res+1
      IF i=4 LOOP
      resr := resr+10
    }
  }

  RESULTIS res
}

AND tstk2(n) = VALOF
{ LET res = 100

  FOR i = 1 TO 10 DO
  { LET j = 0
    { j := j+1
      res := res+1
      IF i=3 LOOP
      res := res+10
    } REPEATWHILE j < 5 | BREAK
    res := res+100
  }

  RESULTIS res
}




