
cdef extern from *:
    ctypedef long __syscall_slong_t
    ctypedef long __time_t
    ctypedef struct __atomic_wide_counter:
        pass
    ctypedef unsigned int pthread_key_t
    ctypedef struct __sigset_t:
        pass
    ctypedef struct pthread_condattr_t:
        pass
    ctypedef struct pthread_rwlockattr_t:
        pass
    ctypedef struct pthread_barrier_t:
        pass
    union pthread_attr_t:
        char __size[56]
        long __align
    ctypedef int __clockid_t
    struct sched_param:
        int sched_priority
    ctypedef long[8] __jmp_buf
    ctypedef struct pthread_barrierattr_t:
        pass
    ctypedef int pthread_once_t
    struct __pthread_rwlock_arch_t:
        unsigned int __readers
        unsigned int __writers
        unsigned int __wrphase_futex
        unsigned int __writers_futex
        unsigned int __pad3
        unsigned int __pad4
        int __cur_writer
        int __shared
        signed char __rwelision
        unsigned char __pad1[7]
        unsigned long __pad2
        unsigned int __flags
    ctypedef int pthread_spinlock_t
    ctypedef unsigned long pthread_t
    ctypedef struct pthread_mutexattr_t:
        pass
    struct __pthread_internal_list:
        __pthread_internal_list* __prev
        __pthread_internal_list* __next
    ctypedef struct pthread_rwlock_t:
        pass
    ctypedef __pthread_internal_list __pthread_list_t
    struct __pthread_cond_s:
        __atomic_wide_counter __wseq
        __atomic_wide_counter __g1_start
        unsigned int __g_refs[2]
        unsigned int __g_size[2]
        unsigned int __g1_orig_size
        unsigned int __wrefs
        unsigned int __g_signals[2]
    struct __jmp_buf_tag:
        __jmp_buf __jmpbuf
        int __mask_was_saved
        __sigset_t __saved_mask
    struct __pthread_mutex_s:
        int __lock
        unsigned int __count
        int __owner
        unsigned int __nusers
        int __kind
        short __spins
        short __elision
        __pthread_list_t __list
    ctypedef struct pthread_cond_t:
        pass
    struct timespec:
        __time_t tv_sec
        __syscall_slong_t tv_nsec
    ctypedef struct pthread_mutex_t:
        pass
    void pthread_cleanup_pop(int)
    void pthread_cleanup_push(void (*)(void*), void*)
    enum:
        PTHREAD_BARRIER_SERIAL_THREAD
        PTHREAD_CANCEL_ASYNCHRONOUS
        PTHREAD_CANCEL_ENABLE
        PTHREAD_CANCEL_DEFERRED
        PTHREAD_CANCEL_DISABLE
        PTHREAD_CANCELED
        PTHREAD_CREATE_DETACHED
        PTHREAD_CREATE_JOINABLE
        PTHREAD_EXPLICIT_SCHED
        PTHREAD_INHERIT_SCHED
        PTHREAD_MUTEX_DEFAULT
        PTHREAD_MUTEX_ERRORCHECK
        PTHREAD_MUTEX_NORMAL
        PTHREAD_MUTEX_RECURSIVE
        PTHREAD_MUTEX_ROBUST
        PTHREAD_MUTEX_STALLED
        PTHREAD_ONCE_INIT
        PTHREAD_PRIO_INHERIT
        PTHREAD_PRIO_NONE
        PTHREAD_PRIO_PROTECT
        PTHREAD_PROCESS_SHARED
        PTHREAD_PROCESS_PRIVATE
        PTHREAD_SCOPE_PROCESS
        PTHREAD_SCORE_SYSTEM
    const pthread_cond_t PTHREAD_COND_INITIALIZER
    const pthread_mutex_t PTHREAD_MUTEX_INITIALIZER
    const pthread_rwlock_t PTHREAD_RWLOCK_INITIALIZER

