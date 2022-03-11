
cdef extern from *:
    ctypedef unsigned short sa_family_t
    ctypedef unsigned int __socklen_t
    ctypedef long __ssize_t
    ctypedef __ssize_t ssize_t
    struct iovec:
        void* iov_base
        size_t iov_len
    ctypedef __socklen_t socklen_t
    struct sockaddr:
        sa_family_t sa_family
        char sa_data[14]
    struct msghdr:
        void* msg_name
        socklen_t msg_namelen
        iovec* msg_iov
        size_t msg_iovlen
        void* msg_control
        size_t msg_controllen
        int msg_flags
    struct cmsghdr:
        socklen_t cmsg_len
        int cmsg_level
        int cmsg_type
    unsigned char* CMSG_DATA(cmsghdr*)
    cmsghdr* CMSG_NXTHDR(msghdr*, cmsghdr*)
    cmsghdr* CMSG_FIRSTHDR(msghdr*)
    struct linger:
        int l_onoff
        int l_linger
    enum:
        SCM_RIGHTS
        SOCK_DGRAM
        SOCK_STREAM
        SOCK_SEQPACKET
        SOL_SOCKET
        SO_ACCEPTCONN
        SO_BROADCAST
        SO_DEBUG
        SO_DONTROUTE
        SO_ERROR
        SO_KEEPALIVE
        SO_LINGER
        SO_OOBINLINE
        SO_RCVBUF
        SO_RCVLOWAT
        SO_RCVTIMEO
        SO_REUSEADDR
        SO_SNDBUF
        SO_SNDLOWAT
        SO_SNDTIMEO
        SO_TYPE
        MSG_CTRUNC
        MSG_DONTROUTE
        MSG_EOR
        MSG_OOB
        MSG_PEEK
        MSG_TRUNC
        MSG_WAITALL
        AF_UNIX
        AF_UNSPEC
        AF_INET
        SHUT_RD
        SHUT_WR
        SHUT_RDWR


cdef extern from "<sys/socket.h>":
    int socket(int, int, int)
    int socketpair(int, int, int, int[2])
    int bind(int, sockaddr*, socklen_t)
    int getsockname(int, sockaddr*, socklen_t*)
    int connect(int, sockaddr*, socklen_t)
    int getpeername(int, sockaddr*, socklen_t*)
    ssize_t send(int, const void*, size_t, int)
    ssize_t recv(int, void*, size_t, int)
    ssize_t sendto(int, const void*, size_t, int, sockaddr*, socklen_t)
    ssize_t recvfrom(int, void*, size_t, int, sockaddr*, socklen_t*)
    ssize_t sendmsg(int, msghdr*, int)
    ssize_t recvmsg(int, msghdr*, int)
    int getsockopt(int, int, int, void*, socklen_t*)
    int setsockopt(int, int, int, const void*, socklen_t)
    int listen(int, int)
    int accept(int, sockaddr*, socklen_t*)
    int shutdown(int, int)
    int sockatmark(int)
    int isfdtype(int, int)


