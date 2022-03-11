from libc.stdint cimport int32_t as int32_t

cdef extern from *:
    ctypedef int __int32_t
    ctypedef int wchar_t
    enum:
        EXIT_FAILURE
        EXIT_SUCCESS
        RAND_MAX
        MB_CUR_MAX
        WEXITSTATUS
        WIFEXITED
        WIFSIGNALED
        WIFSTOPPED
        WNOHANG
        WSTOPSIG
        WTERMSIG
        WUNTRACED


cdef extern from "<stdlib.h>":
    struct pxdgen_anon_toplevel_0:
        int quot
        int rem
    ctypedef pxdgen_anon_toplevel_0 div_t
    struct pxdgen_anon_toplevel_1:
        long quot
        long rem
    ctypedef pxdgen_anon_toplevel_1 ldiv_t
    struct pxdgen_anon_toplevel_2:
        long long quot
        long long rem
    ctypedef pxdgen_anon_toplevel_2 lldiv_t
    size_t __ctype_get_mb_cur_max()
    double atof(const char*)
    int atoi(const char*)
    long atol(const char*)
    long long atoll(const char*)
    double strtod(const char*, char**)
    float strtof(const char*, char**)
    long double strtold(const char*, char**)
    long strtol(const char*, char**, int)
    unsigned long strtoul(const char*, char**, int)
    long long strtoq(const char*, char**, int)
    unsigned long long strtouq(const char*, char**, int)
    long long strtoll(const char*, char**, int)
    unsigned long long strtoull(const char*, char**, int)
    char* l64a(long)
    long a64l(const char*)
    long random()
    void srandom(unsigned int)
    char* initstate(unsigned int, char*, size_t)
    char* setstate(char*)
    struct random_data:
        int32_t* fptr
        int32_t* rptr
        int32_t* state
        int rand_type
        int rand_deg
        int rand_sep
        int32_t* end_ptr
    int random_r(random_data*, int32_t*)
    int srandom_r(unsigned int, random_data*)
    int initstate_r(unsigned int, char*, size_t, random_data*)
    int setstate_r(char*, random_data*)
    int rand()
    void srand(unsigned int)
    int rand_r(unsigned int*)
    double drand48()
    double erand48(unsigned short[3])
    long lrand48()
    long nrand48(unsigned short[3])
    long mrand48()
    long jrand48(unsigned short[3])
    void srand48(long)
    unsigned short* seed48(unsigned short[3])
    void lcong48(unsigned short[7])
    struct drand48_data:
        unsigned short __x[3]
        unsigned short __old_x[3]
        unsigned short __c
        unsigned short __init
        unsigned long long __a
    int drand48_r(drand48_data*, double*)
    int erand48_r(unsigned short[3], drand48_data*, double*)
    int lrand48_r(drand48_data*, long*)
    int nrand48_r(unsigned short[3], drand48_data*, long*)
    int mrand48_r(drand48_data*, long*)
    int jrand48_r(unsigned short[3], drand48_data*, long*)
    int srand48_r(long, drand48_data*)
    int seed48_r(unsigned short[3], drand48_data*)
    int lcong48_r(unsigned short[7], drand48_data*)
    void* malloc(size_t)
    void* calloc(size_t, size_t)
    void* realloc(void*, size_t)
    void free(void*)
    void* reallocarray(void*, size_t, size_t)
    void* reallocarray(void*, size_t, size_t)
    void* valloc(size_t)
    int posix_memalign(void**, size_t, size_t)
    void* aligned_alloc(size_t, size_t)
    void abort()
    int atexit(void (*)())
    int at_quick_exit(void (*)())
    int on_exit(void (*)(int,void*), void*)
    void exit(int)
    void quick_exit(int)
    void _Exit(int)
    char* getenv(const char*)
    int putenv(char*)
    int setenv(const char*, const char*, int)
    int unsetenv(const char*)
    int clearenv()
    char* mktemp(char*)
    int mkstemp(char*)
    int mkstemps(char*, int)
    char* mkdtemp(char*)
    int system(const char*)
    char* realpath(const char*, char*)
    ctypedef int (*__compar_fn_t)(const void*, const void*)
    void* bsearch(const void*, const void*, size_t, size_t, __compar_fn_t)
    void qsort(void*, size_t, size_t, __compar_fn_t)
    int abs(int)
    long labs(long)
    long long llabs(long long)
    div_t div(int, int)
    ldiv_t ldiv(long, long)
    lldiv_t lldiv(long long, long long)
    char* ecvt(double, int, int*, int*)
    char* fcvt(double, int, int*, int*)
    char* gcvt(double, int, char*)
    char* qecvt(long double, int, int*, int*)
    char* qfcvt(long double, int, int*, int*)
    char* qgcvt(long double, int, char*)
    int ecvt_r(double, int, int*, int*, char*, size_t)
    int fcvt_r(double, int, int*, int*, char*, size_t)
    int qecvt_r(long double, int, int*, int*, char*, size_t)
    int qfcvt_r(long double, int, int*, int*, char*, size_t)
    int mblen(const char*, size_t)
    int mbtowc(wchar_t*, const char*, size_t)
    int wctomb(char*, wchar_t)
    size_t mbstowcs(wchar_t*, const char*, size_t)
    size_t wcstombs(char*, wchar_t*, size_t)
    int rpmatch(const char*)
    int getsubopt(char**, char**, char**)
    int getloadavg(double[], int)


