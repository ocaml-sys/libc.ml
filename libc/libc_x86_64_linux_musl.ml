open Types
include Linux_like

type clock_t = c_long
type time_t = c_long
type suseconds_t = c_long
type ino_t = u64
type off_t = i64
type blkcnt_t = i64
type shmatt_t = c_ulong
type msgqnum_t = c_ulong
type msglen_t = c_ulong
type fsblkcnt_t = c_ulonglong
type fsfilcnt_t = c_ulonglong
type rlim_t = c_ulonglong

(* // include/sys/mman.h *)
(*  huge page size encoding when map_hugetlb is specified, and a huge page *)
(*  size other than the default is desired.  see hugetlb_encode.h. *)
(*  all known huge page size encodings are provided here.  it is the *)
(*  responsibility of the application to know which sizes are supported on *)
(*  the running system.  see mmap(2) man page for details. *)
let map_huge_shift : c_int = 26
let map_huge_mask : c_int = 0x3f
let map_huge_64kb : c_int = 16 lsl map_huge_shift
let map_huge_512kb : c_int = 19 lsl map_huge_shift
let map_huge_1mb : c_int = 20 lsl map_huge_shift
let map_huge_2mb : c_int = 21 lsl map_huge_shift
let map_huge_8mb : c_int = 23 lsl map_huge_shift
let map_huge_16mb : c_int = 24 lsl map_huge_shift
let map_huge_32mb : c_int = 25 lsl map_huge_shift
let map_huge_256mb : c_int = 28 lsl map_huge_shift
let map_huge_512mb : c_int = 29 lsl map_huge_shift
let map_huge_1gb : c_int = 30 lsl map_huge_shift
let map_huge_2gb : c_int = 31 lsl map_huge_shift
let map_huge_16gb : c_int = 34 lsl map_huge_shift
let ms_rmt_mask : c_ulong = 0x02800051
let sfd_cloexec : c_int = 0x080000
let nccs : usize = 32
let o_trunc : c_int = 512
let o_noatime : c_int = 0o1000000
let o_cloexec : c_int = 0x80000

(* let o_tmpfile : c_int = 0o20000000 lor o_directory *)
let ebfont : c_int = 59
let enostr : c_int = 60
let enodata : c_int = 61
let etime : c_int = 62
let enosr : c_int = 63
let enonet : c_int = 64
let enopkg : c_int = 65
let eremote : c_int = 66
let enolink : c_int = 67
let eadv : c_int = 68
let esrmnt : c_int = 69
let ecomm : c_int = 70
let eproto : c_int = 71
let edotdot : c_int = 73
let f_ofd_getlk : c_int = 36
let f_ofd_setlk : c_int = 37
let f_ofd_setlkw : c_int = 38
let f_rdlck : c_int = 0
let f_wrlck : c_int = 1
let f_unlck : c_int = 2
let sa_nodefer : c_int = 0x40000000
let sa_resethand : c_int = 0x80000000
let sa_restart : c_int = 0x10000000
let sa_nocldstop : c_int = 0x00000001
let epoll_cloexec : c_int = 0x80000
let efd_cloexec : c_int = 0x80000
let bufsiz : c_uint = 1024
let tmp_max : c_uint = 10000
let fopen_max : c_uint = 1000
let filename_max : c_uint = 4096
let o_nonblock : c_int = 2048
let o_path : c_int = 0o10000000
let o_exec : c_int = 0o10000000
let o_search : c_int = 0o10000000
let o_accmode : c_int = 0o10000003
let o_ndelay : c_int = o_nonblock
let ni_maxhost : socklen_t = 255
let pthread_stack_min : size_t = 2048
let posix_madv_dontneed : c_int = 4

(* let map_anonymous: c_int = map_anon *)

let sock_seqpacket : c_int = 5
let sock_dccp : c_int = 6
let sock_nonblock : c_int = o_nonblock
let sock_packet : c_int = 10
let somaxconn : c_int = 128

(* let sigunused : c_int = *)
(*   (sigsys [@deprecated since = "0.2.55", note = "use sigsys instead"]) *)

let __sizeof_pthread_condattr_t : usize = 4
let __sizeof_pthread_mutexattr_t : usize = 4
let __sizeof_pthread_rwlockattr_t : usize = 8
let __sizeof_pthread_barrierattr_t : usize = 4
let cpu_setsize : c_int = 128
let ptrace_traceme : c_int = 0
let ptrace_peektext : c_int = 1
let ptrace_peekdata : c_int = 2
let ptrace_peekuser : c_int = 3
let ptrace_poketext : c_int = 4
let ptrace_pokedata : c_int = 5
let ptrace_pokeuser : c_int = 6
let ptrace_cont : c_int = 7
let ptrace_kill : c_int = 8
let ptrace_singlestep : c_int = 9
let ptrace_getregs : c_int = 12
let ptrace_setregs : c_int = 13
let ptrace_getfpregs : c_int = 14
let ptrace_setfpregs : c_int = 15
let ptrace_attach : c_int = 16
let ptrace_detach : c_int = 17
let ptrace_getfpxregs : c_int = 18
let ptrace_setfpxregs : c_int = 19
let ptrace_syscall : c_int = 24
let ptrace_setoptions : c_int = 0x4200
let ptrace_geteventmsg : c_int = 0x4201
let ptrace_getsiginfo : c_int = 0x4202
let ptrace_setsiginfo : c_int = 0x4203
let ptrace_getregset : c_int = 0x4204
let ptrace_setregset : c_int = 0x4205
let ptrace_seize : c_int = 0x4206
let ptrace_interrupt : c_int = 0x4207
let ptrace_listen : c_int = 0x4208
let ptrace_peeksiginfo : c_int = 0x4209
let ptrace_getsigmask : c_uint = 0x420a
let ptrace_setsigmask : c_uint = 0x420b
let af_ib : c_int = 27
let af_mpls : c_int = 28
let af_nfc : c_int = 39
let af_vsock : c_int = 40
let af_xdp : c_int = 44
let pf_ib : c_int = af_ib
let pf_mpls : c_int = af_mpls
let pf_nfc : c_int = af_nfc
let pf_vsock : c_int = af_vsock
let pf_xdp : c_int = af_xdp
let efd_nonblock : c_int = o_nonblock
let sfd_nonblock : c_int = o_nonblock
let pidfd_nonblock : c_uint = o_nonblock
let tcsanow : c_int = 0
let tcsadrain : c_int = 1
let tcsaflush : c_int = 2
let rtld_global : c_int = 0x100
let rtld_noload : c_int = 0x4
let clock_sgi_cycle : clockid_t = 10
let b0 : speed_t = 0o000000
let b50 : speed_t = 0o000001
let b75 : speed_t = 0o000002
let b110 : speed_t = 0o000003
let b134 : speed_t = 0o000004
let b150 : speed_t = 0o000005
let b200 : speed_t = 0o000006
let b300 : speed_t = 0o000007
let b600 : speed_t = 0o000010
let b1200 : speed_t = 0o000011
let b1800 : speed_t = 0o000012
let b2400 : speed_t = 0o000013
let b4800 : speed_t = 0o000014
let b9600 : speed_t = 0o000015
let b19200 : speed_t = 0o000016
let b38400 : speed_t = 0o000017
let exta : speed_t = b19200
let extb : speed_t = b38400
let reg_ok : c_int = 0
let prio_process : c_int = 0
let prio_pgrp : c_int = 1
let prio_user : c_int = 2
let adj_offset : c_uint = 0x0001
let adj_frequency : c_uint = 0x0002
let adj_maxerror : c_uint = 0x0004
let adj_esterror : c_uint = 0x0008
let adj_status : c_uint = 0x0010
let adj_timeconst : c_uint = 0x0020
let adj_tai : c_uint = 0x0080
let adj_setoffset : c_uint = 0x0100
let adj_micro : c_uint = 0x1000
let adj_nano : c_uint = 0x2000
let adj_tick : c_uint = 0x4000
let adj_offset_singleshot : c_uint = 0x8001
let adj_offset_ss_read : c_uint = 0xa001
let mod_offset : c_uint = adj_offset
let mod_frequency : c_uint = adj_frequency
let mod_maxerror : c_uint = adj_maxerror
let mod_esterror : c_uint = adj_esterror
let mod_status : c_uint = adj_status
let mod_timeconst : c_uint = adj_timeconst
let mod_clkb : c_uint = adj_tick
let mod_clka : c_uint = adj_offset_singleshot
let mod_tai : c_uint = adj_tai
let mod_micro : c_uint = adj_micro
let mod_nano : c_uint = adj_nano
let sta_pll : c_int = 0x0001
let sta_ppsfreq : c_int = 0x0002
let sta_ppstime : c_int = 0x0004
let sta_fll : c_int = 0x0008
let sta_ins : c_int = 0x0010
let sta_del : c_int = 0x0020
let sta_unsync : c_int = 0x0040
let sta_freqhold : c_int = 0x0080
let sta_ppssignal : c_int = 0x0100
let sta_ppsjitter : c_int = 0x0200
let sta_ppswander : c_int = 0x0400
let sta_ppserror : c_int = 0x0800
let sta_clockerr : c_int = 0x1000
let sta_nano : c_int = 0x2000
let sta_mode : c_int = 0x4000
let sta_clk : c_int = 0x8000

let sta_ronly : c_int =
  sta_ppssignal lor sta_ppsjitter lor sta_ppswander lor sta_ppserror
  lor sta_clockerr lor sta_nano lor sta_mode lor sta_clk

let time_ok : c_int = 0
let time_ins : c_int = 1
let time_del : c_int = 2
let time_oop : c_int = 3
let time_wait : c_int = 4
let time_error : c_int = 5
let time_bad : c_int = time_error
let maxtc : c_long = 6
let sol_xdp : c_int = 283

(* // linux/if_xdp.h *)
(* let xdp_shared_umem : __u16 = 1 lsl 0 *)
(* let xdp_copy : __u16 = 1 lsl 1 *)
(* let xdp_zerocopy : __u16 = 1 lsl 2 *)
(* let xdp_use_need_wakeup : __u16 = 1 lsl 3 *)
(* let xdp_use_sg : __u16 = 1 lsl 4 *)
(* let xdp_umem_unaligned_chunk_flag : __u32 = 1 lsl 0 *)
(* let xdp_ring_need_wakeup : __u32 = 1 lsl 0 *)
let xdp_mmap_offsets : c_int = 1
let xdp_rx_ring : c_int = 2
let xdp_tx_ring : c_int = 3
let xdp_umem_reg : c_int = 4
let xdp_umem_fill_ring : c_int = 5
let xdp_umem_completion_ring : c_int = 6
let xdp_statistics : c_int = 7
let xdp_options : c_int = 8

(* let xdp_options_zerocopy : __u32 = 1 lsl 0 *)
let xdp_pgoff_rx_ring : off_t = 0L
let xdp_pgoff_tx_ring : off_t = 0x80000000L
let xdp_umem_pgoff_fill_ring : c_ulonglong = 0x100000000L
let xdp_umem_pgoff_completion_ring : c_ulonglong = 0x180000000L
let xsk_unaligned_buf_offset_shift : c_int = 48

(* let xsk_unaligned_buf_addr_mask : c_ulonglong = *)
(*   (1 lsl xsk_unaligned_buf_offset_shift) - 1 *)

(* let xdp_pkt_contd : __u32 = 1 lsl 0 *)
