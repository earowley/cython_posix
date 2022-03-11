from libc.stdint cimport uint32_t as uint32_t

cdef extern from *:
    ctypedef unsigned short sa_family_t
    ctypedef unsigned int __uint32_t
    ctypedef unsigned int __socklen_t
    ctypedef __socklen_t socklen_t
    struct sockaddr:
        sa_family_t sa_family
        char sa_data[14]
    struct netent:
        char* n_name
        char** n_aliases
        int n_addrtype
        uint32_t n_net
    enum:
        HOST_NOT_FOUND
        NO_DATA
        NO_RECOVERY
        TRY_AGAIN


cdef extern from "<netdb.h>":
    int* __h_errno_location()
    int h_errno
    void herror(const char*)
    const char* hstrerror(int)
    struct hostent:
        char* h_name
        char** h_aliases
        int h_addrtype
        int h_length
        char** h_addr_list
    void sethostent(int)
    void endhostent()
    hostent* gethostent()
    hostent* gethostbyaddr(const void*, __socklen_t, int)
    hostent* gethostbyname(const char*)
    hostent* gethostbyname2(const char*, int)
    int gethostent_r(hostent*, char*, size_t, hostent**, int*)
    int gethostbyaddr_r(const void*, __socklen_t, int, hostent*, char*, size_t, hostent**, int*)
    int gethostbyname_r(const char*, hostent*, char*, size_t, hostent**, int*)
    int gethostbyname2_r(const char*, int, hostent*, char*, size_t, hostent**, int*)
    void setnetent(int)
    void endnetent()
    netent* getnetent()
    netent* getnetbyaddr(uint32_t, int)
    netent* getnetbyname(const char*)
    int getnetent_r(netent*, char*, size_t, netent**, int*)
    int getnetbyaddr_r(uint32_t, int, netent*, char*, size_t, netent**, int*)
    int getnetbyname_r(const char*, netent*, char*, size_t, netent**, int*)
    struct servent:
        char* s_name
        char** s_aliases
        int s_port
        char* s_proto
    void setservent(int)
    void endservent()
    servent* getservent()
    servent* getservbyname(const char*, const char*)
    servent* getservbyport(int, const char*)
    int getservent_r(servent*, char*, size_t, servent**)
    int getservbyname_r(const char*, const char*, servent*, char*, size_t, servent**)
    int getservbyport_r(int, const char*, servent*, char*, size_t, servent**)
    struct protoent:
        char* p_name
        char** p_aliases
        int p_proto
    void setprotoent(int)
    void endprotoent()
    protoent* getprotoent()
    protoent* getprotobyname(const char*)
    protoent* getprotobynumber(int)
    int getprotoent_r(protoent*, char*, size_t, protoent**)
    int getprotobyname_r(const char*, protoent*, char*, size_t, protoent**)
    int getprotobynumber_r(int, protoent*, char*, size_t, protoent**)
    int setnetgrent(const char*)
    void endnetgrent()
    int getnetgrent(char**, char**, char**)
    int innetgr(const char*, const char*, const char*, const char*)
    int getnetgrent_r(char**, char**, char**, char*, size_t)
    int rcmd(char**, unsigned short, const char*, const char*, const char*, int*)
    int rcmd_af(char**, unsigned short, const char*, const char*, const char*, int*, sa_family_t)
    int rexec(char**, int, const char*, const char*, const char*, int*)
    int rexec_af(char**, int, const char*, const char*, const char*, int*, sa_family_t)
    int ruserok(const char*, int, const char*, const char*)
    int ruserok_af(const char*, int, const char*, const char*, sa_family_t)
    int iruserok(uint32_t, int, const char*, const char*)
    int iruserok_af(const void*, int, const char*, const char*, sa_family_t)
    int rresvport(int*)
    int rresvport_af(int*, sa_family_t)
    struct addrinfo:
        int ai_flags
        int ai_family
        int ai_socktype
        int ai_protocol
        socklen_t ai_addrlen
        sockaddr* ai_addr
        char* ai_canonname
        addrinfo* ai_next
    int getaddrinfo(const char*, const char*, addrinfo*, addrinfo**)
    void freeaddrinfo(addrinfo*)
    const char* gai_strerror(int)
    int getnameinfo(sockaddr*, socklen_t, char*, socklen_t, char*, socklen_t, int)


