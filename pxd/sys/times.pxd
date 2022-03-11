

cdef extern from *:
    ctypedef long __clock_t
    ctypedef __clock_t clock_t

cdef extern from "<sys/times.h>":
    struct tms:
        clock_t tms_utime
        clock_t tms_stime
        clock_t tms_cutime
        clock_t tms_cstime
    clock_t times(tms*)


