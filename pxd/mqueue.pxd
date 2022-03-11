
cdef extern from *:
    ctypedef int mqd_t
    union sigval:
        int sival_int
        void* sival_ptr
    ctypedef long __time_t
    ctypedef long __ssize_t
    ctypedef long __syscall_slong_t
    ctypedef int __pid_t
    union pthread_attr_t:
        char __size[56]
        long __align
    struct mq_attr:
        __syscall_slong_t mq_flags
        __syscall_slong_t mq_maxmsg
        __syscall_slong_t mq_msgsize
        __syscall_slong_t mq_curmsgs
        __syscall_slong_t __pad[4]
    ctypedef sigval __sigval_t
    ctypedef __ssize_t ssize_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    struct pxdgen_anon_pxdgen_anon_sigevent_0_0:
        void (*_function)(__sigval_t)
        pthread_attr_t* _attribute
    union pxdgen_anon_sigevent_0:
        int _pad[12]
        __pid_t _tid
        pxdgen_anon_pxdgen_anon_sigevent_0_0 _sigev_thread
    struct sigevent:
        __sigval_t sigev_value
        int sigev_signo
        int sigev_notify

cdef extern from "<mqueue.h>":
    mqd_t mq_open(const char*, int)
    int mq_close(mqd_t)
    int mq_getattr(mqd_t, mq_attr*)
    int mq_setattr(mqd_t, mq_attr*, mq_attr*)
    int mq_unlink(const char*)
    int mq_notify(mqd_t, sigevent*)
    ssize_t mq_receive(mqd_t, char*, size_t, unsigned int*)
    int mq_send(mqd_t, const char*, size_t, unsigned int)
    ssize_t mq_timedreceive(mqd_t, char*, size_t, unsigned int*, timespec*)
    int mq_timedsend(mqd_t, const char*, size_t, unsigned int, timespec*)


