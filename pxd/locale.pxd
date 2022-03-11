
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
    enum:
        LC_ALL
        LC_COLLATE
        LC_CTYPE
        LC_MESSAGES
        LC_MONETARY
        LC_NUMERIC
        LC_TIME
        LC_COLLATE_MASK
        LC_CTYPE_MASK
        LC_MESSAGES_MASK
        LC_MONETARY_MASK
        LC_NUMERIC_MASK
        LC_TIME_MASK
        LC_ALL_MASK
        LC_GLOBAL_LOCALE

cdef extern from "<locale.h>":
    struct lconv:
        char* decimal_point
        char* thousands_sep
        char* grouping
        char* int_curr_symbol
        char* currency_symbol
        char* mon_decimal_point
        char* mon_thousands_sep
        char* mon_grouping
        char* positive_sign
        char* negative_sign
        char int_frac_digits
        char frac_digits
        char p_cs_precedes
        char p_sep_by_space
        char n_cs_precedes
        char n_sep_by_space
        char p_sign_posn
        char n_sign_posn
        char int_p_cs_precedes
        char int_p_sep_by_space
        char int_n_cs_precedes
        char int_n_sep_by_space
        char int_p_sign_posn
        char int_n_sign_posn
    char* setlocale(int, const char*)
    lconv* localeconv()
    locale_t newlocale(int, const char*, locale_t)
    locale_t duplocale(locale_t)
    void freelocale(locale_t)
    locale_t uselocale(locale_t)


