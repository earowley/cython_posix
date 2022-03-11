
cdef extern from *:
    ctypedef int __pid_t
    ctypedef struct __sigset_t:
        pass
    struct sched_param:
        int sched_priority
    ctypedef unsigned int __mode_t
    ctypedef __sigset_t sigset_t
    ctypedef __pid_t pid_t
    ctypedef __mode_t mode_t
    enum:
        POSIX_SPAWN_RESETIDS
        POSIX_SPAWN_SETPGROUP
        POSIX_SPAWN_SETSCHEDPARAM
        POSIX_SPAWN_SETSCHEDULER
        POSIX_SPAWN_SETSIGDEF
        POSIX_SPAWN_SETSIGMASK


cdef extern from "<spawn.h>":
    struct pxdgen_anon_toplevel_0:
        short __flags
        pid_t __pgrp
        sigset_t __sd
        sigset_t __ss
        sched_param __sp
        int __policy
        int __pad[16]
    ctypedef pxdgen_anon_toplevel_0 posix_spawnattr_t
    struct __spawn_action:
        pass
    struct pxdgen_anon_toplevel_1:
        int __allocated
        int __used
        __spawn_action* __actions
        int __pad[16]
    ctypedef pxdgen_anon_toplevel_1 posix_spawn_file_actions_t
    int posix_spawn(pid_t*, const char*, posix_spawn_file_actions_t*, posix_spawnattr_t*, char*[], char*[])
    int posix_spawnp(pid_t*, const char*, posix_spawn_file_actions_t*, posix_spawnattr_t*, char*[], char*[])
    int posix_spawnattr_init(posix_spawnattr_t*)
    int posix_spawnattr_destroy(posix_spawnattr_t*)
    int posix_spawnattr_getsigdefault(posix_spawnattr_t*, sigset_t*)
    int posix_spawnattr_setsigdefault(posix_spawnattr_t*, sigset_t*)
    int posix_spawnattr_getsigmask(posix_spawnattr_t*, sigset_t*)
    int posix_spawnattr_setsigmask(posix_spawnattr_t*, sigset_t*)
    int posix_spawnattr_getflags(posix_spawnattr_t*, short*)
    int posix_spawnattr_setflags(posix_spawnattr_t*, short)
    int posix_spawnattr_getpgroup(posix_spawnattr_t*, pid_t*)
    int posix_spawnattr_setpgroup(posix_spawnattr_t*, pid_t)
    int posix_spawnattr_getschedpolicy(posix_spawnattr_t*, int*)
    int posix_spawnattr_setschedpolicy(posix_spawnattr_t*, int)
    int posix_spawnattr_getschedparam(posix_spawnattr_t*, sched_param*)
    int posix_spawnattr_setschedparam(posix_spawnattr_t*, sched_param*)
    int posix_spawn_file_actions_init(posix_spawn_file_actions_t*)
    int posix_spawn_file_actions_destroy(posix_spawn_file_actions_t*)
    int posix_spawn_file_actions_addopen(posix_spawn_file_actions_t*, int, const char*, int, mode_t)
    int posix_spawn_file_actions_addclose(posix_spawn_file_actions_t*, int)
    int posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t*, int, int)


