
cdef extern from *:
    ctypedef unsigned long __dev_t
    ctypedef long __blkcnt_t
    ctypedef unsigned int __gid_t
    ctypedef long __off_t
    ctypedef unsigned long __nlink_t
    ctypedef unsigned long __ino_t
    ctypedef long __syscall_slong_t
    ctypedef long __time_t
    ctypedef unsigned int __mode_t
    ctypedef long __blksize_t
    ctypedef unsigned int __uid_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    enum:
        S_IFMT
        S_IFBLK
        S_IFCHR
        S_IFIFO
        S_IFREG
        S_IFDIR
        S_IFLNK
        S_IRWXU
        S_IRUSR
        S_IWUSR
        S_IXUSR
        S_IRWXG
        S_IRGRP
        S_IWGRP
        S_IXGRP
        S_IRWXO
        S_IROTH
        S_IWOTH
        S_IXOTH
        S_ISUID
        S_ISGID
        S_ISVTX

ctypedef struct struct_stat:
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


cdef extern from "<sys/stat.h>":
    ctypedef __dev_t dev_t
    ctypedef __gid_t gid_t
    ctypedef __ino_t ino_t
    ctypedef __mode_t mode_t
    ctypedef __nlink_t nlink_t
    ctypedef __off_t off_t
    ctypedef __uid_t uid_t
    bint S_ISBLK(mode_t)
    bint S_ISCHR(mode_t)
    bint S_ISDIR(mode_t)
    bint S_ISFIFO(mode_t)
    bint S_ISREG(mode_t)
    bint S_ISLNK(mode_t)
    bint S_TYPEISMQ(struct_stat*)
    bint S_TYPEISSEM(struct_stat*)
    bint S_TYPEISSHM(struct_stat*)
    int stat(const char*, struct_stat*)
    int fstat(int, struct_stat*)
    int fstatat(int, const char*, struct_stat*, int)
    int lstat(const char*, struct_stat*)
    int chmod(const char*, __mode_t)
    int lchmod(const char*, __mode_t)
    int fchmod(int, __mode_t)
    int fchmodat(int, const char*, __mode_t, int)
    __mode_t umask(__mode_t)
    int mkdir(const char*, __mode_t)
    int mkdirat(int, const char*, __mode_t)
    int mknod(const char*, __mode_t, __dev_t)
    int mknodat(int, const char*, __mode_t, __dev_t)
    int mkfifo(const char*, __mode_t)
    int mkfifoat(int, const char*, __mode_t)
    int utimensat(int, const char*, timespec[2], int)
    int futimens(int, timespec[2])


