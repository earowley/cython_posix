

cdef extern from "<cpio.h>":
    enum:
        C_IRUSR
        C_IWUSR
        C_IXUSR
        C_IRGRP
        C_IWGRP
        C_IXGRP
        C_IROTH
        C_IWOTH
        C_IXOTH
        C_ISUID
        C_ISGID
        C_ISVTX
        C_ISDIR
        C_ISFIFO
        C_ISREG
        C_ISBLK
        C_ISCHR
        C_ISCTG
        C_ISLNK
        C_ISSOCK
