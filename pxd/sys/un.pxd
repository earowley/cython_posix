
cdef extern from *:
    ctypedef unsigned short sa_family_t

cdef extern from "<sys/un.h>":
    struct sockaddr_un:
        sa_family_t sun_family
        char sun_path[108]


