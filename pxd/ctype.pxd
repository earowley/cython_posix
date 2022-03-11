
cdef extern from *:
    ctypedef int __int32_t
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

cdef extern from "<ctype.h>":
    const unsigned short** __ctype_b_loc()
    __int32_t** __ctype_tolower_loc()
    __int32_t** __ctype_toupper_loc()
    int isalnum(int)
    int isalpha(int)
    int iscntrl(int)
    int isdigit(int)
    int islower(int)
    int isgraph(int)
    int isprint(int)
    int ispunct(int)
    int isspace(int)
    int isupper(int)
    int isxdigit(int)
    int tolower(int)
    int toupper(int)
    int isblank(int)
    int isascii(int)
    int toascii(int)
    int _toupper(int)
    int _tolower(int)
    int isalnum_l(int, locale_t)
    int isalpha_l(int, locale_t)
    int iscntrl_l(int, locale_t)
    int isdigit_l(int, locale_t)
    int islower_l(int, locale_t)
    int isgraph_l(int, locale_t)
    int isprint_l(int, locale_t)
    int ispunct_l(int, locale_t)
    int isspace_l(int, locale_t)
    int isupper_l(int, locale_t)
    int isxdigit_l(int, locale_t)
    int isblank_l(int, locale_t)
    int __tolower_l(int, locale_t)
    int tolower_l(int, locale_t)
    int __toupper_l(int, locale_t)
    int toupper_l(int, locale_t)


