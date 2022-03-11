
cdef extern from *:
    ctypedef long[8] __jmp_buf
    ctypedef struct __sigset_t:
        pass
    struct __jmp_buf_tag:
        __jmp_buf __jmpbuf
        int __mask_was_saved
        __sigset_t __saved_mask

cdef extern from "<setjmp.h>":
    ctypedef __jmp_buf_tag[1] jmp_buf
    int setjmp(jmp_buf)
    int __sigsetjmp(__jmp_buf_tag[1], int)
    int _setjmp(__jmp_buf_tag[1])
    void longjmp(__jmp_buf_tag[1], int)
    void _longjmp(__jmp_buf_tag[1], int)
    ctypedef __jmp_buf_tag[1] sigjmp_buf
    void siglongjmp(sigjmp_buf, int)


