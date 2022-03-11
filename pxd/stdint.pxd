

cdef extern from "<stdint.h>":
    ctypedef unsigned char __u_char
    ctypedef unsigned short __u_short
    ctypedef unsigned int __u_int
    ctypedef unsigned long __u_long
    ctypedef signed char __int8_t
    ctypedef unsigned char __uint8_t
    ctypedef short __int16_t
    ctypedef unsigned short __uint16_t
    ctypedef int __int32_t
    ctypedef unsigned int __uint32_t
    ctypedef long __int64_t
    ctypedef unsigned long __uint64_t
    ctypedef __int8_t __int_least8_t
    ctypedef __uint8_t __uint_least8_t
    ctypedef __int16_t __int_least16_t
    ctypedef __uint16_t __uint_least16_t
    ctypedef __int32_t __int_least32_t
    ctypedef __uint32_t __uint_least32_t
    ctypedef __int64_t __int_least64_t
    ctypedef __uint64_t __uint_least64_t
    ctypedef long __quad_t
    ctypedef unsigned long __u_quad_t
    ctypedef long __intmax_t
    ctypedef unsigned long __uintmax_t
    ctypedef unsigned long __dev_t
    ctypedef unsigned int __uid_t
    ctypedef unsigned int __gid_t
    ctypedef unsigned long __ino_t
    ctypedef unsigned long __ino64_t
    ctypedef unsigned int __mode_t
    ctypedef unsigned long __nlink_t
    ctypedef long __off_t
    ctypedef long __off64_t
    ctypedef int __pid_t
    struct pxdgen_anon_toplevel_0:
        int __val[2]
    ctypedef pxdgen_anon_toplevel_0 __fsid_t
    ctypedef long __clock_t
    ctypedef unsigned long __rlim_t
    ctypedef unsigned long __rlim64_t
    ctypedef unsigned int __id_t
    ctypedef long __time_t
    ctypedef unsigned int __useconds_t
    ctypedef long __suseconds_t
    ctypedef long __suseconds64_t
    ctypedef int __daddr_t
    ctypedef int __key_t
    ctypedef int __clockid_t
    ctypedef void* __timer_t
    ctypedef long __blksize_t
    ctypedef long __blkcnt_t
    ctypedef long __blkcnt64_t
    ctypedef unsigned long __fsblkcnt_t
    ctypedef unsigned long __fsblkcnt64_t
    ctypedef unsigned long __fsfilcnt_t
    ctypedef unsigned long __fsfilcnt64_t
    ctypedef long __fsword_t
    ctypedef long __ssize_t
    ctypedef long __syscall_slong_t
    ctypedef unsigned long __syscall_ulong_t
    ctypedef __off64_t __loff_t
    ctypedef char* __caddr_t
    ctypedef long __intptr_t
    ctypedef unsigned int __socklen_t
    ctypedef int __sig_atomic_t
    ctypedef __int8_t int8_t
    ctypedef __int16_t int16_t
    ctypedef __int32_t int32_t
    ctypedef __int64_t int64_t
    ctypedef __uint8_t uint8_t
    ctypedef __uint16_t uint16_t
    ctypedef __uint32_t uint32_t
    ctypedef __uint64_t uint64_t
    ctypedef __int_least8_t int_least8_t
    ctypedef __int_least16_t int_least16_t
    ctypedef __int_least32_t int_least32_t
    ctypedef __int_least64_t int_least64_t
    ctypedef __uint_least8_t uint_least8_t
    ctypedef __uint_least16_t uint_least16_t
    ctypedef __uint_least32_t uint_least32_t
    ctypedef __uint_least64_t uint_least64_t
    ctypedef signed char int_fast8_t
    ctypedef long int_fast16_t
    ctypedef long int_fast32_t
    ctypedef long int_fast64_t
    ctypedef unsigned char uint_fast8_t
    ctypedef unsigned long uint_fast16_t
    ctypedef unsigned long uint_fast32_t
    ctypedef unsigned long uint_fast64_t
    ctypedef long intptr_t
    ctypedef unsigned long uintptr_t
    ctypedef __intmax_t intmax_t
    ctypedef __uintmax_t uintmax_t


