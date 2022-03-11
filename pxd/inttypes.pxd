

cdef extern from *:
    ctypedef long __intmax_t
    ctypedef unsigned long __uintmax_t
    ctypedef __intmax_t intmax_t
    ctypedef __uintmax_t uintmax_t

cdef extern from "<inttypes.h>":
    ctypedef int __gwchar_t
    struct pxdgen_anon_toplevel_0:
        long quot
        long rem
    ctypedef pxdgen_anon_toplevel_0 imaxdiv_t
    intmax_t imaxabs(intmax_t)
    imaxdiv_t imaxdiv(intmax_t, intmax_t)
    intmax_t strtoimax(const char*, char**, int)
    uintmax_t strtoumax(const char*, char**, int)
    intmax_t wcstoimax(__gwchar_t*, __gwchar_t**, int)
    uintmax_t wcstoumax(__gwchar_t*, __gwchar_t**, int)


