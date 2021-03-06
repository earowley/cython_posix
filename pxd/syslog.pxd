

cdef extern from *:
    enum:
        LOG_PID
        LOG_CONS
        LOG_NDELAY
        LOG_ODELAY
        LOG_NOWAIT
        LOG_KERN
        LOG_USER
        LOG_MAIL
        LOG_NEWS
        LOG_UUCP
        LOG_DAEMON
        LOG_AUTH
        LOG_CRON
        LOG_LPR
        LOG_LOCAL0
        LOG_LOCAL1
        LOG_LOCAL2
        LOG_LOCAL3
        LOG_LOCAL4
        LOG_LOCAL5
        LOG_LOCAL6
        LOG_LOCAL7
        LOG_EMERG
        LOG_ALERT
        LOG_CRIT
        LOG_ERR
        LOG_WARNING
        LOG_NOTICE
        LOG_INFO
        LOG_DEBUG
    int LOG_MASK(int)

cdef extern from "<syslog.h>":
    void closelog()
    void openlog(const char*, int, int)
    int setlogmask(int)
    void syslog(int, const char*)


