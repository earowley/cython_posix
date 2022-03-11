

cdef extern from *:
    ctypedef unsigned int __uint32_t
    ctypedef unsigned short __uint16_t
    ctypedef unsigned long __uint64_t
    ctypedef unsigned short sa_family_t
    ctypedef unsigned char __uint8_t
    ctypedef __uint8_t uint8_t
    ctypedef __uint16_t uint16_t
    ctypedef __uint32_t uint32_t
    ctypedef __uint64_t uint64_t
    struct sockaddr_storage:
        sa_family_t ss_family
        char __ss_padding[118]
        unsigned long __ss_align
    enum:
        TCP_NODELAY

cdef extern from "<netinet/tcp.h>":
    ctypedef uint32_t tcp_seq
    struct pxdgen_anon_pxdgen_anon_tcphdr_0_0:
        uint16_t th_sport
        uint16_t th_dport
        tcp_seq th_seq
        tcp_seq th_ack
        uint8_t th_x2
        uint8_t th_off
        uint8_t th_flags
        uint16_t th_win
        uint16_t th_sum
        uint16_t th_urp
    struct pxdgen_anon_pxdgen_anon_tcphdr_0_1:
        uint16_t source
        uint16_t dest
        uint32_t seq
        uint32_t ack_seq
        uint16_t res1
        uint16_t doff
        uint16_t fin
        uint16_t syn
        uint16_t rst
        uint16_t psh
        uint16_t ack
        uint16_t urg
        uint16_t res2
        uint16_t window
        uint16_t check
        uint16_t urg_ptr
    union pxdgen_anon_tcphdr_0:
        pass
    struct tcphdr:
        pass
    enum tcp_ca_state:
        TCP_CA_Open = 0
        TCP_CA_Disorder = 1
        TCP_CA_CWR = 2
        TCP_CA_Recovery = 3
        TCP_CA_Loss = 4
    struct tcp_info:
        uint8_t tcpi_state
        uint8_t tcpi_ca_state
        uint8_t tcpi_retransmits
        uint8_t tcpi_probes
        uint8_t tcpi_backoff
        uint8_t tcpi_options
        uint8_t tcpi_snd_wscale
        uint8_t tcpi_rcv_wscale
        uint32_t tcpi_rto
        uint32_t tcpi_ato
        uint32_t tcpi_snd_mss
        uint32_t tcpi_rcv_mss
        uint32_t tcpi_unacked
        uint32_t tcpi_sacked
        uint32_t tcpi_lost
        uint32_t tcpi_retrans
        uint32_t tcpi_fackets
        uint32_t tcpi_last_data_sent
        uint32_t tcpi_last_ack_sent
        uint32_t tcpi_last_data_recv
        uint32_t tcpi_last_ack_recv
        uint32_t tcpi_pmtu
        uint32_t tcpi_rcv_ssthresh
        uint32_t tcpi_rtt
        uint32_t tcpi_rttvar
        uint32_t tcpi_snd_ssthresh
        uint32_t tcpi_snd_cwnd
        uint32_t tcpi_advmss
        uint32_t tcpi_reordering
        uint32_t tcpi_rcv_rtt
        uint32_t tcpi_rcv_space
        uint32_t tcpi_total_retrans
    struct tcp_md5sig:
        sockaddr_storage tcpm_addr
        uint8_t tcpm_flags
        uint8_t tcpm_prefixlen
        uint16_t tcpm_keylen
        uint32_t __tcpm_pad
        uint8_t tcpm_key[80]
    struct tcp_repair_opt:
        uint32_t opt_code
        uint32_t opt_val
    struct tcp_cookie_transactions:
        uint16_t tcpct_flags
        uint8_t __tcpct_pad1
        uint8_t tcpct_cookie_desired
        uint16_t tcpct_s_data_desired
        uint16_t tcpct_used
        uint8_t tcpct_value[536]
    struct tcp_repair_window:
        uint32_t snd_wl1
        uint32_t snd_wnd
        uint32_t max_window
        uint32_t rcv_wnd
        uint32_t rcv_wup
    struct tcp_zerocopy_receive:
        uint64_t address
        uint32_t length
        uint32_t recv_skip_hint


