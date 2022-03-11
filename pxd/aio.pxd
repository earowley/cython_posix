
cdef extern from *:
    ctypedef long __syscall_slong_t
    union pthread_attr_t:
        char __size[56]
        long __align
    ctypedef int __pid_t
    ctypedef long __off64_t
    ctypedef long __time_t
    union sigval:
        int sival_int
        void* sival_ptr
    ctypedef long __off_t
    ctypedef long __ssize_t
    ctypedef sigval __sigval_t
    ctypedef pthread_attr_t pthread_attr_t
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
    enum:
        AIO_ALLDONE
        AIO_CANCELED
        AIO_NOTCANCELED
        LIO_NOP
        LIO_NOWAIT
        LIO_READ
        LIO_WAIT
        LIO_WRITE


cdef extern from "<aio.h>":
    struct aiocb:
        int aio_fildes
        int aio_lio_opcode
        int aio_reqprio
        void* aio_buf
        size_t aio_nbytes
        sigevent aio_sigevent
        aiocb* __next_prio
        int __abs_prio
        int __policy
        int __error_code
        __ssize_t __return_value
        __off_t aio_offset
        char __pad[0]
        char __glibc_reserved[32]
    int aio_read(aiocb*)
    int aio_write(aiocb*)
    int lio_listio(int, aiocb*[], int, sigevent*)
    int aio_error(aiocb*)
    __ssize_t aio_return(aiocb*)
    int aio_cancel(int, aiocb*)
    int aio_suspend(aiocb*[], int, timespec*)
    int aio_fsync(int, aiocb*)


