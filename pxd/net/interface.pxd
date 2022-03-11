

cdef extern from *:
    ctypedef unsigned short sa_family_t
    ctypedef char* __caddr_t
    struct sockaddr:
        sa_family_t sa_family
        char sa_data[14]
    enum:
        IF_NAMESIZE

ctypedef struct struct_if_nameindex:
    unsigned int if_index
    char* if_name

cdef extern from "<net/if.h>":
    union pxdgen_anon_ifaddr_0:
        sockaddr ifu_broadaddr
        sockaddr ifu_dstaddr
    struct iface:
        pass
    struct ifaddr:
        sockaddr ifa_addr
        iface* ifa_ifp
        ifaddr* ifa_next
    struct ifmap:
        unsigned long mem_start
        unsigned long mem_end
        unsigned short base_addr
        unsigned char irq
        unsigned char dma
        unsigned char port
    union pxdgen_anon_ifreq_0:
        char ifrn_name[16]
    union pxdgen_anon_ifreq_1:
        sockaddr ifru_addr
        sockaddr ifru_dstaddr
        sockaddr ifru_broadaddr
        sockaddr ifru_netmask
        sockaddr ifru_hwaddr
        short ifru_flags
        int ifru_ivalue
        int ifru_mtu
        ifmap ifru_map
        char ifru_slave[16]
        char ifru_newname[16]
        __caddr_t ifru_data
    struct ifreq:
        pass
    union pxdgen_anon_ifconf_0:
        __caddr_t ifcu_buf
        ifreq* ifcu_req
    struct ifconf:
        int ifc_len
    unsigned int if_nametoindex(const char*)
    char* if_indextoname(unsigned int, char[16])
    struct_if_nameindex* if_nameindex()
    void if_freenameindex(struct_if_nameindex*)


