

cdef extern from "<dlfcn.h>":
    void* dlopen(const char*, int)
    int dlclose(void*)
    void* dlsym(void*, const char*)
    char* dlerror()


