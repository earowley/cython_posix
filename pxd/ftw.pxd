
cdef extern from *:
    ctypedef long __blksize_t
    ctypedef long __off_t
    ctypedef unsigned int __gid_t
    ctypedef unsigned int __mode_t
    ctypedef unsigned long __nlink_t
    ctypedef unsigned long __dev_t
    ctypedef unsigned long __ino_t
    ctypedef unsigned int __uid_t
    ctypedef long __time_t
    ctypedef long __blkcnt_t
    ctypedef long __syscall_slong_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    struct stat:
        __dev_t st_dev
        __ino_t st_ino
        __nlink_t st_nlink
        __mode_t st_mode
        __uid_t st_uid
        __gid_t st_gid
        int __pad0
        __dev_t st_rdev
        __off_t st_size
        __blksize_t st_blksize
        __blkcnt_t st_blocks
        timespec st_atim
        timespec st_mtim
        timespec st_ctim
        __syscall_slong_t __glibc_reserved[3]
    enum:
        FTW_F
        FTW_D
        FTW_DNR
        FTW_DP
        FTW_NS
        FTW_SL
        FTW_SLN
        FTW_PHYS
        FTW_MOUNT
        FTW_DEPTH
        FTW_CHDIR


cdef extern from "<ftw.h>":
    ctypedef int (*__ftw_func_t)(const char*, stat*, int)
    int ftw(const char*, __ftw_func_t, int)


