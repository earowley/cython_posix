
cdef extern from *:
    ctypedef long __off_t
    ctypedef int __pid_t
    ctypedef unsigned int __mode_t
    enum:
        F_DUPFD
        F_DUPFD_CLOEXEC
        F_GETFD
        F_SETFD
        F_GETFL
        F_SETFL
        F_GETLK
        F_SETLK
        F_SETLKW
        F_GETOWN
        F_SETOWN
        FD_CLOEXEC
        F_RDLCK
        F_UNLCK
        F_WRLCK
        O_CLOEXEC
        O_CREAT
        O_DIRECTORY
        O_EXCL
        O_NOCTTY
        O_NOFOLLOW
        O_TRUNC
        O_TTY_INIT
        O_APPEND
        O_DSYNC
        O_NONBLOCK
        O_RSYNC
        O_SYNC
        O_ACCMODE
        O_EXEC
        O_RDONLY
        O_RDWR
        O_SEARCH
        O_WRONLY
        AT_FDCWD
        AT_EACCESS
        AT_SYMLINK_NOFOLLOW
        AT_SYMLINK_FOLLOW
        AT_REMOVEDIR
        POSIX_FADV_DONTNEED
        POSIX_FADV_NOREUSE
        POSIX_FADV_NORMAL
        POSIX_FADV_RANDOM
        POSIX_FADV_SEQUENTIAL
        POSIX_FADV_WILLNEED


cdef extern from "<fcntl.h>":
    ctypedef __mode_t mode_t
    ctypedef __off_t off_t
    ctypedef __pid_t pid_t
    int fcntl(int, int, ...)
    int open(const char*, int)
    int openat(int, const char*, int)
    int creat(const char*, mode_t)
    int lockf(int, int, off_t)
    int posix_fadvise(int, off_t, off_t, int)
    int posix_fallocate(int, off_t, off_t)


