

cdef extern from *:
    enum:
        NL_SETD
        NL_CAT_LOCALE


cdef extern from "<nl_types.h>":
    ctypedef void* nl_catd
    ctypedef int nl_item
    nl_catd catopen(const char*, int)
    char* catgets(nl_catd, int, int, const char*)
    int catclose(nl_catd)


