

cdef extern from *:
    ctypedef unsigned int __gid_t
    struct FILE:
        pass

cdef extern from "<grp.h>":
    ctypedef __gid_t gid_t
    struct group:
        char* gr_name
        char* gr_passwd
        __gid_t gr_gid
        char** gr_mem
    void setgrent()
    void endgrent()
    group* getgrent()
    group* fgetgrent(FILE*)
    group* getgrgid(__gid_t)
    group* getgrnam(const char*)
    int getgrgid_r(__gid_t, group*, char*, size_t, group**)
    int getgrnam_r(const char*, group*, char*, size_t, group**)
    int fgetgrent_r(FILE*, group*, char*, size_t, group**)
    int setgroups(size_t, __gid_t*)
    int getgrouplist(const char*, __gid_t, __gid_t*, int*)
    int initgroups(const char*, __gid_t)


