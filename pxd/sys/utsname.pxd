

cdef extern from "<sys/utsname.h>":
    struct utsname:
        char sysname[65]
        char nodename[65]
        char release[65]
        char version[65]
        char machine[65]
        char __domainname[65]
    int uname(utsname*)


