
cdef extern from *:
    ctypedef int __pid_t
    ctypedef long __ssize_t
    ctypedef unsigned int __gid_t
    ctypedef int __key_t
    ctypedef unsigned int __uid_t
    ctypedef unsigned long __syscall_ulong_t
    ctypedef long __time_t
    ctypedef unsigned int __mode_t
    ctypedef __syscall_ulong_t msglen_t
    ctypedef __key_t key_t
    ctypedef __syscall_ulong_t msgqnum_t
    struct ipc_perm:
        __key_t __key
        __uid_t uid
        __gid_t gid
        __uid_t cuid
        __gid_t cgid
        __mode_t mode
        unsigned short __seq
        unsigned short __pad2
        __syscall_ulong_t __glibc_reserved1
        __syscall_ulong_t __glibc_reserved2
    struct msqid_ds:
        ipc_perm msg_perm
        __time_t msg_stime
        __time_t msg_rtime
        __time_t msg_ctime
        __syscall_ulong_t __msg_cbytes
        msgqnum_t msg_qnum
        msglen_t msg_qbytes
        __pid_t msg_lspid
        __pid_t msg_lrpid
        __syscall_ulong_t __glibc_reserved4
        __syscall_ulong_t __glibc_reserved5
    enum:
        MSG_NOERROR

cdef extern from "<sys/msg.h>":
    ctypedef __pid_t pid_t
    ctypedef __ssize_t ssize_t
    int msgctl(int, int, msqid_ds*)
    int msgget(key_t, int)
    ssize_t msgrcv(int, void*, size_t, long, int)
    int msgsnd(int, const void*, size_t, int)


