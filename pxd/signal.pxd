
cdef extern from *:
    ctypedef int __pid_t
    ctypedef void (*__sighandler_t)(int)
    union sigval:
        int sival_int
        void* sival_ptr
    struct _fpxreg:
        unsigned short significand[4]
        unsigned short exponent
        unsigned short __glibc_reserved1[3]
    ctypedef unsigned short __uint16_t
    ctypedef long __time_t
    ctypedef unsigned int __uint32_t
    ctypedef unsigned int __uid_t
    ctypedef __pid_t pid_t
    ctypedef __uid_t uid_t
    ctypedef long __clock_t
    ctypedef unsigned long __uint64_t
    ctypedef long __syscall_slong_t
    ctypedef struct __sigset_t:
        pass
    ctypedef struct stack_t:
        void *ss_sp
        size_t ss_size
        int ss_flags
    ctypedef __sigset_t sigset_t
    struct _xmmreg:
        __uint32_t element[4]
    ctypedef sigval __sigval_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    struct _fpstate:
        __uint16_t cwd
        __uint16_t swd
        __uint16_t ftw
        __uint16_t fop
        __uint64_t rip
        __uint64_t rdp
        __uint32_t mxcsr
        __uint32_t mxcr_mask
        _fpxreg _st[8]
        _xmmreg _xmm[16]
        __uint32_t __glibc_reserved1[24]
    union pxdgen_anon_sigcontext_0:
        _fpstate* fpstate
        __uint64_t __fpstate_word
    struct sigcontext:
        __uint64_t r8
        __uint64_t r9
        __uint64_t r10
        __uint64_t r11
        __uint64_t r12
        __uint64_t r13
        __uint64_t r14
        __uint64_t r15
        __uint64_t rdi
        __uint64_t rsi
        __uint64_t rbp
        __uint64_t rbx
        __uint64_t rdx
        __uint64_t rax
        __uint64_t rcx
        __uint64_t rsp
        __uint64_t rip
        __uint64_t eflags
        unsigned short cs
        unsigned short gs
        unsigned short fs
        unsigned short __pad0
        __uint64_t err
        __uint64_t trapno
        __uint64_t oldmask
        __uint64_t cr2
        __uint64_t __reserved1[8]
    ctypedef struct siginfo_t:
        int si_signo
        int si_code
        int si_errno
        pid_t si_pid
        uid_t si_uid
        void* si_addr
        int si_status
        long si_band
        sigval si_value
    union pxdgen_anon_sigaction_0:
        __sighandler_t sa_handler
        void (*sa_sigaction)(int,siginfo_t*,void*)
    cdef union pthread_attr_t:
        pass
    enum:
        SIG_DFL
        SIG_ERR
        SIG_HOLD
        SIG_IGN
        SIGRTMIN
        SIGRTMAX
        SIGABRT
        SIGALRM
        SIGBUS
        SIGCHLD
        SIGCONT
        SIGFPE
        SIGHUP
        SIGILL
        SIGINT
        SIGKILL
        SIGPIPE
        SIGQUIT
        SIGSEGV
        SIGSTOP
        SIGTERM
        SIGTSTP
        SIGTTIN
        SIGTTOU
        SIGUSR1
        SIGUSR2
        SIGPOLL
        SIGPROF
        SIGSYS
        SIGTRAP
        SIGURG
        SIGVTALRM
        SIGXCPU
        SIGXFSZ
        SIG_BLOCK
        SIG_UNBLOCK
        SIG_SETMASK
        SA_NOCLDSTOP
        SA_ONSTACK
        SA_RESETHAND
        SA_RESTART
        SA_SIGINFO
        SA_NOCLDWAIT
        SA_NODEFER
        SS_ONSTACK
        SS_DISABLE
        MINSIGSTKSZ
        SIGSTKSZ
        ILL_ILLOPC
        ILL_ILLOPN
        ILL_ILLADR
        ILL_ILLTRP
        ILL_PRVOPC
        ILL_PRVREG
        ILL_COPROC
        ILL_BADSTK
        FPE_INTDIV
        FPE_INTOVF
        FPE_FLTDIV
        FPE_FLTOVF
        FPE_FLTUND
        FPE_FLTRES
        FPE_FLTINV
        FPE_FLTSUB
        SEGV_MAPERR
        SEGV_ACCERR
        BUS_ADRALN
        BUS_ADRERR
        BUS_OBJERR
        TRAP_BRKPT
        TRAP_TRACE
        CLD_EXITED
        CLD_KILLED
        CLD_DUMPED
        CLD_TRAPPED
        CLD_STOPPED
        CLD_CONTINUED
        POLL_IN
        POLL_OUT
        POLL_MSG
        POLL_ERR
        POLL_PRI
        POLL_HUP
        SI_USER
        SI_QUEUE
        SI_TIMER
        SI_ASYNCIO
        SI_MESGQ


ctypedef struct struct_sigaction:
    __sigset_t sa_mask
    int sa_flags
    void (*sa_restorer)()


ctypedef struct struct_sigstack:
    void* ss_sp
    int ss_onstack


cdef extern from "<signal.h>":
    cdef struct sigevent:
        int sigev_notify
        int sigev_signo
        int sigev_value
        void (*sigev_notify_function)(sigval)
        pthread_attr_t* sigev_notify_attributes
    __sighandler_t __sysv_signal(int, __sighandler_t)
    __sighandler_t signal(int, __sighandler_t)
    __sighandler_t sigset(int, __sighandler_t)
    int sigpause(int)
    int kill(__pid_t, int)
    int killpg(__pid_t, int)
    int raise_"raise"(int)
    __sighandler_t ssignal(int, __sighandler_t)
    int sighold(int)
    int sigignore(int)
    int siginterrupt(int, int)
    int gsignal(int)
    void psignal(int, const char*)
    void psiginfo(siginfo_t*, const char*)
    int sigblock(int)
    int sigsetmask(int)
    int siggetmask()
    ctypedef __sighandler_t sig_t
    int sigemptyset(sigset_t*)
    int sigfillset(sigset_t*)
    int sigaddset(sigset_t*, int)
    int sigdelset(sigset_t*, int)
    int sigismember(sigset_t*, int)
    int sigprocmask(int, sigset_t*, sigset_t*)
    int sigsuspend(sigset_t*)
    int sigaction(int, struct_sigaction*, struct_sigaction*)
    int sigpending(sigset_t*)
    int sigwait(sigset_t*, int*)
    int sigwaitinfo(sigset_t*, siginfo_t*)
    int sigtimedwait(sigset_t*, siginfo_t*, timespec*)
    int sigqueue(__pid_t, int, sigval)
    int sigrelse(int)
    int sigreturn(sigcontext*)
    int siginterrupt(int, int)
    int sigaltstack(stack_t*, stack_t*)
    int sigstack(struct_sigstack*, struct_sigstack*)
    int __libc_current_sigrtmin()
    int __libc_current_sigrtmax()


