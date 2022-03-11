

cdef extern from "<arpa/inet.h>":
    ctypedef unsigned char __u_char
    ctypedef unsigned short __u_short
    ctypedef unsigned int __u_int
    ctypedef unsigned long __u_long
    ctypedef signed char __int8_t
    ctypedef unsigned char __uint8_t
    ctypedef short __int16_t
    ctypedef unsigned short __uint16_t
    ctypedef int __int32_t
    ctypedef unsigned int __uint32_t
    ctypedef long __int64_t
    ctypedef unsigned long __uint64_t
    ctypedef __int8_t __int_least8_t
    ctypedef __uint8_t __uint_least8_t
    ctypedef __int16_t __int_least16_t
    ctypedef __uint16_t __uint_least16_t
    ctypedef __int32_t __int_least32_t
    ctypedef __uint32_t __uint_least32_t
    ctypedef __int64_t __int_least64_t
    ctypedef __uint64_t __uint_least64_t
    ctypedef long __quad_t
    ctypedef unsigned long __u_quad_t
    ctypedef long __intmax_t
    ctypedef unsigned long __uintmax_t
    ctypedef unsigned long __dev_t
    ctypedef unsigned int __uid_t
    ctypedef unsigned int __gid_t
    ctypedef unsigned long __ino_t
    ctypedef unsigned long __ino64_t
    ctypedef unsigned int __mode_t
    ctypedef unsigned long __nlink_t
    ctypedef long __off_t
    ctypedef long __off64_t
    ctypedef int __pid_t
    struct pxdgen_anon_toplevel_0:
        int __val[2]
    ctypedef pxdgen_anon_toplevel_0 __fsid_t
    ctypedef long __clock_t
    ctypedef unsigned long __rlim_t
    ctypedef unsigned long __rlim64_t
    ctypedef unsigned int __id_t
    ctypedef long __time_t
    ctypedef unsigned int __useconds_t
    ctypedef long __suseconds_t
    ctypedef long __suseconds64_t
    ctypedef int __daddr_t
    ctypedef int __key_t
    ctypedef int __clockid_t
    ctypedef void* __timer_t
    ctypedef long __blksize_t
    ctypedef long __blkcnt_t
    ctypedef long __blkcnt64_t
    ctypedef unsigned long __fsblkcnt_t
    ctypedef unsigned long __fsblkcnt64_t
    ctypedef unsigned long __fsfilcnt_t
    ctypedef unsigned long __fsfilcnt64_t
    ctypedef long __fsword_t
    ctypedef long __ssize_t
    ctypedef long __syscall_slong_t
    ctypedef unsigned long __syscall_ulong_t
    ctypedef __off64_t __loff_t
    ctypedef char* __caddr_t
    ctypedef long __intptr_t
    ctypedef unsigned int __socklen_t
    ctypedef int __sig_atomic_t
    ctypedef __uint8_t uint8_t
    ctypedef __uint16_t uint16_t
    ctypedef __uint32_t uint32_t
    ctypedef __uint64_t uint64_t
    ctypedef unsigned long size_t
    struct iovec:
        void* iov_base
        size_t iov_len
    ctypedef __u_char u_char
    ctypedef __u_short u_short
    ctypedef __u_int u_int
    ctypedef __u_long u_long
    ctypedef __quad_t quad_t
    ctypedef __u_quad_t u_quad_t
    ctypedef __fsid_t fsid_t
    ctypedef __loff_t loff_t
    ctypedef __ino_t ino_t
    ctypedef __dev_t dev_t
    ctypedef __gid_t gid_t
    ctypedef __mode_t mode_t
    ctypedef __nlink_t nlink_t
    ctypedef __uid_t uid_t
    ctypedef __off_t off_t
    ctypedef __pid_t pid_t
    ctypedef __id_t id_t
    ctypedef __ssize_t ssize_t
    ctypedef __daddr_t daddr_t
    ctypedef __caddr_t caddr_t
    ctypedef __key_t key_t
    ctypedef __clock_t clock_t
    ctypedef __clockid_t clockid_t
    ctypedef __time_t time_t
    ctypedef __timer_t timer_t
    ctypedef unsigned long ulong
    ctypedef unsigned short ushort
    ctypedef unsigned int uint
    ctypedef __int8_t int8_t
    ctypedef __int16_t int16_t
    ctypedef __int32_t int32_t
    ctypedef __int64_t int64_t
    ctypedef __uint8_t u_int8_t
    ctypedef __uint16_t u_int16_t
    ctypedef __uint32_t u_int32_t
    ctypedef __uint64_t u_int64_t
    ctypedef long register_t
    __uint16_t __bswap_16(__uint16_t)
    __uint32_t __bswap_32(__uint32_t)
    __uint64_t __bswap_64(__uint64_t)
    __uint16_t __uint16_identity(__uint16_t)
    __uint32_t __uint32_identity(__uint32_t)
    __uint64_t __uint64_identity(__uint64_t)
    struct pxdgen_anon_toplevel_1:
        unsigned long __val[16]
    ctypedef pxdgen_anon_toplevel_1 __sigset_t
    ctypedef __sigset_t sigset_t
    struct timeval:
        __time_t tv_sec
        __suseconds_t tv_usec
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    ctypedef __suseconds_t suseconds_t
    ctypedef long __fd_mask
    struct pxdgen_anon_toplevel_2:
        __fd_mask __fds_bits[16]
    ctypedef pxdgen_anon_toplevel_2 fd_set
    ctypedef __fd_mask fd_mask
    int select(int, fd_set*, fd_set*, fd_set*, timeval*)
    int pselect(int, fd_set*, fd_set*, fd_set*, timespec*, __sigset_t*)
    ctypedef __blksize_t blksize_t
    ctypedef __blkcnt_t blkcnt_t
    ctypedef __fsblkcnt_t fsblkcnt_t
    ctypedef __fsfilcnt_t fsfilcnt_t
    struct pxdgen_anon_pxdgen_anon_toplevel_3_0:
        unsigned int __low
        unsigned int __high
    union pxdgen_anon_toplevel_3:
        unsigned long long __value64
        pxdgen_anon_pxdgen_anon_toplevel_3_0 __value32
    ctypedef pxdgen_anon_toplevel_3 __atomic_wide_counter
    struct __pthread_internal_list:
        __pthread_internal_list* __prev
        __pthread_internal_list* __next
    ctypedef __pthread_internal_list __pthread_list_t
    struct __pthread_internal_slist:
        __pthread_internal_slist* __next
    ctypedef __pthread_internal_slist __pthread_slist_t
    struct __pthread_mutex_s:
        int __lock
        unsigned int __count
        int __owner
        unsigned int __nusers
        int __kind
        short __spins
        short __elision
        __pthread_list_t __list
    struct __pthread_rwlock_arch_t:
        unsigned int __readers
        unsigned int __writers
        unsigned int __wrphase_futex
        unsigned int __writers_futex
        unsigned int __pad3
        unsigned int __pad4
        int __cur_writer
        int __shared
        signed char __rwelision
        unsigned char __pad1[7]
        unsigned long __pad2
        unsigned int __flags
    struct __pthread_cond_s:
        __atomic_wide_counter __wseq
        __atomic_wide_counter __g1_start
        unsigned int __g_refs[2]
        unsigned int __g_size[2]
        unsigned int __g1_orig_size
        unsigned int __wrefs
        unsigned int __g_signals[2]
    ctypedef unsigned int __tss_t
    ctypedef unsigned long __thrd_t
    struct pxdgen_anon_toplevel_4:
        int __data
    ctypedef pxdgen_anon_toplevel_4 __once_flag
    ctypedef unsigned long pthread_t
    union pxdgen_anon_toplevel_5:
        char __size[4]
        int __align
    ctypedef pxdgen_anon_toplevel_5 pthread_mutexattr_t
    union pxdgen_anon_toplevel_6:
        char __size[4]
        int __align
    ctypedef pxdgen_anon_toplevel_6 pthread_condattr_t
    ctypedef unsigned int pthread_key_t
    ctypedef int pthread_once_t
    union pthread_attr_t:
        char __size[56]
        long __align
    union pxdgen_anon_toplevel_7:
        __pthread_mutex_s __data
        char __size[40]
        long __align
    ctypedef pxdgen_anon_toplevel_7 pthread_mutex_t
    union pxdgen_anon_toplevel_8:
        __pthread_cond_s __data
        char __size[48]
        long long __align
    ctypedef pxdgen_anon_toplevel_8 pthread_cond_t
    union pxdgen_anon_toplevel_9:
        __pthread_rwlock_arch_t __data
        char __size[56]
        long __align
    ctypedef pxdgen_anon_toplevel_9 pthread_rwlock_t
    union pxdgen_anon_toplevel_10:
        char __size[8]
        long __align
    ctypedef pxdgen_anon_toplevel_10 pthread_rwlockattr_t
    ctypedef int pthread_spinlock_t
    union pxdgen_anon_toplevel_11:
        char __size[32]
        long __align
    ctypedef pxdgen_anon_toplevel_11 pthread_barrier_t
    union pxdgen_anon_toplevel_12:
        char __size[4]
        int __align
    ctypedef pxdgen_anon_toplevel_12 pthread_barrierattr_t
    ctypedef __socklen_t socklen_t
    enum __socket_type:
        SOCK_STREAM = 1
        SOCK_DGRAM = 2
        SOCK_RAW = 3
        SOCK_RDM = 4
        SOCK_SEQPACKET = 5
        SOCK_DCCP = 6
        SOCK_PACKET = 10
        SOCK_CLOEXEC = 524288
        SOCK_NONBLOCK = 2048
    ctypedef unsigned short sa_family_t
    struct sockaddr:
        sa_family_t sa_family
        char sa_data[14]
    struct sockaddr_storage:
        sa_family_t ss_family
        char __ss_padding[118]
        unsigned long __ss_align
    struct msghdr:
        void* msg_name
        socklen_t msg_namelen
        iovec* msg_iov
        size_t msg_iovlen
        void* msg_control
        size_t msg_controllen
        int msg_flags
    struct cmsghdr:
        size_t cmsg_len
        int cmsg_level
        int cmsg_type
        unsigned char* __cmsg_data
    cmsghdr* __cmsg_nxthdr(msghdr*, cmsghdr*)
    struct pxdgen_anon_toplevel_15:
        unsigned long fds_bits[16]
    ctypedef pxdgen_anon_toplevel_15 __kernel_fd_set
    ctypedef void (*__kernel_sighandler_t)(int)
    ctypedef int __kernel_key_t
    ctypedef int __kernel_mqd_t
    ctypedef unsigned short __kernel_old_uid_t
    ctypedef unsigned short __kernel_old_gid_t
    ctypedef unsigned long __kernel_old_dev_t
    ctypedef long __kernel_long_t
    ctypedef unsigned long __kernel_ulong_t
    ctypedef __kernel_ulong_t __kernel_ino_t
    ctypedef unsigned int __kernel_mode_t
    ctypedef int __kernel_pid_t
    ctypedef int __kernel_ipc_pid_t
    ctypedef unsigned int __kernel_uid_t
    ctypedef unsigned int __kernel_gid_t
    ctypedef __kernel_long_t __kernel_suseconds_t
    ctypedef int __kernel_daddr_t
    ctypedef unsigned int __kernel_uid32_t
    ctypedef unsigned int __kernel_gid32_t
    ctypedef __kernel_ulong_t __kernel_size_t
    ctypedef __kernel_long_t __kernel_ssize_t
    ctypedef __kernel_long_t __kernel_ptrdiff_t
    struct pxdgen_anon_toplevel_16:
        int val[2]
    ctypedef pxdgen_anon_toplevel_16 __kernel_fsid_t
    ctypedef __kernel_long_t __kernel_off_t
    ctypedef long long __kernel_loff_t
    ctypedef __kernel_long_t __kernel_old_time_t
    ctypedef __kernel_long_t __kernel_time_t
    ctypedef long long __kernel_time64_t
    ctypedef __kernel_long_t __kernel_clock_t
    ctypedef int __kernel_timer_t
    ctypedef int __kernel_clockid_t
    ctypedef char* __kernel_caddr_t
    ctypedef unsigned short __kernel_uid16_t
    ctypedef unsigned short __kernel_gid16_t
    struct linger:
        int l_onoff
        int l_linger
    struct osockaddr:
        unsigned short sa_family
        unsigned char sa_data[14]
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
    ctypedef uint32_t in_addr_t
    struct in_addr:
        in_addr_t s_addr
    struct ip_opts:
        in_addr ip_dst
        char ip_opts[40]
    struct ip_mreqn:
        in_addr imr_multiaddr
        in_addr imr_address
        int imr_ifindex
    struct in_pktinfo:
        int ipi_ifindex
        in_addr ipi_spec_dst
        in_addr ipi_addr
    ctypedef uint16_t in_port_t
    union pxdgen_anon_in6_addr_0:
        uint8_t __u6_addr8[16]
        uint16_t __u6_addr16[8]
        uint32_t __u6_addr32[4]
    struct in6_addr:
        pass
    in6_addr in6addr_any
    in6_addr in6addr_loopback
    struct sockaddr_in:
        sa_family_t sin_family
        in_port_t sin_port
        in_addr sin_addr
        unsigned char sin_zero[8]
    struct sockaddr_in6:
        sa_family_t sin6_family
        in_port_t sin6_port
        uint32_t sin6_flowinfo
        in6_addr sin6_addr
        uint32_t sin6_scope_id
    struct ip_mreq:
        in_addr imr_multiaddr
        in_addr imr_interface
    struct ip_mreq_source:
        in_addr imr_multiaddr
        in_addr imr_interface
        in_addr imr_sourceaddr
    struct ipv6_mreq:
        in6_addr ipv6mr_multiaddr
        unsigned int ipv6mr_interface
    struct group_req:
        uint32_t gr_interface
        sockaddr_storage gr_group
    struct group_source_req:
        uint32_t gsr_interface
        sockaddr_storage gsr_group
        sockaddr_storage gsr_source
    struct ip_msfilter:
        in_addr imsf_multiaddr
        in_addr imsf_interface
        uint32_t imsf_fmode
        uint32_t imsf_numsrc
        in_addr imsf_slist[1]
    struct group_filter:
        uint32_t gf_interface
        sockaddr_storage gf_group
        uint32_t gf_fmode
        uint32_t gf_numsrc
        sockaddr_storage gf_slist[1]
    uint32_t ntohl(uint32_t)
    uint16_t ntohs(uint16_t)
    uint32_t htonl(uint32_t)
    uint16_t htons(uint16_t)
    int bindresvport(int, sockaddr_in*)
    int bindresvport6(int, sockaddr_in6*)
    in_addr_t inet_addr(const char*)
    in_addr_t inet_lnaof(in_addr)
    in_addr inet_makeaddr(in_addr_t, in_addr_t)
    in_addr_t inet_netof(in_addr)
    in_addr_t inet_network(const char*)
    char* inet_ntoa(in_addr)
    int inet_pton(int, const char*, void*)
    const char* inet_ntop(int, const void*, char*, socklen_t)
    int inet_aton(const char*, in_addr*)
    char* inet_neta(in_addr_t, char*, size_t)
    char* inet_net_ntop(int, const void*, int, char*, size_t)
    int inet_net_pton(int, const char*, void*, size_t)
    unsigned int inet_nsap_addr(const char*, unsigned char*, int)
    char* inet_nsap_ntoa(int, const unsigned char*, char*)


