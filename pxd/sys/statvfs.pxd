
cdef extern from *:
    ctypedef unsigned long __fsfilcnt_t
    ctypedef unsigned long __fsblkcnt_t
    enum:
        ST_RDONLY
        ST_NOSUID


ctypedef struct struct_statvfs:
    unsigned long f_bsize
    unsigned long f_frsize
    __fsblkcnt_t f_blocks
    __fsblkcnt_t f_bfree
    __fsblkcnt_t f_bavail
    __fsfilcnt_t f_files
    __fsfilcnt_t f_ffree
    __fsfilcnt_t f_favail
    unsigned long f_fsid
    unsigned long f_flag
    unsigned long f_namemax
    int __f_spare[6]


cdef extern from "<sys/statvfs.h>":
    ctypedef __fsblkcnt_t fsblkcnt_t
    ctypedef __fsfilcnt_t fsfilcnt_t
    int statvfs(const char*, struct_statvfs*)
    int fstatvfs(int, struct_statvfs*)


