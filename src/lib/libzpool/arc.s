	.file	"arc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl __cyg_profile_func_enter
	.section	.rodata
	.align 8
.LC0:
	.string	"Error: clock_gettime(CLOCK_MONOTONIC) failed\n"
	.align 8
.LC1:
	.string	"Make sure you are are running kernel 2.6.x and have glibc 2.3.3 or newer installed\n"
.LC2:
	.string	"Aborting...\n"
.globl __cyg_profile_func_exit
	.text
	.align 32
	.type	gethrtime, @function
gethrtime:
.LFB0:
	.file 1 "../../lib/libsolkerncompat/include/sys/time_aux.h"
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI1:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	.loc 1 48 0
	movq	8(%rbp), %rsi
	movl	$gethrtime, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 1 51 0
	leal	-32(%rbp), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	clock_gettime
	testl	%eax, %eax
	je	.L2
	.loc 1 52 0
	mov	stderr(%rip), %eax
	movq	%rax, %rdx
	movl	$.LC0, %eax
	mov	%eax, %eax
	movl	%edx, %ecx
	movl	$45, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	fwrite
	.loc 1 53 0
	mov	stderr(%rip), %eax
	movq	%rax, %rdx
	movl	$.LC1, %eax
	mov	%eax, %eax
	movl	%edx, %ecx
	movl	$83, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	fwrite
	.loc 1 54 0
	mov	stderr(%rip), %eax
	movq	%rax, %rdx
	movl	$.LC2, %eax
	mov	%eax, %eax
	movl	%edx, %ecx
	movl	$12, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	fwrite
	.loc 1 55 0
	call	abort
	.align 32
.L2:
	.loc 1 58 0
	movq	-32(%rbp), %rax
	imulq	$1000000000, %rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rbx
	movq	8(%rbp), %rsi
	movl	$gethrtime, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	.loc 1 59 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE0:
	.size	gethrtime, .-gethrtime
	.local	arc_reclaim_thr_lock
	.comm	arc_reclaim_thr_lock,44,32
	.local	arc_reclaim_thr_cv
	.comm	arc_reclaim_thr_cv,48,32
	.local	arc_thread_exit
	.comm	arc_thread_exit,1,1
.globl arc_reduce_dnlc_percent
	.data
	.align 4
	.type	arc_reduce_dnlc_percent, @object
	.size	arc_reduce_dnlc_percent, 4
arc_reduce_dnlc_percent:
	.long	3
	.align 4
	.type	arc_grow_retry, @object
	.size	arc_grow_retry, 4
arc_grow_retry:
	.long	60
	.local	arc_min_prefetch_lifespan
	.comm	arc_min_prefetch_lifespan,4,4
	.local	arc_dead
	.comm	arc_dead,4,4
	.local	arc_warm
	.comm	arc_warm,4,4
	.comm	zfs_arc_max,8,8
	.comm	zfs_arc_min,8,8
.globl zfs_arc_meta_limit
	.bss
	.align 8
	.type	zfs_arc_meta_limit, @object
	.size	zfs_arc_meta_limit, 8
zfs_arc_meta_limit:
	.zero	8
.globl zfs_mdcomp_disable
	.align 4
	.type	zfs_mdcomp_disable, @object
	.size	zfs_mdcomp_disable, 4
zfs_mdcomp_disable:
	.zero	4
	.local	ARC_anon
	.comm	ARC_anon,104,32
	.local	ARC_mru
	.comm	ARC_mru,104,32
	.local	ARC_mru_ghost
	.comm	ARC_mru_ghost,104,32
	.local	ARC_mfu
	.comm	ARC_mfu,104,32
	.local	ARC_mfu_ghost
	.comm	ARC_mfu_ghost,104,32
	.local	ARC_l2c_only
	.comm	ARC_l2c_only,104,32
	.data
	.align 32
	.type	arc_stats, @object
	.size	arc_stats, 2208
arc_stats:
	.string	"hits"
	.zero	26
	.byte	4
	.zero	16
	.string	"misses"
	.zero	24
	.byte	4
	.zero	16
	.string	"demand_data_hits"
	.zero	14
	.byte	4
	.zero	16
	.string	"demand_data_misses"
	.zero	12
	.byte	4
	.zero	16
	.string	"demand_metadata_hits"
	.zero	10
	.byte	4
	.zero	16
	.string	"demand_metadata_misses"
	.zero	8
	.byte	4
	.zero	16
	.string	"prefetch_data_hits"
	.zero	12
	.byte	4
	.zero	16
	.string	"prefetch_data_misses"
	.zero	10
	.byte	4
	.zero	16
	.string	"prefetch_metadata_hits"
	.zero	8
	.byte	4
	.zero	16
	.string	"prefetch_metadata_misses"
	.zero	6
	.byte	4
	.zero	16
	.string	"mru_hits"
	.zero	22
	.byte	4
	.zero	16
	.string	"mru_ghost_hits"
	.zero	16
	.byte	4
	.zero	16
	.string	"mfu_hits"
	.zero	22
	.byte	4
	.zero	16
	.string	"mfu_ghost_hits"
	.zero	16
	.byte	4
	.zero	16
	.string	"deleted"
	.zero	23
	.byte	4
	.zero	16
	.string	"recycle_miss"
	.zero	18
	.byte	4
	.zero	16
	.string	"mutex_miss"
	.zero	20
	.byte	4
	.zero	16
	.string	"evict_skip"
	.zero	20
	.byte	4
	.zero	16
	.string	"hash_elements"
	.zero	17
	.byte	4
	.zero	16
	.string	"hash_elements_max"
	.zero	13
	.byte	4
	.zero	16
	.string	"hash_collisions"
	.zero	15
	.byte	4
	.zero	16
	.string	"hash_chains"
	.zero	19
	.byte	4
	.zero	16
	.string	"hash_chain_max"
	.zero	16
	.byte	4
	.zero	16
	.string	"p"
	.zero	29
	.byte	4
	.zero	16
	.string	"c"
	.zero	29
	.byte	4
	.zero	16
	.string	"c_min"
	.zero	25
	.byte	4
	.zero	16
	.string	"c_max"
	.zero	25
	.byte	4
	.zero	16
	.string	"size"
	.zero	26
	.byte	4
	.zero	16
	.string	"hdr_size"
	.zero	22
	.byte	4
	.zero	16
	.string	"l2_hits"
	.zero	23
	.byte	4
	.zero	16
	.string	"l2_misses"
	.zero	21
	.byte	4
	.zero	16
	.string	"l2_feeds"
	.zero	22
	.byte	4
	.zero	16
	.string	"l2_rw_clash"
	.zero	19
	.byte	4
	.zero	16
	.string	"l2_writes_sent"
	.zero	16
	.byte	4
	.zero	16
	.string	"l2_writes_done"
	.zero	16
	.byte	4
	.zero	16
	.string	"l2_writes_error"
	.zero	15
	.byte	4
	.zero	16
	.string	"l2_writes_hdr_miss"
	.zero	12
	.byte	4
	.zero	16
	.string	"l2_evict_lock_retry"
	.zero	11
	.byte	4
	.zero	16
	.string	"l2_evict_reading"
	.zero	14
	.byte	4
	.zero	16
	.string	"l2_free_on_write"
	.zero	14
	.byte	4
	.zero	16
	.string	"l2_abort_lowmem"
	.zero	15
	.byte	4
	.zero	16
	.string	"l2_cksum_bad"
	.zero	18
	.byte	4
	.zero	16
	.string	"l2_io_error"
	.zero	19
	.byte	4
	.zero	16
	.string	"l2_size"
	.zero	23
	.byte	4
	.zero	16
	.string	"l2_hdr_size"
	.zero	19
	.byte	4
	.zero	16
	.string	"memory_throttle_count"
	.zero	9
	.byte	4
	.zero	16
	.comm	arc_ksp,4,4
	.local	arc_anon
	.comm	arc_anon,4,4
	.local	arc_mru
	.comm	arc_mru,4,4
	.local	arc_mru_ghost
	.comm	arc_mru_ghost,4,4
	.local	arc_mfu
	.comm	arc_mfu,4,4
	.local	arc_mfu_ghost
	.comm	arc_mfu_ghost,4,4
	.local	arc_l2c_only
	.comm	arc_l2c_only,4,4
	.local	arc_no_grow
	.comm	arc_no_grow,4,4
	.local	arc_tempreserve
	.comm	arc_tempreserve,8,8
	.local	arc_meta_used
	.comm	arc_meta_used,8,8
	.local	arc_meta_limit
	.comm	arc_meta_limit,8,8
	.local	arc_meta_max
	.comm	arc_meta_max,8,8
	.local	arc_eviction_list
	.comm	arc_eviction_list,4,4
	.local	arc_eviction_mtx
	.comm	arc_eviction_mtx,44,32
	.local	arc_eviction_hdr
	.comm	arc_eviction_hdr,408,32
	.local	buf_hash_table
	.comm	buf_hash_table,16400,32
	.comm	zfs_crc64_table,2048,32
.globl l2arc_write_max
	.align 8
	.type	l2arc_write_max, @object
	.size	l2arc_write_max, 8
l2arc_write_max:
	.quad	8388608
.globl l2arc_write_boost
	.align 8
	.type	l2arc_write_boost, @object
	.size	l2arc_write_boost, 8
l2arc_write_boost:
	.quad	8388608
.globl l2arc_headroom
	.align 8
	.type	l2arc_headroom, @object
	.size	l2arc_headroom, 8
l2arc_headroom:
	.quad	4
.globl l2arc_feed_secs
	.align 8
	.type	l2arc_feed_secs, @object
	.size	l2arc_feed_secs, 8
l2arc_feed_secs:
	.quad	1
.globl l2arc_noprefetch
	.align 4
	.type	l2arc_noprefetch, @object
	.size	l2arc_noprefetch, 4
l2arc_noprefetch:
	.long	1
	.local	L2ARC_dev_list
	.comm	L2ARC_dev_list,16,16
	.local	l2arc_dev_list
	.comm	l2arc_dev_list,4,4
	.local	l2arc_dev_mtx
	.comm	l2arc_dev_mtx,44,32
	.local	l2arc_dev_last
	.comm	l2arc_dev_last,4,4
	.local	l2arc_buflist_mtx
	.comm	l2arc_buflist_mtx,44,32
	.local	L2ARC_free_on_write
	.comm	L2ARC_free_on_write,16,16
	.local	l2arc_free_on_write
	.comm	l2arc_free_on_write,4,4
	.local	l2arc_free_on_write_mtx
	.comm	l2arc_free_on_write_mtx,44,32
	.local	l2arc_ndev
	.comm	l2arc_ndev,8,8
	.local	l2arc_feed_thr_lock
	.comm	l2arc_feed_thr_lock,44,32
	.local	l2arc_feed_thr_cv
	.comm	l2arc_feed_thr_cv,48,32
	.local	l2arc_thread_exit
	.comm	l2arc_thread_exit,1,1
	.section	.rodata
	.align 8
.LC3:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/arc.c"
	.align 8
.LC4:
	.string	"zfs_crc64_table[128] == 0xC96C5795D7870F42ULL"
	.text
	.align 32
	.type	buf_hash, @function
buf_hash:
.LFB4:
	.file 2 "/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/arc.c"
	.loc 2 621 0
	.cfi_startproc
	pushq	%rbp
.LCFI2:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI3:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	.loc 2 621 0
	movq	8(%rbp), %rsi
	movl	$buf_hash, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 622 0
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
	.loc 2 623 0
	movl	-56(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 2 624 0
	movq	$-1, -32(%rbp)
	.loc 2 627 0
	movq	zfs_crc64_table+1024(%rip), %rdx
	movabsq	$-3932672073523589310, %rax
	cmpq	%rax, %rdx
	je	.L5
	movl	$__PRETTY_FUNCTION__.9574, %ecx
	movl	$627, %edx
	movl	$.LC3, %esi
	movl	$.LC4, %edi
	call	__assert_fail
	.align 32
.L5:
	.loc 2 629 0
	movl	$0, -20(%rbp)
	jmp	.L6
	.align 32
.L7:
	.loc 2 630 0
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	movl	-20(%rbp), %eax
	addl	-36(%rbp), %eax
	mov	%eax, %eax
	movzbl	%nacl:(%r15,%rax), %eax
	movzbl	%al, %eax
	xorq	-32(%rbp), %rax
	andl	$255, %eax
	sall	$3, %eax
	cltq
	movq	%nacl:zfs_crc64_table(%r15,%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 629 0
	addl	$1, -20(%rbp)
	.align 32
.L6:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L7
	.loc 2 632 0
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	mov	%eax, %eax
	xorq	-64(%rbp), %rax
	xorq	%rax, -32(%rbp)
	.loc 2 634 0
	movq	-32(%rbp), %rbx
	movq	8(%rbp), %rsi
	movl	$buf_hash, %edi
	call	__cyg_profile_func_exit
	movq	%rbx, %rax
	.loc 2 635 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE4:
	.size	buf_hash, .-buf_hash
	.align 32
	.type	buf_hash_find, @function
buf_hash_find:
.LFB5:
	.loc 2 649 0
	.cfi_startproc
	pushq	%rbp
.LCFI4:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI5:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	.loc 2 649 0
	movq	8(%rbp), %rsi
	movl	$buf_hash_find, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 650 0
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 651 0
	movq	-32(%rbp), %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -24(%rbp)
	.loc 2 654 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 655 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-32(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L10
	.align 32
.L13:
	.loc 2 657 0
	mov	-20(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rdx
	mov	-40(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L11
	mov	-20(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-40(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L11
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L11
	mov	-20(%rbp), %eax
	mov	%nacl:168(%r15,%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L11
	.loc 2 658 0
	mov	-52(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 659 0
	mov	-20(%rbp), %ebx
	jmp	.L12
	.align 32
.L11:
	.loc 2 656 0
	mov	-20(%rbp), %eax
	movl	%nacl:80(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.align 32
.L10:
	.loc 2 655 0
	cmpl	$0, -20(%rbp)
	jne	.L13
	.loc 2 662 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 663 0
	mov	-52(%rbp), %eax
	movl	$0, %nacl:(%r15,%rax)
	.loc 2 664 0
	movl	$0, %ebx
	.align 32
.L12:
	movq	8(%rbp), %rsi
	movl	$buf_hash_find, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 665 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE5:
	.size	buf_hash_find, .-buf_hash_find
	.section	.rodata
.LC5:
	.string	"!((buf)->b_flags & (1 << 9))"
	.text
	.align 32
	.type	buf_hash_insert, @function
buf_hash_insert:
.LFB6:
	.loc 2 675 0
	.cfi_startproc
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI7:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	.loc 2 675 0
	movq	8(%rbp), %rsi
	movl	$buf_hash_insert, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 676 0
	mov	-68(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-68(%rbp), %ebx
	mov	-68(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 677 0
	movq	-56(%rbp), %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -44(%rbp)
	.loc 2 681 0
	mov	-68(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L16
	movl	$__PRETTY_FUNCTION__.9636, %ecx
	movl	$681, %edx
	movl	$.LC3, %esi
	movl	$.LC5, %edi
	call	__assert_fail
	.align 32
.L16:
	.loc 2 682 0
	mov	-72(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 683 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 684 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-56(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L17
	.align 32
.L20:
	.loc 2 686 0
	mov	-40(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rdx
	mov	-68(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L18
	mov	-40(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-68(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L18
	mov	-40(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	mov	-68(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L18
	mov	-40(%rbp), %eax
	mov	%nacl:168(%r15,%rax), %edx
	mov	-68(%rbp), %eax
	mov	%nacl:168(%r15,%rax), %eax
	cmpl	%eax, %edx
	jne	.L18
	.loc 2 687 0
	mov	-40(%rbp), %ebx
	jmp	.L19
	.align 32
.L18:
	.loc 2 685 0
	mov	-40(%rbp), %eax
	movl	%nacl:80(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	addl	$1, -36(%rbp)
	.align 32
.L17:
	.loc 2 684 0
	cmpl	$0, -40(%rbp)
	jne	.L20
	.loc 2 690 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-56(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:80(%r15,%rax)
	.loc 2 691 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-56(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	-68(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 692 0
	mov	-68(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$2, %dh
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 695 0
	cmpl	$0, -36(%rbp)
	je	.L21
	.loc 2 696 0
	movl	$arc_stats+992, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 697 0
	cmpl	$1, -36(%rbp)
	jne	.L29
	.loc 2 698 0
	movl	$arc_stats+1040, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
.LBB2:
	.loc 2 700 0
	jmp	.L23
	.align 32
.L29:
	nop
	.align 32
.L23:
	mov	-36(%rbp), %eax
	movq	arc_stats+1088(%rip), %rdx
	movq	%rdx, -32(%rbp)
	cmpq	-32(%rbp), %rax
	jbe	.L21
	mov	-36(%rbp), %edx
	movl	$arc_stats+1088, %eax
	mov	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	atomic_cas_64
	cmpq	-32(%rbp), %rax
	jne	.L23
	.align 32
.L21:
.LBE2:
	.loc 2 703 0
	movl	$arc_stats+896, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
.LBB3:
	.loc 2 704 0
	nop
	.align 32
.L25:
	movq	arc_stats+896(%rip), %rax
	movq	arc_stats+944(%rip), %rdx
	movq	%rdx, -24(%rbp)
	cmpq	-24(%rbp), %rax
	jbe	.L26
	movq	arc_stats+896(%rip), %rdx
	movl	$arc_stats+944, %eax
	mov	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	atomic_cas_64
	cmpq	-24(%rbp), %rax
	jne	.L25
	.align 32
.L26:
.LBE3:
	.loc 2 706 0
	movl	$0, %ebx
	.align 32
.L19:
	movq	8(%rbp), %rsi
	movl	$buf_hash_insert, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 707 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE6:
	.size	buf_hash_insert, .-buf_hash_insert
	.section	.rodata
	.align 8
.LC6:
	.string	"(((&((buf_hash_table.ht_locks[idx & (256-1)]).ht_lock)))->m_owner == ((void *)(uintptr_t)pthread_self()))"
.LC7:
	.string	"((buf)->b_flags & (1 << 9))"
.LC8:
	.string	"fbuf != ((void *)0)"
	.text
	.align 32
	.type	buf_hash_remove, @function
buf_hash_remove:
.LFB7:
	.loc 2 711 0
	.cfi_startproc
	pushq	%rbp
.LCFI8:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI9:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 711 0
	movq	8(%rbp), %rsi
	movl	$buf_hash_remove, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 713 0
	mov	-36(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-36(%rbp), %ebx
	mov	-36(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 715 0
	movq	-24(%rbp), %rax
	andl	$255, %eax
	sall	$6, %eax
	movslq	%eax,%rdx
	movl	$buf_hash_table+12, %eax
	leaq	(%rdx,%rax), %rax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L31
	movl	$__PRETTY_FUNCTION__.9713, %ecx
	movl	$715, %edx
	movl	$.LC3, %esi
	movl	$.LC6, %edi
	call	__assert_fail
	.align 32
.L31:
	.loc 2 716 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L32
	movl	$__PRETTY_FUNCTION__.9713, %ecx
	movl	$716, %edx
	movl	$.LC3, %esi
	movl	$.LC7, %edi
	call	__assert_fail
	.align 32
.L32:
	.loc 2 718 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-24(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 719 0
	jmp	.L33
	.align 32
.L35:
	.loc 2 720 0
	cmpl	$0, -32(%rbp)
	jne	.L34
	movl	$__PRETTY_FUNCTION__.9713, %ecx
	movl	$720, %edx
	movl	$.LC3, %esi
	movl	$.LC8, %edi
	call	__assert_fail
	.align 32
.L34:
	.loc 2 721 0
	movl	-32(%rbp), %eax
	addl	$80, %eax
	movl	%eax, -28(%rbp)
	.align 32
.L33:
	.loc 2 719 0
	mov	-28(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L35
	.loc 2 723 0
	mov	-36(%rbp), %eax
	mov	%nacl:80(%r15,%rax), %edx
	mov	-28(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 724 0
	mov	-36(%rbp), %eax
	movl	$0, %nacl:80(%r15,%rax)
	.loc 2 725 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$253, %dh
	mov	-36(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 728 0
	movl	$arc_stats+896, %eax
	mov	%eax, %eax
	movq	$-1, %rsi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 730 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-24(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L36
	.loc 2 731 0
	mov	buf_hash_table+8(%rip), %eax
	movq	-24(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:80(%r15,%rax), %eax
	.loc 2 730 0
	testq	%rax, %rax
	jne	.L36
	.loc 2 732 0
	movl	$arc_stats+1040, %eax
	mov	%eax, %eax
	movq	$-1, %rsi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L36:
	movq	8(%rbp), %rsi
	movl	$buf_hash_remove, %edi
	call	__cyg_profile_func_exit
	.loc 2 733 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE7:
	.size	buf_hash_remove, .-buf_hash_remove
	.local	hdr_cache
	.comm	hdr_cache,4,4
	.local	buf_cache
	.comm	buf_cache,4,4
	.align 32
	.type	buf_fini, @function
buf_fini:
.LFB8:
	.loc 2 743 0
	.cfi_startproc
	pushq	%rbp
.LCFI10:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI11:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	.loc 2 743 0
	movq	8(%rbp), %rsi
	movl	$buf_fini, %edi
	call	__cyg_profile_func_enter
	.loc 2 746 0
	movq	buf_hash_table(%rip), %rax
	addq	$1, %rax
	leal	0(,%rax,4), %edx
	mov	buf_hash_table+8(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 748 0
	movl	$0, -4(%rbp)
	jmp	.L39
	.align 32
.L40:
	.loc 2 749 0
	movl	-4(%rbp), %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_destroy
	.loc 2 748 0
	addl	$1, -4(%rbp)
	.align 32
.L39:
	cmpl	$255, -4(%rbp)
	jle	.L40
	.loc 2 750 0
	mov	hdr_cache(%rip), %eax
	movl	%eax, %edi
	call	umem_cache_destroy
	.loc 2 751 0
	mov	buf_cache(%rip), %eax
	movl	%eax, %edi
	call	umem_cache_destroy
	movq	8(%rbp), %rsi
	movl	$buf_fini, %edi
	call	__cyg_profile_func_exit
	.loc 2 752 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE8:
	.size	buf_fini, .-buf_fini
	.align 32
	.type	hdr_cons, @function
hdr_cons:
.LFB9:
	.loc 2 761 0
	.cfi_startproc
	pushq	%rbp
.LCFI12:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI13:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 761 0
	movq	8(%rbp), %rsi
	movl	$hdr_cons, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 762 0
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 2 764 0
	movl	-20(%rbp), %eax
	movl	$408, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 765 0
	movl	-20(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_create
	.loc 2 766 0
	movl	-20(%rbp), %eax
	addl	$104, %eax
	mov	%eax, %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	cv_init
	.loc 2 767 0
	movl	-20(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 768 0
	movl	-20(%rbp), %eax
	addl	$300, %eax
	mov	%eax, %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_init
	.loc 2 770 0
	movl	$arc_stats+1376, %eax
	mov	%eax, %eax
	movl	$408, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 771 0
	movl	$0, %ebx
	movq	8(%rbp), %rsi
	movl	$hdr_cons, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 772 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE9:
	.size	hdr_cons, .-hdr_cons
	.align 32
	.type	hdr_dest, @function
hdr_dest:
.LFB10:
	.loc 2 781 0
	.cfi_startproc
	pushq	%rbp
.LCFI14:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI15:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 781 0
	movq	8(%rbp), %rsi
	movl	$hdr_dest, %edi
	call	__cyg_profile_func_enter
	.loc 2 782 0
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 2 784 0
	movl	-4(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_destroy
	.loc 2 785 0
	movl	-4(%rbp), %eax
	addl	$104, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_destroy
	.loc 2 786 0
	movl	-4(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_destroy
	.loc 2 787 0
	movl	-4(%rbp), %eax
	addl	$300, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	rw_destroy
	.loc 2 789 0
	movl	$arc_stats+1376, %eax
	mov	%eax, %eax
	movq	$-408, %rsi
	movl	%eax, %edi
	call	atomic_add_64
	movq	8(%rbp), %rsi
	movl	$hdr_dest, %edi
	call	__cyg_profile_func_exit
	.loc 2 790 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE10:
	.size	hdr_dest, .-hdr_dest
	.section	.rodata
.LC9:
	.string	"hdr_recl called\n"
	.text
	.align 32
	.type	hdr_recl, @function
hdr_recl:
.LFB11:
	.loc 2 798 0
	.cfi_startproc
	pushq	%rbp
.LCFI16:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI17:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 798 0
	movq	8(%rbp), %rsi
	movl	$hdr_recl, %edi
	call	__cyg_profile_func_enter
	.loc 2 799 0
	movl	zfs_flags(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L47
	movl	$.LC9, %ecx
	movl	$799, %edx
	movl	$__func__.9800, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	__dprintf
	.align 32
.L47:
	.loc 2 804 0
	movl	arc_dead(%rip), %eax
	testl	%eax, %eax
	jne	.L48
	.loc 2 805 0
	movl	$arc_reclaim_thr_cv, %edi
	call	cv_signal
	.align 32
.L48:
	movq	8(%rbp), %rsi
	movl	$hdr_recl, %edi
	call	__cyg_profile_func_exit
	.loc 2 806 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE11:
	.size	hdr_recl, .-hdr_recl
	.section	.rodata
.LC10:
	.string	"hsize > (1ULL << 8)"
.LC11:
	.string	"arc_buf_hdr_t"
.LC12:
	.string	"arc_buf_t"
	.text
	.align 32
	.type	buf_init, @function
buf_init:
.LFB12:
	.loc 2 810 0
	.cfi_startproc
	pushq	%rbp
.LCFI18:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI19:
	.cfi_def_cfa_register 6
	naclsspq	$64, %r15
	.loc 2 810 0
	movq	8(%rbp), %rsi
	movl	$buf_init, %edi
	call	__cyg_profile_func_enter
	.loc 2 812 0
	movq	$4096, -16(%rbp)
	.loc 2 820 0
	jmp	.L51
	.align 32
.L52:
	.loc 2 821 0
	salq	-16(%rbp)
	.align 32
.L51:
	.loc 2 820 0
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	salq	$16, %rcx
	movl	_pagesize(%rip), %eax
	mov	%eax, %edx
	movq	physmem(%rip), %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rcx
	jb	.L52
	.align 32
.L53:
	.loc 2 823 0
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, buf_hash_table(%rip)
	.loc 2 825 0
	movq	-16(%rbp), %rax
	sall	$2, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	umem_zalloc
	mov	%eax, %eax
	.loc 2 824 0
	movl	%eax, buf_hash_table+8(%rip)
	.loc 2 826 0
	mov	buf_hash_table+8(%rip), %eax
	testq	%rax, %rax
	jne	.L54
	.loc 2 827 0
	cmpq	$256, -16(%rbp)
	ja	.L55
	movl	$__PRETTY_FUNCTION__.9820, %ecx
	movl	$827, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
	.align 32
.L55:
	.loc 2 828 0
	shrq	-16(%rbp)
	.loc 2 829 0
	jmp	.L53
	.align 32
.L54:
	.loc 2 832 0
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$hdr_recl, %r9d
	movl	$hdr_dest, %r8d
	movl	$hdr_cons, %ecx
	movl	$0, %edx
	movl	$408, %esi
	movl	$.LC11, %edi
	call	umem_cache_create
	mov	%eax, %eax
	movl	%eax, hdr_cache(%rip)
	.loc 2 834 0
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$20, %esi
	movl	$.LC12, %edi
	call	umem_cache_create
	mov	%eax, %eax
	movl	%eax, buf_cache(%rip)
	.loc 2 837 0
	movl	$0, -8(%rbp)
	jmp	.L56
	.align 32
.L59:
	.loc 2 838 0
	movl	-8(%rbp), %eax
	sall	$3, %eax
	addl	$zfs_crc64_table, %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	movl	$8, -4(%rbp)
	jmp	.L57
	.align 32
.L58:
	.loc 2 839 0
	mov	-20(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, %rdx
	shrq	%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$1, %eax
	movq	%rax, %rcx
	negq	%rcx
	movabsq	$-3932672073523589310, %rax
	andq	%rcx, %rax
	xorq	%rax, %rdx
	mov	-20(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 838 0
	subl	$1, -4(%rbp)
	.align 32
.L57:
	cmpl	$0, -4(%rbp)
	jg	.L58
	.loc 2 837 0
	addl	$1, -8(%rbp)
	.align 32
.L56:
	cmpl	$255, -8(%rbp)
	jle	.L59
	.loc 2 841 0
	movl	$0, -8(%rbp)
	jmp	.L60
	.align 32
.L61:
	.loc 2 842 0
	movl	-8(%rbp), %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 841 0
	addl	$1, -8(%rbp)
	.align 32
.L60:
	cmpl	$255, -8(%rbp)
	jle	.L61
	movq	8(%rbp), %rsi
	movl	$buf_init, %edi
	call	__cyg_profile_func_exit
	.loc 2 845 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE12:
	.size	buf_init, .-buf_init
	.section	.rodata
.LC13:
	.string	"buffer modified while frozen!"
	.text
	.align 32
	.type	arc_cksum_verify, @function
arc_cksum_verify:
.LFB13:
	.loc 2 851 0
	.cfi_startproc
	pushq	%rbp
.LCFI20:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI21:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 851 0
	movq	8(%rbp), %rsi
	movl	$arc_cksum_verify, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 854 0
	movl	zfs_flags(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L64
	movl	$0, %ebx
	jmp	.L65
	.align 32
.L64:
	.loc 2 857 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 858 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L66
	.loc 2 859 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$2048, %eax
	.loc 2 858 0
	testl	%eax, %eax
	je	.L67
	.align 32
.L66:
	.loc 2 860 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	movl	$0, %ebx
	jmp	.L65
	.align 32
.L67:
	.loc 2 863 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	mov	-52(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ecx
	leal	-48(%rbp), %edx
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	fletcher_2_native
	.loc 2 864 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	orq	%rax, %rcx
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	orq	%rax, %rcx
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:24(%r15,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	orq	%rcx, %rax
	testq	%rax, %rax
	je	.L68
	.loc 2 865 0
	movl	$.LC13, %edi
	movl	$0, %eax
	call	panic
	.align 32
.L68:
	.loc 2 866 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	movl	$1, %ebx
	.align 32
.L65:
	movq	8(%rbp), %rsi
	movl	$arc_cksum_verify, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 867 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE13:
	.size	arc_cksum_verify, .-arc_cksum_verify
	.align 32
	.type	arc_cksum_equal, @function
arc_cksum_equal:
.LFB14:
	.loc 2 871 0
	.cfi_startproc
	pushq	%rbp
.LCFI22:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI23:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -68(%rbp)
	.loc 2 871 0
	movq	8(%rbp), %rsi
	movl	$arc_cksum_equal, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 875 0
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 876 0
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	mov	-68(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ecx
	leal	-64(%rbp), %edx
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	fletcher_2_native
	.loc 2 877 0
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	orq	%rax, %rcx
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	orq	%rax, %rcx
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movq	%nacl:24(%r15,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	orq	%rcx, %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 2 878 0
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 880 0
	movl	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_cksum_equal, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 881 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE14:
	.size	arc_cksum_equal, .-arc_cksum_equal
	.align 32
	.type	arc_cksum_compute, @function
arc_cksum_compute:
.LFB15:
	.loc 2 885 0
	.cfi_startproc
	pushq	%rbp
.LCFI24:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI25:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 885 0
	movq	8(%rbp), %rsi
	movl	$arc_cksum_compute, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 886 0
	cmpl	$0, -24(%rbp)
	jne	.L76
	movl	zfs_flags(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L76
	movl	$0, %ebx
	jmp	.L77
	.align 32
.L76:
	.loc 2 889 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 890 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L78
	.loc 2 891 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	movl	$0, %ebx
	jmp	.L77
	.align 32
.L78:
	.loc 2 894 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	movl	$256, %esi
	movl	$32, %edi
	call	umem_alloc
	mov	%eax, %eax
	movl	%eax, %nacl:76(%r15,%rbx)
	.loc 2 896 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	.loc 2 895 0
	mov	%nacl:76(%r15,%rax), %ebx
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	mov	-20(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ecx
	movl	%ebx, %edx
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	fletcher_2_native
	.loc 2 897 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	movl	$1, %ebx
	.align 32
.L77:
	movq	8(%rbp), %rsi
	movl	$arc_cksum_compute, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 898 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE15:
	.size	arc_cksum_compute, .-arc_cksum_compute
	.section	.rodata
.LC14:
	.string	"modifying non-anon buffer!"
	.align 8
.LC15:
	.string	"modifying buffer while i/o in progress!"
	.text
	.align 32
.globl arc_buf_thaw
	.type	arc_buf_thaw, @function
arc_buf_thaw:
.LFB16:
	.loc 2 902 0
	.cfi_startproc
	pushq	%rbp
.LCFI26:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI27:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 902 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_thaw, %edi
	call	__cyg_profile_func_enter
	.loc 2 903 0
	movl	zfs_flags(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L84
	.loc 2 904 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	je	.L85
	.loc 2 905 0
	movl	$.LC14, %edi
	movl	$0, %eax
	call	panic
	.align 32
.L85:
	.loc 2 906 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L86
	.loc 2 907 0
	movl	$.LC15, %edi
	movl	$0, %eax
	call	panic
	.align 32
.L86:
	.loc 2 908 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	arc_cksum_verify
	.align 32
.L84:
	.loc 2 911 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 912 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L87
	.loc 2 913 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movl	$32, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 914 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	$0, %nacl:76(%r15,%rax)
	.align 32
.L87:
	.loc 2 916 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	movq	8(%rbp), %rsi
	movl	$arc_buf_thaw, %edi
	call	__cyg_profile_func_exit
	.loc 2 917 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE16:
	.size	arc_buf_thaw, .-arc_buf_thaw
	.section	.rodata
	.align 8
.LC16:
	.string	"buf->b_hdr->b_freeze_cksum != ((void *)0) || buf->b_hdr->b_state == arc_anon"
	.text
	.align 32
.globl arc_buf_freeze
	.type	arc_buf_freeze, @function
arc_buf_freeze:
.LFB17:
	.loc 2 921 0
	.cfi_startproc
	pushq	%rbp
.LCFI28:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI29:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 921 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_freeze, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 922 0
	movl	zfs_flags(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L90
	movl	$0, %ebx
	jmp	.L91
	.align 32
.L90:
	.loc 2 925 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:76(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L92
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	je	.L92
	movl	$__PRETTY_FUNCTION__.10004, %ecx
	movl	$926, %edx
	movl	$.LC3, %esi
	movl	$.LC16, %edi
	call	__assert_fail
	.align 32
.L92:
	.loc 2 927 0
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_cksum_compute
	movl	$1, %ebx
	.align 32
.L91:
	movq	8(%rbp), %rsi
	movl	$arc_buf_freeze, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 928 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE17:
	.size	arc_buf_freeze, .-arc_buf_freeze
	.section	.rodata
	.align 8
.LC17:
	.string	"((hash_lock)->m_owner == ((void *)(uintptr_t)pthread_self()))"
	.align 8
.LC18:
	.string	"!((&ab->b_state->arcs_mtx)->m_owner == ((void *)(uintptr_t)pthread_self()))"
	.align 8
.LC19:
	.string	"list_link_active(&ab->b_arc_node)"
.LC20:
	.string	"%s %s %s (0x%llx %s 0x%llx)"
.LC21:
	.string	"0"
.LC22:
	.string	"=="
.LC23:
	.string	"ab->b_datacnt"
	.align 8
.LC24:
	.string	"%s:%i: %s: Assertion `%s` failed.\n"
.LC25:
	.string	"((void *)0)"
.LC26:
	.string	"ab->b_buf"
.LC27:
	.string	"delta > 0"
.LC28:
	.string	"delta"
.LC29:
	.string	">="
.LC30:
	.string	"*size"
	.text
	.align 32
	.type	add_reference, @function
add_reference:
.LFB18:
	.loc 2 932 0
	.cfi_startproc
	pushq	%rbp
.LCFI30:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI31:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movl	%edx, -108(%rbp)
	.loc 2 932 0
	movq	8(%rbp), %rsi
	movl	$add_reference, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 933 0
	mov	-104(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L98
	movl	$__PRETTY_FUNCTION__.10023, %ecx
	movl	$933, %edx
	movl	$.LC3, %esi
	movl	$.LC17, %edi
	call	__assert_fail
	.align 32
.L98:
	.loc 2 935 0
	movl	-100(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %edx
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	refcount_add
	cmpq	$1, %rax
	jne	.L99
	.loc 2 936 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	.loc 2 935 0
	cmpl	%eax, %edx
	je	.L99
.LBB4:
	.loc 2 937 0
	mov	-100(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rdx
	mov	-100(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	mov	%eax, %eax
	imulq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 2 938 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	movq	%rax, %rdx
	mov	-100(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	.loc 2 939 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %edx
	mov	-100(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -76(%rbp)
	.loc 2 941 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	mov	%nacl:56(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	jne	.L100
	movl	$__PRETTY_FUNCTION__.10023, %ecx
	movl	$941, %edx
	movl	$.LC3, %esi
	movl	$.LC18, %edi
	call	__assert_fail
	.align 32
.L100:
	.loc 2 942 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 943 0
	movl	-100(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	jne	.L101
	movl	$__PRETTY_FUNCTION__.10023, %ecx
	movl	$943, %edx
	movl	$.LC3, %esi
	movl	$.LC19, %edi
	call	__assert_fail
	.align 32
.L101:
	.loc 2 944 0
	movl	-100(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_remove
	.loc 2 945 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L102
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L102
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	jne	.L103
	.align 32
.L102:
.LBB5:
	.loc 2 946 0
	mov	-100(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	mov	%eax, %eax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L104
.LBB6:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -56(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-56(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC22, %r8d
	movl	$.LC23, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-56(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10023, %r8d
	movl	$946, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L104:
.LBE6:
.LBE5:
.LBB7:
	.loc 2 947 0
	mov	-100(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.L105
.LBB8:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	mov	-48(%rbp), %ecx
	mov	-52(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC25, %r9d
	movl	$.LC22, %r8d
	movl	$.LC26, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10023, %r8d
	movl	$947, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L105:
.LBE8:
.LBE7:
	.loc 2 948 0
	mov	-100(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -88(%rbp)
	.align 32
.L103:
	.loc 2 950 0
	cmpq	$0, -88(%rbp)
	jne	.L106
	movl	$__PRETTY_FUNCTION__.10023, %ecx
	movl	$950, %edx
	movl	$.LC3, %esi
	movl	$.LC27, %edi
	call	__assert_fail
	.align 32
.L106:
.LBB9:
	.loc 2 951 0
	mov	-76(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.L107
.LBB10:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC28, %r9d
	movl	$.LC29, %r8d
	movl	$.LC30, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10023, %r8d
	movl	$951, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L107:
.LBE10:
.LBE9:
	.loc 2 952 0
	movq	-88(%rbp), %rax
	negq	%rax
	mov	-76(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 953 0
	mov	-100(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 955 0
	mov	-100(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L99
	.loc 2 956 0
	mov	-100(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-9, %edx
	mov	-100(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L99:
	movq	8(%rbp), %rsi
	movl	$add_reference, %edi
	call	__cyg_profile_func_exit
.LBE4:
	.loc 2 958 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE18:
	.size	add_reference, .-add_reference
	.section	.rodata
	.align 8
.LC31:
	.string	"state == arc_anon || ((hash_lock)->m_owner == ((void *)(uintptr_t)pthread_self()))"
	.align 8
.LC32:
	.string	"!((state) == arc_mru_ghost || (state) == arc_mfu_ghost || (state) == arc_l2c_only)"
	.align 8
.LC33:
	.string	"!((&state->arcs_mtx)->m_owner == ((void *)(uintptr_t)pthread_self()))"
	.align 8
.LC34:
	.string	"!list_link_active(&ab->b_arc_node)"
.LC35:
	.string	"ab->b_datacnt > 0"
	.text
	.align 32
	.type	remove_reference, @function
remove_reference:
.LFB19:
	.loc 2 962 0
	.cfi_startproc
	pushq	%rbp
.LCFI32:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI33:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 962 0
	movq	8(%rbp), %rsi
	movl	$remove_reference, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 964 0
	mov	-36(%rbp), %eax
	movl	%nacl:172(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 966 0
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -24(%rbp)
	je	.L110
	mov	-40(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L110
	movl	$__PRETTY_FUNCTION__.10127, %ecx
	movl	$966, %edx
	movl	$.LC3, %esi
	movl	$.LC31, %edi
	call	__assert_fail
	.align 32
.L110:
	.loc 2 967 0
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -24(%rbp)
	je	.L111
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -24(%rbp)
	je	.L111
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jne	.L112
	.align 32
.L111:
	movl	$__PRETTY_FUNCTION__.10127, %ecx
	movl	$967, %edx
	movl	$.LC3, %esi
	movl	$.LC32, %edi
	call	__assert_fail
	.align 32
.L112:
	.loc 2 969 0
	movl	-36(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %edx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	refcount_remove
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L113
	.loc 2 970 0
	mov	arc_anon(%rip), %eax
	.loc 2 969 0
	cmpl	%eax, -24(%rbp)
	je	.L113
.LBB11:
	.loc 2 971 0
	movl	-24(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %edx
	mov	-36(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 2 973 0
	mov	-24(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	jne	.L114
	movl	$__PRETTY_FUNCTION__.10127, %ecx
	movl	$973, %edx
	movl	$.LC3, %esi
	movl	$.LC33, %edi
	call	__assert_fail
	.align 32
.L114:
	.loc 2 974 0
	movl	-24(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 975 0
	movl	-36(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	je	.L115
	movl	$__PRETTY_FUNCTION__.10127, %ecx
	movl	$975, %edx
	movl	$.LC3, %esi
	movl	$.LC34, %edi
	call	__assert_fail
	.align 32
.L115:
	.loc 2 976 0
	mov	-24(%rbp), %edx
	mov	-36(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$4, %eax
	addl	%edx, %eax
	mov	%eax, %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_head
	.loc 2 977 0
	mov	-36(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L116
	movl	$__PRETTY_FUNCTION__.10127, %ecx
	movl	$977, %edx
	movl	$.LC3, %esi
	movl	$.LC35, %edi
	call	__assert_fail
	.align 32
.L116:
	.loc 2 978 0
	mov	-36(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rdx
	mov	-36(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	mov	%eax, %eax
	imulq	%rdx, %rax
	mov	-20(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 979 0
	movl	-24(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L113:
.LBE11:
	.loc 2 981 0
	movl	-28(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$remove_reference, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 982 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE19:
	.size	remove_reference, .-remove_reference
	.section	.rodata
.LC36:
	.string	"new_state != old_state"
	.align 8
.LC37:
	.string	"refcnt == 0 || ab->b_datacnt > 0"
	.align 8
.LC38:
	.string	"ab->b_datacnt == 0 || !((new_state) == arc_mru_ghost || (new_state) == arc_mfu_ghost || (new_state) == arc_l2c_only)"
.LC39:
	.string	"ab->b_buf == ((void *)0)"
.LC40:
	.string	"from_delta"
.LC41:
	.string	"ab->b_datacnt == 0"
	.align 8
.LC42:
	.string	"!((ab)->b_dva.dva_word[0] == 0 && (ab)->b_dva.dva_word[1] == 0 && (ab)->b_birth == 0)"
.LC43:
	.string	"old_state->arcs_size"
	.text
	.align 32
	.type	arc_change_state, @function
arc_change_state:
.LFB20:
	.loc 2 990 0
	.cfi_startproc
	pushq	%rbp
.LCFI34:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI35:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$152, %r15
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movl	%edx, -124(%rbp)
	.loc 2 990 0
	movq	8(%rbp), %rsi
	movl	$arc_change_state, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 991 0
	mov	-120(%rbp), %eax
	movl	%nacl:172(%r15,%rax), %eax
	movl	%eax, -108(%rbp)
	.loc 2 992 0
	movl	-120(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movq	%rax, -104(%rbp)
	.loc 2 995 0
	mov	-124(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L119
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$995, %edx
	movl	$.LC3, %esi
	movl	$.LC17, %edi
	call	__assert_fail
	.align 32
.L119:
	.loc 2 996 0
	movl	-116(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jne	.L120
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$996, %edx
	movl	$.LC3, %esi
	movl	$.LC36, %edi
	call	__assert_fail
	.align 32
.L120:
	.loc 2 997 0
	cmpq	$0, -104(%rbp)
	je	.L121
	mov	-120(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L121
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$997, %edx
	movl	$.LC3, %esi
	movl	$.LC37, %edi
	call	__assert_fail
	.align 32
.L121:
	.loc 2 998 0
	mov	-120(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L122
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -116(%rbp)
	je	.L123
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -116(%rbp)
	je	.L123
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -116(%rbp)
	jne	.L122
	.align 32
.L123:
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$998, %edx
	movl	$.LC3, %esi
	movl	$.LC38, %edi
	call	__assert_fail
	.align 32
.L122:
	.loc 2 1000 0
	mov	-120(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	mov	%eax, %edx
	mov	-120(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 1006 0
	cmpq	$0, -104(%rbp)
	jne	.L124
	.loc 2 1007 0
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -108(%rbp)
	je	.L125
.LBB12:
	.loc 2 1008 0
	mov	-108(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -80(%rbp)
	.loc 2 1009 0
	movl	-108(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %edx
	mov	-120(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -76(%rbp)
	.loc 2 1011 0
	cmpl	$0, -80(%rbp)
	je	.L126
	.loc 2 1012 0
	movl	-108(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.align 32
.L126:
	.loc 2 1014 0
	movl	-120(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	jne	.L127
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$1014, %edx
	movl	$.LC3, %esi
	movl	$.LC19, %edi
	call	__assert_fail
	.align 32
.L127:
	.loc 2 1015 0
	mov	-108(%rbp), %edx
	mov	-120(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$4, %eax
	addl	%edx, %eax
	mov	%eax, %edx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_remove
	.loc 2 1021 0
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -108(%rbp)
	je	.L128
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -108(%rbp)
	je	.L128
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -108(%rbp)
	jne	.L129
	.align 32
.L128:
	mov	-120(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L129
	.loc 2 1023 0
	mov	-120(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L130
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$1023, %edx
	movl	$.LC3, %esi
	movl	$.LC39, %edi
	call	__assert_fail
	.align 32
.L130:
	.loc 2 1024 0
	mov	-120(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -96(%rbp)
	.align 32
.L129:
.LBB13:
	.loc 2 1026 0
	mov	-76(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jae	.L131
.LBB14:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-52(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC40, %r9d
	movl	$.LC29, %r8d
	movl	$.LC30, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-52(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10188, %r8d
	movl	$1026, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L131:
.LBE14:
.LBE13:
	.loc 2 1027 0
	movq	-96(%rbp), %rax
	negq	%rax
	mov	-76(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1029 0
	cmpl	$0, -80(%rbp)
	je	.L125
	.loc 2 1030 0
	movl	-108(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L125:
.LBE12:
	.loc 2 1032 0
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -116(%rbp)
	je	.L124
.LBB15:
	.loc 2 1033 0
	mov	-116(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	.loc 2 1034 0
	movl	-116(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %edx
	mov	-120(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	.loc 2 1036 0
	cmpl	$0, -48(%rbp)
	je	.L132
	.loc 2 1037 0
	movl	-116(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.align 32
.L132:
	.loc 2 1039 0
	mov	-116(%rbp), %edx
	mov	-120(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$4, %eax
	addl	%edx, %eax
	mov	%eax, %edx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_head
	.loc 2 1042 0
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -116(%rbp)
	je	.L133
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -116(%rbp)
	je	.L133
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -116(%rbp)
	jne	.L134
	.align 32
.L133:
	.loc 2 1043 0
	mov	-120(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L135
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$1043, %edx
	movl	$.LC3, %esi
	movl	$.LC41, %edi
	call	__assert_fail
	.align 32
.L135:
	.loc 2 1044 0
	mov	-120(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L136
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$1044, %edx
	movl	$.LC3, %esi
	movl	$.LC39, %edi
	call	__assert_fail
	.align 32
.L136:
	.loc 2 1045 0
	mov	-120(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -88(%rbp)
	.align 32
.L134:
	.loc 2 1047 0
	movq	-88(%rbp), %rax
	mov	-44(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1048 0
	movq	-88(%rbp), %rax
	movl	-116(%rbp), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1050 0
	cmpl	$0, -48(%rbp)
	je	.L124
	.loc 2 1051 0
	movl	-116(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L124:
.LBE15:
	.loc 2 1055 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L137
	mov	-120(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L137
	mov	-120(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L137
	movl	$__PRETTY_FUNCTION__.10188, %ecx
	movl	$1055, %edx
	movl	$.LC3, %esi
	movl	$.LC42, %edi
	call	__assert_fail
	.align 32
.L137:
	.loc 2 1056 0
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -116(%rbp)
	jne	.L138
	.loc 2 1057 0
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	buf_hash_remove
	.align 32
.L138:
	.loc 2 1061 0
	cmpq	$0, -88(%rbp)
	je	.L139
	cmpq	$0, -104(%rbp)
	jne	.L140
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -116(%rbp)
	jne	.L139
	.align 32
.L140:
	.loc 2 1062 0
	movq	-88(%rbp), %rax
	movl	-116(%rbp), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L139:
	.loc 2 1063 0
	cmpq	$0, -96(%rbp)
	je	.L141
.LBB16:
	.loc 2 1064 0
	mov	-108(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.L142
.LBB17:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC40, %r9d
	movl	$.LC29, %r8d
	movl	$.LC43, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10188, %r8d
	movl	$1064, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L142:
.LBE17:
.LBE16:
	.loc 2 1065 0
	movq	-96(%rbp), %rax
	negq	%rax
	movl	-108(%rbp), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L141:
	.loc 2 1067 0
	mov	-120(%rbp), %eax
	movl	-116(%rbp), %edx
	movl	%edx, %nacl:172(%r15,%rax)
	.loc 2 1070 0
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -116(%rbp)
	jne	.L143
	.loc 2 1071 0
	call	l2arc_hdr_stat_add
	jmp	.L144
	.align 32
.L143:
	.loc 2 1072 0
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -108(%rbp)
	jne	.L144
	.loc 2 1073 0
	call	l2arc_hdr_stat_remove
	.align 32
.L144:
	movq	8(%rbp), %rsi
	movl	$arc_change_state, %edi
	call	__cyg_profile_func_exit
	.loc 2 1074 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE20:
	.size	arc_change_state, .-arc_change_state
	.align 32
.globl arc_space_consume
	.type	arc_space_consume, @function
arc_space_consume:
.LFB21:
	.loc 2 1078 0
	.cfi_startproc
	pushq	%rbp
.LCFI36:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI37:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movq	%rdi, -8(%rbp)
	.loc 2 1078 0
	movq	8(%rbp), %rsi
	movl	$arc_space_consume, %edi
	call	__cyg_profile_func_enter
	.loc 2 1079 0
	movq	-8(%rbp), %rax
	movl	$arc_meta_used, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1080 0
	movq	-8(%rbp), %rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	movq	8(%rbp), %rsi
	movl	$arc_space_consume, %edi
	call	__cyg_profile_func_exit
	.loc 2 1081 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE21:
	.size	arc_space_consume, .-arc_space_consume
	.section	.rodata
.LC44:
	.string	"arc_meta_used >= space"
	.align 8
.LC45:
	.string	"(arc_stats.arcstat_size.value.ui64) >= space"
	.text
	.align 32
.globl arc_space_return
	.type	arc_space_return, @function
arc_space_return:
.LFB22:
	.loc 2 1085 0
	.cfi_startproc
	pushq	%rbp
.LCFI38:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI39:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movq	%rdi, -8(%rbp)
	.loc 2 1085 0
	movq	8(%rbp), %rsi
	movl	$arc_space_return, %edi
	call	__cyg_profile_func_enter
	.loc 2 1086 0
	movq	arc_meta_used(%rip), %rax
	cmpq	-8(%rbp), %rax
	jae	.L149
	movl	$__PRETTY_FUNCTION__.10362, %ecx
	movl	$1086, %edx
	movl	$.LC3, %esi
	movl	$.LC44, %edi
	call	__assert_fail
	.align 32
.L149:
	.loc 2 1087 0
	movq	arc_meta_max(%rip), %rdx
	movq	arc_meta_used(%rip), %rax
	cmpq	%rax, %rdx
	jae	.L150
	.loc 2 1088 0
	movq	arc_meta_used(%rip), %rax
	movq	%rax, arc_meta_max(%rip)
	.align 32
.L150:
	.loc 2 1089 0
	movq	-8(%rbp), %rax
	negq	%rax
	movl	$arc_meta_used, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1090 0
	movq	arc_stats+1328(%rip), %rax
	cmpq	-8(%rbp), %rax
	jae	.L151
	movl	$__PRETTY_FUNCTION__.10362, %ecx
	movl	$1090, %edx
	movl	$.LC3, %esi
	movl	$.LC45, %edi
	call	__assert_fail
	.align 32
.L151:
	.loc 2 1091 0
	movq	-8(%rbp), %rax
	negq	%rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	movq	8(%rbp), %rsi
	movl	$arc_space_return, %edi
	call	__cyg_profile_func_exit
	.loc 2 1092 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE22:
	.size	arc_space_return, .-arc_space_return
	.align 32
.globl arc_data_buf_alloc
	.type	arc_data_buf_alloc, @function
arc_data_buf_alloc:
.LFB23:
	.loc 2 1096 0
	.cfi_startproc
	pushq	%rbp
.LCFI40:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI41:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movq	%rdi, -24(%rbp)
	.loc 2 1096 0
	movq	8(%rbp), %rsi
	movl	$arc_data_buf_alloc, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1097 0
	movl	$0, %edi
	call	arc_evict_needed
	testl	%eax, %eax
	je	.L154
	.loc 2 1098 0
	movl	$arc_reclaim_thr_cv, %edi
	call	cv_signal
	.align 32
.L154:
	.loc 2 1099 0
	movq	-24(%rbp), %rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1100 0
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	call	zio_data_buf_alloc
	mov	%eax, %eax
	movq	%rax, %rbx
	movq	8(%rbp), %rsi
	movl	$arc_data_buf_alloc, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1101 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE23:
	.size	arc_data_buf_alloc, .-arc_data_buf_alloc
	.section	.rodata
	.align 8
.LC46:
	.string	"(arc_stats.arcstat_size.value.ui64) >= size"
	.text
	.align 32
.globl arc_data_buf_free
	.type	arc_data_buf_free, @function
arc_data_buf_free:
.LFB24:
	.loc 2 1105 0
	.cfi_startproc
	pushq	%rbp
.LCFI42:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI43:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 1105 0
	movq	8(%rbp), %rsi
	movl	$arc_data_buf_free, %edi
	call	__cyg_profile_func_enter
	.loc 2 1106 0
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_data_buf_free
	.loc 2 1107 0
	movq	arc_stats+1328(%rip), %rax
	cmpq	-16(%rbp), %rax
	jae	.L157
	movl	$__PRETTY_FUNCTION__.10395, %ecx
	movl	$1107, %edx
	movl	$.LC3, %esi
	movl	$.LC46, %edi
	call	__assert_fail
	.align 32
.L157:
	.loc 2 1108 0
	movq	-16(%rbp), %rax
	negq	%rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	movq	8(%rbp), %rsi
	movl	$arc_data_buf_free, %edi
	call	__cyg_profile_func_exit
	.loc 2 1109 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE24:
	.size	arc_data_buf_free, .-arc_data_buf_free
	.section	.rodata
.LC47:
	.string	">"
.LC48:
	.string	"size"
	.align 8
.LC49:
	.string	"((hdr)->b_dva.dva_word[0] == 0 && (hdr)->b_dva.dva_word[1] == 0 && (hdr)->b_birth == 0)"
	.align 8
.LC50:
	.string	"refcount_is_zero(&hdr->b_refcnt)"
	.text
	.align 32
.globl arc_buf_alloc
	.type	arc_buf_alloc, @function
arc_buf_alloc:
.LFB25:
	.loc 2 1113 0
	.cfi_startproc
	pushq	%rbp
.LCFI44:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI45:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	.loc 2 1113 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_alloc, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
.LBB18:
	.loc 2 1117 0
	movl	-56(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.L160
.LBB19:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC47, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC47, %r8d
	movl	$.LC48, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10414, %r8d
	movl	$1117, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L160:
.LBE19:
.LBE18:
	.loc 2 1118 0
	mov	hdr_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	.loc 2 1119 0
	mov	-48(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L161
	mov	-48(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L161
	mov	-48(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L162
	.align 32
.L161:
	movl	$__PRETTY_FUNCTION__.10414, %ecx
	movl	$1119, %edx
	movl	$.LC3, %esi
	movl	$.LC49, %edi
	call	__assert_fail
	.align 32
.L162:
	.loc 2 1120 0
	movl	-56(%rbp), %eax
	movslq	%eax,%rdx
	mov	-48(%rbp), %eax
	movq	%rdx, %nacl:160(%r15,%rax)
	.loc 2 1121 0
	mov	-48(%rbp), %eax
	movl	-64(%rbp), %edx
	movl	%edx, %nacl:152(%r15,%rax)
	.loc 2 1122 0
	mov	-48(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	%edx, %nacl:168(%r15,%rax)
	.loc 2 1123 0
	mov	arc_anon(%rip), %edx
	mov	-48(%rbp), %eax
	movl	%edx, %nacl:172(%r15,%rax)
	.loc 2 1124 0
	mov	-48(%rbp), %eax
	movl	$0, %nacl:184(%r15,%rax)
	.loc 2 1125 0
	mov	buf_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 1126 0
	mov	-44(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1127 0
	mov	-44(%rbp), %eax
	movl	$0, %nacl:8(%r15,%rax)
	.loc 2 1128 0
	mov	-44(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 1129 0
	mov	-44(%rbp), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 1130 0
	mov	-44(%rbp), %eax
	movl	$0, %nacl:4(%r15,%rax)
	.loc 2 1131 0
	mov	-48(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:84(%r15,%rax)
	.loc 2 1132 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	arc_get_data_buf
	.loc 2 1133 0
	mov	-48(%rbp), %eax
	movl	$1, %nacl:92(%r15,%rax)
	.loc 2 1134 0
	mov	-48(%rbp), %eax
	movl	$0, %nacl:88(%r15,%rax)
	.loc 2 1135 0
	movl	-48(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L163
	movl	$__PRETTY_FUNCTION__.10414, %ecx
	movl	$1135, %edx
	movl	$.LC3, %esi
	movl	$.LC50, %edi
	call	__assert_fail
	.align 32
.L163:
	.loc 2 1136 0
	movl	-48(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %edx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	refcount_add
	.loc 2 1138 0
	mov	-44(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_buf_alloc, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1139 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE25:
	.size	arc_buf_alloc, .-arc_buf_alloc
	.align 32
	.type	arc_buf_clone, @function
arc_buf_clone:
.LFB26:
	.loc 2 1143 0
	.cfi_startproc
	pushq	%rbp
.LCFI46:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI47:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 1143 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_clone, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1145 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1146 0
	mov	-28(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1148 0
	mov	buf_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	.loc 2 1149 0
	mov	-32(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1150 0
	mov	-32(%rbp), %eax
	movl	$0, %nacl:8(%r15,%rax)
	.loc 2 1151 0
	mov	-32(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 1152 0
	mov	-32(%rbp), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 1153 0
	mov	-28(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %edx
	mov	-32(%rbp), %eax
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 1154 0
	mov	-28(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%edx, %nacl:84(%r15,%rax)
	.loc 2 1155 0
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	arc_get_data_buf
	.loc 2 1156 0
	movq	-24(%rbp), %rax
	mov	-32(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ebx
	mov	-36(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ecx
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	bcopy
	.loc 2 1157 0
	mov	-28(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	leal	1(%rax), %edx
	mov	-28(%rbp), %eax
	movl	%edx, %nacl:92(%r15,%rax)
	.loc 2 1158 0
	mov	-32(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_buf_clone, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1159 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE26:
	.size	arc_buf_clone, .-arc_buf_clone
	.section	.rodata
.LC51:
	.string	"buf->b_hdr == hdr"
	.align 8
.LC52:
	.string	"hdr->b_state == arc_mru || hdr->b_state == arc_mfu"
	.text
	.align 32
.globl arc_buf_add_ref
	.type	arc_buf_add_ref, @function
arc_buf_add_ref:
.LFB27:
	.loc 2 1163 0
	.cfi_startproc
	pushq	%rbp
.LCFI48:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI49:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 1163 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_add_ref, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1171 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 1172 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 1173 0
	cmpl	$0, -24(%rbp)
	jne	.L168
	.loc 2 1174 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	movl	$0, %ebx
	jmp	.L169
	.align 32
.L168:
	.loc 2 1177 0
	mov	-24(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-24(%rbp), %ebx
	mov	-24(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1178 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 1180 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1181 0
	mov	-36(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L170
	.loc 2 1185 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	movl	$0, %ebx
	jmp	.L169
	.align 32
.L170:
	.loc 2 1189 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -24(%rbp)
	je	.L171
	movl	$__PRETTY_FUNCTION__.10462, %ecx
	movl	$1189, %edx
	movl	$.LC3, %esi
	movl	$.LC51, %edi
	call	__assert_fail
	.align 32
.L171:
	.loc 2 1190 0
	mov	-24(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru(%rip), %eax
	cmpl	%eax, %edx
	je	.L172
	mov	-24(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu(%rip), %eax
	cmpl	%eax, %edx
	je	.L172
	movl	$__PRETTY_FUNCTION__.10462, %ecx
	movl	$1190, %edx
	movl	$.LC3, %esi
	movl	$.LC52, %edi
	call	__assert_fail
	.align 32
.L172:
	.loc 2 1191 0
	movl	-40(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	add_reference
	.loc 2 1192 0
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_access
	.loc 2 1193 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1194 0
	movl	$arc_stats+32, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 1195 0
	mov	-24(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L173
	mov	-24(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L174
	movl	$arc_stats+128, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L176
	.align 32
.L174:
	movl	$arc_stats+224, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L176
	.align 32
.L173:
	mov	-24(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L177
	movl	$arc_stats+320, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L176
	.align 32
.L177:
	movl	$arc_stats+416, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L176:
	movl	$1, %ebx
	.align 32
.L169:
	movq	8(%rbp), %rsi
	movl	$arc_buf_add_ref, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 1198 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE27:
	.size	arc_buf_add_ref, .-arc_buf_add_ref
	.align 32
	.type	arc_buf_data_free, @function
arc_buf_data_free:
.LFB28:
	.loc 2 1207 0
	.cfi_startproc
	pushq	%rbp
.LCFI50:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI51:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 2 1207 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_data_free, %edi
	call	__cyg_profile_func_enter
	.loc 2 1208 0
	mov	-20(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L183
.LBB20:
	.loc 2 1210 0
	movl	$256, %esi
	movl	$20, %edi
	call	umem_alloc
	mov	%eax, %eax
	movl	%eax, -4(%rbp)
	.loc 2 1211 0
	mov	-4(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1212 0
	mov	-4(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 1213 0
	mov	-4(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 1214 0
	movl	$l2arc_free_on_write_mtx, %edi
	call	mutex_enter
	.loc 2 1215 0
	mov	l2arc_free_on_write(%rip), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_head
	.loc 2 1216 0
	movl	$l2arc_free_on_write_mtx, %edi
	call	mutex_exit
	.loc 2 1217 0
	movl	$arc_stats+1904, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L184
	.align 32
.L183:
.LBE20:
	.loc 2 1219 0
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	mov	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%edx, %edi
	naclcall	%eax,%r15
	.align 32
.L184:
	movq	8(%rbp), %rsi
	movl	$arc_buf_data_free, %edi
	call	__cyg_profile_func_exit
	.loc 2 1221 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE28:
	.size	arc_buf_data_free, .-arc_buf_data_free
	.section	.rodata
.LC53:
	.string	"type == ARC_BUFC_DATA"
	.align 8
.LC54:
	.string	"refcount_is_zero(&buf->b_hdr->b_refcnt)"
.LC55:
	.string	"state != arc_anon"
.LC56:
	.string	"*cnt"
.LC57:
	.string	"state->arcs_size"
.LC58:
	.string	"buf->b_hdr->b_datacnt > 0"
.LC59:
	.string	"buf->b_efunc == ((void *)0)"
	.text
	.align 32
	.type	arc_buf_destroy, @function
arc_buf_destroy:
.LFB29:
	.loc 2 1225 0
	.cfi_startproc
	pushq	%rbp
.LCFI52:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI53:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movl	%edx, -108(%rbp)
	.loc 2 1225 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_destroy, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1229 0
	mov	-100(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L187
.LBB21:
	.loc 2 1230 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:172(%r15,%rax), %eax
	movl	%eax, -84(%rbp)
	.loc 2 1231 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 1232 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:152(%r15,%rax), %eax
	movl	%eax, -72(%rbp)
	.loc 2 1234 0
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	call	arc_cksum_verify
	.loc 2 1235 0
	cmpl	$0, -104(%rbp)
	jne	.L188
	.loc 2 1236 0
	cmpl	$1, -72(%rbp)
	jne	.L189
	.loc 2 1237 0
	movq	-80(%rbp), %rax
	mov	-100(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %esi
	mov	-100(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %ebx
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	$zio_buf_free, %esi
	movl	%ebx, %edi
	call	arc_buf_data_free
	.loc 2 1239 0
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	arc_space_return
	jmp	.L188
	.align 32
.L189:
	.loc 2 1241 0
	cmpl	$0, -72(%rbp)
	je	.L190
	movl	$__PRETTY_FUNCTION__.10530, %ecx
	movl	$1241, %edx
	movl	$.LC3, %esi
	movl	$.LC53, %edi
	call	__assert_fail
	.align 32
.L190:
	.loc 2 1242 0
	movq	-80(%rbp), %rax
	mov	-100(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %esi
	mov	-100(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %ebx
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	$zio_data_buf_free, %esi
	movl	%ebx, %edi
	call	arc_buf_data_free
	.loc 2 1244 0
	movq	-80(%rbp), %rax
	negq	%rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L188:
	.loc 2 1247 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	je	.L191
.LBB22:
	.loc 2 1248 0
	movl	-84(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	-72(%rbp), %edx
	sall	$3, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 1250 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L192
	movl	$__PRETTY_FUNCTION__.10530, %ecx
	movl	$1250, %edx
	movl	$.LC3, %esi
	movl	$.LC54, %edi
	call	__assert_fail
	.align 32
.L192:
	.loc 2 1251 0
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -84(%rbp)
	jne	.L193
	movl	$__PRETTY_FUNCTION__.10530, %ecx
	movl	$1251, %edx
	movl	$.LC3, %esi
	movl	$.LC55, %edi
	call	__assert_fail
	.align 32
.L193:
.LBB23:
	.loc 2 1253 0
	mov	-68(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.L194
.LBB24:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC48, %r9d
	movl	$.LC29, %r8d
	movl	$.LC56, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10530, %r8d
	movl	$1253, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L194:
.LBE24:
.LBE23:
	.loc 2 1254 0
	movq	-80(%rbp), %rax
	negq	%rax
	mov	-68(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L191:
.LBE22:
.LBB25:
	.loc 2 1256 0
	mov	-84(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.L195
.LBB26:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC48, %r9d
	movl	$.LC29, %r8d
	movl	$.LC57, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10530, %r8d
	movl	$1256, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L195:
.LBE26:
.LBE25:
	.loc 2 1257 0
	movq	-80(%rbp), %rax
	negq	%rax
	movl	-84(%rbp), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1258 0
	mov	-100(%rbp), %eax
	movl	$0, %nacl:8(%r15,%rax)
	.loc 2 1259 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L196
	movl	$__PRETTY_FUNCTION__.10530, %ecx
	movl	$1259, %edx
	movl	$.LC3, %esi
	movl	$.LC58, %edi
	call	__assert_fail
	.align 32
.L196:
	.loc 2 1260 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	-100(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %edx
	movl	%nacl:92(%r15,%rdx), %edx
	subl	$1, %edx
	movl	%edx, %nacl:92(%r15,%rax)
	.align 32
.L187:
.LBE21:
	.loc 2 1264 0
	cmpl	$0, -108(%rbp)
	jne	.L197
	movl	$0, %ebx
	jmp	.L198
	.align 32
.L197:
	.loc 2 1268 0
	mov	-100(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$84, %eax
	movl	%eax, -88(%rbp)
	jmp	.L199
	.align 32
.L200:
	mov	-88(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$4, %eax
	movl	%eax, -88(%rbp)
	.align 32
.L199:
	mov	-88(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -100(%rbp)
	jne	.L200
	.loc 2 1270 0
	mov	-100(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %edx
	mov	-88(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1272 0
	mov	-100(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L201
	movl	$__PRETTY_FUNCTION__.10530, %ecx
	movl	$1272, %edx
	movl	$.LC3, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L201:
	.loc 2 1275 0
	mov	-100(%rbp), %eax
	movl	$0, %nacl:(%r15,%rax)
	.loc 2 1276 0
	mov	buf_cache(%rip), %edx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	movl	$1, %ebx
	.align 32
.L198:
	movq	8(%rbp), %rsi
	movl	$arc_buf_destroy, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 1277 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE29:
	.size	arc_buf_destroy, .-arc_buf_destroy
	.section	.rodata
.LC60:
	.string	"arc_anon"
.LC61:
	.string	"hdr->b_state"
.LC62:
	.string	"!((hdr)->b_flags & (1 << 10))"
.LC63:
	.string	"!(hdr->b_flags & (1 << 19))"
.LC64:
	.string	"!((hdr)->b_flags & (1 << 9))"
.LC65:
	.string	"buf->b_hdr != ((void *)0)"
	.align 8
.LC66:
	.string	"!list_link_active(&hdr->b_arc_node)"
.LC67:
	.string	"hdr->b_hash_next"
.LC68:
	.string	"hdr->b_acb"
	.text
	.align 32
	.type	arc_hdr_destroy, @function
arc_hdr_destroy:
.LFB30:
	.loc 2 1281 0
	.cfi_startproc
	pushq	%rbp
.LCFI54:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI55:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -68(%rbp)
	.loc 2 1281 0
	movq	8(%rbp), %rsi
	movl	$arc_hdr_destroy, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1282 0
	movl	-68(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L207
	movl	$__PRETTY_FUNCTION__.10621, %ecx
	movl	$1282, %edx
	movl	$.LC3, %esi
	movl	$.LC50, %edi
	call	__assert_fail
	.align 32
.L207:
.LBB27:
	.loc 2 1283 0
	mov	-68(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	movl	%eax, -56(%rbp)
	mov	arc_anon(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L208
.LBB28:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	mov	-52(%rbp), %ecx
	mov	-56(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-48(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC60, %r9d
	movl	$.LC22, %r8d
	movl	$.LC61, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10621, %r8d
	movl	$1283, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L208:
.LBE28:
.LBE27:
	.loc 2 1284 0
	mov	-68(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L209
	movl	$__PRETTY_FUNCTION__.10621, %ecx
	movl	$1284, %edx
	movl	$.LC3, %esi
	movl	$.LC62, %edi
	call	__assert_fail
	.align 32
.L209:
	.loc 2 1285 0
	mov	-68(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L210
	movl	$__PRETTY_FUNCTION__.10621, %ecx
	movl	$1285, %edx
	movl	$.LC3, %esi
	movl	$.LC63, %edi
	call	__assert_fail
	.align 32
.L210:
	.loc 2 1287 0
	mov	-68(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L211
	.loc 2 1288 0
	mov	l2arc_buflist_mtx(%rip), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L212
	.loc 2 1299 0
	movl	$l2arc_buflist_mtx, %edi
	call	mutex_enter
	.loc 2 1300 0
	mov	-68(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L213
	.loc 2 1301 0
	mov	-68(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:60(%r15,%rax), %edx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_remove
	.align 32
.L213:
	.loc 2 1304 0
	movl	$l2arc_buflist_mtx, %edi
	call	mutex_exit
	jmp	.L214
	.align 32
.L212:
	.loc 2 1306 0
	mov	-68(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:60(%r15,%rax), %edx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_remove
	.align 32
.L214:
	.loc 2 1308 0
	mov	-68(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	negq	%rax
	movl	$arc_stats+2096, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1309 0
	mov	-68(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 1310 0
	mov	-68(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	jne	.L215
	.loc 2 1311 0
	call	l2arc_hdr_stat_remove
	.align 32
.L215:
	.loc 2 1312 0
	mov	-68(%rbp), %eax
	movl	$0, %nacl:288(%r15,%rax)
	.align 32
.L211:
	.loc 2 1315 0
	mov	-68(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L216
	mov	-68(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L216
	mov	-68(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L228
	.align 32
.L216:
	.loc 2 1316 0
	mov	-68(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L218
	movl	$__PRETTY_FUNCTION__.10621, %ecx
	movl	$1316, %edx
	movl	$.LC3, %esi
	movl	$.LC64, %edi
	call	__assert_fail
	.align 32
.L218:
	.loc 2 1317 0
	mov	-68(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 1318 0
	mov	-68(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	.loc 2 1319 0
	mov	-68(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	.loc 2 1321 0
	jmp	.L219
	.align 32
.L222:
.LBB29:
	.loc 2 1322 0
	mov	-68(%rbp), %eax
	movl	%nacl:84(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1324 0
	mov	-44(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L220
	.loc 2 1325 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 1326 0
	mov	-44(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L221
	movl	$__PRETTY_FUNCTION__.10621, %ecx
	movl	$1326, %edx
	movl	$.LC3, %esi
	movl	$.LC65, %edi
	call	__assert_fail
	.align 32
.L221:
	.loc 2 1327 0
	mov	-68(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	.loc 2 1328 0
	mov	-44(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:84(%r15,%rax)
	.loc 2 1329 0
	mov	-44(%rbp), %eax
	movl	$arc_eviction_hdr, %nacl:(%r15,%rax)
	.loc 2 1330 0
	mov	arc_eviction_list(%rip), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 1331 0
	movl	-44(%rbp), %eax
	movl	%eax, arc_eviction_list(%rip)
	.loc 2 1332 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	jmp	.L219
	.align 32
.L220:
	.loc 2 1334 0
	mov	-68(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	jmp	.L219
	.align 32
.L228:
.LBE29:
	.loc 2 1321 0
	nop
	.align 32
.L219:
	mov	-68(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L222
	.loc 2 1337 0
	mov	-68(%rbp), %eax
	mov	%nacl:76(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L223
	.loc 2 1338 0
	mov	-68(%rbp), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movl	$32, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 1339 0
	mov	-68(%rbp), %eax
	movl	$0, %nacl:76(%r15,%rax)
	.align 32
.L223:
	.loc 2 1342 0
	movl	-68(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	je	.L224
	movl	$__PRETTY_FUNCTION__.10621, %ecx
	movl	$1342, %edx
	movl	$.LC3, %esi
	movl	$.LC66, %edi
	call	__assert_fail
	.align 32
.L224:
.LBB30:
	.loc 2 1343 0
	mov	-68(%rbp), %eax
	mov	%nacl:80(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L225
.LBB31:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	mov	-36(%rbp), %ecx
	mov	-40(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-32(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC25, %r9d
	movl	$.LC22, %r8d
	movl	$.LC67, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-32(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10621, %r8d
	movl	$1343, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L225:
.LBE31:
.LBE30:
.LBB32:
	.loc 2 1344 0
	mov	-68(%rbp), %eax
	mov	%nacl:96(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L226
.LBB33:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	mov	-24(%rbp), %ecx
	mov	-28(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC25, %r9d
	movl	$.LC22, %r8d
	movl	$.LC68, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10621, %r8d
	movl	$1344, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L226:
.LBE33:
.LBE32:
	.loc 2 1345 0
	mov	hdr_cache(%rip), %edx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	movq	8(%rbp), %rsi
	movl	$arc_hdr_destroy, %edi
	call	__cyg_profile_func_exit
	.loc 2 1346 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE30:
	.size	arc_hdr_destroy, .-arc_hdr_destroy
	.section	.rodata
.LC69:
	.string	"buf->b_data != ((void *)0)"
.LC70:
	.string	"((hdr)->b_flags & (1 << 11))"
	.text
	.align 32
.globl arc_buf_free
	.type	arc_buf_free, @function
arc_buf_free:
.LFB31:
	.loc 2 1350 0
	.cfi_startproc
	pushq	%rbp
.LCFI56:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI57:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 1350 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_free, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1351 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 2 1352 0
	mov	-32(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	.loc 2 1354 0
	mov	-36(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L230
	movl	$__PRETTY_FUNCTION__.10744, %ecx
	movl	$1354, %edx
	movl	$.LC3, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L230:
	.loc 2 1355 0
	mov	-36(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L231
	movl	$__PRETTY_FUNCTION__.10744, %ecx
	movl	$1355, %edx
	movl	$.LC3, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L231:
	.loc 2 1357 0
	cmpl	$0, -28(%rbp)
	je	.L232
.LBB34:
	.loc 2 1358 0
	mov	-32(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-32(%rbp), %ebx
	mov	-32(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -24(%rbp)
	.loc 2 1360 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1361 0
	movl	-40(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-32(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	remove_reference
	.loc 2 1362 0
	mov	-32(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$1, %eax
	jbe	.L233
	.loc 2 1363 0
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	jmp	.L234
	.align 32
.L233:
	.loc 2 1365 0
	mov	-32(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$32, %dh
	mov	-32(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L234:
	.loc 2 1366 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	jmp	.L235
	.align 32
.L232:
.LBE34:
	.loc 2 1367 0
	mov	-32(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L236
.LBB35:
	.loc 2 1374 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 1375 0
	movl	-40(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	remove_reference
	.loc 2 1376 0
	movl	-32(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L237
	movl	$__PRETTY_FUNCTION__.10744, %ecx
	movl	$1376, %edx
	movl	$.LC3, %esi
	movl	$.LC50, %edi
	call	__assert_fail
	.align 32
.L237:
	.loc 2 1377 0
	mov	-32(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1378 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 1379 0
	cmpl	$0, -20(%rbp)
	je	.L242
	.loc 2 1380 0
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	jmp	.L235
	.align 32
.L236:
.LBE35:
	.loc 2 1382 0
	movl	-40(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	remove_reference
	testl	%eax, %eax
	jle	.L239
	.loc 2 1383 0
	mov	-32(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L240
	movl	$__PRETTY_FUNCTION__.10744, %ecx
	movl	$1383, %edx
	movl	$.LC3, %esi
	movl	$.LC70, %edi
	call	__assert_fail
	.align 32
.L240:
	.loc 2 1384 0
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	jmp	.L235
	.align 32
.L239:
	.loc 2 1386 0
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	jmp	.L235
	.align 32
.L242:
.LBB36:
	.loc 2 1380 0
	nop
	.align 32
.L235:
.LBE36:
	.loc 2 1386 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_free, %edi
	call	__cyg_profile_func_exit
	.loc 2 1389 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE31:
	.size	arc_buf_free, .-arc_buf_free
	.section	.rodata
.LC71:
	.string	"hdr->b_state != arc_anon"
	.align 8
.LC72:
	.string	"hdr->b_buf == buf && buf->b_next == ((void *)0)"
	.align 8
.LC73:
	.string	"no_callback || hdr->b_datacnt > 1 || refcount_is_zero(&hdr->b_refcnt)"
	.text
	.align 32
.globl arc_buf_remove_ref
	.type	arc_buf_remove_ref, @function
arc_buf_remove_ref:
.LFB32:
	.loc 2 1393 0
	.cfi_startproc
	pushq	%rbp
.LCFI58:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI59:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 1393 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_remove_ref, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1394 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1395 0
	mov	-28(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-28(%rbp), %ebx
	mov	-28(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -24(%rbp)
	.loc 2 1396 0
	mov	-36(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1398 0
	mov	-28(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L244
	.loc 2 1399 0
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_buf_free
	.loc 2 1400 0
	movl	-20(%rbp), %ebx
	jmp	.L245
	.align 32
.L244:
	.loc 2 1403 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1404 0
	mov	-28(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L246
	movl	$__PRETTY_FUNCTION__.10799, %ecx
	movl	$1404, %edx
	movl	$.LC3, %esi
	movl	$.LC71, %edi
	call	__assert_fail
	.align 32
.L246:
	.loc 2 1405 0
	mov	-36(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L247
	movl	$__PRETTY_FUNCTION__.10799, %ecx
	movl	$1405, %edx
	movl	$.LC3, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L247:
	.loc 2 1407 0
	movl	-40(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	remove_reference
	.loc 2 1408 0
	mov	-28(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$1, %eax
	jbe	.L248
	.loc 2 1409 0
	cmpl	$0, -20(%rbp)
	je	.L255
	.loc 2 1410 0
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	jmp	.L250
	.align 32
.L248:
	.loc 2 1411 0
	cmpl	$0, -20(%rbp)
	je	.L250
	.loc 2 1412 0
	mov	-28(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L251
	mov	-36(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L252
	.align 32
.L251:
	movl	$__PRETTY_FUNCTION__.10799, %ecx
	movl	$1412, %edx
	movl	$.LC3, %esi
	movl	$.LC72, %edi
	call	__assert_fail
	.align 32
.L252:
	.loc 2 1413 0
	mov	-28(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$32, %dh
	mov	-28(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	jmp	.L250
	.align 32
.L255:
	.loc 2 1410 0
	nop
	.align 32
.L250:
	.loc 2 1415 0
	cmpl	$0, -20(%rbp)
	jne	.L253
	mov	-28(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$1, %eax
	ja	.L253
	movl	-28(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L253
	movl	$__PRETTY_FUNCTION__.10799, %ecx
	movl	$1416, %edx
	movl	$.LC3, %esi
	movl	$.LC73, %edi
	call	__assert_fail
	.align 32
.L253:
	.loc 2 1417 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1418 0
	movl	-20(%rbp), %ebx
	.align 32
.L245:
	movq	8(%rbp), %rsi
	movl	$arc_buf_remove_ref, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1419 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE32:
	.size	arc_buf_remove_ref, .-arc_buf_remove_ref
	.align 32
.globl arc_buf_size
	.type	arc_buf_size, @function
arc_buf_size:
.LFB33:
	.loc 2 1423 0
	.cfi_startproc
	pushq	%rbp
.LCFI60:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI61:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 1423 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_size, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1424 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$arc_buf_size, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1425 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE33:
	.size	arc_buf_size, .-arc_buf_size
	.section	.rodata
	.align 8
.LC74:
	.string	"state == arc_mru || state == arc_mfu"
.LC75:
	.string	"refcount_count(&ab->b_refcnt)"
.LC76:
	.string	"((ab)->b_flags & (1 << 9))"
	.align 8
.LC77:
	.string	"only evicted %lld bytes from %x"
	.text
	.align 32
	.type	arc_evict, @function
arc_evict:
.LFB34:
	.loc 2 1443 0
	.cfi_startproc
	pushq	%rbp
.LCFI62:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI63:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$184, %r15
	movl	%edi, -132(%rbp)
	movl	%esi, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movl	%ecx, -148(%rbp)
	movl	%r8d, -152(%rbp)
	.loc 2 1443 0
	movq	8(%rbp), %rsi
	movl	$arc_evict, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1445 0
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	.loc 2 1446 0
	movl	$0, -84(%rbp)
	.loc 2 1447 0
	mov	-132(%rbp), %eax
	movl	-152(%rbp), %edx
	sall	$4, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -80(%rbp)
	.loc 2 1450 0
	movl	$0, -68(%rbp)
	.loc 2 1452 0
	mov	arc_mru(%rip), %eax
	cmpl	%eax, -132(%rbp)
	je	.L259
	mov	arc_mfu(%rip), %eax
	cmpl	%eax, -132(%rbp)
	je	.L259
	movl	$__PRETTY_FUNCTION__.10867, %ecx
	movl	$1452, %edx
	movl	$.LC3, %esi
	movl	$.LC74, %edi
	call	__assert_fail
	.align 32
.L259:
	.loc 2 1454 0
	mov	arc_mru(%rip), %eax
	cmpl	%eax, -132(%rbp)
	jne	.L260
	mov	arc_mru_ghost(%rip), %eax
	jmp	.L261
	.align 32
.L260:
	mov	arc_mfu_ghost(%rip), %eax
	.align 32
.L261:
	movl	%eax, -116(%rbp)
	.loc 2 1456 0
	movl	-132(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1457 0
	movl	-116(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1459 0
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	list_tail
	mov	%eax, %eax
	movl	%eax, -88(%rbp)
	jmp	.L262
	.align 32
.L281:
	.loc 2 1460 0
	movl	-88(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -84(%rbp)
	.loc 2 1462 0
	mov	-88(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L263
	cmpl	$0, -136(%rbp)
	je	.L264
	.loc 2 1463 0
	mov	-88(%rbp), %eax
	mov	%nacl:168(%r15,%rax), %eax
	.loc 2 1462 0
	cmpl	%eax, -136(%rbp)
	jne	.L263
	.align 32
.L264:
	.loc 2 1464 0
	mov	-88(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$16392, %eax
	.loc 2 1462 0
	testl	%eax, %eax
	je	.L265
	.loc 2 1465 0
	call	gethrtime
	movq	%rax, %rdx
	sarq	$23, %rdx
	mov	-88(%rbp), %eax
	movl	%nacl:184(%r15,%rax), %eax
	cltq
	subq	%rax, %rdx
	movl	arc_min_prefetch_lifespan(%rip), %eax
	cltq
	.loc 2 1462 0
	cmpq	%rax, %rdx
	jge	.L265
	.align 32
.L263:
	.loc 2 1466 0
	addq	$1, -104(%rbp)
	.loc 2 1467 0
	jmp	.L266
	.align 32
.L265:
	.loc 2 1470 0
	cmpl	$0, -148(%rbp)
	je	.L267
	mov	-88(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L267
	cmpl	$0, -84(%rbp)
	je	.L267
	.loc 2 1471 0
	mov	-84(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rdx
	movq	-144(%rbp), %rax
	.loc 2 1470 0
	cmpq	%rax, %rdx
	je	.L288
	.align 32
.L267:
	.loc 2 1473 0
	mov	-88(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-88(%rbp), %ebx
	mov	-88(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -76(%rbp)
	.loc 2 1474 0
	mov	-76(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	.loc 2 1475 0
	cmpl	$0, -72(%rbp)
	jne	.L268
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	mutex_tryenter
	testl	%eax, %eax
	je	.L269
	.align 32
.L268:
.LBB37:
	.loc 2 1476 0
	movl	-88(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L270
.LBB38:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-48(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC22, %r8d
	movl	$.LC75, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.10867, %r8d
	movl	$1476, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L270:
.LBE38:
.LBE37:
	.loc 2 1477 0
	mov	-88(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L289
	movl	$__PRETTY_FUNCTION__.10867, %ecx
	movl	$1477, %edx
	movl	$.LC3, %esi
	movl	$.LC35, %edi
	call	__assert_fail
	.align 32
.L275:
.LBB39:
	.loc 2 1479 0
	mov	-88(%rbp), %eax
	movl	%nacl:84(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1480 0
	mov	-44(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L273
	.loc 2 1481 0
	mov	-88(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	addq	%rax, -112(%rbp)
	.loc 2 1482 0
	cmpl	$0, -148(%rbp)
	je	.L273
	mov	-88(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	-152(%rbp), %eax
	jne	.L273
	.loc 2 1483 0
	mov	-88(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rdx
	movq	-144(%rbp), %rax
	.loc 2 1482 0
	cmpq	%rax, %rdx
	jne	.L273
	.loc 2 1484 0
	mov	-88(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$65536, %eax
	.loc 2 1482 0
	testl	%eax, %eax
	jne	.L273
	.loc 2 1485 0
	mov	-44(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 1486 0
	movl	$0, -148(%rbp)
	.align 32
.L273:
	.loc 2 1489 0
	mov	-44(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L274
	.loc 2 1490 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 1491 0
	mov	-44(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	cmpl	%eax, -68(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-44(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	.loc 2 1493 0
	mov	-44(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %edx
	mov	-88(%rbp), %eax
	movl	%edx, %nacl:84(%r15,%rax)
	.loc 2 1494 0
	mov	-44(%rbp), %eax
	movl	$arc_eviction_hdr, %nacl:(%r15,%rax)
	.loc 2 1495 0
	mov	arc_eviction_list(%rip), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 1496 0
	movl	-44(%rbp), %eax
	movl	%eax, arc_eviction_list(%rip)
	.loc 2 1497 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	jmp	.L272
	.align 32
.L274:
	.loc 2 1499 0
	mov	-44(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	cmpl	%eax, -68(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	jmp	.L272
	.align 32
.L289:
.LBE39:
	.loc 2 1478 0
	nop
	.align 32
.L272:
	mov	-88(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L275
	.loc 2 1503 0
	mov	-88(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L276
	movl	$__PRETTY_FUNCTION__.10867, %ecx
	movl	$1503, %edx
	movl	$.LC3, %esi
	movl	$.LC41, %edi
	call	__assert_fail
	.align 32
.L276:
	.loc 2 1504 0
	movl	-76(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-116(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	arc_change_state
	.loc 2 1505 0
	mov	-88(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L277
	movl	$__PRETTY_FUNCTION__.10867, %ecx
	movl	$1505, %edx
	movl	$.LC3, %esi
	movl	$.LC76, %edi
	call	__assert_fail
	.align 32
.L277:
	.loc 2 1506 0
	mov	-88(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$2, %dh
	mov	-88(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 1507 0
	mov	-88(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$223, %dh
	mov	-88(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 1509 0
	cmpl	$0, -72(%rbp)
	jne	.L278
	.loc 2 1510 0
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L278:
	.loc 2 1511 0
	cmpq	$0, -144(%rbp)
	js	.L290
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	ja	.L291
	.loc 2 1512 0
	jmp	.L280
	.align 32
.L269:
	.loc 2 1514 0
	addq	$1, -96(%rbp)
	jmp	.L266
	.align 32
.L288:
	.loc 2 1472 0
	nop
	jmp	.L266
	.align 32
.L290:
	.loc 2 1475 0
	nop
	jmp	.L266
	.align 32
.L291:
	nop
	.align 32
.L266:
	.loc 2 1459 0
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	.align 32
.L262:
	cmpl	$0, -88(%rbp)
	jne	.L281
	.align 32
.L280:
	.loc 2 1518 0
	movl	-116(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1519 0
	movl	-132(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1521 0
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jbe	.L282
	.loc 2 1522 0
	movl	zfs_flags(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L282
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	%edx, %r9d
	movq	%rax, %r8
	movl	$.LC77, %ecx
	movl	$1523, %edx
	movl	$__func__.10879, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	__dprintf
	.align 32
.L282:
	.loc 2 1525 0
	cmpq	$0, -104(%rbp)
	je	.L283
	.loc 2 1526 0
	movq	-104(%rbp), %rax
	movl	$arc_stats+848, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L283:
	.loc 2 1528 0
	cmpq	$0, -96(%rbp)
	je	.L284
	.loc 2 1529 0
	movq	-96(%rbp), %rax
	movl	$arc_stats+800, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L284:
	.loc 2 1535 0
	movl	arc_no_grow(%rip), %eax
	testl	%eax, %eax
	je	.L285
	.loc 2 1536 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	.loc 2 1535 0
	cmpq	%rax, %rdx
	jbe	.L285
.LBB40:
	.loc 2 1537 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	.loc 2 1538 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	.loc 2 1537 0
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 1538 0
	movq	%rax, -40(%rbp)
	.loc 2 1540 0
	cmpq	$0, -40(%rbp)
	jle	.L286
	mov	arc_mru_ghost(%rip), %edx
	movl	-152(%rbp), %eax
	addl	$4, %eax
	sall	$3, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L286
.LBB41:
	.loc 2 1542 0
	movq	-40(%rbp), %rdx
	mov	arc_mru_ghost(%rip), %ecx
	movl	-152(%rbp), %eax
	addl	$4, %eax
	sall	$3, %eax
	cltq
	leaq	(%rcx,%rax), %rax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 1543 0
	mov	arc_mru_ghost(%rip), %ecx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	arc_evict_ghost
.LBE41:
	.loc 2 1540 0
	jmp	.L285
	.align 32
.L286:
	.loc 2 1544 0
	mov	arc_mfu_ghost(%rip), %edx
	movl	-152(%rbp), %eax
	addl	$4, %eax
	sall	$3, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L285
.LBB42:
	.loc 2 1545 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	subq	%rax, %rdx
	mov	arc_mfu_ghost(%rip), %ecx
	movl	-152(%rbp), %eax
	addl	$4, %eax
	sall	$3, %eax
	cltq
	leaq	(%rcx,%rax), %rax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 1548 0
	mov	arc_mfu_ghost(%rip), %ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	arc_evict_ghost
	.align 32
.L285:
.LBE42:
.LBE40:
	.loc 2 1552 0
	mov	-68(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_evict, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1553 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE34:
	.size	arc_evict, .-arc_evict
	.section	.rodata
	.align 8
.LC78:
	.string	"((state) == arc_mru_ghost || (state) == arc_mfu_ghost || (state) == arc_l2c_only)"
.LC79:
	.string	"!((ab)->b_flags & (1 << 10))"
.LC80:
	.string	"bytes >= 0"
	.align 8
.LC81:
	.string	"only deleted %lld bytes from %p"
	.text
	.align 32
	.type	arc_evict_ghost, @function
arc_evict_ghost:
.LFB35:
	.loc 2 1561 0
	.cfi_startproc
	pushq	%rbp
.LCFI64:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI65:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	.loc 2 1561 0
	movq	8(%rbp), %rsi
	movl	$arc_evict_ghost, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1563 0
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
	.loc 2 1565 0
	movq	$0, -32(%rbp)
	.loc 2 1566 0
	movq	$0, -24(%rbp)
	.loc 2 1568 0
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -52(%rbp)
	je	.L293
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -52(%rbp)
	je	.L293
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -52(%rbp)
	je	.L293
	movl	$__PRETTY_FUNCTION__.11085, %ecx
	movl	$1568, %edx
	movl	$.LC3, %esi
	movl	$.LC78, %edi
	call	__assert_fail
	.align 32
.L293:
	.loc 2 1570 0
	movl	-52(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1571 0
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	list_tail
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	jmp	.L294
	.align 32
.L305:
	.loc 2 1572 0
	movl	-48(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 1573 0
	cmpl	$0, -56(%rbp)
	je	.L295
	mov	-48(%rbp), %eax
	mov	%nacl:168(%r15,%rax), %eax
	cmpl	%eax, -56(%rbp)
	jne	.L311
	.align 32
.L295:
	.loc 2 1575 0
	mov	-48(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-48(%rbp), %ebx
	mov	-48(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -36(%rbp)
	.loc 2 1576 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	mutex_tryenter
	testl	%eax, %eax
	je	.L297
	.loc 2 1577 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L298
	movl	$__PRETTY_FUNCTION__.11085, %ecx
	movl	$1577, %edx
	movl	$.LC3, %esi
	movl	$.LC79, %edi
	call	__assert_fail
	.align 32
.L298:
	.loc 2 1578 0
	mov	-48(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L299
	movl	$__PRETTY_FUNCTION__.11085, %ecx
	movl	$1578, %edx
	movl	$.LC3, %esi
	movl	$.LC39, %edi
	call	__assert_fail
	.align 32
.L299:
	.loc 2 1579 0
	movl	$arc_stats+704, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 1580 0
	mov	-48(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	addq	%rax, -32(%rbp)
	.loc 2 1582 0
	mov	-48(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L300
	.loc 2 1587 0
	mov	arc_l2c_only(%rip), %ecx
	movl	-36(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.loc 2 1588 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	jmp	.L301
	.align 32
.L300:
	.loc 2 1590 0
	mov	arc_anon(%rip), %ecx
	movl	-36(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.loc 2 1591 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1592 0
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	.align 32
.L301:
	.loc 2 1596 0
	cmpq	$0, -64(%rbp)
	js	.L312
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.L313
	.loc 2 1597 0
	jmp	.L303
	.align 32
.L297:
	.loc 2 1599 0
	cmpq	$0, -64(%rbp)
	jns	.L304
	.loc 2 1600 0
	movl	-52(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1601 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1602 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1603 0
	jmp	.L293
	.align 32
.L304:
	.loc 2 1605 0
	addq	$1, -24(%rbp)
	jmp	.L296
	.align 32
.L311:
	.loc 2 1574 0
	nop
	jmp	.L296
	.align 32
.L312:
	.loc 2 1597 0
	nop
	jmp	.L296
	.align 32
.L313:
	nop
	.align 32
.L296:
	.loc 2 1571 0
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	.align 32
.L294:
	cmpl	$0, -48(%rbp)
	jne	.L305
	.align 32
.L303:
	.loc 2 1608 0
	movl	-52(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1610 0
	mov	-52(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L306
	cmpq	$0, -64(%rbp)
	js	.L307
	.loc 2 1611 0
	movq	-64(%rbp), %rax
	.loc 2 1610 0
	cmpq	-32(%rbp), %rax
	jbe	.L306
	.align 32
.L307:
	.loc 2 1612 0
	movl	-52(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -40(%rbp)
	.loc 2 1613 0
	jmp	.L293
	.align 32
.L306:
	.loc 2 1616 0
	cmpq	$0, -24(%rbp)
	je	.L308
	.loc 2 1617 0
	movq	-24(%rbp), %rax
	movl	$arc_stats+800, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1618 0
	cmpq	$0, -64(%rbp)
	jns	.L308
	movl	$__PRETTY_FUNCTION__.11085, %ecx
	movl	$1618, %edx
	movl	$.LC3, %esi
	movl	$.LC80, %edi
	call	__assert_fail
	.align 32
.L308:
	.loc 2 1621 0
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L309
	.loc 2 1622 0
	movl	zfs_flags(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L309
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %r9d
	movq	%rax, %r8
	movl	$.LC81, %ecx
	movl	$1623, %edx
	movl	$__func__.11091, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	__dprintf
	.align 32
.L309:
	movq	8(%rbp), %rsi
	movl	$arc_evict_ghost, %edi
	call	__cyg_profile_func_exit
	.loc 2 1624 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE35:
	.size	arc_evict_ghost, .-arc_evict_ghost
	.align 32
	.type	arc_adjust, @function
arc_adjust:
.LFB36:
	.loc 2 1628 0
	.cfi_startproc
	pushq	%rbp
.LCFI66:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI67:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	.loc 2 1628 0
	movq	8(%rbp), %rsi
	movl	$arc_adjust, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1631 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_meta_used(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 1633 0
	movq	-88(%rbp), %rdx
	movq	arc_stats+1136(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L315
	mov	arc_mru(%rip), %eax
	movq	%nacl:32(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L315
.LBB43:
	.loc 2 1635 0
	movq	-88(%rbp), %rdx
	movq	arc_stats+1136(%rip), %rax
	subq	%rax, %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:32(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1636 0
	mov	arc_mru(%rip), %ebx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1637 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -88(%rbp)
	.align 32
.L315:
.LBE43:
	.loc 2 1640 0
	movq	-88(%rbp), %rdx
	movq	arc_stats+1136(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L316
	mov	arc_mru(%rip), %eax
	movq	%nacl:40(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L316
.LBB44:
	.loc 2 1642 0
	movq	-88(%rbp), %rdx
	movq	arc_stats+1136(%rip), %rax
	subq	%rax, %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:40(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 1643 0
	mov	arc_mru(%rip), %ebx
	movq	-48(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1645 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -88(%rbp)
	.align 32
.L316:
.LBE44:
	.loc 2 1648 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -80(%rbp)
	.loc 2 1650 0
	cmpq	$0, -80(%rbp)
	jle	.L317
	.loc 2 1651 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L317
	.loc 2 1652 0
	movq	-80(%rbp), %rdx
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 2 1653 0
	mov	arc_mru_ghost(%rip), %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	arc_evict_ghost
	.align 32
.L317:
	.loc 2 1657 0
	movq	arc_stats+1328(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jle	.L318
.LBB45:
	.loc 2 1660 0
	mov	arc_mfu(%rip), %eax
	movq	%nacl:32(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L319
.LBB46:
	.loc 2 1662 0
	movq	-72(%rbp), %rdx
	mov	arc_mfu(%rip), %eax
	movq	%nacl:32(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 1663 0
	mov	arc_mfu(%rip), %ebx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1665 0
	movq	arc_stats+1328(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -72(%rbp)
	.align 32
.L319:
.LBE46:
	.loc 2 1668 0
	cmpq	$0, -72(%rbp)
	jle	.L320
	.loc 2 1669 0
	mov	arc_mfu(%rip), %eax
	movq	%nacl:40(%r15,%rax), %rax
	.loc 2 1668 0
	testq	%rax, %rax
	je	.L320
.LBB47:
	.loc 2 1671 0
	movq	-72(%rbp), %rdx
	mov	arc_mfu(%rip), %eax
	movq	%nacl:40(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 1673 0
	mov	arc_mfu(%rip), %ebx
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ebx, %edi
	call	arc_evict
	.align 32
.L320:
.LBE47:
	.loc 2 1677 0
	movq	arc_stats+1328(%rip), %rdx
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	.loc 2 1678 0
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	addq	%rax, %rax
	.loc 2 1677 0
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 1680 0
	cmpq	$0, -40(%rbp)
	jle	.L318
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L318
	.loc 2 1681 0
	movq	-40(%rbp), %rdx
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 2 1682 0
	mov	arc_mfu_ghost(%rip), %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	arc_evict_ghost
	.align 32
.L318:
	movq	8(%rbp), %rsi
	movl	$arc_adjust, %edi
	call	__cyg_profile_func_exit
.LBE45:
	.loc 2 1685 0
	naclaspq	$88, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE36:
	.size	arc_adjust, .-arc_adjust
	.section	.rodata
.LC82:
	.string	"buf->b_efunc(buf) == 0"
	.text
	.align 32
	.type	arc_do_user_evicts, @function
arc_do_user_evicts:
.LFB37:
	.loc 2 1689 0
	.cfi_startproc
	pushq	%rbp
.LCFI68:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI69:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	.loc 2 1689 0
	movq	8(%rbp), %rsi
	movl	$arc_do_user_evicts, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1690 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 1691 0
	jmp	.L323
	.align 32
.L325:
.LBB48:
	.loc 2 1692 0
	movl	arc_eviction_list(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1693 0
	mov	-20(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	movl	%eax, arc_eviction_list(%rip)
	.loc 2 1694 0
	mov	-20(%rbp), %eax
	movl	$0, %nacl:(%r15,%rax)
	.loc 2 1695 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 1697 0
	mov	-20(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L324
	.loc 2 1698 0
	mov	-20(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	testl	%eax, %eax
	je	.L324
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC82, %r9d
	movl	$__PRETTY_FUNCTION__.11295, %r8d
	movl	$1698, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L324:
	.loc 2 1700 0
	mov	-20(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 1701 0
	mov	-20(%rbp), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 1702 0
	mov	buf_cache(%rip), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	.loc 2 1703 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.align 32
.L323:
.LBE48:
	.loc 2 1691 0
	mov	arc_eviction_list(%rip), %eax
	testq	%rax, %rax
	jne	.L325
	.loc 2 1705 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	movq	8(%rbp), %rsi
	movl	$arc_do_user_evicts, %edi
	call	__cyg_profile_func_exit
	.loc 2 1706 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE37:
	.size	arc_do_user_evicts, .-arc_do_user_evicts
	.section	.rodata
	.align 8
.LC83:
	.string	"spa || arc_eviction_list == ((void *)0)"
	.text
	.align 32
.globl arc_flush
	.type	arc_flush, @function
arc_flush:
.LFB38:
	.loc 2 1714 0
	.cfi_startproc
	pushq	%rbp
.LCFI70:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI71:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 1714 0
	movq	8(%rbp), %rsi
	movl	$arc_flush, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1715 0
	jmp	.L328
	.align 32
.L330:
	.loc 2 1716 0
	mov	arc_mru(%rip), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1717 0
	cmpl	$0, -20(%rbp)
	je	.L328
	.loc 2 1718 0
	nop
	.loc 2 1720 0
	jmp	.L331
	.align 32
.L328:
	.loc 2 1715 0
	mov	arc_mru(%rip), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	testq	%rax, %rax
	jne	.L330
	.loc 2 1720 0
	jmp	.L331
	.align 32
.L333:
	.loc 2 1721 0
	mov	arc_mru(%rip), %ebx
	movl	-20(%rbp), %eax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1722 0
	cmpl	$0, -20(%rbp)
	je	.L331
	.loc 2 1723 0
	nop
	.loc 2 1725 0
	jmp	.L334
	.align 32
.L331:
	.loc 2 1720 0
	mov	arc_mru(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	testq	%rax, %rax
	jne	.L333
	.loc 2 1725 0
	jmp	.L334
	.align 32
.L336:
	.loc 2 1726 0
	mov	arc_mfu(%rip), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1727 0
	cmpl	$0, -20(%rbp)
	je	.L334
	.loc 2 1728 0
	nop
	.loc 2 1730 0
	jmp	.L337
	.align 32
.L334:
	.loc 2 1725 0
	mov	arc_mfu(%rip), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	testq	%rax, %rax
	jne	.L336
	.loc 2 1730 0
	jmp	.L337
	.align 32
.L339:
	.loc 2 1731 0
	mov	arc_mfu(%rip), %ebx
	movl	-20(%rbp), %eax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	arc_evict
	.loc 2 1732 0
	cmpl	$0, -20(%rbp)
	jne	.L342
	.align 32
.L337:
	.loc 2 1730 0
	mov	arc_mfu(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	testq	%rax, %rax
	jne	.L339
	jmp	.L338
	.align 32
.L342:
	.loc 2 1733 0
	nop
	.align 32
.L338:
	.loc 2 1736 0
	mov	arc_mru_ghost(%rip), %ecx
	movl	-20(%rbp), %eax
	movq	$-1, %rdx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_evict_ghost
	.loc 2 1737 0
	mov	arc_mfu_ghost(%rip), %ecx
	movl	-20(%rbp), %eax
	movq	$-1, %rdx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_evict_ghost
	.loc 2 1739 0
	movl	$arc_reclaim_thr_lock, %edi
	call	mutex_enter
	.loc 2 1740 0
	call	arc_do_user_evicts
	.loc 2 1741 0
	movl	$arc_reclaim_thr_lock, %edi
	call	mutex_exit
	.loc 2 1742 0
	cmpl	$0, -20(%rbp)
	jne	.L340
	mov	arc_eviction_list(%rip), %eax
	testq	%rax, %rax
	je	.L340
	movl	$__PRETTY_FUNCTION__.11327, %ecx
	movl	$1742, %edx
	movl	$.LC3, %esi
	movl	$.LC83, %edi
	call	__assert_fail
	.align 32
.L340:
	movq	8(%rbp), %rsi
	movl	$arc_flush, %edi
	call	__cyg_profile_func_exit
	.loc 2 1743 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE38:
	.size	arc_flush, .-arc_flush
.globl arc_shrink_shift
	.data
	.align 4
	.type	arc_shrink_shift, @object
	.size	arc_shrink_shift, 4
arc_shrink_shift:
	.long	5
	.section	.rodata
	.align 8
.LC84:
	.string	"(arc_stats.arcstat_c.value.ui64) >= (arc_stats.arcstat_c_min.value.ui64)"
	.align 8
.LC85:
	.string	"(int64_t)(arc_stats.arcstat_p.value.ui64) >= 0"
	.text
	.align 32
.globl arc_shrink
	.type	arc_shrink, @function
arc_shrink:
.LFB39:
	.loc 2 1749 0
	.cfi_startproc
	pushq	%rbp
.LCFI72:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI73:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	.loc 2 1749 0
	movq	8(%rbp), %rsi
	movl	$arc_shrink, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1750 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1232(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L344
.LBB49:
	.loc 2 1756 0
	movq	arc_stats+1184(%rip), %rdx
	movl	arc_shrink_shift(%rip), %eax
	movq	%rdx, %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 1758 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1232(%rip), %rax
	addq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jbe	.L345
	.loc 2 1759 0
	movq	-24(%rbp), %rax
	negq	%rax
	movl	$arc_stats+1184, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	jmp	.L346
	.align 32
.L345:
	.loc 2 1761 0
	movq	arc_stats+1232(%rip), %rax
	movq	%rax, arc_stats+1184(%rip)
	.align 32
.L346:
	.loc 2 1763 0
	movq	arc_stats+1136(%rip), %rdx
	movl	arc_shrink_shift(%rip), %eax
	movq	%rdx, %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rax
	negq	%rax
	movl	$arc_stats+1136, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1764 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1328(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L347
	.loc 2 1765 0
	movq	arc_stats+1232(%rip), %rdx
	movq	arc_stats+1328(%rip), %rax
	cmpq	%rax, %rdx
	cmovae	%rdx, %rax
	movq	%rax, arc_stats+1184(%rip)
	.align 32
.L347:
	.loc 2 1766 0
	movq	arc_stats+1136(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L348
	.loc 2 1767 0
	movq	arc_stats+1184(%rip), %rax
	shrq	%rax
	movq	%rax, arc_stats+1136(%rip)
	.align 32
.L348:
	.loc 2 1768 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1232(%rip), %rax
	cmpq	%rax, %rdx
	jae	.L349
	movl	$__PRETTY_FUNCTION__.11364, %ecx
	movl	$1768, %edx
	movl	$.LC3, %esi
	movl	$.LC84, %edi
	call	__assert_fail
	.align 32
.L349:
	.loc 2 1769 0
	movq	arc_stats+1136(%rip), %rax
	testq	%rax, %rax
	jns	.L344
	movl	$__PRETTY_FUNCTION__.11364, %ecx
	movl	$1769, %edx
	movl	$.LC3, %esi
	movl	$.LC85, %edi
	call	__assert_fail
	.align 32
.L344:
.LBE49:
	.loc 2 1772 0
	movq	arc_stats+1328(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L350
	.loc 2 1773 0
	call	arc_adjust
	.align 32
.L350:
	movq	8(%rbp), %rsi
	movl	$arc_shrink, %edi
	call	__cyg_profile_func_exit
	.loc 2 1774 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE39:
	.size	arc_shrink, .-arc_shrink
	.align 32
	.type	arc_reclaim_needed, @function
arc_reclaim_needed:
.LFB40:
	.loc 2 1778 0
	.cfi_startproc
	pushq	%rbp
.LCFI74:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI75:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$8, %r15
	.loc 2 1778 0
	movq	8(%rbp), %rsi
	movl	$arc_reclaim_needed, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1834 0
	movl	$0, %ebx
	movq	8(%rbp), %rsi
	movl	$arc_reclaim_needed, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1835 0
	naclaspq	$8, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE40:
	.size	arc_reclaim_needed, .-arc_reclaim_needed
	.align 32
	.type	arc_kmem_reap_now, @function
arc_kmem_reap_now:
.LFB41:
	.loc 2 1839 0
	.cfi_startproc
	pushq	%rbp
.LCFI76:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI77:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	.loc 2 1839 0
	movq	8(%rbp), %rsi
	movl	$arc_kmem_reap_now, %edi
	call	__cyg_profile_func_enter
	.loc 2 1841 0
	movl	$0, -8(%rbp)
	.loc 2 1842 0
	movl	$0, -4(%rbp)
	.loc 2 1866 0
	cmpl	$0, -20(%rbp)
	jne	.L355
	.loc 2 1867 0
	call	arc_shrink
	.align 32
.L355:
	.loc 2 1869 0
	movl	$0, -12(%rbp)
	jmp	.L356
	.align 32
.L359:
	.loc 2 1870 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %eax
	cmpl	%eax, -8(%rbp)
	je	.L357
	.loc 2 1871 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	movl	%nacl:zio_buf_cache(%r15,%rax), %eax
	movl	%eax, -8(%rbp)
	.align 32
.L357:
	.loc 2 1874 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L358
	.loc 2 1875 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	movl	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	.align 32
.L358:
	.loc 2 1869 0
	addl	$1, -12(%rbp)
	.align 32
.L356:
	cmpl	$255, -12(%rbp)
	jbe	.L359
	movq	8(%rbp), %rsi
	movl	$arc_kmem_reap_now, %edi
	call	__cyg_profile_func_exit
	.loc 2 1881 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE41:
	.size	arc_kmem_reap_now, .-arc_kmem_reap_now
	.section	.rodata
	.align 8
.LC86:
	.string	"(((&cpr)->cc_lockp)->m_owner == ((void *)(uintptr_t)pthread_self()))"
	.text
	.align 32
	.type	arc_reclaim_thread, @function
arc_reclaim_thread:
.LFB42:
	.loc 2 1885 0
	.cfi_startproc
	pushq	%rbp
.LCFI78:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI79:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	.loc 2 1885 0
	movq	8(%rbp), %rsi
	movl	$arc_reclaim_thread, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1886 0
	movq	$0, -32(%rbp)
	.loc 2 1887 0
	movl	$1, -20(%rbp)
	.loc 2 1890 0
	movl	$arc_reclaim_thr_lock, -48(%rbp)
	.loc 2 1892 0
	movl	$arc_reclaim_thr_lock, %edi
	call	mutex_enter
	.loc 2 1893 0
	jmp	.L362
	.align 32
.L372:
	.loc 2 1894 0
	call	arc_reclaim_needed
	testl	%eax, %eax
	je	.L363
	.loc 2 1896 0
	movl	arc_no_grow(%rip), %eax
	testl	%eax, %eax
	je	.L364
	.loc 2 1897 0
	cmpl	$1, -20(%rbp)
	jne	.L365
	.loc 2 1898 0
	movl	$0, -20(%rbp)
	.loc 2 1900 0
	jmp	.L367
	.align 32
.L365:
	movl	$1, -20(%rbp)
	jmp	.L367
	.align 32
.L364:
	.loc 2 1903 0
	movl	$1, arc_no_grow(%rip)
	.loc 2 1904 0
	movl	$0, -20(%rbp)
	.loc 2 1905 0
	call	membar_producer
	.align 32
.L367:
	.loc 2 1909 0
	call	gethrtime
	movq	%rax, %rdx
	sarq	$23, %rdx
	movl	arc_grow_retry(%rip), %eax
	imull	$119, %eax, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1911 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	arc_kmem_reap_now
	.loc 2 1912 0
	movl	$1, arc_warm(%rip)
	jmp	.L368
	.align 32
.L363:
	.loc 2 1914 0
	movl	arc_no_grow(%rip), %eax
	testl	%eax, %eax
	je	.L368
	call	gethrtime
	sarq	$23, %rax
	cmpq	-32(%rbp), %rax
	jl	.L368
	.loc 2 1915 0
	movl	$0, arc_no_grow(%rip)
	.align 32
.L368:
	.loc 2 1918 0
	movq	arc_stats+1184(%rip), %rax
	leaq	(%rax,%rax), %rcx
	movq	arc_stats+1328(%rip), %rdx
	.loc 2 1919 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	leaq	(%rdx,%rax), %rax
	.loc 2 1918 0
	cmpq	%rax, %rcx
	jae	.L369
	.loc 2 1920 0
	call	arc_adjust
	.align 32
.L369:
	.loc 2 1922 0
	mov	arc_eviction_list(%rip), %eax
	testq	%rax, %rax
	je	.L370
	.loc 2 1923 0
	call	arc_do_user_evicts
	.align 32
.L370:
	.loc 2 1926 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L371
	movl	$__PRETTY_FUNCTION__.11445, %ecx
	movl	$1926, %edx
	movl	$.LC3, %esi
	movl	$.LC86, %edi
	call	__assert_fail
	.align 32
.L371:
	.loc 2 1928 0
	call	gethrtime
	sarq	$23, %rax
	.loc 2 1927 0
	addl	$119, %eax
	movl	%eax, %edx
	movl	$arc_reclaim_thr_lock, %esi
	movl	$arc_reclaim_thr_cv, %edi
	call	cv_timedwait
	.loc 2 1929 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L362
	movl	$__PRETTY_FUNCTION__.11445, %ecx
	movl	$1929, %edx
	movl	$.LC3, %esi
	movl	$.LC86, %edi
	call	__assert_fail
	.align 32
.L362:
	.loc 2 1893 0
	movzbl	arc_thread_exit(%rip), %eax
	testb	%al, %al
	je	.L372
	.loc 2 1932 0
	movb	$0, arc_thread_exit(%rip)
	.loc 2 1933 0
	movl	$arc_reclaim_thr_cv, %edi
	call	cv_broadcast
	.loc 2 1934 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L373
	movl	$__PRETTY_FUNCTION__.11445, %ecx
	movl	$1934, %edx
	movl	$.LC3, %esi
	movl	$.LC86, %edi
	call	__assert_fail
	.align 32
.L373:
	mov	-48(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	movq	8(%rbp), %rsi
	movl	$arc_reclaim_thread, %edi
	call	__cyg_profile_func_exit
	.loc 2 1938 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE42:
	.size	arc_reclaim_thread, .-arc_reclaim_thread
	.section	.rodata
.LC87:
	.string	"bytes > 0"
	.text
	.align 32
	.type	arc_adapt, @function
arc_adapt:
.LFB43:
	.loc 2 1947 0
	.cfi_startproc
	pushq	%rbp
.LCFI80:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI81:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 1947 0
	movq	8(%rbp), %rsi
	movl	$arc_adapt, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1950 0
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L376
	movl	$0, %ebx
	jmp	.L377
	.align 32
.L376:
	.loc 2 1953 0
	cmpl	$0, -36(%rbp)
	jg	.L378
	movl	$__PRETTY_FUNCTION__.11516, %ecx
	movl	$1953, %edx
	movl	$.LC3, %esi
	movl	$.LC87, %edi
	call	__assert_fail
	.align 32
.L378:
	.loc 2 1962 0
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L379
	.loc 2 1963 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jae	.L380
	.loc 2 1964 0
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	mov	arc_mru_ghost(%rip), %edx
	movq	%nacl:48(%r15,%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L381
	.align 32
.L380:
	.loc 2 1963 0
	movl	$1, %eax
	.align 32
.L381:
	movl	%eax, -20(%rbp)
	.loc 2 1966 0
	movq	arc_stats+1136(%rip), %rdx
	movl	-36(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, arc_stats+1136(%rip)
	jmp	.L382
	.align 32
.L379:
	.loc 2 1967 0
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L382
	.loc 2 1968 0
	mov	arc_mfu_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jae	.L383
	.loc 2 1969 0
	mov	arc_mru_ghost(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	mov	arc_mfu_ghost(%rip), %edx
	movq	%nacl:48(%r15,%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L384
	.align 32
.L383:
	.loc 2 1968 0
	movl	$1, %eax
	.align 32
.L384:
	movl	%eax, -20(%rbp)
	.loc 2 1971 0
	movq	arc_stats+1136(%rip), %rax
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, arc_stats+1136(%rip)
	.align 32
.L382:
	.loc 2 1973 0
	movq	arc_stats+1136(%rip), %rax
	testq	%rax, %rax
	jns	.L385
	movl	$__PRETTY_FUNCTION__.11516, %ecx
	movl	$1973, %edx
	movl	$.LC3, %esi
	movl	$.LC85, %edi
	call	__assert_fail
	.align 32
.L385:
	.loc 2 1975 0
	call	arc_reclaim_needed
	testl	%eax, %eax
	je	.L386
	.loc 2 1976 0
	movl	$arc_reclaim_thr_cv, %edi
	call	cv_signal
	movl	$0, %ebx
	jmp	.L377
	.align 32
.L386:
	.loc 2 1980 0
	movl	arc_no_grow(%rip), %eax
	testl	%eax, %eax
	je	.L387
	movl	$0, %ebx
	jmp	.L377
	.align 32
.L387:
	.loc 2 1983 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1280(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L388
	movl	$0, %ebx
	jmp	.L377
	.align 32
.L388:
	.loc 2 1990 0
	movq	arc_stats+1328(%rip), %rax
	movq	arc_stats+1184(%rip), %rdx
	subq	$262144, %rdx
	cmpq	%rdx, %rax
	jbe	.L389
	.loc 2 1991 0
	movl	-36(%rbp), %eax
	cltq
	movl	$arc_stats+1184, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 1992 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1280(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L390
	.loc 2 1993 0
	movq	arc_stats+1280(%rip), %rax
	movq	%rax, arc_stats+1184(%rip)
	jmp	.L391
	.align 32
.L390:
	.loc 2 1994 0
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L391
	.loc 2 1995 0
	movl	-36(%rbp), %eax
	cltq
	movl	$arc_stats+1136, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L391:
	.loc 2 1996 0
	movq	arc_stats+1136(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L389
	.loc 2 1997 0
	movq	arc_stats+1184(%rip), %rax
	movq	%rax, arc_stats+1136(%rip)
	.align 32
.L389:
	.loc 2 1999 0
	movq	arc_stats+1136(%rip), %rax
	testq	%rax, %rax
	jns	.L392
	movl	$__PRETTY_FUNCTION__.11516, %ecx
	movl	$1999, %edx
	movl	$.LC3, %esi
	movl	$.LC85, %edi
	call	__assert_fail
	.align 32
.L392:
	movl	$1, %ebx
	.align 32
.L377:
	movq	8(%rbp), %rsi
	movl	$arc_adapt, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 2000 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE43:
	.size	arc_adapt, .-arc_adapt
	.align 32
	.type	arc_evict_needed, @function
arc_evict_needed:
.LFB44:
	.loc 2 2008 0
	.cfi_startproc
	pushq	%rbp
.LCFI82:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI83:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 2008 0
	movq	8(%rbp), %rsi
	movl	$arc_evict_needed, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2009 0
	cmpl	$1, -20(%rbp)
	jne	.L398
	movq	arc_meta_used(%rip), %rdx
	movq	arc_meta_limit(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L398
	.loc 2 2010 0
	movl	$1, %ebx
	jmp	.L399
	.align 32
.L398:
	.loc 2 2024 0
	call	arc_reclaim_needed
	testl	%eax, %eax
	je	.L400
	.loc 2 2025 0
	movl	$1, %ebx
	jmp	.L399
	.align 32
.L400:
	.loc 2 2027 0
	movq	arc_stats+1328(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	seta	%al
	movzbl	%al, %ebx
	.align 32
.L399:
	movq	8(%rbp), %rsi
	movl	$arc_evict_needed, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2028 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE44:
	.size	arc_evict_needed, .-arc_evict_needed
	.align 32
	.type	arc_get_data_buf, @function
arc_get_data_buf:
.LFB45:
	.loc 2 2055 0
	.cfi_startproc
	pushq	%rbp
.LCFI84:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI85:
	.cfi_def_cfa_register 6
	naclsspq	$64, %r15
	movl	%edi, -52(%rbp)
	.loc 2 2055 0
	movq	8(%rbp), %rsi
	movl	$arc_get_data_buf, %edi
	call	__cyg_profile_func_enter
	.loc 2 2056 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:172(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 2057 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 2058 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:152(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 2060 0
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_adapt
	.loc 2 2066 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	arc_evict_needed
	testl	%eax, %eax
	jne	.L403
	.loc 2 2067 0
	cmpl	$1, -28(%rbp)
	jne	.L404
	.loc 2 2068 0
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 2069 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	arc_space_consume
	.loc 2 2075 0
	jmp	.L407
	.align 32
.L404:
	.loc 2 2071 0
	cmpl	$0, -28(%rbp)
	je	.L406
	movl	$__PRETTY_FUNCTION__.11630, %ecx
	movl	$2071, %edx
	movl	$.LC3, %esi
	movl	$.LC53, %edi
	call	__assert_fail
	.align 32
.L406:
	.loc 2 2072 0
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	call	zio_data_buf_alloc
	mov	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 2073 0
	movq	-40(%rbp), %rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 2075 0
	jmp	.L407
	.align 32
.L403:
	.loc 2 2082 0
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L408
	.loc 2 2083 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L409
	mov	arc_mru(%rip), %eax
	jmp	.L410
	.align 32
.L409:
	mov	arc_mfu(%rip), %eax
	.align 32
.L410:
	movl	%eax, -44(%rbp)
	jmp	.L411
	.align 32
.L408:
	.loc 2 2084 0
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L411
	.loc 2 2085 0
	movl	arc_mru(%rip), %eax
	movl	%eax, -44(%rbp)
	.align 32
.L411:
	.loc 2 2087 0
	mov	arc_mru(%rip), %eax
	cmpl	%eax, -44(%rbp)
	je	.L412
	mov	arc_anon(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L413
	.align 32
.L412:
.LBB50:
	.loc 2 2088 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 2089 0
	mov	arc_mfu(%rip), %edx
	movl	-28(%rbp), %eax
	addl	$4, %eax
	sall	$3, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L414
	.loc 2 2090 0
	movq	arc_stats+1136(%rip), %rax
	.loc 2 2089 0
	cmpq	-24(%rbp), %rax
	jbe	.L414
	mov	arc_mfu(%rip), %eax
	jmp	.L415
	.align 32
.L414:
	mov	arc_mru(%rip), %eax
	.align 32
.L415:
	movl	%eax, -44(%rbp)
.LBE50:
	.loc 2 2087 0
	jmp	.L416
	.align 32
.L413:
.LBB51:
	.loc 2 2093 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1136(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 2094 0
	mov	arc_mru(%rip), %edx
	movl	-28(%rbp), %eax
	addl	$4, %eax
	sall	$3, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L417
	.loc 2 2095 0
	mov	arc_mfu(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	.loc 2 2094 0
	cmpq	-16(%rbp), %rax
	jae	.L417
	mov	arc_mru(%rip), %eax
	jmp	.L418
	.align 32
.L417:
	mov	arc_mfu(%rip), %eax
	.align 32
.L418:
	movl	%eax, -44(%rbp)
	.align 32
.L416:
.LBE51:
	.loc 2 2097 0
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-44(%rbp), %eax
	movl	%ecx, %r8d
	movl	$1, %ecx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_evict
	mov	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:8(%r15,%rax)
	mov	-52(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L419
	.loc 2 2098 0
	cmpl	$1, -28(%rbp)
	jne	.L420
	.loc 2 2099 0
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 2100 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	arc_space_consume
	jmp	.L421
	.align 32
.L420:
	.loc 2 2102 0
	cmpl	$0, -28(%rbp)
	je	.L422
	movl	$__PRETTY_FUNCTION__.11630, %ecx
	movl	$2102, %edx
	movl	$.LC3, %esi
	movl	$.LC53, %edi
	call	__assert_fail
	.align 32
.L422:
	.loc 2 2103 0
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	call	zio_data_buf_alloc
	mov	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 2104 0
	movq	-40(%rbp), %rax
	movl	$arc_stats+1328, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L421:
	.loc 2 2106 0
	movl	$arc_stats+752, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L419:
	.loc 2 2108 0
	mov	-52(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L407
	movl	$__PRETTY_FUNCTION__.11630, %ecx
	movl	$2108, %edx
	movl	$.LC3, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L407:
	.loc 2 2114 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L423
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L423
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	je	.L423
.LBB52:
	.loc 2 2115 0
	mov	-52(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 2 2117 0
	movq	-40(%rbp), %rax
	mov	-4(%rbp), %edx
	mov	%nacl:172(%r15,%rdx), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 2118 0
	movl	-4(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	je	.L424
	.loc 2 2119 0
	movl	-4(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L425
	movl	$__PRETTY_FUNCTION__.11630, %ecx
	movl	$2119, %edx
	movl	$.LC3, %esi
	movl	$.LC50, %edi
	call	__assert_fail
	.align 32
.L425:
	.loc 2 2120 0
	movq	-40(%rbp), %rax
	mov	-4(%rbp), %edx
	mov	%nacl:172(%r15,%rdx), %edx
	addl	$32, %edx
	mov	%edx, %edx
	movl	-28(%rbp), %ecx
	sall	$3, %ecx
	leal	(%rcx,%rdx), %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L424:
	.loc 2 2126 0
	movq	arc_stats+1328(%rip), %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	jae	.L423
	mov	-4(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L423
	.loc 2 2127 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	arc_mru(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_stats+1136(%rip), %rax
	.loc 2 2126 0
	cmpq	%rax, %rdx
	jbe	.L423
	.loc 2 2128 0
	movq	arc_stats+1136(%rip), %rax
	movq	%rax, %rdx
	addq	-40(%rbp), %rdx
	movq	arc_stats+1184(%rip), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, arc_stats+1136(%rip)
	.align 32
.L423:
	movq	8(%rbp), %rsi
	movl	$arc_get_data_buf, %edi
	call	__cyg_profile_func_exit
.LBE52:
	.loc 2 2130 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE45:
	.size	arc_get_data_buf, .-arc_get_data_buf
	.section	.rodata
.LC88:
	.string	"buf->b_arc_access == 0"
	.align 8
.LC89:
	.string	"list_link_active(&buf->b_arc_node)"
	.align 8
.LC90:
	.string	"refcount_count(&buf->b_refcnt) == 0"
	.align 8
.LC91:
	.string	"refcount_count(&buf->b_refcnt)"
.LC92:
	.string	"!\"invalid arc state\""
	.text
	.align 32
	.type	arc_access, @function
arc_access:
.LFB46:
	.loc 2 2138 0
	.cfi_startproc
	pushq	%rbp
.LCFI86:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI87:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	.loc 2 2138 0
	movq	8(%rbp), %rsi
	movl	$arc_access, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2139 0
	mov	-56(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L428
	movl	$__PRETTY_FUNCTION__.11775, %ecx
	movl	$2139, %edx
	movl	$.LC3, %esi
	movl	$.LC17, %edi
	call	__assert_fail
	.align 32
.L428:
	.loc 2 2141 0
	mov	-52(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L429
	.loc 2 2148 0
	mov	-52(%rbp), %eax
	movl	%nacl:184(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L430
	movl	$__PRETTY_FUNCTION__.11775, %ecx
	movl	$2148, %edx
	movl	$.LC3, %esi
	movl	$.LC88, %edi
	call	__assert_fail
	.align 32
.L430:
	.loc 2 2149 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	.loc 2 2151 0
	mov	arc_mru(%rip), %ecx
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	jmp	.L431
	.align 32
.L429:
	.loc 2 2153 0
	mov	-52(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru(%rip), %eax
	cmpl	%eax, %edx
	jne	.L432
	.loc 2 2162 0
	mov	-52(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L433
	.loc 2 2163 0
	movl	-52(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	testq	%rax, %rax
	jne	.L434
	.loc 2 2164 0
	movl	-52(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	jne	.L454
	movl	$__PRETTY_FUNCTION__.11775, %ecx
	movl	$2164, %edx
	movl	$.LC3, %esi
	movl	$.LC89, %edi
	call	__assert_fail
	.align 32
.L434:
	.loc 2 2166 0
	mov	-52(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-9, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2167 0
	movl	$arc_stats+512, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L436
	.align 32
.L454:
	.loc 2 2164 0
	nop
	.align 32
.L436:
	.loc 2 2169 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	movl	$0, %ebx
	jmp	.L437
	.align 32
.L433:
	.loc 2 2178 0
	call	gethrtime
	movq	%rax, %rdx
	sarq	$23, %rdx
	mov	-52(%rbp), %eax
	movl	%nacl:184(%r15,%rax), %eax
	addl	$7, %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L438
	.loc 2 2184 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	.loc 2 2186 0
	mov	arc_mfu(%rip), %ecx
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.align 32
.L438:
	.loc 2 2188 0
	movl	$arc_stats+512, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L431
	.align 32
.L432:
	.loc 2 2189 0
	mov	-52(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, %edx
	jne	.L439
.LBB53:
	.loc 2 2197 0
	mov	-52(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L440
	.loc 2 2198 0
	movl	arc_mru(%rip), %eax
	movl	%eax, -48(%rbp)
	.loc 2 2199 0
	movl	-52(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	testq	%rax, %rax
	jle	.L455
	.loc 2 2200 0
	mov	-52(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-9, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	jmp	.L442
	.align 32
.L440:
	.loc 2 2203 0
	movl	arc_mfu(%rip), %eax
	movl	%eax, -48(%rbp)
	jmp	.L442
	.align 32
.L455:
	.loc 2 2200 0
	nop
	.align 32
.L442:
	.loc 2 2207 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	.loc 2 2208 0
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	arc_change_state
	.loc 2 2210 0
	movl	$arc_stats+560, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L431
	.align 32
.L439:
.LBE53:
	.loc 2 2211 0
	mov	-52(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu(%rip), %eax
	cmpl	%eax, %edx
	jne	.L443
	.loc 2 2221 0
	mov	-52(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L444
	.loc 2 2222 0
	movl	-52(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	testq	%rax, %rax
	je	.L445
	movl	$__PRETTY_FUNCTION__.11775, %ecx
	movl	$2222, %edx
	movl	$.LC3, %esi
	movl	$.LC90, %edi
	call	__assert_fail
	.align 32
.L445:
	.loc 2 2223 0
	movl	-52(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	jne	.L444
	movl	$__PRETTY_FUNCTION__.11775, %ecx
	movl	$2223, %edx
	movl	$.LC3, %esi
	movl	$.LC89, %edi
	call	__assert_fail
	.align 32
.L444:
	.loc 2 2225 0
	movl	$arc_stats+608, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 2226 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	jmp	.L431
	.align 32
.L443:
	.loc 2 2227 0
	mov	-52(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, %edx
	jne	.L446
.LBB54:
	.loc 2 2228 0
	movl	arc_mfu(%rip), %eax
	movl	%eax, -44(%rbp)
	.loc 2 2235 0
	mov	-52(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L447
.LBB55:
	.loc 2 2240 0
	movl	-52(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L448
.LBB56:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC22, %r8d
	movl	$.LC91, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.11775, %r8d
	movl	$2240, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L448:
.LBE56:
.LBE55:
	.loc 2 2241 0
	movl	arc_mru(%rip), %eax
	movl	%eax, -44(%rbp)
	.align 32
.L447:
	.loc 2 2244 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	.loc 2 2246 0
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-44(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	arc_change_state
	.loc 2 2248 0
	movl	$arc_stats+656, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L431
	.align 32
.L446:
.LBE54:
	.loc 2 2249 0
	mov	-52(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	jne	.L449
	.loc 2 2254 0
	call	gethrtime
	sarq	$23, %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:184(%r15,%rax)
	.loc 2 2256 0
	mov	arc_mfu(%rip), %ecx
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	jmp	.L431
	.align 32
.L449:
	.loc 2 2258 0
	movl	$__PRETTY_FUNCTION__.11775, %ecx
	movl	$2258, %edx
	movl	$.LC3, %esi
	movl	$.LC92, %edi
	call	__assert_fail
	.align 32
.L431:
	movl	$1, %ebx
	.align 32
.L437:
	movq	8(%rbp), %rsi
	movl	$arc_access, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 2260 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE46:
	.size	arc_access, .-arc_access
	.section	.rodata
	.align 8
.LC93:
	.string	"arc_buf_remove_ref(buf, arg) == 1"
	.text
	.align 32
.globl arc_bcopy_func
	.type	arc_bcopy_func, @function
arc_bcopy_func:
.LFB47:
	.loc 2 2266 0
	.cfi_startproc
	pushq	%rbp
.LCFI88:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI89:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	.loc 2 2266 0
	movq	8(%rbp), %rsi
	movl	$arc_bcopy_func, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2267 0
	mov	-24(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-24(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ecx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	bcopy
	.loc 2 2268 0
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_buf_remove_ref
	cmpl	$1, %eax
	je	.L457
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC93, %r9d
	movl	$__PRETTY_FUNCTION__.11911, %r8d
	movl	$2268, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L457:
	movq	8(%rbp), %rsi
	movl	$arc_bcopy_func, %edi
	call	__cyg_profile_func_exit
	.loc 2 2269 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE47:
	.size	arc_bcopy_func, .-arc_bcopy_func
	.align 32
.globl arc_getbuf_func
	.type	arc_getbuf_func, @function
arc_getbuf_func:
.LFB48:
	.loc 2 2274 0
	.cfi_startproc
	pushq	%rbp
.LCFI90:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI91:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 2274 0
	movq	8(%rbp), %rsi
	movl	$arc_getbuf_func, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2275 0
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 2 2276 0
	cmpl	$0, -36(%rbp)
	je	.L460
	mov	-36(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L460
	.loc 2 2277 0
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_buf_remove_ref
	cmpl	$1, %eax
	je	.L461
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC93, %r9d
	movl	$__PRETTY_FUNCTION__.11928, %r8d
	movl	$2277, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L461:
	.loc 2 2278 0
	mov	-20(%rbp), %eax
	movl	$0, %nacl:(%r15,%rax)
	.loc 2 2276 0
	jmp	.L462
	.align 32
.L460:
	.loc 2 2280 0
	mov	-20(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.align 32
.L462:
	movq	8(%rbp), %rsi
	movl	$arc_getbuf_func, %edi
	call	__cyg_profile_func_exit
	.loc 2 2282 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE48:
	.size	arc_getbuf_func, .-arc_getbuf_func
	.section	.rodata
	.align 8
.LC94:
	.ascii	"(found == ((void *)0) && ((hdr)->b_flags & (1 << 12)) && has"
	.ascii	"h_lock == ((void *)0)"
	.string	") || (found == hdr && ((&hdr->b_dva)->dva_word[1] == ((&(zio->io_bp)->blk_dva[0]))->dva_word[1] && (&hdr->b_dva)->dva_word[0] == ((&(zio->io_bp)->blk_dva[0]))->dva_word[0])) || (found == hdr && ((hdr)->b_flags & (1 << 10) && (hdr)->b_l2hdr != ((void *)0)))"
.LC95:
	.string	"callback_list != ((void *)0)"
.LC96:
	.string	"!((hdr)->b_flags & (1 << 13))"
	.align 8
.LC97:
	.string	"refcount_is_zero(&hdr->b_refcnt) || callback_list != ((void *)0)"
	.text
	.align 32
	.type	arc_read_done, @function
arc_read_done:
.LFB49:
	.loc 2 2286 0
	.cfi_startproc
	pushq	%rbp
.LCFI92:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI93:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -68(%rbp)
	.loc 2 2286 0
	movq	8(%rbp), %rsi
	movl	$arc_read_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2292 0
	movl	$0, -36(%rbp)
	.loc 2 2294 0
	mov	-68(%rbp), %eax
	mov	%nacl:244(%r15,%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 2295 0
	mov	-52(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 2 2305 0
	mov	-60(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-60(%rbp), %esi
	mov	-68(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ebx
	leal	-64(%rbp), %edx
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	%ebx, %edi
	call	buf_hash_find
	mov	%eax, %eax
	movl	%eax, -56(%rbp)
	.loc 2 2308 0
	cmpl	$0, -56(%rbp)
	jne	.L465
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L465
	mov	-64(%rbp), %eax
	testq	%rax, %rax
	je	.L466
	.align 32
.L465:
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.L467
	mov	-60(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L467
	mov	-60(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rdx
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	%rax, %rdx
	je	.L466
	.align 32
.L467:
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.L468
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L468
	mov	-60(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L466
	.align 32
.L468:
	movl	$__PRETTY_FUNCTION__.11951, %ecx
	movl	$2310, %edx
	movl	$.LC3, %esi
	movl	$.LC94, %edi
	call	__assert_fail
	.align 32
.L466:
	.loc 2 2312 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-131073, %edx
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2313 0
	movl	l2arc_noprefetch(%rip), %eax
	testl	%eax, %eax
	je	.L469
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L469
	.loc 2 2314 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-33, %edx
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L469:
	.loc 2 2317 0
	mov	-60(%rbp), %eax
	movl	%nacl:96(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 2318 0
	cmpl	$0, -44(%rbp)
	jne	.L470
	movl	$__PRETTY_FUNCTION__.11951, %ecx
	movl	$2318, %edx
	movl	$.LC3, %esi
	movl	$.LC95, %edi
	call	__assert_fail
	.align 32
.L470:
	.loc 2 2319 0
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:48(%r15,%rax), %rax
	sarq	$63, %rax
	cmpq	$-1, %rax
	je	.L471
.LBB57:
	.loc 2 2320 0
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$56, %rax
	andl	$31, %eax
	.loc 2 2322 0
	testq	%rax, %rax
	jne	.L472
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$48, %rax
	andl	$255, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	cltq
	mov	%nacl:dmu_ot(%r15,%rax), %eax
	jmp	.L473
	.align 32
.L472:
	movl	$byteswap_uint64_array, %eax
	mov	%eax, %eax
	.align 32
.L473:
	movl	%eax, -32(%rbp)
	.loc 2 2323 0
	mov	-60(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-52(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ecx
	mov	-32(%rbp), %eax
	movl	%edx, %esi
	movl	%ecx, %edi
	naclcall	%eax,%r15
	.align 32
.L471:
.LBE57:
	.loc 2 2326 0
	movl	-52(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_cksum_compute
	.loc 2 2329 0
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	.loc 2 2330 0
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L474
	.align 32
.L477:
	.loc 2 2331 0
	mov	-40(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L475
	.loc 2 2332 0
	cmpl	$0, -48(%rbp)
	jne	.L476
	.loc 2 2333 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	arc_buf_clone
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	.align 32
.L476:
	.loc 2 2334 0
	mov	-40(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 2335 0
	movl	$0, -48(%rbp)
	.align 32
.L475:
	.loc 2 2330 0
	mov	-40(%rbp), %eax
	movl	%nacl:16(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	.align 32
.L474:
	cmpl	$0, -40(%rbp)
	jne	.L477
	.loc 2 2338 0
	mov	-60(%rbp), %eax
	movl	$0, %nacl:96(%r15,%rax)
	.loc 2 2339 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$251, %dh
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2340 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L478
	movl	$__PRETTY_FUNCTION__.11951, %ecx
	movl	$2340, %edx
	movl	$.LC3, %esi
	movl	$.LC96, %edi
	call	__assert_fail
	.align 32
.L478:
	.loc 2 2341 0
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L479
	.loc 2 2342 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$32, %dh
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L479:
	.loc 2 2344 0
	movl	-60(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L480
	cmpl	$0, -44(%rbp)
	jne	.L480
	movl	$__PRETTY_FUNCTION__.11951, %ecx
	movl	$2344, %edx
	movl	$.LC3, %esi
	movl	$.LC97, %edi
	call	__assert_fail
	.align 32
.L480:
	.loc 2 2346 0
	mov	-68(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L481
	.loc 2 2347 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$8, %dh
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2348 0
	mov	-60(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	je	.L482
	.loc 2 2349 0
	mov	-64(%rbp), %edx
	mov	arc_anon(%rip), %ecx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.align 32
.L482:
	.loc 2 2350 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L483
	.loc 2 2351 0
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	buf_hash_remove
	.align 32
.L483:
	.loc 2 2352 0
	movl	-60(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	movl	%eax, -36(%rbp)
	.align 32
.L481:
	.loc 2 2360 0
	movl	-60(%rbp), %eax
	addl	$104, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_broadcast
	.loc 2 2362 0
	mov	-64(%rbp), %eax
	testq	%rax, %rax
	je	.L484
	.loc 2 2369 0
	mov	-68(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L485
	mov	-60(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L485
	.loc 2 2370 0
	mov	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_access
	.align 32
.L485:
	.loc 2 2371 0
	mov	-64(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2384 0
	jmp	.L488
	.align 32
.L484:
.LBB58:
	.loc 2 2379 0
	mov	-60(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	mov	arc_anon(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L487
.LBB59:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	mov	-24(%rbp), %ecx
	mov	-28(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC60, %r9d
	movl	$.LC22, %r8d
	movl	$.LC61, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.11951, %r8d
	movl	$2379, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L487:
.LBE59:
.LBE58:
	.loc 2 2380 0
	movl	-60(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	movl	%eax, -36(%rbp)
	.loc 2 2384 0
	jmp	.L488
	.align 32
.L491:
	.loc 2 2385 0
	mov	-40(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L489
	.loc 2 2386 0
	mov	-40(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	mov	-40(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %esi
	mov	-40(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ebx
	movl	-68(%rbp), %ecx
	movl	%esi, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	naclcall	%eax,%r15
	.align 32
.L489:
	.loc 2 2388 0
	mov	-40(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L490
	.loc 2 2389 0
	mov	-40(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	mov	-68(%rbp), %edx
	movl	%nacl:528(%r15,%rdx), %edx
	movl	%edx, %nacl:528(%r15,%rax)
	.loc 2 2390 0
	mov	-40(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	movl	%eax, %edi
	call	zio_nowait
	.align 32
.L490:
	.loc 2 2393 0
	mov	-40(%rbp), %eax
	movl	%nacl:16(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 2394 0
	movl	-40(%rbp), %eax
	movl	$20, %esi
	movl	%eax, %edi
	call	umem_free
	.align 32
.L488:
	.loc 2 2384 0
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L491
	.loc 2 2397 0
	cmpl	$0, -36(%rbp)
	je	.L492
	.loc 2 2398 0
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	.align 32
.L492:
	movq	8(%rbp), %rsi
	movl	$arc_read_done, %edi
	call	__cyg_profile_func_exit
	.loc 2 2399 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE49:
	.size	arc_read_done, .-arc_read_done
	.section	.rodata
	.align 8
.LC98:
	.string	"!refcount_is_zero(&pbuf->b_hdr->b_refcnt)"
.LC99:
	.string	"pbuf->b_hdr->b_size"
.LC100:
	.string	"<"
	.align 8
.LC101:
	.string	"(char *)bp - (char *)pbuf->b_data"
.LC102:
	.string	"pbuf->b_hdr"
.LC103:
	.string	"hdr"
	.text
	.align 32
.globl arc_read
	.type	arc_read, @function
arc_read:
.LFB50:
	.loc 2 2427 0
	.cfi_startproc
	pushq	%rbp
.LCFI94:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI95:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movl	%edx, -76(%rbp)
	movl	%ecx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	.loc 2 2427 0
	movq	8(%rbp), %rsi
	movl	$arc_read, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2429 0
	mov	-80(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 2431 0
	mov	-80(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	je	.L495
	movl	$__PRETTY_FUNCTION__.12117, %ecx
	movl	$2431, %edx
	movl	$.LC3, %esi
	movl	$.LC98, %edi
	call	__assert_fail
	.align 32
.L495:
.LBB60:
	.loc 2 2432 0
	movl	-76(%rbp), %edx
	mov	-80(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	movq	%rax, -48(%rbp)
	mov	-80(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L496
.LBB61:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC100, 8(%rsp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC99, %r9d
	movl	$.LC100, %r8d
	movl	$.LC101, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-32(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12117, %r8d
	movl	$2432, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L496:
.LBE61:
.LBE60:
	.loc 2 2433 0
	mov	-80(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$300, %eax
	mov	%eax, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 2435 0
	movl	-88(%rbp), %edi
	movl	-84(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %ebx
	movl	-68(%rbp), %eax
	movl	40(%rbp), %esi
	movl	%esi, 16(%rsp)
	movl	32(%rbp), %esi
	movl	%esi, 8(%rsp)
	movl	24(%rbp), %esi
	movl	%esi, (%rsp)
	movl	16(%rbp), %r9d
	movl	%edi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	arc_read_nolock
	movl	%eax, -56(%rbp)
.LBB62:
	.loc 2 2438 0
	movl	-52(%rbp), %eax
	movl	%eax, -28(%rbp)
	mov	-80(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L497
.LBB63:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	mov	-24(%rbp), %ecx
	mov	-28(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC102, %r9d
	movl	$.LC22, %r8d
	movl	$.LC103, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12117, %r8d
	movl	$2438, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L497:
.LBE63:
.LBE62:
	.loc 2 2439 0
	mov	-80(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$300, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 2440 0
	movl	-56(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_read, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2441 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE50:
	.size	arc_read, .-arc_read
	.section	.rodata
.LC104:
	.string	"*arc_flags & (1 << 2)"
.LC105:
	.string	"acb->acb_done != ((void *)0)"
.LC106:
	.string	"buf"
.LC107:
	.string	"buf->b_data"
	.align 8
.LC108:
	.string	"((hdr->b_state) == arc_mru_ghost || (hdr->b_state) == arc_mfu_ghost || (hdr->b_state) == arc_l2c_only)"
	.align 8
.LC109:
	.string	"refcount_count(&hdr->b_refcnt)"
.LC110:
	.string	"hdr->b_buf == ((void *)0)"
.LC111:
	.string	"hdr->b_datacnt == 0"
.LC112:
	.string	"hdr->b_acb == ((void *)0)"
.LC113:
	.string	"hdr->b_size"
.LC114:
	.string	"*arc_flags & (1 << 1)"
	.text
	.align 32
.globl arc_read_nolock
	.type	arc_read_nolock, @function
arc_read_nolock:
.LFB51:
	.loc 2 2447 0
	.cfi_startproc
	pushq	%rbp
.LCFI96:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI97:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$200, %r15
	movl	%edi, -132(%rbp)
	movl	%esi, -136(%rbp)
	movl	%edx, -140(%rbp)
	movl	%ecx, -144(%rbp)
	movl	%r8d, -148(%rbp)
	movl	%r9d, -152(%rbp)
	.loc 2 2447 0
	movq	8(%rbp), %rsi
	movl	$arc_read_nolock, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.align 32
.L500:
	.loc 2 2454 0
	mov	-140(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-140(%rbp), %ebx
	leal	-116(%rbp), %ecx
	movl	-136(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	buf_hash_find
	mov	%eax, %eax
	movl	%eax, -112(%rbp)
	.loc 2 2455 0
	cmpl	$0, -112(%rbp)
	je	.L501
	mov	-112(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L501
	.loc 2 2457 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$16, %edx
	mov	24(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2459 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L502
	.loc 2 2461 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L503
	.loc 2 2462 0
	mov	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	addl	$104, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.loc 2 2463 0
	mov	-116(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2464 0
	jmp	.L500
	.align 32
.L503:
	.loc 2 2466 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L504
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2466, %edx
	movl	$.LC3, %esi
	movl	$.LC104, %edi
	call	__assert_fail
	.align 32
.L504:
	.loc 2 2468 0
	cmpl	$0, -144(%rbp)
	je	.L505
.LBB64:
	.loc 2 2469 0
	movl	$0, -100(%rbp)
	.loc 2 2471 0
	movl	$256, %esi
	movl	$20, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -100(%rbp)
	.loc 2 2473 0
	mov	-100(%rbp), %eax
	movl	-144(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 2474 0
	mov	-100(%rbp), %eax
	movl	-148(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2475 0
	cmpl	$0, -132(%rbp)
	je	.L506
	.loc 2 2476 0
	movl	-136(%rbp), %ebx
	movl	-132(%rbp), %eax
	movl	16(%rbp), %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_null
	mov	%eax, %edx
	mov	-100(%rbp), %eax
	movl	%edx, %nacl:12(%r15,%rax)
	.align 32
.L506:
	.loc 2 2479 0
	mov	-100(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L507
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2479, %edx
	movl	$.LC3, %esi
	movl	$.LC105, %edi
	call	__assert_fail
	.align 32
.L507:
	.loc 2 2480 0
	mov	-112(%rbp), %eax
	mov	%nacl:96(%r15,%rax), %edx
	mov	-100(%rbp), %eax
	movl	%edx, %nacl:16(%r15,%rax)
	.loc 2 2481 0
	mov	-112(%rbp), %eax
	movl	-100(%rbp), %edx
	movl	%edx, %nacl:96(%r15,%rax)
	.loc 2 2482 0
	mov	-116(%rbp), %ecx
	movl	-148(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	add_reference
	.loc 2 2483 0
	mov	-116(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2484 0
	movl	$0, %ebx
	jmp	.L508
	.align 32
.L505:
.LBE64:
	.loc 2 2486 0
	mov	-116(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2487 0
	movl	$0, %ebx
	jmp	.L508
	.align 32
.L502:
	.loc 2 2490 0
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru(%rip), %eax
	cmpl	%eax, %edx
	je	.L509
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu(%rip), %eax
	cmpl	%eax, %edx
	je	.L509
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2490, %edx
	movl	$.LC3, %esi
	movl	$.LC52, %edi
	call	__assert_fail
	.align 32
.L509:
	.loc 2 2492 0
	cmpl	$0, -144(%rbp)
	je	.L510
	.loc 2 2493 0
	mov	-116(%rbp), %ecx
	movl	-148(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	add_reference
	.loc 2 2499 0
	mov	-112(%rbp), %eax
	movl	%nacl:84(%r15,%rax), %eax
	movl	%eax, -108(%rbp)
	.loc 2 2500 0
	cmpl	$0, -108(%rbp)
	jne	.L511
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2500, %edx
	movl	$.LC3, %esi
	movl	$.LC106, %edi
	call	__assert_fail
	.align 32
.L511:
	.loc 2 2501 0
	mov	-108(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L512
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2501, %edx
	movl	$.LC3, %esi
	movl	$.LC107, %edi
	call	__assert_fail
	.align 32
.L512:
	.loc 2 2502 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L513
	.loc 2 2503 0
	mov	-108(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L514
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2503, %edx
	movl	$.LC3, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L514:
	.loc 2 2504 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$223, %dh
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2506 0
	jmp	.L516
	.align 32
.L513:
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	arc_buf_clone
	mov	%eax, %eax
	movl	%eax, -108(%rbp)
	jmp	.L516
	.align 32
.L510:
	.loc 2 2508 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L516
	.loc 2 2509 0
	movl	-112(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	.loc 2 2508 0
	testq	%rax, %rax
	jne	.L516
	.loc 2 2510 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L516:
	.loc 2 2513 0
	mov	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_access
	.loc 2 2514 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L517
	.loc 2 2515 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L517:
	.loc 2 2516 0
	mov	-116(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2517 0
	movl	$arc_stats+32, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 2518 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L518
	mov	-112(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L519
	movl	$arc_stats+128, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L521
	.align 32
.L519:
	movl	$arc_stats+224, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L521
	.align 32
.L518:
	mov	-112(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L522
	movl	$arc_stats+320, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L521
	.align 32
.L522:
	movl	$arc_stats+416, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L521:
	.loc 2 2522 0
	cmpl	$0, -144(%rbp)
	je	.L564
	.loc 2 2523 0
	movl	-148(%rbp), %edx
	movl	-108(%rbp), %ecx
	mov	-144(%rbp), %eax
	movl	%ecx, %esi
	movl	$0, %edi
	naclcall	%eax,%r15
	.loc 2 2455 0
	jmp	.L524
	.align 32
.L501:
.LBB65:
	.loc 2 2525 0
	mov	-140(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L525
	mov	-140(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	jmp	.L526
	.align 32
.L525:
	movl	$0, %eax
	.align 32
.L526:
	movq	%rax, -96(%rbp)
	.loc 2 2527 0
	movl	$0, -80(%rbp)
	.loc 2 2530 0
	cmpl	$0, -112(%rbp)
	jne	.L527
.LBB66:
	.loc 2 2533 0
	mov	-140(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$56, %rax
	andl	$31, %eax
	testq	%rax, %rax
	jne	.L528
	mov	-140(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$48, %rax
	andl	$255, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$dmu_ot+4, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L529
	.align 32
.L528:
	movl	$1, %eax
	jmp	.L530
	.align 32
.L529:
	movl	$0, %eax
	.align 32
.L530:
	movl	%eax, -68(%rbp)
	.loc 2 2534 0
	movq	-96(%rbp), %rax
	movl	%eax, %ebx
	movl	-68(%rbp), %ecx
	movl	-148(%rbp), %edx
	movl	-136(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	arc_buf_alloc
	mov	%eax, %eax
	movl	%eax, -108(%rbp)
	.loc 2 2535 0
	mov	-108(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -112(%rbp)
	.loc 2 2536 0
	mov	-112(%rbp), %eax
	mov	-140(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rdx
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 2537 0
	mov	-140(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-112(%rbp), %eax
	movq	%rdx, %nacl:16(%r15,%rax)
	.loc 2 2538 0
	mov	-140(%rbp), %eax
	movq	%nacl:96(%r15,%rax), %rdx
	mov	-112(%rbp), %eax
	movq	%rdx, %nacl:24(%r15,%rax)
	.loc 2 2539 0
	leal	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	buf_hash_insert
	mov	%eax, %eax
	movl	%eax, -72(%rbp)
	.loc 2 2540 0
	cmpl	$0, -72(%rbp)
	je	.L531
	.loc 2 2542 0
	mov	-116(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2543 0
	mov	-112(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 2544 0
	mov	-112(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	.loc 2 2545 0
	mov	-112(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	.loc 2 2546 0
	movl	-148(%rbp), %edx
	movl	-108(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_buf_remove_ref
	.loc 2 2547 0
	jmp	.L500
	.align 32
.L531:
	.loc 2 2550 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L532
	.loc 2 2551 0
	mov	-116(%rbp), %ecx
	movl	-148(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	remove_reference
	.loc 2 2553 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L532:
	.loc 2 2555 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L533
	.loc 2 2556 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L533:
	.loc 2 2557 0
	mov	-140(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$56, %rax
	andl	$31, %eax
	testq	%rax, %rax
	je	.L565
	.loc 2 2558 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$64, %dh
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	jmp	.L535
	.align 32
.L527:
.LBE66:
	.loc 2 2561 0
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L536
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L536
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	je	.L536
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2561, %edx
	movl	$.LC3, %esi
	movl	$.LC108, %edi
	call	__assert_fail
	.align 32
.L536:
	.loc 2 2562 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L537
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2562, %edx
	movl	$.LC3, %esi
	movl	$.LC62, %edi
	call	__assert_fail
	.align 32
.L537:
.LBB67:
	.loc 2 2563 0
	movl	-112(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L538
.LBB68:
	naclsspq	$272, %r15
	leal	40(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC22, %r8d
	movl	$.LC109, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12173, %r8d
	movl	$2563, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L538:
.LBE68:
.LBE67:
	.loc 2 2564 0
	mov	-112(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L539
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2564, %edx
	movl	$.LC3, %esi
	movl	$.LC110, %edi
	call	__assert_fail
	.align 32
.L539:
	.loc 2 2567 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L540
	.loc 2 2568 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	jmp	.L541
	.align 32
.L540:
	.loc 2 2570 0
	mov	-116(%rbp), %ecx
	movl	-148(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	add_reference
	.align 32
.L541:
	.loc 2 2571 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L542
	.loc 2 2572 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L542:
	.loc 2 2573 0
	mov	buf_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -108(%rbp)
	.loc 2 2574 0
	mov	-108(%rbp), %eax
	movl	-112(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2575 0
	mov	-108(%rbp), %eax
	movl	$0, %nacl:8(%r15,%rax)
	.loc 2 2576 0
	mov	-108(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 2577 0
	mov	-108(%rbp), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 2578 0
	mov	-108(%rbp), %eax
	movl	$0, %nacl:4(%r15,%rax)
	.loc 2 2579 0
	mov	-112(%rbp), %eax
	movl	-108(%rbp), %edx
	movl	%edx, %nacl:84(%r15,%rax)
	.loc 2 2580 0
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	arc_get_data_buf
	.loc 2 2581 0
	mov	-112(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L543
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2581, %edx
	movl	$.LC3, %esi
	movl	$.LC111, %edi
	call	__assert_fail
	.align 32
.L543:
	.loc 2 2582 0
	mov	-112(%rbp), %eax
	movl	$1, %nacl:92(%r15,%rax)
	jmp	.L535
	.align 32
.L565:
.LBB69:
	.loc 2 2558 0
	nop
	.align 32
.L535:
.LBE69:
	.loc 2 2586 0
	movl	$256, %esi
	movl	$20, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -84(%rbp)
	.loc 2 2587 0
	mov	-84(%rbp), %eax
	movl	-144(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 2588 0
	mov	-84(%rbp), %eax
	movl	-148(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2590 0
	mov	-112(%rbp), %eax
	mov	%nacl:96(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L544
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2590, %edx
	movl	$.LC3, %esi
	movl	$.LC112, %edi
	call	__assert_fail
	.align 32
.L544:
	.loc 2 2591 0
	mov	-112(%rbp), %eax
	movl	-84(%rbp), %edx
	movl	%edx, %nacl:96(%r15,%rax)
	.loc 2 2592 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$4, %dh
	mov	-112(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2602 0
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L545
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu_ghost(%rip), %eax
	cmpl	%eax, %edx
	je	.L545
	mov	-112(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	jne	.L546
	.align 32
.L545:
	.loc 2 2603 0
	mov	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_access
	.align 32
.L546:
	.loc 2 2605 0
	mov	-112(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L547
	.loc 2 2606 0
	mov	-112(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -80(%rbp)
	.loc 2 2607 0
	mov	-112(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	movl	%nacl:4(%r15,%rax), %eax
	movl	%eax, -76(%rbp)
	.align 32
.L547:
	.loc 2 2610 0
	mov	-116(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
.LBB70:
	.loc 2 2612 0
	mov	-112(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L548
.LBB71:
	naclsspq	$272, %r15
	leal	40(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC48, %r9d
	movl	$.LC22, %r8d
	movl	$.LC113, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12173, %r8d
	movl	$2612, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L548:
.LBE71:
.LBE70:
	.loc 2 2615 0
	movl	$arc_stats+80, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 2616 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L549
	mov	-112(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L550
	movl	$arc_stats+176, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L552
	.align 32
.L550:
	movl	$arc_stats+272, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L552
	.align 32
.L549:
	mov	-112(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L553
	movl	$arc_stats+368, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L552
	.align 32
.L553:
	movl	$arc_stats+464, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L552:
	.loc 2 2620 0
	movq	l2arc_ndev(%rip), %rax
	testq	%rax, %rax
	je	.L554
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L554
	.loc 2 2624 0
	movl	-136(%rbp), %eax
	movl	$__func__.12187, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	spa_config_enter
	.loc 2 2634 0
	cmpl	$0, -80(%rbp)
	je	.L555
	mov	-112(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L555
	.loc 2 2635 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$65536, %eax
	.loc 2 2634 0
	testl	%eax, %eax
	jne	.L555
	.loc 2 2635 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$131072, %eax
	.loc 2 2634 0
	testl	%eax, %eax
	jne	.L555
.LBB72:
	.loc 2 2638 0
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	vdev_is_dead
	testl	%eax, %eax
	jne	.L566
	.align 32
.L556:
	.loc 2 2642 0
	movl	$arc_stats+1424, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 2644 0
	movl	$256, %esi
	movl	$176, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 2646 0
	mov	-20(%rbp), %eax
	movl	-108(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2647 0
	mov	-20(%rbp), %eax
	movl	-136(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 2648 0
	mov	-20(%rbp), %eax
	mov	-140(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:8(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:40(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:48(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:56(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:64(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:72(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:120(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:128(%r15,%rax)
	.loc 2 2649 0
	mov	-20(%rbp), %eax
	mov	32(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:136(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:144(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:152(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rdx
	movq	%rdx, %nacl:160(%r15,%rax)
	.loc 2 2650 0
	mov	-20(%rbp), %eax
	movl	16(%rbp), %edx
	movl	%edx, %nacl:168(%r15,%rax)
	.loc 2 2655 0
	movl	16(%rbp), %eax
	movl	%eax, %esi
	orl	$81, %esi
	mov	-108(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %edi
	movl	-76(%rbp), %eax
	movslq	%eax,%rdx
	movq	-96(%rbp), %rcx
	movl	-80(%rbp), %ebx
	movl	-132(%rbp), %eax
	movl	$0, 32(%rsp)
	movl	%esi, 24(%rsp)
	movl	-152(%rbp), %esi
	movl	%esi, 16(%rsp)
	movl	-20(%rbp), %esi
	movl	%esi, 8(%rsp)
	movl	$l2arc_read_done, (%rsp)
	movl	$2, %r9d
	movl	%edi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_read_phys
	mov	%eax, %eax
	movl	%eax, -104(%rbp)
	.loc 2 2662 0
	movl	-136(%rbp), %eax
	movl	$__func__.12187, %esi
	movl	%eax, %edi
	call	spa_config_exit
	.loc 2 2664 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L558
	.loc 2 2665 0
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 2666 0
	movl	$0, %ebx
	jmp	.L508
	.align 32
.L558:
	.loc 2 2669 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L559
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2669, %edx
	movl	$.LC3, %esi
	movl	$.LC114, %edi
	call	__assert_fail
	.align 32
.L559:
	.loc 2 2670 0
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait
	testl	%eax, %eax
	jne	.L567
	.loc 2 2671 0
	movl	$0, %ebx
	jmp	.L508
	.align 32
.L555:
.LBE72:
	.loc 2 2677 0
	movl	$arc_stats+1472, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 2678 0
	mov	-112(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L557
	.loc 2 2679 0
	movl	$arc_stats+1568, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L557
	.align 32
.L566:
.LBB73:
	.loc 2 2639 0
	nop
	.align 32
.L557:
.LBE73:
	.loc 2 2681 0
	movl	-136(%rbp), %eax
	movl	$__func__.12187, %esi
	movl	%eax, %edi
	call	spa_config_exit
	jmp	.L554
	.align 32
.L567:
	.loc 2 2634 0
	nop
	.align 32
.L554:
	.loc 2 2685 0
	mov	-108(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %esi
	movq	-96(%rbp), %rdi
	movl	-140(%rbp), %edx
	movl	-136(%rbp), %ebx
	movl	-132(%rbp), %eax
	movl	32(%rbp), %ecx
	movl	%ecx, 24(%rsp)
	movl	16(%rbp), %ecx
	movl	%ecx, 16(%rsp)
	movl	-152(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movl	-108(%rbp), %ecx
	movl	%ecx, (%rsp)
	movl	$arc_read_done, %r9d
	movq	%rdi, %r8
	movl	%esi, %ecx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_read
	mov	%eax, %eax
	movl	%eax, -104(%rbp)
	.loc 2 2688 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L561
	.loc 2 2689 0
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait
	movl	%eax, %ebx
	jmp	.L508
	.align 32
.L561:
	.loc 2 2691 0
	mov	24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L562
	movl	$__PRETTY_FUNCTION__.12173, %ecx
	movl	$2691, %edx
	movl	$.LC3, %esi
	movl	$.LC104, %edi
	call	__assert_fail
	.align 32
.L562:
	.loc 2 2692 0
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	jmp	.L524
	.align 32
.L564:
.LBE65:
	.loc 2 2455 0
	nop
	.align 32
.L524:
	.loc 2 2694 0
	movl	$0, %ebx
	.align 32
.L508:
	movq	8(%rbp), %rsi
	movl	$arc_read_nolock, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2695 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE51:
	.size	arc_read_nolock, .-arc_read_nolock
	.align 32
.globl arc_tryread
	.type	arc_tryread, @function
arc_tryread:
.LFB52:
	.loc 2 2705 0
	.cfi_startproc
	pushq	%rbp
.LCFI98:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI99:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 2705 0
	movq	8(%rbp), %rsi
	movl	$arc_tryread, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2708 0
	movl	$0, -24(%rbp)
	.loc 2 2710 0
	mov	-40(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-40(%rbp), %ebx
	leal	-32(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	buf_hash_find
	mov	%eax, %eax
	movl	%eax, -28(%rbp)
	.loc 2 2712 0
	cmpl	$0, -28(%rbp)
	je	.L569
	mov	-28(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L569
	mov	-28(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L569
.LBB74:
	.loc 2 2713 0
	mov	-28(%rbp), %eax
	movl	%nacl:84(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 2715 0
	cmpl	$0, -20(%rbp)
	jne	.L576
	movl	$__PRETTY_FUNCTION__.12507, %ecx
	movl	$2715, %edx
	movl	$.LC3, %esi
	movl	$.LC106, %edi
	call	__assert_fail
	.align 32
.L572:
	.loc 2 2717 0
	mov	-20(%rbp), %eax
	movl	%nacl:4(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 2718 0
	cmpl	$0, -20(%rbp)
	jne	.L571
	movl	$__PRETTY_FUNCTION__.12507, %ecx
	movl	$2718, %edx
	movl	$.LC3, %esi
	movl	$.LC106, %edi
	call	__assert_fail
	.align 32
.L576:
	.loc 2 2716 0
	nop
	.align 32
.L571:
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L572
	.loc 2 2720 0
	mov	-28(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ecx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	bcopy
.LBE74:
	.loc 2 2712 0
	jmp	.L573
	.align 32
.L569:
	.loc 2 2722 0
	movl	$2, -24(%rbp)
	.align 32
.L573:
	.loc 2 2725 0
	mov	-32(%rbp), %eax
	testq	%rax, %rax
	je	.L574
	.loc 2 2726 0
	mov	-32(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L574:
	.loc 2 2728 0
	movl	-24(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_tryread, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2729 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE52:
	.size	arc_tryread, .-arc_tryread
	.section	.rodata
	.align 8
.LC115:
	.string	"buf->b_hdr->b_state != arc_anon"
	.align 8
.LC116:
	.string	"!refcount_is_zero(&buf->b_hdr->b_refcnt) || func == ((void *)0)"
	.text
	.align 32
.globl arc_set_callback
	.type	arc_set_callback, @function
arc_set_callback:
.LFB53:
	.loc 2 2733 0
	.cfi_startproc
	pushq	%rbp
.LCFI100:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI101:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 2 2733 0
	movq	8(%rbp), %rsi
	movl	$arc_set_callback, %edi
	call	__cyg_profile_func_enter
	.loc 2 2734 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L578
	movl	$__PRETTY_FUNCTION__.12540, %ecx
	movl	$2734, %edx
	movl	$.LC3, %esi
	movl	$.LC65, %edi
	call	__assert_fail
	.align 32
.L578:
	.loc 2 2735 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L579
	movl	$__PRETTY_FUNCTION__.12540, %ecx
	movl	$2735, %edx
	movl	$.LC3, %esi
	movl	$.LC115, %edi
	call	__assert_fail
	.align 32
.L579:
	.loc 2 2736 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	je	.L580
	cmpl	$0, -8(%rbp)
	je	.L580
	movl	$__PRETTY_FUNCTION__.12540, %ecx
	movl	$2736, %edx
	movl	$.LC3, %esi
	movl	$.LC116, %edi
	call	__assert_fail
	.align 32
.L580:
	.loc 2 2737 0
	mov	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%edx, %nacl:12(%r15,%rax)
	.loc 2 2738 0
	mov	-4(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %nacl:16(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$arc_set_callback, %edi
	call	__cyg_profile_func_exit
	.loc 2 2739 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE53:
	.size	arc_set_callback, .-arc_set_callback
	.section	.rodata
.LC117:
	.string	"buf->b_data == ((void *)0)"
.LC118:
	.string	"copy.b_efunc(&copy) == 0"
.LC119:
	.string	"hdr->b_datacnt"
.LC120:
	.string	"((hdr)->b_flags & (1 << 9))"
	.text
	.align 32
.globl arc_buf_evict
	.type	arc_buf_evict, @function
arc_buf_evict:
.LFB54:
	.loc 2 2748 0
	.cfi_startproc
	pushq	%rbp
.LCFI102:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI103:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -84(%rbp)
	.loc 2 2748 0
	movq	8(%rbp), %rsi
	movl	$arc_buf_evict, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2753 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 2754 0
	mov	-84(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 2 2755 0
	cmpl	$0, -60(%rbp)
	jne	.L583
	.loc 2 2759 0
	mov	-84(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L584
	movl	$__PRETTY_FUNCTION__.12562, %ecx
	movl	$2759, %edx
	movl	$.LC3, %esi
	movl	$.LC117, %edi
	call	__assert_fail
	.align 32
.L584:
	.loc 2 2760 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 2761 0
	movl	$0, %ebx
	jmp	.L585
	.align 32
.L583:
	.loc 2 2763 0
	mov	-60(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-60(%rbp), %ebx
	mov	-60(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -56(%rbp)
	.loc 2 2764 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 2766 0
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 2768 0
	mov	-84(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L586
	.loc 2 2772 0
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2773 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 2774 0
	mov	-84(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L587
	.loc 2 2778 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 2779 0
	movl	$0, %ebx
	jmp	.L585
	.align 32
.L587:
.LBB75:
	.loc 2 2781 0
	mov	-84(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	%nacl:8(%r15,%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%nacl:16(%r15,%rax), %eax
	movl	%eax, -64(%rbp)
	.loc 2 2786 0
	mov	-84(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 2787 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 2788 0
	mov	-68(%rbp), %eax
	leal	-80(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	testl	%eax, %eax
	je	.L588
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC118, %r9d
	movl	$__PRETTY_FUNCTION__.12562, %r8d
	movl	$2788, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L588:
	.loc 2 2789 0
	movl	$1, %ebx
	jmp	.L585
	.align 32
.L586:
.LBE75:
	.loc 2 2793 0
	mov	-84(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -60(%rbp)
	je	.L589
	movl	$__PRETTY_FUNCTION__.12562, %ecx
	movl	$2793, %edx
	movl	$.LC3, %esi
	movl	$.LC51, %edi
	call	__assert_fail
	.align 32
.L589:
.LBB76:
	.loc 2 2794 0
	movl	-60(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movq	%rax, -48(%rbp)
	mov	-60(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	mov	%eax, %eax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L590
.LBB77:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -28(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC100, 8(%rsp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC119, %r9d
	movl	$.LC100, %r8d
	movl	$.LC109, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12562, %r8d
	movl	$2794, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L590:
.LBE77:
.LBE76:
	.loc 2 2795 0
	mov	-60(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mru(%rip), %eax
	cmpl	%eax, %edx
	je	.L591
	mov	-60(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_mfu(%rip), %eax
	cmpl	%eax, %edx
	je	.L591
	movl	$__PRETTY_FUNCTION__.12562, %ecx
	movl	$2795, %edx
	movl	$.LC3, %esi
	movl	$.LC52, %edi
	call	__assert_fail
	.align 32
.L591:
	.loc 2 2800 0
	movl	-60(%rbp), %eax
	addl	$84, %eax
	movl	%eax, -52(%rbp)
	.loc 2 2801 0
	jmp	.L592
	.align 32
.L593:
	.loc 2 2802 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$4, %eax
	movl	%eax, -52(%rbp)
	.align 32
.L592:
	.loc 2 2801 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -84(%rbp)
	jne	.L593
	.loc 2 2803 0
	mov	-84(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2805 0
	mov	-84(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L594
	movl	$__PRETTY_FUNCTION__.12562, %ecx
	movl	$2805, %edx
	movl	$.LC3, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L594:
	.loc 2 2806 0
	movl	-84(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_buf_destroy
	.loc 2 2808 0
	mov	-60(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L595
.LBB78:
	.loc 2 2809 0
	mov	-60(%rbp), %eax
	movl	%nacl:172(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 2812 0
	movl	-60(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L596
	movl	$__PRETTY_FUNCTION__.12562, %ecx
	movl	$2812, %edx
	movl	$.LC3, %esi
	movl	$.LC50, %edi
	call	__assert_fail
	.align 32
.L596:
	.loc 2 2815 0
	mov	arc_mru(%rip), %eax
	.loc 2 2814 0
	cmpl	%eax, -24(%rbp)
	jne	.L597
	mov	arc_mru_ghost(%rip), %eax
	jmp	.L598
	.align 32
.L597:
	mov	arc_mfu_ghost(%rip), %eax
	.align 32
.L598:
	movl	%eax, -20(%rbp)
	.loc 2 2817 0
	movl	-24(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 2818 0
	movl	-20(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 2820 0
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	arc_change_state
	.loc 2 2821 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L599
	movl	$__PRETTY_FUNCTION__.12562, %ecx
	movl	$2821, %edx
	movl	$.LC3, %esi
	movl	$.LC120, %edi
	call	__assert_fail
	.align 32
.L599:
	.loc 2 2822 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$2, %dh
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2823 0
	mov	-60(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$223, %dh
	mov	-60(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2825 0
	movl	-20(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2826 0
	movl	-24(%rbp), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L595:
.LBE78:
	.loc 2 2828 0
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2830 0
	mov	-84(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	movl	-84(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	testl	%eax, %eax
	je	.L600
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC82, %r9d
	movl	$__PRETTY_FUNCTION__.12562, %r8d
	movl	$2830, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L600:
	.loc 2 2831 0
	mov	-84(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 2832 0
	mov	-84(%rbp), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 2833 0
	mov	-84(%rbp), %eax
	movl	$0, %nacl:(%r15,%rax)
	.loc 2 2834 0
	mov	buf_cache(%rip), %edx
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	.loc 2 2835 0
	movl	$1, %ebx
	.align 32
.L585:
	movq	8(%rbp), %rsi
	movl	$arc_buf_evict, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2836 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE54:
	.size	arc_buf_evict, .-arc_buf_evict
	.section	.rodata
	.align 8
.LC121:
	.string	"refcount_count(&hdr->b_refcnt) > 0"
.LC122:
	.string	"1"
.LC123:
	.string	"hdr->b_datacnt > 1"
.LC124:
	.string	"hdr->b_state->arcs_size"
	.align 8
.LC125:
	.string	"refcount_count(&hdr->b_refcnt) == 1"
	.text
	.align 32
.globl arc_release
	.type	arc_release, @function
arc_release:
.LFB55:
	.loc 2 2846 0
	.cfi_startproc
	pushq	%rbp
.LCFI104:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI105:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$184, %r15
	movl	%edi, -148(%rbp)
	movl	%esi, -152(%rbp)
	.loc 2 2846 0
	movq	8(%rbp), %rsi
	movl	$arc_release, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2847 0
	mov	-148(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -140(%rbp)
	.loc 2 2848 0
	mov	-140(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-140(%rbp), %ebx
	mov	-140(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -136(%rbp)
	.loc 2 2849 0
	movl	$0, -132(%rbp)
	.loc 2 2853 0
	movl	-140(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	testq	%rax, %rax
	jg	.L603
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2853, %edx
	movl	$.LC3, %esi
	movl	$.LC121, %edi
	call	__assert_fail
	.align 32
.L603:
	.loc 2 2854 0
	mov	-140(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L604
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2854, %edx
	movl	$.LC3, %esi
	movl	$.LC63, %edi
	call	__assert_fail
	.align 32
.L604:
	.loc 2 2856 0
	mov	-140(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L605
.LBB79:
	.loc 2 2858 0
	movl	-140(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movq	%rax, -120(%rbp)
	movq	$1, -112(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L606
.LBB80:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -100(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-100(%rbp), %eax
	movq	-112(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC122, %r9d
	movl	$.LC22, %r8d
	movl	$.LC109, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-100(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12665, %r8d
	movl	$2858, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L606:
.LBE80:
.LBE79:
	.loc 2 2859 0
	mov	-140(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L607
	mov	-140(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L607
	mov	-140(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L608
	.align 32
.L607:
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2859, %edx
	movl	$.LC3, %esi
	movl	$.LC49, %edi
	call	__assert_fail
	.align 32
.L608:
	.loc 2 2860 0
	mov	-148(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L609
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2860, %edx
	movl	$.LC3, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L609:
	.loc 2 2861 0
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	arc_buf_thaw
	movl	$0, %ebx
	jmp	.L610
	.align 32
.L605:
	.loc 2 2865 0
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 2870 0
	mov	-140(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	cmpl	%eax, -148(%rbp)
	jne	.L611
	mov	-148(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L612
	.align 32
.L611:
.LBB81:
	.loc 2 2873 0
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 2874 0
	mov	-140(%rbp), %eax
	movl	%nacl:168(%r15,%rax), %eax
	movl	%eax, -76(%rbp)
	.loc 2 2875 0
	mov	-140(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	movl	%eax, -72(%rbp)
	.loc 2 2876 0
	mov	-140(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 2878 0
	mov	-140(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$1, %eax
	ja	.L613
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2878, %edx
	movl	$.LC3, %esi
	movl	$.LC123, %edi
	call	__assert_fail
	.align 32
.L613:
	.loc 2 2883 0
	movl	-152(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	remove_reference
	.loc 2 2884 0
	movl	-140(%rbp), %eax
	addl	$84, %eax
	movl	%eax, -92(%rbp)
	.loc 2 2885 0
	jmp	.L614
	.align 32
.L615:
	.loc 2 2886 0
	mov	-92(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$4, %eax
	movl	%eax, -92(%rbp)
	.align 32
.L614:
	.loc 2 2885 0
	mov	-92(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -148(%rbp)
	jne	.L615
	.loc 2 2887 0
	mov	-92(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:4(%r15,%rax), %edx
	mov	-92(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2888 0
	mov	-148(%rbp), %eax
	movl	$0, %nacl:4(%r15,%rax)
.LBB82:
	.loc 2 2890 0
	mov	-140(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, -64(%rbp)
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.L616
.LBB83:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-48(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC113, %r9d
	movl	$.LC29, %r8d
	movl	$.LC124, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12665, %r8d
	movl	$2890, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L616:
.LBE83:
.LBE82:
	.loc 2 2891 0
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	negq	%rax
	mov	-140(%rbp), %edx
	mov	%nacl:172(%r15,%rdx), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 2892 0
	movl	-140(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	je	.L617
.LBB84:
	.loc 2 2893 0
	mov	-140(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %edx
	mov	-140(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
.LBB85:
	.loc 2 2894 0
	mov	-44(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.L618
.LBB86:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC29, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC113, %r9d
	movl	$.LC29, %r8d
	movl	$.LC30, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12665, %r8d
	movl	$2894, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L618:
.LBE86:
.LBE85:
	.loc 2 2895 0
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	negq	%rax
	mov	-44(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L617:
.LBE84:
	.loc 2 2897 0
	mov	-140(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	leal	-1(%rax), %edx
	mov	-140(%rbp), %eax
	movl	%edx, %nacl:92(%r15,%rax)
	.loc 2 2898 0
	mov	-140(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L619
	.loc 2 2899 0
	movl	$l2arc_buflist_mtx, %edi
	call	mutex_enter
	.loc 2 2900 0
	mov	-140(%rbp), %eax
	movl	%nacl:288(%r15,%rax), %eax
	movl	%eax, -132(%rbp)
	.loc 2 2901 0
	mov	-140(%rbp), %eax
	movl	$0, %nacl:288(%r15,%rax)
	.loc 2 2902 0
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -128(%rbp)
	.align 32
.L619:
	.loc 2 2904 0
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	arc_cksum_verify
	.loc 2 2906 0
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2908 0
	mov	hdr_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -96(%rbp)
	.loc 2 2909 0
	mov	-96(%rbp), %eax
	movq	-88(%rbp), %rdx
	movq	%rdx, %nacl:160(%r15,%rax)
	.loc 2 2910 0
	mov	-96(%rbp), %eax
	movl	-76(%rbp), %edx
	movl	%edx, %nacl:168(%r15,%rax)
	.loc 2 2911 0
	mov	-96(%rbp), %eax
	movl	-72(%rbp), %edx
	movl	%edx, %nacl:152(%r15,%rax)
	.loc 2 2912 0
	mov	-96(%rbp), %eax
	movl	-148(%rbp), %edx
	movl	%edx, %nacl:84(%r15,%rax)
	.loc 2 2913 0
	mov	arc_anon(%rip), %edx
	mov	-96(%rbp), %eax
	movl	%edx, %nacl:172(%r15,%rax)
	.loc 2 2914 0
	mov	-96(%rbp), %eax
	movl	$0, %nacl:184(%r15,%rax)
	.loc 2 2915 0
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	andl	$65536, %edx
	mov	-96(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 2916 0
	mov	-96(%rbp), %eax
	movl	$0, %nacl:288(%r15,%rax)
	.loc 2 2917 0
	mov	-96(%rbp), %eax
	movl	$1, %nacl:92(%r15,%rax)
	.loc 2 2918 0
	mov	-96(%rbp), %eax
	movl	$0, %nacl:76(%r15,%rax)
	.loc 2 2919 0
	movl	-96(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %edx
	movl	-152(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	refcount_add
	.loc 2 2920 0
	mov	-148(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 2921 0
	movq	-88(%rbp), %rax
	mov	arc_anon(%rip), %edx
	addl	$48, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
.LBE81:
	.loc 2 2870 0
	jmp	.L620
	.align 32
.L612:
	.loc 2 2923 0
	movl	-140(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	cmpq	$1, %rax
	je	.L621
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2923, %edx
	movl	$.LC3, %esi
	movl	$.LC125, %edi
	call	__assert_fail
	.align 32
.L621:
	.loc 2 2924 0
	movl	-140(%rbp), %eax
	addl	$176, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	je	.L622
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2924, %edx
	movl	$.LC3, %esi
	movl	$.LC66, %edi
	call	__assert_fail
	.align 32
.L622:
	.loc 2 2925 0
	mov	-140(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L623
	movl	$__PRETTY_FUNCTION__.12665, %ecx
	movl	$2925, %edx
	movl	$.LC3, %esi
	movl	$.LC62, %edi
	call	__assert_fail
	.align 32
.L623:
	.loc 2 2926 0
	mov	arc_anon(%rip), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.loc 2 2927 0
	mov	-140(%rbp), %eax
	movl	$0, %nacl:184(%r15,%rax)
	.loc 2 2928 0
	mov	-140(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L624
	.loc 2 2929 0
	movl	$l2arc_buflist_mtx, %edi
	call	mutex_enter
	.loc 2 2930 0
	mov	-140(%rbp), %eax
	movl	%nacl:288(%r15,%rax), %eax
	movl	%eax, -132(%rbp)
	.loc 2 2931 0
	mov	-140(%rbp), %eax
	movl	$0, %nacl:288(%r15,%rax)
	.loc 2 2932 0
	mov	-140(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -128(%rbp)
	.align 32
.L624:
	.loc 2 2934 0
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 2936 0
	mov	-140(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 2937 0
	mov	-140(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	.loc 2 2938 0
	mov	-140(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	.loc 2 2939 0
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	arc_buf_thaw
	.align 32
.L620:
	.loc 2 2941 0
	mov	-148(%rbp), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 2942 0
	mov	-148(%rbp), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 2944 0
	cmpl	$0, -132(%rbp)
	je	.L625
	.loc 2 2945 0
	mov	-132(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:60(%r15,%rax), %edx
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_remove
	.loc 2 2946 0
	movl	-132(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 2947 0
	movq	-128(%rbp), %rax
	negq	%rax
	movl	$arc_stats+2096, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L625:
	.loc 2 2949 0
	mov	l2arc_buflist_mtx(%rip), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	jne	.L626
	.loc 2 2950 0
	movl	$l2arc_buflist_mtx, %edi
	call	mutex_exit
	.align 32
.L626:
	movl	$1, %ebx
	.align 32
.L610:
	movq	8(%rbp), %rsi
	movl	$arc_release, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 2951 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE55:
	.size	arc_release, .-arc_release
	.align 32
.globl arc_released
	.type	arc_released, @function
arc_released:
.LFB56:
	.loc 2 2955 0
	.cfi_startproc
	pushq	%rbp
.LCFI106:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI107:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 2955 0
	movq	8(%rbp), %rsi
	movl	$arc_released, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2956 0
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L632
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L632
	movl	$1, %eax
	jmp	.L633
	.align 32
.L632:
	movl	$0, %eax
	.align 32
.L633:
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$arc_released, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2957 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE56:
	.size	arc_released, .-arc_released
	.align 32
.globl arc_has_callback
	.type	arc_has_callback, @function
arc_has_callback:
.LFB57:
	.loc 2 2961 0
	.cfi_startproc
	pushq	%rbp
.LCFI108:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI109:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 2961 0
	movq	8(%rbp), %rsi
	movl	$arc_has_callback, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2962 0
	mov	-20(%rbp), %eax
	mov	%nacl:12(%r15,%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	movq	8(%rbp), %rsi
	movl	$arc_has_callback, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2963 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE57:
	.size	arc_has_callback, .-arc_has_callback
	.align 32
.globl arc_referenced
	.type	arc_referenced, @function
arc_referenced:
.LFB58:
	.loc 2 2967 0
	.cfi_startproc
	pushq	%rbp
.LCFI110:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI111:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 2967 0
	movq	8(%rbp), %rsi
	movl	$arc_referenced, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2968 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_count
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$arc_referenced, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2969 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE58:
	.size	arc_referenced, .-arc_referenced
	.section	.rodata
	.align 8
.LC126:
	.string	"!refcount_is_zero(&buf->b_hdr->b_refcnt)"
	.text
	.align 32
	.type	arc_write_ready, @function
arc_write_ready:
.LFB59:
	.loc 2 2973 0
	.cfi_startproc
	pushq	%rbp
.LCFI112:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI113:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 2973 0
	movq	8(%rbp), %rsi
	movl	$arc_write_ready, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2974 0
	mov	-36(%rbp), %eax
	mov	%nacl:244(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 2975 0
	mov	-28(%rbp), %eax
	movl	%nacl:12(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 2976 0
	mov	-24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 2978 0
	mov	-36(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L640
	mov	-28(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L640
	.loc 2 2979 0
	mov	-24(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	je	.L641
	movl	$__PRETTY_FUNCTION__.12843, %ecx
	movl	$2979, %edx
	movl	$.LC3, %esi
	movl	$.LC126, %edi
	call	__assert_fail
	.align 32
.L641:
	.loc 2 2980 0
	mov	-28(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	mov	-28(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %edx
	movl	-24(%rbp), %ebx
	movl	-36(%rbp), %ecx
	movl	%ebx, %esi
	movl	%ecx, %edi
	naclcall	%eax,%r15
	.align 32
.L640:
	.loc 2 2989 0
	mov	-20(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L642
	.loc 2 2990 0
	mov	-36(%rbp), %eax
	movq	%nacl:328(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L643
	.loc 2 2991 0
	mov	-28(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	.loc 2 2990 0
	testq	%rax, %rax
	jne	.L643
	.loc 2 2992 0
	movl	-36(%rbp), %eax
	addl	$248, %eax
	mov	%eax, %ecx
	mov	-36(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-36(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-36(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_free
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	.align 32
.L643:
	.loc 2 2995 0
	movl	-20(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 2996 0
	mov	-20(%rbp), %eax
	mov	%nacl:76(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L644
	.loc 2 2997 0
	mov	-20(%rbp), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movl	$32, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 2998 0
	mov	-20(%rbp), %eax
	movl	$0, %nacl:76(%r15,%rax)
	.align 32
.L644:
	.loc 2 3000 0
	movl	-20(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L642:
	.loc 2 3002 0
	movl	-24(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	arc_cksum_compute
	.loc 2 3003 0
	mov	-20(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$4, %dh
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$arc_write_ready, %edi
	call	__cyg_profile_func_exit
	.loc 2 3004 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE59:
	.size	arc_write_ready, .-arc_write_ready
	.section	.rodata
	.align 8
.LC127:
	.string	"(((&(&zio->io_bp_orig)->blk_dva[0]))->dva_word[1] == ((&(zio->io_bp)->blk_dva[0]))->dva_word[1] && ((&(&zio->io_bp_orig)->blk_dva[0]))->dva_word[0] == ((&(zio->io_bp)->blk_dva[0]))->dva_word[0])"
.LC128:
	.string	"zio->io_bp->blk_birth"
.LC129:
	.string	"zio->io_bp_orig.blk_birth"
	.align 8
.LC130:
	.string	"refcount_is_zero(&exists->b_refcnt)"
.LC131:
	.string	"exists"
	.align 8
.LC132:
	.string	"!refcount_is_zero(&hdr->b_refcnt)"
	.text
	.align 32
	.type	arc_write_done, @function
arc_write_done:
.LFB60:
	.loc 2 3008 0
	.cfi_startproc
	pushq	%rbp
.LCFI114:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI115:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -84(%rbp)
	.loc 2 3008 0
	movq	8(%rbp), %rsi
	movl	$arc_write_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3009 0
	mov	-84(%rbp), %eax
	mov	%nacl:244(%r15,%rax), %eax
	movl	%eax, -72(%rbp)
	.loc 2 3010 0
	mov	-72(%rbp), %eax
	movl	%nacl:12(%r15,%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 3011 0
	mov	-68(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -64(%rbp)
	.loc 2 3013 0
	mov	-64(%rbp), %eax
	movl	$0, %nacl:96(%r15,%rax)
	.loc 2 3015 0
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %edx
	mov	-64(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rdx
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 3016 0
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-64(%rbp), %eax
	movq	%rdx, %nacl:16(%r15,%rax)
	.loc 2 3017 0
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:96(%r15,%rax), %rdx
	mov	-64(%rbp), %eax
	movq	%rdx, %nacl:24(%r15,%rax)
	.loc 2 3024 0
	mov	-64(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L647
	mov	-64(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L647
	mov	-64(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L648
	.align 32
.L647:
.LBB87:
	.loc 2 3028 0
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	arc_cksum_verify
	.loc 2 3030 0
	leal	-76(%rbp), %edx
	movl	-64(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	buf_hash_insert
	mov	%eax, %eax
	movl	%eax, -60(%rbp)
	.loc 2 3031 0
	cmpl	$0, -60(%rbp)
	je	.L649
	.loc 2 3037 0
	mov	-84(%rbp), %eax
	movq	%nacl:256(%r15,%rax), %rdx
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L650
	mov	-84(%rbp), %eax
	movq	%nacl:248(%r15,%rax), %rdx
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	%rax, %rdx
	je	.L651
	.align 32
.L650:
	movl	$__PRETTY_FUNCTION__.12888, %ecx
	movl	$3038, %edx
	movl	$.LC3, %esi
	movl	$.LC127, %edi
	call	__assert_fail
	.align 32
.L651:
.LBB88:
	.loc 2 3039 0
	mov	-84(%rbp), %eax
	movq	%nacl:328(%r15,%rax), %rax
	movq	%rax, -56(%rbp)
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:80(%r15,%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L652
.LBB89:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -36(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC128, %r9d
	movl	$.LC22, %r8d
	movl	$.LC129, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12888, %r8d
	movl	$3040, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L652:
.LBE89:
.LBE88:
	.loc 2 3042 0
	movl	-60(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	jne	.L653
	movl	$__PRETTY_FUNCTION__.12888, %ecx
	movl	$3042, %edx
	movl	$.LC3, %esi
	movl	$.LC130, %edi
	call	__assert_fail
	.align 32
.L653:
	.loc 2 3043 0
	mov	-76(%rbp), %edx
	mov	arc_anon(%rip), %ecx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.loc 2 3044 0
	mov	-76(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 3045 0
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	.loc 2 3046 0
	leal	-76(%rbp), %edx
	movl	-64(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	buf_hash_insert
	mov	%eax, %eax
	movl	%eax, -60(%rbp)
.LBB90:
	.loc 2 3047 0
	movl	-60(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L649
.LBB91:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	mov	-28(%rbp), %ecx
	mov	-32(%rbp), %edx
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-24(%rbp), %eax
	movq	%rcx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.LC25, %r9d
	movl	$.LC22, %r8d
	movl	$.LC131, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.12888, %r8d
	movl	$3047, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L649:
.LBE91:
.LBE90:
	.loc 2 3049 0
	mov	-64(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$251, %dh
	mov	-64(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 3051 0
	mov	-64(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	jne	.L654
	.loc 2 3052 0
	mov	-76(%rbp), %edx
	movl	-64(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	arc_access
	.align 32
.L654:
	.loc 2 3053 0
	mov	-76(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
.LBE87:
	.loc 2 3024 0
	jmp	.L655
	.align 32
.L648:
	.loc 2 3054 0
	mov	-72(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L656
.LBB92:
	.loc 2 3060 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_enter
	.loc 2 3061 0
	movl	-64(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	movl	%eax, -20(%rbp)
	.loc 2 3062 0
	mov	-64(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$251, %dh
	mov	-64(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 3063 0
	movl	$arc_eviction_mtx, %edi
	call	mutex_exit
	.loc 2 3064 0
	cmpl	$0, -20(%rbp)
	je	.L661
	.loc 2 3065 0
	movl	-64(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	jmp	.L655
	.align 32
.L656:
.LBE92:
	.loc 2 3067 0
	mov	-64(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$251, %dh
	mov	-64(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	jmp	.L655
	.align 32
.L661:
.LBB93:
	.loc 2 3065 0
	nop
	.align 32
.L655:
.LBE93:
	.loc 2 3069 0
	mov	-64(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-524289, %edx
	mov	-64(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 3071 0
	mov	-72(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L658
	.loc 2 3072 0
	movl	-64(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	je	.L659
	movl	$__PRETTY_FUNCTION__.12888, %ecx
	movl	$3072, %edx
	movl	$.LC3, %esi
	movl	$.LC132, %edi
	call	__assert_fail
	.align 32
.L659:
	.loc 2 3073 0
	mov	-72(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	mov	-72(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %edx
	movl	-68(%rbp), %ebx
	movl	-84(%rbp), %ecx
	movl	%ebx, %esi
	movl	%ecx, %edi
	naclcall	%eax,%r15
	.align 32
.L658:
	.loc 2 3076 0
	movl	-72(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	umem_free
	movq	8(%rbp), %rsi
	movl	$arc_write_done, %edi
	call	__cyg_profile_func_exit
	.loc 2 3077 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE60:
	.size	arc_write_done, .-arc_write_done
	.align 32
	.type	write_policy, @function
write_policy:
.LFB61:
	.loc 2 3082 0
	.cfi_startproc
	pushq	%rbp
.LCFI116:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI117:
	.cfi_def_cfa_register 6
	naclsspq	$48, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	.loc 2 3082 0
	movq	8(%rbp), %rsi
	movl	$write_policy, %edi
	call	__cyg_profile_func_enter
	.loc 2 3083 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:4(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 2 3084 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:5(%r15,%rax), %eax
	testb	%al, %al
	jne	.L663
	mov	-24(%rbp), %eax
	movl	%nacl:(%r15,%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$dmu_ot+4, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L664
	.align 32
.L663:
	movl	$1, %eax
	jmp	.L665
	.align 32
.L664:
	movl	$0, %eax
	.align 32
.L665:
	movl	%eax, -4(%rbp)
	.loc 2 3087 0
	cmpl	$0, -4(%rbp)
	je	.L666
	.loc 2 3088 0
	addl	$1, -8(%rbp)
	.align 32
.L666:
	.loc 2 3089 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	cmpl	-8(%rbp), %eax
	jg	.L667
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	jmp	.L668
	.align 32
.L667:
	movl	-8(%rbp), %eax
	.align 32
.L668:
	mov	-36(%rbp), %edx
	movl	%eax, %nacl:(%r15,%rdx)
	.loc 2 3092 0
	cmpl	$0, -4(%rbp)
	je	.L669
	.loc 2 3100 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:9(%r15,%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$zio_checksum_table+8, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L670
	.loc 2 3101 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:9(%r15,%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$zio_checksum_table+12, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	.loc 2 3100 0
	testl	%eax, %eax
	jne	.L670
	.loc 2 3102 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:9(%r15,%rax), %eax
	movzbl	%al, %edx
	mov	-28(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 3100 0
	nop
	jmp	.L672
	.align 32
.L670:
	.loc 2 3104 0
	mov	-28(%rbp), %eax
	movl	$7, %nacl:(%r15,%rax)
	jmp	.L672
	.align 32
.L669:
	.loc 2 3107 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:9(%r15,%rax), %eax
	.loc 2 3106 0
	movzbl	%al, %edx
	mov	-24(%rbp), %eax
	movzbl	%nacl:8(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_checksum_select
	movzbl	%al, %edx
	mov	-28(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.align 32
.L672:
	.loc 2 3111 0
	cmpl	$0, -4(%rbp)
	je	.L673
	.loc 2 3116 0
	movl	zfs_mdcomp_disable(%rip), %eax
	testl	%eax, %eax
	je	.L674
	movl	$4, %eax
	jmp	.L675
	.align 32
.L674:
	movl	$3, %eax
	.align 32
.L675:
	mov	-32(%rbp), %edx
	movl	%eax, %nacl:(%r15,%rdx)
	jmp	.L676
	.align 32
.L673:
	.loc 2 3120 0
	mov	-24(%rbp), %eax
	movzbl	%nacl:7(%r15,%rax), %eax
	.loc 2 3119 0
	movzbl	%al, %edx
	mov	-24(%rbp), %eax
	movzbl	%nacl:6(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_compress_select
	movzbl	%al, %edx
	mov	-32(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.align 32
.L676:
	movq	8(%rbp), %rsi
	movl	$write_policy, %edi
	call	__cyg_profile_func_exit
	.loc 2 3122 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE61:
	.size	write_policy, .-write_policy
	.section	.rodata
.LC133:
	.string	"!((hdr)->b_flags & (1 << 11))"
	.align 8
.LC134:
	.string	"(hdr->b_flags & (1 << 10)) == 0"
.LC135:
	.string	"hdr->b_acb == 0"
	.text
	.align 32
.globl arc_write
	.type	arc_write, @function
arc_write:
.LFB62:
	.loc 2 3129 0
	.cfi_startproc
	pushq	%rbp
.LCFI118:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI119:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$152, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	.loc 2 3129 0
	movq	8(%rbp), %rsi
	movl	$arc_write, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3130 0
	mov	16(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 3135 0
	mov	-28(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L679
	movl	$__PRETTY_FUNCTION__.13060, %ecx
	movl	$3135, %edx
	movl	$.LC3, %esi
	movl	$.LC133, %edi
	call	__assert_fail
	.align 32
.L679:
	.loc 2 3136 0
	mov	-28(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L680
	movl	$__PRETTY_FUNCTION__.13060, %ecx
	movl	$3136, %edx
	movl	$.LC3, %esi
	movl	$.LC134, %edi
	call	__assert_fail
	.align 32
.L680:
	.loc 2 3137 0
	mov	-28(%rbp), %eax
	mov	%nacl:96(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L681
	movl	$__PRETTY_FUNCTION__.13060, %ecx
	movl	$3137, %edx
	movl	$.LC3, %esi
	movl	$.LC135, %edi
	call	__assert_fail
	.align 32
.L681:
	.loc 2 3138 0
	cmpl	$0, -64(%rbp)
	je	.L682
	.loc 2 3139 0
	mov	-28(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	mov	-28(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L682:
	.loc 2 3140 0
	movl	$256, %esi
	movl	$16, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 3141 0
	mov	-24(%rbp), %eax
	movl	24(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 3142 0
	mov	-24(%rbp), %eax
	movl	32(%rbp), %edx
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 3143 0
	mov	-24(%rbp), %eax
	movl	40(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 3144 0
	mov	-24(%rbp), %eax
	movl	16(%rbp), %edx
	movl	%edx, %nacl:12(%r15,%rax)
	.loc 2 3146 0
	leal	-40(%rbp), %esi
	leal	-36(%rbp), %ecx
	leal	-32(%rbp), %edx
	movl	-60(%rbp), %ebx
	movl	-56(%rbp), %eax
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	write_policy
	.loc 2 3147 0
	mov	-28(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rdi
	mov	16(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %esi
	movl	-40(%rbp), %r10d
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-72(%rbp), %r9
	movl	-56(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	64(%rbp), %r8d
	movl	%r8d, 64(%rsp)
	movl	56(%rbp), %r8d
	movl	%r8d, 56(%rsp)
	movl	48(%rbp), %r8d
	movl	%r8d, 48(%rsp)
	movl	-24(%rbp), %r8d
	movl	%r8d, 40(%rsp)
	movl	$arc_write_done, 32(%rsp)
	movl	$arc_write_ready, 24(%rsp)
	movq	%rdi, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	-76(%rbp), %esi
	movl	%esi, (%rsp)
	movl	%r10d, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_write
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 3151 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$arc_write, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 3152 0
	naclaspq	$152, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE62:
	.size	arc_write, .-arc_write
	.section	.rodata
	.align 8
.LC136:
	.string	"bp->blk_cksum.zc_word[0] == 0 || ab->b_cksum0 == bp->blk_cksum.zc_word[0]"
.LC137:
	.string	"ab->b_flags & (1 << 3)"
.LC138:
	.string	"!((ab)->b_flags & (1 << 9))"
.LC139:
	.string	"arc_flags & (1 << 2)"
	.text
	.align 32
.globl arc_free
	.type	arc_free, @function
arc_free:
.LFB63:
	.loc 2 3157 0
	.cfi_startproc
	pushq	%rbp
.LCFI120:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI121:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movl	%r8d, -88(%rbp)
	movl	%r9d, -92(%rbp)
	.loc 2 3157 0
	movq	8(%rbp), %rsi
	movl	$arc_free, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3166 0
	mov	-84(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-84(%rbp), %ebx
	leal	-52(%rbp), %ecx
	movl	-72(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	buf_hash_find
	mov	%eax, %eax
	movl	%eax, -48(%rbp)
	.loc 2 3167 0
	cmpl	$0, -48(%rbp)
	je	.L685
	.loc 2 3173 0
	mov	-84(%rbp), %eax
	movq	%nacl:96(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L686
	mov	-48(%rbp), %eax
	movq	%nacl:24(%r15,%rax), %rdx
	mov	-84(%rbp), %eax
	movq	%nacl:96(%r15,%rax), %rax
	cmpq	%rax, %rdx
	je	.L686
	movl	$__PRETTY_FUNCTION__.13096, %ecx
	movl	$3174, %edx
	movl	$.LC3, %esi
	movl	$.LC136, %edi
	call	__assert_fail
	.align 32
.L686:
	.loc 2 3175 0
	mov	-48(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_anon(%rip), %eax
	cmpl	%eax, %edx
	je	.L687
	.loc 2 3176 0
	mov	-52(%rbp), %edx
	mov	arc_anon(%rip), %ecx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.align 32
.L687:
	.loc 2 3177 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L688
	.loc 2 3181 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L689
	movl	$__PRETTY_FUNCTION__.13096, %ecx
	movl	$3181, %edx
	movl	$.LC3, %esi
	movl	$.LC137, %edi
	call	__assert_fail
	.align 32
.L689:
.LBB94:
	.loc 2 3182 0
	mov	-48(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	mov	%eax, %eax
	movq	%rax, -40(%rbp)
	movq	$1, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L690
.LBB95:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC122, %r9d
	movl	$.LC22, %r8d
	movl	$.LC23, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.13096, %r8d
	movl	$3182, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L690:
.LBE95:
.LBE94:
	.loc 2 3183 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$16, %dh
	mov	-48(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 3184 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L691
	.loc 2 3185 0
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	buf_hash_remove
	.align 32
.L691:
	.loc 2 3186 0
	mov	-48(%rbp), %eax
	movl	$0, %nacl:184(%r15,%rax)
	.loc 2 3187 0
	mov	-48(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 3188 0
	mov	-48(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	.loc 2 3189 0
	mov	-48(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	.loc 2 3190 0
	mov	-48(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 3191 0
	mov	-48(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 3192 0
	mov	-52(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	jmp	.L685
	.align 32
.L688:
	.loc 2 3193 0
	movl	-48(%rbp), %eax
	addl	$192, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	refcount_is_zero
	testl	%eax, %eax
	je	.L692
	.loc 2 3194 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$128, %dh
	mov	-48(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 3195 0
	mov	-52(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 3196 0
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	.loc 2 3197 0
	movl	$arc_stats+704, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L685
	.align 32
.L692:
	.loc 2 3204 0
	mov	-48(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L693
	movl	$__PRETTY_FUNCTION__.13096, %ecx
	movl	$3204, %edx
	movl	$.LC3, %esi
	movl	$.LC138, %edi
	call	__assert_fail
	.align 32
.L693:
	.loc 2 3205 0
	mov	-48(%rbp), %eax
	movl	$0, %nacl:184(%r15,%rax)
	.loc 2 3206 0
	mov	-48(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 3207 0
	mov	-48(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	.loc 2 3208 0
	mov	-48(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	.loc 2 3209 0
	mov	-48(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$0, %nacl:12(%r15,%rax)
	.loc 2 3210 0
	mov	-48(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$0, %nacl:16(%r15,%rax)
	.loc 2 3211 0
	mov	-52(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L685:
	.loc 2 3215 0
	movl	-92(%rbp), %edi
	movl	-88(%rbp), %esi
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movl	-72(%rbp), %ebx
	movl	-68(%rbp), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_free
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 3217 0
	movl	16(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L694
	.loc 2 3218 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait
	movl	%eax, %ebx
	jmp	.L695
	.align 32
.L694:
	.loc 2 3220 0
	movl	16(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L696
	movl	$__PRETTY_FUNCTION__.13096, %ecx
	movl	$3220, %edx
	movl	$.LC3, %esi
	movl	$.LC139, %edi
	call	__assert_fail
	.align 32
.L696:
	.loc 2 3221 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 3223 0
	movl	$0, %ebx
	.align 32
.L695:
	movq	8(%rbp), %rsi
	movl	$arc_free, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 3224 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE63:
	.size	arc_free, .-arc_free
	.align 32
	.type	arc_memory_throttle, @function
arc_memory_throttle:
.LFB64:
	.loc 2 3228 0
	.cfi_startproc
	pushq	%rbp
.LCFI122:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI123:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 3228 0
	movq	8(%rbp), %rsi
	movl	$arc_memory_throttle, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3278 0
	movl	$0, %ebx
	movq	8(%rbp), %rsi
	movl	$arc_memory_throttle, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 3279 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE64:
	.size	arc_memory_throttle, .-arc_memory_throttle
	.section	.rodata
.LC140:
	.string	"(int64_t)arc_tempreserve >= 0"
	.text
	.align 32
.globl arc_tempreserve_clear
	.type	arc_tempreserve_clear, @function
arc_tempreserve_clear:
.LFB65:
	.loc 2 3283 0
	.cfi_startproc
	pushq	%rbp
.LCFI124:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI125:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movq	%rdi, -8(%rbp)
	.loc 2 3283 0
	movq	8(%rbp), %rsi
	movl	$arc_tempreserve_clear, %edi
	call	__cyg_profile_func_enter
	.loc 2 3284 0
	movq	-8(%rbp), %rax
	negq	%rax
	movl	$arc_tempreserve, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 3285 0
	movq	arc_tempreserve(%rip), %rax
	testq	%rax, %rax
	jns	.L701
	movl	$__PRETTY_FUNCTION__.13179, %ecx
	movl	$3285, %edx
	movl	$.LC3, %esi
	movl	$.LC140, %edi
	call	__assert_fail
	.align 32
.L701:
	movq	8(%rbp), %rsi
	movl	$arc_tempreserve_clear, %edi
	call	__cyg_profile_func_exit
	.loc 2 3286 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE65:
	.size	arc_tempreserve_clear, .-arc_tempreserve_clear
	.section	.rodata
.LC141:
	.string	"forcing random failure\n"
	.align 8
.LC142:
	.string	"failing, arc_tempreserve=%lluK anon_meta=%lluK anon_data=%lluK tempreserve=%lluK arc_c=%lluK\n"
	.text
	.align 32
.globl arc_tempreserve_space
	.type	arc_tempreserve_space, @function
arc_tempreserve_space:
.LFB66:
	.loc 2 3290 0
	.cfi_startproc
	pushq	%rbp
.LCFI126:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI127:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 3290 0
	movq	8(%rbp), %rsi
	movl	$arc_tempreserve_space, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3297 0
	movl	$10000, %edi
	call	spa_get_random
	testq	%rax, %rax
	jne	.L704
	.loc 2 3298 0
	movl	zfs_flags(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L705
	movl	$.LC141, %ecx
	movl	$3298, %edx
	movl	$__func__.13192, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	__dprintf
	.align 32
.L705:
	.loc 2 3299 0
	movl	$85, %ebx
	jmp	.L706
	.align 32
.L704:
	.loc 2 3302 0
	movq	arc_stats+1184(%rip), %rax
	shrq	$2, %rax
	cmpq	-40(%rbp), %rax
	jae	.L707
	movl	arc_no_grow(%rip), %eax
	testl	%eax, %eax
	jne	.L707
	.loc 2 3303 0
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	arc_stats+1280(%rip), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, arc_stats+1184(%rip)
	.align 32
.L707:
	.loc 2 3304 0
	movq	arc_stats+1184(%rip), %rax
	cmpq	-40(%rbp), %rax
	jae	.L708
	.loc 2 3305 0
	movl	$12, %ebx
	jmp	.L706
	.align 32
.L708:
	.loc 2 3312 0
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	arc_memory_throttle
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L709
	.loc 2 3313 0
	movl	-20(%rbp), %ebx
	jmp	.L706
	.align 32
.L709:
	.loc 2 3322 0
	movq	arc_tempreserve(%rip), %rax
	movq	%rax, %rdx
	addq	-40(%rbp), %rdx
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	addq	%rax, %rdx
	movq	arc_stats+1184(%rip), %rax
	shrq	%rax
	cmpq	%rax, %rdx
	jbe	.L710
	.loc 2 3323 0
	mov	arc_anon(%rip), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	arc_stats+1184(%rip), %rdx
	shrq	$2, %rdx
	.loc 2 3322 0
	cmpq	%rdx, %rax
	jbe	.L710
	.loc 2 3324 0
	movl	zfs_flags(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L711
	movq	arc_stats+1184(%rip), %rax
	movq	%rax, %rbx
	shrq	$10, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	shrq	$10, %rcx
	mov	arc_anon(%rip), %eax
	movq	%nacl:32(%r15,%rax), %rax
	movq	%rax, %rdx
	shrq	$10, %rdx
	mov	arc_anon(%rip), %eax
	movq	%nacl:40(%r15,%rax), %rax
	movq	%rax, %rsi
	shrq	$10, %rsi
	movq	arc_tempreserve(%rip), %rax
	shrq	$10, %rax
	movq	%rbx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	%rsi, %r9
	movq	%rax, %r8
	movl	$.LC142, %ecx
	movl	$3329, %edx
	movl	$__func__.13192, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	__dprintf
	.align 32
.L711:
	.loc 2 3330 0
	movl	$85, %ebx
	jmp	.L706
	.align 32
.L710:
	.loc 2 3332 0
	movq	-40(%rbp), %rax
	movl	$arc_tempreserve, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 3333 0
	movl	$0, %ebx
	.align 32
.L706:
	movq	8(%rbp), %rsi
	movl	$arc_tempreserve_space, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 3334 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE66:
	.size	arc_tempreserve_space, .-arc_tempreserve_space
	.section	.rodata
.LC143:
	.string	"misc"
.LC144:
	.string	"arcstats"
.LC145:
	.string	"zfs"
	.text
	.align 32
.globl arc_init
	.type	arc_init, @function
arc_init:
.LFB67:
	.loc 2 3338 0
	.cfi_startproc
	pushq	%rbp
.LCFI128:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI129:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	.loc 2 3338 0
	movq	8(%rbp), %rsi
	movl	$arc_init, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3339 0
	movl	$arc_reclaim_thr_lock, %edi
	call	zmutex_init
	.loc 2 3340 0
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$arc_reclaim_thr_cv, %edi
	call	cv_init
	.loc 2 3343 0
	movl	$119, arc_min_prefetch_lifespan(%rip)
	.loc 2 3346 0
	movl	_pagesize(%rip), %eax
	mov	%eax, %edx
	movq	physmem(%rip), %rax
	imulq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, arc_stats+1184(%rip)
	.loc 2 3358 0
	movq	$16777216, arc_stats+1232(%rip)
	.loc 2 3361 0
	movq	$134217728, arc_stats+1280(%rip)
	.loc 2 3370 0
	movq	zfs_arc_max(%rip), %rax
	cmpq	$67108864, %rax
	jbe	.L714
	movl	_pagesize(%rip), %eax
	mov	%eax, %edx
	movq	physmem(%rip), %rax
	imulq	%rax, %rdx
	movq	zfs_arc_max(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L714
	.loc 2 3371 0
	movq	zfs_arc_max(%rip), %rax
	movq	%rax, arc_stats+1280(%rip)
	.align 32
.L714:
	.loc 2 3372 0
	movq	zfs_arc_min(%rip), %rax
	cmpq	$67108864, %rax
	jbe	.L715
	movq	arc_stats+1280(%rip), %rdx
	movq	zfs_arc_min(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L715
	.loc 2 3373 0
	movq	zfs_arc_min(%rip), %rax
	movq	%rax, arc_stats+1232(%rip)
	.align 32
.L715:
	.loc 2 3375 0
	movq	arc_stats+1280(%rip), %rax
	movq	%rax, arc_stats+1184(%rip)
	.loc 2 3376 0
	movq	arc_stats+1184(%rip), %rax
	shrq	%rax
	movq	%rax, arc_stats+1136(%rip)
	.loc 2 3379 0
	movq	arc_stats+1280(%rip), %rax
	shrq	$2, %rax
	movq	%rax, arc_meta_limit(%rip)
	.loc 2 3382 0
	movq	zfs_arc_meta_limit(%rip), %rax
	testq	%rax, %rax
	je	.L716
	movq	arc_stats+1280(%rip), %rdx
	movq	zfs_arc_meta_limit(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L716
	.loc 2 3383 0
	movq	zfs_arc_meta_limit(%rip), %rax
	movq	%rax, arc_meta_limit(%rip)
	.align 32
.L716:
	.loc 2 3385 0
	movq	arc_stats+1232(%rip), %rax
	movq	arc_meta_limit(%rip), %rdx
	shrq	%rdx
	cmpq	%rdx, %rax
	jae	.L717
	movq	zfs_arc_min(%rip), %rax
	testq	%rax, %rax
	jne	.L717
	.loc 2 3386 0
	movq	arc_meta_limit(%rip), %rax
	shrq	%rax
	movq	%rax, arc_stats+1232(%rip)
	.align 32
.L717:
	.loc 2 3391 0
	movq	arc_stats+1184(%rip), %rdx
	movq	arc_stats+1232(%rip), %rax
	cmpq	%rax, %rdx
	jae	.L718
	.loc 2 3392 0
	movq	arc_stats+1232(%rip), %rax
	movq	%rax, arc_stats+1184(%rip)
	.align 32
.L718:
	.loc 2 3394 0
	movl	$ARC_anon, arc_anon(%rip)
	.loc 2 3395 0
	movl	$ARC_mru, arc_mru(%rip)
	.loc 2 3396 0
	movl	$ARC_mru_ghost, arc_mru_ghost(%rip)
	.loc 2 3397 0
	movl	$ARC_mfu, arc_mfu(%rip)
	.loc 2 3398 0
	movl	$ARC_mfu_ghost, arc_mfu_ghost(%rip)
	.loc 2 3399 0
	movl	$ARC_l2c_only, arc_l2c_only(%rip)
	.loc 2 3400 0
	movq	$0, arc_stats+1328(%rip)
	.loc 2 3402 0
	mov	arc_anon(%rip), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 3403 0
	mov	arc_mru(%rip), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 3404 0
	mov	arc_mru_ghost(%rip), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 3405 0
	mov	arc_mfu(%rip), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 3406 0
	mov	arc_mfu_ghost(%rip), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 3407 0
	mov	arc_l2c_only(%rip), %eax
	addl	$56, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 3409 0
	mov	arc_mru(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3411 0
	mov	arc_mru(%rip), %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3413 0
	mov	arc_mru_ghost(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3415 0
	mov	arc_mru_ghost(%rip), %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3417 0
	mov	arc_mfu(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3419 0
	mov	arc_mfu(%rip), %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3421 0
	mov	arc_mfu_ghost(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3423 0
	mov	arc_mfu_ghost(%rip), %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3425 0
	mov	arc_l2c_only(%rip), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3427 0
	mov	arc_l2c_only(%rip), %eax
	movl	$176, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 3430 0
	call	buf_init
	.loc 2 3432 0
	movb	$0, arc_thread_exit(%rip)
	.loc 2 3433 0
	movl	$0, arc_eviction_list(%rip)
	.loc 2 3434 0
	movl	$arc_eviction_mtx, %edi
	call	zmutex_init
	.loc 2 3435 0
	movl	$408, %esi
	movl	$arc_eviction_hdr, %edi
	call	bzero
	.loc 2 3437 0
	movl	$1, (%rsp)
	movl	$46, %r9d
	movl	$1, %r8d
	movl	$.LC143, %ecx
	movl	$.LC144, %edx
	movl	$0, %esi
	movl	$.LC145, %edi
	call	kstat_create
	mov	%eax, %eax
	movl	%eax, arc_ksp(%rip)
	.loc 2 3440 0
	mov	arc_ksp(%rip), %eax
	testq	%rax, %rax
	je	.L719
	.loc 2 3441 0
	mov	arc_ksp(%rip), %eax
	movl	$arc_stats, %nacl:116(%r15,%rax)
	.loc 2 3442 0
	mov	arc_ksp(%rip), %eax
	movl	%eax, %edi
	call	kstat_install
	.align 32
.L719:
	.loc 2 3450 0
	movl	$0, arc_dead(%rip)
	.loc 2 3451 0
	movl	$0, arc_warm(%rip)
	.loc 2 3453 0
	movq	zfs_write_limit_max(%rip), %rax
	testq	%rax, %rax
	jne	.L720
	.loc 2 3454 0
	movq	physmem(%rip), %rdx
	movl	_pageshift(%rip), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movl	zfs_write_limit_shift(%rip), %eax
	movq	%rdx, %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rax
	movq	%rax, zfs_write_limit_max(%rip)
	jmp	.L721
	.align 32
.L720:
	.loc 2 3456 0
	movl	$0, zfs_write_limit_shift(%rip)
	.align 32
.L721:
	movq	8(%rbp), %rsi
	movl	$arc_init, %edi
	call	__cyg_profile_func_exit
	.loc 2 3460 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE67:
	.size	arc_init, .-arc_init
	.align 32
.globl arc_fini
	.type	arc_fini, @function
arc_fini:
.LFB68:
	.loc 2 3464 0
	.cfi_startproc
	pushq	%rbp
.LCFI130:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI131:
	.cfi_def_cfa_register 6
	.loc 2 3464 0
	movq	8(%rbp), %rsi
	movl	$arc_fini, %edi
	call	__cyg_profile_func_enter
	.loc 2 3473 0
	movl	$0, %edi
	call	arc_flush
	.loc 2 3475 0
	movl	$1, arc_dead(%rip)
	.loc 2 3477 0
	mov	arc_ksp(%rip), %eax
	testq	%rax, %rax
	je	.L724
	.loc 2 3478 0
	mov	arc_ksp(%rip), %eax
	movl	%eax, %edi
	call	kstat_delete
	.loc 2 3479 0
	movl	$0, arc_ksp(%rip)
	.align 32
.L724:
	.loc 2 3504 0
	call	buf_fini
	movq	8(%rbp), %rsi
	movl	$arc_fini, %edi
	call	__cyg_profile_func_exit
	.loc 2 3505 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE68:
	.size	arc_fini, .-arc_fini
	.align 32
	.type	l2arc_hdr_stat_add, @function
l2arc_hdr_stat_add:
.LFB69:
	.loc 2 3636 0
	.cfi_startproc
	pushq	%rbp
.LCFI132:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI133:
	.cfi_def_cfa_register 6
	.loc 2 3636 0
	movq	8(%rbp), %rsi
	movl	$l2arc_hdr_stat_add, %edi
	call	__cyg_profile_func_enter
	.loc 2 3637 0
	movl	$arc_stats+2144, %eax
	mov	%eax, %eax
	movl	$416, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 3638 0
	movl	$arc_stats+1376, %eax
	mov	%eax, %eax
	movq	$-408, %rsi
	movl	%eax, %edi
	call	atomic_add_64
	movq	8(%rbp), %rsi
	movl	$l2arc_hdr_stat_add, %edi
	call	__cyg_profile_func_exit
	.loc 2 3639 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE69:
	.size	l2arc_hdr_stat_add, .-l2arc_hdr_stat_add
	.align 32
	.type	l2arc_hdr_stat_remove, @function
l2arc_hdr_stat_remove:
.LFB70:
	.loc 2 3643 0
	.cfi_startproc
	pushq	%rbp
.LCFI134:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI135:
	.cfi_def_cfa_register 6
	.loc 2 3643 0
	movq	8(%rbp), %rsi
	movl	$l2arc_hdr_stat_remove, %edi
	call	__cyg_profile_func_enter
	.loc 2 3644 0
	movl	$arc_stats+2144, %eax
	mov	%eax, %eax
	movq	$-416, %rsi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 3645 0
	movl	$arc_stats+1376, %eax
	mov	%eax, %eax
	movl	$408, %esi
	movl	%eax, %edi
	call	atomic_add_64
	movq	8(%rbp), %rsi
	movl	$l2arc_hdr_stat_remove, %edi
	call	__cyg_profile_func_exit
	.loc 2 3646 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE70:
	.size	l2arc_hdr_stat_remove, .-l2arc_hdr_stat_remove
	.align 32
	.type	l2arc_dev_get_next, @function
l2arc_dev_get_next:
.LFB71:
	.loc 2 3654 0
	.cfi_startproc
	pushq	%rbp
.LCFI136:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI137:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	.loc 2 3654 0
	movq	8(%rbp), %rsi
	movl	$l2arc_dev_get_next, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3655 0
	movl	$0, -20(%rbp)
	.loc 2 3666 0
	movq	l2arc_ndev(%rip), %rax
	testq	%rax, %rax
	je	.L741
	.align 32
.L731:
	.loc 2 3669 0
	movl	$0, -24(%rbp)
	.loc 2 3670 0
	movl	l2arc_dev_last(%rip), %eax
	movl	%eax, -20(%rbp)
	.align 32
.L738:
	.loc 2 3673 0
	cmpl	$0, -20(%rbp)
	jne	.L733
	.loc 2 3674 0
	mov	l2arc_dev_list(%rip), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	jmp	.L734
	.align 32
.L733:
	.loc 2 3676 0
	mov	l2arc_dev_list(%rip), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_next
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 3677 0
	cmpl	$0, -20(%rbp)
	jne	.L734
	.loc 2 3678 0
	mov	l2arc_dev_list(%rip), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.align 32
.L734:
	.loc 2 3682 0
	cmpl	$0, -24(%rbp)
	jne	.L735
	.loc 2 3683 0
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L736
	.align 32
.L735:
	.loc 2 3684 0
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L742
	.align 32
.L736:
	.loc 2 3687 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%eax, %edi
	call	vdev_is_dead
	testl	%eax, %eax
	jne	.L738
	jmp	.L737
	.align 32
.L742:
	.loc 2 3685 0
	nop
	.align 32
.L737:
	.loc 2 3690 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%eax, %edi
	call	vdev_is_dead
	testl	%eax, %eax
	je	.L739
	.loc 2 3691 0
	movl	$0, -20(%rbp)
	.align 32
.L739:
	.loc 2 3693 0
	movl	-20(%rbp), %eax
	movl	%eax, l2arc_dev_last(%rip)
	jmp	.L732
	.align 32
.L741:
	.loc 2 3667 0
	nop
	.align 32
.L732:
	.loc 2 3707 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$l2arc_dev_get_next, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 3708 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE71:
	.size	l2arc_dev_get_next, .-l2arc_dev_get_next
	.section	.rodata
.LC146:
	.string	"df->l2df_data != ((void *)0)"
.LC147:
	.string	"df->l2df_func != ((void *)0)"
	.text
	.align 32
	.type	l2arc_do_free_on_write, @function
l2arc_do_free_on_write:
.LFB72:
	.loc 2 3715 0
	.cfi_startproc
	pushq	%rbp
.LCFI138:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI139:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	.loc 2 3715 0
	movq	8(%rbp), %rsi
	movl	$l2arc_do_free_on_write, %edi
	call	__cyg_profile_func_enter
	.loc 2 3721 0
	movl	l2arc_free_on_write(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 3723 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	list_tail
	mov	%eax, %eax
	movl	%eax, -8(%rbp)
	jmp	.L744
	.align 32
.L747:
	.loc 2 3724 0
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -4(%rbp)
	.loc 2 3725 0
	mov	-8(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L745
	movl	$__PRETTY_FUNCTION__.13414, %ecx
	movl	$3725, %edx
	movl	$.LC3, %esi
	movl	$.LC146, %edi
	call	__assert_fail
	.align 32
.L745:
	.loc 2 3726 0
	mov	-8(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L746
	movl	$__PRETTY_FUNCTION__.13414, %ecx
	movl	$3726, %edx
	movl	$.LC3, %esi
	movl	$.LC147, %edi
	call	__assert_fail
	.align 32
.L746:
	.loc 2 3727 0
	mov	-8(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	mov	-8(%rbp), %edx
	movl	%nacl:4(%r15,%rdx), %edx
	mov	-8(%rbp), %ecx
	mov	%nacl:(%r15,%rcx), %ecx
	movl	%edx, %esi
	movl	%ecx, %edi
	naclcall	%eax,%r15
	.loc 2 3728 0
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_remove
	.loc 2 3729 0
	movl	-8(%rbp), %eax
	movl	$20, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 3723 0
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	.align 32
.L744:
	cmpl	$0, -8(%rbp)
	jne	.L747
	movq	8(%rbp), %rsi
	movl	$l2arc_do_free_on_write, %edi
	call	__cyg_profile_func_exit
	.loc 2 3734 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE72:
	.size	l2arc_do_free_on_write, .-l2arc_do_free_on_write
	.section	.rodata
.LC148:
	.string	"cb != ((void *)0)"
.LC149:
	.string	"dev != ((void *)0)"
.LC150:
	.string	"head != ((void *)0)"
.LC151:
	.string	"buflist != ((void *)0)"
	.text
	.align 32
	.type	l2arc_write_done, @function
l2arc_write_done:
.LFB73:
	.loc 2 3742 0
	.cfi_startproc
	pushq	%rbp
.LCFI140:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI141:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 3742 0
	movq	8(%rbp), %rsi
	movl	$l2arc_write_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3750 0
	mov	-52(%rbp), %eax
	mov	%nacl:244(%r15,%rax), %eax
	movl	%eax, -48(%rbp)
	.loc 2 3751 0
	cmpl	$0, -48(%rbp)
	jne	.L750
	movl	$__PRETTY_FUNCTION__.13440, %ecx
	movl	$3751, %edx
	movl	$.LC3, %esi
	movl	$.LC148, %edi
	call	__assert_fail
	.align 32
.L750:
	.loc 2 3752 0
	mov	-48(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 3753 0
	cmpl	$0, -44(%rbp)
	jne	.L751
	movl	$__PRETTY_FUNCTION__.13440, %ecx
	movl	$3753, %edx
	movl	$.LC3, %esi
	movl	$.LC149, %edi
	call	__assert_fail
	.align 32
.L751:
	.loc 2 3754 0
	mov	-48(%rbp), %eax
	movl	%nacl:4(%r15,%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 2 3755 0
	cmpl	$0, -36(%rbp)
	jne	.L752
	movl	$__PRETTY_FUNCTION__.13440, %ecx
	movl	$3755, %edx
	movl	$.LC3, %esi
	movl	$.LC150, %edi
	call	__assert_fail
	.align 32
.L752:
	.loc 2 3756 0
	mov	-44(%rbp), %eax
	movl	%nacl:60(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 3757 0
	cmpl	$0, -40(%rbp)
	jne	.L753
	movl	$__PRETTY_FUNCTION__.13440, %ecx
	movl	$3757, %edx
	movl	$.LC3, %esi
	movl	$.LC151, %edi
	call	__assert_fail
	.align 32
.L753:
	.loc 2 3761 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L754
	.loc 2 3762 0
	movl	$arc_stats+1712, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L754:
	.loc 2 3769 0
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	jmp	.L755
	.align 32
.L759:
	.loc 2 3770 0
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -28(%rbp)
	.loc 2 3772 0
	mov	-32(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	mov	-32(%rbp), %ebx
	mov	-32(%rbp), %edx
	mov	%nacl:168(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	buf_hash
	movq	buf_hash_table(%rip), %rdx
	andq	%rdx, %rax
	andl	$255, %eax
	sall	$6, %eax
	addl	$buf_hash_table, %eax
	addl	$12, %eax
	movl	%eax, -20(%rbp)
	.loc 2 3773 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	mutex_tryenter
	testl	%eax, %eax
	jne	.L756
	.loc 2 3779 0
	movl	$arc_stats+1760, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 3780 0
	jmp	.L757
	.align 32
.L756:
	.loc 2 3783 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L758
	.loc 2 3787 0
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_remove
	.loc 2 3788 0
	mov	-32(%rbp), %eax
	movl	%nacl:288(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 3789 0
	mov	-32(%rbp), %eax
	movl	$0, %nacl:288(%r15,%rax)
	.loc 2 3790 0
	movl	-24(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 3791 0
	mov	-32(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	negq	%rax
	movl	$arc_stats+2096, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L758:
	.loc 2 3797 0
	mov	-32(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-65537, %edx
	mov	-32(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L757:
	.loc 2 3769 0
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	.align 32
.L755:
	cmpl	$0, -32(%rbp)
	jne	.L759
	.loc 2 3803 0
	movl	$arc_stats+1664, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	atomic_inc_64
	.loc 2 3804 0
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_remove
	.loc 2 3805 0
	mov	hdr_cache(%rip), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	.loc 2 3809 0
	movl	$0, %eax
	call	l2arc_do_free_on_write
	.loc 2 3811 0
	movl	-48(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	umem_free
	movq	8(%rbp), %rsi
	movl	$l2arc_write_done, %edi
	call	__cyg_profile_func_exit
	.loc 2 3812 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE73:
	.size	l2arc_write_done, .-l2arc_write_done
	.section	.rodata
.LC152:
	.string	"buf != ((void *)0)"
.LC153:
	.string	"hdr != ((void *)0)"
	.text
	.align 32
	.type	l2arc_read_done, @function
l2arc_read_done:
.LFB74:
	.loc 2 3820 0
	.cfi_startproc
	pushq	%rbp
.LCFI142:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI143:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -52(%rbp)
	.loc 2 3820 0
	movq	8(%rbp), %rsi
	movl	$l2arc_read_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3828 0
	mov	-52(%rbp), %eax
	mov	%nacl:244(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 3829 0
	cmpl	$0, -40(%rbp)
	jne	.L762
	movl	$__PRETTY_FUNCTION__.13491, %ecx
	movl	$3829, %edx
	movl	$.LC3, %esi
	movl	$.LC148, %edi
	call	__assert_fail
	.align 32
.L762:
	.loc 2 3830 0
	mov	-40(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 2 3831 0
	cmpl	$0, -32(%rbp)
	jne	.L763
	movl	$__PRETTY_FUNCTION__.13491, %ecx
	movl	$3831, %edx
	movl	$.LC3, %esi
	movl	$.LC152, %edi
	call	__assert_fail
	.align 32
.L763:
	.loc 2 3832 0
	mov	-32(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 2 3833 0
	cmpl	$0, -36(%rbp)
	jne	.L764
	movl	$__PRETTY_FUNCTION__.13491, %ecx
	movl	$3833, %edx
	movl	$.LC3, %esi
	movl	$.LC153, %edi
	call	__assert_fail
	.align 32
.L764:
	.loc 2 3842 0
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	arc_cksum_equal
	movl	%eax, -20(%rbp)
	.loc 2 3843 0
	cmpl	$0, -20(%rbp)
	je	.L765
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L765
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L765
	.loc 2 3847 0
	mov	-52(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%edx, %nacl:244(%r15,%rax)
	.loc 2 3848 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	arc_read_done
	.loc 2 3843 0
	jmp	.L766
	.align 32
.L765:
	.loc 2 3857 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L767
	.loc 2 3858 0
	movl	$arc_stats+2048, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	jmp	.L768
	.align 32
.L767:
	.loc 2 3860 0
	mov	-52(%rbp), %eax
	movl	$5, %nacl:528(%r15,%rax)
	.align 32
.L768:
	.loc 2 3862 0
	cmpl	$0, -20(%rbp)
	jne	.L769
	.loc 2 3863 0
	movl	$arc_stats+2000, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.align 32
.L769:
	.loc 2 3865 0
	mov	-52(%rbp), %eax
	mov	%nacl:560(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L766
	.loc 2 3869 0
	mov	-52(%rbp), %eax
	movl	$0, %nacl:240(%r15,%rax)
	.loc 2 3870 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-17, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 3875 0
	movl	-40(%rbp), %eax
	addl	$136, %eax
	mov	%eax, %ecx
	.loc 2 3872 0
	mov	-40(%rbp), %eax
	movl	%nacl:168(%r15,%rax), %edx
	.loc 2 3874 0
	mov	-52(%rbp), %eax
	movzbl	%nacl:505(%r15,%rax), %eax
	.loc 2 3872 0
	movzbl	%al, %eax
	mov	-52(%rbp), %ebx
	movq	%nacl:384(%r15,%rbx), %r8
	mov	-32(%rbp), %ebx
	mov	%nacl:8(%r15,%rbx), %r10d
	.loc 2 3873 0
	movl	-40(%rbp), %ebx
	addl	$8, %ebx
	mov	%ebx, %edi
	.loc 2 3872 0
	mov	-40(%rbp), %ebx
	mov	%nacl:4(%r15,%rbx), %esi
	mov	-52(%rbp), %ebx
	mov	%nacl:(%r15,%rbx), %ebx
	movl	%ecx, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	-32(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$arc_read_done, %r9d
	movl	%r10d, %ecx
	movl	%edi, %edx
	movl	%ebx, %edi
	call	zio_read
	mov	%eax, %eax
	movl	%eax, -28(%rbp)
	.loc 2 3877 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	.align 32
.L766:
	.loc 2 3881 0
	movl	-40(%rbp), %eax
	movl	$176, %esi
	movl	%eax, %edi
	call	umem_free
	movq	8(%rbp), %rsi
	movl	$l2arc_read_done, %edi
	call	__cyg_profile_func_exit
	.loc 2 3882 0
	naclaspq	$88, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE74:
	.size	l2arc_read_done, .-l2arc_read_done
	.section	.rodata
	.align 8
.LC154:
	.string	"list_num >= 0 && list_num <= 3"
	.text
	.align 32
	.type	l2arc_list_locked, @function
l2arc_list_locked:
.LFB75:
	.loc 2 3896 0
	.cfi_startproc
	pushq	%rbp
.LCFI144:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI145:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 3896 0
	movq	8(%rbp), %rsi
	movl	$l2arc_list_locked, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3899 0
	cmpl	$0, -36(%rbp)
	js	.L772
	cmpl	$3, -36(%rbp)
	jle	.L773
	.align 32
.L772:
	movl	$__PRETTY_FUNCTION__.13536, %ecx
	movl	$3899, %edx
	movl	$.LC3, %esi
	movl	$.LC154, %edi
	call	__assert_fail
	.align 32
.L773:
	.loc 2 3901 0
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	je	.L776
	cmpl	$1, %eax
	jg	.L779
	testl	%eax, %eax
	je	.L775
	jmp	.L774
	.align 32
.L779:
	cmpl	$2, %eax
	je	.L777
	cmpl	$3, %eax
	je	.L778
	jmp	.L774
	.align 32
.L775:
	.loc 2 3903 0
	mov	arc_mfu(%rip), %eax
	addl	$16, %eax
	movl	%eax, -20(%rbp)
	.loc 2 3904 0
	mov	arc_mfu(%rip), %eax
	addl	$56, %eax
	mov	%eax, %edx
	mov	-40(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 3905 0
	jmp	.L774
	.align 32
.L776:
	.loc 2 3907 0
	mov	arc_mru(%rip), %eax
	addl	$16, %eax
	movl	%eax, -20(%rbp)
	.loc 2 3908 0
	mov	arc_mru(%rip), %eax
	addl	$56, %eax
	mov	%eax, %edx
	mov	-40(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 3909 0
	jmp	.L774
	.align 32
.L777:
	.loc 2 3911 0
	mov	arc_mfu(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 2 3912 0
	mov	arc_mfu(%rip), %eax
	addl	$56, %eax
	mov	%eax, %edx
	mov	-40(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 3913 0
	jmp	.L774
	.align 32
.L778:
	.loc 2 3915 0
	mov	arc_mru(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 2 3916 0
	mov	arc_mru(%rip), %eax
	addl	$56, %eax
	mov	%eax, %edx
	mov	-40(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.align 32
.L774:
	.loc 2 3923 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$l2arc_list_locked, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 3924 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE75:
	.size	l2arc_list_locked, .-l2arc_list_locked
	.section	.rodata
	.align 8
.LC155:
	.string	"!((ab)->b_flags & (1 << 10) && (ab)->b_l2hdr != ((void *)0))"
	.text
	.align 32
	.type	l2arc_evict, @function
l2arc_evict:
.LFB76:
	.loc 2 3934 0
	.cfi_startproc
	pushq	%rbp
.LCFI146:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI147:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	.loc 2 3934 0
	movq	8(%rbp), %rsi
	movl	$l2arc_evict, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 3941 0
	mov	-52(%rbp), %eax
	movl	%nacl:60(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 3943 0
	cmpl	$0, -44(%rbp)
	jne	.L782
	movl	$0, %ebx
	jmp	.L783
	.align 32
.L782:
	.loc 2 3946 0
	cmpl	$0, -68(%rbp)
	jne	.L784
	mov	-52(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L784
	movl	$0, %ebx
	jmp	.L783
	.align 32
.L784:
	.loc 2 3954 0
	mov	-52(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:40(%r15,%rax), %rax
	movq	-64(%rbp), %rcx
	addq	%rcx, %rcx
	subq	%rcx, %rax
	cmpq	%rax, %rdx
	jb	.L785
	.loc 2 3959 0
	mov	-52(%rbp), %eax
	movq	%nacl:40(%r15,%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L786
	.align 32
.L785:
	.loc 2 3961 0
	mov	-52(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.align 32
.L786:
	.loc 2 3970 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	list_tail
	mov	%eax, %eax
	movl	%eax, -36(%rbp)
	jmp	.L787
	.align 32
.L797:
	.loc 2 3971 0
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	.loc 2 3985 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L788
	.loc 2 3990 0
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_remove
	.loc 2 3994 0
	jmp	.L789
	.align 32
.L788:
	.loc 2 3997 0
	cmpl	$0, -68(%rbp)
	jne	.L790
	mov	-36(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L790
	.loc 2 3998 0
	mov	-36(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	movl	%nacl:4(%r15,%rax), %eax
	cltq
	.loc 2 3997 0
	cmpq	-24(%rbp), %rax
	ja	.L791
	.loc 2 3999 0
	mov	-36(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	movl	%nacl:4(%r15,%rax), %eax
	movslq	%eax,%rdx
	mov	-52(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	.loc 2 3997 0
	cmpq	%rax, %rdx
	jb	.L791
	.align 32
.L790:
	.loc 2 4010 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	jne	.L802
	.align 32
.L792:
	.loc 2 4020 0
	mov	-36(%rbp), %eax
	mov	%nacl:172(%r15,%rax), %edx
	mov	arc_l2c_only(%rip), %eax
	cmpl	%eax, %edx
	jne	.L793
	.loc 2 4021 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L794
	mov	-36(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L794
	movl	$__PRETTY_FUNCTION__.13573, %ecx
	movl	$4021, %edx
	movl	$.LC3, %esi
	movl	$.LC155, %edi
	call	__assert_fail
	.align 32
.L794:
	.loc 2 4027 0
	mov	arc_anon(%rip), %ecx
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	arc_change_state
	.loc 2 4028 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	arc_hdr_destroy
	jmp	.L789
	.align 32
.L793:
	.loc 2 4035 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L795
	mov	-36(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L795
	.loc 2 4036 0
	movl	$arc_stats+1856, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 4037 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$131072, %edx
	mov	-36(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.align 32
.L795:
	.loc 2 4043 0
	mov	-36(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L796
	.loc 2 4044 0
	mov	-36(%rbp), %eax
	movl	%nacl:288(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 4045 0
	mov	-36(%rbp), %eax
	movl	$0, %nacl:288(%r15,%rax)
	.loc 2 4046 0
	movl	-40(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 4047 0
	mov	-36(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	negq	%rax
	movl	$arc_stats+2096, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.align 32
.L796:
	.loc 2 4049 0
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_remove
	.loc 2 4055 0
	mov	-36(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-65537, %edx
	mov	-36(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	jmp	.L789
	.align 32
.L802:
	.loc 2 4017 0
	nop
	.align 32
.L789:
	.loc 2 3970 0
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	.align 32
.L787:
	cmpl	$0, -36(%rbp)
	jne	.L797
	.align 32
.L791:
	.loc 2 4064 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	subq	-24(%rbp), %rax
	mov	-52(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	spa_l2cache_space_update
	.loc 2 4065 0
	mov	-52(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %nacl:48(%r15,%rax)
	movl	$1, %ebx
	.align 32
.L783:
	movq	8(%rbp), %rsi
	movl	$l2arc_evict, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 4066 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE76:
	.size	l2arc_evict, .-l2arc_evict
	.section	.rodata
.LC156:
	.string	"dev->l2ad_vdev != ((void *)0)"
.LC157:
	.string	"write_sz"
.LC158:
	.string	"target_sz"
.LC159:
	.string	"<="
	.text
	.align 32
	.type	l2arc_write_buffers, @function
l2arc_write_buffers:
.LFB77:
	.loc 2 4076 0
	.cfi_startproc
	pushq	%rbp
.LCFI148:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI149:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$216, %r15
	movl	%edi, -164(%rbp)
	movl	%esi, -168(%rbp)
	movq	%rdx, -176(%rbp)
	.loc 2 4076 0
	movq	8(%rbp), %rsi
	movl	$l2arc_write_buffers, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 4087 0
	mov	-168(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L804
	movl	$__PRETTY_FUNCTION__.13673, %ecx
	movl	$4087, %edx
	movl	$.LC3, %esi
	movl	$.LC156, %edi
	call	__assert_fail
	.align 32
.L804:
	.loc 2 4089 0
	movl	$0, -76(%rbp)
	.loc 2 4090 0
	movq	$0, -120(%rbp)
	.loc 2 4091 0
	movl	$0, -84(%rbp)
	.loc 2 4092 0
	mov	hdr_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -140(%rbp)
	.loc 2 4093 0
	mov	-140(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$262144, %edx
	mov	-140(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
.LBB96:
	.loc 2 4101 0
	movl	$0, -68(%rbp)
	jmp	.L805
	.align 32
.L824:
	.loc 2 4102 0
	leal	-152(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	l2arc_list_locked
	mov	%eax, %eax
	movl	%eax, -132(%rbp)
	.loc 2 4103 0
	movq	$0, -128(%rbp)
	.loc 2 4111 0
	movq	l2arc_headroom(%rip), %rax
	movq	-176(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -104(%rbp)
	.loc 2 4112 0
	movl	arc_warm(%rip), %eax
	testl	%eax, %eax
	jne	.L806
	.loc 2 4113 0
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -148(%rbp)
	.loc 2 4117 0
	jmp	.L808
	.align 32
.L806:
	.loc 2 4115 0
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	list_tail
	mov	%eax, %eax
	movl	%eax, -148(%rbp)
	.loc 2 4117 0
	jmp	.L808
	.align 32
.L821:
	.loc 2 4118 0
	movl	arc_warm(%rip), %eax
	testl	%eax, %eax
	jne	.L809
	.loc 2 4119 0
	movl	-148(%rbp), %edx
	movl	-132(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_next
	mov	%eax, %eax
	movl	%eax, -144(%rbp)
	jmp	.L810
	.align 32
.L809:
	.loc 2 4121 0
	movl	-148(%rbp), %edx
	movl	-132(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	list_prev
	mov	%eax, %eax
	movl	%eax, -144(%rbp)
	.align 32
.L810:
	.loc 2 4133 0
	mov	-148(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	addq	%rax, -128(%rbp)
	.loc 2 4134 0
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	ja	.L834
	.align 32
.L811:
	.loc 2 4144 0
	mov	-148(%rbp), %eax
	mov	%nacl:168(%r15,%rax), %eax
	cmpl	%eax, -164(%rbp)
	jne	.L835
	.align 32
.L813:
	.loc 2 4151 0
	mov	-148(%rbp), %eax
	mov	%nacl:288(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L836
	.align 32
.L815:
	.loc 2 4161 0
	mov	-148(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L837
	mov	-148(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L838
	.align 32
.L817:
	.loc 2 4168 0
	mov	-148(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	addq	-120(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jbe	.L818
	.loc 2 4169 0
	movl	$1, -84(%rbp)
	.loc 2 4173 0
	jmp	.L812
	.align 32
.L818:
	.loc 2 4176 0
	mov	-148(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L839
	.align 32
.L819:
	.loc 2 4184 0
	cmpl	$0, -76(%rbp)
	jne	.L820
	.loc 2 4190 0
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %edx
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_head
	.loc 2 4192 0
	movl	$256, %esi
	movl	$8, %edi
	call	umem_alloc
	mov	%eax, %eax
	movl	%eax, -80(%rbp)
	.loc 2 4194 0
	mov	-80(%rbp), %eax
	movl	-168(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 4195 0
	mov	-80(%rbp), %eax
	movl	-140(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 4196 0
	movl	-80(%rbp), %edx
	movl	-164(%rbp), %eax
	movl	$1, %ecx
	movl	$l2arc_write_done, %esi
	movl	%eax, %edi
	call	zio_root
	mov	%eax, %eax
	movl	%eax, -76(%rbp)
	.align 32
.L820:
	.loc 2 4203 0
	movl	$256, %esi
	movl	$8, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -136(%rbp)
	.loc 2 4204 0
	mov	-136(%rbp), %eax
	movl	-168(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 4205 0
	mov	-168(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-136(%rbp), %eax
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 4207 0
	mov	-148(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$65536, %edx
	mov	-148(%rbp), %eax
	movl	%edx, %nacl:88(%r15,%rax)
	.loc 2 4208 0
	mov	-148(%rbp), %eax
	movl	-136(%rbp), %edx
	movl	%edx, %nacl:288(%r15,%rax)
	.loc 2 4209 0
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %edx
	movl	-148(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_head
	.loc 2 4210 0
	mov	-148(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -96(%rbp)
	.loc 2 4211 0
	mov	-148(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	movq	%rax, -112(%rbp)
	.loc 2 4217 0
	mov	-148(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	%eax, %edi
	call	arc_cksum_verify
	.loc 2 4218 0
	mov	-148(%rbp), %eax
	mov	%nacl:84(%r15,%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	arc_cksum_compute
	.loc 2 4220 0
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 4224 0
	movzbl	zio_priority_table+4(%rip), %eax
	.loc 2 4222 0
	movzbl	%al, %ebx
	mov	-168(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-168(%rbp), %eax
	mov	%nacl:(%r15,%rax), %esi
	movl	-96(%rbp), %edi
	movq	-112(%rbp), %rcx
	movl	-76(%rbp), %eax
	movl	$0, 32(%rsp)
	movl	$1, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$2, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	zio_write_phys
	mov	%eax, %eax
	movl	%eax, -72(%rbp)
	.loc 2 4229 0
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 4231 0
	movq	-112(%rbp), %rax
	addq	%rax, -120(%rbp)
	.loc 2 4232 0
	mov	-168(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rax, %rdx
	addq	-112(%rbp), %rdx
	mov	-168(%rbp), %eax
	movq	%rdx, %nacl:8(%r15,%rax)
	jmp	.L814
	.align 32
.L835:
	.loc 2 4148 0
	nop
	jmp	.L814
	.align 32
.L836:
	.loc 2 4158 0
	nop
	jmp	.L814
	.align 32
.L837:
	.loc 2 4165 0
	nop
	jmp	.L814
	.align 32
.L838:
	nop
	jmp	.L814
	.align 32
.L839:
	.loc 2 4181 0
	nop
	.align 32
.L814:
	.loc 2 4117 0
	movl	-144(%rbp), %eax
	movl	%eax, -148(%rbp)
	.align 32
.L808:
	cmpl	$0, -148(%rbp)
	jne	.L821
	jmp	.L812
	.align 32
.L834:
	.loc 2 4141 0
	nop
	.align 32
.L812:
	.loc 2 4237 0
	cmpl	$1, -84(%rbp)
	je	.L840
	.align 32
.L822:
	.loc 2 4101 0
	addl	$1, -68(%rbp)
	.align 32
.L805:
	cmpl	$3, -68(%rbp)
	jle	.L824
	jmp	.L823
	.align 32
.L840:
	.loc 2 4238 0
	nop
	.align 32
.L823:
.LBE96:
	.loc 2 4243 0
	cmpl	$0, -76(%rbp)
	jne	.L825
.LBB97:
	.loc 2 4244 0
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L826
.LBB98:
	naclsspq	$272, %r15
	leal	40(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC22, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC22, %r8d
	movl	$.LC157, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.13673, %r8d
	movl	$4244, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L826:
.LBE98:
.LBE97:
	.loc 2 4245 0
	mov	hdr_cache(%rip), %edx
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	movl	$0, %ebx
	jmp	.L827
	.align 32
.L825:
.LBB99:
	.loc 2 4249 0
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L828
.LBB100:
	naclsspq	$272, %r15
	leal	40(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC159, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC158, %r9d
	movl	$.LC159, %r8d
	movl	$.LC157, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.13673, %r8d
	movl	$4249, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L828:
.LBE100:
.LBE99:
	.loc 2 4250 0
	movl	$arc_stats+1616, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 4251 0
	movq	-120(%rbp), %rax
	movl	$arc_stats+2096, %edx
	mov	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	atomic_add_64
	.loc 2 4252 0
	movq	-120(%rbp), %rax
	mov	-168(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	spa_l2cache_space_update
	.loc 2 4258 0
	mov	-168(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-168(%rbp), %eax
	movq	%nacl:40(%r15,%rax), %rax
	subq	-176(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L829
	.loc 2 4260 0
	mov	-168(%rbp), %eax
	movq	%nacl:40(%r15,%rax), %rdx
	mov	-168(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 4259 0
	mov	-168(%rbp), %edx
	mov	%nacl:(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	spa_l2cache_space_update
	.loc 2 4261 0
	mov	-168(%rbp), %eax
	movq	%nacl:32(%r15,%rax), %rdx
	mov	-168(%rbp), %eax
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 4262 0
	mov	-168(%rbp), %eax
	movq	%nacl:32(%r15,%rax), %rdx
	mov	-168(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 4263 0
	mov	-168(%rbp), %eax
	movl	$0, %nacl:56(%r15,%rax)
	.align 32
.L829:
	.loc 2 4266 0
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait
	movl	$1, %ebx
	.align 32
.L827:
	movq	8(%rbp), %rsi
	movl	$l2arc_write_buffers, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 4267 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE77:
	.size	l2arc_write_buffers, .-l2arc_write_buffers
	.section	.rodata
.LC160:
	.string	"spa != ((void *)0)"
	.text
	.align 32
	.type	l2arc_feed_thread, @function
l2arc_feed_thread:
.LFB78:
	.loc 2 4275 0
	.cfi_startproc
	pushq	%rbp
.LCFI150:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI151:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	.loc 2 4275 0
	movq	8(%rbp), %rsi
	movl	$l2arc_feed_thread, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 4281 0
	movl	$l2arc_feed_thr_lock, -48(%rbp)
	.loc 2 4287 0
	jmp	.L842
	.align 32
.L850:
	.loc 2 4291 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L843
	movl	$__PRETTY_FUNCTION__.13796, %ecx
	movl	$4291, %edx
	movl	$.LC3, %esi
	movl	$.LC86, %edi
	call	__assert_fail
	.align 32
.L843:
	.loc 2 4293 0
	call	gethrtime
	sarq	$23, %rax
	.loc 2 4292 0
	movl	%eax, %edx
	movq	l2arc_feed_secs(%rip), %rax
	imull	$119, %eax, %eax
	leal	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	$l2arc_feed_thr_lock, %esi
	movl	$l2arc_feed_thr_cv, %edi
	call	cv_timedwait
	.loc 2 4294 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L844
	movl	$__PRETTY_FUNCTION__.13796, %ecx
	movl	$4294, %edx
	movl	$.LC3, %esi
	movl	$.LC86, %edi
	call	__assert_fail
	.align 32
.L844:
	.loc 2 4302 0
	movq	l2arc_ndev(%rip), %rax
	testq	%rax, %rax
	je	.L853
	.align 32
.L845:
	.loc 2 4321 0
	call	l2arc_dev_get_next
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L854
	.align 32
.L846:
	.loc 2 4324 0
	mov	-32(%rbp), %eax
	movl	%nacl:4(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 4325 0
	cmpl	$0, -28(%rbp)
	jne	.L847
	movl	$__PRETTY_FUNCTION__.13796, %ecx
	movl	$4325, %edx
	movl	$.LC3, %esi
	movl	$.LC160, %edi
	call	__assert_fail
	.align 32
.L847:
	.loc 2 4330 0
	call	arc_reclaim_needed
	testl	%eax, %eax
	je	.L848
	.loc 2 4331 0
	movl	$arc_stats+1952, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 4332 0
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	spa_config_exit
	.loc 2 4333 0
	jmp	.L842
	.align 32
.L848:
	.loc 2 4336 0
	movl	$arc_stats+1520, %eax
	mov	%eax, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	atomic_add_64
	.loc 2 4338 0
	mov	-32(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 4339 0
	movl	arc_warm(%rip), %eax
	testl	%eax, %eax
	jne	.L849
	.loc 2 4340 0
	mov	-32(%rbp), %eax
	movq	%nacl:24(%r15,%rax), %rax
	addq	%rax, -24(%rbp)
	.align 32
.L849:
	.loc 2 4345 0
	movq	-24(%rbp), %rcx
	movl	-32(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	l2arc_evict
	.loc 2 4350 0
	movq	-24(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	l2arc_write_buffers
	.loc 2 4351 0
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	spa_config_exit
	jmp	.L842
	.align 32
.L853:
	.loc 2 4306 0
	nop
	jmp	.L842
	.align 32
.L854:
	.loc 2 4322 0
	nop
	.align 32
.L842:
	.loc 2 4287 0
	movzbl	l2arc_thread_exit(%rip), %eax
	testb	%al, %al
	je	.L850
	.loc 2 4354 0
	movb	$0, l2arc_thread_exit(%rip)
	.loc 2 4355 0
	movl	$l2arc_feed_thr_cv, %edi
	call	cv_broadcast
	.loc 2 4356 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	call	pthread_self
	mov	%eax, %eax
	cmpl	%eax, %ebx
	je	.L851
	movl	$__PRETTY_FUNCTION__.13796, %ecx
	movl	$4356, %edx
	movl	$.LC3, %esi
	movl	$.LC86, %edi
	call	__assert_fail
	.align 32
.L851:
	mov	-48(%rbp), %eax
	movl	%eax, %edi
	call	mutex_exit
	movq	8(%rbp), %rsi
	movl	$l2arc_feed_thread, %edi
	call	__cyg_profile_func_exit
	.loc 2 4360 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE78:
	.size	l2arc_feed_thread, .-l2arc_feed_thread
	.align 32
.globl l2arc_vdev_present
	.type	l2arc_vdev_present, @function
l2arc_vdev_present:
.LFB79:
	.loc 2 4364 0
	.cfi_startproc
	pushq	%rbp
.LCFI152:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI153:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 4364 0
	movq	8(%rbp), %rsi
	movl	$l2arc_vdev_present, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 4369 0
	mov	l2arc_dev_list(%rip), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	jmp	.L856
	.align 32
.L859:
	.loc 2 4371 0
	mov	-20(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L861
	.align 32
.L857:
	.loc 2 4370 0
	mov	l2arc_dev_list(%rip), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_next
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.align 32
.L856:
	.loc 2 4369 0
	cmpl	$0, -20(%rbp)
	jne	.L859
	jmp	.L858
	.align 32
.L861:
	.loc 2 4372 0
	nop
	.align 32
.L858:
	.loc 2 4377 0
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %ebx
	movq	8(%rbp), %rsi
	movl	$l2arc_vdev_present, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 4378 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE79:
	.size	l2arc_vdev_present, .-l2arc_vdev_present
	.section	.rodata
.LC161:
	.string	"!l2arc_vdev_present(vd)"
.LC162:
	.string	"adddev->l2ad_write"
	.text
	.align 32
.globl l2arc_add_vdev
	.type	l2arc_add_vdev, @function
l2arc_add_vdev:
.LFB80:
	.loc 2 4386 0
	.cfi_startproc
	pushq	%rbp
.LCFI154:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI155:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	.loc 2 4386 0
	movq	8(%rbp), %rsi
	movl	$l2arc_add_vdev, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 4389 0
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	l2arc_vdev_present
	testl	%eax, %eax
	je	.L863
	movl	$__PRETTY_FUNCTION__.13867, %ecx
	movl	$4389, %edx
	movl	$.LC3, %esi
	movl	$.LC161, %edi
	call	__assert_fail
	.align 32
.L863:
	.loc 2 4394 0
	movl	$256, %esi
	movl	$72, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 4395 0
	mov	-44(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 4396 0
	mov	-44(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 4397 0
	movq	l2arc_write_max(%rip), %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:16(%r15,%rax)
	.loc 2 4398 0
	movq	l2arc_write_boost(%rip), %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:24(%r15,%rax)
	.loc 2 4399 0
	mov	-44(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %nacl:32(%r15,%rax)
	.loc 2 4400 0
	mov	-44(%rbp), %eax
	movq	-72(%rbp), %rdx
	movq	%rdx, %nacl:40(%r15,%rax)
	.loc 2 4401 0
	mov	-44(%rbp), %eax
	movq	%nacl:32(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 4402 0
	mov	-44(%rbp), %eax
	movq	%nacl:32(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 4403 0
	mov	-44(%rbp), %eax
	movl	$1, %nacl:56(%r15,%rax)
.LBB101:
	.loc 2 4404 0
	mov	-44(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.L864
.LBB102:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC20, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC47, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC21, %r9d
	movl	$.LC47, %r8d
	movl	$.LC162, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC24, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.13867, %r8d
	movl	$4404, %ecx
	movl	$.LC3, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L864:
.LBE102:
.LBE101:
	.loc 2 4410 0
	movl	$256, %esi
	movl	$16, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movq	%rax, %rdx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:60(%r15,%rax)
	.loc 2 4411 0
	mov	-44(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	$292, %edx
	movl	$408, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 4414 0
	mov	-44(%rbp), %eax
	movq	%nacl:40(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, %rcx
	movl	-56(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	spa_l2cache_space_update
	.loc 2 4422 0
	mov	l2arc_dev_list(%rip), %edx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_head
	.loc 2 4423 0
	movl	$l2arc_ndev, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	atomic_inc_64
	movq	8(%rbp), %rsi
	movl	$l2arc_add_vdev, %edi
	call	__cyg_profile_func_exit
	.loc 2 4427 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE80:
	.size	l2arc_add_vdev, .-l2arc_add_vdev
	.section	.rodata
.LC163:
	.string	"remdev != ((void *)0)"
	.text
	.align 32
.globl l2arc_remove_vdev
	.type	l2arc_remove_vdev, @function
l2arc_remove_vdev:
.LFB81:
	.loc 2 4434 0
	.cfi_startproc
	pushq	%rbp
.LCFI156:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI157:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	.loc 2 4434 0
	movq	8(%rbp), %rsi
	movl	$l2arc_remove_vdev, %edi
	call	__cyg_profile_func_enter
	.loc 2 4435 0
	movl	$0, -4(%rbp)
	.loc 2 4443 0
	mov	l2arc_dev_list(%rip), %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -12(%rbp)
	jmp	.L867
	.align 32
.L870:
	.loc 2 4444 0
	mov	l2arc_dev_list(%rip), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_next
	mov	%eax, %eax
	movl	%eax, -8(%rbp)
	.loc 2 4445 0
	mov	-12(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L868
	.loc 2 4446 0
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 2 4447 0
	jmp	.L869
	.align 32
.L868:
	.loc 2 4443 0
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	.align 32
.L867:
	cmpl	$0, -12(%rbp)
	jne	.L870
	.align 32
.L869:
	.loc 2 4450 0
	cmpl	$0, -4(%rbp)
	jne	.L871
	movl	$__PRETTY_FUNCTION__.13904, %ecx
	movl	$4450, %edx
	movl	$.LC3, %esi
	movl	$.LC163, %edi
	call	__assert_fail
	.align 32
.L871:
	.loc 2 4455 0
	mov	l2arc_dev_list(%rip), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_remove
	.loc 2 4456 0
	movl	$0, l2arc_dev_last(%rip)
	.loc 2 4457 0
	movl	$l2arc_ndev, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	atomic_dec_64
	.loc 2 4464 0
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	l2arc_evict
	.loc 2 4465 0
	mov	-4(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	%eax, %edi
	call	list_destroy
	.loc 2 4466 0
	mov	-4(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 4467 0
	movl	-4(%rbp), %eax
	movl	$72, %esi
	movl	%eax, %edi
	call	umem_free
	movq	8(%rbp), %rsi
	movl	$l2arc_remove_vdev, %edi
	call	__cyg_profile_func_exit
	.loc 2 4468 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE81:
	.size	l2arc_remove_vdev, .-l2arc_remove_vdev
	.align 32
.globl l2arc_init
	.type	l2arc_init, @function
l2arc_init:
.LFB82:
	.loc 2 4472 0
	.cfi_startproc
	pushq	%rbp
.LCFI158:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI159:
	.cfi_def_cfa_register 6
	.loc 2 4472 0
	movq	8(%rbp), %rsi
	movl	$l2arc_init, %edi
	call	__cyg_profile_func_enter
	.loc 2 4473 0
	movb	$0, l2arc_thread_exit(%rip)
	.loc 2 4474 0
	movq	$0, l2arc_ndev(%rip)
	.loc 2 4475 0
	movq	$0, arc_stats+1616(%rip)
	.loc 2 4476 0
	movq	$0, arc_stats+1664(%rip)
	.loc 2 4484 0
	movl	$L2ARC_dev_list, l2arc_dev_list(%rip)
	.loc 2 4485 0
	movl	$L2ARC_free_on_write, l2arc_free_on_write(%rip)
	.loc 2 4486 0
	mov	l2arc_dev_list(%rip), %eax
	movl	$64, %edx
	movl	$72, %esi
	movl	%eax, %edi
	call	list_create
	.loc 2 4488 0
	mov	l2arc_free_on_write(%rip), %eax
	movl	$12, %edx
	movl	$20, %esi
	movl	%eax, %edi
	call	list_create
	movq	8(%rbp), %rsi
	movl	$l2arc_init, %edi
	call	__cyg_profile_func_exit
	.loc 2 4494 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE82:
	.size	l2arc_init, .-l2arc_init
	.align 32
.globl l2arc_fini
	.type	l2arc_fini, @function
l2arc_fini:
.LFB83:
	.loc 2 4498 0
	.cfi_startproc
	pushq	%rbp
.LCFI160:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI161:
	.cfi_def_cfa_register 6
	.loc 2 4498 0
	movq	8(%rbp), %rsi
	movl	$l2arc_fini, %edi
	call	__cyg_profile_func_enter
	.loc 2 4508 0
	movb	$1, l2arc_thread_exit(%rip)
	.loc 2 4515 0
	movl	$0, %eax
	call	l2arc_do_free_on_write
	.loc 2 4524 0
	mov	l2arc_dev_list(%rip), %eax
	movl	%eax, %edi
	call	list_destroy
	.loc 2 4525 0
	mov	l2arc_free_on_write(%rip), %eax
	movl	%eax, %edi
	call	list_destroy
	movq	8(%rbp), %rsi
	movl	$l2arc_fini, %edi
	call	__cyg_profile_func_exit
	.loc 2 4526 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE83:
	.size	l2arc_fini, .-l2arc_fini
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.13904, @object
	.size	__PRETTY_FUNCTION__.13904, 18
__PRETTY_FUNCTION__.13904:
	.string	"l2arc_remove_vdev"
	.type	__PRETTY_FUNCTION__.13867, @object
	.size	__PRETTY_FUNCTION__.13867, 15
__PRETTY_FUNCTION__.13867:
	.string	"l2arc_add_vdev"
	.align 16
	.type	__PRETTY_FUNCTION__.13796, @object
	.size	__PRETTY_FUNCTION__.13796, 18
__PRETTY_FUNCTION__.13796:
	.string	"l2arc_feed_thread"
	.align 16
	.type	__PRETTY_FUNCTION__.13673, @object
	.size	__PRETTY_FUNCTION__.13673, 20
__PRETTY_FUNCTION__.13673:
	.string	"l2arc_write_buffers"
	.type	__PRETTY_FUNCTION__.13573, @object
	.size	__PRETTY_FUNCTION__.13573, 12
__PRETTY_FUNCTION__.13573:
	.string	"l2arc_evict"
	.align 16
	.type	__PRETTY_FUNCTION__.13536, @object
	.size	__PRETTY_FUNCTION__.13536, 18
__PRETTY_FUNCTION__.13536:
	.string	"l2arc_list_locked"
	.align 16
	.type	__PRETTY_FUNCTION__.13491, @object
	.size	__PRETTY_FUNCTION__.13491, 16
__PRETTY_FUNCTION__.13491:
	.string	"l2arc_read_done"
	.align 16
	.type	__PRETTY_FUNCTION__.13440, @object
	.size	__PRETTY_FUNCTION__.13440, 17
__PRETTY_FUNCTION__.13440:
	.string	"l2arc_write_done"
	.align 16
	.type	__PRETTY_FUNCTION__.13414, @object
	.size	__PRETTY_FUNCTION__.13414, 23
__PRETTY_FUNCTION__.13414:
	.string	"l2arc_do_free_on_write"
	.align 16
	.type	__func__.13192, @object
	.size	__func__.13192, 22
__func__.13192:
	.string	"arc_tempreserve_space"
	.align 16
	.type	__PRETTY_FUNCTION__.13179, @object
	.size	__PRETTY_FUNCTION__.13179, 22
__PRETTY_FUNCTION__.13179:
	.string	"arc_tempreserve_clear"
	.type	__PRETTY_FUNCTION__.13096, @object
	.size	__PRETTY_FUNCTION__.13096, 9
__PRETTY_FUNCTION__.13096:
	.string	"arc_free"
	.type	__PRETTY_FUNCTION__.13060, @object
	.size	__PRETTY_FUNCTION__.13060, 10
__PRETTY_FUNCTION__.13060:
	.string	"arc_write"
	.type	__PRETTY_FUNCTION__.12888, @object
	.size	__PRETTY_FUNCTION__.12888, 15
__PRETTY_FUNCTION__.12888:
	.string	"arc_write_done"
	.align 16
	.type	__PRETTY_FUNCTION__.12843, @object
	.size	__PRETTY_FUNCTION__.12843, 16
__PRETTY_FUNCTION__.12843:
	.string	"arc_write_ready"
	.type	__PRETTY_FUNCTION__.12665, @object
	.size	__PRETTY_FUNCTION__.12665, 12
__PRETTY_FUNCTION__.12665:
	.string	"arc_release"
	.type	__PRETTY_FUNCTION__.12562, @object
	.size	__PRETTY_FUNCTION__.12562, 14
__PRETTY_FUNCTION__.12562:
	.string	"arc_buf_evict"
	.align 16
	.type	__PRETTY_FUNCTION__.12540, @object
	.size	__PRETTY_FUNCTION__.12540, 17
__PRETTY_FUNCTION__.12540:
	.string	"arc_set_callback"
	.type	__PRETTY_FUNCTION__.12507, @object
	.size	__PRETTY_FUNCTION__.12507, 12
__PRETTY_FUNCTION__.12507:
	.string	"arc_tryread"
	.align 16
	.type	__PRETTY_FUNCTION__.12173, @object
	.size	__PRETTY_FUNCTION__.12173, 16
__PRETTY_FUNCTION__.12173:
	.string	"arc_read_nolock"
	.align 16
	.type	__func__.12187, @object
	.size	__func__.12187, 16
__func__.12187:
	.string	"arc_read_nolock"
	.type	__PRETTY_FUNCTION__.12117, @object
	.size	__PRETTY_FUNCTION__.12117, 9
__PRETTY_FUNCTION__.12117:
	.string	"arc_read"
	.type	__PRETTY_FUNCTION__.11951, @object
	.size	__PRETTY_FUNCTION__.11951, 14
__PRETTY_FUNCTION__.11951:
	.string	"arc_read_done"
	.align 16
	.type	__PRETTY_FUNCTION__.11928, @object
	.size	__PRETTY_FUNCTION__.11928, 16
__PRETTY_FUNCTION__.11928:
	.string	"arc_getbuf_func"
	.type	__PRETTY_FUNCTION__.11911, @object
	.size	__PRETTY_FUNCTION__.11911, 15
__PRETTY_FUNCTION__.11911:
	.string	"arc_bcopy_func"
	.type	__PRETTY_FUNCTION__.11775, @object
	.size	__PRETTY_FUNCTION__.11775, 11
__PRETTY_FUNCTION__.11775:
	.string	"arc_access"
	.align 16
	.type	__PRETTY_FUNCTION__.11630, @object
	.size	__PRETTY_FUNCTION__.11630, 17
__PRETTY_FUNCTION__.11630:
	.string	"arc_get_data_buf"
	.type	__PRETTY_FUNCTION__.11516, @object
	.size	__PRETTY_FUNCTION__.11516, 10
__PRETTY_FUNCTION__.11516:
	.string	"arc_adapt"
	.align 16
	.type	__PRETTY_FUNCTION__.11445, @object
	.size	__PRETTY_FUNCTION__.11445, 19
__PRETTY_FUNCTION__.11445:
	.string	"arc_reclaim_thread"
	.type	__PRETTY_FUNCTION__.11364, @object
	.size	__PRETTY_FUNCTION__.11364, 11
__PRETTY_FUNCTION__.11364:
	.string	"arc_shrink"
	.type	__PRETTY_FUNCTION__.11327, @object
	.size	__PRETTY_FUNCTION__.11327, 10
__PRETTY_FUNCTION__.11327:
	.string	"arc_flush"
	.align 16
	.type	__PRETTY_FUNCTION__.11295, @object
	.size	__PRETTY_FUNCTION__.11295, 19
__PRETTY_FUNCTION__.11295:
	.string	"arc_do_user_evicts"
	.align 16
	.type	__PRETTY_FUNCTION__.11085, @object
	.size	__PRETTY_FUNCTION__.11085, 16
__PRETTY_FUNCTION__.11085:
	.string	"arc_evict_ghost"
	.align 16
	.type	__func__.11091, @object
	.size	__func__.11091, 16
__func__.11091:
	.string	"arc_evict_ghost"
	.type	__PRETTY_FUNCTION__.10867, @object
	.size	__PRETTY_FUNCTION__.10867, 10
__PRETTY_FUNCTION__.10867:
	.string	"arc_evict"
	.type	__func__.10879, @object
	.size	__func__.10879, 10
__func__.10879:
	.string	"arc_evict"
	.align 16
	.type	__PRETTY_FUNCTION__.10799, @object
	.size	__PRETTY_FUNCTION__.10799, 19
__PRETTY_FUNCTION__.10799:
	.string	"arc_buf_remove_ref"
	.type	__PRETTY_FUNCTION__.10744, @object
	.size	__PRETTY_FUNCTION__.10744, 13
__PRETTY_FUNCTION__.10744:
	.string	"arc_buf_free"
	.align 16
	.type	__PRETTY_FUNCTION__.10621, @object
	.size	__PRETTY_FUNCTION__.10621, 16
__PRETTY_FUNCTION__.10621:
	.string	"arc_hdr_destroy"
	.align 16
	.type	__PRETTY_FUNCTION__.10530, @object
	.size	__PRETTY_FUNCTION__.10530, 16
__PRETTY_FUNCTION__.10530:
	.string	"arc_buf_destroy"
	.align 16
	.type	__PRETTY_FUNCTION__.10462, @object
	.size	__PRETTY_FUNCTION__.10462, 16
__PRETTY_FUNCTION__.10462:
	.string	"arc_buf_add_ref"
	.type	__PRETTY_FUNCTION__.10414, @object
	.size	__PRETTY_FUNCTION__.10414, 14
__PRETTY_FUNCTION__.10414:
	.string	"arc_buf_alloc"
	.align 16
	.type	__PRETTY_FUNCTION__.10395, @object
	.size	__PRETTY_FUNCTION__.10395, 18
__PRETTY_FUNCTION__.10395:
	.string	"arc_data_buf_free"
	.align 16
	.type	__PRETTY_FUNCTION__.10362, @object
	.size	__PRETTY_FUNCTION__.10362, 17
__PRETTY_FUNCTION__.10362:
	.string	"arc_space_return"
	.align 16
	.type	__PRETTY_FUNCTION__.10188, @object
	.size	__PRETTY_FUNCTION__.10188, 17
__PRETTY_FUNCTION__.10188:
	.string	"arc_change_state"
	.align 16
	.type	__PRETTY_FUNCTION__.10127, @object
	.size	__PRETTY_FUNCTION__.10127, 17
__PRETTY_FUNCTION__.10127:
	.string	"remove_reference"
	.type	__PRETTY_FUNCTION__.10023, @object
	.size	__PRETTY_FUNCTION__.10023, 14
__PRETTY_FUNCTION__.10023:
	.string	"add_reference"
	.type	__PRETTY_FUNCTION__.10004, @object
	.size	__PRETTY_FUNCTION__.10004, 15
__PRETTY_FUNCTION__.10004:
	.string	"arc_buf_freeze"
	.type	__PRETTY_FUNCTION__.9820, @object
	.size	__PRETTY_FUNCTION__.9820, 9
__PRETTY_FUNCTION__.9820:
	.string	"buf_init"
	.type	__func__.9800, @object
	.size	__func__.9800, 9
__func__.9800:
	.string	"hdr_recl"
	.align 16
	.type	__PRETTY_FUNCTION__.9713, @object
	.size	__PRETTY_FUNCTION__.9713, 16
__PRETTY_FUNCTION__.9713:
	.string	"buf_hash_remove"
	.align 16
	.type	__PRETTY_FUNCTION__.9636, @object
	.size	__PRETTY_FUNCTION__.9636, 16
__PRETTY_FUNCTION__.9636:
	.string	"buf_hash_insert"
	.type	__PRETTY_FUNCTION__.9574, @object
	.size	__PRETTY_FUNCTION__.9574, 9
__PRETTY_FUNCTION__.9574:
	.string	"buf_hash"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB0-.Ltext0
	.quad	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0-.Ltext0
	.quad	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST1:
	.quad	.LFB4-.Ltext0
	.quad	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI2-.Ltext0
	.quad	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI3-.Ltext0
	.quad	.LFE4-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST2:
	.quad	.LFB5-.Ltext0
	.quad	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI4-.Ltext0
	.quad	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI5-.Ltext0
	.quad	.LFE5-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST3:
	.quad	.LFB6-.Ltext0
	.quad	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI6-.Ltext0
	.quad	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI7-.Ltext0
	.quad	.LFE6-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST4:
	.quad	.LFB7-.Ltext0
	.quad	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI8-.Ltext0
	.quad	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI9-.Ltext0
	.quad	.LFE7-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST5:
	.quad	.LFB8-.Ltext0
	.quad	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI10-.Ltext0
	.quad	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI11-.Ltext0
	.quad	.LFE8-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST6:
	.quad	.LFB9-.Ltext0
	.quad	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI12-.Ltext0
	.quad	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI13-.Ltext0
	.quad	.LFE9-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST7:
	.quad	.LFB10-.Ltext0
	.quad	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI14-.Ltext0
	.quad	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI15-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST8:
	.quad	.LFB11-.Ltext0
	.quad	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI16-.Ltext0
	.quad	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI17-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST9:
	.quad	.LFB12-.Ltext0
	.quad	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI18-.Ltext0
	.quad	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI19-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST10:
	.quad	.LFB13-.Ltext0
	.quad	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI20-.Ltext0
	.quad	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI21-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST11:
	.quad	.LFB14-.Ltext0
	.quad	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI22-.Ltext0
	.quad	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI23-.Ltext0
	.quad	.LFE14-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST12:
	.quad	.LFB15-.Ltext0
	.quad	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI24-.Ltext0
	.quad	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI25-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST13:
	.quad	.LFB16-.Ltext0
	.quad	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI26-.Ltext0
	.quad	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI27-.Ltext0
	.quad	.LFE16-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST14:
	.quad	.LFB17-.Ltext0
	.quad	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI28-.Ltext0
	.quad	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI29-.Ltext0
	.quad	.LFE17-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST15:
	.quad	.LFB18-.Ltext0
	.quad	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI30-.Ltext0
	.quad	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI31-.Ltext0
	.quad	.LFE18-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST16:
	.quad	.LFB19-.Ltext0
	.quad	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI32-.Ltext0
	.quad	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI33-.Ltext0
	.quad	.LFE19-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST17:
	.quad	.LFB20-.Ltext0
	.quad	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI34-.Ltext0
	.quad	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI35-.Ltext0
	.quad	.LFE20-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST18:
	.quad	.LFB21-.Ltext0
	.quad	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI36-.Ltext0
	.quad	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI37-.Ltext0
	.quad	.LFE21-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST19:
	.quad	.LFB22-.Ltext0
	.quad	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI38-.Ltext0
	.quad	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI39-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST20:
	.quad	.LFB23-.Ltext0
	.quad	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI40-.Ltext0
	.quad	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI41-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST21:
	.quad	.LFB24-.Ltext0
	.quad	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI42-.Ltext0
	.quad	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI43-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST22:
	.quad	.LFB25-.Ltext0
	.quad	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI44-.Ltext0
	.quad	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI45-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST23:
	.quad	.LFB26-.Ltext0
	.quad	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI46-.Ltext0
	.quad	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI47-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST24:
	.quad	.LFB27-.Ltext0
	.quad	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI48-.Ltext0
	.quad	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI49-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST25:
	.quad	.LFB28-.Ltext0
	.quad	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI50-.Ltext0
	.quad	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI51-.Ltext0
	.quad	.LFE28-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST26:
	.quad	.LFB29-.Ltext0
	.quad	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI52-.Ltext0
	.quad	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI53-.Ltext0
	.quad	.LFE29-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST27:
	.quad	.LFB30-.Ltext0
	.quad	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI54-.Ltext0
	.quad	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI55-.Ltext0
	.quad	.LFE30-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST28:
	.quad	.LFB31-.Ltext0
	.quad	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI56-.Ltext0
	.quad	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI57-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST29:
	.quad	.LFB32-.Ltext0
	.quad	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI58-.Ltext0
	.quad	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI59-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST30:
	.quad	.LFB33-.Ltext0
	.quad	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI60-.Ltext0
	.quad	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI61-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST31:
	.quad	.LFB34-.Ltext0
	.quad	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI62-.Ltext0
	.quad	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI63-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST32:
	.quad	.LFB35-.Ltext0
	.quad	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI64-.Ltext0
	.quad	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI65-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST33:
	.quad	.LFB36-.Ltext0
	.quad	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI66-.Ltext0
	.quad	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI67-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST34:
	.quad	.LFB37-.Ltext0
	.quad	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI68-.Ltext0
	.quad	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI69-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST35:
	.quad	.LFB38-.Ltext0
	.quad	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI70-.Ltext0
	.quad	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI71-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST36:
	.quad	.LFB39-.Ltext0
	.quad	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI72-.Ltext0
	.quad	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI73-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST37:
	.quad	.LFB40-.Ltext0
	.quad	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI74-.Ltext0
	.quad	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI75-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST38:
	.quad	.LFB41-.Ltext0
	.quad	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI76-.Ltext0
	.quad	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI77-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST39:
	.quad	.LFB42-.Ltext0
	.quad	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI78-.Ltext0
	.quad	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI79-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST40:
	.quad	.LFB43-.Ltext0
	.quad	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI80-.Ltext0
	.quad	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI81-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST41:
	.quad	.LFB44-.Ltext0
	.quad	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI82-.Ltext0
	.quad	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI83-.Ltext0
	.quad	.LFE44-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST42:
	.quad	.LFB45-.Ltext0
	.quad	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI84-.Ltext0
	.quad	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI85-.Ltext0
	.quad	.LFE45-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST43:
	.quad	.LFB46-.Ltext0
	.quad	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI86-.Ltext0
	.quad	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI87-.Ltext0
	.quad	.LFE46-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST44:
	.quad	.LFB47-.Ltext0
	.quad	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI88-.Ltext0
	.quad	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI89-.Ltext0
	.quad	.LFE47-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST45:
	.quad	.LFB48-.Ltext0
	.quad	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI90-.Ltext0
	.quad	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI91-.Ltext0
	.quad	.LFE48-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST46:
	.quad	.LFB49-.Ltext0
	.quad	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI92-.Ltext0
	.quad	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI93-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST47:
	.quad	.LFB50-.Ltext0
	.quad	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI94-.Ltext0
	.quad	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI95-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST48:
	.quad	.LFB51-.Ltext0
	.quad	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI96-.Ltext0
	.quad	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI97-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST49:
	.quad	.LFB52-.Ltext0
	.quad	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI98-.Ltext0
	.quad	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI99-.Ltext0
	.quad	.LFE52-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST50:
	.quad	.LFB53-.Ltext0
	.quad	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI100-.Ltext0
	.quad	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI101-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST51:
	.quad	.LFB54-.Ltext0
	.quad	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI102-.Ltext0
	.quad	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI103-.Ltext0
	.quad	.LFE54-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST52:
	.quad	.LFB55-.Ltext0
	.quad	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI104-.Ltext0
	.quad	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI105-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST53:
	.quad	.LFB56-.Ltext0
	.quad	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI106-.Ltext0
	.quad	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI107-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST54:
	.quad	.LFB57-.Ltext0
	.quad	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI108-.Ltext0
	.quad	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI109-.Ltext0
	.quad	.LFE57-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST55:
	.quad	.LFB58-.Ltext0
	.quad	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI110-.Ltext0
	.quad	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI111-.Ltext0
	.quad	.LFE58-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST56:
	.quad	.LFB59-.Ltext0
	.quad	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI112-.Ltext0
	.quad	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI113-.Ltext0
	.quad	.LFE59-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST57:
	.quad	.LFB60-.Ltext0
	.quad	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI114-.Ltext0
	.quad	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI115-.Ltext0
	.quad	.LFE60-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST58:
	.quad	.LFB61-.Ltext0
	.quad	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI116-.Ltext0
	.quad	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI117-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST59:
	.quad	.LFB62-.Ltext0
	.quad	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI118-.Ltext0
	.quad	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI119-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST60:
	.quad	.LFB63-.Ltext0
	.quad	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI120-.Ltext0
	.quad	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI121-.Ltext0
	.quad	.LFE63-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST61:
	.quad	.LFB64-.Ltext0
	.quad	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI122-.Ltext0
	.quad	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI123-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST62:
	.quad	.LFB65-.Ltext0
	.quad	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI124-.Ltext0
	.quad	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI125-.Ltext0
	.quad	.LFE65-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST63:
	.quad	.LFB66-.Ltext0
	.quad	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI126-.Ltext0
	.quad	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI127-.Ltext0
	.quad	.LFE66-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST64:
	.quad	.LFB67-.Ltext0
	.quad	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI128-.Ltext0
	.quad	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI129-.Ltext0
	.quad	.LFE67-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST65:
	.quad	.LFB68-.Ltext0
	.quad	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI130-.Ltext0
	.quad	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI131-.Ltext0
	.quad	.LFE68-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST66:
	.quad	.LFB69-.Ltext0
	.quad	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI132-.Ltext0
	.quad	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI133-.Ltext0
	.quad	.LFE69-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST67:
	.quad	.LFB70-.Ltext0
	.quad	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI134-.Ltext0
	.quad	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI135-.Ltext0
	.quad	.LFE70-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST68:
	.quad	.LFB71-.Ltext0
	.quad	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI136-.Ltext0
	.quad	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI137-.Ltext0
	.quad	.LFE71-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST69:
	.quad	.LFB72-.Ltext0
	.quad	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI138-.Ltext0
	.quad	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI139-.Ltext0
	.quad	.LFE72-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST70:
	.quad	.LFB73-.Ltext0
	.quad	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI140-.Ltext0
	.quad	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI141-.Ltext0
	.quad	.LFE73-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST71:
	.quad	.LFB74-.Ltext0
	.quad	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI142-.Ltext0
	.quad	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI143-.Ltext0
	.quad	.LFE74-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST72:
	.quad	.LFB75-.Ltext0
	.quad	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI144-.Ltext0
	.quad	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI145-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST73:
	.quad	.LFB76-.Ltext0
	.quad	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI146-.Ltext0
	.quad	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI147-.Ltext0
	.quad	.LFE76-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST74:
	.quad	.LFB77-.Ltext0
	.quad	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI148-.Ltext0
	.quad	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI149-.Ltext0
	.quad	.LFE77-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST75:
	.quad	.LFB78-.Ltext0
	.quad	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI150-.Ltext0
	.quad	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI151-.Ltext0
	.quad	.LFE78-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST76:
	.quad	.LFB79-.Ltext0
	.quad	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI152-.Ltext0
	.quad	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI153-.Ltext0
	.quad	.LFE79-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST77:
	.quad	.LFB80-.Ltext0
	.quad	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI154-.Ltext0
	.quad	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI155-.Ltext0
	.quad	.LFE80-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST78:
	.quad	.LFB81-.Ltext0
	.quad	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI156-.Ltext0
	.quad	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI157-.Ltext0
	.quad	.LFE81-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST79:
	.quad	.LFB82-.Ltext0
	.quad	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI158-.Ltext0
	.quad	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI159-.Ltext0
	.quad	.LFE82-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST80:
	.quad	.LFB83-.Ltext0
	.quad	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI160-.Ltext0
	.quad	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI161-.Ltext0
	.quad	.LFE83-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
	.file 3 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/types.h"
	.file 4 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/sys/types.h"
	.file 5 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/time.h"
	.file 6 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/include/stddef.h"
	.file 7 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/pthreadtypes.h"
	.file 8 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/stdint.h"
	.file 9 "../../lib/libsolkerncompat/include/sys/types32.h"
	.file 10 "../../lib/libsolkerncompat/include/sys/types.h"
	.file 11 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/stdio.h"
	.file 12 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/libio.h"
	.file 13 "../../lib/libavl/include/sys/avl_impl.h"
	.file 14 "../../lib/libavl/include/sys/avl.h"
	.file 15 "../../lib/libsolkerncompat/include/sys/mutex.h"
	.file 16 "../../lib/libsolkerncompat/include/sys/rwlock.h"
	.file 17 "../../lib/libsolkerncompat/include/sys/condvar.h"
	.file 18 "../../lib/libumem/include/umem.h"
	.file 19 "../../lib/libsolkerncompat/include/sys/kmem.h"
	.file 20 "../../lib/libzfscommon/include/sys/list_impl.h"
	.file 21 "../../lib/libzfscommon/include/sys/list.h"
	.file 22 "../../lib/libzfscommon/include/sys/fs/zfs.h"
	.file 23 "../../lib/libzfscommon/include/sys/spa.h"
	.file 24 "../../lib/libzfscommon/include/sys/dmu.h"
	.file 25 "../../lib/libsolkerncompat/include/sys/dkio.h"
	.file 26 "../../lib/libzfscommon/include/sys/zio_impl.h"
	.file 27 "../../lib/libzfscommon/include/sys/zio.h"
	.file 28 "../../lib/libzfscommon/include/sys/zio_checksum.h"
	.file 29 "../../lib/libzfscommon/include/sys/arc.h"
	.file 30 "../../lib/libzfscommon/include/sys/refcount.h"
	.file 31 "../../lib/libsolkerncompat/include/sys/callb.h"
	.file 32 "../../lib/libsolkerncompat/include/sys/kstat.h"
	.file 33 "../../lib/libsolkerncompat/include/sys/param.h"
	.file 34 "../../lib/libsolkerncompat/include/sys/systm.h"
	.file 35 "../../lib/libzfscommon/include/sys/zfs_debug.h"
	.section	.debug_info
	.long	0x596e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF809
	.byte	0x1
	.long	.LASF810
	.long	.LASF811
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x38
	.long	0x5e
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x6c
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x8e
	.long	0x6c
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x91
	.long	0x9b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x95
	.long	0x6c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x99
	.long	0x57
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.long	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x74
	.long	0xad
	.uleb128 0x4
	.long	.LASF17
	.byte	0x5
	.byte	0x3d
	.long	0x90
	.uleb128 0x4
	.long	.LASF18
	.byte	0x6
	.byte	0xd3
	.long	0x3b
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0xc5
	.long	0x57
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0xc6
	.long	0x5e
	.uleb128 0x8
	.long	.LASF23
	.byte	0x10
	.byte	0x5
	.byte	0x7a
	.long	0x127
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x7b
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x7c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x137
	.uleb128 0xb
	.long	0x8d
	.byte	0x37
	.byte	0x0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x8
	.byte	0x7
	.byte	0x3e
	.long	0x160
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x3f
	.long	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x40
	.long	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x137
	.uleb128 0x4
	.long	.LASF27
	.byte	0x7
	.byte	0x41
	.long	0x137
	.uleb128 0x8
	.long	.LASF28
	.byte	0x20
	.byte	0x7
	.byte	0x4f
	.long	0x1e0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x50
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x51
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x52
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x54
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x58
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x5a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x5b
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.byte	0x28
	.byte	0x7
	.byte	0x4d
	.long	0x20a
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.byte	0x65
	.long	0x171
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.byte	0x66
	.long	0x20a
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.byte	0x67
	.long	0x9b
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x21a
	.uleb128 0xb
	.long	0x8d
	.byte	0x27
	.byte	0x0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x7
	.byte	0x68
	.long	0x1e0
	.uleb128 0xe
	.byte	0x30
	.byte	0x7
	.byte	0x76
	.long	0x29e
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x77
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x78
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x79
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x7a
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x7b
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x7c
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x7d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x7e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.byte	0x30
	.byte	0x7
	.byte	0x74
	.long	0x2c8
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.byte	0x7f
	.long	0x225
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.byte	0x80
	.long	0x2c8
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.byte	0x81
	.long	0x5e
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x2d8
	.uleb128 0xb
	.long	0x8d
	.byte	0x2f
	.byte	0x0
	.uleb128 0x4
	.long	.LASF47
	.byte	0x7
	.byte	0x82
	.long	0x29e
	.uleb128 0xe
	.byte	0x2c
	.byte	0x7
	.byte	0x9a
	.long	0x386
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x9b
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x9c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x9d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x9e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF51
	.byte	0x7
	.byte	0x9f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0xa0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0xa1
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0xa2
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF55
	.byte	0x7
	.byte	0xa3
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF56
	.byte	0x7
	.byte	0xa4
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.byte	0x38
	.byte	0x7
	.byte	0x97
	.long	0x3b0
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.byte	0xa8
	.long	0x2e3
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.byte	0xbb
	.long	0x127
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.byte	0xbc
	.long	0x9b
	.byte	0x0
	.uleb128 0x4
	.long	.LASF58
	.byte	0x7
	.byte	0xbd
	.long	0x386
	.uleb128 0xa
	.long	0xc0
	.long	0x3cb
	.uleb128 0xb
	.long	0x8d
	.byte	0x7
	.byte	0x0
	.uleb128 0x4
	.long	.LASF59
	.byte	0x8
	.byte	0x32
	.long	0x2d
	.uleb128 0x4
	.long	.LASF60
	.byte	0x8
	.byte	0x35
	.long	0x3b
	.uleb128 0x4
	.long	.LASF61
	.byte	0x8
	.byte	0x3c
	.long	0x65
	.uleb128 0x4
	.long	.LASF62
	.byte	0x8
	.byte	0x82
	.long	0x3b
	.uleb128 0x4
	.long	.LASF63
	.byte	0x9
	.byte	0x30
	.long	0x3d6
	.uleb128 0xf
	.long	.LASF140
	.byte	0x4
	.byte	0xa
	.byte	0x29
	.long	0x41b
	.uleb128 0x10
	.long	.LASF64
	.sleb128 0
	.uleb128 0x10
	.long	.LASF65
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF66
	.byte	0xa
	.byte	0x29
	.long	0x402
	.uleb128 0x4
	.long	.LASF67
	.byte	0xa
	.byte	0x2b
	.long	0x2d
	.uleb128 0x4
	.long	.LASF68
	.byte	0xa
	.byte	0x2d
	.long	0x3b
	.uleb128 0x4
	.long	.LASF69
	.byte	0xa
	.byte	0x2e
	.long	0x42
	.uleb128 0x4
	.long	.LASF70
	.byte	0xa
	.byte	0x30
	.long	0x5e
	.uleb128 0x4
	.long	.LASF71
	.byte	0xa
	.byte	0x31
	.long	0x65
	.uleb128 0x8
	.long	.LASF72
	.byte	0x98
	.byte	0xb
	.byte	0x2d
	.long	0x61d
	.uleb128 0x11
	.long	.LASF73
	.byte	0xc
	.value	0x110
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF74
	.byte	0xc
	.value	0x115
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF75
	.byte	0xc
	.value	0x116
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF76
	.byte	0xc
	.value	0x117
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF77
	.byte	0xc
	.value	0x118
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF78
	.byte	0xc
	.value	0x119
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.long	.LASF79
	.byte	0xc
	.value	0x11a
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.long	.LASF80
	.byte	0xc
	.value	0x11b
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.long	.LASF81
	.byte	0xc
	.value	0x11c
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.long	.LASF82
	.byte	0xc
	.value	0x11e
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.long	.LASF83
	.byte	0xc
	.value	0x11f
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.long	.LASF84
	.byte	0xc
	.value	0x120
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.long	.LASF85
	.byte	0xc
	.value	0x122
	.long	0x65b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.long	.LASF86
	.byte	0xc
	.value	0x124
	.long	0x661
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.long	.LASF87
	.byte	0xc
	.value	0x126
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.long	.LASF88
	.byte	0xc
	.value	0x12a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.long	.LASF89
	.byte	0xc
	.value	0x12c
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.long	.LASF90
	.byte	0xc
	.value	0x130
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.long	.LASF91
	.byte	0xc
	.value	0x131
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x11
	.long	.LASF92
	.byte	0xc
	.value	0x132
	.long	0x667
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x11
	.long	.LASF93
	.byte	0xc
	.value	0x136
	.long	0x677
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.long	.LASF94
	.byte	0xc
	.value	0x13f
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.long	.LASF55
	.byte	0xc
	.value	0x148
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.long	.LASF56
	.byte	0xc
	.value	0x149
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.long	.LASF95
	.byte	0xc
	.value	0x14a
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.long	.LASF96
	.byte	0xc
	.value	0x14b
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.long	.LASF97
	.byte	0xc
	.value	0x14c
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.long	.LASF98
	.byte	0xc
	.value	0x14e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.long	.LASF99
	.byte	0xc
	.value	0x150
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x12
	.long	.LASF812
	.byte	0xc
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0xc
	.byte	0xba
	.long	0x65b
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0xbb
	.long	0x65b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF102
	.byte	0xc
	.byte	0xbc
	.long	0x661
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF103
	.byte	0xc
	.byte	0xc0
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x624
	.uleb128 0x7
	.byte	0x4
	.long	0x45d
	.uleb128 0xa
	.long	0xc0
	.long	0x677
	.uleb128 0xb
	.long	0x8d
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x61d
	.uleb128 0x13
	.byte	0x1
	.long	0x57
	.long	0x68d
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x57
	.uleb128 0x7
	.byte	0x4
	.long	0x699
	.uleb128 0x13
	.byte	0x1
	.long	0x57
	.long	0x6ae
	.uleb128 0x14
	.long	0x6ae
	.uleb128 0x14
	.long	0x6ae
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x6b4
	.uleb128 0x15
	.uleb128 0x4
	.long	.LASF104
	.byte	0x1
	.byte	0x26
	.long	0x447
	.uleb128 0x8
	.long	.LASF105
	.byte	0x10
	.byte	0xd
	.byte	0x3d
	.long	0x705
	.uleb128 0x9
	.long	.LASF106
	.byte	0xd
	.byte	0x3e
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF107
	.byte	0xd
	.byte	0x3f
	.long	0x715
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF108
	.byte	0xd
	.byte	0x40
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF109
	.byte	0xd
	.byte	0x41
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xa
	.long	0x715
	.long	0x715
	.uleb128 0xb
	.long	0x8d
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x6c0
	.uleb128 0x8
	.long	.LASF110
	.byte	0x14
	.byte	0xd
	.byte	0x92
	.long	0x76e
	.uleb128 0x9
	.long	.LASF111
	.byte	0xd
	.byte	0x93
	.long	0x715
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF112
	.byte	0xd
	.byte	0x94
	.long	0x693
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF113
	.byte	0xd
	.byte	0x95
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF114
	.byte	0xd
	.byte	0x96
	.long	0x43c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF115
	.byte	0xd
	.byte	0x97
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF116
	.byte	0xe
	.byte	0x6e
	.long	0x71b
	.uleb128 0x4
	.long	.LASF117
	.byte	0xe
	.byte	0x73
	.long	0x6c0
	.uleb128 0x8
	.long	.LASF118
	.byte	0x2c
	.byte	0xf
	.byte	0x20
	.long	0x7ad
	.uleb128 0x9
	.long	.LASF119
	.byte	0xf
	.byte	0x21
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF120
	.byte	0xf
	.byte	0x22
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF121
	.byte	0xf
	.byte	0x23
	.long	0x784
	.uleb128 0x8
	.long	.LASF122
	.byte	0x6c
	.byte	0x10
	.byte	0x21
	.long	0x7fd
	.uleb128 0x9
	.long	.LASF123
	.byte	0x10
	.byte	0x22
	.long	0x7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x10
	.byte	0x23
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF125
	.byte	0x10
	.byte	0x24
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF126
	.byte	0x10
	.byte	0x25
	.long	0x3b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x4
	.long	.LASF127
	.byte	0x10
	.byte	0x26
	.long	0x7b8
	.uleb128 0x4
	.long	.LASF128
	.byte	0x11
	.byte	0x26
	.long	0x2d8
	.uleb128 0x4
	.long	.LASF129
	.byte	0x12
	.byte	0x3f
	.long	0x81e
	.uleb128 0x16
	.long	.LASF150
	.byte	0x1
	.uleb128 0x4
	.long	.LASF130
	.byte	0x13
	.byte	0x2d
	.long	0x813
	.uleb128 0x7
	.byte	0x4
	.long	0x3d6
	.uleb128 0x8
	.long	.LASF131
	.byte	0x8
	.byte	0x14
	.byte	0x26
	.long	0x85e
	.uleb128 0x9
	.long	.LASF132
	.byte	0x14
	.byte	0x27
	.long	0x85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x14
	.byte	0x28
	.long	0x85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x835
	.uleb128 0x8
	.long	.LASF134
	.byte	0x10
	.byte	0x14
	.byte	0x2b
	.long	0x89b
	.uleb128 0x9
	.long	.LASF135
	.byte	0x14
	.byte	0x2c
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF136
	.byte	0x14
	.byte	0x2d
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF137
	.byte	0x14
	.byte	0x2e
	.long	0x835
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	.LASF138
	.byte	0x15
	.byte	0x25
	.long	0x835
	.uleb128 0x4
	.long	.LASF139
	.byte	0x15
	.byte	0x26
	.long	0x864
	.uleb128 0x17
	.long	.LASF141
	.byte	0x4
	.byte	0x16
	.value	0x1c3
	.long	0x8e9
	.uleb128 0x10
	.long	.LASF142
	.sleb128 0
	.uleb128 0x10
	.long	.LASF143
	.sleb128 1
	.uleb128 0x10
	.long	.LASF144
	.sleb128 2
	.uleb128 0x10
	.long	.LASF145
	.sleb128 3
	.uleb128 0x10
	.long	.LASF146
	.sleb128 4
	.uleb128 0x10
	.long	.LASF147
	.sleb128 5
	.uleb128 0x10
	.long	.LASF148
	.sleb128 6
	.byte	0x0
	.uleb128 0x4
	.long	.LASF149
	.byte	0x17
	.byte	0x2d
	.long	0x8f4
	.uleb128 0x18
	.string	"spa"
	.byte	0x1
	.uleb128 0x4
	.long	.LASF151
	.byte	0x17
	.byte	0x2e
	.long	0x905
	.uleb128 0x16
	.long	.LASF152
	.byte	0x1
	.uleb128 0x19
	.string	"dva"
	.byte	0x10
	.byte	0x17
	.byte	0x6a
	.long	0x926
	.uleb128 0x9
	.long	.LASF153
	.byte	0x17
	.byte	0x6b
	.long	0x926
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3e1
	.long	0x936
	.uleb128 0xb
	.long	0x8d
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF154
	.byte	0x17
	.byte	0x6c
	.long	0x90b
	.uleb128 0x8
	.long	.LASF155
	.byte	0x20
	.byte	0x17
	.byte	0x71
	.long	0x95c
	.uleb128 0x9
	.long	.LASF156
	.byte	0x17
	.byte	0x72
	.long	0x95c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3e1
	.long	0x96c
	.uleb128 0xb
	.long	0x8d
	.byte	0x3
	.byte	0x0
	.uleb128 0x4
	.long	.LASF157
	.byte	0x17
	.byte	0x73
	.long	0x941
	.uleb128 0x8
	.long	.LASF158
	.byte	0x80
	.byte	0x17
	.byte	0xae
	.long	0x9d8
	.uleb128 0x9
	.long	.LASF159
	.byte	0x17
	.byte	0xaf
	.long	0x9d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF160
	.byte	0x17
	.byte	0xb0
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF161
	.byte	0x17
	.byte	0xb1
	.long	0x9e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF162
	.byte	0x17
	.byte	0xb2
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF163
	.byte	0x17
	.byte	0xb3
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF164
	.byte	0x17
	.byte	0xb4
	.long	0x96c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0xa
	.long	0x936
	.long	0x9e8
	.uleb128 0xb
	.long	0x8d
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.long	0x3e1
	.long	0x9f8
	.uleb128 0xb
	.long	0x8d
	.byte	0x2
	.byte	0x0
	.uleb128 0x4
	.long	.LASF165
	.byte	0x17
	.byte	0xb5
	.long	0x977
	.uleb128 0xf
	.long	.LASF166
	.byte	0x4
	.byte	0x18
	.byte	0x46
	.long	0xb00
	.uleb128 0x10
	.long	.LASF167
	.sleb128 0
	.uleb128 0x10
	.long	.LASF168
	.sleb128 1
	.uleb128 0x10
	.long	.LASF169
	.sleb128 2
	.uleb128 0x10
	.long	.LASF170
	.sleb128 3
	.uleb128 0x10
	.long	.LASF171
	.sleb128 4
	.uleb128 0x10
	.long	.LASF172
	.sleb128 5
	.uleb128 0x10
	.long	.LASF173
	.sleb128 6
	.uleb128 0x10
	.long	.LASF174
	.sleb128 7
	.uleb128 0x10
	.long	.LASF175
	.sleb128 8
	.uleb128 0x10
	.long	.LASF176
	.sleb128 9
	.uleb128 0x10
	.long	.LASF177
	.sleb128 10
	.uleb128 0x10
	.long	.LASF178
	.sleb128 11
	.uleb128 0x10
	.long	.LASF179
	.sleb128 12
	.uleb128 0x10
	.long	.LASF180
	.sleb128 13
	.uleb128 0x10
	.long	.LASF181
	.sleb128 14
	.uleb128 0x10
	.long	.LASF182
	.sleb128 15
	.uleb128 0x10
	.long	.LASF183
	.sleb128 16
	.uleb128 0x10
	.long	.LASF184
	.sleb128 17
	.uleb128 0x10
	.long	.LASF185
	.sleb128 18
	.uleb128 0x10
	.long	.LASF186
	.sleb128 19
	.uleb128 0x10
	.long	.LASF187
	.sleb128 20
	.uleb128 0x10
	.long	.LASF188
	.sleb128 21
	.uleb128 0x10
	.long	.LASF189
	.sleb128 22
	.uleb128 0x10
	.long	.LASF190
	.sleb128 23
	.uleb128 0x10
	.long	.LASF191
	.sleb128 24
	.uleb128 0x10
	.long	.LASF192
	.sleb128 25
	.uleb128 0x10
	.long	.LASF193
	.sleb128 26
	.uleb128 0x10
	.long	.LASF194
	.sleb128 27
	.uleb128 0x10
	.long	.LASF195
	.sleb128 28
	.uleb128 0x10
	.long	.LASF196
	.sleb128 29
	.uleb128 0x10
	.long	.LASF197
	.sleb128 30
	.uleb128 0x10
	.long	.LASF198
	.sleb128 31
	.uleb128 0x10
	.long	.LASF199
	.sleb128 32
	.uleb128 0x10
	.long	.LASF200
	.sleb128 33
	.uleb128 0x10
	.long	.LASF201
	.sleb128 34
	.uleb128 0x10
	.long	.LASF202
	.sleb128 35
	.uleb128 0x10
	.long	.LASF203
	.sleb128 36
	.uleb128 0x10
	.long	.LASF204
	.sleb128 37
	.uleb128 0x10
	.long	.LASF205
	.sleb128 38
	.uleb128 0x10
	.long	.LASF206
	.sleb128 39
	.byte	0x0
	.uleb128 0x4
	.long	.LASF207
	.byte	0x18
	.byte	0x78
	.long	0xa03
	.uleb128 0x1a
	.long	.LASF208
	.byte	0x18
	.value	0x1e4
	.long	0xb17
	.uleb128 0x1b
	.byte	0x1
	.long	0xb28
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0xdd
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF209
	.byte	0xc
	.byte	0x18
	.value	0x1e6
	.long	0xb63
	.uleb128 0x11
	.long	.LASF210
	.byte	0x18
	.value	0x1e7
	.long	0xb63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF211
	.byte	0x18
	.value	0x1e8
	.long	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF212
	.byte	0x18
	.value	0x1e9
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xb0b
	.uleb128 0x1a
	.long	.LASF213
	.byte	0x18
	.value	0x1ea
	.long	0xb28
	.uleb128 0xa
	.long	0xc0
	.long	0xb85
	.uleb128 0xb
	.long	0x8d
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0xb95
	.uleb128 0xb
	.long	0x8d
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	.LASF214
	.byte	0xc
	.byte	0x19
	.byte	0xbf
	.long	0xbcc
	.uleb128 0x9
	.long	.LASF215
	.byte	0x19
	.byte	0xc0
	.long	0xbdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF216
	.byte	0x19
	.byte	0xc1
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF217
	.byte	0x19
	.byte	0xc2
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	0xbdd
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xbcc
	.uleb128 0xa
	.long	0xc0
	.long	0xbf3
	.uleb128 0xb
	.long	0x8d
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	.LASF218
	.byte	0x4
	.byte	0x1a
	.byte	0x35
	.long	0xc90
	.uleb128 0x10
	.long	.LASF219
	.sleb128 0
	.uleb128 0x10
	.long	.LASF220
	.sleb128 1
	.uleb128 0x10
	.long	.LASF221
	.sleb128 2
	.uleb128 0x10
	.long	.LASF222
	.sleb128 3
	.uleb128 0x10
	.long	.LASF223
	.sleb128 4
	.uleb128 0x10
	.long	.LASF224
	.sleb128 5
	.uleb128 0x10
	.long	.LASF225
	.sleb128 6
	.uleb128 0x10
	.long	.LASF226
	.sleb128 7
	.uleb128 0x10
	.long	.LASF227
	.sleb128 8
	.uleb128 0x10
	.long	.LASF228
	.sleb128 9
	.uleb128 0x10
	.long	.LASF229
	.sleb128 10
	.uleb128 0x10
	.long	.LASF230
	.sleb128 11
	.uleb128 0x10
	.long	.LASF231
	.sleb128 12
	.uleb128 0x10
	.long	.LASF232
	.sleb128 13
	.uleb128 0x10
	.long	.LASF233
	.sleb128 14
	.uleb128 0x10
	.long	.LASF234
	.sleb128 15
	.uleb128 0x10
	.long	.LASF235
	.sleb128 16
	.uleb128 0x10
	.long	.LASF236
	.sleb128 17
	.uleb128 0x10
	.long	.LASF237
	.sleb128 18
	.uleb128 0x10
	.long	.LASF238
	.sleb128 19
	.uleb128 0x10
	.long	.LASF239
	.sleb128 20
	.uleb128 0x10
	.long	.LASF240
	.sleb128 21
	.uleb128 0x10
	.long	.LASF241
	.sleb128 22
	.uleb128 0x10
	.long	.LASF242
	.sleb128 23
	.byte	0x0
	.uleb128 0x4
	.long	.LASF243
	.byte	0x1a
	.byte	0xaf
	.long	0xc9b
	.uleb128 0x8
	.long	.LASF244
	.byte	0x20
	.byte	0x1a
	.byte	0xaf
	.long	0xce0
	.uleb128 0x9
	.long	.LASF245
	.byte	0x1a
	.byte	0xb1
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF246
	.byte	0x1a
	.byte	0xb2
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF247
	.byte	0x1a
	.byte	0xb3
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF248
	.byte	0x1a
	.byte	0xb4
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xc90
	.uleb128 0xf
	.long	.LASF249
	.byte	0x4
	.byte	0x1b
	.byte	0x49
	.long	0xd2f
	.uleb128 0x10
	.long	.LASF250
	.sleb128 0
	.uleb128 0x10
	.long	.LASF251
	.sleb128 1
	.uleb128 0x10
	.long	.LASF252
	.sleb128 2
	.uleb128 0x10
	.long	.LASF253
	.sleb128 3
	.uleb128 0x10
	.long	.LASF254
	.sleb128 4
	.uleb128 0x10
	.long	.LASF255
	.sleb128 5
	.uleb128 0x10
	.long	.LASF256
	.sleb128 6
	.uleb128 0x10
	.long	.LASF257
	.sleb128 7
	.uleb128 0x10
	.long	.LASF258
	.sleb128 8
	.uleb128 0x10
	.long	.LASF259
	.sleb128 9
	.byte	0x0
	.uleb128 0xf
	.long	.LASF260
	.byte	0x4
	.byte	0x1b
	.byte	0x59
	.long	0xd96
	.uleb128 0x10
	.long	.LASF261
	.sleb128 0
	.uleb128 0x10
	.long	.LASF262
	.sleb128 1
	.uleb128 0x10
	.long	.LASF263
	.sleb128 2
	.uleb128 0x10
	.long	.LASF264
	.sleb128 3
	.uleb128 0x10
	.long	.LASF265
	.sleb128 4
	.uleb128 0x10
	.long	.LASF266
	.sleb128 5
	.uleb128 0x10
	.long	.LASF267
	.sleb128 6
	.uleb128 0x10
	.long	.LASF268
	.sleb128 7
	.uleb128 0x10
	.long	.LASF269
	.sleb128 8
	.uleb128 0x10
	.long	.LASF270
	.sleb128 9
	.uleb128 0x10
	.long	.LASF271
	.sleb128 10
	.uleb128 0x10
	.long	.LASF272
	.sleb128 11
	.uleb128 0x10
	.long	.LASF273
	.sleb128 12
	.uleb128 0x10
	.long	.LASF274
	.sleb128 13
	.uleb128 0x10
	.long	.LASF275
	.sleb128 14
	.byte	0x0
	.uleb128 0x4
	.long	.LASF276
	.byte	0x1b
	.byte	0xbb
	.long	0xda1
	.uleb128 0x1d
	.string	"zio"
	.value	0x298
	.byte	0x18
	.byte	0x35
	.long	0x10e9
	.uleb128 0x9
	.long	.LASF277
	.byte	0x1b
	.byte	0xde
	.long	0x1100
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF278
	.byte	0x1b
	.byte	0xdf
	.long	0x1100
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF279
	.byte	0x1b
	.byte	0xe0
	.long	0x1156
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF280
	.byte	0x1b
	.byte	0xe1
	.long	0x114b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF281
	.byte	0x1b
	.byte	0xe2
	.long	0xce6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF282
	.byte	0x1b
	.byte	0xe3
	.long	0xd2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF283
	.byte	0x1b
	.byte	0xe4
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF284
	.byte	0x1b
	.byte	0xe5
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF285
	.byte	0x1b
	.byte	0xe6
	.long	0x115c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF286
	.byte	0x1b
	.byte	0xe7
	.long	0x9f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF287
	.byte	0x1b
	.byte	0xe8
	.long	0x1100
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF288
	.byte	0x1b
	.byte	0xe9
	.long	0x1100
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.long	.LASF289
	.byte	0x1b
	.byte	0xea
	.long	0x1100
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF290
	.byte	0x1b
	.byte	0xeb
	.long	0xce0
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.long	.LASF291
	.byte	0x1b
	.byte	0xec
	.long	0x1100
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF292
	.byte	0x1b
	.byte	0xed
	.long	0x89b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.long	.LASF293
	.byte	0x1b
	.byte	0xf0
	.long	0x1162
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.long	.LASF294
	.byte	0x1b
	.byte	0xf1
	.long	0x1162
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF295
	.byte	0x1b
	.byte	0xf2
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.long	.LASF296
	.byte	0x1b
	.byte	0xf3
	.long	0x9f8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF297
	.byte	0x1b
	.byte	0xf6
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x9
	.long	.LASF298
	.byte	0x1b
	.byte	0xf7
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF299
	.byte	0x1b
	.byte	0xfa
	.long	0x1168
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF300
	.byte	0x1b
	.byte	0xfb
	.long	0x116e
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x9
	.long	.LASF301
	.byte	0x1b
	.byte	0xfc
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x9
	.long	.LASF302
	.byte	0x1b
	.byte	0xfd
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x9
	.long	.LASF303
	.byte	0x1b
	.byte	0xfe
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x9
	.long	.LASF304
	.byte	0x1b
	.byte	0xff
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x11
	.long	.LASF305
	.byte	0x1b
	.value	0x100
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x11
	.long	.LASF306
	.byte	0x1b
	.value	0x101
	.long	0x779
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x11
	.long	.LASF307
	.byte	0x1b
	.value	0x102
	.long	0x779
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x11
	.long	.LASF308
	.byte	0x1b
	.value	0x103
	.long	0x1174
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0x11
	.long	.LASF309
	.byte	0x1b
	.value	0x104
	.long	0x1100
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x11
	.long	.LASF310
	.byte	0x1b
	.value	0x105
	.long	0x1100
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x11
	.long	.LASF311
	.byte	0x1b
	.value	0x108
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x11
	.long	.LASF312
	.byte	0x1b
	.value	0x109
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x11
	.long	.LASF313
	.byte	0x1b
	.value	0x10a
	.long	0x8b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x11
	.long	.LASF314
	.byte	0x1b
	.value	0x10b
	.long	0xbf3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.long	.LASF315
	.byte	0x1b
	.value	0x10c
	.long	0xbf3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x11
	.long	.LASF316
	.byte	0x1b
	.value	0x10d
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x11
	.long	.LASF317
	.byte	0x1b
	.value	0x10e
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f9
	.uleb128 0x11
	.long	.LASF318
	.byte	0x1b
	.value	0x10f
	.long	0xb95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x11
	.long	.LASF319
	.byte	0x1b
	.value	0x110
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x11
	.long	.LASF320
	.byte	0x1b
	.value	0x111
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x11
	.long	.LASF321
	.byte	0x1b
	.value	0x112
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x11
	.long	.LASF322
	.byte	0x1b
	.value	0x113
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x11
	.long	.LASF323
	.byte	0x1b
	.value	0x114
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x11
	.long	.LASF324
	.byte	0x1b
	.value	0x115
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x11
	.long	.LASF325
	.byte	0x1b
	.value	0x116
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x11
	.long	.LASF326
	.byte	0x1b
	.value	0x117
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x11
	.long	.LASF327
	.byte	0x1b
	.value	0x118
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x11
	.long	.LASF328
	.byte	0x1b
	.value	0x119
	.long	0x7ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x11
	.long	.LASF329
	.byte	0x1b
	.value	0x11a
	.long	0x808
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x11
	.long	.LASF330
	.byte	0x1b
	.value	0x11d
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x290
	.byte	0x0
	.uleb128 0x4
	.long	.LASF331
	.byte	0x1b
	.byte	0xbc
	.long	0x10f4
	.uleb128 0x1b
	.byte	0x1
	.long	0x1100
	.uleb128 0x14
	.long	0x1100
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xd96
	.uleb128 0x8
	.long	.LASF332
	.byte	0x20
	.byte	0x18
	.byte	0x3d
	.long	0x114b
	.uleb128 0x9
	.long	.LASF333
	.byte	0x1b
	.byte	0xd6
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF334
	.byte	0x1b
	.byte	0xd7
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF335
	.byte	0x1b
	.byte	0xd8
	.long	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF336
	.byte	0x1b
	.byte	0xd9
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x4
	.long	.LASF337
	.byte	0x1b
	.byte	0xda
	.long	0x1106
	.uleb128 0x7
	.byte	0x4
	.long	0x8e9
	.uleb128 0x7
	.byte	0x4
	.long	0x9f8
	.uleb128 0x7
	.byte	0x4
	.long	0x10e9
	.uleb128 0x7
	.byte	0x4
	.long	0x8fa
	.uleb128 0x7
	.byte	0x4
	.long	0x1168
	.uleb128 0x7
	.byte	0x4
	.long	0x76e
	.uleb128 0x4
	.long	.LASF338
	.byte	0x1c
	.byte	0x28
	.long	0x1185
	.uleb128 0x1b
	.byte	0x1
	.long	0x119b
	.uleb128 0x14
	.long	0x6ae
	.uleb128 0x14
	.long	0x3e1
	.uleb128 0x14
	.long	0x119b
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x96c
	.uleb128 0x8
	.long	.LASF339
	.byte	0x14
	.byte	0x1c
	.byte	0x2d
	.long	0x11e6
	.uleb128 0x9
	.long	.LASF340
	.byte	0x1c
	.byte	0x2e
	.long	0x11e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF341
	.byte	0x1c
	.byte	0x2f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF342
	.byte	0x1c
	.byte	0x30
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF343
	.byte	0x1c
	.byte	0x31
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x11f6
	.long	0x11f6
	.uleb128 0xb
	.long	0x8d
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x117a
	.uleb128 0x4
	.long	.LASF344
	.byte	0x1c
	.byte	0x32
	.long	0x11a1
	.uleb128 0x4
	.long	.LASF345
	.byte	0x1d
	.byte	0x29
	.long	0x1212
	.uleb128 0x1e
	.long	.LASF346
	.value	0x198
	.byte	0x1d
	.byte	0x29
	.long	0x1365
	.uleb128 0x11
	.long	.LASF347
	.byte	0x2
	.value	0x19f
	.long	0x936
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF348
	.byte	0x2
	.value	0x1a0
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF349
	.byte	0x2
	.value	0x1a1
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.long	.LASF350
	.byte	0x2
	.value	0x1a3
	.long	0x7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.long	.LASF351
	.byte	0x2
	.value	0x1a4
	.long	0x119b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.long	.LASF352
	.byte	0x2
	.value	0x1a6
	.long	0x13f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.long	.LASF353
	.byte	0x2
	.value	0x1a7
	.long	0x13e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.long	.LASF354
	.byte	0x2
	.value	0x1a8
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.long	.LASF355
	.byte	0x2
	.value	0x1a9
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.long	.LASF356
	.byte	0x2
	.value	0x1ab
	.long	0x1be8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.long	.LASF357
	.byte	0x2
	.value	0x1ac
	.long	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.long	.LASF358
	.byte	0x2
	.value	0x1af
	.long	0x1420
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.long	.LASF359
	.byte	0x2
	.value	0x1b0
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.long	.LASF360
	.byte	0x2
	.value	0x1b1
	.long	0x1156
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.long	.LASF361
	.byte	0x2
	.value	0x1b4
	.long	0x1c44
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.long	.LASF362
	.byte	0x2
	.value	0x1b5
	.long	0x89b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.long	.LASF363
	.byte	0x2
	.value	0x1b8
	.long	0xd2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.long	.LASF364
	.byte	0x2
	.value	0x1bb
	.long	0x14fe
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.long	.LASF365
	.byte	0x2
	.value	0x1bd
	.long	0x1c4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x11
	.long	.LASF366
	.byte	0x2
	.value	0x1be
	.long	0x89b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x11
	.long	.LASF367
	.byte	0x2
	.value	0x1c3
	.long	0x7fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.byte	0x0
	.uleb128 0x4
	.long	.LASF368
	.byte	0x1d
	.byte	0x2a
	.long	0x1370
	.uleb128 0x8
	.long	.LASF369
	.byte	0x14
	.byte	0x1d
	.byte	0x2a
	.long	0x13c3
	.uleb128 0x9
	.long	.LASF370
	.byte	0x1d
	.byte	0x33
	.long	0x13f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF371
	.byte	0x1d
	.byte	0x34
	.long	0x13e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF372
	.byte	0x1d
	.byte	0x35
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF373
	.byte	0x1d
	.byte	0x36
	.long	0x13fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF374
	.byte	0x1d
	.byte	0x37
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF375
	.byte	0x1d
	.byte	0x2b
	.long	0x13ce
	.uleb128 0x1b
	.byte	0x1
	.long	0x13e4
	.uleb128 0x14
	.long	0x1100
	.uleb128 0x14
	.long	0x13e4
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1365
	.uleb128 0x4
	.long	.LASF376
	.byte	0x1d
	.byte	0x2c
	.long	0x67d
	.uleb128 0x7
	.byte	0x4
	.long	0x1207
	.uleb128 0x7
	.byte	0x4
	.long	0x13ea
	.uleb128 0xf
	.long	.LASF377
	.byte	0x4
	.byte	0x1d
	.byte	0x3a
	.long	0x1420
	.uleb128 0x10
	.long	.LASF378
	.sleb128 0
	.uleb128 0x10
	.long	.LASF379
	.sleb128 1
	.uleb128 0x10
	.long	.LASF380
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	.LASF381
	.byte	0x1d
	.byte	0x3e
	.long	0x1401
	.uleb128 0x8
	.long	.LASF382
	.byte	0xc
	.byte	0x1d
	.byte	0x58
	.long	0x149a
	.uleb128 0x9
	.long	.LASF383
	.byte	0x1d
	.byte	0x59
	.long	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF384
	.byte	0x1d
	.byte	0x5a
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF385
	.byte	0x1d
	.byte	0x5b
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF386
	.byte	0x1d
	.byte	0x5c
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF387
	.byte	0x1d
	.byte	0x5c
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x9
	.long	.LASF388
	.byte	0x1d
	.byte	0x5d
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF389
	.byte	0x1d
	.byte	0x5d
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x4
	.long	.LASF390
	.byte	0x1d
	.byte	0x5e
	.long	0x142b
	.uleb128 0x7
	.byte	0x4
	.long	0x3cb
	.uleb128 0x8
	.long	.LASF391
	.byte	0x60
	.byte	0x1e
	.byte	0x36
	.long	0x14fe
	.uleb128 0x9
	.long	.LASF392
	.byte	0x1e
	.byte	0x37
	.long	0x7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF393
	.byte	0x1e
	.byte	0x38
	.long	0x8a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF394
	.byte	0x1e
	.byte	0x39
	.long	0x8a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF395
	.byte	0x1e
	.byte	0x3a
	.long	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF396
	.byte	0x1e
	.byte	0x3b
	.long	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x4
	.long	.LASF397
	.byte	0x1e
	.byte	0x3c
	.long	0x14ab
	.uleb128 0x7
	.byte	0x4
	.long	0x7ad
	.uleb128 0x8
	.long	.LASF398
	.byte	0x4
	.byte	0x1f
	.byte	0x1e
	.long	0x152a
	.uleb128 0x9
	.long	.LASF399
	.byte	0x1f
	.byte	0x1f
	.long	0x1509
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.long	.LASF400
	.byte	0x1f
	.byte	0x20
	.long	0x150f
	.uleb128 0x4
	.long	.LASF401
	.byte	0x20
	.byte	0x2a
	.long	0x57
	.uleb128 0x8
	.long	.LASF402
	.byte	0x98
	.byte	0x20
	.byte	0x44
	.long	0x164e
	.uleb128 0x9
	.long	.LASF403
	.byte	0x20
	.byte	0x48
	.long	0x6b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF404
	.byte	0x20
	.byte	0x49
	.long	0x164e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF405
	.byte	0x20
	.byte	0x4a
	.long	0x1535
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF406
	.byte	0x20
	.byte	0x4b
	.long	0x1654
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF407
	.byte	0x20
	.byte	0x4c
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.long	.LASF408
	.byte	0x20
	.byte	0x4d
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF409
	.byte	0x20
	.byte	0x4e
	.long	0x1654
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF410
	.byte	0x20
	.byte	0x4f
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x53
	.uleb128 0x9
	.long	.LASF411
	.byte	0x20
	.byte	0x50
	.long	0x1654
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.long	.LASF412
	.byte	0x20
	.byte	0x51
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x73
	.uleb128 0x9
	.long	.LASF413
	.byte	0x20
	.byte	0x52
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF414
	.byte	0x20
	.byte	0x53
	.long	0x431
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF415
	.byte	0x20
	.byte	0x54
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.long	.LASF416
	.byte	0x20
	.byte	0x55
	.long	0x6b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF417
	.byte	0x20
	.byte	0x59
	.long	0x1679
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF418
	.byte	0x20
	.byte	0x5a
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.long	.LASF419
	.byte	0x20
	.byte	0x5b
	.long	0x1699
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF420
	.byte	0x20
	.byte	0x5c
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1540
	.uleb128 0xa
	.long	0xc0
	.long	0x1664
	.uleb128 0xb
	.long	0x8d
	.byte	0x1e
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.long	0x57
	.long	0x1679
	.uleb128 0x14
	.long	0x164e
	.uleb128 0x14
	.long	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1664
	.uleb128 0x13
	.byte	0x1
	.long	0x57
	.long	0x1699
	.uleb128 0x14
	.long	0x164e
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x167f
	.uleb128 0x4
	.long	.LASF421
	.byte	0x20
	.byte	0x5d
	.long	0x1540
	.uleb128 0x1f
	.byte	0x8
	.byte	0x20
	.value	0x1c3
	.long	0x16d8
	.uleb128 0x20
	.string	"ptr"
	.byte	0x20
	.value	0x1c4
	.long	0xba
	.uleb128 0x21
	.long	.LASF422
	.byte	0x20
	.value	0x1c6
	.long	0x3f7
	.uleb128 0x21
	.long	.LASF423
	.byte	0x20
	.value	0x1c8
	.long	0x3bb
	.byte	0x0
	.uleb128 0x22
	.byte	0xc
	.byte	0x20
	.value	0x1c2
	.long	0x1700
	.uleb128 0x11
	.long	.LASF424
	.byte	0x20
	.value	0x1c9
	.long	0x16aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"len"
	.byte	0x20
	.value	0x1ca
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1f
	.byte	0x10
	.byte	0x20
	.value	0x1be
	.long	0x1790
	.uleb128 0x20
	.string	"c"
	.byte	0x20
	.value	0x1bf
	.long	0xb85
	.uleb128 0x20
	.string	"i32"
	.byte	0x20
	.value	0x1c0
	.long	0xe8
	.uleb128 0x21
	.long	.LASF425
	.byte	0x20
	.value	0x1c1
	.long	0x3d6
	.uleb128 0x20
	.string	"str"
	.byte	0x20
	.value	0x1cb
	.long	0x16d8
	.uleb128 0x20
	.string	"i64"
	.byte	0x20
	.value	0x1d7
	.long	0xf3
	.uleb128 0x21
	.long	.LASF426
	.byte	0x20
	.value	0x1d8
	.long	0x3e1
	.uleb128 0x20
	.string	"l"
	.byte	0x20
	.value	0x1da
	.long	0x9b
	.uleb128 0x20
	.string	"ul"
	.byte	0x20
	.value	0x1db
	.long	0x43c
	.uleb128 0x20
	.string	"ll"
	.byte	0x20
	.value	0x1df
	.long	0x447
	.uleb128 0x20
	.string	"ull"
	.byte	0x20
	.value	0x1e0
	.long	0x452
	.uleb128 0x20
	.string	"f"
	.byte	0x20
	.value	0x1e1
	.long	0x1790
	.uleb128 0x20
	.string	"d"
	.byte	0x20
	.value	0x1e2
	.long	0x1797
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF427
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF428
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x30
	.byte	0x20
	.value	0x1bb
	.long	0x17d9
	.uleb128 0x11
	.long	.LASF430
	.byte	0x20
	.value	0x1bc
	.long	0x1654
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF431
	.byte	0x20
	.value	0x1bd
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x11
	.long	.LASF432
	.byte	0x20
	.value	0x1e3
	.long	0x1700
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF433
	.byte	0x20
	.value	0x1e4
	.long	0x179e
	.uleb128 0xf
	.long	.LASF434
	.byte	0x4
	.byte	0x2
	.byte	0x98
	.long	0x17fe
	.uleb128 0x10
	.long	.LASF435
	.sleb128 0
	.uleb128 0x10
	.long	.LASF436
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF437
	.byte	0x2
	.byte	0x9b
	.long	0x17e5
	.uleb128 0x8
	.long	.LASF438
	.byte	0x68
	.byte	0x2
	.byte	0xd5
	.long	0x184e
	.uleb128 0x9
	.long	.LASF439
	.byte	0x2
	.byte	0xd6
	.long	0x184e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF440
	.byte	0x2
	.byte	0xd7
	.long	0x926
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF441
	.byte	0x2
	.byte	0xd8
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF442
	.byte	0x2
	.byte	0xd9
	.long	0x7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xa
	.long	0x8a6
	.long	0x185e
	.uleb128 0xb
	.long	0x8d
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF443
	.byte	0x2
	.byte	0xda
	.long	0x1809
	.uleb128 0x1e
	.long	.LASF444
	.value	0x8a0
	.byte	0x2
	.byte	0xe4
	.long	0x1b39
	.uleb128 0x9
	.long	.LASF445
	.byte	0x2
	.byte	0xe5
	.long	0x17d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF446
	.byte	0x2
	.byte	0xe6
	.long	0x17d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF447
	.byte	0x2
	.byte	0xe7
	.long	0x17d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF448
	.byte	0x2
	.byte	0xe8
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF449
	.byte	0x2
	.byte	0xe9
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF450
	.byte	0x2
	.byte	0xea
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF451
	.byte	0x2
	.byte	0xeb
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.long	.LASF452
	.byte	0x2
	.byte	0xec
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.long	.LASF453
	.byte	0x2
	.byte	0xed
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF454
	.byte	0x2
	.byte	0xee
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x9
	.long	.LASF455
	.byte	0x2
	.byte	0xef
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.long	.LASF456
	.byte	0x2
	.byte	0xf0
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.long	.LASF457
	.byte	0x2
	.byte	0xf1
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.long	.LASF458
	.byte	0x2
	.byte	0xf2
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.uleb128 0x9
	.long	.LASF459
	.byte	0x2
	.byte	0xf3
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a0
	.uleb128 0x9
	.long	.LASF460
	.byte	0x2
	.byte	0xf4
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0x9
	.long	.LASF461
	.byte	0x2
	.byte	0xf5
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x9
	.long	.LASF462
	.byte	0x2
	.byte	0xf6
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x330
	.uleb128 0x9
	.long	.LASF463
	.byte	0x2
	.byte	0xf7
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x360
	.uleb128 0x9
	.long	.LASF464
	.byte	0x2
	.byte	0xf8
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0x9
	.long	.LASF465
	.byte	0x2
	.byte	0xf9
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x9
	.long	.LASF466
	.byte	0x2
	.byte	0xfa
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0x9
	.long	.LASF467
	.byte	0x2
	.byte	0xfb
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x420
	.uleb128 0x9
	.long	.LASF468
	.byte	0x2
	.byte	0xfc
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x450
	.uleb128 0x9
	.long	.LASF469
	.byte	0x2
	.byte	0xfd
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x480
	.uleb128 0x9
	.long	.LASF470
	.byte	0x2
	.byte	0xfe
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0x9
	.long	.LASF471
	.byte	0x2
	.byte	0xff
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0x11
	.long	.LASF472
	.byte	0x2
	.value	0x100
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x510
	.uleb128 0x11
	.long	.LASF473
	.byte	0x2
	.value	0x101
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x540
	.uleb128 0x11
	.long	.LASF474
	.byte	0x2
	.value	0x102
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x570
	.uleb128 0x11
	.long	.LASF475
	.byte	0x2
	.value	0x103
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x5a0
	.uleb128 0x11
	.long	.LASF476
	.byte	0x2
	.value	0x104
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x5d0
	.uleb128 0x11
	.long	.LASF477
	.byte	0x2
	.value	0x105
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x600
	.uleb128 0x11
	.long	.LASF478
	.byte	0x2
	.value	0x106
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x630
	.uleb128 0x11
	.long	.LASF479
	.byte	0x2
	.value	0x107
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x660
	.uleb128 0x11
	.long	.LASF480
	.byte	0x2
	.value	0x108
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x690
	.uleb128 0x11
	.long	.LASF481
	.byte	0x2
	.value	0x109
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c0
	.uleb128 0x11
	.long	.LASF482
	.byte	0x2
	.value	0x10a
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f0
	.uleb128 0x11
	.long	.LASF483
	.byte	0x2
	.value	0x10b
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x720
	.uleb128 0x11
	.long	.LASF484
	.byte	0x2
	.value	0x10c
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x750
	.uleb128 0x11
	.long	.LASF485
	.byte	0x2
	.value	0x10d
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x780
	.uleb128 0x11
	.long	.LASF486
	.byte	0x2
	.value	0x10e
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x7b0
	.uleb128 0x11
	.long	.LASF487
	.byte	0x2
	.value	0x10f
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x7e0
	.uleb128 0x11
	.long	.LASF488
	.byte	0x2
	.value	0x110
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x810
	.uleb128 0x11
	.long	.LASF489
	.byte	0x2
	.value	0x111
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.long	.LASF490
	.byte	0x2
	.value	0x112
	.long	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x870
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF491
	.byte	0x2
	.value	0x113
	.long	0x1869
	.uleb128 0x1a
	.long	.LASF492
	.byte	0x2
	.value	0x188
	.long	0x1b51
	.uleb128 0x1c
	.long	.LASF493
	.byte	0x8
	.byte	0x2
	.value	0x188
	.long	0x1b7d
	.uleb128 0x11
	.long	.LASF494
	.byte	0x2
	.value	0x257
	.long	0x1e42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF495
	.byte	0x2
	.value	0x258
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF496
	.byte	0x2
	.value	0x18a
	.long	0x1b89
	.uleb128 0x1c
	.long	.LASF497
	.byte	0x14
	.byte	0x2
	.value	0x18a
	.long	0x1be2
	.uleb128 0x11
	.long	.LASF498
	.byte	0x2
	.value	0x18d
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF499
	.byte	0x2
	.value	0x18e
	.long	0x1be2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF500
	.byte	0x2
	.value	0x18f
	.long	0x13e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF501
	.byte	0x2
	.value	0x190
	.long	0x1100
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.long	.LASF502
	.byte	0x2
	.value	0x191
	.long	0x1be8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x13c3
	.uleb128 0x7
	.byte	0x4
	.long	0x1b7d
	.uleb128 0x1a
	.long	.LASF503
	.byte	0x2
	.value	0x194
	.long	0x1bfa
	.uleb128 0x1c
	.long	.LASF504
	.byte	0x10
	.byte	0x2
	.value	0x194
	.long	0x1c44
	.uleb128 0x11
	.long	.LASF505
	.byte	0x2
	.value	0x197
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF506
	.byte	0x2
	.value	0x198
	.long	0x1be2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF507
	.byte	0x2
	.value	0x199
	.long	0x1be2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF508
	.byte	0x2
	.value	0x19a
	.long	0x13e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x185e
	.uleb128 0x7
	.byte	0x4
	.long	0x1b45
	.uleb128 0x1c
	.long	.LASF509
	.byte	0x40
	.byte	0x2
	.value	0x200
	.long	0x1c7c
	.uleb128 0x11
	.long	.LASF509
	.byte	0x2
	.value	0x201
	.long	0x7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"pad"
	.byte	0x2
	.value	0x203
	.long	0x1c7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0xa
	.long	0x2d
	.long	0x1c8c
	.uleb128 0xb
	.long	0x8d
	.byte	0x13
	.byte	0x0
	.uleb128 0x24
	.long	.LASF510
	.value	0x4010
	.byte	0x2
	.value	0x208
	.long	0x1cc8
	.uleb128 0x11
	.long	.LASF511
	.byte	0x2
	.value	0x209
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF512
	.byte	0x2
	.value	0x20a
	.long	0x1cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF513
	.byte	0x2
	.value	0x20b
	.long	0x1cce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x13f5
	.uleb128 0xa
	.long	0x1c50
	.long	0x1cde
	.uleb128 0xb
	.long	0x8d
	.byte	0xff
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF514
	.byte	0x2
	.value	0x20c
	.long	0x1c8c
	.uleb128 0x1c
	.long	.LASF515
	.byte	0x48
	.byte	0x2
	.value	0x230
	.long	0x1d9d
	.uleb128 0x11
	.long	.LASF516
	.byte	0x2
	.value	0x231
	.long	0x1168
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF517
	.byte	0x2
	.value	0x232
	.long	0x1156
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF518
	.byte	0x2
	.value	0x233
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF519
	.byte	0x2
	.value	0x234
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF520
	.byte	0x2
	.value	0x235
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.long	.LASF521
	.byte	0x2
	.value	0x236
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.long	.LASF522
	.byte	0x2
	.value	0x237
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.long	.LASF523
	.byte	0x2
	.value	0x238
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.long	.LASF524
	.byte	0x2
	.value	0x239
	.long	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.long	.LASF525
	.byte	0x2
	.value	0x23a
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.long	.LASF526
	.byte	0x2
	.value	0x23b
	.long	0x89b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x8a6
	.uleb128 0x1a
	.long	.LASF527
	.byte	0x2
	.value	0x23c
	.long	0x1cea
	.uleb128 0x1c
	.long	.LASF528
	.byte	0xb0
	.byte	0x2
	.value	0x248
	.long	0x1e0a
	.uleb128 0x11
	.long	.LASF529
	.byte	0x2
	.value	0x249
	.long	0x13e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF530
	.byte	0x2
	.value	0x24a
	.long	0x1156
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF531
	.byte	0x2
	.value	0x24b
	.long	0x9f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF532
	.byte	0x2
	.value	0x24c
	.long	0x114b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.long	.LASF533
	.byte	0x2
	.value	0x24d
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF534
	.byte	0x2
	.value	0x24e
	.long	0x1daf
	.uleb128 0x1c
	.long	.LASF535
	.byte	0x8
	.byte	0x2
	.value	0x250
	.long	0x1e42
	.uleb128 0x11
	.long	.LASF536
	.byte	0x2
	.value	0x251
	.long	0x1e42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF537
	.byte	0x2
	.value	0x252
	.long	0x13f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1da3
	.uleb128 0x1a
	.long	.LASF538
	.byte	0x2
	.value	0x253
	.long	0x1e16
	.uleb128 0x1c
	.long	.LASF539
	.byte	0x14
	.byte	0x2
	.value	0x25b
	.long	0x1e9e
	.uleb128 0x11
	.long	.LASF540
	.byte	0x2
	.value	0x25d
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF541
	.byte	0x2
	.value	0x25e
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF542
	.byte	0x2
	.value	0x25f
	.long	0x1e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF543
	.byte	0x2
	.value	0x260
	.long	0x89b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xb17
	.uleb128 0x1a
	.long	.LASF544
	.byte	0x2
	.value	0x261
	.long	0x1e54
	.uleb128 0x25
	.long	.LASF545
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x6b5
	.quad	.LFB0
	.quad	.LFE0
	.long	.LLST0
	.long	0x1ee2
	.uleb128 0x26
	.string	"ts"
	.byte	0x1
	.byte	0x31
	.long	0xfe
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x27
	.long	.LASF546
	.byte	0x2
	.value	0x26c
	.byte	0x1
	.long	0x3e1
	.quad	.LFB4
	.quad	.LFE4
	.long	.LLST1
	.long	0x1f86
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x26c
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"dva"
	.byte	0x2
	.value	0x26c
	.long	0x1f86
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF547
	.byte	0x2
	.value	0x26c
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x2
	.value	0x26e
	.long	0x3ec
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x2
	.value	0x26f
	.long	0x14a5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"crc"
	.byte	0x2
	.value	0x270
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x2
	.value	0x271
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x1fa1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9574
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1f8c
	.uleb128 0x2d
	.long	0x936
	.uleb128 0xa
	.long	0xc0
	.long	0x1fa1
	.uleb128 0xb
	.long	0x8d
	.byte	0x8
	.byte	0x0
	.uleb128 0x2d
	.long	0x1f91
	.uleb128 0x27
	.long	.LASF550
	.byte	0x2
	.value	0x288
	.byte	0x1
	.long	0x13f5
	.quad	.LFB5
	.quad	.LFE5
	.long	.LLST2
	.long	0x2036
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x288
	.long	0x1156
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"dva"
	.byte	0x2
	.value	0x288
	.long	0x1f86
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF547
	.byte	0x2
	.value	0x288
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF551
	.byte	0x2
	.value	0x288
	.long	0x2036
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"idx"
	.byte	0x2
	.value	0x28a
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x28b
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x28c
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1509
	.uleb128 0x27
	.long	.LASF553
	.byte	0x2
	.value	0x2a2
	.byte	0x1
	.long	0x13f5
	.quad	.LFB6
	.quad	.LFE6
	.long	.LLST3
	.long	0x2113
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x2a2
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.long	.LASF551
	.byte	0x2
	.value	0x2a2
	.long	0x2036
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"idx"
	.byte	0x2
	.value	0x2a4
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x2a5
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF554
	.byte	0x2
	.value	0x2a6
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"i"
	.byte	0x2
	.value	0x2a7
	.long	0x3d6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2113
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9636
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2
	.long	0x20f3
	.uleb128 0x2b
	.string	"m"
	.byte	0x2
	.value	0x2bc
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x2b
	.string	"m"
	.byte	0x2
	.value	0x2c0
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF557
	.byte	0x2
	.value	0x2c6
	.byte	0x1
	.quad	.LFB7
	.quad	.LFE7
	.long	.LLST4
	.long	0x218a
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x2c6
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF554
	.byte	0x2
	.value	0x2c8
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x2
	.value	0x2c8
	.long	0x1cc8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"idx"
	.byte	0x2
	.value	0x2c9
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF555
	.long	0x218a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9713
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF558
	.byte	0x2
	.value	0x2e6
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8
	.long	.LLST5
	.long	0x21be
	.uleb128 0x2b
	.string	"i"
	.byte	0x2
	.value	0x2e8
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	.LASF559
	.byte	0x2
	.value	0x2f8
	.byte	0x1
	.long	0x57
	.quad	.LFB9
	.quad	.LFE9
	.long	.LLST6
	.long	0x2220
	.uleb128 0x29
	.long	.LASF560
	.byte	0x2
	.value	0x2f8
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF561
	.byte	0x2
	.value	0x2f8
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF562
	.byte	0x2
	.value	0x2f8
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x2fa
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF563
	.byte	0x2
	.value	0x30c
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10
	.long	.LLST7
	.long	0x226f
	.uleb128 0x29
	.long	.LASF560
	.byte	0x2
	.value	0x30c
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF561
	.byte	0x2
	.value	0x30c
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x30e
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	.LASF564
	.byte	0x2
	.value	0x31d
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.long	.LLST8
	.long	0x22b4
	.uleb128 0x29
	.long	.LASF561
	.byte	0x2
	.value	0x31d
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF565
	.long	0x22b4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.9800
	.byte	0x0
	.uleb128 0x2d
	.long	0x1f91
	.uleb128 0x30
	.long	.LASF566
	.byte	0x2
	.value	0x329
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.long	.LLST9
	.long	0x2336
	.uleb128 0x2b
	.string	"ct"
	.byte	0x2
	.value	0x32b
	.long	0x2336
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF567
	.byte	0x2
	.value	0x32c
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"i"
	.byte	0x2
	.value	0x32d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x2
	.value	0x32d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LASF626
	.byte	0x2
	.value	0x33d
	.quad	.L53
	.uleb128 0x2c
	.long	.LASF555
	.long	0x233c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9820
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x3e1
	.uleb128 0x2d
	.long	0x1f91
	.uleb128 0x30
	.long	.LASF568
	.byte	0x2
	.value	0x352
	.byte	0x1
	.quad	.LFB13
	.quad	.LFE13
	.long	.LLST10
	.long	0x2381
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x352
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"zc"
	.byte	0x2
	.value	0x354
	.long	0x96c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x27
	.long	.LASF569
	.byte	0x2
	.value	0x366
	.byte	0x1
	.long	0x57
	.quad	.LFB14
	.quad	.LFE14
	.long	.LLST11
	.long	0x23d5
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x366
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"zc"
	.byte	0x2
	.value	0x368
	.long	0x96c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x2
	.value	0x369
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF571
	.byte	0x2
	.value	0x374
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.long	.LLST12
	.long	0x2415
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x374
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF572
	.byte	0x2
	.value	0x374
	.long	0x41b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF573
	.byte	0x2
	.value	0x385
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16
	.long	.LLST13
	.long	0x2447
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x385
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF574
	.byte	0x2
	.value	0x398
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17
	.long	.LLST14
	.long	0x248d
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x398
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x249d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10004
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x249d
	.uleb128 0xb
	.long	0x8d
	.byte	0xe
	.byte	0x0
	.uleb128 0x2d
	.long	0x248d
	.uleb128 0x30
	.long	.LASF575
	.byte	0x2
	.value	0x3a3
	.byte	0x1
	.quad	.LFB18
	.quad	.LFE18
	.long	.LLST15
	.long	0x2648
	.uleb128 0x28
	.string	"ab"
	.byte	0x2
	.value	0x3a3
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.long	.LASF552
	.byte	0x2
	.value	0x3a3
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0x3a3
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2658
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10023
	.uleb128 0x2f
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x2a
	.long	.LASF576
	.byte	0x2
	.value	0x3a9
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF134
	.byte	0x2
	.value	0x3aa
	.long	0x1d9d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x3ab
	.long	0x2336
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5
	.long	0x259f
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x3b2
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x3b2
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x3b2
	.long	0xba
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7
	.long	0x25f5
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x3b3
	.long	0x2662
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x3b3
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x3b3
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x3b7
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x3b7
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x3b7
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x2658
	.uleb128 0xb
	.long	0x8d
	.byte	0xd
	.byte	0x0
	.uleb128 0x2d
	.long	0x2648
	.uleb128 0x2d
	.long	0x3e1
	.uleb128 0x2d
	.long	0x3ec
	.uleb128 0x27
	.long	.LASF581
	.byte	0x2
	.value	0x3c1
	.byte	0x1
	.long	0x57
	.quad	.LFB19
	.quad	.LFE19
	.long	.LLST16
	.long	0x270c
	.uleb128 0x28
	.string	"ab"
	.byte	0x2
	.value	0x3c1
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF552
	.byte	0x2
	.value	0x3c1
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0x3c1
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x2
	.value	0x3c3
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF582
	.byte	0x2
	.value	0x3c4
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF555
	.long	0x271c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10127
	.uleb128 0x2f
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x3cb
	.long	0x2336
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x271c
	.uleb128 0xb
	.long	0x8d
	.byte	0x10
	.byte	0x0
	.uleb128 0x2d
	.long	0x270c
	.uleb128 0x30
	.long	.LASF583
	.byte	0x2
	.value	0x3dd
	.byte	0x1
	.quad	.LFB20
	.quad	.LFE20
	.long	.LLST17
	.long	0x28d5
	.uleb128 0x29
	.long	.LASF584
	.byte	0x2
	.value	0x3dd
	.long	0x1c44
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x28
	.string	"ab"
	.byte	0x2
	.value	0x3dd
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF552
	.byte	0x2
	.value	0x3dd
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2a
	.long	.LASF585
	.byte	0x2
	.value	0x3df
	.long	0x1c44
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.long	.LASF586
	.byte	0x2
	.value	0x3e0
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF587
	.byte	0x2
	.value	0x3e1
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF588
	.byte	0x2
	.value	0x3e1
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF555
	.long	0x28d5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10188
	.uleb128 0x2e
	.quad	.LBB12
	.quad	.LBE12
	.long	0x284f
	.uleb128 0x2a
	.long	.LASF589
	.byte	0x2
	.value	0x3f0
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x3f1
	.long	0x2336
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x402
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x402
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x402
	.long	0xba
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB15
	.quad	.LBE15
	.long	0x2883
	.uleb128 0x2a
	.long	.LASF589
	.byte	0x2
	.value	0x409
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x40a
	.long	0x2336
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x428
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x428
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x428
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x270c
	.uleb128 0x32
	.byte	0x1
	.long	.LASF590
	.byte	0x2
	.value	0x435
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21
	.long	.LLST18
	.long	0x290c
	.uleb128 0x29
	.long	.LASF591
	.byte	0x2
	.value	0x435
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF592
	.byte	0x2
	.value	0x43c
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22
	.long	.LLST19
	.long	0x2952
	.uleb128 0x29
	.long	.LASF591
	.byte	0x2
	.value	0x43c
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2952
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10362
	.byte	0x0
	.uleb128 0x2d
	.long	0x270c
	.uleb128 0x33
	.byte	0x1
	.long	.LASF594
	.byte	0x2
	.value	0x447
	.byte	0x1
	.long	0xb8
	.quad	.LFB23
	.quad	.LFE23
	.long	.LLST20
	.long	0x298d
	.uleb128 0x29
	.long	.LASF577
	.byte	0x2
	.value	0x447
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF593
	.byte	0x2
	.value	0x450
	.byte	0x1
	.quad	.LFB24
	.quad	.LFE24
	.long	.LLST21
	.long	0x29e2
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x450
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF577
	.byte	0x2
	.value	0x450
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF555
	.long	0x29f2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10395
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x29f2
	.uleb128 0xb
	.long	0x8d
	.byte	0x11
	.byte	0x0
	.uleb128 0x2d
	.long	0x29e2
	.uleb128 0x33
	.byte	0x1
	.long	.LASF595
	.byte	0x2
	.value	0x458
	.byte	0x1
	.long	0x13e4
	.quad	.LFB25
	.quad	.LFE25
	.long	.LLST22
	.long	0x2ae1
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x458
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF577
	.byte	0x2
	.value	0x458
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0x458
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.long	.LASF596
	.byte	0x2
	.value	0x458
	.long	0x1420
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x45a
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x45b
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2ae1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10414
	.uleb128 0x2f
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x45d
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x45d
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x45d
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x2648
	.uleb128 0x27
	.long	.LASF597
	.byte	0x2
	.value	0x476
	.byte	0x1
	.long	0x13e4
	.quad	.LFB26
	.quad	.LFE26
	.long	.LLST23
	.long	0x2b48
	.uleb128 0x29
	.long	.LASF598
	.byte	0x2
	.value	0x476
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x478
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x479
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x47a
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF599
	.byte	0x2
	.value	0x48a
	.byte	0x1
	.quad	.LFB27
	.quad	.LFE27
	.long	.LLST24
	.long	0x2bbb
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x48a
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0x48a
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x48c
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x48d
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2bbb
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10462
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF600
	.byte	0x2
	.value	0x4b5
	.byte	0x1
	.quad	.LFB28
	.quad	.LFE28
	.long	.LLST25
	.long	0x2c3e
	.uleb128 0x28
	.string	"hdr"
	.byte	0x2
	.value	0x4b5
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF601
	.byte	0x2
	.value	0x4b5
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF602
	.byte	0x2
	.value	0x4b6
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF577
	.byte	0x2
	.value	0x4b6
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x2b
	.string	"df"
	.byte	0x2
	.value	0x4b9
	.long	0x2c3e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1ea4
	.uleb128 0x30
	.long	.LASF603
	.byte	0x2
	.value	0x4c8
	.byte	0x1
	.quad	.LFB29
	.quad	.LFE29
	.long	.LLST26
	.long	0x2dc6
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x4c8
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.long	.LASF604
	.byte	0x2
	.value	0x4c8
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"all"
	.byte	0x2
	.value	0x4c8
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x2
	.value	0x4ca
	.long	0x2dc6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2dcc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10530
	.uleb128 0x2f
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x2a
	.long	.LASF582
	.byte	0x2
	.value	0x4ce
	.long	0x1c44
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x4cf
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF596
	.byte	0x2
	.value	0x4d0
	.long	0x1420
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22
	.long	0x2d73
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x2
	.value	0x4e0
	.long	0x2336
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x4e5
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x4e5
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x4e5
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x4e8
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x4e8
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x4e8
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x13e4
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF605
	.byte	0x2
	.value	0x500
	.byte	0x1
	.quad	.LFB30
	.quad	.LFE30
	.long	.LLST27
	.long	0x2f39
	.uleb128 0x28
	.string	"hdr"
	.byte	0x2
	.value	0x500
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2f39
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10621
	.uleb128 0x2e
	.quad	.LBB27
	.quad	.LBE27
	.long	0x2e6d
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x503
	.long	0x2662
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x503
	.long	0x2662
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x503
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB29
	.quad	.LBE29
	.long	0x2e92
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x52a
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB30
	.quad	.LBE30
	.long	0x2ee7
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x53f
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x53f
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x53f
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x540
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x540
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x540
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x32
	.byte	0x1
	.long	.LASF606
	.byte	0x2
	.value	0x545
	.byte	0x1
	.quad	.LFB31
	.quad	.LFE31
	.long	.LLST28
	.long	0x2feb
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x545
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0x545
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x547
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF607
	.byte	0x2
	.value	0x548
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF555
	.long	0x2ffb
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10744
	.uleb128 0x2e
	.quad	.LBB34
	.quad	.LBE34
	.long	0x2fd5
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x54e
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2a
	.long	.LASF608
	.byte	0x2
	.value	0x558
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x2ffb
	.uleb128 0xb
	.long	0x8d
	.byte	0xc
	.byte	0x0
	.uleb128 0x2d
	.long	0x2feb
	.uleb128 0x33
	.byte	0x1
	.long	.LASF609
	.byte	0x2
	.value	0x570
	.byte	0x1
	.long	0x57
	.quad	.LFB32
	.quad	.LFE32
	.long	.LLST29
	.long	0x3086
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x570
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0x570
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x572
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x573
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF610
	.byte	0x2
	.value	0x574
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3096
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10799
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x3096
	.uleb128 0xb
	.long	0x8d
	.byte	0x12
	.byte	0x0
	.uleb128 0x2d
	.long	0x3086
	.uleb128 0x33
	.byte	0x1
	.long	.LASF611
	.byte	0x2
	.value	0x58e
	.byte	0x1
	.long	0x57
	.quad	.LFB33
	.quad	.LFE33
	.long	.LLST30
	.long	0x30d1
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x58e
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x27
	.long	.LASF612
	.byte	0x2
	.value	0x5a1
	.byte	0x1
	.long	0xb8
	.quad	.LFB34
	.quad	.LFE34
	.long	.LLST31
	.long	0x32f1
	.uleb128 0x29
	.long	.LASF582
	.byte	0x2
	.value	0x5a1
	.long	0x1c44
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x5a1
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.long	.LASF613
	.byte	0x2
	.value	0x5a1
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF604
	.byte	0x2
	.value	0x5a1
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x29
	.long	.LASF596
	.byte	0x2
	.value	0x5a2
	.long	0x1420
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF614
	.byte	0x2
	.value	0x5a4
	.long	0x1c44
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.long	.LASF615
	.byte	0x2
	.value	0x5a5
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF616
	.byte	0x2
	.value	0x5a5
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF617
	.byte	0x2
	.value	0x5a5
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"ab"
	.byte	0x2
	.value	0x5a6
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF618
	.byte	0x2
	.value	0x5a6
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF134
	.byte	0x2
	.value	0x5a7
	.long	0x1d9d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x5a8
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF619
	.byte	0x2
	.value	0x5a9
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF620
	.byte	0x2
	.value	0x5aa
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3301
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10867
	.uleb128 0x2c
	.long	.LASF565
	.long	0x3306
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.10879
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37
	.long	0x3264
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x5c4
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x5c4
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x5c4
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB39
	.quad	.LBE39
	.long	0x3289
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x5c7
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x2a
	.long	.LASF621
	.byte	0x2
	.value	0x601
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41
	.long	0x32ce
	.uleb128 0x2a
	.long	.LASF622
	.byte	0x2
	.value	0x605
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x2a
	.long	.LASF622
	.byte	0x2
	.value	0x609
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x3301
	.uleb128 0xb
	.long	0x8d
	.byte	0x9
	.byte	0x0
	.uleb128 0x2d
	.long	0x32f1
	.uleb128 0x2d
	.long	0x32f1
	.uleb128 0x30
	.long	.LASF623
	.byte	0x2
	.value	0x618
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35
	.long	.LLST32
	.long	0x33ee
	.uleb128 0x29
	.long	.LASF582
	.byte	0x2
	.value	0x618
	.long	0x1c44
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x618
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF613
	.byte	0x2
	.value	0x618
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"ab"
	.byte	0x2
	.value	0x61a
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF618
	.byte	0x2
	.value	0x61a
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF134
	.byte	0x2
	.value	0x61b
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x61c
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF624
	.byte	0x2
	.value	0x61d
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF625
	.byte	0x2
	.value	0x61e
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF555
	.long	0x33ee
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11085
	.uleb128 0x35
	.string	"top"
	.byte	0x2
	.value	0x643
	.quad	.L293
	.uleb128 0x2c
	.long	.LASF565
	.long	0x33f3
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11091
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF627
	.byte	0x2
	.value	0x65b
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36
	.long	.LLST33
	.long	0x350c
	.uleb128 0x2a
	.long	.LASF628
	.byte	0x2
	.value	0x65d
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF621
	.byte	0x2
	.value	0x65d
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF629
	.byte	0x2
	.value	0x65d
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF622
	.byte	0x2
	.value	0x65d
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB43
	.quad	.LBE43
	.long	0x347f
	.uleb128 0x2a
	.long	.LASF630
	.byte	0x2
	.value	0x662
	.long	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB44
	.quad	.LBE44
	.long	0x34a4
	.uleb128 0x2a
	.long	.LASF630
	.byte	0x2
	.value	0x669
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x2a
	.long	.LASF631
	.byte	0x2
	.value	0x67a
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB46
	.quad	.LBE46
	.long	0x34e9
	.uleb128 0x2a
	.long	.LASF630
	.byte	0x2
	.value	0x67d
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x2a
	.long	.LASF630
	.byte	0x2
	.value	0x686
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF632
	.byte	0x2
	.value	0x698
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37
	.long	.LLST34
	.long	0x3563
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3563
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11295
	.uleb128 0x2f
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x69c
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3086
	.uleb128 0x32
	.byte	0x1
	.long	.LASF633
	.byte	0x2
	.value	0x6b1
	.byte	0x1
	.quad	.LFB38
	.quad	.LFE38
	.long	.LLST35
	.long	0x35ae
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x6b1
	.long	0x1156
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x35ae
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11327
	.byte	0x0
	.uleb128 0x2d
	.long	0x32f1
	.uleb128 0x32
	.byte	0x1
	.long	.LASF634
	.byte	0x2
	.value	0x6d4
	.byte	0x1
	.quad	.LFB39
	.quad	.LFE39
	.long	.LLST36
	.long	0x360b
	.uleb128 0x2c
	.long	.LASF555
	.long	0x361b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11364
	.uleb128 0x2f
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x2a
	.long	.LASF635
	.byte	0x2
	.value	0x6d7
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x361b
	.uleb128 0xb
	.long	0x8d
	.byte	0xa
	.byte	0x0
	.uleb128 0x2d
	.long	0x360b
	.uleb128 0x36
	.long	.LASF813
	.byte	0x2
	.value	0x6f1
	.byte	0x1
	.long	0x57
	.quad	.LFB40
	.quad	.LFE40
	.long	.LLST37
	.uleb128 0x30
	.long	.LASF636
	.byte	0x2
	.value	0x72e
	.byte	0x1
	.quad	.LFB41
	.quad	.LFE41
	.long	.LLST38
	.long	0x369d
	.uleb128 0x29
	.long	.LASF637
	.byte	0x2
	.value	0x72e
	.long	0x17fe
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x2
	.value	0x730
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF638
	.byte	0x2
	.value	0x731
	.long	0x369d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF639
	.byte	0x2
	.value	0x732
	.long	0x369d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x824
	.uleb128 0x30
	.long	.LASF640
	.byte	0x2
	.value	0x75c
	.byte	0x1
	.quad	.LFB42
	.quad	.LFE42
	.long	.LLST39
	.long	0x3706
	.uleb128 0x2a
	.long	.LASF641
	.byte	0x2
	.value	0x75e
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF642
	.byte	0x2
	.value	0x75f
	.long	0x17fe
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"cpr"
	.byte	0x2
	.value	0x760
	.long	0x152a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3706
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11445
	.byte	0x0
	.uleb128 0x2d
	.long	0x3086
	.uleb128 0x30
	.long	.LASF643
	.byte	0x2
	.value	0x79a
	.byte	0x1
	.quad	.LFB43
	.quad	.LFE43
	.long	.LLST40
	.long	0x376e
	.uleb128 0x29
	.long	.LASF613
	.byte	0x2
	.value	0x79a
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF582
	.byte	0x2
	.value	0x79a
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF644
	.byte	0x2
	.value	0x79c
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x376e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11516
	.byte	0x0
	.uleb128 0x2d
	.long	0x32f1
	.uleb128 0x27
	.long	.LASF645
	.byte	0x2
	.value	0x7d7
	.byte	0x1
	.long	0x57
	.quad	.LFB44
	.quad	.LFE44
	.long	.LLST41
	.long	0x37a8
	.uleb128 0x29
	.long	.LASF596
	.byte	0x2
	.value	0x7d7
	.long	0x1420
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF646
	.byte	0x2
	.value	0x806
	.byte	0x1
	.quad	.LFB45
	.quad	.LFE45
	.long	.LLST42
	.long	0x3896
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x806
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF582
	.byte	0x2
	.value	0x808
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x809
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF596
	.byte	0x2
	.value	0x80a
	.long	0x1420
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3896
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11630
	.uleb128 0x35
	.string	"out"
	.byte	0x2
	.value	0x83d
	.quad	.L407
	.uleb128 0x2e
	.quad	.LBB50
	.quad	.LBE50
	.long	0x384f
	.uleb128 0x2a
	.long	.LASF647
	.byte	0x2
	.value	0x828
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB51
	.quad	.LBE51
	.long	0x3874
	.uleb128 0x2a
	.long	.LASF648
	.byte	0x2
	.value	0x82d
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x843
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x270c
	.uleb128 0x30
	.long	.LASF649
	.byte	0x2
	.value	0x859
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46
	.long	.LLST43
	.long	0x3988
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x859
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF552
	.byte	0x2
	.value	0x859
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3988
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11775
	.uleb128 0x2e
	.quad	.LBB53
	.quad	.LBE53
	.long	0x3915
	.uleb128 0x2a
	.long	.LASF584
	.byte	0x2
	.value	0x88e
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x2a
	.long	.LASF584
	.byte	0x2
	.value	0x8b4
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x8c0
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x8c0
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x8c0
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x360b
	.uleb128 0x32
	.byte	0x1
	.long	.LASF650
	.byte	0x2
	.value	0x8d9
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.long	.LLST44
	.long	0x39f1
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0x8d9
	.long	0x1100
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x8d9
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"arg"
	.byte	0x2
	.value	0x8d9
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF555
	.long	0x39f1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11911
	.byte	0x0
	.uleb128 0x2d
	.long	0x248d
	.uleb128 0x32
	.byte	0x1
	.long	.LASF651
	.byte	0x2
	.value	0x8e1
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.long	.LLST45
	.long	0x3a69
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0x8e1
	.long	0x1100
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x8e1
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"arg"
	.byte	0x2
	.value	0x8e1
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x2
	.value	0x8e3
	.long	0x2dc6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3a69
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11928
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF652
	.byte	0x2
	.value	0x8ed
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.long	.LLST46
	.long	0x3ba6
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0x8ed
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x8ef
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF653
	.byte	0x2
	.value	0x8ef
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x8f0
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF654
	.byte	0x2
	.value	0x8f1
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x8f2
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF655
	.byte	0x2
	.value	0x8f3
	.long	0x1be8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"acb"
	.byte	0x2
	.value	0x8f3
	.long	0x1be8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF656
	.byte	0x2
	.value	0x8f4
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3ba6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11951
	.uleb128 0x2e
	.quad	.LBB57
	.quad	.LBE57
	.long	0x3b54
	.uleb128 0x2a
	.long	.LASF657
	.byte	0x2
	.value	0x910
	.long	0xb63
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x94b
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x94b
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x94b
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x2648
	.uleb128 0x33
	.byte	0x1
	.long	.LASF658
	.byte	0x2
	.value	0x978
	.byte	0x1
	.long	0x57
	.quad	.LFB50
	.quad	.LFE50
	.long	.LLST47
	.long	0x3d46
	.uleb128 0x28
	.string	"pio"
	.byte	0x2
	.value	0x978
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x978
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"bp"
	.byte	0x2
	.value	0x978
	.long	0x115c
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	.LASF659
	.byte	0x2
	.value	0x978
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF660
	.byte	0x2
	.value	0x979
	.long	0x1be2
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.long	.LASF661
	.byte	0x2
	.value	0x979
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF662
	.byte	0x2
	.value	0x979
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF663
	.byte	0x2
	.value	0x979
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF664
	.byte	0x2
	.value	0x97a
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"zb"
	.byte	0x2
	.value	0x97a
	.long	0x3d46
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.string	"err"
	.byte	0x2
	.value	0x97c
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x97d
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3d51
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12117
	.uleb128 0x2e
	.quad	.LBB60
	.quad	.LBE60
	.long	0x3cf4
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x980
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x980
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x980
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x986
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x986
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x986
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x3d4c
	.uleb128 0x2d
	.long	0x114b
	.uleb128 0x2d
	.long	0x1f91
	.uleb128 0x33
	.byte	0x1
	.long	.LASF665
	.byte	0x2
	.value	0x98c
	.byte	0x1
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51
	.long	.LLST48
	.long	0x3ff1
	.uleb128 0x28
	.string	"pio"
	.byte	0x2
	.value	0x98c
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x98c
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"bp"
	.byte	0x2
	.value	0x98c
	.long	0x115c
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x29
	.long	.LASF660
	.byte	0x2
	.value	0x98d
	.long	0x1be2
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF661
	.byte	0x2
	.value	0x98d
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x29
	.long	.LASF662
	.byte	0x2
	.value	0x98d
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x29
	.long	.LASF663
	.byte	0x2
	.value	0x98d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF664
	.byte	0x2
	.value	0x98e
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"zb"
	.byte	0x2
	.value	0x98e
	.long	0x3d46
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0x990
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x991
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0x992
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.long	.LASF666
	.byte	0x2
	.value	0x993
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.string	"top"
	.byte	0x2
	.value	0x9a0
	.quad	.L500
	.uleb128 0x2c
	.long	.LASF555
	.long	0x3ff1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12173
	.uleb128 0x2c
	.long	.LASF565
	.long	0x3ff6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12187
	.uleb128 0x31
	.long	.LASF667
	.byte	0x2
	.value	0xa78
	.quad	.L557
	.uleb128 0x2e
	.quad	.LBB64
	.quad	.LBE64
	.long	0x3eb5
	.uleb128 0x2b
	.string	"acb"
	.byte	0x2
	.value	0x9a5
	.long	0x1be8
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x9dd
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"acb"
	.byte	0x2
	.value	0x9de
	.long	0x1be8
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x9df
	.long	0x1168
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF424
	.byte	0x2
	.value	0x9e0
	.long	0xc7
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x30
	.long	0x3f2f
	.uleb128 0x2a
	.long	.LASF668
	.byte	0x2
	.value	0x9e4
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF596
	.byte	0x2
	.value	0x9e5
	.long	0x1420
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB67
	.quad	.LBE67
	.long	0x3f86
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xa03
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xa03
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xa03
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB70
	.quad	.LBE70
	.long	0x3fdb
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xa34
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xa34
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xa34
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2b
	.string	"cb"
	.byte	0x2
	.value	0xa4c
	.long	0x3ffb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x7
	.byte	0x4
	.long	0x1e0a
	.uleb128 0x33
	.byte	0x1
	.long	.LASF669
	.byte	0x2
	.value	0xa90
	.byte	0x1
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52
	.long	.LLST49
	.long	0x40b5
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0xa90
	.long	0x1156
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"bp"
	.byte	0x2
	.value	0xa90
	.long	0x115c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF602
	.byte	0x2
	.value	0xa90
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xa92
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF670
	.byte	0x2
	.value	0xa93
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"rc"
	.byte	0x2
	.value	0xa94
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF555
	.long	0x40b5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12507
	.uleb128 0x2f
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0xa99
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xb75
	.uleb128 0x32
	.byte	0x1
	.long	.LASF671
	.byte	0x2
	.value	0xaac
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53
	.long	.LLST50
	.long	0x411e
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xaac
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF657
	.byte	0x2
	.value	0xaac
	.long	0x13fb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF661
	.byte	0x2
	.value	0xaac
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF555
	.long	0x411e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12540
	.byte	0x0
	.uleb128 0x2d
	.long	0x270c
	.uleb128 0x33
	.byte	0x1
	.long	.LASF672
	.byte	0x2
	.value	0xabb
	.byte	0x1
	.long	0x57
	.quad	.LFB54
	.quad	.LFE54
	.long	.LLST51
	.long	0x4249
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xabb
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xabd
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xabe
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x2
	.value	0xabf
	.long	0x2dc6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4249
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12562
	.uleb128 0x2e
	.quad	.LBB75
	.quad	.LBE75
	.long	0x41c3
	.uleb128 0x2a
	.long	.LASF673
	.byte	0x2
	.value	0xadd
	.long	0x1365
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB76
	.quad	.LBE76
	.long	0x4218
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xaea
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xaea
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xaea
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x2a
	.long	.LASF585
	.byte	0x2
	.value	0xaf9
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF614
	.byte	0x2
	.value	0xafa
	.long	0x1c44
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x2648
	.uleb128 0x32
	.byte	0x1
	.long	.LASF674
	.byte	0x2
	.value	0xb1d
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55
	.long	.LLST52
	.long	0x4478
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xb1d
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.value	0xb1d
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xb1f
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xb20
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF675
	.byte	0x2
	.value	0xb21
	.long	0x1c4a
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x2
	.value	0xb22
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4478
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12665
	.uleb128 0x2e
	.quad	.LBB79
	.quad	.LBE79
	.long	0x433c
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xb2a
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xb2a
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xb2a
	.long	0xba
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x2
	.value	0xb37
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x2
	.value	0xb38
	.long	0x2dc6
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF678
	.byte	0x2
	.value	0xb39
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0xb3a
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF596
	.byte	0x2
	.value	0xb3b
	.long	0x1420
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF679
	.byte	0x2
	.value	0xb3c
	.long	0x3d6
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.quad	.LBB82
	.quad	.LBE82
	.long	0x4404
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xb4a
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xb4a
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xb4a
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB84
	.quad	.LBE84
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0xb4d
	.long	0x2336
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xb4e
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xb4e
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xb4e
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xb75
	.uleb128 0x33
	.byte	0x1
	.long	.LASF680
	.byte	0x2
	.value	0xb8a
	.byte	0x1
	.long	0x57
	.quad	.LFB56
	.quad	.LFE56
	.long	.LLST53
	.long	0x44b3
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xb8a
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF681
	.byte	0x2
	.value	0xb90
	.byte	0x1
	.long	0x57
	.quad	.LFB57
	.quad	.LFE57
	.long	.LLST54
	.long	0x44e9
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xb90
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF682
	.byte	0x2
	.value	0xb96
	.byte	0x1
	.long	0x57
	.quad	.LFB58
	.quad	.LFE58
	.long	.LLST55
	.long	0x451f
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xb96
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF683
	.byte	0x2
	.value	0xb9c
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59
	.long	.LLST56
	.long	0x4591
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0xb9c
	.long	0x1100
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF684
	.byte	0x2
	.value	0xb9e
	.long	0x4591
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0xb9f
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xba0
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4597
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12843
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1bee
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x30
	.long	.LASF685
	.byte	0x2
	.value	0xbbf
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60
	.long	.LLST57
	.long	0x4704
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0xbbf
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF684
	.byte	0x2
	.value	0xbc1
	.long	0x4591
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0xbc2
	.long	0x13e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xbc3
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4704
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12888
	.uleb128 0x2e
	.quad	.LBB87
	.quad	.LBE87
	.long	0x46ee
	.uleb128 0x2a
	.long	.LASF668
	.byte	0x2
	.value	0xbd1
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xbd2
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.quad	.LBB88
	.quad	.LBE88
	.long	0x469c
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xbdf
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xbdf
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xbdf
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xbe7
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xbe7
	.long	0x2662
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xbe7
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2a
	.long	.LASF608
	.byte	0x2
	.value	0xbef
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x248d
	.uleb128 0x30
	.long	.LASF686
	.byte	0x2
	.value	0xc08
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61
	.long	.LLST58
	.long	0x4793
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0xc08
	.long	0x1156
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"wp"
	.byte	0x2
	.value	0xc08
	.long	0x4793
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF687
	.byte	0x2
	.value	0xc09
	.long	0x68d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF688
	.byte	0x2
	.value	0xc09
	.long	0x68d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF689
	.byte	0x2
	.value	0xc09
	.long	0x68d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF690
	.byte	0x2
	.value	0xc0b
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x2
	.value	0xc0c
	.long	0x41b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x4799
	.uleb128 0x2d
	.long	0x149a
	.uleb128 0x33
	.byte	0x1
	.long	.LASF692
	.byte	0x2
	.value	0xc35
	.byte	0x1
	.long	0x1100
	.quad	.LFB62
	.quad	.LFE62
	.long	.LLST59
	.long	0x48f9
	.uleb128 0x28
	.string	"pio"
	.byte	0x2
	.value	0xc35
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0xc35
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"wp"
	.byte	0x2
	.value	0xc35
	.long	0x4793
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.long	.LASF693
	.byte	0x2
	.value	0xc36
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"txg"
	.byte	0x2
	.value	0xc36
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"bp"
	.byte	0x2
	.value	0xc36
	.long	0x115c
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0xc36
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF694
	.byte	0x2
	.value	0xc37
	.long	0x1be2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF660
	.byte	0x2
	.value	0xc37
	.long	0x1be2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF661
	.byte	0x2
	.value	0xc37
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF662
	.byte	0x2
	.value	0xc37
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x29
	.long	.LASF663
	.byte	0x2
	.value	0xc38
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x28
	.string	"zb"
	.byte	0x2
	.value	0xc38
	.long	0x3d46
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xc3a
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF684
	.byte	0x2
	.value	0xc3b
	.long	0x4591
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0xc3c
	.long	0x1100
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF695
	.byte	0x2
	.value	0xc3d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF696
	.byte	0x2
	.value	0xc3d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF690
	.byte	0x2
	.value	0xc3d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF555
	.long	0x48f9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13060
	.byte	0x0
	.uleb128 0x2d
	.long	0x32f1
	.uleb128 0x33
	.byte	0x1
	.long	.LASF697
	.byte	0x2
	.value	0xc53
	.byte	0x1
	.long	0x57
	.quad	.LFB63
	.quad	.LFE63
	.long	.LLST60
	.long	0x4a25
	.uleb128 0x28
	.string	"pio"
	.byte	0x2
	.value	0xc53
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0xc53
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"txg"
	.byte	0x2
	.value	0xc53
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"bp"
	.byte	0x2
	.value	0xc53
	.long	0x115c
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.long	.LASF660
	.byte	0x2
	.value	0xc54
	.long	0x1162
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF661
	.byte	0x2
	.value	0xc54
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF664
	.byte	0x2
	.value	0xc54
	.long	0x3d6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ab"
	.byte	0x2
	.value	0xc56
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xc57
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0xc58
	.long	0x1100
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4a25
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13096
	.uleb128 0x2f
	.quad	.LBB94
	.quad	.LBE94
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0xc6e
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0xc6e
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0xc6e
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x1f91
	.uleb128 0x27
	.long	.LASF698
	.byte	0x2
	.value	0xc9b
	.byte	0x1
	.long	0x57
	.quad	.LFB64
	.quad	.LFE64
	.long	.LLST61
	.long	0x4a6e
	.uleb128 0x29
	.long	.LASF699
	.byte	0x2
	.value	0xc9b
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"txg"
	.byte	0x2
	.value	0xc9b
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF700
	.byte	0x2
	.value	0xcd2
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65
	.long	.LLST62
	.long	0x4ab4
	.uleb128 0x29
	.long	.LASF699
	.byte	0x2
	.value	0xcd2
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4ac4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13179
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x4ac4
	.uleb128 0xb
	.long	0x8d
	.byte	0x15
	.byte	0x0
	.uleb128 0x2d
	.long	0x4ab4
	.uleb128 0x33
	.byte	0x1
	.long	.LASF701
	.byte	0x2
	.value	0xcd9
	.byte	0x1
	.long	0x57
	.quad	.LFB66
	.quad	.LFE66
	.long	.LLST63
	.long	0x4b31
	.uleb128 0x29
	.long	.LASF699
	.byte	0x2
	.value	0xcd9
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"txg"
	.byte	0x2
	.value	0xcd9
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF702
	.byte	0x2
	.value	0xcdb
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF565
	.long	0x4b31
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.13192
	.byte	0x0
	.uleb128 0x2d
	.long	0x4ab4
	.uleb128 0x38
	.byte	0x1
	.long	.LASF703
	.byte	0x2
	.value	0xd09
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67
	.long	.LLST64
	.uleb128 0x38
	.byte	0x1
	.long	.LASF704
	.byte	0x2
	.value	0xd87
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68
	.long	.LLST65
	.uleb128 0x39
	.long	.LASF705
	.byte	0x2
	.value	0xe33
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69
	.long	.LLST66
	.uleb128 0x39
	.long	.LASF706
	.byte	0x2
	.value	0xe3a
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70
	.long	.LLST67
	.uleb128 0x27
	.long	.LASF707
	.byte	0x2
	.value	0xe45
	.byte	0x1
	.long	0x1e42
	.quad	.LFB71
	.quad	.LFE71
	.long	.LLST68
	.long	0x4c00
	.uleb128 0x2a
	.long	.LASF708
	.byte	0x2
	.value	0xe47
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF709
	.byte	0x2
	.value	0xe47
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"out"
	.byte	0x2
	.value	0xe6f
	.quad	.L732
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF814
	.byte	0x2
	.value	0xe82
	.quad	.LFB72
	.quad	.LFE72
	.long	.LLST69
	.long	0x4c61
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x2
	.value	0xe84
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"df"
	.byte	0x2
	.value	0xe85
	.long	0x2c3e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF711
	.byte	0x2
	.value	0xe85
	.long	0x2c3e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4c71
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13414
	.byte	0x0
	.uleb128 0xa
	.long	0xc0
	.long	0x4c71
	.uleb128 0xb
	.long	0x8d
	.byte	0x16
	.byte	0x0
	.uleb128 0x2d
	.long	0x4c61
	.uleb128 0x30
	.long	.LASF712
	.byte	0x2
	.value	0xe9d
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73
	.long	.LLST70
	.long	0x4d32
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0xe9d
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"cb"
	.byte	0x2
	.value	0xe9f
	.long	0x4d32
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"dev"
	.byte	0x2
	.value	0xea0
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x2
	.value	0xea1
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF713
	.byte	0x2
	.value	0xea2
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"ab"
	.byte	0x2
	.value	0xea2
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF618
	.byte	0x2
	.value	0xea2
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF714
	.byte	0x2
	.value	0xea3
	.long	0x1c4a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xea4
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4d38
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13440
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1e48
	.uleb128 0x2d
	.long	0x270c
	.uleb128 0x30
	.long	.LASF715
	.byte	0x2
	.value	0xeeb
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74
	.long	.LLST71
	.long	0x4ddc
	.uleb128 0x28
	.string	"zio"
	.byte	0x2
	.value	0xeeb
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"cb"
	.byte	0x2
	.value	0xeed
	.long	0x3ffb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"hdr"
	.byte	0x2
	.value	0xeee
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0xeef
	.long	0x13e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF666
	.byte	0x2
	.value	0xef0
	.long	0x1100
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xef1
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x2
	.value	0xef2
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4ddc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13491
	.byte	0x0
	.uleb128 0x2d
	.long	0xb85
	.uleb128 0x27
	.long	.LASF716
	.byte	0x2
	.value	0xf37
	.byte	0x1
	.long	0x1d9d
	.quad	.LFB75
	.quad	.LFE75
	.long	.LLST72
	.long	0x4e48
	.uleb128 0x29
	.long	.LASF717
	.byte	0x2
	.value	0xf37
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF718
	.byte	0x2
	.value	0xf37
	.long	0x2036
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF134
	.byte	0x2
	.value	0xf39
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4e48
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13536
	.byte	0x0
	.uleb128 0x2d
	.long	0x29e2
	.uleb128 0x30
	.long	.LASF719
	.byte	0x2
	.value	0xf5d
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76
	.long	.LLST73
	.long	0x4f1c
	.uleb128 0x28
	.string	"dev"
	.byte	0x2
	.value	0xf5d
	.long	0x1e42
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF720
	.byte	0x2
	.value	0xf5d
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"all"
	.byte	0x2
	.value	0xf5d
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x2
	.value	0xf5f
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF714
	.byte	0x2
	.value	0xf60
	.long	0x1c4a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"ab"
	.byte	0x2
	.value	0xf61
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF618
	.byte	0x2
	.value	0xf61
	.long	0x13f5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xf62
	.long	0x1509
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF721
	.byte	0x2
	.value	0xf63
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"top"
	.byte	0x2
	.value	0xf7e
	.quad	.L786
	.uleb128 0x2c
	.long	.LASF555
	.long	0x4f1c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13573
	.byte	0x0
	.uleb128 0x2d
	.long	0xb75
	.uleb128 0x30
	.long	.LASF722
	.byte	0x2
	.value	0xfeb
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77
	.long	.LLST74
	.long	0x5163
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0xfeb
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x28
	.string	"dev"
	.byte	0x2
	.value	0xfeb
	.long	0x1e42
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF723
	.byte	0x2
	.value	0xfeb
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.string	"ab"
	.byte	0x2
	.value	0xfed
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF618
	.byte	0x2
	.value	0xfed
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF713
	.byte	0x2
	.value	0xfed
	.long	0x13f5
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF724
	.byte	0x2
	.value	0xfee
	.long	0x1c4a
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF134
	.byte	0x2
	.value	0xfef
	.long	0x1d9d
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.long	.LASF725
	.byte	0x2
	.value	0xff0
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF726
	.byte	0x2
	.value	0xff0
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF727
	.byte	0x2
	.value	0xff0
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF728
	.byte	0x2
	.value	0xff0
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF729
	.byte	0x2
	.value	0xff1
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x2
	.value	0xff2
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF730
	.byte	0x2
	.value	0xff2
	.long	0x1509
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF619
	.byte	0x2
	.value	0xff3
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF731
	.byte	0x2
	.value	0xff3
	.long	0x41b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"cb"
	.byte	0x2
	.value	0xff4
	.long	0x4d32
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0xff5
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF732
	.byte	0x2
	.value	0xff5
	.long	0x1100
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF555
	.long	0x5163
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13673
	.uleb128 0x2e
	.quad	.LBB96
	.quad	.LBE96
	.long	0x50ba
	.uleb128 0x2b
	.string	"try"
	.byte	0x2
	.value	0x1005
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB97
	.quad	.LBE97
	.long	0x5111
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x1094
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x1094
	.long	0x265d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x1094
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB99
	.quad	.LBE99
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x1099
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x1099
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB100
	.quad	.LBE100
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x1099
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xbe3
	.uleb128 0x30
	.long	.LASF733
	.byte	0x2
	.value	0x10b2
	.byte	0x1
	.quad	.LFB78
	.quad	.LFE78
	.long	.LLST75
	.long	0x51da
	.uleb128 0x2b
	.string	"cpr"
	.byte	0x2
	.value	0x10b4
	.long	0x152a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"dev"
	.byte	0x2
	.value	0x10b5
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x10b6
	.long	0x1156
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x2
	.value	0x10b7
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF555
	.long	0x51da
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13796
	.byte	0x0
	.uleb128 0x2d
	.long	0x29e2
	.uleb128 0x33
	.byte	0x1
	.long	.LASF734
	.byte	0x2
	.value	0x110b
	.byte	0x1
	.long	0x41b
	.quad	.LFB79
	.quad	.LFE79
	.long	.LLST76
	.long	0x5223
	.uleb128 0x28
	.string	"vd"
	.byte	0x2
	.value	0x110b
	.long	0x1168
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"dev"
	.byte	0x2
	.value	0x110d
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF735
	.byte	0x2
	.value	0x1121
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80
	.long	.LLST77
	.long	0x52f9
	.uleb128 0x28
	.string	"spa"
	.byte	0x2
	.value	0x1121
	.long	0x1156
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"vd"
	.byte	0x2
	.value	0x1121
	.long	0x1168
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF736
	.byte	0x2
	.value	0x1121
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"end"
	.byte	0x2
	.value	0x1121
	.long	0x3e1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF737
	.byte	0x2
	.value	0x1123
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF555
	.long	0x52f9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13867
	.uleb128 0x2f
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x2a
	.long	.LASF578
	.byte	0x2
	.value	0x1134
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF579
	.byte	0x2
	.value	0x1134
	.long	0x265d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x2
	.value	0x1134
	.long	0xba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x248d
	.uleb128 0x32
	.byte	0x1
	.long	.LASF738
	.byte	0x2
	.value	0x1151
	.byte	0x1
	.quad	.LFB81
	.quad	.LFE81
	.long	.LLST78
	.long	0x5370
	.uleb128 0x28
	.string	"vd"
	.byte	0x2
	.value	0x1151
	.long	0x1168
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"dev"
	.byte	0x2
	.value	0x1153
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF739
	.byte	0x2
	.value	0x1153
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF740
	.byte	0x2
	.value	0x1153
	.long	0x1e42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF555
	.long	0x5370
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.13904
	.byte	0x0
	.uleb128 0x2d
	.long	0x29e2
	.uleb128 0x38
	.byte	0x1
	.long	.LASF741
	.byte	0x2
	.value	0x1177
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82
	.long	.LLST79
	.uleb128 0x38
	.byte	0x1
	.long	.LASF742
	.byte	0x2
	.value	0x1191
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83
	.long	.LLST80
	.uleb128 0x3b
	.long	.LASF743
	.byte	0x2
	.byte	0x8d
	.long	0x7ad
	.byte	0x9
	.byte	0x3
	.quad	arc_reclaim_thr_lock
	.uleb128 0x3b
	.long	.LASF744
	.byte	0x2
	.byte	0x8e
	.long	0x808
	.byte	0x9
	.byte	0x3
	.quad	arc_reclaim_thr_cv
	.uleb128 0x3b
	.long	.LASF745
	.byte	0x2
	.byte	0x8f
	.long	0x3cb
	.byte	0x9
	.byte	0x3
	.quad	arc_thread_exit
	.uleb128 0x3b
	.long	.LASF746
	.byte	0x2
	.byte	0x9e
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	arc_grow_retry
	.uleb128 0x3b
	.long	.LASF747
	.byte	0x2
	.byte	0xa4
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	arc_min_prefetch_lifespan
	.uleb128 0x3b
	.long	.LASF748
	.byte	0x2
	.byte	0xa6
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	arc_dead
	.uleb128 0x3b
	.long	.LASF749
	.byte	0x2
	.byte	0xab
	.long	0x41b
	.byte	0x9
	.byte	0x3
	.quad	arc_warm
	.uleb128 0x3b
	.long	.LASF750
	.byte	0x2
	.byte	0xdd
	.long	0x185e
	.byte	0x9
	.byte	0x3
	.quad	ARC_anon
	.uleb128 0x3b
	.long	.LASF751
	.byte	0x2
	.byte	0xde
	.long	0x185e
	.byte	0x9
	.byte	0x3
	.quad	ARC_mru
	.uleb128 0x3b
	.long	.LASF752
	.byte	0x2
	.byte	0xdf
	.long	0x185e
	.byte	0x9
	.byte	0x3
	.quad	ARC_mru_ghost
	.uleb128 0x3b
	.long	.LASF753
	.byte	0x2
	.byte	0xe0
	.long	0x185e
	.byte	0x9
	.byte	0x3
	.quad	ARC_mfu
	.uleb128 0x3b
	.long	.LASF754
	.byte	0x2
	.byte	0xe1
	.long	0x185e
	.byte	0x9
	.byte	0x3
	.quad	ARC_mfu_ghost
	.uleb128 0x3b
	.long	.LASF755
	.byte	0x2
	.byte	0xe2
	.long	0x185e
	.byte	0x9
	.byte	0x3
	.quad	ARC_l2c_only
	.uleb128 0x2a
	.long	.LASF444
	.byte	0x2
	.value	0x115
	.long	0x1b39
	.byte	0x9
	.byte	0x3
	.quad	arc_stats
	.uleb128 0x2a
	.long	.LASF756
	.byte	0x2
	.value	0x16d
	.long	0x1c44
	.byte	0x9
	.byte	0x3
	.quad	arc_anon
	.uleb128 0x2a
	.long	.LASF757
	.byte	0x2
	.value	0x16e
	.long	0x1c44
	.byte	0x9
	.byte	0x3
	.quad	arc_mru
	.uleb128 0x2a
	.long	.LASF758
	.byte	0x2
	.value	0x16f
	.long	0x1c44
	.byte	0x9
	.byte	0x3
	.quad	arc_mru_ghost
	.uleb128 0x2a
	.long	.LASF759
	.byte	0x2
	.value	0x170
	.long	0x1c44
	.byte	0x9
	.byte	0x3
	.quad	arc_mfu
	.uleb128 0x2a
	.long	.LASF760
	.byte	0x2
	.value	0x171
	.long	0x1c44
	.byte	0x9
	.byte	0x3
	.quad	arc_mfu_ghost
	.uleb128 0x2a
	.long	.LASF761
	.byte	0x2
	.value	0x172
	.long	0x1c44
	.byte	0x9
	.byte	0x3
	.quad	arc_l2c_only
	.uleb128 0x2a
	.long	.LASF762
	.byte	0x2
	.value	0x182
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	arc_no_grow
	.uleb128 0x2a
	.long	.LASF763
	.byte	0x2
	.value	0x183
	.long	0x3e1
	.byte	0x9
	.byte	0x3
	.quad	arc_tempreserve
	.uleb128 0x2a
	.long	.LASF764
	.byte	0x2
	.value	0x184
	.long	0x3e1
	.byte	0x9
	.byte	0x3
	.quad	arc_meta_used
	.uleb128 0x2a
	.long	.LASF765
	.byte	0x2
	.value	0x185
	.long	0x3e1
	.byte	0x9
	.byte	0x3
	.quad	arc_meta_limit
	.uleb128 0x2a
	.long	.LASF766
	.byte	0x2
	.value	0x186
	.long	0x3e1
	.byte	0x9
	.byte	0x3
	.quad	arc_meta_max
	.uleb128 0x2a
	.long	.LASF767
	.byte	0x2
	.value	0x1c6
	.long	0x13e4
	.byte	0x9
	.byte	0x3
	.quad	arc_eviction_list
	.uleb128 0x2a
	.long	.LASF768
	.byte	0x2
	.value	0x1c7
	.long	0x7ad
	.byte	0x9
	.byte	0x3
	.quad	arc_eviction_mtx
	.uleb128 0x2a
	.long	.LASF769
	.byte	0x2
	.value	0x1c8
	.long	0x1207
	.byte	0x9
	.byte	0x3
	.quad	arc_eviction_hdr
	.uleb128 0x2a
	.long	.LASF510
	.byte	0x2
	.value	0x20e
	.long	0x1cde
	.byte	0x9
	.byte	0x3
	.quad	buf_hash_table
	.uleb128 0x2a
	.long	.LASF770
	.byte	0x2
	.value	0x23e
	.long	0x8a6
	.byte	0x9
	.byte	0x3
	.quad	L2ARC_dev_list
	.uleb128 0x2a
	.long	.LASF771
	.byte	0x2
	.value	0x23f
	.long	0x1d9d
	.byte	0x9
	.byte	0x3
	.quad	l2arc_dev_list
	.uleb128 0x2a
	.long	.LASF772
	.byte	0x2
	.value	0x240
	.long	0x7ad
	.byte	0x9
	.byte	0x3
	.quad	l2arc_dev_mtx
	.uleb128 0x2a
	.long	.LASF773
	.byte	0x2
	.value	0x241
	.long	0x1e42
	.byte	0x9
	.byte	0x3
	.quad	l2arc_dev_last
	.uleb128 0x2a
	.long	.LASF774
	.byte	0x2
	.value	0x242
	.long	0x7ad
	.byte	0x9
	.byte	0x3
	.quad	l2arc_buflist_mtx
	.uleb128 0x2a
	.long	.LASF775
	.byte	0x2
	.value	0x243
	.long	0x8a6
	.byte	0x9
	.byte	0x3
	.quad	L2ARC_free_on_write
	.uleb128 0x2a
	.long	.LASF776
	.byte	0x2
	.value	0x244
	.long	0x1d9d
	.byte	0x9
	.byte	0x3
	.quad	l2arc_free_on_write
	.uleb128 0x2a
	.long	.LASF777
	.byte	0x2
	.value	0x245
	.long	0x7ad
	.byte	0x9
	.byte	0x3
	.quad	l2arc_free_on_write_mtx
	.uleb128 0x2a
	.long	.LASF778
	.byte	0x2
	.value	0x246
	.long	0x3e1
	.byte	0x9
	.byte	0x3
	.quad	l2arc_ndev
	.uleb128 0x2a
	.long	.LASF779
	.byte	0x2
	.value	0x263
	.long	0x7ad
	.byte	0x9
	.byte	0x3
	.quad	l2arc_feed_thr_lock
	.uleb128 0x2a
	.long	.LASF780
	.byte	0x2
	.value	0x264
	.long	0x808
	.byte	0x9
	.byte	0x3
	.quad	l2arc_feed_thr_cv
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x2
	.value	0x265
	.long	0x3cb
	.byte	0x9
	.byte	0x3
	.quad	l2arc_thread_exit
	.uleb128 0x2a
	.long	.LASF782
	.byte	0x2
	.value	0x2e2
	.long	0x369d
	.byte	0x9
	.byte	0x3
	.quad	hdr_cache
	.uleb128 0x2a
	.long	.LASF783
	.byte	0x2
	.value	0x2e3
	.long	0x369d
	.byte	0x9
	.byte	0x3
	.quad	buf_cache
	.uleb128 0x3c
	.long	.LASF784
	.byte	0x21
	.byte	0x20
	.long	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF785
	.byte	0x21
	.byte	0x21
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF786
	.byte	0xb
	.byte	0x93
	.long	0x661
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF787
	.byte	0x22
	.byte	0x27
	.long	0x3e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF788
	.byte	0x23
	.byte	0x33
	.long	0x57
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xb69
	.long	0x57a7
	.uleb128 0xb
	.long	0x8d
	.byte	0x26
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF789
	.byte	0x18
	.value	0x1ec
	.long	0x57b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	0x5797
	.uleb128 0xa
	.long	0x3e1
	.long	0x57ca
	.uleb128 0xb
	.long	0x8d
	.byte	0xff
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF790
	.byte	0x2
	.value	0x217
	.long	0x57ba
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zfs_crc64_table
	.uleb128 0xa
	.long	0x3cb
	.long	0x57f1
	.uleb128 0xb
	.long	0x8d
	.byte	0x9
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF791
	.byte	0x1b
	.byte	0xbe
	.long	0x57e1
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x11fc
	.long	0x580e
	.uleb128 0xb
	.long	0x8d
	.byte	0x8
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF792
	.byte	0x1c
	.byte	0x34
	.long	0x57fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF793
	.byte	0x2
	.byte	0x91
	.long	0x57
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF794
	.byte	0x2
	.byte	0x92
	.long	0x3e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF795
	.byte	0x2
	.byte	0x96
	.long	0x431
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	arc_reduce_dnlc_percent
	.uleb128 0x3f
	.long	.LASF796
	.byte	0x2
	.byte	0xb0
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zfs_arc_max
	.uleb128 0x3f
	.long	.LASF797
	.byte	0x2
	.byte	0xb1
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zfs_arc_min
	.uleb128 0x3f
	.long	.LASF798
	.byte	0x2
	.byte	0xb2
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zfs_arc_meta_limit
	.uleb128 0x3f
	.long	.LASF799
	.byte	0x2
	.byte	0xb3
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zfs_mdcomp_disable
	.uleb128 0x3e
	.long	.LASF800
	.byte	0x2
	.value	0x16c
	.long	0x58ba
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	arc_ksp
	.uleb128 0x7
	.byte	0x4
	.long	0x169f
	.uleb128 0x3e
	.long	.LASF801
	.byte	0x2
	.value	0x227
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	l2arc_write_max
	.uleb128 0x3e
	.long	.LASF802
	.byte	0x2
	.value	0x228
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	l2arc_write_boost
	.uleb128 0x3e
	.long	.LASF803
	.byte	0x2
	.value	0x229
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	l2arc_headroom
	.uleb128 0x3e
	.long	.LASF804
	.byte	0x2
	.value	0x22a
	.long	0x3e1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	l2arc_feed_secs
	.uleb128 0x3e
	.long	.LASF805
	.byte	0x2
	.value	0x22b
	.long	0x41b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	l2arc_noprefetch
	.uleb128 0x3e
	.long	.LASF806
	.byte	0x2
	.value	0x6d1
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	arc_shrink_shift
	.uleb128 0xa
	.long	0x369d
	.long	0x5955
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF807
	.byte	0x2
	.value	0x733
	.long	0x594a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF808
	.byte	0x2
	.value	0x734
	.long	0x594a
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x39a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5972
	.long	0x2415
	.string	"arc_buf_thaw"
	.long	0x2447
	.string	"arc_buf_freeze"
	.long	0x28da
	.string	"arc_space_consume"
	.long	0x290c
	.string	"arc_space_return"
	.long	0x2957
	.string	"arc_data_buf_alloc"
	.long	0x298d
	.string	"arc_data_buf_free"
	.long	0x29f7
	.string	"arc_buf_alloc"
	.long	0x2b48
	.string	"arc_buf_add_ref"
	.long	0x2f3e
	.string	"arc_buf_free"
	.long	0x3000
	.string	"arc_buf_remove_ref"
	.long	0x309b
	.string	"arc_buf_size"
	.long	0x3568
	.string	"arc_flush"
	.long	0x35b3
	.string	"arc_shrink"
	.long	0x398d
	.string	"arc_bcopy_func"
	.long	0x39f6
	.string	"arc_getbuf_func"
	.long	0x3bab
	.string	"arc_read"
	.long	0x3d56
	.string	"arc_read_nolock"
	.long	0x4001
	.string	"arc_tryread"
	.long	0x40ba
	.string	"arc_set_callback"
	.long	0x4123
	.string	"arc_buf_evict"
	.long	0x424e
	.string	"arc_release"
	.long	0x447d
	.string	"arc_released"
	.long	0x44b3
	.string	"arc_has_callback"
	.long	0x44e9
	.string	"arc_referenced"
	.long	0x479e
	.string	"arc_write"
	.long	0x48fe
	.string	"arc_free"
	.long	0x4a6e
	.string	"arc_tempreserve_clear"
	.long	0x4ac9
	.string	"arc_tempreserve_space"
	.long	0x4b36
	.string	"arc_init"
	.long	0x4b54
	.string	"arc_fini"
	.long	0x51df
	.string	"l2arc_vdev_present"
	.long	0x5223
	.string	"l2arc_add_vdev"
	.long	0x52fe
	.string	"l2arc_remove_vdev"
	.long	0x5375
	.string	"l2arc_init"
	.long	0x5393
	.string	"l2arc_fini"
	.long	0x57ca
	.string	"zfs_crc64_table"
	.long	0x5835
	.string	"arc_reduce_dnlc_percent"
	.long	0x584b
	.string	"zfs_arc_max"
	.long	0x5861
	.string	"zfs_arc_min"
	.long	0x5877
	.string	"zfs_arc_meta_limit"
	.long	0x588d
	.string	"zfs_mdcomp_disable"
	.long	0x58a3
	.string	"arc_ksp"
	.long	0x58c0
	.string	"l2arc_write_max"
	.long	0x58d7
	.string	"l2arc_write_boost"
	.long	0x58ee
	.string	"l2arc_headroom"
	.long	0x5905
	.string	"l2arc_feed_secs"
	.long	0x591c
	.string	"l2arc_noprefetch"
	.long	0x5933
	.string	"arc_shrink_shift"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0x0
	.value	0x0
	.value	0x0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	.LBB93-.Ltext0
	.quad	.LBE93-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF400:
	.string	"callb_cpr_t"
.LASF519:
	.string	"l2ad_write"
.LASF668:
	.string	"exists"
.LASF117:
	.string	"avl_node_t"
.LASF38:
	.string	"__align"
.LASF228:
	.string	"ZIO_STAGE_CLAIM_GANG_MEMBERS"
.LASF242:
	.string	"ZIO_STAGE_DONE"
.LASF746:
	.string	"arc_grow_retry"
.LASF715:
	.string	"l2arc_read_done"
.LASF99:
	.string	"_unused2"
.LASF246:
	.string	"zt_size"
.LASF240:
	.string	"ZIO_STAGE_READ_DECOMPRESS"
.LASF287:
	.string	"io_child"
.LASF302:
	.string	"io_vsd"
.LASF87:
	.string	"_fileno"
.LASF28:
	.string	"__pthread_mutex_s"
.LASF460:
	.string	"arcstat_recycle_miss"
.LASF313:
	.string	"io_type"
.LASF167:
	.string	"DMU_OT_NONE"
.LASF572:
	.string	"force"
.LASF296:
	.string	"io_bp_orig"
.LASF41:
	.string	"__total_seq"
.LASF147:
	.string	"ZIO_TYPE_IOCTL"
.LASF560:
	.string	"vbuf"
.LASF207:
	.string	"dmu_object_type_t"
.LASF107:
	.string	"avl_parent"
.LASF311:
	.string	"io_flags"
.LASF65:
	.string	"B_TRUE"
.LASF252:
	.string	"ZIO_CHECKSUM_OFF"
.LASF741:
	.string	"l2arc_init"
.LASF677:
	.string	"nhdr"
.LASF726:
	.string	"write_sz"
.LASF364:
	.string	"b_refcnt"
.LASF624:
	.string	"bytes_deleted"
.LASF553:
	.string	"buf_hash_insert"
.LASF289:
	.string	"io_sibling_next"
.LASF297:
	.string	"io_data"
.LASF92:
	.string	"_shortbuf"
.LASF719:
	.string	"l2arc_evict"
.LASF413:
	.string	"ks_data"
.LASF381:
	.string	"arc_buf_contents_t"
.LASF281:
	.string	"io_checksum"
.LASF539:
	.string	"l2arc_data_free"
.LASF399:
	.string	"cc_lockp"
.LASF760:
	.string	"arc_mfu_ghost"
.LASF551:
	.string	"lockp"
.LASF660:
	.string	"done"
.LASF532:
	.string	"l2rcb_zb"
.LASF663:
	.string	"zio_flags"
.LASF514:
	.string	"buf_hash_table_t"
.LASF417:
	.string	"ks_update"
.LASF446:
	.string	"arcstat_misses"
.LASF382:
	.string	"writeprops"
.LASF782:
	.string	"hdr_cache"
.LASF784:
	.string	"_pagesize"
.LASF333:
	.string	"zb_objset"
.LASF106:
	.string	"avl_child"
.LASF376:
	.string	"arc_evict_func_t"
.LASF132:
	.string	"list_next"
.LASF154:
	.string	"dva_t"
.LASF303:
	.string	"io_offset"
.LASF229:
	.string	"ZIO_STAGE_DVA_ALLOCATE"
.LASF73:
	.string	"_flags"
.LASF278:
	.string	"io_root"
.LASF368:
	.string	"arc_buf_t"
.LASF709:
	.string	"next"
.LASF762:
	.string	"arc_no_grow"
.LASF319:
	.string	"io_cmd"
.LASF9:
	.string	"__off_t"
.LASF390:
	.string	"writeprops_t"
.LASF693:
	.string	"l2arc"
.LASF501:
	.string	"acb_zio_dummy"
.LASF191:
	.string	"DMU_OT_ZVOL_PROP"
.LASF567:
	.string	"hsize"
.LASF751:
	.string	"ARC_mru"
.LASF738:
	.string	"l2arc_remove_vdev"
.LASF42:
	.string	"__wakeup_seq"
.LASF344:
	.string	"zio_checksum_info_t"
.LASF518:
	.string	"l2ad_hand"
.LASF93:
	.string	"_lock"
.LASF126:
	.string	"rw_lock"
.LASF184:
	.string	"DMU_OT_ZNODE"
.LASF370:
	.string	"b_hdr"
.LASF477:
	.string	"arcstat_l2_rw_clash"
.LASF652:
	.string	"arc_read_done"
.LASF563:
	.string	"hdr_dest"
.LASF326:
	.string	"io_children_notdone"
.LASF285:
	.string	"io_bp"
.LASF542:
	.string	"l2df_func"
.LASF521:
	.string	"l2ad_start"
.LASF729:
	.string	"buf_data"
.LASF483:
	.string	"arcstat_l2_evict_reading"
.LASF250:
	.string	"ZIO_CHECKSUM_INHERIT"
.LASF398:
	.string	"callb_cpr"
.LASF19:
	.string	"int32_t"
.LASF627:
	.string	"arc_adjust"
.LASF43:
	.string	"__woken_seq"
.LASF763:
	.string	"arc_tempreserve"
.LASF263:
	.string	"ZIO_COMPRESS_OFF"
.LASF811:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool"
.LASF329:
	.string	"io_cv"
.LASF642:
	.string	"last_reclaim"
.LASF722:
	.string	"l2arc_write_buffers"
.LASF230:
	.string	"ZIO_STAGE_DVA_FREE"
.LASF593:
	.string	"arc_data_buf_free"
.LASF366:
	.string	"b_l2node"
.LASF774:
	.string	"l2arc_buflist_mtx"
.LASF662:
	.string	"priority"
.LASF231:
	.string	"ZIO_STAGE_DVA_CLAIM"
.LASF566:
	.string	"buf_init"
.LASF520:
	.string	"l2ad_boost"
.LASF647:
	.string	"mru_used"
.LASF67:
	.string	"uchar_t"
.LASF44:
	.string	"__mutex"
.LASF628:
	.string	"top_sz"
.LASF79:
	.string	"_IO_write_end"
.LASF249:
	.string	"zio_checksum"
.LASF721:
	.string	"taddr"
.LASF808:
	.string	"zio_data_buf_cache"
.LASF31:
	.string	"__owner"
.LASF298:
	.string	"io_size"
.LASF710:
	.string	"buflist"
.LASF547:
	.string	"birth"
.LASF315:
	.string	"io_orig_stage"
.LASF801:
	.string	"l2arc_write_max"
.LASF770:
	.string	"L2ARC_dev_list"
.LASF648:
	.string	"mfu_space"
.LASF29:
	.string	"__lock"
.LASF215:
	.string	"dkc_callback"
.LASF205:
	.string	"DMU_OT_SCRUB_QUEUE"
.LASF458:
	.string	"arcstat_mfu_ghost_hits"
.LASF27:
	.string	"__pthread_list_t"
.LASF534:
	.string	"l2arc_read_callback_t"
.LASF526:
	.string	"l2ad_node"
.LASF426:
	.string	"ui64"
.LASF661:
	.string	"private"
.LASF802:
	.string	"l2arc_write_boost"
.LASF411:
	.string	"ks_class"
.LASF248:
	.string	"zt_next"
.LASF609:
	.string	"arc_buf_remove_ref"
.LASF635:
	.string	"to_free"
.LASF51:
	.string	"__nr_readers_queued"
.LASF199:
	.string	"DMU_OT_DSL_PERMS"
.LASF362:
	.string	"b_arc_node"
.LASF375:
	.string	"arc_done_func_t"
.LASF445:
	.string	"arcstat_hits"
.LASF482:
	.string	"arcstat_l2_evict_lock_retry"
.LASF291:
	.string	"io_logical"
.LASF766:
	.string	"arc_meta_max"
.LASF389:
	.string	"wp_oschecksum"
.LASF11:
	.string	"__clock_t"
.LASF45:
	.string	"__nwaiters"
.LASF543:
	.string	"l2df_list_node"
.LASF596:
	.string	"type"
.LASF408:
	.string	"ks_instance"
.LASF177:
	.string	"DMU_OT_DNODE"
.LASF698:
	.string	"arc_memory_throttle"
.LASF472:
	.string	"arcstat_size"
.LASF493:
	.string	"l2arc_buf_hdr"
.LASF124:
	.string	"thr_count"
.LASF459:
	.string	"arcstat_deleted"
.LASF638:
	.string	"prev_cache"
.LASF116:
	.string	"avl_tree_t"
.LASF505:
	.string	"awcb_private"
.LASF448:
	.string	"arcstat_demand_data_misses"
.LASF523:
	.string	"l2ad_evict"
.LASF671:
	.string	"arc_set_callback"
.LASF474:
	.string	"arcstat_l2_hits"
.LASF182:
	.string	"DMU_OT_DSL_PROPS"
.LASF420:
	.string	"ks_lock"
.LASF735:
	.string	"l2arc_add_vdev"
.LASF290:
	.string	"io_transform_stack"
.LASF367:
	.string	"b_datalock"
.LASF490:
	.string	"arcstat_memory_throttle_count"
.LASF499:
	.string	"acb_done"
.LASF312:
	.string	"io_orig_flags"
.LASF36:
	.string	"__data"
.LASF58:
	.string	"pthread_rwlock_t"
.LASF704:
	.string	"arc_fini"
.LASF441:
	.string	"arcs_size"
.LASF395:
	.string	"rc_count"
.LASF157:
	.string	"zio_cksum_t"
.LASF127:
	.string	"krwlock_t"
.LASF484:
	.string	"arcstat_l2_free_on_write"
.LASF86:
	.string	"_chain"
.LASF327:
	.string	"io_waiter"
.LASF700:
	.string	"arc_tempreserve_clear"
.LASF169:
	.string	"DMU_OT_OBJECT_ARRAY"
.LASF792:
	.string	"zio_checksum_table"
.LASF0:
	.string	"unsigned char"
.LASF170:
	.string	"DMU_OT_PACKED_NVLIST"
.LASF318:
	.string	"io_dk_callback"
.LASF806:
	.string	"arc_shrink_shift"
.LASF497:
	.string	"arc_callback"
.LASF502:
	.string	"acb_next"
.LASF52:
	.string	"__nr_writers_queued"
.LASF39:
	.string	"pthread_mutex_t"
.LASF750:
	.string	"ARC_anon"
.LASF812:
	.string	"_IO_lock_t"
.LASF427:
	.string	"float"
.LASF707:
	.string	"l2arc_dev_get_next"
.LASF347:
	.string	"b_dva"
.LASF650:
	.string	"arc_bcopy_func"
.LASF768:
	.string	"arc_eviction_mtx"
.LASF410:
	.string	"ks_type"
.LASF185:
	.string	"DMU_OT_OLDACL"
.LASF211:
	.string	"ot_metadata"
.LASF754:
	.string	"ARC_mfu_ghost"
.LASF322:
	.string	"io_numerrors"
.LASF219:
	.string	"ZIO_STAGE_OPEN"
.LASF145:
	.string	"ZIO_TYPE_FREE"
.LASF713:
	.string	"head"
.LASF175:
	.string	"DMU_OT_SPACE_MAP"
.LASF576:
	.string	"delta"
.LASF620:
	.string	"stolen"
.LASF764:
	.string	"arc_meta_used"
.LASF727:
	.string	"buf_sz"
.LASF359:
	.string	"b_size"
.LASF401:
	.string	"kid_t"
.LASF153:
	.string	"dva_word"
.LASF373:
	.string	"b_efunc"
.LASF759:
	.string	"arc_mfu"
.LASF33:
	.string	"__kind"
.LASF377:
	.string	"arc_buf_contents"
.LASF61:
	.string	"uint64_t"
.LASF203:
	.string	"DMU_OT_FUID_SIZE"
.LASF330:
	.string	"io_ena"
.LASF558:
	.string	"buf_fini"
.LASF615:
	.string	"bytes_evicted"
.LASF522:
	.string	"l2ad_end"
.LASF112:
	.string	"avl_compar"
.LASF128:
	.string	"kcondvar_t"
.LASF454:
	.string	"arcstat_prefetch_metadata_misses"
.LASF450:
	.string	"arcstat_demand_metadata_misses"
.LASF508:
	.string	"awcb_buf"
.LASF294:
	.string	"io_done"
.LASF578:
	.string	"__left"
.LASF714:
	.string	"abl2"
.LASF16:
	.string	"daddr_t"
.LASF149:
	.string	"spa_t"
.LASF309:
	.string	"io_delegate_list"
.LASF733:
	.string	"l2arc_feed_thread"
.LASF471:
	.string	"arcstat_c_max"
.LASF78:
	.string	"_IO_write_ptr"
.LASF317:
	.string	"io_priority"
.LASF235:
	.string	"ZIO_STAGE_VDEV_IO_DONE"
.LASF122:
	.string	"krwlock"
.LASF756:
	.string	"arc_anon"
.LASF631:
	.string	"tbl_over"
.LASF753:
	.string	"ARC_mfu"
.LASF598:
	.string	"from"
.LASF181:
	.string	"DMU_OT_DSL_DS_SNAP_MAP"
.LASF70:
	.string	"longlong_t"
.LASF146:
	.string	"ZIO_TYPE_CLAIM"
.LASF512:
	.string	"ht_table"
.LASF679:
	.string	"flags"
.LASF804:
	.string	"l2arc_feed_secs"
.LASF491:
	.string	"arc_stats_t"
.LASF787:
	.string	"physmem"
.LASF813:
	.string	"arc_reclaim_needed"
.LASF216:
	.string	"dkc_cookie"
.LASF286:
	.string	"io_bp_copy"
.LASF37:
	.string	"__size"
.LASF123:
	.string	"mutex"
.LASF577:
	.string	"size"
.LASF476:
	.string	"arcstat_l2_feeds"
.LASF187:
	.string	"DMU_OT_DIRECTORY_CONTENTS"
.LASF306:
	.string	"io_offset_node"
.LASF355:
	.string	"b_datacnt"
.LASF634:
	.string	"arc_shrink"
.LASF406:
	.string	"ks_module"
.LASF53:
	.string	"__writer"
.LASF605:
	.string	"arc_hdr_destroy"
.LASF702:
	.string	"error"
.LASF18:
	.string	"size_t"
.LASF643:
	.string	"arc_adapt"
.LASF30:
	.string	"__count"
.LASF583:
	.string	"arc_change_state"
.LASF59:
	.string	"uint8_t"
.LASF162:
	.string	"blk_birth"
.LASF360:
	.string	"b_spa"
.LASF640:
	.string	"arc_reclaim_thread"
.LASF682:
	.string	"arc_referenced"
.LASF357:
	.string	"b_cv"
.LASF331:
	.string	"zio_done_func_t"
.LASF794:
	.string	"zfs_write_limit_max"
.LASF293:
	.string	"io_ready"
.LASF599:
	.string	"arc_buf_add_ref"
.LASF716:
	.string	"l2arc_list_locked"
.LASF239:
	.string	"ZIO_STAGE_READ_GANG_MEMBERS"
.LASF561:
	.string	"unused"
.LASF591:
	.string	"space"
.LASF723:
	.string	"target_sz"
.LASF320:
	.string	"io_retries"
.LASF452:
	.string	"arcstat_prefetch_data_misses"
.LASF379:
	.string	"ARC_BUFC_METADATA"
.LASF433:
	.string	"kstat_named_t"
.LASF574:
	.string	"arc_buf_freeze"
.LASF489:
	.string	"arcstat_l2_hdr_size"
.LASF691:
	.string	"ismd"
.LASF82:
	.string	"_IO_save_base"
.LASF456:
	.string	"arcstat_mru_ghost_hits"
.LASF424:
	.string	"addr"
.LASF674:
	.string	"arc_release"
.LASF261:
	.string	"ZIO_COMPRESS_INHERIT"
.LASF201:
	.string	"DMU_OT_SYSACL"
.LASF525:
	.string	"l2ad_buflist"
.LASF221:
	.string	"ZIO_STAGE_READ_INIT"
.LASF455:
	.string	"arcstat_mru_hits"
.LASF166:
	.string	"dmu_object_type"
.LASF425:
	.string	"ui32"
.LASF708:
	.string	"first"
.LASF386:
	.string	"wp_dncompress"
.LASF524:
	.string	"l2ad_first"
.LASF225:
	.string	"ZIO_STAGE_GET_GANG_HEADER"
.LASF573:
	.string	"arc_buf_thaw"
.LASF457:
	.string	"arcstat_mfu_hits"
.LASF237:
	.string	"ZIO_STAGE_WAIT_FOR_CHILDREN_DONE"
.LASF747:
	.string	"arc_min_prefetch_lifespan"
.LASF56:
	.string	"__pad2"
.LASF238:
	.string	"ZIO_STAGE_CHECKSUM_VERIFY"
.LASF214:
	.string	"dk_callback"
.LASF356:
	.string	"b_acb"
.LASF608:
	.string	"destroy_hdr"
.LASF244:
	.string	"zio_transform"
.LASF292:
	.string	"zio_link_node"
.LASF209:
	.string	"dmu_object_type_info"
.LASF680:
	.string	"arc_released"
.LASF481:
	.string	"arcstat_l2_writes_hdr_miss"
.LASF407:
	.string	"ks_resv"
.LASF200:
	.string	"DMU_OT_ACL"
.LASF134:
	.string	"list"
.LASF541:
	.string	"l2df_size"
.LASF658:
	.string	"arc_read"
.LASF24:
	.string	"__pthread_internal_list"
.LASF415:
	.string	"ks_data_size"
.LASF25:
	.string	"__prev"
.LASF383:
	.string	"wp_type"
.LASF632:
	.string	"arc_do_user_evicts"
.LASF687:
	.string	"cksump"
.LASF68:
	.string	"uint_t"
.LASF639:
	.string	"prev_data_cache"
.LASF725:
	.string	"passed_sz"
.LASF391:
	.string	"refcount"
.LASF432:
	.string	"value"
.LASF299:
	.string	"io_vd"
.LASF625:
	.string	"bufs_skipped"
.LASF485:
	.string	"arcstat_l2_abort_lowmem"
.LASF275:
	.string	"ZIO_COMPRESS_FUNCTIONS"
.LASF101:
	.string	"_next"
.LASF144:
	.string	"ZIO_TYPE_WRITE"
.LASF470:
	.string	"arcstat_c_min"
.LASF772:
	.string	"l2arc_dev_mtx"
.LASF354:
	.string	"b_flags"
.LASF510:
	.string	"buf_hash_table"
.LASF50:
	.string	"__writer_wakeup"
.LASF397:
	.string	"refcount_t"
.LASF467:
	.string	"arcstat_hash_chain_max"
.LASF393:
	.string	"rc_list"
.LASF814:
	.string	"l2arc_do_free_on_write"
.LASF160:
	.string	"blk_prop"
.LASF405:
	.string	"ks_kid"
.LASF533:
	.string	"l2rcb_flags"
.LASF156:
	.string	"zc_word"
.LASF585:
	.string	"old_state"
.LASF701:
	.string	"arc_tempreserve_space"
.LASF189:
	.string	"DMU_OT_UNLINKED_SET"
.LASF380:
	.string	"ARC_BUFC_NUMTYPES"
.LASF810:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/arc.c"
.LASF129:
	.string	"umem_cache_t"
.LASF803:
	.string	"l2arc_headroom"
.LASF342:
	.string	"ci_zbt"
.LASF46:
	.string	"__broadcast_seq"
.LASF23:
	.string	"timespec"
.LASF654:
	.string	"abuf"
.LASF651:
	.string	"arc_getbuf_func"
.LASF793:
	.string	"zfs_write_limit_shift"
.LASF796:
	.string	"zfs_arc_max"
.LASF587:
	.string	"from_delta"
.LASF253:
	.string	"ZIO_CHECKSUM_LABEL"
.LASF109:
	.string	"avl_balance"
.LASF47:
	.string	"pthread_cond_t"
.LASF589:
	.string	"use_mutex"
.LASF276:
	.string	"zio_t"
.LASF724:
	.string	"hdrl2"
.LASF337:
	.string	"zbookmark_t"
.LASF188:
	.string	"DMU_OT_MASTER_NODE"
.LASF436:
	.string	"ARC_RECLAIM_CONS"
.LASF538:
	.string	"l2arc_write_callback_t"
.LASF186:
	.string	"DMU_OT_PLAIN_FILE_CONTENTS"
.LASF666:
	.string	"rzio"
.LASF653:
	.string	"found"
.LASF121:
	.string	"kmutex_t"
.LASF385:
	.string	"wp_level"
.LASF603:
	.string	"arc_buf_destroy"
.LASF786:
	.string	"stderr"
.LASF350:
	.string	"b_freeze_lock"
.LASF140:
	.string	"boolean"
.LASF226:
	.string	"ZIO_STAGE_REWRITE_GANG_MEMBERS"
.LASF190:
	.string	"DMU_OT_ZVOL"
.LASF597:
	.string	"arc_buf_clone"
.LASF430:
	.string	"name"
.LASF277:
	.string	"io_parent"
.LASF102:
	.string	"_sbuf"
.LASF434:
	.string	"arc_reclaim_strategy"
.LASF84:
	.string	"_IO_save_end"
.LASF656:
	.string	"freeable"
.LASF26:
	.string	"__next"
.LASF559:
	.string	"hdr_cons"
.LASF769:
	.string	"arc_eviction_hdr"
.LASF646:
	.string	"arc_get_data_buf"
.LASF180:
	.string	"DMU_OT_DSL_DIR_CHILD_MAP"
.LASF552:
	.string	"hash_lock"
.LASF13:
	.string	"__time_t"
.LASF703:
	.string	"arc_init"
.LASF464:
	.string	"arcstat_hash_elements_max"
.LASF586:
	.string	"refcnt"
.LASF498:
	.string	"acb_private"
.LASF555:
	.string	"__PRETTY_FUNCTION__"
.LASF158:
	.string	"blkptr"
.LASF17:
	.string	"clock_t"
.LASF800:
	.string	"arc_ksp"
.LASF565:
	.string	"__func__"
.LASF142:
	.string	"ZIO_TYPE_NULL"
.LASF416:
	.string	"ks_snaptime"
.LASF530:
	.string	"l2rcb_spa"
.LASF105:
	.string	"avl_node"
.LASF14:
	.string	"__daddr_t"
.LASF556:
	.string	"bufp"
.LASF557:
	.string	"buf_hash_remove"
.LASF1:
	.string	"short unsigned int"
.LASF503:
	.string	"arc_write_callback_t"
.LASF4:
	.string	"signed char"
.LASF346:
	.string	"arc_buf_hdr"
.LASF179:
	.string	"DMU_OT_DSL_DIR"
.LASF600:
	.string	"arc_buf_data_free"
.LASF695:
	.string	"cksum"
.LASF736:
	.string	"start"
.LASF223:
	.string	"ZIO_STAGE_WRITE_COMPRESS"
.LASF195:
	.string	"DMU_OT_ERROR_LOG"
.LASF507:
	.string	"awcb_done"
.LASF247:
	.string	"zt_bufsize"
.LASF204:
	.string	"DMU_OT_NEXT_CLONES"
.LASF696:
	.string	"comp"
.LASF192:
	.string	"DMU_OT_PLAIN_OTHER"
.LASF136:
	.string	"list_offset"
.LASF546:
	.string	"buf_hash"
.LASF224:
	.string	"ZIO_STAGE_CHECKSUM_GENERATE"
.LASF10:
	.string	"__off64_t"
.LASF404:
	.string	"ks_next"
.LASF76:
	.string	"_IO_read_base"
.LASF119:
	.string	"m_owner"
.LASF509:
	.string	"ht_lock"
.LASF94:
	.string	"_offset"
.LASF394:
	.string	"rc_removed"
.LASF251:
	.string	"ZIO_CHECKSUM_ON"
.LASF582:
	.string	"state"
.LASF81:
	.string	"_IO_buf_end"
.LASF439:
	.string	"arcs_list"
.LASF325:
	.string	"io_children_notready"
.LASF767:
	.string	"arc_eviction_list"
.LASF361:
	.string	"b_state"
.LASF335:
	.string	"zb_level"
.LASF234:
	.string	"ZIO_STAGE_VDEV_IO_START"
.LASF734:
	.string	"l2arc_vdev_present"
.LASF130:
	.string	"kmem_cache_t"
.LASF210:
	.string	"ot_byteswap"
.LASF392:
	.string	"rc_mtx"
.LASF684:
	.string	"callback"
.LASF785:
	.string	"_pageshift"
.LASF98:
	.string	"_mode"
.LASF113:
	.string	"avl_offset"
.LASF174:
	.string	"DMU_OT_SPACE_MAP_HEADER"
.LASF797:
	.string	"zfs_arc_min"
.LASF77:
	.string	"_IO_write_base"
.LASF213:
	.string	"dmu_object_type_info_t"
.LASF506:
	.string	"awcb_ready"
.LASF657:
	.string	"func"
.LASF564:
	.string	"hdr_recl"
.LASF358:
	.string	"b_type"
.LASF742:
	.string	"l2arc_fini"
.LASF728:
	.string	"headroom"
.LASF155:
	.string	"zio_cksum"
.LASF590:
	.string	"arc_space_consume"
.LASF328:
	.string	"io_lock"
.LASF254:
	.string	"ZIO_CHECKSUM_GANG_HEADER"
.LASF323:
	.string	"io_pipeline"
.LASF685:
	.string	"arc_write_done"
.LASF307:
	.string	"io_deadline_node"
.LASF673:
	.string	"copy"
.LASF614:
	.string	"evicted_state"
.LASF636:
	.string	"arc_kmem_reap_now"
.LASF442:
	.string	"arcs_mtx"
.LASF283:
	.string	"io_ndvas"
.LASF548:
	.string	"spav"
.LASF611:
	.string	"arc_buf_size"
.LASF535:
	.string	"l2arc_write_callback"
.LASF233:
	.string	"ZIO_STAGE_READY"
.LASF12:
	.string	"long int"
.LASF745:
	.string	"arc_thread_exit"
.LASF64:
	.string	"B_FALSE"
.LASF488:
	.string	"arcstat_l2_size"
.LASF222:
	.string	"ZIO_STAGE_ISSUE_ASYNC"
.LASF100:
	.string	"_IO_marker"
.LASF681:
	.string	"arc_has_callback"
.LASF372:
	.string	"b_data"
.LASF683:
	.string	"arc_write_ready"
.LASF479:
	.string	"arcstat_l2_writes_done"
.LASF435:
	.string	"ARC_RECLAIM_AGGR"
.LASF48:
	.string	"__nr_readers"
.LASF504:
	.string	"arc_write_callback"
.LASF641:
	.string	"growtime"
.LASF66:
	.string	"boolean_t"
.LASF171:
	.string	"DMU_OT_PACKED_NVLIST_SIZE"
.LASF664:
	.string	"arc_flags"
.LASF776:
	.string	"l2arc_free_on_write"
.LASF208:
	.string	"arc_byteswap_func_t"
.LASF732:
	.string	"wzio"
.LASF378:
	.string	"ARC_BUFC_DATA"
.LASF496:
	.string	"arc_callback_t"
.LASF549:
	.string	"vdva"
.LASF617:
	.string	"missed"
.LASF332:
	.string	"zbookmark"
.LASF440:
	.string	"arcs_lsize"
.LASF60:
	.string	"uint32_t"
.LASF104:
	.string	"hrtime_t"
.LASF706:
	.string	"l2arc_hdr_stat_remove"
.LASF161:
	.string	"blk_pad"
.LASF429:
	.string	"kstat_named"
.LASF194:
	.string	"DMU_OT_ZAP_OTHER"
.LASF790:
	.string	"zfs_crc64_table"
.LASF62:
	.string	"uintptr_t"
.LASF111:
	.string	"avl_root"
.LASF301:
	.string	"io_failed_vds_count"
.LASF670:
	.string	"hash_mtx"
.LASF699:
	.string	"reserve"
.LASF139:
	.string	"list_t"
.LASF141:
	.string	"zio_type"
.LASF513:
	.string	"ht_locks"
.LASF575:
	.string	"add_reference"
.LASF463:
	.string	"arcstat_hash_elements"
.LASF202:
	.string	"DMU_OT_FUID"
.LASF544:
	.string	"l2arc_data_free_t"
.LASF486:
	.string	"arcstat_l2_cksum_bad"
.LASF531:
	.string	"l2rcb_bp"
.LASF384:
	.string	"wp_copies"
.LASF114:
	.string	"avl_numnodes"
.LASF3:
	.string	"long unsigned int"
.LASF748:
	.string	"arc_dead"
.LASF606:
	.string	"arc_buf_free"
.LASF334:
	.string	"zb_object"
.LASF279:
	.string	"io_spa"
.LASF604:
	.string	"recycle"
.LASF758:
	.string	"arc_mru_ghost"
.LASF402:
	.string	"kstat"
.LASF352:
	.string	"b_hash_next"
.LASF15:
	.string	"char"
.LASF629:
	.string	"arc_over"
.LASF571:
	.string	"arc_cksum_compute"
.LASF198:
	.string	"DMU_OT_POOL_PROPS"
.LASF343:
	.string	"ci_name"
.LASF369:
	.string	"arc_buf"
.LASF34:
	.string	"__spins"
.LASF80:
	.string	"_IO_buf_base"
.LASF403:
	.string	"ks_crtime"
.LASF475:
	.string	"arcstat_l2_misses"
.LASF32:
	.string	"__nusers"
.LASF528:
	.string	"l2arc_read_callback"
.LASF659:
	.string	"pbuf"
.LASF569:
	.string	"arc_cksum_equal"
.LASF807:
	.string	"zio_buf_cache"
.LASF515:
	.string	"l2arc_dev"
.LASF131:
	.string	"list_node"
.LASF163:
	.string	"blk_fill"
.LASF75:
	.string	"_IO_read_end"
.LASF339:
	.string	"zio_checksum_info"
.LASF607:
	.string	"hashed"
.LASF757:
	.string	"arc_mru"
.LASF494:
	.string	"b_dev"
.LASF447:
	.string	"arcstat_demand_data_hits"
.LASF579:
	.string	"__right"
.LASF72:
	.string	"_IO_FILE"
.LASF537:
	.string	"l2wcb_head"
.LASF120:
	.string	"m_lock"
.LASF798:
	.string	"zfs_arc_meta_limit"
.LASF69:
	.string	"ulong_t"
.LASF730:
	.string	"list_lock"
.LASF667:
	.string	"l2skip"
.LASF125:
	.string	"rw_owner"
.LASF749:
	.string	"arc_warm"
.LASF795:
	.string	"arc_reduce_dnlc_percent"
.LASF256:
	.string	"ZIO_CHECKSUM_FLETCHER_2"
.LASF257:
	.string	"ZIO_CHECKSUM_FLETCHER_4"
.LASF527:
	.string	"l2arc_dev_t"
.LASF568:
	.string	"arc_cksum_verify"
.LASF115:
	.string	"avl_size"
.LASF718:
	.string	"lock"
.LASF500:
	.string	"acb_buf"
.LASF143:
	.string	"ZIO_TYPE_READ"
.LASF196:
	.string	"DMU_OT_SPA_HISTORY"
.LASF465:
	.string	"arcstat_hash_collisions"
.LASF266:
	.string	"ZIO_COMPRESS_GZIP_1"
.LASF267:
	.string	"ZIO_COMPRESS_GZIP_2"
.LASF268:
	.string	"ZIO_COMPRESS_GZIP_3"
.LASF269:
	.string	"ZIO_COMPRESS_GZIP_4"
.LASF270:
	.string	"ZIO_COMPRESS_GZIP_5"
.LASF271:
	.string	"ZIO_COMPRESS_GZIP_6"
.LASF272:
	.string	"ZIO_COMPRESS_GZIP_7"
.LASF273:
	.string	"ZIO_COMPRESS_GZIP_8"
.LASF274:
	.string	"ZIO_COMPRESS_GZIP_9"
.LASF110:
	.string	"avl_tree"
.LASF783:
	.string	"buf_cache"
.LASF55:
	.string	"__pad1"
.LASF95:
	.string	"__pad3"
.LASF96:
	.string	"__pad4"
.LASF97:
	.string	"__pad5"
.LASF581:
	.string	"remove_reference"
.LASF150:
	.string	"umem_cache"
.LASF623:
	.string	"arc_evict_ghost"
.LASF449:
	.string	"arcstat_demand_metadata_hits"
.LASF517:
	.string	"l2ad_spa"
.LASF469:
	.string	"arcstat_c"
.LASF258:
	.string	"ZIO_CHECKSUM_SHA256"
.LASF164:
	.string	"blk_cksum"
.LASF468:
	.string	"arcstat_p"
.LASF717:
	.string	"list_num"
.LASF176:
	.string	"DMU_OT_INTENT_LOG"
.LASF621:
	.string	"mru_over"
.LASF85:
	.string	"_markers"
.LASF103:
	.string	"_pos"
.LASF20:
	.string	"int64_t"
.LASF771:
	.string	"l2arc_dev_list"
.LASF633:
	.string	"arc_flush"
.LASF675:
	.string	"l2hdr"
.LASF619:
	.string	"have_lock"
.LASF304:
	.string	"io_deadline"
.LASF781:
	.string	"l2arc_thread_exit"
.LASF545:
	.string	"gethrtime"
.LASF183:
	.string	"DMU_OT_DSL_DATASET"
.LASF265:
	.string	"ZIO_COMPRESS_EMPTY"
.LASF422:
	.string	"ptr32"
.LASF193:
	.string	"DMU_OT_UINT64_OTHER"
.LASF809:
	.string	"GNU C 4.4.3"
.LASF694:
	.string	"ready"
.LASF438:
	.string	"arc_state"
.LASF428:
	.string	"double"
.LASF341:
	.string	"ci_correctable"
.LASF444:
	.string	"arc_stats"
.LASF584:
	.string	"new_state"
.LASF451:
	.string	"arcstat_prefetch_data_hits"
.LASF540:
	.string	"l2df_data"
.LASF340:
	.string	"ci_func"
.LASF388:
	.string	"wp_dnchecksum"
.LASF414:
	.string	"ks_ndata"
.LASF686:
	.string	"write_policy"
.LASF755:
	.string	"ARC_l2c_only"
.LASF54:
	.string	"__shared"
.LASF137:
	.string	"list_head"
.LASF466:
	.string	"arcstat_hash_chains"
.LASF206:
	.string	"DMU_OT_NUMTYPES"
.LASF396:
	.string	"rc_removed_count"
.LASF602:
	.string	"data"
.LASF197:
	.string	"DMU_OT_SPA_HISTORY_OFFSETS"
.LASF282:
	.string	"io_compress"
.LASF49:
	.string	"__readers_wakeup"
.LASF262:
	.string	"ZIO_COMPRESS_ON"
.LASF148:
	.string	"ZIO_TYPES"
.LASF353:
	.string	"b_buf"
.LASF622:
	.string	"todelete"
.LASF264:
	.string	"ZIO_COMPRESS_LZJB"
.LASF280:
	.string	"io_bookmark"
.LASF57:
	.string	"__flags"
.LASF669:
	.string	"arc_tryread"
.LASF672:
	.string	"arc_buf_evict"
.LASF720:
	.string	"distance"
.LASF705:
	.string	"l2arc_hdr_stat_add"
.LASF227:
	.string	"ZIO_STAGE_FREE_GANG_MEMBERS"
.LASF688:
	.string	"compp"
.LASF737:
	.string	"adddev"
.LASF744:
	.string	"arc_reclaim_thr_cv"
.LASF799:
	.string	"zfs_mdcomp_disable"
.LASF601:
	.string	"free_func"
.LASF613:
	.string	"bytes"
.LASF336:
	.string	"zb_blkid"
.LASF178:
	.string	"DMU_OT_OBJSET"
.LASF418:
	.string	"ks_private"
.LASF159:
	.string	"blk_dva"
.LASF778:
	.string	"l2arc_ndev"
.LASF765:
	.string	"arc_meta_limit"
.LASF212:
	.string	"ot_name"
.LASF692:
	.string	"arc_write"
.LASF236:
	.string	"ZIO_STAGE_VDEV_IO_ASSESS"
.LASF626:
	.string	"retry"
.LASF788:
	.string	"zfs_flags"
.LASF21:
	.string	"tv_sec"
.LASF255:
	.string	"ZIO_CHECKSUM_ZILOG"
.LASF7:
	.string	"long long unsigned int"
.LASF90:
	.string	"_cur_column"
.LASF665:
	.string	"arc_read_nolock"
.LASF495:
	.string	"b_daddr"
.LASF740:
	.string	"remdev"
.LASF35:
	.string	"__list"
.LASF172:
	.string	"DMU_OT_BPLIST"
.LASF71:
	.string	"u_longlong_t"
.LASF610:
	.string	"no_callback"
.LASF612:
	.string	"arc_evict"
.LASF580:
	.string	"__buf"
.LASF374:
	.string	"b_private"
.LASF487:
	.string	"arcstat_l2_io_error"
.LASF473:
	.string	"arcstat_hdr_size"
.LASF345:
	.string	"arc_buf_hdr_t"
.LASF83:
	.string	"_IO_backup_base"
.LASF676:
	.string	"buf_size"
.LASF74:
	.string	"_IO_read_ptr"
.LASF351:
	.string	"b_freeze_cksum"
.LASF554:
	.string	"fbuf"
.LASF689:
	.string	"copiesp"
.LASF165:
	.string	"blkptr_t"
.LASF324:
	.string	"io_orig_pipeline"
.LASF655:
	.string	"callback_list"
.LASF649:
	.string	"arc_access"
.LASF217:
	.string	"dkc_flag"
.LASF630:
	.string	"toevict"
.LASF423:
	.string	"__pad"
.LASF595:
	.string	"arc_buf_alloc"
.LASF241:
	.string	"ZIO_STAGE_ASSESS"
.LASF743:
	.string	"arc_reclaim_thr_lock"
.LASF135:
	.string	"list_size"
.LASF89:
	.string	"_old_offset"
.LASF492:
	.string	"l2arc_buf_hdr_t"
.LASF260:
	.string	"zio_compress"
.LASF437:
	.string	"arc_reclaim_strategy_t"
.LASF220:
	.string	"ZIO_STAGE_WAIT_FOR_CHILDREN_READY"
.LASF780:
	.string	"l2arc_feed_thr_cv"
.LASF478:
	.string	"arcstat_l2_writes_sent"
.LASF550:
	.string	"buf_hash_find"
.LASF284:
	.string	"io_txg"
.LASF371:
	.string	"b_next"
.LASF245:
	.string	"zt_data"
.LASF731:
	.string	"full"
.LASF6:
	.string	"long long int"
.LASF789:
	.string	"dmu_ot"
.LASF88:
	.string	"_flags2"
.LASF562:
	.string	"kmflag"
.LASF232:
	.string	"ZIO_STAGE_GANG_CHECKSUM_GENERATE"
.LASF678:
	.string	"blksz"
.LASF637:
	.string	"strat"
.LASF791:
	.string	"zio_priority_table"
.LASF421:
	.string	"kstat_t"
.LASF22:
	.string	"tv_nsec"
.LASF308:
	.string	"io_vdev_tree"
.LASF779:
	.string	"l2arc_feed_thr_lock"
.LASF752:
	.string	"ARC_mru_ghost"
.LASF412:
	.string	"ks_flags"
.LASF349:
	.string	"b_cksum0"
.LASF168:
	.string	"DMU_OT_OBJECT_DIRECTORY"
.LASF592:
	.string	"arc_space_return"
.LASF616:
	.string	"skipped"
.LASF570:
	.string	"equal"
.LASF775:
	.string	"L2ARC_free_on_write"
.LASF645:
	.string	"arc_evict_needed"
.LASF453:
	.string	"arcstat_prefetch_metadata_hits"
.LASF300:
	.string	"io_failed_vds"
.LASF480:
	.string	"arcstat_l2_writes_error"
.LASF690:
	.string	"copies"
.LASF644:
	.string	"mult"
.LASF40:
	.string	"__futex"
.LASF338:
	.string	"zio_checksum_t"
.LASF387:
	.string	"wp_oscompress"
.LASF805:
	.string	"l2arc_noprefetch"
.LASF697:
	.string	"arc_free"
.LASF288:
	.string	"io_sibling_prev"
.LASF243:
	.string	"zio_transform_t"
.LASF462:
	.string	"arcstat_evict_skip"
.LASF314:
	.string	"io_stage"
.LASF594:
	.string	"arc_data_buf_alloc"
.LASF511:
	.string	"ht_mask"
.LASF461:
	.string	"arcstat_mutex_miss"
.LASF108:
	.string	"avl_child_index"
.LASF152:
	.string	"vdev"
.LASF295:
	.string	"io_private"
.LASF321:
	.string	"io_error"
.LASF777:
	.string	"l2arc_free_on_write_mtx"
.LASF310:
	.string	"io_delegate_next"
.LASF2:
	.string	"unsigned int"
.LASF348:
	.string	"b_birth"
.LASF618:
	.string	"ab_prev"
.LASF173:
	.string	"DMU_OT_BPLIST_HDR"
.LASF138:
	.string	"list_node_t"
.LASF365:
	.string	"b_l2hdr"
.LASF133:
	.string	"list_prev"
.LASF739:
	.string	"nextdev"
.LASF529:
	.string	"l2rcb_buf"
.LASF536:
	.string	"l2wcb_dev"
.LASF443:
	.string	"arc_state_t"
.LASF305:
	.string	"io_timestamp"
.LASF218:
	.string	"zio_stage"
.LASF5:
	.string	"short int"
.LASF431:
	.string	"data_type"
.LASF773:
	.string	"l2arc_dev_last"
.LASF588:
	.string	"to_delta"
.LASF91:
	.string	"_vtable_offset"
.LASF151:
	.string	"vdev_t"
.LASF63:
	.string	"caddr32_t"
.LASF118:
	.string	"kmutex"
.LASF711:
	.string	"df_prev"
.LASF761:
	.string	"arc_l2c_only"
.LASF419:
	.string	"ks_snapshot"
.LASF516:
	.string	"l2ad_vdev"
.LASF316:
	.string	"io_stalled"
.LASF259:
	.string	"ZIO_CHECKSUM_FUNCTIONS"
.LASF409:
	.string	"ks_name"
.LASF712:
	.string	"l2arc_write_done"
.LASF363:
	.string	"b_arc_access"
.LASF8:
	.string	"__quad_t"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
