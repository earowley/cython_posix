
cdef extern from *:
    ctypedef unsigned int __mode_t
    ctypedef unsigned int __uid_t
    ctypedef int __key_t
    ctypedef long __time_t
    ctypedef unsigned int __gid_t
    ctypedef unsigned long __syscall_ulong_t
    ctypedef int __pid_t
    ctypedef __key_t key_t
    ctypedef __syscall_ulong_t shmatt_t
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
    struct shmid_ds:
        ipc_perm shm_perm
        size_t shm_segsz
        __time_t shm_atime
        __time_t shm_dtime
        __time_t shm_ctime
        __pid_t shm_cpid
        __pid_t shm_lpid
        shmatt_t shm_nattch
        __syscall_ulong_t __glibc_reserved5
        __syscall_ulong_t __glibc_reserved6
    enum:
        SHM_RDONLY
        SHM_RND
        SHMLBA


cdef extern from "<sys/shm.h>":
    int shmctl(int, int, shmid_ds*)
    int shmget(key_t, size_t, int)
    void* shmat(int, const void*, int)
    int shmdt(const void*)


