

cdef extern from *:
    enum:
        POLLIN
        POLLRDNORM
        POLLRDBAND
        POLLPRI
        POLLOUT
        POLLWRNORM
        POLLWRBAND
        POLLERR
        POLLHUP
        POLLNVAL


cdef extern from "<poll.h>":
    ctypedef unsigned long nfds_t
    struct pollfd:
        int fd
        short events
        short revents
    int poll(pollfd*, nfds_t, int)


