
cdef extern from *:
    ctypedef long __off_t
    ctypedef long __ssize_t
    ctypedef __ssize_t ssize_t
    struct iovec:
        void* iov_base
        size_t iov_len

cdef extern from "<sys/uio.h>":
    ssize_t readv(int, iovec*, int)
    ssize_t writev(int, iovec*, int)
    ssize_t preadv(int, iovec*, int, __off_t)
    ssize_t pwritev(int, iovec*, int, __off_t)


