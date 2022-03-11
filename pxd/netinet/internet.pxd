

cdef extern from *:
    ctypedef unsigned int __uint32_t
    ctypedef unsigned short __uint16_t
    ctypedef unsigned char __uint8_t
    ctypedef unsigned short sa_family_t
    ctypedef __uint32_t uint32_t
    ctypedef __uint16_t uint16_t
    ctypedef __uint8_t uint8_t
    struct sockaddr_storage:
        sa_family_t ss_family
        char __ss_padding[118]
        unsigned long __ss_align
    struct sockaddr:
        sa_family_t sa_family
        char sa_data[14]
    enum:
        IPPROTO_IP
        IPPROTO_ICMP
        IPPROTO_TCP
        IPPROTO_UDP
        INADDR_ANY
        INADDR_BROADCAST

cdef extern from "<netinet/in.h>":
    ctypedef uint32_t in_addr_t
    struct in_addr:
        in_addr_t s_addr
    ctypedef uint16_t in_port_t
    union pxdgen_anon_in6_addr_0:
        uint8_t __u6_addr8[16]
        uint16_t __u6_addr16[8]
        uint32_t __u6_addr32[4]
    struct in6_addr:
        pass
    in6_addr in6addr_any
    in6_addr in6addr_loopback
    struct sockaddr_in:
        sa_family_t sin_family
        in_port_t sin_port
        in_addr sin_addr
        unsigned char sin_zero[8]
    struct sockaddr_in6:
        sa_family_t sin6_family
        in_port_t sin6_port
        uint32_t sin6_flowinfo
        in6_addr sin6_addr
        uint32_t sin6_scope_id
    struct ip_mreq:
        in_addr imr_multiaddr
        in_addr imr_interface
    struct ip_mreq_source:
        in_addr imr_multiaddr
        in_addr imr_interface
        in_addr imr_sourceaddr
    struct ipv6_mreq:
        in6_addr ipv6mr_multiaddr
        unsigned int ipv6mr_interface
    struct group_req:
        uint32_t gr_interface
        sockaddr_storage gr_group
    struct group_source_req:
        uint32_t gsr_interface
        sockaddr_storage gsr_group
        sockaddr_storage gsr_source
    struct ip_msfilter:
        in_addr imsf_multiaddr
        in_addr imsf_interface
        uint32_t imsf_fmode
        uint32_t imsf_numsrc
        in_addr imsf_slist[1]
    struct group_filter:
        uint32_t gf_interface
        sockaddr_storage gf_group
        uint32_t gf_fmode
        uint32_t gf_numsrc
        sockaddr_storage gf_slist[1]
    uint32_t ntohl(uint32_t)
    uint16_t ntohs(uint16_t)
    uint32_t htonl(uint32_t)
    uint16_t htons(uint16_t)
    int bindresvport(int, sockaddr_in*)
    int bindresvport6(int, sockaddr_in6*)


