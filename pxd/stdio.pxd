

cdef extern from *:
    ctypedef long __off_t
    struct __va_list_tag:
        pass
    ctypedef __va_list_tag[1] __builtin_va_list
    ctypedef struct __mbstate_t:
        pass
    ctypedef long __off64_t
    ctypedef long __ssize_t
    ctypedef void _IO_lock_t
    ctypedef __builtin_va_list __gnuc_va_list
    struct _G_fpos_t:
        __off_t __pos
        __mbstate_t __state
    ctypedef _G_fpos_t __fpos_t
    struct _IO_codecvt:
        pass
    struct _IO_wide_data:
        pass
    struct _IO_marker:
        pass
    struct _IO_FILE:
        int _flags
        char* _IO_read_ptr
        char* _IO_read_end
        char* _IO_read_base
        char* _IO_write_base
        char* _IO_write_ptr
        char* _IO_write_end
        char* _IO_buf_base
        char* _IO_buf_end
        char* _IO_save_base
        char* _IO_backup_base
        char* _IO_save_end
        _IO_marker* _markers
        _IO_FILE* _chain
        int _fileno
        int _flags2
        __off_t _old_offset
        unsigned short _cur_column
        signed char _vtable_offset
        char _shortbuf[1]
        _IO_lock_t* _lock
        __off64_t _offset
        _IO_codecvt* _codecvt
        _IO_wide_data* _wide_data
        _IO_FILE* _freeres_list
        void* _freeres_buf
        size_t __pad5
        int _mode
        char _unused2[20]
    ctypedef _IO_FILE FILE
    enum:
        BUFSIZ
        L_ctermid
        L_tmpnam
        _IOFBF
        _IOLBF
        _IONBF
        SEEK_CUR
        SEEK_END
        SEEK_SET
        FILENAME_MAX
        FOPEN_MAX
        TMP_MAX
        EOF
    const char* P_tmpdir

cdef extern from "<stdio.h>":
    ctypedef __gnuc_va_list va_list
    ctypedef __off_t off_t
    ctypedef __ssize_t ssize_t
    ctypedef __fpos_t fpos_t
    FILE* stdin
    FILE* stdout
    FILE* stderr
    int remove(const char*)
    int rename(const char*, const char*)
    int renameat(int, const char*, int, const char*)
    int fclose(FILE*)
    FILE* tmpfile()
    char* tmpnam(char[20])
    char* tmpnam_r(char[20])
    char* tempnam(const char*, const char*)
    int fflush(FILE*)
    int fflush_unlocked(FILE*)
    FILE* fopen(const char*, const char*)
    FILE* freopen(const char*, const char*, FILE*)
    FILE* fdopen(int, const char*)
    FILE* fmemopen(void*, size_t, const char*)
    FILE* open_memstream(char**, size_t*)
    void setbuf(FILE*, char*)
    int setvbuf(FILE*, char*, int, size_t)
    void setbuffer(FILE*, char*, size_t)
    void setlinebuf(FILE*)
    int fprintf(FILE*, const char*, ...)
    int printf(const char*, ...)
    int sprintf(char*, const char*, ...)
    int vfprintf(FILE*, const char*, __gnuc_va_list)
    int vprintf(const char*, __gnuc_va_list)
    int vsprintf(char*, const char*, __gnuc_va_list)
    int snprintf(char*, size_t, const char*)
    int vsnprintf(char*, size_t, const char*, __gnuc_va_list)
    int vdprintf(int, const char*, __gnuc_va_list)
    int dprintf(int, const char*)
    int fscanf(FILE*, const char*, ...)
    int scanf(const char*, ...)
    int sscanf(const char*, const char*, ...)
    int vfscanf(FILE*, const char*, __gnuc_va_list)
    int vscanf(const char*, __gnuc_va_list)
    int vsscanf(const char*, const char*, __gnuc_va_list)
    int vfscanf(FILE*, const char*, __gnuc_va_list)
    int vscanf(const char*, __gnuc_va_list)
    int vsscanf(const char*, const char*, __gnuc_va_list)
    int fgetc(FILE*)
    int getc(FILE*)
    int getchar()
    int getc_unlocked(FILE*)
    int getchar_unlocked()
    int fgetc_unlocked(FILE*)
    int fputc(int, FILE*)
    int putc(int, FILE*)
    int putchar(int)
    int fputc_unlocked(int, FILE*)
    int putc_unlocked(int, FILE*)
    int putchar_unlocked(int)
    int getw(FILE*)
    int putw(int, FILE*)
    char* fgets(char*, int, FILE*)
    __ssize_t __getdelim(char**, size_t*, int, FILE*)
    __ssize_t getdelim(char**, size_t*, int, FILE*)
    __ssize_t getline(char**, size_t*, FILE*)
    int fputs(const char*, FILE*)
    int puts(const char*)
    int ungetc(int, FILE*)
    unsigned long fread(void*, size_t, size_t, FILE*)
    unsigned long fwrite(const void*, size_t, size_t, FILE*)
    size_t fread_unlocked(void*, size_t, size_t, FILE*)
    size_t fwrite_unlocked(const void*, size_t, size_t, FILE*)
    int fseek(FILE*, long, int)
    long ftell(FILE*)
    void rewind(FILE*)
    int fseeko(FILE*, __off_t, int)
    __off_t ftello(FILE*)
    int fgetpos(FILE*, fpos_t*)
    int fsetpos(FILE*, fpos_t*)
    void clearerr(FILE*)
    int feof(FILE*)
    int ferror(FILE*)
    void clearerr_unlocked(FILE*)
    int feof_unlocked(FILE*)
    int ferror_unlocked(FILE*)
    void perror(const char*)
    int fileno(FILE*)
    int fileno_unlocked(FILE*)
    int pclose(FILE*)
    FILE* popen(const char*, const char*)
    char* ctermid(char*)
    void flockfile(FILE*)
    int ftrylockfile(FILE*)
    void funlockfile(FILE*)
    int __uflow(FILE*)
    int __overflow(FILE*, int)


