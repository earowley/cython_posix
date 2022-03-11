

cdef extern from *:
    enum:
        MM_HARD
        MM_SOFT
        MM_FIRM
        MM_APPL
        MM_UTIL
        MM_OPSYS
        MM_RECOVER
        MM_NRECOV
        MM_HALT
        MM_ERROR
        MM_WARNING
        MM_INFO
        MM_NOSEV
        MM_PRINT
        MM_CONSOLE
        MM_OK
        MM_NOTOK
        MM_NOMSG
        MM_NOCON
        MM_NULLLBL
        MM_NULLSEV
        MM_NULLMC
        MM_NULLTXT
        MM_NULLACT
        MM_NULLTAG


cdef extern from "<fmtmsg.h>":
    int fmtmsg(long, const char*, int, const char*, const char*, const char*)
    int addseverity(int, const char*)


