

cdef extern from *:
    ctypedef unsigned int __uid_t
    ctypedef unsigned int __gid_t
    ctypedef struct FILE:
        pass

cdef extern from "<pwd.h>":
    ctypedef __gid_t gid_t
    ctypedef __uid_t uid_t
    struct passwd:
        char* pw_name
        char* pw_passwd
        __uid_t pw_uid
        __gid_t pw_gid
        char* pw_gecos
        char* pw_dir
        char* pw_shell
    void setpwent()
    void endpwent()
    passwd* getpwent()
    passwd* fgetpwent(FILE*)
    int putpwent(passwd*, FILE*)
    passwd* getpwuid(__uid_t)
    passwd* getpwnam(const char*)
    int getpwent_r(passwd*, char*, size_t, passwd**)
    int getpwuid_r(__uid_t, passwd*, char*, size_t, passwd**)
    int getpwnam_r(const char*, passwd*, char*, size_t, passwd**)
    int fgetpwent_r(FILE*, passwd*, char*, size_t, passwd**)


