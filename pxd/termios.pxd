
cdef extern from *:
    ctypedef unsigned char cc_t
    ctypedef unsigned int speed_t
    ctypedef int __pid_t
    ctypedef unsigned int tcflag_t
    struct termios:
        tcflag_t c_iflag
        tcflag_t c_oflag
        tcflag_t c_cflag
        tcflag_t c_lflag
        cc_t c_line
        cc_t c_cc[32]
        speed_t c_ispeed
        speed_t c_ospeed
    enum:
        NCCS
        VEOF
        VEOL
        VERASE
        VINTR
        VKILL
        VMIN
        VQUIT
        VSTART
        VSTOP
        VSUSP
        VTIME
        BRKINT
        ICRNL
        IGNBRK
        IGNCR
        IGNPAR
        INLCR
        INPCK
        ISTRIP
        IXANY
        IXOFF
        IXON
        PARMRK
        OPOST
        ONLCR
        OCRNL
        ONOCR
        ONLRET
        OFDEL
        OFILL
        NLDLY
        NL0
        NL1
        CRDLY
        CR0
        CR1
        CR2
        CR3
        TABDLY
        TAB0
        TAB1
        TAB2
        TAB3
        BSDLY
        BS0
        BS1
        VTDLY
        VT0
        VT1
        FFDLY
        FF0
        FF1
        B0
        B50
        B75
        B110
        B134
        B150
        B200
        B300
        B600
        B1200
        B1800
        B2400
        B4800
        B9600
        B19200
        B38400
        CSIZE
        CS5
        CS6
        CS7
        CS8
        CSTOPB
        CREAD
        PARENB
        PARODD
        HUPCL
        CLOCAL
        ECHO
        ECHOE
        ECHOK
        ECHONL
        ICANON
        IEXTEN
        ISIG
        NOFLSH
        TOSTOP
        TCSANOW
        TCSADRAIN
        TCSAFLUSH
        TCIFLUSH
        TCIOFLUSH
        TCOFLUSH
        TCIOFF
        TCION
        TCOOFF
        TCOON


cdef extern from "<termios.h>":
    ctypedef __pid_t pid_t
    speed_t cfgetospeed(termios*)
    speed_t cfgetispeed(termios*)
    int cfsetospeed(termios*, speed_t)
    int cfsetispeed(termios*, speed_t)
    int cfsetspeed(termios*, speed_t)
    int tcgetattr(int, termios*)
    int tcsetattr(int, int, termios*)
    void cfmakeraw(termios*)
    int tcsendbreak(int, int)
    int tcdrain(int)
    int tcflush(int, int)
    int tcflow(int, int)
    __pid_t tcgetsid(int)


