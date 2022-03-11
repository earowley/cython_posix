
cdef extern from *:
    struct __locale_data:
        pass
    struct __locale_struct:
        __locale_data* __locales[13]
        const unsigned short* __ctype_b
        const int* __ctype_tolower
        const int* __ctype_toupper
        const char* __names[13]
    ctypedef __locale_struct* __locale_t
    ctypedef __locale_t locale_t

cdef extern from "<strings.h>":
    int bcmp(const void*, const void*, size_t)
    void bcopy(const void*, void*, size_t)
    void bzero(void*, size_t)
    char* index(const char*, int)
    char* rindex(const char*, int)
    int ffs(int)
    int ffsl(long)
    int ffsll(long long)
    int strcasecmp(const char*, const char*)
    int strncasecmp(const char*, const char*, size_t)
    int strcasecmp_l(const char*, const char*, locale_t)
    int strncasecmp_l(const char*, const char*, size_t, locale_t)


