
cdef extern from *:
    ctypedef int __pid_t
    ctypedef unsigned long __u_quad_t
    ctypedef long __quad_t
    ctypedef unsigned int __gid_t
    ctypedef unsigned char __uint8_t
    ctypedef long __blkcnt_t
    ctypedef  __fsid_t
    ctypedef int __daddr_t
    ctypedef unsigned long __nlink_t
    ctypedef unsigned int __u_int
    ctypedef long __blksize_t
    ctypedef unsigned long __uint64_t
    ctypedef unsigned long __ino_t
    ctypedef unsigned short __u_short
    ctypedef unsigned long __dev_t
    ctypedef long __ssize_t
    ctypedef unsigned long __fsfilcnt_t
    ctypedef unsigned char __u_char
    ctypedef unsigned int __uid_t
    ctypedef long __off_t
    ctypedef unsigned int __uint32_t
    ctypedef unsigned short __uint16_t
    ctypedef unsigned long __u_long
    ctypedef unsigned int __mode_t
    ctypedef unsigned long __fsblkcnt_t
    ctypedef long __off64_t
    ctypedef char* __caddr_t
    ctypedef unsigned int __id_t
    ctypedef int __key_t
    ctypedef __off64_t __loff_t

cdef extern from "<sys/types.h>":
    ctypedef __u_char u_char
    ctypedef __u_short u_short
    ctypedef __u_int u_int
    ctypedef __u_long u_long
    ctypedef __quad_t quad_t
    ctypedef __u_quad_t u_quad_t
    ctypedef __fsid_t fsid_t
    ctypedef __loff_t loff_t
    ctypedef __ino_t ino_t
    ctypedef __dev_t dev_t
    ctypedef __gid_t gid_t
    ctypedef __mode_t mode_t
    ctypedef __nlink_t nlink_t
    ctypedef __uid_t uid_t
    ctypedef __off_t off_t
    ctypedef __pid_t pid_t
    ctypedef __id_t id_t
    ctypedef __ssize_t ssize_t
    ctypedef __daddr_t daddr_t
    ctypedef __caddr_t caddr_t
    ctypedef __key_t key_t
    ctypedef unsigned long ulong
    ctypedef unsigned short ushort
    ctypedef unsigned int uint
    ctypedef __uint8_t u_int8_t
    ctypedef __uint16_t u_int16_t
    ctypedef __uint32_t u_int32_t
    ctypedef __uint64_t u_int64_t
    ctypedef long register_t
    ctypedef __blksize_t blksize_t
    ctypedef __blkcnt_t blkcnt_t
    ctypedef __fsblkcnt_t fsblkcnt_t
    ctypedef __fsfilcnt_t fsfilcnt_t


