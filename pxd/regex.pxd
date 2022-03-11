

cdef extern from *:
    enum:
        REG_EXTENDED
        REG_ICASE
        REG_NOSUB
        REG_NEWLINE
        REG_NOTBOL
        REG_NOTEOL
        REG_NOMATCH
        REG_BADPAT
        REG_ECOLLATE
        REG_ECTYPE
        REG_EESCAPE
        REG_ESUBREG
        REG_EBRACK
        REG_EPAREN
        REG_EBRACE
        REG_BADBR
        REG_ERANGE
        REG_ESPACE
        REG_BADRPT

cdef extern from "<regex.h>":
    ctypedef unsigned int __re_size_t
    ctypedef unsigned long __re_long_size_t
    ctypedef long s_reg_t
    ctypedef unsigned long active_reg_t
    ctypedef unsigned long reg_syntax_t
    reg_syntax_t re_syntax_options
    enum pxdgen_anon_toplevel_0:
        _REG_ENOSYS = -1
        _REG_NOERROR = 0
        _REG_NOMATCH = 1
        _REG_BADPAT = 2
        _REG_ECOLLATE = 3
        _REG_ECTYPE = 4
        _REG_EESCAPE = 5
        _REG_ESUBREG = 6
        _REG_EBRACK = 7
        _REG_EPAREN = 8
        _REG_EBRACE = 9
        _REG_BADBR = 10
        _REG_ERANGE = 11
        _REG_ESPACE = 12
        _REG_BADRPT = 13
        _REG_EEND = 14
        _REG_ESIZE = 15
        _REG_ERPAREN = 16
    ctypedef pxdgen_anon_toplevel_0 reg_errcode_t
    struct re_dfa_t:
        pass
    struct re_pattern_buffer:
        re_dfa_t* __buffer
        __re_long_size_t __allocated
        __re_long_size_t __used
        reg_syntax_t __syntax
        char* __fastmap
        unsigned char* __translate
        size_t re_nsub
        unsigned int __can_be_null
        unsigned int __regs_allocated
        unsigned int __fastmap_accurate
        unsigned int __no_sub
        unsigned int __not_bol
        unsigned int __not_eol
        unsigned int __newline_anchor
    ctypedef re_pattern_buffer regex_t
    ctypedef int regoff_t
    struct pxdgen_anon_toplevel_1:
        regoff_t rm_so
        regoff_t rm_eo
    ctypedef pxdgen_anon_toplevel_1 regmatch_t
    int regcomp(regex_t*, const char*, int)
    int regexec(regex_t*, const char*, size_t, regmatch_t[], int)
    size_t regerror(int, regex_t*, char*, size_t)
    void regfree(regex_t*)


