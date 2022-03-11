
cdef extern from *:
    ctypedef unsigned int __uid_t
    union sigval:
        int sival_int
        void* sival_ptr
    ctypedef int __pid_t
    ctypedef unsigned int __uint32_t
    ctypedef long __clock_t
    ctypedef unsigned int __id_t
    ctypedef sigval __sigval_t
    ctypedef struct siginfo_t:
        pass
    cdef struct rusage:
        pass
    enum:
        WNOHANG
        WUNTRACED
        WEXITED
        WSTOPPED
        WCONTINUED
        WNOWAIT
    int WEXITSTATUS()
    bint WIFCONTINUED()
    bint WIFEXITED()
    bint WIFSIGNALED()
    bint WIFSTOPPED()
    int WSTOPSIG()
    int WTERMSIG()

cdef extern from "<sys/wait.h>":
    ctypedef __pid_t pid_t
    enum pxdgen_anon_toplevel_0:
        P_ALL = 0
        P_PID = 1
        P_PGID = 2
    ctypedef pxdgen_anon_toplevel_0 idtype_t
    __pid_t wait(int*)
    __pid_t waitpid(__pid_t, int*, int)
    ctypedef __id_t id_t
    int waitid(idtype_t, __id_t, siginfo_t*, int)
    __pid_t wait3(int*, int, rusage*)
    __pid_t wait4(__pid_t, int*, int, rusage*)


