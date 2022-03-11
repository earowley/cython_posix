
cdef extern from *:
    ctypedef int wchar_t
    struct tm:
        pass
    struct _IO_FILE:
        pass
    ctypedef _IO_FILE __FILE
    ctypedef unsigned int wint_t
    struct __va_list_tag:
        pass
    ctypedef __va_list_tag[1] __builtin_va_list
    struct __locale_data:
        pass
    struct __locale_struct:
        __locale_data* __locales[13]
        const unsigned short* __ctype_b
        const int* __ctype_tolower
        const int* __ctype_toupper
        const char* __names[13]
    ctypedef struct __mbstate_t:
        pass
    ctypedef __builtin_va_list __gnuc_va_list
    ctypedef __mbstate_t mbstate_t
    ctypedef __locale_struct* __locale_t
    ctypedef __locale_t locale_t
    enum:
        WCHAR_MAX
        WCHAR_MIN
        WEOF


cdef extern from "<wchar.h>":
    wchar_t* wcscpy(wchar_t*, wchar_t*)
    wchar_t* wcsncpy(wchar_t*, wchar_t*, size_t)
    wchar_t* wcscat(wchar_t*, wchar_t*)
    wchar_t* wcsncat(wchar_t*, wchar_t*, size_t)
    int wcscmp(wchar_t*, wchar_t*)
    int wcsncmp(wchar_t*, wchar_t*, size_t)
    int wcscasecmp(wchar_t*, wchar_t*)
    int wcsncasecmp(wchar_t*, wchar_t*, size_t)
    int wcscasecmp_l(wchar_t*, wchar_t*, locale_t)
    int wcsncasecmp_l(wchar_t*, wchar_t*, size_t, locale_t)
    int wcscoll(wchar_t*, wchar_t*)
    size_t wcsxfrm(wchar_t*, wchar_t*, size_t)
    int wcscoll_l(wchar_t*, wchar_t*, locale_t)
    size_t wcsxfrm_l(wchar_t*, wchar_t*, size_t, locale_t)
    wchar_t* wcsdup(wchar_t*)
    int* wcschr(wchar_t*, wchar_t)
    wchar_t* wcsrchr(wchar_t*, wchar_t)
    size_t wcscspn(wchar_t*, wchar_t*)
    size_t wcsspn(wchar_t*, wchar_t*)
    wchar_t* wcspbrk(wchar_t*, wchar_t*)
    wchar_t* wcsstr(wchar_t*, wchar_t*)
    wchar_t* wcstok(wchar_t*, wchar_t*, wchar_t**)
    unsigned long wcslen(wchar_t*)
    size_t wcsnlen(wchar_t*, size_t)
    int* wmemchr(wchar_t*, wchar_t, size_t)
    int wmemcmp(wchar_t*, wchar_t*, size_t)
    int* wmemcpy(wchar_t*, wchar_t*, size_t)
    int* wmemmove(wchar_t*, wchar_t*, size_t)
    wchar_t* wmemset(wchar_t*, wchar_t, size_t)
    wint_t btowc(int)
    int wctob(wint_t)
    int mbsinit(mbstate_t*)
    size_t mbrtowc(wchar_t*, const char*, size_t, mbstate_t*)
    size_t wcrtomb(char*, wchar_t, mbstate_t*)
    size_t __mbrlen(const char*, size_t, mbstate_t*)
    size_t mbrlen(const char*, size_t, mbstate_t*)
    size_t mbsrtowcs(wchar_t*, const char**, size_t, mbstate_t*)
    size_t wcsrtombs(char*, wchar_t**, size_t, mbstate_t*)
    size_t mbsnrtowcs(wchar_t*, const char**, size_t, size_t, mbstate_t*)
    size_t wcsnrtombs(char*, wchar_t**, size_t, size_t, mbstate_t*)
    double wcstod(wchar_t*, wchar_t**)
    float wcstof(wchar_t*, wchar_t**)
    long double wcstold(wchar_t*, wchar_t**)
    long wcstol(wchar_t*, wchar_t**, int)
    unsigned long wcstoul(wchar_t*, wchar_t**, int)
    long long wcstoll(wchar_t*, wchar_t**, int)
    unsigned long long wcstoull(wchar_t*, wchar_t**, int)
    wchar_t* wcpcpy(wchar_t*, wchar_t*)
    wchar_t* wcpncpy(wchar_t*, wchar_t*, size_t)
    __FILE* open_wmemstream(wchar_t**, size_t*)
    int fwide(__FILE*, int)
    int fwprintf(__FILE*, wchar_t*, ...)
    int wprintf(wchar_t*, ...)
    int swprintf(wchar_t*, size_t, wchar_t*, ...)
    int vfwprintf(__FILE*, wchar_t*, __gnuc_va_list)
    int vwprintf(wchar_t*, __gnuc_va_list)
    int vswprintf(wchar_t*, size_t, wchar_t*, __gnuc_va_list)
    int fwscanf(__FILE*, wchar_t*, ...)
    int wscanf(wchar_t*, ...)
    int swscanf(wchar_t*, wchar_t*, ...)
    int vfwscanf(__FILE*, wchar_t*, __gnuc_va_list)
    int vwscanf(wchar_t*, __gnuc_va_list)
    int vswscanf(wchar_t*, wchar_t*, __gnuc_va_list)
    int vfwscanf(__FILE*, wchar_t*, __gnuc_va_list)
    int vwscanf(wchar_t*, __gnuc_va_list)
    int vswscanf(wchar_t*, wchar_t*, __gnuc_va_list)
    wint_t fgetwc(__FILE*)
    wint_t getwc(__FILE*)
    wint_t getwchar()
    wint_t fputwc(wchar_t, __FILE*)
    wint_t putwc(wchar_t, __FILE*)
    wint_t putwchar(wchar_t)
    wchar_t* fgetws(wchar_t*, int, __FILE*)
    int fputws(wchar_t*, __FILE*)
    wint_t ungetwc(wint_t, __FILE*)
    size_t wcsftime(wchar_t*, size_t, wchar_t*, tm*)


