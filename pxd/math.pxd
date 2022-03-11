from _math cimport acos, acosf, acosh, acoshf, acoshl, acosl, asin, asinf, asinh, asinhf, asinhl, asinl, atan, atan2, atan2f, atan2l, atanf, atanh, atanhf, atanhl, atanl, cbrt, cbrtf, cbrtl, ceil, ceilf, ceill, copysign, copysignf, copysignl, cos, cosf, cosl, erf, erfc, erfcf, erfcl, erff, erfl, exp, exp2, exp2f, exp2l, expf, expl, expm1, expm1f, expm1l, fabs, fabsf, fabsl, fdim, fdimf, fdiml, floor, floorf, floorl, fma, fmaf, fmal, fmax, fmaxf, fmaxl, fmin, fminf, fminl, fmod, fmodf, fmodl, frexp, frexpf, frexpl, hypot, hypotf, hypotl, ilogb, ilogbf, ilogbl, j0, j1, jn, ldexp, ldexpf, ldexpl, lgamma, lgammaf, lgammal, llrint, llrintf, llrintl, llround, llroundf, llroundl, log, log10, log10f, log10l, log1p, log1pf, log1pl, log2, log2f, log2l, logb, logbf, logbl, logf, logl, lrint, lrintf, lrintl, lround, lroundf, lroundl, modf, modff, modfl, nan, nanf, nanl, nearbyint, nearbyintf, nearbyintl, nextafter, nextafterf, nextafterl, nexttoward, nexttowardf, nexttowardl, pow, powf, powl, remainder, remainderf, remainderl, remquo, remquof, remquol, rint, rintf, rintl, round, roundf, roundl, scalb, scalblnf, scalblnl, scalbn, scalbnf, scalbnl, sin, sinf, sinh, sinhf, sinhl, sinl, sqrt, sqrtf, sqrtl, tan, tanf, tanh, tanhf, tanhl, tanl, tgamma, tgammaf, tgammal, trunc, truncf, truncl, y0, y1, yn

cdef extern from *:
    int fpclassify(...)
    int isfinite(...)
    int isinf(...)
    int isnan(...)
    int isnormal(...)
    int signbit(...)
    int isgreater(...)
    int isgreaterequal(...)
    int isless(...)
    int islessequal(...)
    int islessgreater(...)
    int isunordered(...)
    int signgam
    enum:
        M_E
        M_LOG2E
        M_LOG10E
        M_LN2
        M_LN10
        M_PI
        M_PI_2
        M_PI_4
        M_1_PI
        M_2_PI
        M_2_SQRTPI
        M_SQRT2
        M_SQRT1_2
        MAXFLOAT
        HUGE_VAL
        HUGE_VALF
        HUGE_VALL
        INFINITY
        NAN
        FP_INFINITE
        FP_NAN
        FP_NORMAL
        FP_SUBNORMAL
        FP_ZERO
        FP_FAST_FMA
        FP_FAST_FMAF
        FP_FAST_FMAL
        FP_ILONGB0
        FP_ILOGBNAN
        MATH_ERRNO
        MATH_ERREXCEPT
        math_errhandling
