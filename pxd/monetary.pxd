
cdef extern from *:
    struct __locale_data:
        pass
    struct __locale_struct:
        __locale_data* __locales[13]
        const unsigned short* __ctype_b
        const int* __ctype_tolower
        const int* __ctype_toupper
        const char* __names[13]
    ctypedef long __ssize_t
    ctypedef __locale_struct* __locale_t
    ctypedef __locale_t locale_t

cdef extern from "<monetary.h>":
    ctypedef __ssize_t ssize_t
    ssize_t strfmon(char*, size_t, const char*)
    ssize_t strfmon_l(char*, size_t, locale_t, const char*)


