
cdef extern from *:
    ctypedef long __time_t
    ctypedef unsigned int __id_t
    ctypedef unsigned long __rlim_t
    ctypedef long __syscall_slong_t
    ctypedef long __suseconds_t
    ctypedef __rlim_t rlim_t
    struct rlimit:
        rlim_t rlim_cur
        rlim_t rlim_max
    struct timeval:
        __time_t tv_sec
        __suseconds_t tv_usec
    union pxdgen_anon_rusage_0:
        long ru_maxrss
        __syscall_slong_t __ru_maxrss_word
    union pxdgen_anon_rusage_1:
        long ru_ixrss
        __syscall_slong_t __ru_ixrss_word
    union pxdgen_anon_rusage_2:
        long ru_idrss
        __syscall_slong_t __ru_idrss_word
    union pxdgen_anon_rusage_3:
        long ru_isrss
        __syscall_slong_t __ru_isrss_word
    union pxdgen_anon_rusage_4:
        long ru_minflt
        __syscall_slong_t __ru_minflt_word
    union pxdgen_anon_rusage_5:
        long ru_majflt
        __syscall_slong_t __ru_majflt_word
    union pxdgen_anon_rusage_6:
        long ru_nswap
        __syscall_slong_t __ru_nswap_word
    union pxdgen_anon_rusage_7:
        long ru_inblock
        __syscall_slong_t __ru_inblock_word
    union pxdgen_anon_rusage_8:
        long ru_oublock
        __syscall_slong_t __ru_oublock_word
    union pxdgen_anon_rusage_9:
        long ru_msgsnd
        __syscall_slong_t __ru_msgsnd_word
    union pxdgen_anon_rusage_10:
        long ru_msgrcv
        __syscall_slong_t __ru_msgrcv_word
    union pxdgen_anon_rusage_11:
        long ru_nsignals
        __syscall_slong_t __ru_nsignals_word
    union pxdgen_anon_rusage_12:
        long ru_nvcsw
        __syscall_slong_t __ru_nvcsw_word
    union pxdgen_anon_rusage_13:
        long ru_nivcsw
        __syscall_slong_t __ru_nivcsw_word
    struct rusage:
        timeval ru_utime
        timeval ru_stime
    enum:
        PRIO_PROCESS
        PRIO_PGRP
        PRIO_USER
        RLIM_INFINITY
        RLIM_SAVED_MAX
        RLIM_SAVED_CUR
        RUSAGE_SELF
        RUSAGE_CHILDREN
        RLIMIT_CORE
        RLIMIT_CPU
        RLIMIT_DATA
        RLIMIT_FSIZE
        RLIMIT_NOFILE
        RLIMIT_STACK
        RLIMIT_AS


cdef extern from "<sys/resource.h>":
    ctypedef __id_t id_t
    ctypedef int __rlimit_resource_t
    ctypedef int __rusage_who_t
    ctypedef int __priority_which_t
    int getrlimit(__rlimit_resource_t, rlimit*)
    int setrlimit(__rlimit_resource_t, rlimit*)
    int getrusage(__rusage_who_t, rusage*)
    int getpriority(__priority_which_t, id_t)
    int setpriority(__priority_which_t, id_t, int)


