
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

cdef extern from "<string.h>":
    void* memcpy(void*, const void*, size_t)
    void* memmove(void*, const void*, size_t)
    void* memccpy(void*, const void*, int, size_t)
    void* memset(void*, int, size_t)
    int memcmp(const void*, const void*, size_t)
    int __memcmpeq(const void*, const void*, size_t)
    void* memchr(const void*, int, size_t)
    char* strcpy(char*, const char*)
    char* strncpy(char*, const char*, size_t)
    char* strcat(char*, const char*)
    char* strncat(char*, const char*, size_t)
    int strcmp(const char*, const char*)
    int strncmp(const char*, const char*, size_t)
    int strcoll(const char*, const char*)
    unsigned long strxfrm(char*, const char*, size_t)
    int strcoll_l(const char*, const char*, locale_t)
    size_t strxfrm_l(char*, const char*, size_t, locale_t)
    char* strdup(const char*)
    char* strndup(const char*, size_t)
    char* strchr(const char*, int)
    char* strrchr(const char*, int)
    unsigned long strcspn(const char*, const char*)
    unsigned long strspn(const char*, const char*)
    char* strpbrk(const char*, const char*)
    char* strstr(const char*, const char*)
    char* strtok(char*, const char*)
    char* __strtok_r(char*, const char*, char**)
    char* strtok_r(char*, const char*, char**)
    unsigned long strlen(const char*)
    size_t strnlen(const char*, size_t)
    char* strerror(int)
    int strerror_r(int, char*, size_t)
    char* strerror_l(int, locale_t)
    void explicit_bzero(void*, size_t)
    char* strsep(char**, const char*)
    char* strsignal(int)
    char* __stpcpy(char*, const char*)
    char* stpcpy(char*, const char*)
    char* __stpncpy(char*, const char*, size_t)
    char* stpncpy(char*, const char*, size_t)


