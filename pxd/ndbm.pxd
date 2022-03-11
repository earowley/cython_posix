
cdef extern from *:
    ctypedef struct datum:
        void *dptr
        size_t dsize
    ctypedef int gdbm_error
    ctypedef void gdbm_file_info
    ctypedef gdbm_file_info* GDBM_FILE
    enum:
        DBM_INSERT
        DBM_REPLACE

cdef extern from "<ndbm.h>":
    struct pxdgen_anon_toplevel_0:
        GDBM_FILE file
        int dirfd
        datum _dbm_memory
        char* _dbm_fetch_val
        gdbm_error _dbm_errno
    ctypedef pxdgen_anon_toplevel_0 DBM
    DBM* dbm_open(char*, int, int)
    void dbm_close(DBM*)
    datum dbm_fetch(DBM*, datum)
    int dbm_store(DBM*, datum, datum, int)
    int dbm_delete(DBM*, datum)
    datum dbm_firstkey(DBM*)
    datum dbm_nextkey(DBM*)
    int dbm_error(DBM*)
    void dbm_clearerr(DBM*)
    int dbm_dirfno(DBM*)
    int dbm_pagfno(DBM*)
    int dbm_rdonly(DBM*)


