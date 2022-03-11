

cdef extern from *:
    enum:
        WRDE_APPEND
        WRDE_DOOFFS
        WRDE_NOCMD
        WRDE_REUSE
        WRDE_SHOWERR
        WRDE_UNDEF
        WRDE_BADCHAR
        WRDE_BADVAL
        WRDE_CMDSUB
        WRDE_NOSPACE
        WRDE_NOSYS
        WRDE_SYNTAX


cdef extern from "<wordexp.h>":
    struct pxdgen_anon_toplevel_1:
        size_t we_wordc
        char** we_wordv
        size_t we_offs
    ctypedef pxdgen_anon_toplevel_1 wordexp_t
    int wordexp(const char*, wordexp_t*, int)
    void wordfree(wordexp_t*)


