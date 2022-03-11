
cdef extern from *:
    ctypedef long __off_t
    ctypedef unsigned int __mode_t
    enum:
        PROT_READ
        PROT_WRITE
        PROT_EXEC
        PROT_NONE
        MAP_SHARED
        MAP_PRIVATE
        MAP_FIXED
        MS_ASYNC
        MS_SYNC
        MS_INVALIDATE
        MCL_CURRENT
        MCL_FUTURE
        MAP_FAILED
        POSIX_MADV_NORMAL
        POSIX_MADV_SEQUENTIAL
        POSIX_MADV_RANDOM
        POSIX_MADV_WILLNEED
        POSIX_MADV_DONTNEED
        POSIX_TYPED_MEM_ALLOCATE
        POSIX_TYPED_MEM_ALLOCATE_CONTIG
        POSIX_TYPED_MEM_MAP_ALLOCATABLE


cdef extern from "<sys/mman.h>":
    ctypedef __off_t off_t
    ctypedef __mode_t mode_t
    struct posix_typed_mem_info:
        size_t posix_tmi_length
    void* mmap(void*, size_t, int, int, int, __off_t)
    int munmap(void*, size_t)
    int mprotect(void*, size_t, int)
    int msync(void*, size_t, int)
    int madvise(void*, size_t, int)
    int posix_madvise(void*, size_t, int)
    int mlock(const void*, size_t)
    int munlock(const void*, size_t)
    int mlockall(int)
    int munlockall()
    int mincore(void*, size_t, unsigned char*)
    int shm_open(const char*, int, mode_t)
    int shm_unlink(const char*)


