

cdef extern from "<tar.h>":
    const char* TMAGIC
    const int TMAGLEN
    const char* TVERSION
    const int TVERSLEN
    enum:
        REGTYPE
        AREGTYPE
        LNKTYPE
        SYMTYPE
        CHRTYPE
        BLKTYPE
        DIRTYPE
        FIFOTYPE
        CONTTYPE
        TSUID
        TSGID
        TSVTX
        TUREAD
        TUWRITE
        TUEXEC
        TGREAD
        TGWRITE
        TGEXEC
        TOREAD
        TOWRITE
        TOEXEC
