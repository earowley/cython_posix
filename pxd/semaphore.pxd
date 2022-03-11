
cdef extern from *:
    ctypedef long __time_t
    ctypedef struct sem_t:
        pass
    ctypedef long __syscall_slong_t
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec

cdef extern from "<semaphore.h>":
    int sem_init(sem_t*, int, unsigned int)
    int sem_destroy(sem_t*)
    sem_t* sem_open(const char*, int)
    int sem_close(sem_t*)
    int sem_unlink(const char*)
    int sem_wait(sem_t*)
    int sem_timedwait(sem_t*, timespec*)
    int sem_trywait(sem_t*)
    int sem_post(sem_t*)
    int sem_getvalue(sem_t*, int*)


