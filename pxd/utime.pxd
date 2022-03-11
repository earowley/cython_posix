
cdef extern from *:
    ctypedef long __time_t

cdef extern from "<utime.h>":
    struct utimbuf:
        __time_t actime
        __time_t modtime
    int utime(const char*, utimbuf*)


