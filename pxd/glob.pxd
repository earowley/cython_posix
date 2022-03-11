

cdef extern from *:
    enum:
        GLOB_APPEND
        GLOB_DOOFFS
        GLOB_ERR
        GLOB_MARK
        GLOB_NOCHECK
        GLOB_NOESCAPE
        GLOB_NOSORT
        GLOB_ABORTED
        GLOB_NOMATCH
        GLOB_NOSPACE
        GLOB_NOSYS


cdef extern from "<glob.h>":
    ctypedef unsigned long __size_t
    ctypedef unsigned long size_t
    struct pxdgen_anon_toplevel_0:
        __size_t gl_pathc
        char** gl_pathv
        __size_t gl_offs
        int gl_flags
        void (*gl_closedir)(void*)
        void* (*gl_readdir)(void*)
        void* (*gl_opendir)(const char*)
        int (*gl_lstat)(const char*,void*)
        int (*gl_stat)(const char*,void*)
    ctypedef pxdgen_anon_toplevel_0 glob_t
    int glob(const char*, int, int (*)(const char*,int), glob_t*)
    void globfree(glob_t*)


