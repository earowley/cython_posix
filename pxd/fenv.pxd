
cdef extern from *:
    ctypedef unsigned short fexcept_t
    ctypedef void fenv_t

    enum:
        FE_DIVBYZERO
        FE_INEXACT
        FE_INVALID
        FE_OVERFLOW
        FE_UNDERFLOW
        FE_DOWNWARD
        FE_TONEAREST
        FE_TOWARDZERO
        FE_UPWARD
        FE_DFL_ENV


cdef extern from "<fenv.h>":
    int feclearexcept(int)
    int fegetexceptflag(fexcept_t*, int)
    int feraiseexcept(int)
    int fesetexceptflag(fexcept_t*, int)
    int fetestexcept(int)
    int fegetround()
    int fesetround(int)
    int fegetenv(fenv_t*)
    int feholdexcept(fenv_t*)
    int fesetenv(fenv_t*)
    int feupdateenv(fenv_t*)


