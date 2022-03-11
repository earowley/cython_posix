
cdef extern from *:
    ctypedef int __int32_t
    ctypedef unsigned long wctype_t
    struct __locale_data:
        pass
    struct __locale_struct:
        __locale_data* __locales[13]
        const unsigned short* __ctype_b
        const int* __ctype_tolower
        const int* __ctype_toupper
        const char* __names[13]
    ctypedef unsigned int wint_t
    ctypedef __locale_struct* __locale_t
    ctypedef __locale_t locale_t

cdef extern from "<wctype.h>":
    ctypedef __int32_t* wctrans_t
    wctrans_t wctrans(const char*)
    wint_t towctrans(wint_t, wctrans_t)
    int iswalnum_l(wint_t, locale_t)
    int iswalpha_l(wint_t, locale_t)
    int iswcntrl_l(wint_t, locale_t)
    int iswdigit_l(wint_t, locale_t)
    int iswgraph_l(wint_t, locale_t)
    int iswlower_l(wint_t, locale_t)
    int iswprint_l(wint_t, locale_t)
    int iswpunct_l(wint_t, locale_t)
    int iswspace_l(wint_t, locale_t)
    int iswupper_l(wint_t, locale_t)
    int iswxdigit_l(wint_t, locale_t)
    int iswblank_l(wint_t, locale_t)
    wctype_t wctype_l(const char*, locale_t)
    int iswctype_l(wint_t, wctype_t, locale_t)
    wint_t towlower_l(wint_t, locale_t)
    wint_t towupper_l(wint_t, locale_t)
    wctrans_t wctrans_l(const char*, locale_t)
    wint_t towctrans_l(wint_t, wctrans_t, locale_t)


