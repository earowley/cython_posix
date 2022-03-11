

cdef extern from "<search.h>":
    void insque(void*, void*)
    void remque(void*)
    ctypedef int (*__compar_fn_t)(const void*, const void*)
    enum pxdgen_anon_toplevel_0:
        FIND = 0
        ENTER = 1
    ctypedef pxdgen_anon_toplevel_0 ACTION
    struct entry:
        char* key
        void* data
    ctypedef entry ENTRY
    ENTRY* hsearch(ENTRY, ACTION)
    int hcreate(size_t)
    void hdestroy()
    enum pxdgen_anon_toplevel_1:
        preorder = 0
        postorder = 1
        endorder = 2
        leaf = 3
    ctypedef pxdgen_anon_toplevel_1 VISIT
    void* tsearch(const void*, void**, __compar_fn_t)
    void* tfind(const void*, void**, __compar_fn_t)
    void* tdelete(const void*, void**, __compar_fn_t)
    ctypedef void (*__action_fn_t)(const void*, VISIT, int)
    void twalk(const void*, __action_fn_t)
    void* lfind(const void*, const void*, size_t*, size_t, __compar_fn_t)
    void* lsearch(const void*, void*, size_t*, size_t, __compar_fn_t)


