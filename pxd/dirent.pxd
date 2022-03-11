
cdef extern from *:
    ctypedef long __off_t
    ctypedef long __ssize_t
    ctypedef unsigned long __ino_t
    struct dirent:
        __ino_t d_ino
        __off_t d_off
        unsigned short d_reclen
        unsigned char d_type
        char d_name[256]

cdef extern from "<dirent.h>":
    struct __dirstream:
        pass
    ctypedef __dirstream DIR
    DIR* opendir(const char*)
    DIR* fdopendir(int)
    int closedir(DIR*)
    dirent* readdir(DIR*)
    int readdir_r(DIR*, dirent*, dirent**)
    void rewinddir(DIR*)
    void seekdir(DIR*, long)
    long telldir(DIR*)
    int dirfd(DIR*)
    int scandir(const char*, dirent***, int (*)(dirent*), int (*)(dirent**, dirent**))
    int alphasort(dirent**, dirent**)
    __ssize_t getdirentries(int, char*, size_t, __off_t*)


