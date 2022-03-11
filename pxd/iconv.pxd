

cdef extern from "<iconv.h>":
    ctypedef void* iconv_t
    iconv_t iconv_open(const char*, const char*)
    size_t iconv(iconv_t, char**, size_t*, char**, size_t*)
    int iconv_close(iconv_t)


