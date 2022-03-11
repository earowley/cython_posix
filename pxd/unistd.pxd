
cdef extern from *:
    ctypedef long __intptr_t
    ctypedef unsigned int __useconds_t
    ctypedef unsigned int __gid_t
    ctypedef long __ssize_t
    ctypedef unsigned int __socklen_t
    ctypedef int __pid_t
    ctypedef long __off_t
    ctypedef unsigned int __uid_t
    enum:
        F_OK
        R_OK
        W_OK
        X_OK
        SEEK_CUR
        SEEK_END
        SEEK_SET
        F_LOCK
        F_TEST
        F_TLOCK
        F_ULOCK
        STDERR_FILENO
        STDIN_FILENO
        STDOUT_FILENO
        _POSIX_VERSION
        _POSIX2_VERSION
        _XOPEN_VERSION
    char* optarg
    int optind
    int opterr
    int optopt

cdef extern from "<unistd.h>":
    ctypedef __ssize_t ssize_t
    ctypedef __gid_t gid_t
    ctypedef __uid_t uid_t
    ctypedef __off_t off_t
    ctypedef __useconds_t useconds_t
    ctypedef __pid_t pid_t
    ctypedef __intptr_t intptr_t
    ctypedef __socklen_t socklen_t
    int access(const char*, int)
    int faccessat(int, const char*, int, int)
    __off_t lseek(int, __off_t, int)
    int close(int)
    void closefrom(int)
    ssize_t read(int, void*, size_t)
    ssize_t write(int, const void*, size_t)
    ssize_t pread(int, void*, size_t, __off_t)
    ssize_t pwrite(int, const void*, size_t, __off_t)
    int pipe(int[2])
    unsigned int alarm(unsigned int)
    unsigned int sleep(unsigned int)
    __useconds_t ualarm(__useconds_t, __useconds_t)
    int usleep(__useconds_t)
    int pause()
    int chown(const char*, __uid_t, __gid_t)
    int fchown(int, __uid_t, __gid_t)
    int lchown(const char*, __uid_t, __gid_t)
    int fchownat(int, const char*, __uid_t, __gid_t, int)
    int chdir(const char*)
    int fchdir(int)
    char* getcwd(char*, size_t)
    char* getwd(char*)
    int dup(int)
    int dup2(int, int)
    char** __environ
    int execve(const char*, char*[], char*[])
    int fexecve(int, char*[], char*[])
    int execv(const char*, char*[])
    int execle(const char*, const char*)
    int execl(const char*, const char*)
    int execvp(const char*, char*[])
    int execlp(const char*, const char*)
    int nice(int)
    void _exit(int)
    long pathconf(const char*, int)
    long fpathconf(int, int)
    long sysconf(int)
    size_t confstr(int, char*, size_t)
    __pid_t getpid()
    __pid_t getppid()
    __pid_t getpgrp()
    __pid_t __getpgid(__pid_t)
    __pid_t getpgid(__pid_t)
    int setpgid(__pid_t, __pid_t)
    int setpgrp()
    __pid_t setsid()
    __pid_t getsid(__pid_t)
    __uid_t getuid()
    __uid_t geteuid()
    __gid_t getgid()
    __gid_t getegid()
    int getgroups(int, __gid_t[])
    int setuid(__uid_t)
    int setreuid(__uid_t, __uid_t)
    int seteuid(__uid_t)
    int setgid(__gid_t)
    int setregid(__gid_t, __gid_t)
    int setegid(__gid_t)
    __pid_t fork()
    int vfork()
    char* ttyname(int)
    int ttyname_r(int, char*, size_t)
    int isatty(int)
    int ttyslot()
    int link(const char*, const char*)
    int linkat(int, const char*, int, const char*, int)
    int symlink(const char*, const char*)
    ssize_t readlink(const char*, char*, size_t)
    int symlinkat(const char*, int, const char*)
    ssize_t readlinkat(int, const char*, char*, size_t)
    int unlink(const char*)
    int unlinkat(int, const char*, int)
    int rmdir(const char*)
    __pid_t tcgetpgrp(int)
    int tcsetpgrp(int, __pid_t)
    char* getlogin()
    int getlogin_r(char*, size_t)
    int setlogin(const char*)
    int gethostname(char*, size_t)
    int sethostname(const char*, size_t)
    int sethostid(long)
    int getdomainname(char*, size_t)
    int setdomainname(const char*, size_t)
    int vhangup()
    int revoke(const char*)
    int profil(unsigned short*, size_t, size_t, unsigned int)
    int acct(const char*)
    char* getusershell()
    void endusershell()
    void setusershell()
    int daemon(int, int)
    int chroot(const char*)
    char* getpass(const char*)
    int fsync(int)
    long gethostid()
    void sync()
    int getpagesize()
    int getdtablesize()
    int truncate(const char*, __off_t)
    int ftruncate(int, __off_t)
    int brk(void*)
    void* sbrk(intptr_t)
    long syscall(long, ...)
    int lockf(int, int, __off_t)
    int fdatasync(int)
    char* crypt(const char*, const char*)
    int getentropy(void*, size_t)


