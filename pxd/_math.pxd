

cdef extern from "<math.h>":
    ctypedef unsigned char __u_char
    ctypedef unsigned short __u_short
    ctypedef unsigned int __u_int
    ctypedef unsigned long __u_long
    ctypedef signed char __int8_t
    ctypedef unsigned char __uint8_t
    ctypedef short __int16_t
    ctypedef unsigned short __uint16_t
    ctypedef int __int32_t
    ctypedef unsigned int __uint32_t
    ctypedef long __int64_t
    ctypedef unsigned long __uint64_t
    ctypedef __int8_t __int_least8_t
    ctypedef __uint8_t __uint_least8_t
    ctypedef __int16_t __int_least16_t
    ctypedef __uint16_t __uint_least16_t
    ctypedef __int32_t __int_least32_t
    ctypedef __uint32_t __uint_least32_t
    ctypedef __int64_t __int_least64_t
    ctypedef __uint64_t __uint_least64_t
    ctypedef long __quad_t
    ctypedef unsigned long __u_quad_t
    ctypedef long __intmax_t
    ctypedef unsigned long __uintmax_t
    ctypedef unsigned long __dev_t
    ctypedef unsigned int __uid_t
    ctypedef unsigned int __gid_t
    ctypedef unsigned long __ino_t
    ctypedef unsigned long __ino64_t
    ctypedef unsigned int __mode_t
    ctypedef unsigned long __nlink_t
    ctypedef long __off_t
    ctypedef long __off64_t
    ctypedef int __pid_t
    struct pxdgen_anon_toplevel_0:
        int __val[2]
    ctypedef pxdgen_anon_toplevel_0 __fsid_t
    ctypedef long __clock_t
    ctypedef unsigned long __rlim_t
    ctypedef unsigned long __rlim64_t
    ctypedef unsigned int __id_t
    ctypedef long __time_t
    ctypedef unsigned int __useconds_t
    ctypedef long __suseconds_t
    ctypedef long __suseconds64_t
    ctypedef int __daddr_t
    ctypedef int __key_t
    ctypedef int __clockid_t
    ctypedef void* __timer_t
    ctypedef long __blksize_t
    ctypedef long __blkcnt_t
    ctypedef long __blkcnt64_t
    ctypedef unsigned long __fsblkcnt_t
    ctypedef unsigned long __fsblkcnt64_t
    ctypedef unsigned long __fsfilcnt_t
    ctypedef unsigned long __fsfilcnt64_t
    ctypedef long __fsword_t
    ctypedef long __ssize_t
    ctypedef long __syscall_slong_t
    ctypedef unsigned long __syscall_ulong_t
    ctypedef __off64_t __loff_t
    ctypedef char* __caddr_t
    ctypedef long __intptr_t
    ctypedef unsigned int __socklen_t
    ctypedef int __sig_atomic_t
    ctypedef float _Float32
    ctypedef double _Float64
    ctypedef double _Float32x
    ctypedef long double _Float64x
    ctypedef float float_t
    ctypedef double double_t
    int __fpclassify(double)
    int __signbit(double)
    int __isinf(double)
    int __finite(double)
    int __isnan(double)
    int __iseqsig(double, double)
    int __issignaling(double)
    double acos(double)
    double __acos(double)
    double asin(double)
    double __asin(double)
    double atan(double)
    double __atan(double)
    double atan2(double, double)
    double __atan2(double, double)
    double cos(double)
    double __cos(double)
    double sin(double)
    double __sin(double)
    double tan(double)
    double __tan(double)
    double cosh(double)
    double __cosh(double)
    double sinh(double)
    double __sinh(double)
    double tanh(double)
    double __tanh(double)
    double acosh(double)
    double __acosh(double)
    double asinh(double)
    double __asinh(double)
    double atanh(double)
    double __atanh(double)
    double exp(double)
    double __exp(double)
    double frexp(double, int*)
    double __frexp(double, int*)
    double ldexp(double, int)
    double __ldexp(double, int)
    double log(double)
    double __log(double)
    double log10(double)
    double __log10(double)
    double modf(double, double*)
    double __modf(double, double*)
    double expm1(double)
    double __expm1(double)
    double log1p(double)
    double __log1p(double)
    double logb(double)
    double __logb(double)
    double exp2(double)
    double __exp2(double)
    double log2(double)
    double __log2(double)
    double pow(double, double)
    double __pow(double, double)
    double sqrt(double)
    double __sqrt(double)
    double hypot(double, double)
    double __hypot(double, double)
    double cbrt(double)
    double __cbrt(double)
    double ceil(double)
    double __ceil(double)
    double fabs(double)
    double __fabs(double)
    double floor(double)
    double __floor(double)
    double fmod(double, double)
    double __fmod(double, double)
    int isinf(double)
    int finite(double)
    double drem(double, double)
    double __drem(double, double)
    double significand(double)
    double __significand(double)
    double copysign(double, double)
    double __copysign(double, double)
    double nan(const char*)
    double __nan(const char*)
    int isnan(double)
    double j0(double)
    double __j0(double)
    double j1(double)
    double __j1(double)
    double jn(int, double)
    double __jn(int, double)
    double y0(double)
    double __y0(double)
    double y1(double)
    double __y1(double)
    double yn(int, double)
    double __yn(int, double)
    double erf(double)
    double __erf(double)
    double erfc(double)
    double __erfc(double)
    double lgamma(double)
    double __lgamma(double)
    double tgamma(double)
    double __tgamma(double)
    double gamma(double)
    double __gamma(double)
    double lgamma_r(double, int*)
    double __lgamma_r(double, int*)
    double rint(double)
    double __rint(double)
    double nextafter(double, double)
    double __nextafter(double, double)
    double nexttoward(double, long double)
    double __nexttoward(double, long double)
    double remainder(double, double)
    double __remainder(double, double)
    double scalbn(double, int)
    double __scalbn(double, int)
    int ilogb(double)
    int __ilogb(double)
    double scalbln(double, long)
    double __scalbln(double, long)
    double nearbyint(double)
    double __nearbyint(double)
    double round(double)
    double __round(double)
    double trunc(double)
    double __trunc(double)
    double remquo(double, double, int*)
    double __remquo(double, double, int*)
    long lrint(double)
    long __lrint(double)
    long long llrint(double)
    long long __llrint(double)
    long lround(double)
    long __lround(double)
    long long llround(double)
    long long __llround(double)
    double fdim(double, double)
    double __fdim(double, double)
    double fmax(double, double)
    double __fmax(double, double)
    double fmin(double, double)
    double __fmin(double, double)
    double fma(double, double, double)
    double __fma(double, double, double)
    double scalb(double, double)
    double __scalb(double, double)
    int __fpclassifyf(float)
    int __signbitf(float)
    int __isinff(float)
    int __finitef(float)
    int __isnanf(float)
    int __iseqsigf(float, float)
    int __issignalingf(float)
    float acosf(float)
    float __acosf(float)
    float asinf(float)
    float __asinf(float)
    float atanf(float)
    float __atanf(float)
    float atan2f(float, float)
    float __atan2f(float, float)
    float cosf(float)
    float __cosf(float)
    float sinf(float)
    float __sinf(float)
    float tanf(float)
    float __tanf(float)
    float coshf(float)
    float __coshf(float)
    float sinhf(float)
    float __sinhf(float)
    float tanhf(float)
    float __tanhf(float)
    float acoshf(float)
    float __acoshf(float)
    float asinhf(float)
    float __asinhf(float)
    float atanhf(float)
    float __atanhf(float)
    float expf(float)
    float __expf(float)
    float frexpf(float, int*)
    float __frexpf(float, int*)
    float ldexpf(float, int)
    float __ldexpf(float, int)
    float logf(float)
    float __logf(float)
    float log10f(float)
    float __log10f(float)
    float modff(float, float*)
    float __modff(float, float*)
    float expm1f(float)
    float __expm1f(float)
    float log1pf(float)
    float __log1pf(float)
    float logbf(float)
    float __logbf(float)
    float exp2f(float)
    float __exp2f(float)
    float log2f(float)
    float __log2f(float)
    float powf(float, float)
    float __powf(float, float)
    float sqrtf(float)
    float __sqrtf(float)
    float hypotf(float, float)
    float __hypotf(float, float)
    float cbrtf(float)
    float __cbrtf(float)
    float ceilf(float)
    float __ceilf(float)
    float fabsf(float)
    float __fabsf(float)
    float floorf(float)
    float __floorf(float)
    float fmodf(float, float)
    float __fmodf(float, float)
    int isinff(float)
    int finitef(float)
    float dremf(float, float)
    float __dremf(float, float)
    float significandf(float)
    float __significandf(float)
    float copysignf(float, float)
    float __copysignf(float, float)
    float nanf(const char*)
    float __nanf(const char*)
    int isnanf(float)
    float j0f(float)
    float __j0f(float)
    float j1f(float)
    float __j1f(float)
    float jnf(int, float)
    float __jnf(int, float)
    float y0f(float)
    float __y0f(float)
    float y1f(float)
    float __y1f(float)
    float ynf(int, float)
    float __ynf(int, float)
    float erff(float)
    float __erff(float)
    float erfcf(float)
    float __erfcf(float)
    float lgammaf(float)
    float __lgammaf(float)
    float tgammaf(float)
    float __tgammaf(float)
    float gammaf(float)
    float __gammaf(float)
    float lgammaf_r(float, int*)
    float __lgammaf_r(float, int*)
    float rintf(float)
    float __rintf(float)
    float nextafterf(float, float)
    float __nextafterf(float, float)
    float nexttowardf(float, long double)
    float __nexttowardf(float, long double)
    float remainderf(float, float)
    float __remainderf(float, float)
    float scalbnf(float, int)
    float __scalbnf(float, int)
    int ilogbf(float)
    int __ilogbf(float)
    float scalblnf(float, long)
    float __scalblnf(float, long)
    float nearbyintf(float)
    float __nearbyintf(float)
    float roundf(float)
    float __roundf(float)
    float truncf(float)
    float __truncf(float)
    float remquof(float, float, int*)
    float __remquof(float, float, int*)
    long lrintf(float)
    long __lrintf(float)
    long long llrintf(float)
    long long __llrintf(float)
    long lroundf(float)
    long __lroundf(float)
    long long llroundf(float)
    long long __llroundf(float)
    float fdimf(float, float)
    float __fdimf(float, float)
    float fmaxf(float, float)
    float __fmaxf(float, float)
    float fminf(float, float)
    float __fminf(float, float)
    float fmaf(float, float, float)
    float __fmaf(float, float, float)
    float scalbf(float, float)
    float __scalbf(float, float)
    int __fpclassifyl(long double)
    int __signbitl(long double)
    int __isinfl(long double)
    int __finitel(long double)
    int __isnanl(long double)
    int __iseqsigl(long double, long double)
    int __issignalingl(long double)
    long double acosl(long double)
    long double __acosl(long double)
    long double asinl(long double)
    long double __asinl(long double)
    long double atanl(long double)
    long double __atanl(long double)
    long double atan2l(long double, long double)
    long double __atan2l(long double, long double)
    long double cosl(long double)
    long double __cosl(long double)
    long double sinl(long double)
    long double __sinl(long double)
    long double tanl(long double)
    long double __tanl(long double)
    long double coshl(long double)
    long double __coshl(long double)
    long double sinhl(long double)
    long double __sinhl(long double)
    long double tanhl(long double)
    long double __tanhl(long double)
    long double acoshl(long double)
    long double __acoshl(long double)
    long double asinhl(long double)
    long double __asinhl(long double)
    long double atanhl(long double)
    long double __atanhl(long double)
    long double expl(long double)
    long double __expl(long double)
    long double frexpl(long double, int*)
    long double __frexpl(long double, int*)
    long double ldexpl(long double, int)
    long double __ldexpl(long double, int)
    long double logl(long double)
    long double __logl(long double)
    long double log10l(long double)
    long double __log10l(long double)
    long double modfl(long double, long double*)
    long double __modfl(long double, long double*)
    long double expm1l(long double)
    long double __expm1l(long double)
    long double log1pl(long double)
    long double __log1pl(long double)
    long double logbl(long double)
    long double __logbl(long double)
    long double exp2l(long double)
    long double __exp2l(long double)
    long double log2l(long double)
    long double __log2l(long double)
    long double powl(long double, long double)
    long double __powl(long double, long double)
    long double sqrtl(long double)
    long double __sqrtl(long double)
    long double hypotl(long double, long double)
    long double __hypotl(long double, long double)
    long double cbrtl(long double)
    long double __cbrtl(long double)
    long double ceill(long double)
    long double __ceill(long double)
    long double fabsl(long double)
    long double __fabsl(long double)
    long double floorl(long double)
    long double __floorl(long double)
    long double fmodl(long double, long double)
    long double __fmodl(long double, long double)
    int isinfl(long double)
    int finitel(long double)
    long double dreml(long double, long double)
    long double __dreml(long double, long double)
    long double significandl(long double)
    long double __significandl(long double)
    long double copysignl(long double, long double)
    long double __copysignl(long double, long double)
    long double nanl(const char*)
    long double __nanl(const char*)
    int isnanl(long double)
    long double j0l(long double)
    long double __j0l(long double)
    long double j1l(long double)
    long double __j1l(long double)
    long double jnl(int, long double)
    long double __jnl(int, long double)
    long double y0l(long double)
    long double __y0l(long double)
    long double y1l(long double)
    long double __y1l(long double)
    long double ynl(int, long double)
    long double __ynl(int, long double)
    long double erfl(long double)
    long double __erfl(long double)
    long double erfcl(long double)
    long double __erfcl(long double)
    long double lgammal(long double)
    long double __lgammal(long double)
    long double tgammal(long double)
    long double __tgammal(long double)
    long double gammal(long double)
    long double __gammal(long double)
    long double lgammal_r(long double, int*)
    long double __lgammal_r(long double, int*)
    long double rintl(long double)
    long double __rintl(long double)
    long double nextafterl(long double, long double)
    long double __nextafterl(long double, long double)
    long double nexttowardl(long double, long double)
    long double __nexttowardl(long double, long double)
    long double remainderl(long double, long double)
    long double __remainderl(long double, long double)
    long double scalbnl(long double, int)
    long double __scalbnl(long double, int)
    int ilogbl(long double)
    int __ilogbl(long double)
    long double scalblnl(long double, long)
    long double __scalblnl(long double, long)
    long double nearbyintl(long double)
    long double __nearbyintl(long double)
    long double roundl(long double)
    long double __roundl(long double)
    long double truncl(long double)
    long double __truncl(long double)
    long double remquol(long double, long double, int*)
    long double __remquol(long double, long double, int*)
    long lrintl(long double)
    long __lrintl(long double)
    long long llrintl(long double)
    long long __llrintl(long double)
    long lroundl(long double)
    long __lroundl(long double)
    long long llroundl(long double)
    long long __llroundl(long double)
    long double fdiml(long double, long double)
    long double __fdiml(long double, long double)
    long double fmaxl(long double, long double)
    long double __fmaxl(long double, long double)
    long double fminl(long double, long double)
    long double __fminl(long double, long double)
    long double fmal(long double, long double, long double)
    long double __fmal(long double, long double, long double)
    long double scalbl(long double, long double)
    long double __scalbl(long double, long double)
    int signgam


