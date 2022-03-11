

cdef extern from *:
    ctypedef long __time_t
    ctypedef long __clock_t
    ctypedef __clock_t clock_t
    ctypedef __time_t time_t
    struct sigevent:
        pass
    struct tm:
        int tm_sec
        int tm_min
        int tm_hour
        int tm_mday
        int tm_mon
        int tm_year
        int tm_wday
        int tm_yday
        int tm_isdst
        long tm_gmtoff
        const char* tm_zone
    ctypedef long __syscall_slong_t
    ctypedef int __clockid_t
    ctypedef int __pid_t
    ctypedef void* __timer_t
    struct __locale_data:
        pass
    struct __locale_struct:
        __locale_data* __locales[13]
        const unsigned short* __ctype_b
        const int* __ctype_tolower
        const int* __ctype_toupper
        const char* __names[13]
    ctypedef __timer_t timer_t
    ctypedef __clockid_t clockid_t
    ctypedef __locale_struct* __locale_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    ctypedef __locale_t locale_t
    struct itimerspec:
        timespec it_interval
        timespec it_value
    enum:
        CLOCKS_PER_SEC
        CLOCK_MONOTONIC
        CLOCK_PROCESS_CPUTIME_ID
        CLOCK_REALTIME
        CLOCK_THREAD_CPUTIME_ID
        TIMER_ABSTIME
        getdate_err

cdef extern from "<time.h>":
    ctypedef __pid_t pid_t
    clock_t clock()
    time_t time(time_t*)
    double difftime(time_t, time_t)
    time_t mktime(tm*)
    size_t strftime(char*, size_t, const char*, tm*)
    size_t strftime_l(char*, size_t, const char*, tm*, locale_t)
    tm* gmtime(time_t*)
    tm* localtime(time_t*)
    tm* gmtime_r(time_t*, tm*)
    tm* localtime_r(time_t*, tm*)
    char* asctime(tm*)
    char* ctime(time_t*)
    char* asctime_r(tm*, char*)
    char* ctime_r(time_t*, char*)
    char* __tzname[2]
    int __daylight
    long __timezone
    char* tzname[2]
    void tzset()
    int daylight
    long timezone
    time_t timegm(tm*)
    time_t timelocal(tm*)
    int dysize(int)
    int nanosleep(timespec*, timespec*)
    int clock_getres(clockid_t, timespec*)
    int clock_gettime(clockid_t, timespec*)
    int clock_settime(clockid_t, timespec*)
    int clock_nanosleep(clockid_t, int, timespec*, timespec*)
    int clock_getcpuclockid(pid_t, clockid_t*)
    int timer_create(clockid_t, sigevent*, timer_t*)
    int timer_delete(timer_t)
    int timer_settime(timer_t, int, itimerspec*, itimerspec*)
    int timer_gettime(timer_t, itimerspec*)
    int timer_getoverrun(timer_t)
    int timespec_get(timespec*, int)


