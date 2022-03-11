
cdef extern from *:
    ctypedef unsigned int __mode_t
    ctypedef unsigned int __uid_t
    ctypedef unsigned int __gid_t
    ctypedef int __key_t
    enum:
        IPC_CREAT
        IPC_EXCL
        IPC_NOWAIT
        IPC_PRIVATE
        IPC_RMID
        IPC_SET
        IPC_STAT

cdef extern from "<sys/ipc.h>":
    ctypedef __uid_t uid_t
    ctypedef __gid_t gid_t
    ctypedef __mode_t mode_t
    ctypedef __key_t key_t
    struct ipc_perm:
        uid_t uid
        gid_t gid
        uid_t cuid
        gid_t cgid
        mode_t mode
    key_t ftok(const char*, int)


