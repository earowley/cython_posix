
cdef extern from *:
    ctypedef long __suseconds_t
    ctypedef long __time_t
    struct timeval:
        __time_t tv_sec
        __suseconds_t tv_usec
    struct itimerval:
        timeval it_interval
        timeval it_value
    enum:
        ITIMER_REAL
        ITIMER_VIRTUAL
        ITIMER_PROF

cdef extern from "<sys/time.h>":
    ctypedef __suseconds_t suseconds_t
    ctypedef __time_t time_t
    struct timezone:
        int tz_minuteswest
        int tz_dsttime
    int gettimeofday(timeval*, void*)
    int settimeofday(timeval*, timezone*)
    int adjtime(timeval*, timeval*)
    struct itimerval:
        timeval it_interval
        timeval it_value
    ctypedef int __itimer_which_t
    int getitimer(__itimer_which_t, itimerval*)
    int setitimer(__itimer_which_t, itimerval*, itimerval*)
    int utimes(const char*, timeval[2])
    int lutimes(const char*, timeval[2])
    int futimes(int, timeval[2])


