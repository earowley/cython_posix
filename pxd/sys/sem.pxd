
cdef extern from *:
    ctypedef int __key_t
    ctypedef __key_t key_t
    enum:
        SEM_UNDO
        GETNCNT
        GETPID
        GETVAL
        GETALL
        GETZCNT
        SETVAL
        SETALL


cdef extern from "<sys/sem.h>":
    struct sembuf:
        unsigned short sem_num
        short sem_op
        short sem_flg
    int semctl(int, int, int, ...)
    int semget(key_t, int, int)
    int semop(int, sembuf*, size_t)


