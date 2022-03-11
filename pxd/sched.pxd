
cdef extern from *:
    struct sched_param:
        int sched_priority
    ctypedef long __syscall_slong_t
    ctypedef long __time_t
    ctypedef int __pid_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    enum:
        SCHED_FIFO
        SCHED_RR
        SCHED_OTHER


cdef extern from "<sched.h>":
    ctypedef __pid_t pid_t
    int sched_setparam(__pid_t, sched_param*)
    int sched_getparam(__pid_t, sched_param*)
    int sched_setscheduler(__pid_t, int, sched_param*)
    int sched_getscheduler(__pid_t)
    int sched_yield()
    int sched_get_priority_max(int)
    int sched_get_priority_min(int)
    int sched_rr_get_interval(__pid_t, timespec*)


