
cdef extern from *:
    ctypedef long __suseconds_t
    ctypedef long __syscall_slong_t
    ctypedef struct __sigset_t:
        pass
    ctypedef long __time_t
    struct timeval:
        __time_t tv_sec
        __suseconds_t tv_usec
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    enum:
        FD_SETSIZE


cdef extern from "<sys/select.h>":
    ctypedef __suseconds_t suseconds_t
    ctypedef long __fd_mask
    struct pxdgen_anon_toplevel_0:
        __fd_mask __fds_bits[16]
    ctypedef pxdgen_anon_toplevel_0 fd_set
    ctypedef __fd_mask fd_mask
    void FD_CLR(int, fd_set*)
    void FD_ISSET(int, fd_set*)
    void FD_SET(int, fd_set*)
    void FD_ZERO(fd_set*)
    int select(int, fd_set*, fd_set*, fd_set*, timeval*)
    int pselect(int, fd_set*, fd_set*, fd_set*, timespec*, __sigset_t*)