cdef extern from "<pthread.h>":
    struct _pthread_cleanup_buffer:
        void (*__routine)(void*)
        void* __arg
        int __canceltype
        _pthread_cleanup_buffer* __prev
    int pthread_create(pthread_t*, pthread_attr_t*, void* (*)(void*), void*)
    void pthread_exit(void*)
    int pthread_join(pthread_t, void**)
    int pthread_detach(pthread_t)
    pthread_t pthread_self()
    int pthread_equal(pthread_t, pthread_t)
    int pthread_attr_init(pthread_attr_t*)
    int pthread_attr_destroy(pthread_attr_t*)
    int pthread_attr_getdetachstate(pthread_attr_t*, int*)
    int pthread_attr_setdetachstate(pthread_attr_t*, int)
    int pthread_attr_getguardsize(pthread_attr_t*, size_t*)
    int pthread_attr_setguardsize(pthread_attr_t*, size_t)
    int pthread_attr_getschedparam(pthread_attr_t*, sched_param*)
    int pthread_attr_setschedparam(pthread_attr_t*, sched_param*)
    int pthread_attr_getschedpolicy(pthread_attr_t*, int*)
    int pthread_attr_setschedpolicy(pthread_attr_t*, int)
    int pthread_attr_getinheritsched(pthread_attr_t*, int*)
    int pthread_attr_setinheritsched(pthread_attr_t*, int)
    int pthread_attr_getscope(pthread_attr_t*, int*)
    int pthread_attr_setscope(pthread_attr_t*, int)
    int pthread_attr_getstackaddr(pthread_attr_t*, void**)
    int pthread_attr_setstackaddr(pthread_attr_t*, void*)
    int pthread_attr_getstacksize(pthread_attr_t*, size_t*)
    int pthread_attr_setstacksize(pthread_attr_t*, size_t)
    int pthread_attr_getstack(pthread_attr_t*, void**, size_t*)
    int pthread_attr_setstack(pthread_attr_t*, void*, size_t)
    int pthread_setschedparam(pthread_t, int, sched_param*)
    int pthread_getschedparam(pthread_t, int*, sched_param*)
    int pthread_setschedprio(pthread_t, int)
    int pthread_once(pthread_once_t*, void (*)())
    int pthread_setcancelstate(int, int*)
    int pthread_setcanceltype(int, int*)
    int pthread_cancel(pthread_t)
    void pthread_testcancel()
    struct __cancel_jmp_buf_tag:
        __jmp_buf __cancel_jmp_buf
        int __mask_was_saved
    struct pxdgen_anon_toplevel_10:
        __cancel_jmp_buf_tag __cancel_jmp_buf[1]
        void* __pad[4]
    ctypedef pxdgen_anon_toplevel_10 __pthread_unwind_buf_t
    struct __pthread_cleanup_frame:
        void (*__cancel_routine)(void*)
        void* __cancel_arg
        int __do_it
        int __cancel_type
    void __pthread_register_cancel(__pthread_unwind_buf_t*)
    void __pthread_unregister_cancel(__pthread_unwind_buf_t*)
    void __pthread_unwind_next(__pthread_unwind_buf_t*)
    int __sigsetjmp(__jmp_buf_tag[1], int)
    int pthread_mutex_init(pthread_mutex_t*, pthread_mutexattr_t*)
    int pthread_mutex_destroy(pthread_mutex_t*)
    int pthread_mutex_trylock(pthread_mutex_t*)
    int pthread_mutex_lock(pthread_mutex_t*)
    int pthread_mutex_timedlock(pthread_mutex_t*, timespec*)
    int pthread_mutex_unlock(pthread_mutex_t*)
    int pthread_mutex_getprioceiling(pthread_mutex_t*, int*)
    int pthread_mutex_setprioceiling(pthread_mutex_t*, int, int*)
    int pthread_mutex_consistent(pthread_mutex_t*)
    int pthread_mutexattr_init(pthread_mutexattr_t*)
    int pthread_mutexattr_destroy(pthread_mutexattr_t*)
    int pthread_mutexattr_getpshared(pthread_mutexattr_t*, int*)
    int pthread_mutexattr_setpshared(pthread_mutexattr_t*, int)
    int pthread_mutexattr_gettype(pthread_mutexattr_t*, int*)
    int pthread_mutexattr_settype(pthread_mutexattr_t*, int)
    int pthread_mutexattr_getprotocol(pthread_mutexattr_t*, int*)
    int pthread_mutexattr_setprotocol(pthread_mutexattr_t*, int)
    int pthread_mutexattr_getprioceiling(pthread_mutexattr_t*, int*)
    int pthread_mutexattr_setprioceiling(pthread_mutexattr_t*, int)
    int pthread_mutexattr_getrobust(pthread_mutexattr_t*, int*)
    int pthread_mutexattr_setrobust(pthread_mutexattr_t*, int)
    int pthread_rwlock_init(pthread_rwlock_t*, pthread_rwlockattr_t*)
    int pthread_rwlock_destroy(pthread_rwlock_t*)
    int pthread_rwlock_rdlock(pthread_rwlock_t*)
    int pthread_rwlock_tryrdlock(pthread_rwlock_t*)
    int pthread_rwlock_timedrdlock(pthread_rwlock_t*, timespec*)
    int pthread_rwlock_wrlock(pthread_rwlock_t*)
    int pthread_rwlock_trywrlock(pthread_rwlock_t*)
    int pthread_rwlock_timedwrlock(pthread_rwlock_t*, timespec*)
    int pthread_rwlock_unlock(pthread_rwlock_t*)
    int pthread_rwlockattr_init(pthread_rwlockattr_t*)
    int pthread_rwlockattr_destroy(pthread_rwlockattr_t*)
    int pthread_rwlockattr_getpshared(pthread_rwlockattr_t*, int*)
    int pthread_rwlockattr_setpshared(pthread_rwlockattr_t*, int)
    int pthread_rwlockattr_getkind_np(pthread_rwlockattr_t*, int*)
    int pthread_rwlockattr_setkind_np(pthread_rwlockattr_t*, int)
    int pthread_cond_init(pthread_cond_t*, pthread_condattr_t*)
    int pthread_cond_destroy(pthread_cond_t*)
    int pthread_cond_signal(pthread_cond_t*)
    int pthread_cond_broadcast(pthread_cond_t*)
    int pthread_cond_wait(pthread_cond_t*, pthread_mutex_t*)
    int pthread_cond_timedwait(pthread_cond_t*, pthread_mutex_t*, timespec*)
    int pthread_condattr_init(pthread_condattr_t*)
    int pthread_condattr_destroy(pthread_condattr_t*)
    int pthread_condattr_getpshared(pthread_condattr_t*, int*)
    int pthread_condattr_setpshared(pthread_condattr_t*, int)
    int pthread_condattr_getclock(pthread_condattr_t*, __clockid_t*)
    int pthread_condattr_setclock(pthread_condattr_t*, __clockid_t)
    int pthread_spin_init(pthread_spinlock_t*, int)
    int pthread_spin_destroy(pthread_spinlock_t*)
    int pthread_spin_lock(pthread_spinlock_t*)
    int pthread_spin_trylock(pthread_spinlock_t*)
    int pthread_spin_unlock(pthread_spinlock_t*)
    int pthread_barrier_init(pthread_barrier_t*, pthread_barrierattr_t*, unsigned int)
    int pthread_barrier_destroy(pthread_barrier_t*)
    int pthread_barrier_wait(pthread_barrier_t*)
    int pthread_barrierattr_init(pthread_barrierattr_t*)
    int pthread_barrierattr_destroy(pthread_barrierattr_t*)
    int pthread_barrierattr_getpshared(pthread_barrierattr_t*, int*)
    int pthread_barrierattr_setpshared(pthread_barrierattr_t*, int)
    int pthread_key_create(pthread_key_t*, void (*)(void*))
    int pthread_key_delete(pthread_key_t)
    void* pthread_getspecific(pthread_key_t)
    int pthread_setspecific(pthread_key_t, const void*)
    int pthread_getcpuclockid(pthread_t, __clockid_t*)
    int pthread_atfork(void (*)(), void (*)(), void (*)())


