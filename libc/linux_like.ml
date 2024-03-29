open Types

type sa_family_t = u16
type speed_t = c_uint
type tcflag_t = c_uint
type clockid_t = c_int

(* type timer_t = *mut c_void *)
type key_t = c_int
type id_t = c_uint

let exit_failure : c_int = 1
let exit_success : c_int = 0
let rand_max : c_int = 2147483647
let eof : c_int = -1
let seek_set : c_int = 0
let seek_cur : c_int = 1
let seek_end : c_int = 2
let _iofbf : c_int = 0
let _ionbf : c_int = 2
let _iolbf : c_int = 1
let f_dupfd : c_int = 0
let f_getfd : c_int = 1
let f_setfd : c_int = 2
let f_getfl : c_int = 3
let f_setfl : c_int = 4

(* // linux-specific fcntls *)
let f_setlease : c_int = 1024
let f_getlease : c_int = 1025
let f_notify : c_int = 1026
let f_cancellk : c_int = 1029
let f_dupfd_cloexec : c_int = 1030
let f_setpipe_sz : c_int = 1031
let f_getpipe_sz : c_int = 1032
let f_add_seals : c_int = 1033
let f_get_seals : c_int = 1034
let f_seal_seal : c_int = 0x0001
let f_seal_shrink : c_int = 0x0002
let f_seal_grow : c_int = 0x0004
let f_seal_write : c_int = 0x0008
let sigtrap : c_int = 5
let pthread_create_joinable : c_int = 0
let pthread_create_detached : c_int = 1
let clock_realtime : clockid_t = 0
let clock_monotonic : clockid_t = 1
let clock_process_cputime_id : clockid_t = 2
let clock_thread_cputime_id : clockid_t = 3
let clock_monotonic_raw : clockid_t = 4
let clock_realtime_coarse : clockid_t = 5
let clock_monotonic_coarse : clockid_t = 6
let clock_boottime : clockid_t = 7
let clock_realtime_alarm : clockid_t = 8
let clock_boottime_alarm : clockid_t = 9
let clock_tai : clockid_t = 11
let timer_abstime : c_int = 1
let rusage_self : c_int = 0
let o_rdonly : c_int = 0
let o_wronly : c_int = 1
let o_rdwr : c_int = 2

(* let sock_cloexec: c_int = o_cloexec *)

let s_ififo : mode_t = 4096
let s_ifchr : mode_t = 8192
let s_ifblk : mode_t = 24576
let s_ifdir : mode_t = 16384
let s_ifreg : mode_t = 32768
let s_iflnk : mode_t = 40960
let s_ifsock : mode_t = 49152
let s_ifmt : mode_t = 61440
let s_irwxu : mode_t = 448
let s_ixusr : mode_t = 64
let s_iwusr : mode_t = 128
let s_irusr : mode_t = 256
let s_irwxg : mode_t = 56
let s_ixgrp : mode_t = 8
let s_iwgrp : mode_t = 16
let s_irgrp : mode_t = 32
let s_irwxo : mode_t = 7
let s_ixoth : mode_t = 1
let s_iwoth : mode_t = 2
let s_iroth : mode_t = 4
let f_ok : c_int = 0
let r_ok : c_int = 4
let w_ok : c_int = 2
let x_ok : c_int = 1
let stdin_fileno : c_int = 0
let stdout_fileno : c_int = 1
let stderr_fileno : c_int = 2
let sighup : c_int = 1
let sigint : c_int = 2
let sigquit : c_int = 3
let sigill : c_int = 4
let sigabrt : c_int = 6
let sigfpe : c_int = 8
let sigkill : c_int = 9
let sigsegv : c_int = 11
let sigpipe : c_int = 13
let sigalrm : c_int = 14
let sigterm : c_int = 15
let prot_none : c_int = 0
let prot_read : c_int = 1
let prot_write : c_int = 2
let prot_exec : c_int = 4
let xattr_create : c_int = 0x1
let xattr_replace : c_int = 0x2

(* let lc_ctype_mask: c_int = 1 lsl lc_ctype *)
(* let lc_numeric_mask: c_int = 1 lsl lc_numeric *)
(* let lc_time_mask: c_int = 1 lsl lc_time *)
(* let lc_collate_mask: c_int = 1 lsl lc_collate *)
(* let lc_monetary_mask: c_int = 1 lsl lc_monetary *)
(* let lc_messages_mask: c_int = 1 lsl lc_messages *)
(* // lc_all_mask defined per platform *)

let map_file : c_int = 0x0000
let map_shared : c_int = 0x0001
let map_private : c_int = 0x0002
let map_fixed : c_int = 0x0010

(* let map_failed: *mut c_void = !0 as *mut c_void *)

(* // ms_ flags for msync(2) *)
let ms_async : c_int = 0x0001
let ms_invalidate : c_int = 0x0002
let ms_sync : c_int = 0x0004

(* // ms_ flags for mount(2) *)
let ms_rdonly : c_ulong = 0x01
let ms_nosuid : c_ulong = 0x02
let ms_nodev : c_ulong = 0x04
let ms_noexec : c_ulong = 0x08
let ms_synchronous : c_ulong = 0x10
let ms_remount : c_ulong = 0x20
let ms_mandlock : c_ulong = 0x40
let ms_dirsync : c_ulong = 0x80
let ms_noatime : c_ulong = 0x0400
let ms_nodiratime : c_ulong = 0x0800
let ms_bind : c_ulong = 0x1000
let ms_move : c_ulong = 0x2000
let ms_rec : c_ulong = 0x4000
let ms_silent : c_ulong = 0x8000
let ms_posixacl : c_ulong = 0x010000
let ms_unbindable : c_ulong = 0x020000
let ms_private : c_ulong = 0x040000
let ms_slave : c_ulong = 0x080000
let ms_shared : c_ulong = 0x100000
let ms_relatime : c_ulong = 0x200000
let ms_kernmount : c_ulong = 0x400000
let ms_i_version : c_ulong = 0x800000
let ms_strictatime : c_ulong = 0x1000000
let ms_lazytime : c_ulong = 0x2000000
let ms_active : c_ulong = 0x40000000
let ms_mgc_val : c_ulong = 0xc0ed0000
let ms_mgc_msk : c_ulong = 0xffff0000
let scm_rights : c_int = 0x01
let scm_credentials : c_int = 0x02
let prot_growsdown : c_int = 0x1000000
let prot_growsup : c_int = 0x2000000
let map_type : c_int = 0x000f
let madv_normal : c_int = 0
let madv_random : c_int = 1
let madv_sequential : c_int = 2
let madv_willneed : c_int = 3
let madv_dontneed : c_int = 4
let madv_free : c_int = 8
let madv_remove : c_int = 9
let madv_dontfork : c_int = 10
let madv_dofork : c_int = 11
let madv_mergeable : c_int = 12
let madv_unmergeable : c_int = 13
let madv_hugepage : c_int = 14
let madv_nohugepage : c_int = 15
let madv_dontdump : c_int = 16
let madv_dodump : c_int = 17
let madv_wipeonfork : c_int = 18
let madv_keeponfork : c_int = 19
let madv_cold : c_int = 20
let madv_pageout : c_int = 21
let madv_hwpoison : c_int = 100
let iff_up : c_int = 0x1
let iff_broadcast : c_int = 0x2
let iff_debug : c_int = 0x4
let iff_loopback : c_int = 0x8
let iff_pointopoint : c_int = 0x10
let iff_notrailers : c_int = 0x20
let iff_running : c_int = 0x40
let iff_noarp : c_int = 0x80
let iff_promisc : c_int = 0x100
let iff_allmulti : c_int = 0x200
let iff_master : c_int = 0x400
let iff_slave : c_int = 0x800
let iff_multicast : c_int = 0x1000
let iff_portsel : c_int = 0x2000
let iff_automedia : c_int = 0x4000
let iff_dynamic : c_int = 0x8000
let sol_ip : c_int = 0
let sol_tcp : c_int = 6
let sol_udp : c_int = 17
let sol_ipv6 : c_int = 41
let sol_icmpv6 : c_int = 58
let sol_raw : c_int = 255
let sol_decnet : c_int = 261
let sol_x25 : c_int = 262
let sol_packet : c_int = 263
let sol_atm : c_int = 264
let sol_aal : c_int = 265
let sol_irda : c_int = 266
let sol_netbeui : c_int = 267
let sol_llc : c_int = 268
let sol_dccp : c_int = 269
let sol_netlink : c_int = 270
let sol_tipc : c_int = 271
let sol_bluetooth : c_int = 274
let sol_alg : c_int = 279
let af_unspec : c_int = 0
let af_unix : c_int = 1
let af_local : c_int = 1
let af_inet : c_int = 2
let af_ax25 : c_int = 3
let af_ipx : c_int = 4
let af_appletalk : c_int = 5
let af_netrom : c_int = 6
let af_bridge : c_int = 7
let af_atmpvc : c_int = 8
let af_x25 : c_int = 9
let af_inet6 : c_int = 10
let af_rose : c_int = 11
let af_decnet : c_int = 12
let af_netbeui : c_int = 13
let af_security : c_int = 14
let af_key : c_int = 15
let af_netlink : c_int = 16
let af_route : c_int = af_netlink
let af_packet : c_int = 17
let af_ash : c_int = 18
let af_econet : c_int = 19
let af_atmsvc : c_int = 20
let af_rds : c_int = 21
let af_sna : c_int = 22
let af_irda : c_int = 23
let af_pppox : c_int = 24
let af_wanpipe : c_int = 25
let af_llc : c_int = 26
let af_can : c_int = 29
let af_tipc : c_int = 30
let af_bluetooth : c_int = 31
let af_iucv : c_int = 32
let af_rxrpc : c_int = 33
let af_isdn : c_int = 34
let af_phonet : c_int = 35
let af_ieee802154 : c_int = 36
let af_caif : c_int = 37
let af_alg : c_int = 38
let pf_unspec : c_int = af_unspec
let pf_unix : c_int = af_unix
let pf_local : c_int = af_local
let pf_inet : c_int = af_inet
let pf_ax25 : c_int = af_ax25
let pf_ipx : c_int = af_ipx
let pf_appletalk : c_int = af_appletalk
let pf_netrom : c_int = af_netrom
let pf_bridge : c_int = af_bridge
let pf_atmpvc : c_int = af_atmpvc
let pf_x25 : c_int = af_x25
let pf_inet6 : c_int = af_inet6
let pf_rose : c_int = af_rose
let pf_decnet : c_int = af_decnet
let pf_netbeui : c_int = af_netbeui
let pf_security : c_int = af_security
let pf_key : c_int = af_key
let pf_netlink : c_int = af_netlink
let pf_route : c_int = af_route
let pf_packet : c_int = af_packet
let pf_ash : c_int = af_ash
let pf_econet : c_int = af_econet
let pf_atmsvc : c_int = af_atmsvc
let pf_rds : c_int = af_rds
let pf_sna : c_int = af_sna
let pf_irda : c_int = af_irda
let pf_pppox : c_int = af_pppox
let pf_wanpipe : c_int = af_wanpipe
let pf_llc : c_int = af_llc
let pf_can : c_int = af_can
let pf_tipc : c_int = af_tipc
let pf_bluetooth : c_int = af_bluetooth
let pf_iucv : c_int = af_iucv
let pf_rxrpc : c_int = af_rxrpc
let pf_isdn : c_int = af_isdn
let pf_phonet : c_int = af_phonet
let pf_ieee802154 : c_int = af_ieee802154
let pf_caif : c_int = af_caif
let pf_alg : c_int = af_alg
let msg_oob : c_int = 1
let msg_peek : c_int = 2
let msg_dontroute : c_int = 4
let msg_ctrunc : c_int = 8
let msg_trunc : c_int = 0x20
let msg_dontwait : c_int = 0x40
let msg_eor : c_int = 0x80
let msg_waitall : c_int = 0x100
let msg_fin : c_int = 0x200
let msg_syn : c_int = 0x400
let msg_confirm : c_int = 0x800
let msg_rst : c_int = 0x1000
let msg_errqueue : c_int = 0x2000
let msg_nosignal : c_int = 0x4000
let msg_more : c_int = 0x8000
let msg_waitforone : c_int = 0x10000
let msg_fastopen : c_int = 0x20000000
let msg_cmsg_cloexec : c_int = 0x40000000

(* let scm_timestamp: c_int = so_timestamp *)

let sock_raw : c_int = 3
let sock_rdm : c_int = 4
let ip_tos : c_int = 1
let ip_ttl : c_int = 2
let ip_hdrincl : c_int = 3
let ip_options : c_int = 4
let ip_router_alert : c_int = 5
let ip_recvopts : c_int = 6
let ip_retopts : c_int = 7
let ip_pktinfo : c_int = 8
let ip_pktoptions : c_int = 9
let ip_mtu_discover : c_int = 10
let ip_recverr : c_int = 11
let ip_recvttl : c_int = 12
let ip_recvtos : c_int = 13
let ip_mtu : c_int = 14
let ip_freebind : c_int = 15
let ip_ipsec_policy : c_int = 16
let ip_xfrm_policy : c_int = 17
let ip_passsec : c_int = 18
let ip_transparent : c_int = 19
let ip_origdstaddr : c_int = 20
let ip_recvorigdstaddr : c_int = ip_origdstaddr
let ip_minttl : c_int = 21
let ip_nodefrag : c_int = 22
let ip_checksum : c_int = 23
let ip_bind_address_no_port : c_int = 24
let ip_multicast_if : c_int = 32
let ip_multicast_ttl : c_int = 33
let ip_multicast_loop : c_int = 34
let ip_add_membership : c_int = 35
let ip_drop_membership : c_int = 36
let ip_unblock_source : c_int = 37
let ip_block_source : c_int = 38
let ip_add_source_membership : c_int = 39
let ip_drop_source_membership : c_int = 40
let ip_msfilter : c_int = 41
let ip_multicast_all : c_int = 49
let ip_unicast_if : c_int = 50
let ip_default_multicast_ttl : c_int = 1
let ip_default_multicast_loop : c_int = 1
let ip_pmtudisc_dont : c_int = 0
let ip_pmtudisc_want : c_int = 1
let ip_pmtudisc_do : c_int = 2
let ip_pmtudisc_probe : c_int = 3
let ip_pmtudisc_interface : c_int = 4
let ip_pmtudisc_omit : c_int = 5

(* // ipproto_ip defined in src/unix/mod.rs *)
(* /// hop-by-hop option header *)
let ipproto_hopopts : c_int = 0

(* // ipproto_icmp defined in src/unix/mod.rs *)
(* /// group mgmt protocol *)
let ipproto_igmp : c_int = 2

(* /// for compatibility *)
let ipproto_ipip : c_int = 4

(* // ipproto_tcp defined in src/unix/mod.rs *)
(* /// exterior gateway protocol *)
let ipproto_egp : c_int = 8

(* /// pup *)
let ipproto_pup : c_int = 12

(* // ipproto_udp defined in src/unix/mod.rs *)
(* /// xns idp *)
let ipproto_idp : c_int = 22

(* /// tp-4 w/ class negotiation *)
let ipproto_tp : c_int = 29

(* /// dccp *)
let ipproto_dccp : c_int = 33

(* // ipproto_ipv6 defined in src/unix/mod.rs *)
(* /// ip6 routing header *)
let ipproto_routing : c_int = 43

(* /// ip6 fragmentation header *)
let ipproto_fragment : c_int = 44

(* /// resource reservation *)
let ipproto_rsvp : c_int = 46

(* /// general routing encap. *)
let ipproto_gre : c_int = 47

(* /// ip6 encap sec. payload *)
let ipproto_esp : c_int = 50

(* /// ip6 auth header *)
let ipproto_ah : c_int = 51

(* // ipproto_icmpv6 defined in src/unix/mod.rs *)
(* /// ip6 no next header *)
let ipproto_none : c_int = 59

(* /// ip6 destination option *)
let ipproto_dstopts : c_int = 60
let ipproto_mtp : c_int = 92

(* /// encapsulation header *)
let ipproto_encap : c_int = 98

(* /// protocol indep. multicast *)
let ipproto_pim : c_int = 103

(* /// ip payload comp. protocol *)
let ipproto_comp : c_int = 108

(* /// sctp *)
let ipproto_sctp : c_int = 132
let ipproto_mh : c_int = 135
let ipproto_udplite : c_int = 136

(* /// raw ip packet *)
let ipproto_raw : c_int = 255
let ipproto_beetph : c_int = 94
let ipproto_mpls : c_int = 137

(* /// multipath tcp *)
let ipproto_mptcp : c_int = 262

(* /// ethernet-within-ipv6 encapsulation. *)
let ipproto_ethernet : c_int = 143
let mcast_exclude : c_int = 0
let mcast_include : c_int = 1
let mcast_join_group : c_int = 42
let mcast_block_source : c_int = 43
let mcast_unblock_source : c_int = 44
let mcast_leave_group : c_int = 45
let mcast_join_source_group : c_int = 46
let mcast_leave_source_group : c_int = 47
let mcast_msfilter : c_int = 48
let ipv6_addrform : c_int = 1
let ipv6_2292pktinfo : c_int = 2
let ipv6_2292hopopts : c_int = 3
let ipv6_2292dstopts : c_int = 4
let ipv6_2292rthdr : c_int = 5
let ipv6_2292pktoptions : c_int = 6
let ipv6_checksum : c_int = 7
let ipv6_2292hoplimit : c_int = 8
let ipv6_nexthop : c_int = 9
let ipv6_authhdr : c_int = 10
let ipv6_unicast_hops : c_int = 16
let ipv6_multicast_if : c_int = 17
let ipv6_multicast_hops : c_int = 18
let ipv6_multicast_loop : c_int = 19
let ipv6_add_membership : c_int = 20
let ipv6_drop_membership : c_int = 21
let ipv6_router_alert : c_int = 22
let ipv6_mtu_discover : c_int = 23
let ipv6_mtu : c_int = 24
let ipv6_recverr : c_int = 25
let ipv6_v6only : c_int = 26
let ipv6_join_anycast : c_int = 27
let ipv6_leave_anycast : c_int = 28
let ipv6_ipsec_policy : c_int = 34
let ipv6_xfrm_policy : c_int = 35
let ipv6_hdrincl : c_int = 36
let ipv6_recvpktinfo : c_int = 49
let ipv6_pktinfo : c_int = 50
let ipv6_recvhoplimit : c_int = 51
let ipv6_hoplimit : c_int = 52
let ipv6_recvhopopts : c_int = 53
let ipv6_hopopts : c_int = 54
let ipv6_rthdrdstopts : c_int = 55
let ipv6_recvrthdr : c_int = 56
let ipv6_rthdr : c_int = 57
let ipv6_recvdstopts : c_int = 58
let ipv6_dstopts : c_int = 59
let ipv6_recvpathmtu : c_int = 60
let ipv6_pathmtu : c_int = 61
let ipv6_dontfrag : c_int = 62
let ipv6_recvtclass : c_int = 66
let ipv6_tclass : c_int = 67
let ipv6_autoflowlabel : c_int = 70
let ipv6_addr_preferences : c_int = 72
let ipv6_minhopcount : c_int = 73
let ipv6_origdstaddr : c_int = 74
let ipv6_recvorigdstaddr : c_int = ipv6_origdstaddr
let ipv6_transparent : c_int = 75
let ipv6_unicast_if : c_int = 76
let ipv6_prefer_src_tmp : c_int = 0x0001
let ipv6_prefer_src_public : c_int = 0x0002
let ipv6_prefer_src_pubtmp_default : c_int = 0x0100
let ipv6_prefer_src_coa : c_int = 0x0004
let ipv6_prefer_src_home : c_int = 0x0400
let ipv6_prefer_src_cga : c_int = 0x0008
let ipv6_prefer_src_noncga : c_int = 0x0800
let ipv6_pmtudisc_dont : c_int = 0
let ipv6_pmtudisc_want : c_int = 1
let ipv6_pmtudisc_do : c_int = 2
let ipv6_pmtudisc_probe : c_int = 3
let ipv6_pmtudisc_interface : c_int = 4
let ipv6_pmtudisc_omit : c_int = 5
let tcp_nodelay : c_int = 1
let tcp_maxseg : c_int = 2
let tcp_cork : c_int = 3
let tcp_keepidle : c_int = 4
let tcp_keepintvl : c_int = 5
let tcp_keepcnt : c_int = 6
let tcp_syncnt : c_int = 7
let tcp_linger2 : c_int = 8
let tcp_defer_accept : c_int = 9
let tcp_window_clamp : c_int = 10
let tcp_info : c_int = 11
let tcp_quickack : c_int = 12
let tcp_congestion : c_int = 13
let tcp_md5sig : c_int = 14
let tcp_thin_linear_timeouts : c_int = 16
let tcp_thin_dupack : c_int = 17
let tcp_user_timeout : c_int = 18
let tcp_repair : c_int = 19
let tcp_repair_queue : c_int = 20
let tcp_queue_seq : c_int = 21
let tcp_repair_options : c_int = 22
let tcp_fastopen : c_int = 23
let tcp_timestamp : c_int = 24
let tcp_notsent_lowat : c_int = 25
let tcp_cc_info : c_int = 26
let tcp_save_syn : c_int = 27
let tcp_saved_syn : c_int = 28
let so_debug : c_int = 1
let shut_rd : c_int = 0
let shut_wr : c_int = 1
let shut_rdwr : c_int = 2
let lock_sh : c_int = 1
let lock_ex : c_int = 2
let lock_nb : c_int = 4
let lock_un : c_int = 8
let ss_onstack : c_int = 1
let ss_disable : c_int = 2
let path_max : c_int = 4096
let uio_maxiov : c_int = 1024
let fd_setsize : usize = 1024
let epollin : c_int = 0x1
let epollpri : c_int = 0x2
let epollout : c_int = 0x4
let epollerr : c_int = 0x8
let epollhup : c_int = 0x10
let epollrdnorm : c_int = 0x40
let epollrdband : c_int = 0x80
let epollwrnorm : c_int = 0x100
let epollwrband : c_int = 0x200
let epollmsg : c_int = 0x400
let epollrdhup : c_int = 0x2000
let epollexclusive : c_int = 0x10000000
let epollwakeup : c_int = 0x20000000
let epolloneshot : c_int = 0x40000000
let epollet : c_int = 0x80000000
let epoll_ctl_add : c_int = 1
let epoll_ctl_mod : c_int = 3
let epoll_ctl_del : c_int = 2
let epoll_cloexec : c_int = 0x80000
let mnt_force : c_int = 0x1
let mnt_detach : c_int = 0x2
let mnt_expire : c_int = 0x4
let umount_nofollow : c_int = 0x8
let q_getfmt : c_int = 0x800004
let q_getinfo : c_int = 0x800005
let q_setinfo : c_int = 0x800006
let qif_blimits : u32 = 1l
let qif_space : u32 = 2l
let qif_ilimits : u32 = 4l
let qif_inodes : u32 = 8l
let qif_btime : u32 = 16l
let qif_itime : u32 = 32l
let qif_limits : u32 = 5l
let qif_usage : u32 = 10l
let qif_times : u32 = 48l
let qif_all : u32 = 63l
let q_sync : c_int = 0x800001
let q_quotaon : c_int = 0x800002
let q_quotaoff : c_int = 0x800003
let q_getquota : c_int = 0x800007
let q_setquota : c_int = 0x800008
let tcioff : c_int = 2
let tcion : c_int = 3
let tcooff : c_int = 0
let tcoon : c_int = 1
let tciflush : c_int = 0
let tcoflush : c_int = 1
let tcioflush : c_int = 2
let nl0 : tcflag_t = 0x00000000
let nl1 : tcflag_t = 0x00000100
let tab0 : tcflag_t = 0x00000000
let cr0 : tcflag_t = 0x00000000
let ff0 : tcflag_t = 0x00000000
let bs0 : tcflag_t = 0x00000000
let vt0 : tcflag_t = 0x00000000
let verase : usize = 2
let vkill : usize = 3
let vintr : usize = 0
let vquit : usize = 1
let vlnext : usize = 15
let ignbrk : tcflag_t = 0x00000001
let brkint : tcflag_t = 0x00000002
let ignpar : tcflag_t = 0x00000004
let parmrk : tcflag_t = 0x00000008
let inpck : tcflag_t = 0x00000010
let istrip : tcflag_t = 0x00000020
let inlcr : tcflag_t = 0x00000040
let igncr : tcflag_t = 0x00000080
let icrnl : tcflag_t = 0x00000100
let ixany : tcflag_t = 0x00000800
let imaxbel : tcflag_t = 0x00002000
let opost : tcflag_t = 0x1
let cs5 : tcflag_t = 0x00000000
let crtscts : tcflag_t = 0x80000000
let echo : tcflag_t = 0x00000008
let ocrnl : tcflag_t = 0o000010
let onocr : tcflag_t = 0o000020
let onlret : tcflag_t = 0o000040
let ofill : tcflag_t = 0o000100
let ofdel : tcflag_t = 0o000200
let clone_vm : c_int = 0x100
let clone_fs : c_int = 0x200
let clone_files : c_int = 0x400
let clone_sighand : c_int = 0x800
let clone_ptrace : c_int = 0x2000
let clone_vfork : c_int = 0x4000
let clone_parent : c_int = 0x8000
let clone_thread : c_int = 0x10000
let clone_newns : c_int = 0x20000
let clone_sysvsem : c_int = 0x40000
let clone_settls : c_int = 0x80000
let clone_parent_settid : c_int = 0x100000
let clone_child_cleartid : c_int = 0x200000
let clone_detached : c_int = 0x400000
let clone_untraced : c_int = 0x800000
let clone_child_settid : c_int = 0x01000000
let clone_newcgroup : c_int = 0x02000000
let clone_newuts : c_int = 0x04000000
let clone_newipc : c_int = 0x08000000
let clone_newuser : c_int = 0x10000000
let clone_newpid : c_int = 0x20000000
let clone_newnet : c_int = 0x40000000
let clone_io : c_int = 0x80000000
let wnohang : c_int = 0x00000001
let wuntraced : c_int = 0x00000002
let wstopped : c_int = wuntraced
let wexited : c_int = 0x00000004
let wcontinued : c_int = 0x00000008
let wnowait : c_int = 0x01000000

(* // options for personality(2). *)
let addr_no_randomize : c_int = 0x0040000
let mmap_page_zero : c_int = 0x0100000
let addr_compat_layout : c_int = 0x0200000
let read_implies_exec : c_int = 0x0400000
let addr_limit_32bit : c_int = 0x0800000
let short_inode : c_int = 0x1000000
let whole_seconds : c_int = 0x2000000
let sticky_timeouts : c_int = 0x4000000
let addr_limit_3gb : c_int = 0x8000000

(* // options set using ptrace_setoptions. *)
let ptrace_o_tracesysgood : c_int = 0x00000001
let ptrace_o_tracefork : c_int = 0x00000002
let ptrace_o_tracevfork : c_int = 0x00000004
let ptrace_o_traceclone : c_int = 0x00000008
let ptrace_o_traceexec : c_int = 0x00000010
let ptrace_o_tracevforkdone : c_int = 0x00000020
let ptrace_o_traceexit : c_int = 0x00000040
let ptrace_o_traceseccomp : c_int = 0x00000080
let ptrace_o_suspend_seccomp : c_int = 0x00200000
let ptrace_o_exitkill : c_int = 0x00100000
let ptrace_o_mask : c_int = 0x003000ff

(* // wait extended result codes for the above trace options. *)
let ptrace_event_fork : c_int = 1
let ptrace_event_vfork : c_int = 2
let ptrace_event_clone : c_int = 3
let ptrace_event_exec : c_int = 4
let ptrace_event_vfork_done : c_int = 5
let ptrace_event_exit : c_int = 6
let ptrace_event_seccomp : c_int = 7
let __wnothread : c_int = 0x20000000
let __wall : c_int = 0x40000000
let __wclone : c_int = 0x80000000
let splice_f_move : c_uint = 0x01
let splice_f_nonblock : c_uint = 0x02
let splice_f_more : c_uint = 0x04
let splice_f_gift : c_uint = 0x08
let rtld_local : c_int = 0
let rtld_lazy : c_int = 1
let posix_fadv_normal : c_int = 0
let posix_fadv_random : c_int = 1
let posix_fadv_sequential : c_int = 2
let posix_fadv_willneed : c_int = 3
let at_fdcwd : c_int = -100
let at_symlink_nofollow : c_int = 0x100
let at_removedir : c_int = 0x200
let at_symlink_follow : c_int = 0x400
let at_no_automount : c_int = 0x800
let at_empty_path : c_int = 0x1000
let at_recursive : c_int = 0x8000
let log_cron : c_int = 9 lsl 3
let log_authpriv : c_int = 10 lsl 3
let log_ftp : c_int = 11 lsl 3
let log_perror : c_int = 0x20
let pipe_buf : usize = 4096
let si_load_shift : c_uint = 16

(* // si_code values for sigbus signal *)
let bus_adraln : c_int = 1
let bus_adrerr : c_int = 2
let bus_objerr : c_int = 3

(* // linux-specific si_code values for sigbus signal *)
let bus_mceerr_ar : c_int = 4
let bus_mceerr_ao : c_int = 5

(* // si_code values for sigchld signal *)
let cld_exited : c_int = 1
let cld_killed : c_int = 2
let cld_dumped : c_int = 3
let cld_trapped : c_int = 4
let cld_stopped : c_int = 5
let cld_continued : c_int = 6
let sigev_signal : c_int = 0
let sigev_none : c_int = 1
let sigev_thread : c_int = 2
let p_all : idtype_t = 0
let p_pid : idtype_t = 1
let p_pgid : idtype_t = 2
let utime_omit : c_long = 1073741822
let utime_now : c_long = 1073741823
let pollin : c_short = 0x1
let pollpri : c_short = 0x2
let pollout : c_short = 0x4
let pollerr : c_short = 0x8
let pollhup : c_short = 0x10
let pollnval : c_short = 0x20
let pollrdnorm : c_short = 0x040
let pollrdband : c_short = 0x080
let iptos_lowdelay : u8 = 0x10
let iptos_throughput : u8 = 0x08
let iptos_reliability : u8 = 0x04
let iptos_mincost : u8 = 0x02
let iptos_prec_netcontrol : u8 = 0xe0
let iptos_prec_internetcontrol : u8 = 0xc0
let iptos_prec_critic_ecp : u8 = 0xa0
let iptos_prec_flashoverride : u8 = 0x80
let iptos_prec_flash : u8 = 0x60
let iptos_prec_immediate : u8 = 0x40
let iptos_prec_priority : u8 = 0x20
let iptos_prec_routine : u8 = 0x00
let iptos_ecn_mask : u8 = 0x03
let iptos_ecn_ect1 : u8 = 0x01
let iptos_ecn_ect0 : u8 = 0x02
let iptos_ecn_ce : u8 = 0x03
let ipopt_copy : u8 = 0x80
let ipopt_class_mask : u8 = 0x60
let ipopt_number_mask : u8 = 0x1f
let ipopt_control : u8 = 0x00
let ipopt_reserved1 : u8 = 0x20
let ipopt_measurement : u8 = 0x40
let ipopt_reserved2 : u8 = 0x60
let ipopt_end : u8 = 0 lor ipopt_control
let ipopt_noop : u8 = 1 lor ipopt_control
let ipopt_sec : u8 = 2 lor ipopt_control lor ipopt_copy
let ipopt_lsrr : u8 = 3 lor ipopt_control lor ipopt_copy
let ipopt_timestamp : u8 = 4 lor ipopt_measurement
let ipopt_rr : u8 = 7 lor ipopt_control
let ipopt_sid : u8 = 8 lor ipopt_control lor ipopt_copy
let ipopt_ssrr : u8 = 9 lor ipopt_control lor ipopt_copy
let ipopt_ra : u8 = 20 lor ipopt_control lor ipopt_copy
let ipversion : u8 = 4
let maxttl : u8 = 255
let ipdefttl : u8 = 64
let ipopt_optval : u8 = 0
let ipopt_olen : u8 = 1
let ipopt_offset : u8 = 2
let ipopt_minoff : u8 = 4
let max_ipoptlen : u8 = 40
let ipopt_nop : u8 = ipopt_noop
let ipopt_eol : u8 = ipopt_end
let ipopt_ts : u8 = ipopt_timestamp
let ipopt_ts_tsonly : u8 = 0
let ipopt_ts_tsandaddr : u8 = 1
let ipopt_ts_prespec : u8 = 3
let arpop_rrequest : u16 = 3
let arpop_rreply : u16 = 4
let arpop_inrequest : u16 = 8
let arpop_inreply : u16 = 9
let arpop_nak : u16 = 10
let atf_netmask : c_int = 0x20
let atf_dontpub : c_int = 0x40
let arphrd_netrom : u16 = 0
let arphrd_ether : u16 = 1
let arphrd_eether : u16 = 2
let arphrd_ax25 : u16 = 3
let arphrd_pronet : u16 = 4
let arphrd_chaos : u16 = 5
let arphrd_ieee802 : u16 = 6
let arphrd_arcnet : u16 = 7
let arphrd_appletlk : u16 = 8
let arphrd_dlci : u16 = 15
let arphrd_atm : u16 = 19
let arphrd_metricom : u16 = 23
let arphrd_ieee1394 : u16 = 24
let arphrd_eui64 : u16 = 27
let arphrd_infiniband : u16 = 32
let arphrd_slip : u16 = 256
let arphrd_cslip : u16 = 257
let arphrd_slip6 : u16 = 258
let arphrd_cslip6 : u16 = 259
let arphrd_rsrvd : u16 = 260
let arphrd_adapt : u16 = 264
let arphrd_rose : u16 = 270
let arphrd_x25 : u16 = 271
let arphrd_hwx25 : u16 = 272
let arphrd_can : u16 = 280
let arphrd_ppp : u16 = 512
let arphrd_cisco : u16 = 513
let arphrd_hdlc : u16 = arphrd_cisco
let arphrd_lapb : u16 = 516
let arphrd_ddcmp : u16 = 517
let arphrd_rawhdlc : u16 = 518
let arphrd_tunnel : u16 = 768
let arphrd_tunnel6 : u16 = 769
let arphrd_frad : u16 = 770
let arphrd_skip : u16 = 771
let arphrd_loopback : u16 = 772
let arphrd_localtlk : u16 = 773
let arphrd_fddi : u16 = 774
let arphrd_bif : u16 = 775
let arphrd_sit : u16 = 776
let arphrd_ipddp : u16 = 777
let arphrd_ipgre : u16 = 778
let arphrd_pimreg : u16 = 779
let arphrd_hippi : u16 = 780
let arphrd_ash : u16 = 781
let arphrd_econet : u16 = 782
let arphrd_irda : u16 = 783
let arphrd_fcpp : u16 = 784
let arphrd_fcal : u16 = 785
let arphrd_fcpl : u16 = 786
let arphrd_fcfabric : u16 = 787
let arphrd_ieee802_tr : u16 = 800
let arphrd_ieee80211 : u16 = 801
let arphrd_ieee80211_prism : u16 = 802
let arphrd_ieee80211_radiotap : u16 = 803
let arphrd_ieee802154 : u16 = 804
let arphrd_void : u16 = 0xffff
let arphrd_none : u16 = 0xfffe
