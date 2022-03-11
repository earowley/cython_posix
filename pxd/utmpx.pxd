
cdef extern from *:
    ctypedef int __int32_t
    struct __exit_status:
        short __e_termination
        short __e_exit
    ctypedef int __pid_t
    struct pxdgen_anon_utmpx_0:
        __int32_t tv_sec
        __int32_t tv_usec
    struct utmpx:
        short ut_type
        __pid_t ut_pid
        char ut_line[32]
        char ut_id[4]
        char ut_user[32]
        char ut_host[256]
        __exit_status ut_exit
        __int32_t ut_session
        __int32_t ut_addr_v6[4]
        char __glibc_reserved[20]
    enum:
        EMPTY
        BOOT_TIME
        OLD_TIME
        NEW_TIME
        USER_PROCESS
        INIT_PROCESS
        LOGIN_PROCESS
        DEAD_PROCESS


cdef extern from "<utmpx.h>":
    ctypedef __pid_t pid_t
    void setutxent()
    void endutxent()
    utmpx* getutxent()
    utmpx* getutxid(utmpx*)
    utmpx* getutxline(utmpx*)
    utmpx* pututxline(utmpx*)


