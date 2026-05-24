SECTION "ramstrm"

GET "libhdr"

LET start : => VALOF
{   LET ramstrm = findoutput("RAM:")
    LET buf = VEC 100
    LET pos = ?

    UNLESS ramstrm RESULTIS 0

    selectoutput(ramstrm)

    writes("user:42=example*n")

    pos := cis!scb_pos

    rewindstream(ramstrm)

    


}