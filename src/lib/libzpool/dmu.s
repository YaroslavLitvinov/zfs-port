	.file	"dmu.c"
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
.globl dmu_ot
	.section	.rodata
.LC3:
	.string	"unallocated"
.LC4:
	.string	"object directory"
.LC5:
	.string	"object array"
.LC6:
	.string	"packed nvlist"
.LC7:
	.string	"packed nvlist size"
.LC8:
	.string	"bplist"
.LC9:
	.string	"bplist header"
.LC10:
	.string	"SPA space map header"
.LC11:
	.string	"SPA space map"
.LC12:
	.string	"ZIL intent log"
.LC13:
	.string	"DMU dnode"
.LC14:
	.string	"DMU objset"
.LC15:
	.string	"DSL directory"
.LC16:
	.string	"DSL directory child map"
.LC17:
	.string	"DSL dataset snap map"
.LC18:
	.string	"DSL props"
.LC19:
	.string	"DSL dataset"
.LC20:
	.string	"ZFS znode"
.LC21:
	.string	"ZFS V0 ACL"
.LC22:
	.string	"ZFS plain file"
.LC23:
	.string	"ZFS directory"
.LC24:
	.string	"ZFS master node"
.LC25:
	.string	"ZFS delete queue"
.LC26:
	.string	"zvol object"
.LC27:
	.string	"zvol prop"
.LC28:
	.string	"other uint8[]"
.LC29:
	.string	"other uint64[]"
.LC30:
	.string	"other ZAP"
.LC31:
	.string	"persistent error log"
.LC32:
	.string	"SPA history"
.LC33:
	.string	"SPA history offsets"
.LC34:
	.string	"Pool properties"
.LC35:
	.string	"DSL permissions"
.LC36:
	.string	"ZFS ACL"
.LC37:
	.string	"ZFS SYSACL"
.LC38:
	.string	"FUID table"
.LC39:
	.string	"FUID table size"
.LC40:
	.string	"DSL dataset next clones"
.LC41:
	.string	"scrub work queue"
	.align 32
	.type	dmu_ot, @object
	.size	dmu_ot, 468
dmu_ot:
	.long	byteswap_uint8_array
	.long	1
	.long	.LC3
	.long	zap_byteswap
	.long	1
	.long	.LC4
	.long	byteswap_uint64_array
	.long	1
	.long	.LC5
	.long	byteswap_uint8_array
	.long	1
	.long	.LC6
	.long	byteswap_uint64_array
	.long	1
	.long	.LC7
	.long	byteswap_uint64_array
	.long	1
	.long	.LC8
	.long	byteswap_uint64_array
	.long	1
	.long	.LC9
	.long	byteswap_uint64_array
	.long	1
	.long	.LC10
	.long	byteswap_uint64_array
	.long	1
	.long	.LC11
	.long	byteswap_uint64_array
	.long	1
	.long	.LC12
	.long	dnode_buf_byteswap
	.long	1
	.long	.LC13
	.long	dmu_objset_byteswap
	.long	1
	.long	.LC14
	.long	byteswap_uint64_array
	.long	1
	.long	.LC15
	.long	zap_byteswap
	.long	1
	.long	.LC16
	.long	zap_byteswap
	.long	1
	.long	.LC17
	.long	zap_byteswap
	.long	1
	.long	.LC18
	.long	byteswap_uint64_array
	.long	1
	.long	.LC19
	.long	zfs_znode_byteswap
	.long	1
	.long	.LC20
	.long	zfs_oldacl_byteswap
	.long	1
	.long	.LC21
	.long	byteswap_uint8_array
	.long	0
	.long	.LC22
	.long	zap_byteswap
	.long	1
	.long	.LC23
	.long	zap_byteswap
	.long	1
	.long	.LC24
	.long	zap_byteswap
	.long	1
	.long	.LC25
	.long	byteswap_uint8_array
	.long	0
	.long	.LC26
	.long	zap_byteswap
	.long	1
	.long	.LC27
	.long	byteswap_uint8_array
	.long	0
	.long	.LC28
	.long	byteswap_uint64_array
	.long	0
	.long	.LC29
	.long	zap_byteswap
	.long	1
	.long	.LC30
	.long	zap_byteswap
	.long	1
	.long	.LC31
	.long	byteswap_uint8_array
	.long	1
	.long	.LC32
	.long	byteswap_uint64_array
	.long	1
	.long	.LC33
	.long	zap_byteswap
	.long	1
	.long	.LC34
	.long	zap_byteswap
	.long	1
	.long	.LC35
	.long	zfs_acl_byteswap
	.long	1
	.long	.LC36
	.long	byteswap_uint8_array
	.long	1
	.long	.LC37
	.long	byteswap_uint8_array
	.long	1
	.long	.LC38
	.long	byteswap_uint64_array
	.long	1
	.long	.LC39
	.long	zap_byteswap
	.long	1
	.long	.LC40
	.long	zap_byteswap
	.long	1
	.long	.LC41
	.text
	.align 32
.globl dmu_buf_hold
	.type	dmu_buf_hold, @function
dmu_buf_hold:
.LFB4:
	.file 2 "/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/dmu.c"
	.loc 2 93 0
	.cfi_startproc
	pushq	%rbp
.LCFI2:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI3:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	.loc 2 93 0
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 99 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.11493, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 100 0
	cmpl	$0, -20(%rbp)
	je	.L5
	.loc 2 101 0
	movl	-20(%rbp), %ebx
	jmp	.L6
	.align 32
.L5:
	.loc 2 102 0
	mov	-36(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	dbuf_whichblock
	movq	%rax, -32(%rbp)
	.loc 2 103 0
	mov	-36(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 104 0
	mov	-36(%rbp), %ecx
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	dbuf_hold
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 105 0
	mov	-36(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 106 0
	cmpl	$0, -24(%rbp)
	jne	.L7
	.loc 2 107 0
	movl	$5, -20(%rbp)
	jmp	.L8
	.align 32
.L7:
	.loc 2 109 0
	movl	-24(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	dbuf_read
	movl	%eax, -20(%rbp)
	.loc 2 110 0
	cmpl	$0, -20(%rbp)
	je	.L8
	.loc 2 111 0
	movl	-76(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dbuf_rele
	.loc 2 112 0
	movl	$0, -24(%rbp)
	.align 32
.L8:
	.loc 2 116 0
	mov	-36(%rbp), %eax
	movl	$__func__.11493, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 117 0
	mov	-24(%rbp), %edx
	mov	-80(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 118 0
	movl	-20(%rbp), %ebx
	.align 32
.L6:
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 119 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE4:
	.size	dmu_buf_hold, .-dmu_buf_hold
	.align 32
.globl dmu_bonus_max
	.type	dmu_bonus_max, @function
dmu_bonus_max:
.LFB5:
	.loc 2 123 0
	.cfi_startproc
	pushq	%rbp
.LCFI4:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI5:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$8, %r15
	.loc 2 123 0
	movq	8(%rbp), %rsi
	movl	$dmu_bonus_max, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 124 0
	movl	$320, %ebx
	movq	8(%rbp), %rsi
	movl	$dmu_bonus_max, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 125 0
	naclaspq	$8, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE5:
	.size	dmu_bonus_max, .-dmu_bonus_max
	.align 32
.globl dmu_set_bonus
	.type	dmu_set_bonus, @function
dmu_set_bonus:
.LFB6:
	.loc 2 129 0
	.cfi_startproc
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI7:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 129 0
	movq	8(%rbp), %rsi
	movl	$dmu_set_bonus, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 130 0
	mov	-36(%rbp), %eax
	movl	%nacl:36(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 132 0
	mov	-20(%rbp), %eax
	mov	%nacl:756(%r15,%rax), %edx
	mov	-36(%rbp), %eax
	cmpl	%eax, %edx
	je	.L13
	.loc 2 133 0
	movl	$22, %ebx
	jmp	.L14
	.align 32
.L13:
	.loc 2 134 0
	cmpl	$0, -40(%rbp)
	js	.L15
	movl	-40(%rbp), %eax
	movslq	%eax,%rdx
	mov	-36(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L16
	.align 32
.L15:
	.loc 2 135 0
	movl	$22, %ebx
	jmp	.L14
	.align 32
.L16:
	.loc 2 136 0
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	dnode_setbonuslen
	.loc 2 137 0
	movl	$0, %ebx
	.align 32
.L14:
	movq	8(%rbp), %rsi
	movl	$dmu_set_bonus, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 138 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE6:
	.size	dmu_set_bonus, .-dmu_set_bonus
	.section	.rodata
	.align 8
.LC42:
	.string	"%s:%i: %s: Assertion `%s` failed.\n"
.LC43:
	.string	"dnode_add_ref(dn, db)"
	.align 8
.LC44:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/dmu.c"
	.align 8
.LC45:
	.string	"0 == dbuf_read(db, NULL, DB_RF_MUST_SUCCEED)"
	.text
	.align 32
.globl dmu_bonus_hold
	.type	dmu_bonus_hold, @function
dmu_bonus_hold:
.LFB7:
	.loc 2 145 0
	.cfi_startproc
	pushq	%rbp
.LCFI8:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI9:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	.loc 2 145 0
	movq	8(%rbp), %rsi
	movl	$dmu_bonus_hold, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 150 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.11545, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 151 0
	cmpl	$0, -20(%rbp)
	je	.L19
	.loc 2 152 0
	movl	-20(%rbp), %ebx
	jmp	.L20
	.align 32
.L19:
	.loc 2 154 0
	mov	-28(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 155 0
	mov	-28(%rbp), %eax
	mov	%nacl:756(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L21
	.loc 2 156 0
	mov	-28(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 157 0
	mov	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 158 0
	mov	-28(%rbp), %eax
	mov	%nacl:756(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L21
	.loc 2 159 0
	mov	-28(%rbp), %eax
	movl	%eax, %edi
	call	dbuf_create_bonus
	.align 32
.L21:
	.loc 2 161 0
	mov	-28(%rbp), %eax
	movl	%nacl:756(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 162 0
	mov	-28(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 165 0
	movl	-24(%rbp), %eax
	addl	$112, %eax
	mov	%eax, %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	refcount_add
	cmpq	$1, %rax
	jne	.L22
	.loc 2 166 0
	mov	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dnode_add_ref
	testl	%eax, %eax
	jne	.L22
	movl	$.LC42, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC43, %r9d
	movl	$__PRETTY_FUNCTION__.11546, %r8d
	movl	$166, %ecx
	movl	$.LC44, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L22:
	.loc 2 168 0
	mov	-28(%rbp), %eax
	movl	$__func__.11545, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 170 0
	movl	-24(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	dbuf_read
	testl	%eax, %eax
	je	.L23
	movl	$.LC42, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC45, %r9d
	movl	$__PRETTY_FUNCTION__.11546, %r8d
	movl	$170, %ecx
	movl	$.LC44, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L23:
	.loc 2 172 0
	mov	-24(%rbp), %edx
	mov	-56(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 173 0
	movl	$0, %ebx
	.align 32
.L20:
	movq	8(%rbp), %rsi
	movl	$dmu_bonus_hold, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 174 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE7:
	.size	dmu_bonus_hold, .-dmu_bonus_hold
	.section	.rodata
.LC46:
	.string	"length <= (10<<20)"
	.align 8
.LC47:
	.string	"zfs: accessing past end of object %llx/%llx (size=%u access=%llu+%llu)"
	.text
	.align 32
	.type	dmu_buf_hold_array_by_dnode, @function
dmu_buf_hold_array_by_dnode:
.LFB8:
	.loc 2 185 0
	.cfi_startproc
	pushq	%rbp
.LCFI10:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI11:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movl	%r9d, -132(%rbp)
	.loc 2 185 0
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold_array_by_dnode, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 186 0
	movl	$0, -88(%rbp)
	.loc 2 194 0
	cmpq	$10485760, -120(%rbp)
	jbe	.L26
	movl	$__PRETTY_FUNCTION__.11607, %ecx
	movl	$194, %edx
	movl	$.LC44, %esi
	movl	$.LC46, %edi
	call	__assert_fail
	.align 32
.L26:
	.loc 2 196 0
	movl	$18, -52(%rbp)
	.loc 2 197 0
	movq	zfetch_array_rd_sz(%rip), %rax
	cmpq	%rax, -120(%rbp)
	jbe	.L27
	.loc 2 198 0
	orl	$8, -52(%rbp)
	.align 32
.L27:
	.loc 2 200 0
	mov	-100(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 201 0
	mov	-100(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	testb	%al, %al
	je	.L28
.LBB2:
	.loc 2 202 0
	mov	-100(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	.loc 2 203 0
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rbx
	negq	%rbx
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	negq	%rax
	andq	%rbx, %rax
	movq	%rax, %rbx
	negq	%rbx
	.loc 2 204 0
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	negq	%rax
	andq	-112(%rbp), %rax
	.loc 2 203 0
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rax
	movq	%rax, -72(%rbp)
	jmp	.L29
	.align 32
.L28:
.LBE2:
	.loc 2 206 0
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdx
	addq	%rax, %rdx
	mov	-100(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	mov	%eax, %eax
	cmpq	%rax, %rdx
	jbe	.L30
	.loc 2 207 0
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rbx
	mov	-100(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %ecx
	mov	-100(%rbp), %eax
	movq	%nacl:120(%r15,%rax), %rax
	movq	%rax, %rdx
	.loc 2 209 0
	mov	-100(%rbp), %eax
	mov	%nacl:116(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	.loc 2 207 0
	movq	%nacl:16(%r15,%rax), %rax
	movq	%rsi, %r9
	movq	%rbx, %r8
	movq	%rax, %rsi
	movl	$.LC47, %edi
	movl	$0, %eax
	call	zfs_panic_recover
	.loc 2 213 0
	movl	$5, %ebx
	jmp	.L31
	.align 32
.L30:
	.loc 2 215 0
	movq	$1, -72(%rbp)
	.align 32
.L29:
	.loc 2 217 0
	movq	-72(%rbp), %rax
	sall	$2, %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -84(%rbp)
	.loc 2 219 0
	mov	-100(%rbp), %eax
	mov	%nacl:116(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L32
	.loc 2 220 0
	mov	-100(%rbp), %eax
	mov	%nacl:116(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:16(%r15,%rax), %eax
	movl	%eax, -88(%rbp)
	.align 32
.L32:
	.loc 2 221 0
	cmpl	$0, -88(%rbp)
	je	.L33
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	dsl_pool_sync_context
	testl	%eax, %eax
	je	.L33
	.loc 2 222 0
	call	gethrtime
	movq	%rax, -40(%rbp)
	.align 32
.L33:
	.loc 2 223 0
	mov	-100(%rbp), %eax
	mov	%nacl:116(%r15,%rax), %eax
	mov	%nacl:4(%r15,%rax), %eax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	zio_root
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 224 0
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dbuf_whichblock
	movq	%rax, -80(%rbp)
	.loc 2 225 0
	movq	$0, -64(%rbp)
	jmp	.L34
	.align 32
.L37:
.LBB3:
	.loc 2 226 0
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movl	-128(%rbp), %edx
	movl	-100(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	dbuf_hold
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 227 0
	cmpl	$0, -24(%rbp)
	jne	.L35
	.loc 2 228 0
	mov	-100(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 229 0
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	-128(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	dmu_buf_rele_array
	.loc 2 230 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 231 0
	movl	$5, %ebx
	jmp	.L31
	.align 32
.L35:
	.loc 2 234 0
	cmpl	$0, -124(%rbp)
	je	.L36
	.loc 2 235 0
	mov	-100(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 236 0
	movl	-52(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-24(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	dbuf_read
	.loc 2 237 0
	mov	-100(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.align 32
.L36:
	.loc 2 239 0
	movq	-64(%rbp), %rax
	sall	$2, %eax
	addl	-84(%rbp), %eax
	mov	%eax, %eax
	mov	-24(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
.LBE3:
	.loc 2 225 0
	addq	$1, -64(%rbp)
	.align 32
.L34:
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L37
	.loc 2 241 0
	mov	-100(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 244 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait
	movl	%eax, -48(%rbp)
	.loc 2 246 0
	cmpl	$0, -88(%rbp)
	je	.L38
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	dsl_pool_sync_context
	testl	%eax, %eax
	je	.L38
	.loc 2 247 0
	mov	-88(%rbp), %eax
	movq	%nacl:176(%r15,%rax), %rbx
	call	gethrtime
	subq	-40(%rbp), %rax
	leaq	(%rbx,%rax), %rdx
	mov	-88(%rbp), %eax
	movq	%rdx, %nacl:176(%r15,%rax)
	.align 32
.L38:
	.loc 2 248 0
	cmpl	$0, -48(%rbp)
	je	.L39
	.loc 2 249 0
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	-128(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	dmu_buf_rele_array
	.loc 2 250 0
	movl	-48(%rbp), %ebx
	jmp	.L31
	.align 32
.L39:
	.loc 2 254 0
	cmpl	$0, -124(%rbp)
	je	.L40
	.loc 2 255 0
	movq	$0, -64(%rbp)
	jmp	.L41
	.align 32
.L46:
.LBB4:
	.loc 2 256 0
	movq	-64(%rbp), %rax
	sall	$2, %eax
	addl	-84(%rbp), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 257 0
	movl	-20(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 258 0
	jmp	.L42
	.align 32
.L43:
	.loc 2 260 0
	movl	-20(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %edx
	movl	-20(%rbp), %eax
	addl	$216, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.align 32
.L42:
	.loc 2 258 0
	mov	-20(%rbp), %eax
	movl	%nacl:108(%r15,%rax), %eax
	cmpl	$2, %eax
	je	.L43
	.loc 2 259 0
	mov	-20(%rbp), %eax
	movl	%nacl:108(%r15,%rax), %eax
	.loc 2 258 0
	cmpl	$1, %eax
	je	.L43
	.loc 2 261 0
	mov	-20(%rbp), %eax
	movl	%nacl:108(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L44
	.loc 2 262 0
	movl	$5, -48(%rbp)
	.align 32
.L44:
	.loc 2 263 0
	movl	-20(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 264 0
	cmpl	$0, -48(%rbp)
	je	.L45
	.loc 2 265 0
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	-128(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	dmu_buf_rele_array
	.loc 2 266 0
	movl	-48(%rbp), %ebx
	jmp	.L31
	.align 32
.L45:
.LBE4:
	.loc 2 255 0
	addq	$1, -64(%rbp)
	.align 32
.L41:
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L46
	.align 32
.L40:
	.loc 2 271 0
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	mov	-132(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 272 0
	mov	16(%rbp), %eax
	movl	-84(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 273 0
	movl	$0, %ebx
	.align 32
.L31:
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold_array_by_dnode, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 274 0
	naclaspq	$136, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE8:
	.size	dmu_buf_hold_array_by_dnode, .-dmu_buf_hold_array_by_dnode
	.align 32
	.type	dmu_buf_hold_array, @function
dmu_buf_hold_array:
.LFB9:
	.loc 2 279 0
	.cfi_startproc
	pushq	%rbp
.LCFI12:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI13:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	.loc 2 279 0
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold_array, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 283 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.11736, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 284 0
	cmpl	$0, -20(%rbp)
	je	.L49
	.loc 2 285 0
	movl	-20(%rbp), %ebx
	jmp	.L50
	.align 32
.L49:
	.loc 2 287 0
	mov	-24(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	24(%rbp), %ebx
	movl	%ebx, (%rsp)
	movl	16(%rbp), %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	dmu_buf_hold_array_by_dnode
	movl	%eax, -20(%rbp)
	.loc 2 290 0
	mov	-24(%rbp), %eax
	movl	$__func__.11736, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 292 0
	movl	-20(%rbp), %ebx
	.align 32
.L50:
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold_array, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 293 0
	naclaspq	$88, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE9:
	.size	dmu_buf_hold_array, .-dmu_buf_hold_array
	.align 32
.globl dmu_buf_hold_array_by_bonus
	.type	dmu_buf_hold_array_by_bonus, @function
dmu_buf_hold_array_by_bonus:
.LFB10:
	.loc 2 298 0
	.cfi_startproc
	pushq	%rbp
.LCFI14:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI15:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	.loc 2 298 0
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold_array_by_bonus, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 299 0
	mov	-36(%rbp), %eax
	movl	%nacl:36(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 302 0
	movl	-68(%rbp), %r8d
	movl	-64(%rbp), %edi
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rbx
	movl	-24(%rbp), %eax
	movl	16(%rbp), %esi
	movl	%esi, (%rsp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	dmu_buf_hold_array_by_dnode
	movl	%eax, -20(%rbp)
	.loc 2 305 0
	movl	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$dmu_buf_hold_array_by_bonus, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 306 0
	naclaspq	$88, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE10:
	.size	dmu_buf_hold_array_by_bonus, .-dmu_buf_hold_array_by_bonus
	.align 32
.globl dmu_buf_rele_array
	.type	dmu_buf_rele_array, @function
dmu_buf_rele_array:
.LFB11:
	.loc 2 310 0
	.cfi_startproc
	pushq	%rbp
.LCFI16:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI17:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 310 0
	movq	8(%rbp), %rsi
	movl	$dmu_buf_rele_array, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 312 0
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 2 314 0
	cmpl	$0, -40(%rbp)
	jne	.L55
	movl	$0, %ebx
	jmp	.L56
	.align 32
.L55:
	.loc 2 317 0
	movl	$0, -24(%rbp)
	jmp	.L57
	.align 32
.L59:
	.loc 2 318 0
	movl	-24(%rbp), %eax
	sall	$2, %eax
	addl	-20(%rbp), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L58
	.loc 2 319 0
	movl	-24(%rbp), %eax
	sall	$2, %eax
	addl	-20(%rbp), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %edx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dbuf_rele
	.align 32
.L58:
	.loc 2 317 0
	addl	$1, -24(%rbp)
	.align 32
.L57:
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L59
	.loc 2 322 0
	movl	-40(%rbp), %eax
	leal	0(,%rax,4), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	umem_free
	movl	$1, %ebx
	.align 32
.L56:
	movq	8(%rbp), %rsi
	movl	$dmu_buf_rele_array, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 323 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE11:
	.size	dmu_buf_rele_array, .-dmu_buf_rele_array
	.align 32
.globl dmu_prefetch
	.type	dmu_prefetch, @function
dmu_prefetch:
.LFB12:
	.loc 2 327 0
	.cfi_startproc
	pushq	%rbp
.LCFI18:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI19:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 2 327 0
	movq	8(%rbp), %rsi
	movl	$dmu_prefetch, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 332 0
	movl	zfs_prefetch_disable(%rip), %eax
	testl	%eax, %eax
	je	.L65
	movl	$0, %ebx
	jmp	.L66
	.align 32
.L65:
	.loc 2 335 0
	cmpq	$0, -80(%rbp)
	jne	.L67
	.loc 2 336 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:16(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 338 0
	cmpq	$0, -64(%rbp)
	je	.L68
	movabsq	$281474976710655, %rax
	cmpq	%rax, -64(%rbp)
	jbe	.L69
	.align 32
.L68:
	movl	$0, %ebx
	jmp	.L66
	.align 32
.L69:
	.loc 2 341 0
	mov	-44(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 342 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	salq	$9, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dbuf_whichblock
	movq	%rax, -40(%rbp)
	.loc 2 343 0
	mov	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	dbuf_prefetch
	.loc 2 344 0
	mov	-44(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	movl	$0, %ebx
	jmp	.L66
	.align 32
.L67:
	.loc 2 353 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-44(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.11794, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -24(%rbp)
	.loc 2 354 0
	cmpl	$0, -24(%rbp)
	je	.L70
	movl	$0, %ebx
	jmp	.L66
	.align 32
.L70:
	.loc 2 357 0
	mov	-44(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 358 0
	mov	-44(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	testb	%al, %al
	je	.L71
.LBB5:
	.loc 2 359 0
	mov	-44(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 2 360 0
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rbx
	negq	%rbx
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	negl	%eax
	cltq
	andq	%rbx, %rax
	movq	%rax, %rbx
	negq	%rbx
	.loc 2 361 0
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	negl	%eax
	cltq
	andq	-72(%rbp), %rax
	.loc 2 360 0
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rax
	movl	%eax, -32(%rbp)
	jmp	.L72
	.align 32
.L71:
.LBE5:
	.loc 2 363 0
	mov	-44(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	mov	%eax, %eax
	cmpq	-72(%rbp), %rax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	.align 32
.L72:
	.loc 2 366 0
	cmpl	$0, -32(%rbp)
	je	.L73
	.loc 2 367 0
	mov	-44(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	dbuf_whichblock
	movq	%rax, -40(%rbp)
	.loc 2 368 0
	movl	$0, -28(%rbp)
	jmp	.L74
	.align 32
.L75:
	.loc 2 369 0
	movl	-28(%rbp), %eax
	cltq
	addq	-40(%rbp), %rax
	mov	-44(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, %edi
	call	dbuf_prefetch
	.loc 2 368 0
	addl	$1, -28(%rbp)
	.align 32
.L74:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L75
	.align 32
.L73:
	.loc 2 372 0
	mov	-44(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	.loc 2 374 0
	mov	-44(%rbp), %eax
	movl	$__func__.11794, %esi
	movl	%eax, %edi
	call	dnode_rele
	movl	$1, %ebx
	.align 32
.L66:
	movq	8(%rbp), %rsi
	movl	$dmu_prefetch, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 375 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE12:
	.size	dmu_prefetch, .-dmu_prefetch
	.section	.rodata
.LC48:
	.string	"limit <= *offset"
	.align 8
.LC49:
	.string	"(((subchunk) & ((subchunk) - 1)) == 0)"
.LC50:
	.string	"%s %s %s (0x%llx %s 0x%llx)"
.LC51:
	.string	"initial_offset"
.LC52:
	.string	"<="
.LC53:
	.string	"*offset"
.LC54:
	.string	"<"
	.text
	.align 32
	.type	get_next_chunk, @function
get_next_chunk:
.LFB13:
	.loc 2 379 0
	.cfi_startproc
	pushq	%rbp
.LCFI20:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI21:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$152, %r15
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movq	%rdx, -128(%rbp)
	.loc 2 379 0
	movq	8(%rbp), %rsi
	movl	$get_next_chunk, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 380 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	subq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc 2 381 0
	mov	-116(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$12, %eax
	mov	%eax, %eax
	movq	%rax, -104(%rbp)
	.loc 2 383 0
	mov	-116(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %edx
	mov	-116(%rbp), %eax
	movzbl	%nacl:147(%r15,%rax), %eax
	movzbl	%al, %eax
	subl	$7, %eax
	movl	%edx, %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %eax
	mov	%eax, %eax
	movq	%rax, -96(%rbp)
	.loc 2 385 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	-128(%rbp), %rax
	jae	.L81
	movl	$__PRETTY_FUNCTION__.11864, %ecx
	movl	$385, %edx
	movl	$.LC44, %esi
	movl	$.LC48, %edi
	call	__assert_fail
	.align 32
.L81:
	.loc 2 387 0
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	ja	.L82
	.loc 2 388 0
	mov	-120(%rbp), %eax
	movq	-128(%rbp), %rdx
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 389 0
	movl	$0, %ebx
	jmp	.L83
	.align 32
.L82:
	.loc 2 392 0
	movq	-96(%rbp), %rax
	subq	$1, %rax
	andq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L95
	movl	$__PRETTY_FUNCTION__.11864, %ecx
	movl	$392, %edx
	movl	$.LC44, %esi
	movl	$.LC49, %edi
	call	__assert_fail
	.align 32
.L93:
.LBB6:
	.loc 2 395 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, %rdx
	negq	%rdx
	movq	-96(%rbp), %rax
	negq	%rax
	andq	%rdx, %rax
	negq	%rax
	movq	%rax, -88(%rbp)
	.loc 2 400 0
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$3, %esi
	movl	%eax, %edi
	call	dnode_next_offset
	movl	%eax, -68(%rbp)
	.loc 2 402 0
	cmpl	$3, -68(%rbp)
	jne	.L86
	.loc 2 403 0
	mov	-120(%rbp), %eax
	movq	-128(%rbp), %rdx
	movq	%rdx, %nacl:(%r15,%rax)
	jmp	.L87
	.align 32
.L86:
	.loc 2 404 0
	cmpl	$0, -68(%rbp)
	je	.L87
	.loc 2 405 0
	movl	-68(%rbp), %ebx
	jmp	.L83
	.align 32
.L87:
.LBB7:
	.loc 2 407 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L88
.LBB8:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC50, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC52, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC51, %r9d
	movl	$.LC52, %r8d
	movl	$.LC53, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC42, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.11864, %r8d
	movl	$407, %ecx
	movl	$.LC44, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L88:
.LBE8:
.LBE7:
	.loc 2 408 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	-96(%rbp), %rdx
	negq	%rdx
	andq	%rax, %rdx
	mov	-120(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 409 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -80(%rbp)
	.loc 2 410 0
	movq	-80(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L89
	.loc 2 411 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	mov	-120(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 412 0
	movl	$0, %ebx
	jmp	.L83
	.align 32
.L89:
	.loc 2 414 0
	movq	-80(%rbp), %rax
	subq	%rax, -104(%rbp)
	.loc 2 417 0
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$2, %esi
	movl	%eax, %edi
	call	dnode_next_offset
	movl	%eax, -68(%rbp)
	.loc 2 419 0
	cmpl	$3, -68(%rbp)
	jne	.L90
	.loc 2 420 0
	mov	-120(%rbp), %eax
	movq	-128(%rbp), %rdx
	movq	%rdx, %nacl:(%r15,%rax)
	jmp	.L91
	.align 32
.L90:
	.loc 2 421 0
	cmpl	$0, -68(%rbp)
	je	.L91
	.loc 2 422 0
	movl	-68(%rbp), %ebx
	jmp	.L83
	.align 32
.L91:
	.loc 2 424 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	-128(%rbp), %rax
	jae	.L92
	.loc 2 425 0
	mov	-120(%rbp), %eax
	movq	-128(%rbp), %rdx
	movq	%rdx, %nacl:(%r15,%rax)
	.align 32
.L92:
.LBB9:
	.loc 2 426 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L85
.LBB10:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC50, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC54, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC51, %r9d
	movl	$.LC54, %r8d
	movl	$.LC53, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	$.LC42, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r9d
	movl	$__PRETTY_FUNCTION__.11864, %r8d
	movl	$426, %ecx
	movl	$.LC44, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L95:
.LBE10:
.LBE9:
.LBE6:
	.loc 2 394 0
	nop
	.align 32
.L85:
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	cmpq	-128(%rbp), %rax
	ja	.L93
	.loc 2 428 0
	movl	$0, %ebx
	.align 32
.L83:
	movq	8(%rbp), %rsi
	movl	$get_next_chunk, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 429 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE13:
	.size	get_next_chunk, .-get_next_chunk
	.section	.rodata
.LC55:
	.string	"align > 0"
.LC56:
	.string	"trunc"
	.text
	.align 32
	.type	dmu_free_long_range_impl, @function
dmu_free_long_range_impl:
.LFB14:
	.loc 2 434 0
	.cfi_startproc
	pushq	%rbp
.LCFI22:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI23:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movl	%r8d, -108(%rbp)
	.loc 2 434 0
	movq	8(%rbp), %rsi
	movl	$dmu_free_long_range_impl, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 437 0
	cmpq	$-1, -104(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	.loc 2 440 0
	mov	-88(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 441 0
	cmpl	$0, -24(%rbp)
	jg	.L97
	movl	$__PRETTY_FUNCTION__.11953, %ecx
	movl	$441, %edx
	movl	$.LC44, %esi
	movl	$.LC55, %edi
	call	__assert_fail
	.align 32
.L97:
	.loc 2 442 0
	cmpl	$1, -24(%rbp)
	jne	.L98
	mov	-88(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	mov	%eax, %eax
	jmp	.L99
	.align 32
.L98:
	.loc 2 443 0
	mov	-88(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	leaq	1(%rax), %rdx
	mov	-88(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	movzbl	%al, %eax
	.loc 2 442 0
	movq	%rdx, %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rax
	.align 32
.L99:
	movq	%rax, -56(%rbp)
	.loc 2 445 0
	cmpl	$0, -28(%rbp)
	jne	.L100
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L101
	.align 32
.L100:
	.loc 2 446 0
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.align 32
.L101:
	.loc 2 447 0
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	ja	.L102
	.loc 2 448 0
	movl	$0, %ebx
	jmp	.L103
	.align 32
.L102:
	.loc 2 449 0
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -104(%rbp)
	.loc 2 451 0
	jmp	.L104
	.align 32
.L113:
	.loc 2 452 0
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 2 453 0
	movq	-96(%rbp), %rdx
	leal	-72(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	get_next_chunk
	movl	%eax, -20(%rbp)
	.loc 2 454 0
	cmpl	$0, -20(%rbp)
	je	.L105
	.loc 2 455 0
	movl	-20(%rbp), %ebx
	jmp	.L103
	.align 32
.L105:
	.loc 2 456 0
	cmpl	$0, -28(%rbp)
	jne	.L106
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	jmp	.L107
	.align 32
.L106:
	movq	$-1, %rax
	.align 32
.L107:
	movq	%rax, -40(%rbp)
	.loc 2 458 0
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	dmu_tx_create
	mov	%eax, %eax
	movl	%eax, -60(%rbp)
	.loc 2 459 0
	movq	-72(%rbp), %rdx
	mov	-88(%rbp), %eax
	movq	%nacl:120(%r15,%rax), %rbx
	movq	-40(%rbp), %rcx
	movl	-60(%rbp), %eax
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	dmu_tx_hold_free
	.loc 2 460 0
	movl	-60(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	dmu_tx_assign
	movl	%eax, -20(%rbp)
	.loc 2 461 0
	cmpl	$0, -20(%rbp)
	je	.L108
	.loc 2 462 0
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	dmu_tx_abort
	.loc 2 463 0
	movl	-20(%rbp), %ebx
	jmp	.L103
	.align 32
.L108:
	.loc 2 466 0
	cmpl	$0, -28(%rbp)
	jne	.L109
	movq	-40(%rbp), %rax
	jmp	.L110
	.align 32
.L109:
	movq	$-1, %rax
	.align 32
.L110:
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-88(%rbp), %ebx
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	%ebx, %edi
	call	dnode_free_range
	.loc 2 468 0
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L111
	cmpl	$0, -108(%rbp)
	je	.L111
	.loc 2 469 0
	cmpl	$0, -28(%rbp)
	jne	.L112
	movl	$__PRETTY_FUNCTION__.11953, %ecx
	movl	$469, %edx
	movl	$.LC44, %esi
	movl	$.LC56, %edi
	call	__assert_fail
	.align 32
.L112:
	.loc 2 470 0
	movl	-60(%rbp), %edx
	movl	-88(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dnode_free
	.align 32
.L111:
	.loc 2 473 0
	movq	-72(%rbp), %rax
	subq	-48(%rbp), %rax
	addq	%rax, -104(%rbp)
	.loc 2 475 0
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	dmu_tx_commit
	.loc 2 476 0
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	.align 32
.L104:
	.loc 2 451 0
	cmpq	$0, -104(%rbp)
	jne	.L113
	.loc 2 478 0
	movl	$0, %ebx
	.align 32
.L103:
	movq	8(%rbp), %rsi
	movl	$dmu_free_long_range_impl, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 479 0
	naclaspq	$104, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE14:
	.size	dmu_free_long_range_impl, .-dmu_free_long_range_impl
	.align 32
.globl dmu_free_long_range
	.type	dmu_free_long_range, @function
dmu_free_long_range:
.LFB15:
	.loc 2 484 0
	.cfi_startproc
	pushq	%rbp
.LCFI24:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI25:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 2 484 0
	movq	8(%rbp), %rsi
	movl	$dmu_free_long_range, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 488 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12012, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 489 0
	cmpl	$0, -20(%rbp)
	je	.L116
	.loc 2 490 0
	movl	-20(%rbp), %ebx
	jmp	.L117
	.align 32
.L116:
	.loc 2 491 0
	mov	-24(%rbp), %ebx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	dmu_free_long_range_impl
	movl	%eax, -20(%rbp)
	.loc 2 492 0
	mov	-24(%rbp), %eax
	movl	$__func__.12012, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 493 0
	movl	-20(%rbp), %ebx
	.align 32
.L117:
	movq	8(%rbp), %rsi
	movl	$dmu_free_long_range, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 494 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE15:
	.size	dmu_free_long_range, .-dmu_free_long_range
	.align 32
.globl dmu_free_object
	.type	dmu_free_object, @function
dmu_free_object:
.LFB16:
	.loc 2 498 0
	.cfi_startproc
	pushq	%rbp
.LCFI26:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI27:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 498 0
	movq	8(%rbp), %rsi
	movl	$dmu_free_object, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 503 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %r8d
	movl	$__func__.12028, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold_impl
	movl	%eax, -20(%rbp)
	.loc 2 505 0
	cmpl	$0, -20(%rbp)
	je	.L120
	.loc 2 506 0
	movl	-20(%rbp), %ebx
	jmp	.L121
	.align 32
.L120:
	.loc 2 507 0
	mov	-28(%rbp), %eax
	movzbl	%nacl:146(%r15,%rax), %eax
	cmpb	$1, %al
	jne	.L122
	.loc 2 508 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	dmu_tx_create
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 509 0
	movq	-48(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dmu_tx_hold_bonus
	.loc 2 510 0
	mov	-28(%rbp), %eax
	movq	%nacl:120(%r15,%rax), %rbx
	movl	-24(%rbp), %eax
	movq	$-1, %rcx
	movl	$0, %edx
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	dmu_tx_hold_free
	.loc 2 511 0
	movl	-24(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	dmu_tx_assign
	movl	%eax, -20(%rbp)
	.loc 2 512 0
	cmpl	$0, -20(%rbp)
	jne	.L123
	.loc 2 513 0
	mov	-28(%rbp), %ebx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	$-1, %rdx
	movl	$0, %esi
	movl	%ebx, %edi
	call	dnode_free_range
	.loc 2 514 0
	mov	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dnode_free
	.loc 2 515 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	dmu_tx_commit
	.loc 2 517 0
	jmp	.L125
	.align 32
.L123:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	dmu_tx_abort
	jmp	.L125
	.align 32
.L122:
	.loc 2 520 0
	mov	-28(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	$1, %r8d
	movq	$-1, %rcx
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	dmu_free_long_range_impl
	movl	%eax, -20(%rbp)
	.align 32
.L125:
	.loc 2 522 0
	mov	-28(%rbp), %eax
	movl	$__func__.12028, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 523 0
	movl	-20(%rbp), %ebx
	.align 32
.L121:
	movq	8(%rbp), %rsi
	movl	$dmu_free_object, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 524 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE16:
	.size	dmu_free_object, .-dmu_free_object
	.section	.rodata
	.align 8
.LC57:
	.string	"offset < (18446744073709551615ULL)"
	.align 8
.LC58:
	.string	"size == -1ULL || size <= (18446744073709551615ULL) - offset"
	.text
	.align 32
.globl dmu_free_range
	.type	dmu_free_range, @function
dmu_free_range:
.LFB17:
	.loc 2 529 0
	.cfi_startproc
	pushq	%rbp
.LCFI28:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI29:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	.loc 2 529 0
	movq	8(%rbp), %rsi
	movl	$dmu_free_range, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 531 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12060, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 532 0
	cmpl	$0, -20(%rbp)
	je	.L128
	.loc 2 533 0
	movl	-20(%rbp), %ebx
	jmp	.L129
	.align 32
.L128:
	.loc 2 534 0
	cmpq	$-1, -56(%rbp)
	jne	.L130
	movl	$__PRETTY_FUNCTION__.12061, %ecx
	movl	$534, %edx
	movl	$.LC44, %esi
	movl	$.LC57, %edi
	call	__assert_fail
	.align 32
.L130:
	.loc 2 535 0
	cmpq	$-1, -64(%rbp)
	je	.L131
	movq	-56(%rbp), %rax
	notq	%rax
	cmpq	-64(%rbp), %rax
	jae	.L131
	movl	$__PRETTY_FUNCTION__.12061, %ecx
	movl	$535, %edx
	movl	$.LC44, %esi
	movl	$.LC58, %edi
	call	__assert_fail
	.align 32
.L131:
	.loc 2 536 0
	mov	-24(%rbp), %ebx
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_free_range
	.loc 2 537 0
	mov	-24(%rbp), %eax
	movl	$__func__.12060, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 538 0
	movl	$0, %ebx
	.align 32
.L129:
	movq	8(%rbp), %rsi
	movl	$dmu_free_range, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 539 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE17:
	.size	dmu_free_range, .-dmu_free_range
	.section	.rodata
.LC59:
	.string	"size > 0"
	.text
	.align 32
.globl dmu_read
	.type	dmu_read, @function
dmu_read:
.LFB18:
	.loc 2 544 0
	.cfi_startproc
	pushq	%rbp
.LCFI30:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI31:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	.loc 2 544 0
	movq	8(%rbp), %rsi
	movl	$dmu_read, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 549 0
	mov	-68(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-56(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12088, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -48(%rbp)
	.loc 2 550 0
	cmpl	$0, -48(%rbp)
	je	.L134
	.loc 2 551 0
	movl	-48(%rbp), %ebx
	jmp	.L135
	.align 32
.L134:
	.loc 2 558 0
	mov	-56(%rbp), %eax
	movzbl	%nacl:148(%r15,%rax), %eax
	testb	%al, %al
	jne	.L139
.LBB11:
	.loc 2 559 0
	mov	-56(%rbp), %eax
	.loc 2 560 0
	movl	%nacl:152(%r15,%rax), %eax
	mov	%eax, %eax
	cmpq	-88(%rbp), %rax
	jb	.L137
	mov	-56(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %eax
	mov	%eax, %eax
	movq	%rax, %rdx
	subq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	jmp	.L138
	.align 32
.L137:
	movl	$0, %eax
	.align 32
.L138:
	movl	%eax, -44(%rbp)
	.loc 2 561 0
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	-44(%rbp), %eax
	addl	-100(%rbp), %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 562 0
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -96(%rbp)
.LBE11:
	.loc 2 565 0
	jmp	.L139
	.align 32
.L145:
.LBB12:
	.loc 2 566 0
	movl	$5242880, %eax
	cmpq	$5242880, -96(%rbp)
	cmovbe	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 572 0
	mov	-56(%rbp), %ebx
	leal	-64(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	leal	-60(%rbp), %ecx
	movl	%ecx, (%rsp)
	movl	%esi, %r9d
	movl	$__func__.12088, %r8d
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dmu_buf_hold_array_by_dnode
	movl	%eax, -48(%rbp)
	.loc 2 574 0
	cmpl	$0, -48(%rbp)
	jne	.L147
	.align 32
.L140:
	.loc 2 577 0
	movl	$0, -52(%rbp)
	jmp	.L142
	.align 32
.L144:
.LBB13:
	.loc 2 580 0
	mov	-60(%rbp), %eax
	movl	-52(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 582 0
	cmpq	$0, -96(%rbp)
	jne	.L143
	movl	$__PRETTY_FUNCTION__.12095, %ecx
	movl	$582, %edx
	movl	$.LC44, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L143:
	.loc 2 584 0
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	mov	-20(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 585 0
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movl	%eax, -28(%rbp)
	.loc 2 587 0
	movl	-28(%rbp), %edx
	mov	-20(%rbp), %eax
	mov	%nacl:24(%r15,%rax), %eax
	movl	-24(%rbp), %ecx
	leal	(%rcx,%rax), %eax
	mov	%eax, %ecx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	bcopy
	.loc 2 589 0
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -88(%rbp)
	.loc 2 590 0
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -96(%rbp)
	.loc 2 591 0
	movl	-28(%rbp), %eax
	addl	%eax, -100(%rbp)
.LBE13:
	.loc 2 577 0
	addl	$1, -52(%rbp)
	.align 32
.L142:
	movl	-64(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L144
	.loc 2 593 0
	movl	-64(%rbp), %eax
	mov	-60(%rbp), %ecx
	movl	$__func__.12088, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	dmu_buf_rele_array
	.align 32
.L139:
.LBE12:
	.loc 2 565 0
	cmpq	$0, -96(%rbp)
	jne	.L145
	jmp	.L141
	.align 32
.L147:
.LBB14:
	.loc 2 575 0
	nop
	.align 32
.L141:
.LBE14:
	.loc 2 595 0
	mov	-56(%rbp), %eax
	movl	$__func__.12088, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 596 0
	movl	-48(%rbp), %ebx
	.align 32
.L135:
	movq	8(%rbp), %rsi
	movl	$dmu_read, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 597 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE18:
	.size	dmu_read, .-dmu_read
	.section	.rodata
	.align 8
.LC60:
	.string	"0 == dmu_buf_hold_array(os, object, offset, size, FALSE, FTAG, &numbufs, &dbp)"
	.align 8
.LC61:
	.string	"i == 0 || i == numbufs-1 || tocpy == db->db_size"
	.text
	.align 32
.globl dmu_write
	.type	dmu_write, @function
dmu_write:
.LFB19:
	.loc 2 602 0
	.cfi_startproc
	pushq	%rbp
.LCFI32:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI33:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	.loc 2 602 0
	movq	8(%rbp), %rsi
	movl	$dmu_write, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 606 0
	cmpq	$0, -80(%rbp)
	jne	.L149
	movl	$0, %ebx
	jmp	.L150
	.align 32
.L149:
	.loc 2 609 0
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rbx
	movl	-52(%rbp), %eax
	leal	-36(%rbp), %esi
	movl	%esi, 8(%rsp)
	leal	-40(%rbp), %esi
	movl	%esi, (%rsp)
	movl	$__func__.12167, %r9d
	movl	$0, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	dmu_buf_hold_array
	testl	%eax, %eax
	je	.L151
	movl	$.LC42, %eax
	mov	%eax, %ebx
	mov	stderr(%rip), %eax
	movl	$.LC60, %r9d
	movl	$__PRETTY_FUNCTION__.12168, %r8d
	movl	$610, %ecx
	movl	$.LC44, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fprintf
	call	abort
	.align 32
.L151:
	.loc 2 612 0
	movl	$0, -32(%rbp)
	jmp	.L152
	.align 32
.L158:
.LBB15:
	.loc 2 615 0
	mov	-36(%rbp), %eax
	movl	-32(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 617 0
	cmpq	$0, -80(%rbp)
	jne	.L153
	movl	$__PRETTY_FUNCTION__.12168, %ecx
	movl	$617, %edx
	movl	$.LC44, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L153:
	.loc 2 619 0
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	mov	-20(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 620 0
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movl	%eax, -28(%rbp)
	.loc 2 622 0
	cmpl	$0, -32(%rbp)
	je	.L154
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	-32(%rbp), %eax
	je	.L154
	movl	-28(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	je	.L154
	movl	$__PRETTY_FUNCTION__.12168, %ecx
	movl	$622, %edx
	movl	$.LC44, %esi
	movl	$.LC61, %edi
	call	__assert_fail
	.align 32
.L154:
	.loc 2 624 0
	movl	-28(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L155
	.loc 2 625 0
	movl	-88(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dmu_buf_will_fill
	jmp	.L156
	.align 32
.L155:
	.loc 2 627 0
	movl	-88(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dmu_buf_will_dirty
	.align 32
.L156:
	.loc 2 629 0
	movl	-28(%rbp), %edx
	mov	-20(%rbp), %eax
	mov	%nacl:24(%r15,%rax), %eax
	movl	-24(%rbp), %ecx
	leal	(%rcx,%rax), %eax
	mov	%eax, %ecx
	movl	-84(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	bcopy
	.loc 2 631 0
	movl	-28(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L157
	.loc 2 632 0
	movl	-88(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dmu_buf_fill_done
	.align 32
.L157:
	.loc 2 634 0
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	.loc 2 635 0
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -80(%rbp)
	.loc 2 636 0
	movl	-28(%rbp), %eax
	addl	%eax, -84(%rbp)
.LBE15:
	.loc 2 612 0
	addl	$1, -32(%rbp)
	.align 32
.L152:
	movl	-40(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L158
	.loc 2 638 0
	movl	-40(%rbp), %eax
	mov	-36(%rbp), %ecx
	movl	$__func__.12167, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	dmu_buf_rele_array
	movl	$1, %ebx
	.align 32
.L150:
	movq	8(%rbp), %rsi
	movl	$dmu_write, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 639 0
	naclaspq	$104, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE19:
	.size	dmu_write, .-dmu_write
	.align 32
.globl dmu_read_uio
	.type	dmu_read_uio, @function
dmu_read_uio:
.LFB20:
	.loc 2 644 0
	.cfi_startproc
	pushq	%rbp
.LCFI34:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI35:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 2 644 0
	movq	8(%rbp), %rsi
	movl	$dmu_read_uio, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 652 0
	mov	-68(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-52(%rbp), %eax
	leal	-40(%rbp), %esi
	movl	%esi, 8(%rsp)
	leal	-44(%rbp), %esi
	movl	%esi, (%rsp)
	movl	$__func__.12236, %r9d
	movl	$1, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	dmu_buf_hold_array
	movl	%eax, -32(%rbp)
	.loc 2 654 0
	cmpl	$0, -32(%rbp)
	je	.L164
	.loc 2 655 0
	movl	-32(%rbp), %ebx
	jmp	.L165
	.align 32
.L164:
	.loc 2 657 0
	movl	$0, -36(%rbp)
	jmp	.L166
	.align 32
.L170:
.LBB16:
	.loc 2 660 0
	mov	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 662 0
	cmpq	$0, -80(%rbp)
	jne	.L167
	movl	$__PRETTY_FUNCTION__.12240, %ecx
	movl	$662, %edx
	movl	$.LC44, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L167:
	.loc 2 664 0
	mov	-68(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-20(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 665 0
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movl	%eax, -28(%rbp)
	.loc 2 667 0
	movl	-28(%rbp), %eax
	mov	-20(%rbp), %edx
	mov	%nacl:24(%r15,%rdx), %edx
	movl	-24(%rbp), %ecx
	leal	(%rcx,%rdx), %edx
	mov	%edx, %ebx
	movl	-68(%rbp), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	uiomove
	movl	%eax, -32(%rbp)
	.loc 2 669 0
	cmpl	$0, -32(%rbp)
	jne	.L172
	.align 32
.L168:
	.loc 2 672 0
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -80(%rbp)
.LBE16:
	.loc 2 657 0
	addl	$1, -36(%rbp)
	.align 32
.L166:
	movl	-44(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L170
	jmp	.L169
	.align 32
.L172:
.LBB17:
	.loc 2 670 0
	nop
	.align 32
.L169:
.LBE17:
	.loc 2 674 0
	movl	-44(%rbp), %eax
	mov	-40(%rbp), %ecx
	movl	$__func__.12236, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	dmu_buf_rele_array
	.loc 2 676 0
	movl	-32(%rbp), %ebx
	.align 32
.L165:
	movq	8(%rbp), %rsi
	movl	$dmu_read_uio, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 677 0
	naclaspq	$88, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE20:
	.size	dmu_read_uio, .-dmu_read_uio
	.align 32
.globl dmu_write_uio
	.type	dmu_write_uio, @function
dmu_write_uio:
.LFB21:
	.loc 2 682 0
	.cfi_startproc
	pushq	%rbp
.LCFI36:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI37:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	.loc 2 682 0
	movq	8(%rbp), %rsi
	movl	$dmu_write_uio, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 685 0
	movl	$0, -32(%rbp)
	.loc 2 687 0
	cmpq	$0, -80(%rbp)
	jne	.L174
	.loc 2 688 0
	movl	$0, %ebx
	jmp	.L175
	.align 32
.L174:
	.loc 2 690 0
	mov	-68(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-52(%rbp), %eax
	leal	-40(%rbp), %esi
	movl	%esi, 8(%rsp)
	leal	-44(%rbp), %esi
	movl	%esi, (%rsp)
	movl	$__func__.12287, %r9d
	movl	$0, %r8d
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	dmu_buf_hold_array
	movl	%eax, -32(%rbp)
	.loc 2 692 0
	cmpl	$0, -32(%rbp)
	je	.L176
	.loc 2 693 0
	movl	-32(%rbp), %ebx
	jmp	.L175
	.align 32
.L176:
	.loc 2 695 0
	movl	$0, -36(%rbp)
	jmp	.L177
	.align 32
.L185:
.LBB18:
	.loc 2 698 0
	mov	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 700 0
	cmpq	$0, -80(%rbp)
	jne	.L178
	movl	$__PRETTY_FUNCTION__.12291, %ecx
	movl	$700, %edx
	movl	$.LC44, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L178:
	.loc 2 702 0
	mov	-68(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-20(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 703 0
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movl	%eax, -28(%rbp)
	.loc 2 705 0
	cmpl	$0, -36(%rbp)
	je	.L179
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	-36(%rbp), %eax
	je	.L179
	movl	-28(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	je	.L179
	movl	$__PRETTY_FUNCTION__.12291, %ecx
	movl	$705, %edx
	movl	$.LC44, %esi
	movl	$.LC61, %edi
	call	__assert_fail
	.align 32
.L179:
	.loc 2 707 0
	movl	-28(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L180
	.loc 2 708 0
	movl	-84(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dmu_buf_will_fill
	jmp	.L181
	.align 32
.L180:
	.loc 2 710 0
	movl	-84(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dmu_buf_will_dirty
	.align 32
.L181:
	.loc 2 718 0
	movl	-28(%rbp), %eax
	mov	-20(%rbp), %edx
	mov	%nacl:24(%r15,%rdx), %edx
	movl	-24(%rbp), %ecx
	leal	(%rcx,%rdx), %edx
	mov	%edx, %ebx
	movl	-68(%rbp), %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	uiomove
	movl	%eax, -32(%rbp)
	.loc 2 721 0
	movl	-28(%rbp), %eax
	movslq	%eax,%rdx
	mov	-20(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L182
	.loc 2 722 0
	movl	-84(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dmu_buf_fill_done
	.align 32
.L182:
	.loc 2 724 0
	cmpl	$0, -32(%rbp)
	jne	.L187
	.align 32
.L183:
	.loc 2 727 0
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -80(%rbp)
.LBE18:
	.loc 2 695 0
	addl	$1, -36(%rbp)
	.align 32
.L177:
	movl	-44(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L185
	jmp	.L184
	.align 32
.L187:
.LBB19:
	.loc 2 725 0
	nop
	.align 32
.L184:
.LBE19:
	.loc 2 729 0
	movl	-44(%rbp), %eax
	mov	-40(%rbp), %ecx
	movl	$__func__.12287, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	dmu_buf_rele_array
	.loc 2 730 0
	movl	-32(%rbp), %ebx
	.align 32
.L175:
	movq	8(%rbp), %rsi
	movl	$dmu_write_uio, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 731 0
	naclaspq	$104, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE21:
	.size	dmu_write_uio, .-dmu_write_uio
	.section	.rodata
	.align 8
.LC62:
	.string	"dr->dt.dl.dr_override_state == DR_IN_DMU_SYNC"
	.text
	.align 32
	.type	dmu_sync_done, @function
dmu_sync_done:
.LFB22:
	.loc 2 803 0
	.cfi_startproc
	pushq	%rbp
.LCFI38:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI39:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 803 0
	movq	8(%rbp), %rsi
	movl	$dmu_sync_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 804 0
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 2 805 0
	mov	-32(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 806 0
	mov	-28(%rbp), %eax
	movl	%nacl:20(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 807 0
	mov	-32(%rbp), %eax
	movl	%nacl:4(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 809 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L189
	.loc 2 810 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$1, %nacl:88(%r15,%rax)
	.loc 2 811 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	mov	-36(%rbp), %edx
	mov	%nacl:72(%r15,%rdx), %edx
	movq	%nacl:48(%r15,%rdx), %rcx
	mov	-36(%rbp), %edx
	mov	%nacl:72(%r15,%rdx), %edx
	movq	%nacl:48(%r15,%rdx), %rdx
	movq	%rdx, %rbx
	shrq	$48, %rbx
	mov	-24(%rbp), %edx
	mov	%nacl:36(%r15,%rdx), %edx
	movl	%nacl:136(%r15,%rdx), %edx
	mov	%edx, %edx
	xorq	%rbx, %rdx
	andl	$255, %edx
	salq	$48, %rdx
	xorq	%rcx, %rdx
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 812 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	mov	-36(%rbp), %edx
	mov	%nacl:72(%r15,%rdx), %edx
	movq	%nacl:48(%r15,%rdx), %rcx
	movabsq	$-2233785415175766017, %rdx
	andq	%rcx, %rdx
	movq	%rdx, %nacl:48(%r15,%rax)
	.align 32
.L189:
	.loc 2 815 0
	movl	-24(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 816 0
	mov	-28(%rbp), %eax
	movl	%nacl:168(%r15,%rax), %eax
	cmpl	$1, %eax
	je	.L190
	movl	$__PRETTY_FUNCTION__.12362, %ecx
	movl	$816, %edx
	movl	$.LC44, %esi
	movl	$.LC62, %edi
	call	__assert_fail
	.align 32
.L190:
	.loc 2 817 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %edx
	mov	-28(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:40(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:48(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:56(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:64(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:72(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:120(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:128(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:136(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:144(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:152(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:160(%r15,%rax)
	.loc 2 818 0
	mov	-28(%rbp), %eax
	movl	$2, %nacl:168(%r15,%rax)
	.loc 2 819 0
	movl	-24(%rbp), %eax
	addl	$216, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_broadcast
	.loc 2 820 0
	movl	-24(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 822 0
	cmpl	$0, -20(%rbp)
	je	.L191
	.loc 2 823 0
	mov	-32(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ecx
	mov	-24(%rbp), %edx
	mov	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%edx, %edi
	naclcall	%eax,%r15
	.align 32
.L191:
	.loc 2 825 0
	movl	-32(%rbp), %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	umem_free
	movq	8(%rbp), %rsi
	movl	$dmu_sync_done, %edi
	call	__cyg_profile_func_exit
	.loc 2 826 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE22:
	.size	dmu_sync_done, .-dmu_sync_done
	.section	.rodata
.LC63:
	.string	"((bp)->blk_birth == 0)"
.LC64:
	.string	"txg != 0"
	.align 8
.LC65:
	.string	"dmu_sync txg=%llu, s,o,q %llu %llu %llu\n"
	.align 8
.LC66:
	.string	"db->db_data_pending || (db->db_blkptr && db->db_blkptr->blk_birth == txg)"
.LC67:
	.string	"dr->dr_txg == txg"
.LC68:
	.string	"err == 0"
	.text
	.align 32
.globl dmu_sync
	.type	dmu_sync, @function
dmu_sync:
.LFB23:
	.loc 2 853 0
	.cfi_startproc
	pushq	%rbp
.LCFI40:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI41:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$200, %r15
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movl	%edx, -124(%rbp)
	movq	%rcx, -136(%rbp)
	movl	%r8d, -140(%rbp)
	movl	%r9d, -144(%rbp)
	.loc 2 853 0
	movq	8(%rbp), %rsi
	movl	$dmu_sync, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 854 0
	movl	-120(%rbp), %eax
	movl	%eax, -52(%rbp)
	.loc 2 855 0
	mov	-52(%rbp), %eax
	movl	%nacl:32(%r15,%rax), %eax
	movl	%eax, -48(%rbp)
	.loc 2 856 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%nacl:16(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 857 0
	movl	-44(%rbp), %eax
	addl	$440, %eax
	movl	%eax, -40(%rbp)
	.loc 2 861 0
	movq	$0, -112(%rbp)
	movl	$0, -104(%rbp)
	.loc 2 866 0
	mov	-124(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L194
	movl	$__PRETTY_FUNCTION__.12415, %ecx
	movl	$866, %edx
	movl	$.LC44, %esi
	movl	$.LC63, %edi
	call	__assert_fail
	.align 32
.L194:
	.loc 2 867 0
	cmpq	$0, -136(%rbp)
	jne	.L195
	movl	$__PRETTY_FUNCTION__.12415, %ecx
	movl	$867, %edx
	movl	$.LC44, %esi
	movl	$.LC64, %edi
	call	__assert_fail
	.align 32
.L195:
	.loc 2 870 0
	movl	zfs_flags(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L196
	mov	-40(%rbp), %eax
	movq	%nacl:168(%r15,%rax), %rdx
	mov	-40(%rbp), %eax
	movq	%nacl:160(%r15,%rax), %rax
	mov	-40(%rbp), %ecx
	movq	%nacl:184(%r15,%rcx), %rbx
	movq	-136(%rbp), %rcx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %r9
	movq	%rcx, %r8
	movl	$.LC65, %ecx
	movl	$871, %edx
	movl	$__func__.12416, %esi
	movl	$.LC44, %edi
	movl	$0, %eax
	call	__dprintf
	.align 32
.L196:
	.loc 2 876 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_suspend
	.loc 2 881 0
	mov	-40(%rbp), %eax
	movq	%nacl:184(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	jb	.L197
	.loc 2 882 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 886 0
	mov	-44(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movl	%eax, %edi
	call	spa_freeze_txg
	cmpq	-136(%rbp), %rax
	jae	.L198
	.loc 2 888 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L199
	.loc 2 889 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %edx
	mov	-124(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:8(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:40(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:48(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:56(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:64(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:72(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:120(%r15,%rax)
	.align 32
.L199:
	.loc 2 890 0
	movl	$0, %ebx
	jmp	.L200
	.align 32
.L198:
	.loc 2 892 0
	movl	$17, %ebx
	jmp	.L200
	.align 32
.L197:
	.loc 2 895 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 897 0
	mov	-40(%rbp), %eax
	movq	%nacl:176(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.L201
	.loc 2 898 0
	jmp	.L202
	.align 32
.L205:
	.loc 2 904 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %edx
	movl	-52(%rbp), %eax
	addl	$216, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.loc 2 905 0
	mov	-52(%rbp), %eax
	mov	%nacl:264(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L203
	.loc 2 906 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	.loc 2 905 0
	testq	%rax, %rax
	je	.L203
	.loc 2 906 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	movq	%nacl:80(%r15,%rax), %rax
	.loc 2 905 0
	testq	%rax, %rax
	jne	.L203
	.loc 2 910 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %edx
	mov	-124(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:8(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:40(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:48(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:56(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:64(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:72(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:120(%r15,%rax)
	.loc 2 911 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 912 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 913 0
	movl	$0, %ebx
	jmp	.L200
	.align 32
.L203:
	.loc 2 915 0
	mov	-52(%rbp), %eax
	mov	%nacl:264(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L202
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L204
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	movq	%nacl:80(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	je	.L202
	.align 32
.L204:
	movl	$__PRETTY_FUNCTION__.12415, %ecx
	movl	$916, %edx
	movl	$.LC44, %esi
	movl	$.LC66, %edi
	call	__assert_fail
	.align 32
.L202:
	.loc 2 898 0
	mov	-52(%rbp), %eax
	mov	%nacl:264(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L205
	.loc 2 919 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L201
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	movq	%nacl:80(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.L201
	.loc 2 923 0
	mov	-52(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %edx
	mov	-124(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:8(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:40(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:48(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:56(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:64(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:72(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:120(%r15,%rax)
	.loc 2 924 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 925 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 926 0
	movl	$0, %ebx
	jmp	.L200
	.align 32
.L201:
	.loc 2 930 0
	mov	-52(%rbp), %eax
	movl	%nacl:268(%r15,%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 2 931 0
	jmp	.L206
	.align 32
.L208:
	.loc 2 932 0
	mov	-36(%rbp), %eax
	movl	%nacl:24(%r15,%rax), %eax
	movl	%eax, -36(%rbp)
	.align 32
.L206:
	.loc 2 931 0
	cmpl	$0, -36(%rbp)
	je	.L207
	mov	-36(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	ja	.L208
	.align 32
.L207:
	.loc 2 933 0
	cmpl	$0, -36(%rbp)
	je	.L209
	mov	-36(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	jae	.L210
	.align 32
.L209:
	.loc 2 938 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 939 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 940 0
	movl	$2, %ebx
	jmp	.L200
	.align 32
.L210:
	.loc 2 943 0
	mov	-36(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	cmpq	-136(%rbp), %rax
	je	.L211
	movl	$__PRETTY_FUNCTION__.12415, %ecx
	movl	$943, %edx
	movl	$.LC44, %esi
	movl	$.LC67, %edi
	call	__assert_fail
	.align 32
.L211:
	.loc 2 944 0
	mov	-36(%rbp), %eax
	movl	%nacl:168(%r15,%rax), %eax
	cmpl	$1, %eax
	jne	.L212
	.loc 2 948 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 949 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 950 0
	movl	$114, %ebx
	jmp	.L200
	.align 32
.L212:
	.loc 2 951 0
	mov	-36(%rbp), %eax
	movl	%nacl:168(%r15,%rax), %eax
	cmpl	$2, %eax
	jne	.L213
	.loc 2 956 0
	mov	-124(%rbp), %eax
	mov	-36(%rbp), %edx
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:8(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:40(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:48(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:56(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:64(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:72(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:128(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:136(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:144(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:152(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:160(%r15,%rdx), %rdx
	movq	%rdx, %nacl:120(%r15,%rax)
	.loc 2 957 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 958 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 959 0
	movl	$0, %ebx
	jmp	.L200
	.align 32
.L213:
	.loc 2 962 0
	mov	-36(%rbp), %eax
	movl	$1, %nacl:168(%r15,%rax)
	.loc 2 963 0
	movl	$256, %esi
	movl	$12, %edi
	call	umem_alloc
	mov	%eax, %eax
	movl	%eax, -32(%rbp)
	.loc 2 964 0
	mov	-32(%rbp), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 965 0
	mov	-32(%rbp), %eax
	movl	-140(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 966 0
	mov	-32(%rbp), %eax
	movl	-144(%rbp), %edx
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 967 0
	movl	-52(%rbp), %eax
	addl	$64, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 968 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	txg_resume
	.loc 2 970 0
	mov	-48(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	movq	%nacl:16(%r15,%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 2 971 0
	mov	-52(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 972 0
	mov	-52(%rbp), %eax
	movzbl	%nacl:60(%r15,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -80(%rbp)
	.loc 2 973 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, -72(%rbp)
	.loc 2 974 0
	movl	$0, -24(%rbp)
	.loc 2 975 0
	mov	-52(%rbp), %eax
	mov	%nacl:36(%r15,%rax), %eax
	movl	%nacl:136(%r15,%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$dmu_ot+4, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L214
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L215
	.align 32
.L214:
	.loc 2 976 0
	orl	$262144, -24(%rbp)
	.align 32
.L215:
	.loc 2 977 0
	mov	-52(%rbp), %eax
	mov	%nacl:36(%r15,%rax), %eax
	movl	%nacl:136(%r15,%rax), %eax
	movl	%eax, -112(%rbp)
	.loc 2 978 0
	mov	-48(%rbp), %eax
	movzbl	%nacl:34(%r15,%rax), %eax
	movb	%al, -108(%rbp)
	.loc 2 979 0
	mov	-52(%rbp), %eax
	movzbl	%nacl:60(%r15,%rax), %eax
	movb	%al, -107(%rbp)
	.loc 2 980 0
	mov	-52(%rbp), %eax
	mov	%nacl:36(%r15,%rax), %eax
	movzbl	%nacl:144(%r15,%rax), %eax
	movb	%al, -104(%rbp)
	.loc 2 981 0
	mov	-48(%rbp), %eax
	movzbl	%nacl:32(%r15,%rax), %eax
	movb	%al, -103(%rbp)
	.loc 2 982 0
	mov	-52(%rbp), %eax
	mov	%nacl:36(%r15,%rax), %eax
	movzbl	%nacl:145(%r15,%rax), %eax
	movb	%al, -106(%rbp)
	.loc 2 983 0
	mov	-48(%rbp), %eax
	movzbl	%nacl:33(%r15,%rax), %eax
	movb	%al, -105(%rbp)
	.loc 2 986 0
	movzbl	zio_priority_table+2(%rip), %eax
	.loc 2 984 0
	movzbl	%al, %ebx
	mov	-36(%rbp), %eax
	mov	%nacl:32(%r15,%rax), %ecx
	.loc 2 985 0
	mov	-52(%rbp), %eax
	mov	%nacl:32(%r15,%rax), %eax
	movzbl	%nacl:36(%r15,%rax), %eax
	cmpb	$2, %al
	je	.L216
	mov	-52(%rbp), %eax
	movzbl	%nacl:60(%r15,%rax), %eax
	testb	%al, %al
	jne	.L217
	mov	-52(%rbp), %eax
	mov	%nacl:36(%r15,%rax), %eax
	movl	%nacl:136(%r15,%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$dmu_ot+4, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L218
	.align 32
.L217:
	mov	-52(%rbp), %eax
	mov	%nacl:32(%r15,%rax), %eax
	movzbl	%nacl:36(%r15,%rax), %eax
	cmpb	$1, %al
	jne	.L218
	.align 32
.L216:
	movl	$1, %eax
	jmp	.L219
	.align 32
.L218:
	movl	$0, %eax
	.align 32
.L219:
	.loc 2 984 0
	movl	%eax, %edx
	mov	-48(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %edi
	movl	-124(%rbp), %r9d
	movq	-136(%rbp), %r8
	leal	-112(%rbp), %r10d
	movl	-116(%rbp), %eax
	leal	-96(%rbp), %esi
	movl	%esi, 48(%rsp)
	movl	-24(%rbp), %esi
	movl	%esi, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	-32(%rbp), %ebx
	movl	%ebx, 24(%rsp)
	movl	$dmu_sync_done, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	%edx, %ecx
	movl	%r10d, %edx
	movl	%edi, %esi
	movl	%eax, %edi
	call	arc_write
	mov	%eax, %eax
	movl	%eax, -28(%rbp)
	.loc 2 988 0
	cmpl	$0, -116(%rbp)
	je	.L220
	.loc 2 989 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 990 0
	movl	$115, -20(%rbp)
	jmp	.L221
	.align 32
.L220:
	.loc 2 992 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait
	movl	%eax, -20(%rbp)
	.loc 2 993 0
	cmpl	$0, -20(%rbp)
	je	.L221
	movl	$__PRETTY_FUNCTION__.12415, %ecx
	movl	$993, %edx
	movl	$.LC44, %esi
	movl	$.LC68, %edi
	call	__assert_fail
	.align 32
.L221:
	.loc 2 995 0
	movl	-20(%rbp), %ebx
	.align 32
.L200:
	movq	8(%rbp), %rsi
	movl	$dmu_sync, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 996 0
	naclaspq	$200, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE23:
	.size	dmu_sync, .-dmu_sync
	.align 32
.globl dmu_object_set_blocksize
	.type	dmu_object_set_blocksize, @function
dmu_object_set_blocksize:
.LFB24:
	.loc 2 1001 0
	.cfi_startproc
	pushq	%rbp
.LCFI42:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI43:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	.loc 2 1001 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_set_blocksize, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1005 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12566, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 1006 0
	cmpl	$0, -20(%rbp)
	je	.L224
	.loc 2 1007 0
	movl	-20(%rbp), %ebx
	jmp	.L225
	.align 32
.L224:
	.loc 2 1008 0
	mov	-24(%rbp), %ebx
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_set_blksz
	movl	%eax, -20(%rbp)
	.loc 2 1009 0
	mov	-24(%rbp), %eax
	movl	$__func__.12566, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 1010 0
	movl	-20(%rbp), %ebx
	.align 32
.L225:
	movq	8(%rbp), %rsi
	movl	$dmu_object_set_blocksize, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1011 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE24:
	.size	dmu_object_set_blocksize, .-dmu_object_set_blocksize
	.section	.rodata
	.align 8
.LC69:
	.string	"checksum < ZIO_CHECKSUM_FUNCTIONS"
	.text
	.align 32
.globl dmu_object_set_checksum
	.type	dmu_object_set_checksum, @function
dmu_object_set_checksum:
.LFB25:
	.loc 2 1016 0
	.cfi_startproc
	pushq	%rbp
.LCFI44:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI45:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movl	%ecx, -56(%rbp)
	movb	%al, -52(%rbp)
	.loc 2 1016 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_set_checksum, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1020 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12582, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	.loc 2 1021 0
	cmpb	$8, -52(%rbp)
	jbe	.L228
	movl	$__PRETTY_FUNCTION__.12583, %ecx
	movl	$1021, %edx
	movl	$.LC44, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L228:
	.loc 2 1022 0
	mov	-20(%rbp), %eax
	movzbl	-52(%rbp), %edx
	movb	%dl, %nacl:144(%r15,%rax)
	.loc 2 1023 0
	mov	-20(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dnode_setdirty
	.loc 2 1024 0
	mov	-20(%rbp), %eax
	movl	$__func__.12582, %esi
	movl	%eax, %edi
	call	dnode_rele
	movq	8(%rbp), %rsi
	movl	$dmu_object_set_checksum, %edi
	call	__cyg_profile_func_exit
	.loc 2 1025 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE25:
	.size	dmu_object_set_checksum, .-dmu_object_set_checksum
	.section	.rodata
	.align 8
.LC70:
	.string	"compress < ZIO_COMPRESS_FUNCTIONS"
	.text
	.align 32
.globl dmu_object_set_compress
	.type	dmu_object_set_compress, @function
dmu_object_set_compress:
.LFB26:
	.loc 2 1030 0
	.cfi_startproc
	pushq	%rbp
.LCFI46:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI47:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movl	%ecx, -56(%rbp)
	movb	%al, -52(%rbp)
	.loc 2 1030 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_set_compress, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1034 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12597, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	.loc 2 1035 0
	cmpb	$13, -52(%rbp)
	jbe	.L231
	movl	$__PRETTY_FUNCTION__.12598, %ecx
	movl	$1035, %edx
	movl	$.LC44, %esi
	movl	$.LC70, %edi
	call	__assert_fail
	.align 32
.L231:
	.loc 2 1036 0
	mov	-20(%rbp), %eax
	movzbl	-52(%rbp), %edx
	movb	%dl, %nacl:145(%r15,%rax)
	.loc 2 1037 0
	mov	-20(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dnode_setdirty
	.loc 2 1038 0
	mov	-20(%rbp), %eax
	movl	$__func__.12597, %esi
	movl	%eax, %edi
	call	dnode_rele
	movq	8(%rbp), %rsi
	movl	$dmu_object_set_compress, %edi
	call	__cyg_profile_func_exit
	.loc 2 1039 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE26:
	.size	dmu_object_set_compress, .-dmu_object_set_compress
	.align 32
.globl dmu_offset_next
	.type	dmu_offset_next, @function
dmu_offset_next:
.LFB27:
	.loc 2 1043 0
	.cfi_startproc
	pushq	%rbp
.LCFI48:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI49:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	.loc 2 1043 0
	movq	8(%rbp), %rsi
	movl	$dmu_offset_next, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1047 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12614, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 1048 0
	cmpl	$0, -20(%rbp)
	je	.L234
	.loc 2 1049 0
	movl	-20(%rbp), %ebx
	jmp	.L235
	.align 32
.L234:
	.loc 2 1054 0
	movl	$0, -24(%rbp)
	jmp	.L236
	.align 32
.L239:
	.loc 2 1055 0
	mov	-28(%rbp), %eax
	addl	$200, %eax
	mov	%eax, %eax
	movl	-24(%rbp), %edx
	sall	$3, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_link_active
	testl	%eax, %eax
	jne	.L242
	.align 32
.L237:
	.loc 2 1054 0
	addl	$1, -24(%rbp)
	.align 32
.L236:
	cmpl	$3, -24(%rbp)
	jle	.L239
	jmp	.L238
	.align 32
.L242:
	.loc 2 1056 0
	nop
	.align 32
.L238:
	.loc 2 1058 0
	cmpl	$4, -24(%rbp)
	je	.L240
	.loc 2 1059 0
	mov	-28(%rbp), %eax
	movl	$__func__.12614, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 1060 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	dmu_objset_pool
	mov	%eax, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	txg_wait_synced
	.loc 2 1061 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12614, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 1062 0
	cmpl	$0, -20(%rbp)
	je	.L240
	.loc 2 1063 0
	movl	-20(%rbp), %ebx
	jmp	.L235
	.align 32
.L240:
	.loc 2 1066 0
	cmpl	$0, -52(%rbp)
	setne	%al
	movzbl	%al, %eax
	mov	-28(%rbp), %ebx
	movl	-56(%rbp), %edx
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	dnode_next_offset
	movl	%eax, -20(%rbp)
	.loc 2 1067 0
	mov	-28(%rbp), %eax
	movl	$__func__.12614, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 1069 0
	movl	-20(%rbp), %ebx
	.align 32
.L235:
	movq	8(%rbp), %rsi
	movl	$dmu_offset_next, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1070 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE27:
	.size	dmu_offset_next, .-dmu_offset_next
	.align 32
.globl dmu_object_info_from_dnode
	.type	dmu_object_info_from_dnode, @function
dmu_object_info_from_dnode:
.LFB28:
	.loc 2 1074 0
	.cfi_startproc
	pushq	%rbp
.LCFI50:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI51:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 1074 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_info_from_dnode, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1075 0
	mov	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	rw_enter
	.loc 2 1076 0
	movl	-20(%rbp), %eax
	addl	$232, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1078 0
	mov	-20(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1079 0
	mov	-20(%rbp), %eax
	movzbl	%nacl:147(%r15,%rax), %eax
	testb	%al, %al
	je	.L244
	.loc 2 1080 0
	mov	-20(%rbp), %eax
	movzbl	%nacl:147(%r15,%rax), %eax
	movzbl	%al, %eax
	movl	$1, %edx
	movq	%rdx, %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rax
	jmp	.L245
	.align 32
.L244:
	.loc 2 1079 0
	movl	$0, %eax
	.align 32
.L245:
	mov	-24(%rbp), %edx
	movl	%eax, %nacl:4(%r15,%rdx)
	.loc 2 1081 0
	mov	-20(%rbp), %eax
	movzbl	%nacl:146(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movb	%dl, %nacl:24(%r15,%rax)
	.loc 2 1082 0
	mov	-20(%rbp), %eax
	movzbl	%nacl:144(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movb	%dl, %nacl:25(%r15,%rax)
	.loc 2 1083 0
	mov	-20(%rbp), %eax
	movzbl	%nacl:145(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movb	%dl, %nacl:26(%r15,%rax)
	.loc 2 1084 0
	mov	-20(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movzbl	%nacl:7(%r15,%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L246
	mov	-20(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movq	%nacl:24(%r15,%rax), %rax
	addq	$256, %rax
	shrq	$9, %rax
	jmp	.L247
	.align 32
.L246:
	mov	-20(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movq	%nacl:24(%r15,%rax), %rax
	salq	$9, %rax
	addq	$256, %rax
	shrq	$9, %rax
	.align 32
.L247:
	mov	-24(%rbp), %edx
	movq	%rax, %nacl:32(%r15,%rdx)
	.loc 2 1086 0
	mov	-20(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	mov	-24(%rbp), %eax
	movq	%rdx, %nacl:40(%r15,%rax)
	.loc 2 1087 0
	mov	-20(%rbp), %eax
	movl	%nacl:136(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:16(%r15,%rax)
	.loc 2 1088 0
	mov	-20(%rbp), %eax
	movzwl	%nacl:140(%r15,%rax), %eax
	movzwl	%ax, %edx
	mov	-24(%rbp), %eax
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 1089 0
	mov	-20(%rbp), %eax
	movzbl	%nacl:142(%r15,%rax), %eax
	movzbl	%al, %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:20(%r15,%rax)
	.loc 2 1091 0
	movl	-20(%rbp), %eax
	addl	$232, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1092 0
	mov	-20(%rbp), %eax
	movl	%eax, %edi
	call	rw_exit
	movq	8(%rbp), %rsi
	movl	$dmu_object_info_from_dnode, %edi
	call	__cyg_profile_func_exit
	.loc 2 1093 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE28:
	.size	dmu_object_info_from_dnode, .-dmu_object_info_from_dnode
	.align 32
.globl dmu_object_info
	.type	dmu_object_info, @function
dmu_object_info:
.LFB29:
	.loc 2 1101 0
	.cfi_startproc
	pushq	%rbp
.LCFI52:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI53:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 2 1101 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_info, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1103 0
	mov	-36(%rbp), %eax
	mov	%nacl:(%r15,%rax), %ebx
	leal	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$__func__.12693, %edx
	movq	%rax, %rsi
	movl	%ebx, %edi
	call	dnode_hold
	movl	%eax, -20(%rbp)
	.loc 2 1105 0
	cmpl	$0, -20(%rbp)
	je	.L250
	.loc 2 1106 0
	movl	-20(%rbp), %ebx
	jmp	.L251
	.align 32
.L250:
	.loc 2 1108 0
	cmpl	$0, -52(%rbp)
	je	.L252
	.loc 2 1109 0
	mov	-24(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dmu_object_info_from_dnode
	.align 32
.L252:
	.loc 2 1111 0
	mov	-24(%rbp), %eax
	movl	$__func__.12693, %esi
	movl	%eax, %edi
	call	dnode_rele
	.loc 2 1112 0
	movl	$0, %ebx
	.align 32
.L251:
	movq	8(%rbp), %rsi
	movl	$dmu_object_info, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1113 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE29:
	.size	dmu_object_info, .-dmu_object_info
	.align 32
.globl dmu_object_info_from_db
	.type	dmu_object_info_from_db, @function
dmu_object_info_from_db:
.LFB30:
	.loc 2 1120 0
	.cfi_startproc
	pushq	%rbp
.LCFI54:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI55:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 1120 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_info_from_db, %edi
	call	__cyg_profile_func_enter
	.loc 2 1121 0
	mov	-4(%rbp), %eax
	mov	%nacl:36(%r15,%rax), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	dmu_object_info_from_dnode
	movq	8(%rbp), %rsi
	movl	$dmu_object_info_from_db, %edi
	call	__cyg_profile_func_exit
	.loc 2 1122 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE30:
	.size	dmu_object_info_from_db, .-dmu_object_info_from_db
	.align 32
.globl dmu_object_size_from_db
	.type	dmu_object_size_from_db, @function
dmu_object_size_from_db:
.LFB31:
	.loc 2 1130 0
	.cfi_startproc
	pushq	%rbp
.LCFI56:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI57:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	.loc 2 1130 0
	movq	8(%rbp), %rsi
	movl	$dmu_object_size_from_db, %edi
	call	__cyg_profile_func_enter
	.loc 2 1131 0
	mov	-20(%rbp), %eax
	movl	%nacl:36(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 2 1133 0
	mov	-4(%rbp), %eax
	movl	%nacl:152(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1135 0
	mov	-4(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movzbl	%nacl:7(%r15,%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L257
	mov	-4(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movq	%nacl:24(%r15,%rax), %rax
	addq	$256, %rax
	shrq	$9, %rax
	addq	$1, %rax
	jmp	.L258
	.align 32
.L257:
	mov	-4(%rbp), %eax
	mov	%nacl:132(%r15,%rax), %eax
	movq	%nacl:24(%r15,%rax), %rax
	salq	$9, %rax
	addq	$256, %rax
	shrq	$9, %rax
	addq	$1, %rax
	.align 32
.L258:
	mov	-28(%rbp), %edx
	movq	%rax, %nacl:(%r15,%rdx)
	movq	8(%rbp), %rsi
	movl	$dmu_object_size_from_db, %edi
	call	__cyg_profile_func_exit
	.loc 2 1137 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE31:
	.size	dmu_object_size_from_db, .-dmu_object_size_from_db
	.section	.rodata
.LC71:
	.string	"(size & 7) == 0"
	.text
	.align 32
.globl byteswap_uint64_array
	.type	byteswap_uint64_array, @function
byteswap_uint64_array:
.LFB32:
	.loc 2 1141 0
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
	.loc 2 1141 0
	movq	8(%rbp), %rsi
	movl	$byteswap_uint64_array, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1142 0
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1143 0
	movl	-40(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, -24(%rbp)
	.loc 2 1146 0
	movl	-40(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L261
	movl	$__PRETTY_FUNCTION__.12742, %ecx
	movl	$1146, %edx
	movl	$.LC44, %esi
	movl	$.LC71, %edi
	call	__assert_fail
	.align 32
.L261:
	.loc 2 1148 0
	movl	$0, -20(%rbp)
	jmp	.L262
	.align 32
.L263:
	.loc 2 1149 0
	movl	-20(%rbp), %eax
	sall	$3, %eax
	addl	-28(%rbp), %eax
	mov	%eax, %eax
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	salq	$8, %rdx
	movzwq	%dx,%rcx
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$8, %rdx
	andl	$255, %edx
	orq	%rcx, %rdx
	movq	%rdx, %rcx
	salq	$16, %rcx
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$16, %rdx
	salq	$8, %rdx
	movzwq	%dx,%rbx
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$24, %rdx
	andl	$255, %edx
	orq	%rbx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, %rcx
	salq	$32, %rcx
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$32, %rdx
	salq	$8, %rdx
	movzwq	%dx,%rbx
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$40, %rdx
	andl	$255, %edx
	orq	%rbx, %rdx
	movq	%rdx, %rbx
	salq	$16, %rbx
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$48, %rdx
	salq	$8, %rdx
	movzwq	%dx,%rsi
	movl	-20(%rbp), %edx
	sall	$3, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	shrq	$56, %rdx
	orq	%rsi, %rdx
	orq	%rbx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 1148 0
	addl	$1, -20(%rbp)
	.align 32
.L262:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.L263
	movq	8(%rbp), %rsi
	movl	$byteswap_uint64_array, %edi
	call	__cyg_profile_func_exit
	.loc 2 1150 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE32:
	.size	byteswap_uint64_array, .-byteswap_uint64_array
	.section	.rodata
.LC72:
	.string	"(size & 3) == 0"
	.text
	.align 32
.globl byteswap_uint32_array
	.type	byteswap_uint32_array, @function
byteswap_uint32_array:
.LFB33:
	.loc 2 1154 0
	.cfi_startproc
	pushq	%rbp
.LCFI60:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI61:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 1154 0
	movq	8(%rbp), %rsi
	movl	$byteswap_uint32_array, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1155 0
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1156 0
	movl	-40(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, -24(%rbp)
	.loc 2 1159 0
	movl	-40(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L266
	movl	$__PRETTY_FUNCTION__.12820, %ecx
	movl	$1159, %edx
	movl	$.LC44, %esi
	movl	$.LC72, %edi
	call	__assert_fail
	.align 32
.L266:
	.loc 2 1161 0
	movl	$0, -20(%rbp)
	jmp	.L267
	.align 32
.L268:
	.loc 2 1162 0
	movl	-20(%rbp), %eax
	sall	$2, %eax
	addl	-28(%rbp), %eax
	mov	%eax, %eax
	movl	-20(%rbp), %edx
	sall	$2, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movl	%nacl:(%r15,%rdx), %edx
	sall	$8, %edx
	movzwl	%dx,%ecx
	movl	-20(%rbp), %edx
	sall	$2, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movl	%nacl:(%r15,%rdx), %edx
	shrl	$8, %edx
	andl	$255, %edx
	orl	%ecx, %edx
	movl	%edx, %ecx
	sall	$16, %ecx
	movl	-20(%rbp), %edx
	sall	$2, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movl	%nacl:(%r15,%rdx), %edx
	shrl	$16, %edx
	sall	$8, %edx
	movzwl	%dx,%ebx
	movl	-20(%rbp), %edx
	sall	$2, %edx
	addl	-28(%rbp), %edx
	mov	%edx, %edx
	movl	%nacl:(%r15,%rdx), %edx
	shrl	$24, %edx
	orl	%ebx, %edx
	orl	%ecx, %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 1161 0
	addl	$1, -20(%rbp)
	.align 32
.L267:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.L268
	movq	8(%rbp), %rsi
	movl	$byteswap_uint32_array, %edi
	call	__cyg_profile_func_exit
	.loc 2 1163 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE33:
	.size	byteswap_uint32_array, .-byteswap_uint32_array
	.section	.rodata
.LC73:
	.string	"(size & 1) == 0"
	.text
	.align 32
.globl byteswap_uint16_array
	.type	byteswap_uint16_array, @function
byteswap_uint16_array:
.LFB34:
	.loc 2 1167 0
	.cfi_startproc
	pushq	%rbp
.LCFI62:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI63:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 1167 0
	movq	8(%rbp), %rsi
	movl	$byteswap_uint16_array, %edi
	call	__cyg_profile_func_enter
	.loc 2 1168 0
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 2 1169 0
	movl	-24(%rbp), %eax
	shrl	%eax
	movl	%eax, -8(%rbp)
	.loc 2 1172 0
	movl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L271
	movl	$__PRETTY_FUNCTION__.12866, %ecx
	movl	$1172, %edx
	movl	$.LC44, %esi
	movl	$.LC73, %edi
	call	__assert_fail
	.align 32
.L271:
	.loc 2 1174 0
	movl	$0, -4(%rbp)
	jmp	.L272
	.align 32
.L273:
	.loc 2 1175 0
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	addl	-12(%rbp), %eax
	mov	%eax, %eax
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	addl	-12(%rbp), %edx
	mov	%edx, %edx
	movzwl	%nacl:(%r15,%rdx), %edx
	movzwl	%dx, %edx
	sall	$8, %edx
	movl	%edx, %ecx
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	addl	-12(%rbp), %edx
	mov	%edx, %edx
	movzwl	%nacl:(%r15,%rdx), %edx
	shrw	$8, %dx
	orl	%ecx, %edx
	movw	%dx, %nacl:(%r15,%rax)
	.loc 2 1174 0
	addl	$1, -4(%rbp)
	.align 32
.L272:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jb	.L273
	movq	8(%rbp), %rsi
	movl	$byteswap_uint16_array, %edi
	call	__cyg_profile_func_exit
	.loc 2 1176 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE34:
	.size	byteswap_uint16_array, .-byteswap_uint16_array
	.align 32
.globl byteswap_uint8_array
	.type	byteswap_uint8_array, @function
byteswap_uint8_array:
.LFB35:
	.loc 2 1181 0
	.cfi_startproc
	pushq	%rbp
.LCFI64:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI65:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 1181 0
	movq	8(%rbp), %rsi
	movl	$byteswap_uint8_array, %edi
	call	__cyg_profile_func_enter
	movq	8(%rbp), %rsi
	movl	$byteswap_uint8_array, %edi
	call	__cyg_profile_func_exit
	.loc 2 1182 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE35:
	.size	byteswap_uint8_array, .-byteswap_uint8_array
	.align 32
.globl dmu_init
	.type	dmu_init, @function
dmu_init:
.LFB36:
	.loc 2 1186 0
	.cfi_startproc
	pushq	%rbp
.LCFI66:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI67:
	.cfi_def_cfa_register 6
	.loc 2 1186 0
	movq	8(%rbp), %rsi
	movl	$dmu_init, %edi
	call	__cyg_profile_func_enter
	.loc 2 1187 0
	call	dbuf_init
	.loc 2 1188 0
	call	dnode_init
	movq	8(%rbp), %rsi
	movl	$dmu_init, %edi
	call	__cyg_profile_func_exit
	.loc 2 1194 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE36:
	.size	dmu_init, .-dmu_init
	.align 32
.globl dmu_fini
	.type	dmu_fini, @function
dmu_fini:
.LFB37:
	.loc 2 1198 0
	.cfi_startproc
	pushq	%rbp
.LCFI68:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI69:
	.cfi_def_cfa_register 6
	.loc 2 1198 0
	movq	8(%rbp), %rsi
	movl	$dmu_fini, %edi
	call	__cyg_profile_func_enter
	.loc 2 1203 0
	call	dnode_fini
	.loc 2 1204 0
	call	dbuf_fini
	movq	8(%rbp), %rsi
	movl	$dmu_fini, %edi
	call	__cyg_profile_func_exit
	.loc 2 1209 0
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE37:
	.size	dmu_fini, .-dmu_fini
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.12866, @object
	.size	__PRETTY_FUNCTION__.12866, 22
__PRETTY_FUNCTION__.12866:
	.string	"byteswap_uint16_array"
	.align 16
	.type	__PRETTY_FUNCTION__.12820, @object
	.size	__PRETTY_FUNCTION__.12820, 22
__PRETTY_FUNCTION__.12820:
	.string	"byteswap_uint32_array"
	.align 16
	.type	__PRETTY_FUNCTION__.12742, @object
	.size	__PRETTY_FUNCTION__.12742, 22
__PRETTY_FUNCTION__.12742:
	.string	"byteswap_uint64_array"
	.align 16
	.type	__func__.12693, @object
	.size	__func__.12693, 16
__func__.12693:
	.string	"dmu_object_info"
	.align 16
	.type	__func__.12614, @object
	.size	__func__.12614, 16
__func__.12614:
	.string	"dmu_offset_next"
	.align 16
	.type	__func__.12597, @object
	.size	__func__.12597, 24
__func__.12597:
	.string	"dmu_object_set_compress"
	.align 16
	.type	__PRETTY_FUNCTION__.12598, @object
	.size	__PRETTY_FUNCTION__.12598, 24
__PRETTY_FUNCTION__.12598:
	.string	"dmu_object_set_compress"
	.align 16
	.type	__func__.12582, @object
	.size	__func__.12582, 24
__func__.12582:
	.string	"dmu_object_set_checksum"
	.align 16
	.type	__PRETTY_FUNCTION__.12583, @object
	.size	__PRETTY_FUNCTION__.12583, 24
__PRETTY_FUNCTION__.12583:
	.string	"dmu_object_set_checksum"
	.align 16
	.type	__func__.12566, @object
	.size	__func__.12566, 25
__func__.12566:
	.string	"dmu_object_set_blocksize"
	.type	__PRETTY_FUNCTION__.12415, @object
	.size	__PRETTY_FUNCTION__.12415, 9
__PRETTY_FUNCTION__.12415:
	.string	"dmu_sync"
	.type	__func__.12416, @object
	.size	__func__.12416, 9
__func__.12416:
	.string	"dmu_sync"
	.type	__PRETTY_FUNCTION__.12362, @object
	.size	__PRETTY_FUNCTION__.12362, 14
__PRETTY_FUNCTION__.12362:
	.string	"dmu_sync_done"
	.type	__func__.12287, @object
	.size	__func__.12287, 14
__func__.12287:
	.string	"dmu_write_uio"
	.type	__PRETTY_FUNCTION__.12291, @object
	.size	__PRETTY_FUNCTION__.12291, 14
__PRETTY_FUNCTION__.12291:
	.string	"dmu_write_uio"
	.type	__func__.12236, @object
	.size	__func__.12236, 13
__func__.12236:
	.string	"dmu_read_uio"
	.type	__PRETTY_FUNCTION__.12240, @object
	.size	__PRETTY_FUNCTION__.12240, 13
__PRETTY_FUNCTION__.12240:
	.string	"dmu_read_uio"
	.type	__func__.12167, @object
	.size	__func__.12167, 10
__func__.12167:
	.string	"dmu_write"
	.type	__PRETTY_FUNCTION__.12168, @object
	.size	__PRETTY_FUNCTION__.12168, 10
__PRETTY_FUNCTION__.12168:
	.string	"dmu_write"
	.type	__func__.12088, @object
	.size	__func__.12088, 9
__func__.12088:
	.string	"dmu_read"
	.type	__PRETTY_FUNCTION__.12095, @object
	.size	__PRETTY_FUNCTION__.12095, 9
__PRETTY_FUNCTION__.12095:
	.string	"dmu_read"
	.type	__func__.12060, @object
	.size	__func__.12060, 15
__func__.12060:
	.string	"dmu_free_range"
	.type	__PRETTY_FUNCTION__.12061, @object
	.size	__PRETTY_FUNCTION__.12061, 15
__PRETTY_FUNCTION__.12061:
	.string	"dmu_free_range"
	.align 16
	.type	__func__.12028, @object
	.size	__func__.12028, 16
__func__.12028:
	.string	"dmu_free_object"
	.align 16
	.type	__func__.12012, @object
	.size	__func__.12012, 20
__func__.12012:
	.string	"dmu_free_long_range"
	.align 16
	.type	__PRETTY_FUNCTION__.11953, @object
	.size	__PRETTY_FUNCTION__.11953, 25
__PRETTY_FUNCTION__.11953:
	.string	"dmu_free_long_range_impl"
	.type	__PRETTY_FUNCTION__.11864, @object
	.size	__PRETTY_FUNCTION__.11864, 15
__PRETTY_FUNCTION__.11864:
	.string	"get_next_chunk"
	.type	__func__.11794, @object
	.size	__func__.11794, 13
__func__.11794:
	.string	"dmu_prefetch"
	.align 16
	.type	__func__.11736, @object
	.size	__func__.11736, 19
__func__.11736:
	.string	"dmu_buf_hold_array"
	.align 16
	.type	__PRETTY_FUNCTION__.11607, @object
	.size	__PRETTY_FUNCTION__.11607, 28
__PRETTY_FUNCTION__.11607:
	.string	"dmu_buf_hold_array_by_dnode"
	.type	__func__.11545, @object
	.size	__func__.11545, 15
__func__.11545:
	.string	"dmu_bonus_hold"
	.type	__PRETTY_FUNCTION__.11546, @object
	.size	__PRETTY_FUNCTION__.11546, 15
__PRETTY_FUNCTION__.11546:
	.string	"dmu_bonus_hold"
	.type	__func__.11493, @object
	.size	__func__.11493, 13
__func__.11493:
	.string	"dmu_buf_hold"
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
	.file 3 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/stdint.h"
	.file 4 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/types.h"
	.file 5 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/sys/types.h"
	.file 6 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/include/stddef.h"
	.file 7 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/time.h"
	.file 8 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/pthreadtypes.h"
	.file 9 "../../lib/libsolkerncompat/include/sys/types.h"
	.file 10 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/stdio.h"
	.file 11 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/libio.h"
	.file 12 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/uio.h"
	.file 13 "../../lib/libsolkerncompat/include/sys/uio.h"
	.file 14 "../../lib/libzfscommon/include/sys/dmu.h"
	.file 15 "../../lib/libzfscommon/include/sys/dmu_objset.h"
	.file 16 "../../lib/libzfscommon/include/sys/dmu_tx.h"
	.file 17 "../../lib/libzfscommon/include/sys/dsl_dir.h"
	.file 18 "../../lib/libzfscommon/include/sys/spa.h"
	.file 19 "../../lib/libzfscommon/include/sys/dsl_dataset.h"
	.file 20 "../../lib/libavl/include/sys/avl_impl.h"
	.file 21 "../../lib/libavl/include/sys/avl.h"
	.file 22 "../../lib/libsolkerncompat/include/sys/mutex.h"
	.file 23 "../../lib/libsolkerncompat/include/sys/rwlock.h"
	.file 24 "../../lib/libsolkerncompat/include/sys/condvar.h"
	.file 25 "../../lib/libsolkerncompat/include/sys/thread.h"
	.file 26 "../../lib/libzfscommon/include/sys/list_impl.h"
	.file 27 "../../lib/libzfscommon/include/sys/list.h"
	.file 28 "../../lib/libzfscommon/include/sys/fs/zfs.h"
	.file 29 "../../lib/libzfscommon/include/sys/txg.h"
	.file 30 "../../lib/libzfscommon/include/sys/txg_impl.h"
	.file 31 "../../lib/libsolkerncompat/include/sys/dkio.h"
	.file 32 "../../lib/libzfscommon/include/sys/zio_impl.h"
	.file 33 "../../lib/libzfscommon/include/sys/zio.h"
	.file 34 "../../lib/libzfscommon/include/sys/refcount.h"
	.file 35 "../../lib/libzfscommon/include/sys/dmu_zfetch.h"
	.file 36 "../../lib/libzfscommon/include/sys/dnode.h"
	.file 37 "../../lib/libzfscommon/include/sys/dbuf.h"
	.file 38 "../../lib/libzfscommon/include/sys/dsl_pool.h"
	.file 39 "../../lib/libzfscommon/include/sys/arc.h"
	.file 40 "../../lib/libzfscommon/include/sys/zil.h"
	.file 41 "../../lib/libzfscommon/include/sys/bplist.h"
	.file 42 "../../lib/libsolkerncompat/include/sys/sid.h"
	.file 43 "../../lib/libzfscommon/include/sys/zfs_debug.h"
	.section	.debug_info
	.long	0x452e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF863
	.byte	0x1
	.long	.LASF864
	.long	.LASF865
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x27
	.long	0x46
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x2d
	.long	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x32
	.long	0x6a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x3
	.byte	0x33
	.long	0x7c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x35
	.long	0x8e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x3c
	.long	0xa0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x38
	.long	0x58
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x8d
	.long	0xb5
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x8e
	.long	0xb5
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x95
	.long	0xb5
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0xb4
	.long	0x46
	.uleb128 0x7
	.byte	0x4
	.long	0xf7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x6e
	.long	0xe6
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0xd3
	.long	0x8e
	.uleb128 0x8
	.long	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0x7a
	.long	0x13d
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x7b
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x7c
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x8
	.byte	0x32
	.long	0xae
	.uleb128 0xa
	.long	0xf7
	.long	0x158
	.uleb128 0xb
	.long	0xd6
	.byte	0x37
	.byte	0x0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x8
	.byte	0x8
	.byte	0x3e
	.long	0x181
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.byte	0x3f
	.long	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.byte	0x40
	.long	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x158
	.uleb128 0x3
	.long	.LASF30
	.byte	0x8
	.byte	0x41
	.long	0x158
	.uleb128 0x8
	.long	.LASF31
	.byte	0x20
	.byte	0x8
	.byte	0x4f
	.long	0x201
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.byte	0x50
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.byte	0x51
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.byte	0x54
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.byte	0x58
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.byte	0x5a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x5b
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.byte	0x28
	.byte	0x8
	.byte	0x4d
	.long	0x22b
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x65
	.long	0x192
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x66
	.long	0x22b
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x67
	.long	0xa7
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x23b
	.uleb128 0xb
	.long	0xd6
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x8
	.byte	0x68
	.long	0x201
	.uleb128 0xe
	.byte	0x30
	.byte	0x8
	.byte	0x76
	.long	0x2bf
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.byte	0x77
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x78
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x79
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x7a
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x7b
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x7c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x7d
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x7e
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.byte	0x30
	.byte	0x8
	.byte	0x74
	.long	0x2e9
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x7f
	.long	0x246
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x80
	.long	0x2e9
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x81
	.long	0x58
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x2f9
	.uleb128 0xb
	.long	0xd6
	.byte	0x2f
	.byte	0x0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x8
	.byte	0x82
	.long	0x2bf
	.uleb128 0xe
	.byte	0x2c
	.byte	0x8
	.byte	0x9a
	.long	0x3a7
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.byte	0x9b
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x9c
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x9d
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x9e
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x9f
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0xa0
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.byte	0xa1
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF57
	.byte	0x8
	.byte	0xa2
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF58
	.byte	0x8
	.byte	0xa3
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF59
	.byte	0x8
	.byte	0xa4
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0xa7
	.long	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.byte	0x38
	.byte	0x8
	.byte	0x97
	.long	0x3d1
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0xa8
	.long	0x304
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0xbb
	.long	0x148
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0xbc
	.long	0xa7
	.byte	0x0
	.uleb128 0x3
	.long	.LASF61
	.byte	0x8
	.byte	0xbd
	.long	0x3a7
	.uleb128 0xf
	.long	.LASF107
	.byte	0x4
	.byte	0x9
	.byte	0x29
	.long	0x3f5
	.uleb128 0x10
	.long	.LASF62
	.sleb128 0
	.uleb128 0x10
	.long	.LASF63
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF64
	.byte	0x9
	.byte	0x29
	.long	0x3dc
	.uleb128 0x3
	.long	.LASF65
	.byte	0x9
	.byte	0x2e
	.long	0xae
	.uleb128 0x3
	.long	.LASF66
	.byte	0x9
	.byte	0x30
	.long	0x58
	.uleb128 0x3
	.long	.LASF67
	.byte	0x9
	.byte	0x31
	.long	0xa0
	.uleb128 0x3
	.long	.LASF68
	.byte	0x9
	.byte	0x33
	.long	0x40b
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.byte	0x4a
	.long	0x44f
	.uleb128 0x11
	.string	"_l"
	.byte	0x9
	.byte	0x4b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"_u"
	.byte	0x9
	.byte	0x4c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xc
	.byte	0x8
	.byte	0x9
	.byte	0x48
	.long	0x46c
	.uleb128 0x12
	.string	"_f"
	.byte	0x9
	.byte	0x49
	.long	0x421
	.uleb128 0x12
	.string	"_p"
	.byte	0x9
	.byte	0x4d
	.long	0x42c
	.byte	0x0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x9
	.byte	0x4e
	.long	0x44f
	.uleb128 0x8
	.long	.LASF70
	.byte	0x98
	.byte	0xa
	.byte	0x2d
	.long	0x637
	.uleb128 0x13
	.long	.LASF71
	.byte	0xb
	.value	0x110
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.long	.LASF72
	.byte	0xb
	.value	0x115
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.long	.LASF73
	.byte	0xb
	.value	0x116
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.long	.LASF74
	.byte	0xb
	.value	0x117
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.long	.LASF75
	.byte	0xb
	.value	0x118
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.long	.LASF76
	.byte	0xb
	.value	0x119
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF77
	.byte	0xb
	.value	0x11a
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.long	.LASF78
	.byte	0xb
	.value	0x11b
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.long	.LASF79
	.byte	0xb
	.value	0x11c
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.long	.LASF80
	.byte	0xb
	.value	0x11e
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.long	.LASF81
	.byte	0xb
	.value	0x11f
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.long	.LASF82
	.byte	0xb
	.value	0x120
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.long	.LASF83
	.byte	0xb
	.value	0x122
	.long	0x675
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.long	.LASF84
	.byte	0xb
	.value	0x124
	.long	0x67b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x13
	.long	.LASF85
	.byte	0xb
	.value	0x126
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.long	.LASF86
	.byte	0xb
	.value	0x12a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x13
	.long	.LASF87
	.byte	0xb
	.value	0x12c
	.long	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.long	.LASF88
	.byte	0xb
	.value	0x130
	.long	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.long	.LASF89
	.byte	0xb
	.value	0x131
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x13
	.long	.LASF90
	.byte	0xb
	.value	0x132
	.long	0x681
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x13
	.long	.LASF91
	.byte	0xb
	.value	0x136
	.long	0x691
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.long	.LASF92
	.byte	0xb
	.value	0x13f
	.long	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.long	.LASF58
	.byte	0xb
	.value	0x148
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.long	.LASF59
	.byte	0xb
	.value	0x149
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.long	.LASF93
	.byte	0xb
	.value	0x14a
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.long	.LASF94
	.byte	0xb
	.value	0x14b
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x13
	.long	.LASF95
	.byte	0xb
	.value	0x14c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x13
	.long	.LASF96
	.byte	0xb
	.value	0x14e
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.long	.LASF97
	.byte	0xb
	.value	0x150
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x14
	.long	.LASF866
	.byte	0xb
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0xb
	.byte	0xba
	.long	0x675
	.uleb128 0x9
	.long	.LASF99
	.byte	0xb
	.byte	0xbb
	.long	0x675
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF100
	.byte	0xb
	.byte	0xbc
	.long	0x67b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF101
	.byte	0xb
	.byte	0xc0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x63e
	.uleb128 0x7
	.byte	0x4
	.long	0x477
	.uleb128 0xa
	.long	0xf7
	.long	0x691
	.uleb128 0xb
	.long	0xd6
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x637
	.uleb128 0x15
	.byte	0x1
	.long	0x46
	.long	0x6a7
	.uleb128 0x16
	.long	0xe4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x46
	.uleb128 0x7
	.byte	0x4
	.long	0x6b3
	.uleb128 0x15
	.byte	0x1
	.long	0x46
	.long	0x6c8
	.uleb128 0x16
	.long	0x6c8
	.uleb128 0x16
	.long	0x6c8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x6ce
	.uleb128 0x17
	.uleb128 0x3
	.long	.LASF102
	.byte	0x1
	.byte	0x26
	.long	0x40b
	.uleb128 0x8
	.long	.LASF103
	.byte	0x8
	.byte	0xc
	.byte	0x2d
	.long	0x703
	.uleb128 0x9
	.long	.LASF104
	.byte	0xc
	.byte	0x2e
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF105
	.byte	0xc
	.byte	0x2f
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF106
	.byte	0xd
	.byte	0x3d
	.long	0x6da
	.uleb128 0xf
	.long	.LASF108
	.byte	0x4
	.byte	0xd
	.byte	0x60
	.long	0x72d
	.uleb128 0x10
	.long	.LASF109
	.sleb128 0
	.uleb128 0x10
	.long	.LASF110
	.sleb128 1
	.uleb128 0x10
	.long	.LASF111
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.long	.LASF112
	.byte	0xd
	.byte	0x60
	.long	0x70e
	.uleb128 0x18
	.string	"uio"
	.byte	0x28
	.byte	0xd
	.byte	0x62
	.long	0x7b5
	.uleb128 0x9
	.long	.LASF113
	.byte	0xd
	.byte	0x63
	.long	0x7b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF114
	.byte	0xd
	.byte	0x64
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF115
	.byte	0xd
	.byte	0x65
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF116
	.byte	0xd
	.byte	0x66
	.long	0x72d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF117
	.byte	0xd
	.byte	0x67
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF118
	.byte	0xd
	.byte	0x68
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x9
	.long	.LASF119
	.byte	0xd
	.byte	0x69
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF120
	.byte	0xd
	.byte	0x6a
	.long	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x703
	.uleb128 0x3
	.long	.LASF121
	.byte	0xd
	.byte	0x6b
	.long	0x738
	.uleb128 0x7
	.byte	0x4
	.long	0xe4
	.uleb128 0xf
	.long	.LASF122
	.byte	0x4
	.byte	0xd
	.byte	0xa9
	.long	0x7e5
	.uleb128 0x10
	.long	.LASF123
	.sleb128 0
	.uleb128 0x10
	.long	.LASF124
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF125
	.byte	0xe
	.byte	0x46
	.long	0x7f0
	.uleb128 0x8
	.long	.LASF126
	.byte	0x8
	.byte	0xe
	.byte	0x46
	.long	0x818
	.uleb128 0x11
	.string	"os"
	.byte	0xf
	.byte	0x38
	.long	0x1fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF127
	.byte	0xf
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF128
	.byte	0xe
	.byte	0x47
	.long	0x823
	.uleb128 0x19
	.long	.LASF129
	.value	0x138
	.byte	0xe
	.byte	0x47
	.long	0x92e
	.uleb128 0x9
	.long	.LASF130
	.byte	0x10
	.byte	0x34
	.long	0x1052
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF131
	.byte	0x10
	.byte	0x35
	.long	0xcc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF132
	.byte	0x10
	.byte	0x36
	.long	0x2185
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF133
	.byte	0x10
	.byte	0x37
	.long	0x2345
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF134
	.byte	0x10
	.byte	0x38
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF135
	.byte	0x10
	.byte	0x39
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF136
	.byte	0x10
	.byte	0x3a
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF137
	.byte	0x10
	.byte	0x3b
	.long	0x1210
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF138
	.byte	0x10
	.byte	0x3c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF139
	.byte	0x10
	.byte	0x3d
	.long	0x2400
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF140
	.byte	0x10
	.byte	0x3e
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF141
	.byte	0x10
	.byte	0x3f
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.long	.LASF142
	.byte	0x10
	.byte	0x41
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF143
	.byte	0x10
	.byte	0x42
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF144
	.byte	0x10
	.byte	0x43
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF145
	.byte	0x10
	.byte	0x44
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF146
	.byte	0x10
	.byte	0x45
	.long	0x1a83
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF147
	.byte	0x10
	.byte	0x46
	.long	0x1a83
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF148
	.byte	0xe
	.byte	0x48
	.long	0x939
	.uleb128 0x19
	.long	.LASF149
	.value	0x1a8
	.byte	0xe
	.byte	0x48
	.long	0x9e3
	.uleb128 0x9
	.long	.LASF150
	.byte	0x11
	.byte	0x4e
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF151
	.byte	0x11
	.byte	0x4f
	.long	0x2bb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF152
	.byte	0x11
	.byte	0x50
	.long	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF153
	.byte	0x11
	.byte	0x51
	.long	0x2bba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF154
	.byte	0x11
	.byte	0x54
	.long	0x126a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF155
	.byte	0x11
	.byte	0x57
	.long	0x2bc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF156
	.byte	0x11
	.byte	0x5a
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF157
	.byte	0x11
	.byte	0x5b
	.long	0x1052
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF158
	.byte	0x11
	.byte	0x5e
	.long	0x1148
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF159
	.byte	0x11
	.byte	0x60
	.long	0x2bc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF160
	.byte	0x11
	.byte	0x63
	.long	0xc96
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.byte	0x0
	.uleb128 0xf
	.long	.LASF161
	.byte	0x4
	.byte	0xe
	.byte	0x4a
	.long	0xae0
	.uleb128 0x10
	.long	.LASF162
	.sleb128 0
	.uleb128 0x10
	.long	.LASF163
	.sleb128 1
	.uleb128 0x10
	.long	.LASF164
	.sleb128 2
	.uleb128 0x10
	.long	.LASF165
	.sleb128 3
	.uleb128 0x10
	.long	.LASF166
	.sleb128 4
	.uleb128 0x10
	.long	.LASF167
	.sleb128 5
	.uleb128 0x10
	.long	.LASF168
	.sleb128 6
	.uleb128 0x10
	.long	.LASF169
	.sleb128 7
	.uleb128 0x10
	.long	.LASF170
	.sleb128 8
	.uleb128 0x10
	.long	.LASF171
	.sleb128 9
	.uleb128 0x10
	.long	.LASF172
	.sleb128 10
	.uleb128 0x10
	.long	.LASF173
	.sleb128 11
	.uleb128 0x10
	.long	.LASF174
	.sleb128 12
	.uleb128 0x10
	.long	.LASF175
	.sleb128 13
	.uleb128 0x10
	.long	.LASF176
	.sleb128 14
	.uleb128 0x10
	.long	.LASF177
	.sleb128 15
	.uleb128 0x10
	.long	.LASF178
	.sleb128 16
	.uleb128 0x10
	.long	.LASF179
	.sleb128 17
	.uleb128 0x10
	.long	.LASF180
	.sleb128 18
	.uleb128 0x10
	.long	.LASF181
	.sleb128 19
	.uleb128 0x10
	.long	.LASF182
	.sleb128 20
	.uleb128 0x10
	.long	.LASF183
	.sleb128 21
	.uleb128 0x10
	.long	.LASF184
	.sleb128 22
	.uleb128 0x10
	.long	.LASF185
	.sleb128 23
	.uleb128 0x10
	.long	.LASF186
	.sleb128 24
	.uleb128 0x10
	.long	.LASF187
	.sleb128 25
	.uleb128 0x10
	.long	.LASF188
	.sleb128 26
	.uleb128 0x10
	.long	.LASF189
	.sleb128 27
	.uleb128 0x10
	.long	.LASF190
	.sleb128 28
	.uleb128 0x10
	.long	.LASF191
	.sleb128 29
	.uleb128 0x10
	.long	.LASF192
	.sleb128 30
	.uleb128 0x10
	.long	.LASF193
	.sleb128 31
	.uleb128 0x10
	.long	.LASF194
	.sleb128 32
	.uleb128 0x10
	.long	.LASF195
	.sleb128 33
	.uleb128 0x10
	.long	.LASF196
	.sleb128 34
	.uleb128 0x10
	.long	.LASF197
	.sleb128 35
	.uleb128 0x10
	.long	.LASF198
	.sleb128 36
	.uleb128 0x10
	.long	.LASF199
	.sleb128 37
	.uleb128 0x10
	.long	.LASF200
	.sleb128 38
	.uleb128 0x10
	.long	.LASF201
	.sleb128 39
	.byte	0x0
	.uleb128 0x3
	.long	.LASF202
	.byte	0xe
	.byte	0x7c
	.long	0x9e3
	.uleb128 0x8
	.long	.LASF203
	.byte	0x20
	.byte	0xe
	.byte	0xbb
	.long	0xb30
	.uleb128 0x9
	.long	.LASF204
	.byte	0xe
	.byte	0xbc
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF205
	.byte	0xe
	.byte	0xbd
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF206
	.byte	0xe
	.byte	0xbe
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF207
	.byte	0xe
	.byte	0xbf
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.long	.LASF208
	.byte	0xe
	.byte	0xc0
	.long	0xaeb
	.uleb128 0x3
	.long	.LASF209
	.byte	0xe
	.byte	0xc2
	.long	0xb46
	.uleb128 0x1a
	.byte	0x1
	.long	0xb57
	.uleb128 0x16
	.long	0xb57
	.uleb128 0x16
	.long	0xe4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xaeb
	.uleb128 0x1b
	.long	.LASF210
	.byte	0x30
	.byte	0xe
	.value	0x1d8
	.long	0xc10
	.uleb128 0x13
	.long	.LASF211
	.byte	0xe
	.value	0x1da
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.long	.LASF212
	.byte	0xe
	.value	0x1db
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.long	.LASF213
	.byte	0xe
	.value	0x1dc
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.long	.LASF214
	.byte	0xe
	.value	0x1dd
	.long	0xae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.long	.LASF215
	.byte	0xe
	.value	0x1de
	.long	0xae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF216
	.byte	0xe
	.value	0x1df
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.long	.LASF217
	.byte	0xe
	.value	0x1e0
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x13
	.long	.LASF218
	.byte	0xe
	.value	0x1e1
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x13
	.long	.LASF219
	.byte	0xe
	.value	0x1e2
	.long	0xc10
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.uleb128 0x13
	.long	.LASF220
	.byte	0xe
	.value	0x1e4
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.long	.LASF221
	.byte	0xe
	.value	0x1e5
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xa
	.long	0x5f
	.long	0xc20
	.uleb128 0xb
	.long	0xd6
	.byte	0x4
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF222
	.byte	0xe
	.value	0x1e6
	.long	0xb5d
	.uleb128 0x1c
	.long	.LASF223
	.byte	0xe
	.value	0x1e8
	.long	0xc38
	.uleb128 0x1a
	.byte	0x1
	.long	0xc49
	.uleb128 0x16
	.long	0xe4
	.uleb128 0x16
	.long	0x109
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF224
	.byte	0xc
	.byte	0xe
	.value	0x1ea
	.long	0xc84
	.uleb128 0x13
	.long	.LASF225
	.byte	0xe
	.value	0x1eb
	.long	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.long	.LASF226
	.byte	0xe
	.value	0x1ec
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.long	.LASF227
	.byte	0xe
	.value	0x1ed
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xc2c
	.uleb128 0x1c
	.long	.LASF228
	.byte	0xe
	.value	0x1ee
	.long	0xc49
	.uleb128 0xa
	.long	0xf7
	.long	0xca6
	.uleb128 0xb
	.long	0xd6
	.byte	0xff
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF229
	.byte	0xe
	.value	0x24b
	.long	0xcb2
	.uleb128 0x1a
	.byte	0x1
	.long	0xcc3
	.uleb128 0x16
	.long	0xcc3
	.uleb128 0x16
	.long	0xe4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xb30
	.uleb128 0x7
	.byte	0x4
	.long	0x7e5
	.uleb128 0x8
	.long	.LASF230
	.byte	0x80
	.byte	0xe
	.byte	0x3a
	.long	0xd30
	.uleb128 0x9
	.long	.LASF231
	.byte	0x12
	.byte	0xaf
	.long	0x1163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF232
	.byte	0x12
	.byte	0xb0
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF233
	.byte	0x12
	.byte	0xb1
	.long	0x1173
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF234
	.byte	0x12
	.byte	0xb2
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF235
	.byte	0x12
	.byte	0xb3
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF236
	.byte	0x12
	.byte	0xb4
	.long	0x1158
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x19
	.long	.LASF237
	.value	0x2c0
	.byte	0xe
	.byte	0x3c
	.long	0xe71
	.uleb128 0x9
	.long	.LASF238
	.byte	0x13
	.byte	0x65
	.long	0x2185
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF239
	.byte	0x13
	.byte	0x66
	.long	0x2a4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF240
	.byte	0x13
	.byte	0x67
	.long	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF241
	.byte	0x13
	.byte	0x68
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF242
	.byte	0x13
	.byte	0x69
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF243
	.byte	0x13
	.byte	0x6c
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF244
	.byte	0x13
	.byte	0x6d
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF245
	.byte	0x13
	.byte	0x70
	.long	0x28ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF246
	.byte	0x13
	.byte	0x73
	.long	0x126a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF247
	.byte	0x13
	.byte	0x74
	.long	0x1047
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.long	.LASF248
	.byte	0x13
	.byte	0x7a
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.long	.LASF249
	.byte	0x13
	.byte	0x7b
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF250
	.byte	0x13
	.byte	0x7c
	.long	0x2a51
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.long	.LASF251
	.byte	0x13
	.byte	0x81
	.long	0xfb4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF252
	.byte	0x13
	.byte	0x82
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x9
	.long	.LASF253
	.byte	0x13
	.byte	0x83
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x9
	.long	.LASF254
	.byte	0x13
	.byte	0x86
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x9
	.long	.LASF255
	.byte	0x13
	.byte	0x89
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF256
	.byte	0x13
	.byte	0x8b
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x9
	.long	.LASF257
	.byte	0x13
	.byte	0x8c
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x9
	.long	.LASF258
	.byte	0x13
	.byte	0x8f
	.long	0xc96
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xd30
	.uleb128 0x8
	.long	.LASF259
	.byte	0x10
	.byte	0x14
	.byte	0x3d
	.long	0xebc
	.uleb128 0x9
	.long	.LASF260
	.byte	0x14
	.byte	0x3e
	.long	0xebc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF261
	.byte	0x14
	.byte	0x3f
	.long	0xecc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF262
	.byte	0x14
	.byte	0x40
	.long	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF263
	.byte	0x14
	.byte	0x41
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xa
	.long	0xecc
	.long	0xecc
	.uleb128 0xb
	.long	0xd6
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xe77
	.uleb128 0x8
	.long	.LASF264
	.byte	0x14
	.byte	0x14
	.byte	0x92
	.long	0xf25
	.uleb128 0x9
	.long	.LASF265
	.byte	0x14
	.byte	0x93
	.long	0xecc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF266
	.byte	0x14
	.byte	0x94
	.long	0x6ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF267
	.byte	0x14
	.byte	0x95
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF268
	.byte	0x14
	.byte	0x96
	.long	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF269
	.byte	0x14
	.byte	0x97
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.long	.LASF270
	.byte	0x15
	.byte	0x6e
	.long	0xed2
	.uleb128 0x3
	.long	.LASF271
	.byte	0x15
	.byte	0x73
	.long	0xe77
	.uleb128 0x8
	.long	.LASF272
	.byte	0x2c
	.byte	0x16
	.byte	0x20
	.long	0xf64
	.uleb128 0x9
	.long	.LASF273
	.byte	0x16
	.byte	0x21
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF274
	.byte	0x16
	.byte	0x22
	.long	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF275
	.byte	0x16
	.byte	0x23
	.long	0xf3b
	.uleb128 0x8
	.long	.LASF276
	.byte	0x6c
	.byte	0x17
	.byte	0x21
	.long	0xfb4
	.uleb128 0x9
	.long	.LASF277
	.byte	0x17
	.byte	0x22
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF278
	.byte	0x17
	.byte	0x23
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF279
	.byte	0x17
	.byte	0x24
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF280
	.byte	0x17
	.byte	0x25
	.long	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.long	.LASF281
	.byte	0x17
	.byte	0x26
	.long	0xf6f
	.uleb128 0x3
	.long	.LASF282
	.byte	0x18
	.byte	0x26
	.long	0x2f9
	.uleb128 0x3
	.long	.LASF283
	.byte	0x19
	.byte	0x1f
	.long	0x13d
	.uleb128 0x7
	.byte	0x4
	.long	0x7bb
	.uleb128 0x7
	.byte	0x4
	.long	0x83
	.uleb128 0x8
	.long	.LASF284
	.byte	0x8
	.byte	0x1a
	.byte	0x26
	.long	0x100a
	.uleb128 0x9
	.long	.LASF285
	.byte	0x1a
	.byte	0x27
	.long	0x100a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF286
	.byte	0x1a
	.byte	0x28
	.long	0x100a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xfe1
	.uleb128 0x8
	.long	.LASF287
	.byte	0x10
	.byte	0x1a
	.byte	0x2b
	.long	0x1047
	.uleb128 0x9
	.long	.LASF288
	.byte	0x1a
	.byte	0x2c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF289
	.byte	0x1a
	.byte	0x2d
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF290
	.byte	0x1a
	.byte	0x2e
	.long	0xfe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF291
	.byte	0x1b
	.byte	0x25
	.long	0xfe1
	.uleb128 0x3
	.long	.LASF292
	.byte	0x1b
	.byte	0x26
	.long	0x1010
	.uleb128 0xf
	.long	.LASF293
	.byte	0x4
	.byte	0x1c
	.byte	0xe4
	.long	0x107c
	.uleb128 0x10
	.long	.LASF294
	.sleb128 0
	.uleb128 0x10
	.long	.LASF295
	.sleb128 1
	.uleb128 0x10
	.long	.LASF296
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF297
	.byte	0x4
	.byte	0x1c
	.value	0x1c3
	.long	0x10b4
	.uleb128 0x10
	.long	.LASF298
	.sleb128 0
	.uleb128 0x10
	.long	.LASF299
	.sleb128 1
	.uleb128 0x10
	.long	.LASF300
	.sleb128 2
	.uleb128 0x10
	.long	.LASF301
	.sleb128 3
	.uleb128 0x10
	.long	.LASF302
	.sleb128 4
	.uleb128 0x10
	.long	.LASF303
	.sleb128 5
	.uleb128 0x10
	.long	.LASF304
	.sleb128 6
	.byte	0x0
	.uleb128 0xa
	.long	0x95
	.long	0x10c4
	.uleb128 0xb
	.long	0xd6
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF305
	.byte	0x12
	.byte	0x2d
	.long	0x10cf
	.uleb128 0x1e
	.string	"spa"
	.byte	0x1
	.uleb128 0x3
	.long	.LASF306
	.byte	0x12
	.byte	0x2e
	.long	0x10e0
	.uleb128 0x1f
	.long	.LASF307
	.byte	0x1
	.uleb128 0x3
	.long	.LASF308
	.byte	0x12
	.byte	0x30
	.long	0x10f1
	.uleb128 0x1f
	.long	.LASF309
	.byte	0x1
	.uleb128 0x18
	.string	"dva"
	.byte	0x10
	.byte	0x12
	.byte	0x6a
	.long	0x1112
	.uleb128 0x9
	.long	.LASF310
	.byte	0x12
	.byte	0x6b
	.long	0x1112
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x95
	.long	0x1122
	.uleb128 0xb
	.long	0xd6
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF311
	.byte	0x12
	.byte	0x6c
	.long	0x10f7
	.uleb128 0x8
	.long	.LASF312
	.byte	0x20
	.byte	0x12
	.byte	0x71
	.long	0x1148
	.uleb128 0x9
	.long	.LASF313
	.byte	0x12
	.byte	0x72
	.long	0x1148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x95
	.long	0x1158
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x12
	.byte	0x73
	.long	0x112d
	.uleb128 0xa
	.long	0x1122
	.long	0x1173
	.uleb128 0xb
	.long	0xd6
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.long	0x95
	.long	0x1183
	.uleb128 0xb
	.long	0xd6
	.byte	0x2
	.byte	0x0
	.uleb128 0x3
	.long	.LASF315
	.byte	0x12
	.byte	0xb5
	.long	0xccf
	.uleb128 0x3
	.long	.LASF316
	.byte	0x1d
	.byte	0x2f
	.long	0x1199
	.uleb128 0x19
	.long	.LASF317
	.value	0x120
	.byte	0x1d
	.byte	0x2f
	.long	0x11e1
	.uleb128 0x9
	.long	.LASF318
	.byte	0x1e
	.byte	0x27
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF319
	.byte	0x1e
	.byte	0x28
	.long	0x12cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF320
	.byte	0x1e
	.byte	0x29
	.long	0x1148
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF321
	.byte	0x1e
	.byte	0x2a
	.long	0x12dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.byte	0x0
	.uleb128 0x8
	.long	.LASF322
	.byte	0x10
	.byte	0x1d
	.byte	0x31
	.long	0x120a
	.uleb128 0x9
	.long	.LASF323
	.byte	0x1d
	.byte	0x32
	.long	0x120a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF324
	.byte	0x1d
	.byte	0x33
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x118e
	.uleb128 0x3
	.long	.LASF325
	.byte	0x1d
	.byte	0x34
	.long	0x11e1
	.uleb128 0x8
	.long	.LASF326
	.byte	0x14
	.byte	0x1d
	.byte	0x36
	.long	0x1244
	.uleb128 0x9
	.long	.LASF327
	.byte	0x1d
	.byte	0x37
	.long	0x1244
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF328
	.byte	0x1d
	.byte	0x38
	.long	0x125a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x1254
	.long	0x1254
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x121b
	.uleb128 0xa
	.long	0x5f
	.long	0x126a
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF329
	.byte	0x1d
	.byte	0x39
	.long	0x121b
	.uleb128 0x8
	.long	.LASF330
	.byte	0x40
	.byte	0x1d
	.byte	0x3b
	.long	0x12ac
	.uleb128 0x9
	.long	.LASF331
	.byte	0x1d
	.byte	0x3c
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF332
	.byte	0x1d
	.byte	0x3d
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF333
	.byte	0x1d
	.byte	0x3e
	.long	0x12ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0xa
	.long	0x12bc
	.long	0x12bc
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x126a
	.uleb128 0x3
	.long	.LASF334
	.byte	0x1d
	.byte	0x3f
	.long	0x1275
	.uleb128 0xa
	.long	0xfbf
	.long	0x12dd
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x12ed
	.uleb128 0xb
	.long	0xd6
	.byte	0xf
	.byte	0x0
	.uleb128 0x19
	.long	.LASF335
	.value	0x200
	.byte	0x1e
	.byte	0x2d
	.long	0x1424
	.uleb128 0x9
	.long	.LASF317
	.byte	0x1e
	.byte	0x2e
	.long	0x120a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF336
	.byte	0x1e
	.byte	0x2f
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF337
	.byte	0x1e
	.byte	0x30
	.long	0xfb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF338
	.byte	0x1e
	.byte	0x31
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF339
	.byte	0x1e
	.byte	0x32
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF340
	.byte	0x1e
	.byte	0x33
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF341
	.byte	0x1e
	.byte	0x34
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF342
	.byte	0x1e
	.byte	0x36
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF343
	.byte	0x1e
	.byte	0x37
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF344
	.byte	0x1e
	.byte	0x39
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF345
	.byte	0x1e
	.byte	0x3a
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF346
	.byte	0x1e
	.byte	0x3b
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x9
	.long	.LASF347
	.byte	0x1e
	.byte	0x3c
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.long	.LASF348
	.byte	0x1e
	.byte	0x3d
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x9
	.long	.LASF349
	.byte	0x1e
	.byte	0x3e
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0x9
	.long	.LASF350
	.byte	0x1e
	.byte	0x40
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x9
	.long	.LASF351
	.byte	0x1e
	.byte	0x41
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f1
	.uleb128 0x9
	.long	.LASF352
	.byte	0x1e
	.byte	0x43
	.long	0x1424
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x9
	.long	.LASF353
	.byte	0x1e
	.byte	0x44
	.long	0x1424
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.long	.LASF354
	.byte	0x1e
	.byte	0x45
	.long	0x1424
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xfca
	.uleb128 0x3
	.long	.LASF355
	.byte	0x1e
	.byte	0x46
	.long	0x12ed
	.uleb128 0xa
	.long	0x71
	.long	0x1445
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.long	.LASF356
	.byte	0xc
	.byte	0x1f
	.byte	0xbf
	.long	0x147c
	.uleb128 0x9
	.long	.LASF357
	.byte	0x1f
	.byte	0xc0
	.long	0x148d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF358
	.byte	0x1f
	.byte	0xc1
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF359
	.byte	0x1f
	.byte	0xc2
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.long	0x148d
	.uleb128 0x16
	.long	0xe4
	.uleb128 0x16
	.long	0x46
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x147c
	.uleb128 0xa
	.long	0xf7
	.long	0x14a3
	.uleb128 0xb
	.long	0xd6
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	.LASF360
	.byte	0x4
	.byte	0x20
	.byte	0x35
	.long	0x1540
	.uleb128 0x10
	.long	.LASF361
	.sleb128 0
	.uleb128 0x10
	.long	.LASF362
	.sleb128 1
	.uleb128 0x10
	.long	.LASF363
	.sleb128 2
	.uleb128 0x10
	.long	.LASF364
	.sleb128 3
	.uleb128 0x10
	.long	.LASF365
	.sleb128 4
	.uleb128 0x10
	.long	.LASF366
	.sleb128 5
	.uleb128 0x10
	.long	.LASF367
	.sleb128 6
	.uleb128 0x10
	.long	.LASF368
	.sleb128 7
	.uleb128 0x10
	.long	.LASF369
	.sleb128 8
	.uleb128 0x10
	.long	.LASF370
	.sleb128 9
	.uleb128 0x10
	.long	.LASF371
	.sleb128 10
	.uleb128 0x10
	.long	.LASF372
	.sleb128 11
	.uleb128 0x10
	.long	.LASF373
	.sleb128 12
	.uleb128 0x10
	.long	.LASF374
	.sleb128 13
	.uleb128 0x10
	.long	.LASF375
	.sleb128 14
	.uleb128 0x10
	.long	.LASF376
	.sleb128 15
	.uleb128 0x10
	.long	.LASF377
	.sleb128 16
	.uleb128 0x10
	.long	.LASF378
	.sleb128 17
	.uleb128 0x10
	.long	.LASF379
	.sleb128 18
	.uleb128 0x10
	.long	.LASF380
	.sleb128 19
	.uleb128 0x10
	.long	.LASF381
	.sleb128 20
	.uleb128 0x10
	.long	.LASF382
	.sleb128 21
	.uleb128 0x10
	.long	.LASF383
	.sleb128 22
	.uleb128 0x10
	.long	.LASF384
	.sleb128 23
	.byte	0x0
	.uleb128 0x3
	.long	.LASF385
	.byte	0x20
	.byte	0xaf
	.long	0x154b
	.uleb128 0x8
	.long	.LASF386
	.byte	0x20
	.byte	0x20
	.byte	0xaf
	.long	0x1590
	.uleb128 0x9
	.long	.LASF387
	.byte	0x20
	.byte	0xb1
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF388
	.byte	0x20
	.byte	0xb2
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF389
	.byte	0x20
	.byte	0xb3
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF390
	.byte	0x20
	.byte	0xb4
	.long	0x1590
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1540
	.uleb128 0xf
	.long	.LASF391
	.byte	0x4
	.byte	0x21
	.byte	0x49
	.long	0x15df
	.uleb128 0x10
	.long	.LASF392
	.sleb128 0
	.uleb128 0x10
	.long	.LASF393
	.sleb128 1
	.uleb128 0x10
	.long	.LASF394
	.sleb128 2
	.uleb128 0x10
	.long	.LASF395
	.sleb128 3
	.uleb128 0x10
	.long	.LASF396
	.sleb128 4
	.uleb128 0x10
	.long	.LASF397
	.sleb128 5
	.uleb128 0x10
	.long	.LASF398
	.sleb128 6
	.uleb128 0x10
	.long	.LASF399
	.sleb128 7
	.uleb128 0x10
	.long	.LASF400
	.sleb128 8
	.uleb128 0x10
	.long	.LASF401
	.sleb128 9
	.byte	0x0
	.uleb128 0xf
	.long	.LASF402
	.byte	0x4
	.byte	0x21
	.byte	0x59
	.long	0x1646
	.uleb128 0x10
	.long	.LASF403
	.sleb128 0
	.uleb128 0x10
	.long	.LASF404
	.sleb128 1
	.uleb128 0x10
	.long	.LASF405
	.sleb128 2
	.uleb128 0x10
	.long	.LASF406
	.sleb128 3
	.uleb128 0x10
	.long	.LASF407
	.sleb128 4
	.uleb128 0x10
	.long	.LASF408
	.sleb128 5
	.uleb128 0x10
	.long	.LASF409
	.sleb128 6
	.uleb128 0x10
	.long	.LASF410
	.sleb128 7
	.uleb128 0x10
	.long	.LASF411
	.sleb128 8
	.uleb128 0x10
	.long	.LASF412
	.sleb128 9
	.uleb128 0x10
	.long	.LASF413
	.sleb128 10
	.uleb128 0x10
	.long	.LASF414
	.sleb128 11
	.uleb128 0x10
	.long	.LASF415
	.sleb128 12
	.uleb128 0x10
	.long	.LASF416
	.sleb128 13
	.uleb128 0x10
	.long	.LASF417
	.sleb128 14
	.byte	0x0
	.uleb128 0x3
	.long	.LASF418
	.byte	0x21
	.byte	0xbb
	.long	0x1651
	.uleb128 0x20
	.string	"zio"
	.value	0x298
	.byte	0xe
	.byte	0x39
	.long	0x1999
	.uleb128 0x9
	.long	.LASF419
	.byte	0x21
	.byte	0xde
	.long	0x19b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF420
	.byte	0x21
	.byte	0xdf
	.long	0x19b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF421
	.byte	0x21
	.byte	0xe0
	.long	0x1a06
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF422
	.byte	0x21
	.byte	0xe1
	.long	0x19fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF423
	.byte	0x21
	.byte	0xe2
	.long	0x1596
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF424
	.byte	0x21
	.byte	0xe3
	.long	0x15df
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF425
	.byte	0x21
	.byte	0xe4
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF426
	.byte	0x21
	.byte	0xe5
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF427
	.byte	0x21
	.byte	0xe6
	.long	0x1a0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF428
	.byte	0x21
	.byte	0xe7
	.long	0x1183
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF429
	.byte	0x21
	.byte	0xe8
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF430
	.byte	0x21
	.byte	0xe9
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.long	.LASF431
	.byte	0x21
	.byte	0xea
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF432
	.byte	0x21
	.byte	0xeb
	.long	0x1590
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.long	.LASF433
	.byte	0x21
	.byte	0xec
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF434
	.byte	0x21
	.byte	0xed
	.long	0x1047
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.long	.LASF435
	.byte	0x21
	.byte	0xf0
	.long	0x1a12
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.long	.LASF436
	.byte	0x21
	.byte	0xf1
	.long	0x1a12
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF437
	.byte	0x21
	.byte	0xf2
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.long	.LASF438
	.byte	0x21
	.byte	0xf3
	.long	0x1183
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF439
	.byte	0x21
	.byte	0xf6
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x9
	.long	.LASF440
	.byte	0x21
	.byte	0xf7
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF441
	.byte	0x21
	.byte	0xfa
	.long	0x1a18
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF442
	.byte	0x21
	.byte	0xfb
	.long	0x1a1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x9
	.long	.LASF443
	.byte	0x21
	.byte	0xfc
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x9
	.long	.LASF444
	.byte	0x21
	.byte	0xfd
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x9
	.long	.LASF445
	.byte	0x21
	.byte	0xfe
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x9
	.long	.LASF446
	.byte	0x21
	.byte	0xff
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x13
	.long	.LASF447
	.byte	0x21
	.value	0x100
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x13
	.long	.LASF448
	.byte	0x21
	.value	0x101
	.long	0xf30
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x13
	.long	.LASF449
	.byte	0x21
	.value	0x102
	.long	0xf30
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x13
	.long	.LASF450
	.byte	0x21
	.value	0x103
	.long	0x1a24
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0x13
	.long	.LASF451
	.byte	0x21
	.value	0x104
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x13
	.long	.LASF452
	.byte	0x21
	.value	0x105
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x13
	.long	.LASF453
	.byte	0x21
	.value	0x108
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x13
	.long	.LASF454
	.byte	0x21
	.value	0x109
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x13
	.long	.LASF455
	.byte	0x21
	.value	0x10a
	.long	0x107c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x13
	.long	.LASF456
	.byte	0x21
	.value	0x10b
	.long	0x14a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x13
	.long	.LASF457
	.byte	0x21
	.value	0x10c
	.long	0x14a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x13
	.long	.LASF458
	.byte	0x21
	.value	0x10d
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x13
	.long	.LASF459
	.byte	0x21
	.value	0x10e
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f9
	.uleb128 0x13
	.long	.LASF460
	.byte	0x21
	.value	0x10f
	.long	0x1445
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x13
	.long	.LASF461
	.byte	0x21
	.value	0x110
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x13
	.long	.LASF462
	.byte	0x21
	.value	0x111
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x13
	.long	.LASF463
	.byte	0x21
	.value	0x112
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x13
	.long	.LASF464
	.byte	0x21
	.value	0x113
	.long	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x13
	.long	.LASF465
	.byte	0x21
	.value	0x114
	.long	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x13
	.long	.LASF466
	.byte	0x21
	.value	0x115
	.long	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x13
	.long	.LASF467
	.byte	0x21
	.value	0x116
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x13
	.long	.LASF468
	.byte	0x21
	.value	0x117
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x13
	.long	.LASF469
	.byte	0x21
	.value	0x118
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x13
	.long	.LASF470
	.byte	0x21
	.value	0x119
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x13
	.long	.LASF471
	.byte	0x21
	.value	0x11a
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x13
	.long	.LASF472
	.byte	0x21
	.value	0x11d
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x290
	.byte	0x0
	.uleb128 0x3
	.long	.LASF473
	.byte	0x21
	.byte	0xbc
	.long	0x19a4
	.uleb128 0x1a
	.byte	0x1
	.long	0x19b0
	.uleb128 0x16
	.long	0x19b0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1646
	.uleb128 0x8
	.long	.LASF474
	.byte	0x20
	.byte	0xe
	.byte	0x41
	.long	0x19fb
	.uleb128 0x9
	.long	.LASF475
	.byte	0x21
	.byte	0xd6
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF476
	.byte	0x21
	.byte	0xd7
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF477
	.byte	0x21
	.byte	0xd8
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF478
	.byte	0x21
	.byte	0xd9
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.long	.LASF479
	.byte	0x21
	.byte	0xda
	.long	0x19b6
	.uleb128 0x7
	.byte	0x4
	.long	0x10c4
	.uleb128 0x7
	.byte	0x4
	.long	0x1183
	.uleb128 0x7
	.byte	0x4
	.long	0x1999
	.uleb128 0x7
	.byte	0x4
	.long	0x10d5
	.uleb128 0x7
	.byte	0x4
	.long	0x1a18
	.uleb128 0x7
	.byte	0x4
	.long	0xf25
	.uleb128 0x7
	.byte	0x4
	.long	0x5f
	.uleb128 0x8
	.long	.LASF480
	.byte	0x60
	.byte	0x22
	.byte	0x36
	.long	0x1a83
	.uleb128 0x9
	.long	.LASF481
	.byte	0x22
	.byte	0x37
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF482
	.byte	0x22
	.byte	0x38
	.long	0x1052
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF483
	.byte	0x22
	.byte	0x39
	.long	0x1052
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF484
	.byte	0x22
	.byte	0x3a
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF485
	.byte	0x22
	.byte	0x3b
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x3
	.long	.LASF486
	.byte	0x22
	.byte	0x3c
	.long	0x1a30
	.uleb128 0x8
	.long	.LASF487
	.byte	0x90
	.byte	0x23
	.byte	0x3a
	.long	0x1ae3
	.uleb128 0x9
	.long	.LASF488
	.byte	0x23
	.byte	0x3b
	.long	0xfb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF489
	.byte	0x23
	.byte	0x3c
	.long	0x1052
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.long	.LASF490
	.byte	0x23
	.byte	0x3d
	.long	0x1d36
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.long	.LASF491
	.byte	0x23
	.byte	0x3e
	.long	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF492
	.byte	0x23
	.byte	0x3f
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x19
	.long	.LASF493
	.value	0x390
	.byte	0xe
	.byte	0x3e
	.long	0x1d36
	.uleb128 0x9
	.long	.LASF494
	.byte	0x24
	.byte	0x84
	.long	0xfb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF495
	.byte	0x24
	.byte	0x8a
	.long	0x1047
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.long	.LASF496
	.byte	0x24
	.byte	0x8d
	.long	0x1fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF497
	.byte	0x24
	.byte	0x8e
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF498
	.byte	0x24
	.byte	0x8f
	.long	0x212e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF499
	.byte	0x24
	.byte	0x90
	.long	0x2134
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.long	.LASF500
	.byte	0x24
	.byte	0x97
	.long	0xae0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF501
	.byte	0x24
	.byte	0x98
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.long	.LASF502
	.byte	0x24
	.byte	0x99
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0x9
	.long	.LASF503
	.byte	0x24
	.byte	0x9a
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f
	.uleb128 0x9
	.long	.LASF504
	.byte	0x24
	.byte	0x9b
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF505
	.byte	0x24
	.byte	0x9c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0x9
	.long	.LASF506
	.byte	0x24
	.byte	0x9d
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x9
	.long	.LASF507
	.byte	0x24
	.byte	0x9e
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0x9
	.long	.LASF508
	.byte	0x24
	.byte	0x9f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.long	.LASF509
	.byte	0x24
	.byte	0xa0
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0x9
	.long	.LASF510
	.byte	0x24
	.byte	0xa1
	.long	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF511
	.byte	0x24
	.byte	0xa2
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF512
	.byte	0x24
	.byte	0xa3
	.long	0x125a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF513
	.byte	0x24
	.byte	0xa4
	.long	0x125a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF514
	.byte	0x24
	.byte	0xa5
	.long	0x1435
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF515
	.byte	0x24
	.byte	0xa6
	.long	0x213a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF516
	.byte	0x24
	.byte	0xa9
	.long	0x214a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF517
	.byte	0x24
	.byte	0xac
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.long	.LASF518
	.byte	0x24
	.byte	0xad
	.long	0x215a
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x9
	.long	.LASF519
	.byte	0x24
	.byte	0xae
	.long	0x216a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x9
	.long	.LASF520
	.byte	0x24
	.byte	0xaf
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x9
	.long	.LASF521
	.byte	0x24
	.byte	0xb0
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x9
	.long	.LASF522
	.byte	0x24
	.byte	0xb1
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x9
	.long	.LASF523
	.byte	0x24
	.byte	0xb2
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0x9
	.long	.LASF524
	.byte	0x24
	.byte	0xb3
	.long	0x1d3c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x9
	.long	.LASF525
	.byte	0x24
	.byte	0xb4
	.long	0x1a2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x9
	.long	.LASF526
	.byte	0x24
	.byte	0xb7
	.long	0x1a83
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.long	.LASF527
	.byte	0x24
	.byte	0xb8
	.long	0x1a83
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x9
	.long	.LASF528
	.byte	0x24
	.byte	0xba
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b8
	.uleb128 0x9
	.long	.LASF529
	.byte	0x24
	.byte	0xbb
	.long	0x1052
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e4
	.uleb128 0x9
	.long	.LASF530
	.byte	0x24
	.byte	0xbc
	.long	0x212e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f4
	.uleb128 0x9
	.long	.LASF531
	.byte	0x24
	.byte	0xbf
	.long	0x19b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f8
	.uleb128 0x9
	.long	.LASF532
	.byte	0x24
	.byte	0xc2
	.long	0x1a8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1ae3
	.uleb128 0xf
	.long	.LASF533
	.byte	0x4
	.byte	0x24
	.byte	0x5e
	.long	0x1d5b
	.uleb128 0x10
	.long	.LASF534
	.sleb128 0
	.uleb128 0x10
	.long	.LASF535
	.sleb128 1
	.uleb128 0x10
	.long	.LASF536
	.sleb128 2
	.byte	0x0
	.uleb128 0x19
	.long	.LASF537
	.value	0x200
	.byte	0x24
	.byte	0x67
	.long	0x1e4a
	.uleb128 0x9
	.long	.LASF500
	.byte	0x24
	.byte	0x68
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF507
	.byte	0x24
	.byte	0x69
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF506
	.byte	0x24
	.byte	0x6a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF503
	.byte	0x24
	.byte	0x6b
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.long	.LASF502
	.byte	0x24
	.byte	0x6c
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF504
	.byte	0x24
	.byte	0x6d
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF505
	.byte	0x24
	.byte	0x6e
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF538
	.byte	0x24
	.byte	0x6f
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x9
	.long	.LASF509
	.byte	0x24
	.byte	0x70
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF501
	.byte	0x24
	.byte	0x71
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF539
	.byte	0x24
	.byte	0x72
	.long	0x125a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF511
	.byte	0x24
	.byte	0x75
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF540
	.byte	0x24
	.byte	0x76
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF541
	.byte	0x24
	.byte	0x78
	.long	0x1148
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF542
	.byte	0x24
	.byte	0x7a
	.long	0x1e4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF530
	.byte	0x24
	.byte	0x7b
	.long	0x1e5a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.byte	0x0
	.uleb128 0xa
	.long	0x1183
	.long	0x1e5a
	.uleb128 0xb
	.long	0xd6
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x5f
	.long	0x1e6b
	.uleb128 0x21
	.long	0xd6
	.value	0x13f
	.byte	0x0
	.uleb128 0x3
	.long	.LASF543
	.byte	0x24
	.byte	0x7c
	.long	0x1d5b
	.uleb128 0x19
	.long	.LASF544
	.value	0x228
	.byte	0xe
	.byte	0x44
	.long	0x1fdc
	.uleb128 0x9
	.long	.LASF545
	.byte	0xf
	.byte	0x3e
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF546
	.byte	0xf
	.byte	0x3f
	.long	0x1a06
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF547
	.byte	0xf
	.byte	0x40
	.long	0x24b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF548
	.byte	0xf
	.byte	0x41
	.long	0x27a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF549
	.byte	0xf
	.byte	0x42
	.long	0x27ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF550
	.byte	0xf
	.byte	0x43
	.long	0x273d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"os"
	.byte	0xf
	.byte	0x44
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF551
	.byte	0xf
	.byte	0x45
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF552
	.byte	0xf
	.byte	0x46
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.long	.LASF553
	.byte	0xf
	.byte	0x47
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.long	.LASF554
	.byte	0xf
	.byte	0x48
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.long	.LASF555
	.byte	0xf
	.byte	0x49
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF556
	.byte	0xf
	.byte	0x4c
	.long	0x27b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF557
	.byte	0xf
	.byte	0x4d
	.long	0x1a0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF558
	.byte	0xf
	.byte	0x4e
	.long	0x2732
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF559
	.byte	0xf
	.byte	0x51
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF560
	.byte	0xf
	.byte	0x52
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.long	.LASF561
	.byte	0xf
	.byte	0x55
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x9
	.long	.LASF562
	.byte	0xf
	.byte	0x56
	.long	0x215a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x9
	.long	.LASF563
	.byte	0xf
	.byte	0x57
	.long	0x215a
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x9
	.long	.LASF564
	.byte	0xf
	.byte	0x58
	.long	0x1052
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x9
	.long	.LASF565
	.byte	0xf
	.byte	0x59
	.long	0x1052
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x9
	.long	.LASF566
	.byte	0xf
	.byte	0x5c
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x9
	.long	.LASF567
	.byte	0xf
	.byte	0x5d
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1e76
	.uleb128 0x19
	.long	.LASF568
	.value	0x128
	.byte	0x24
	.byte	0x5a
	.long	0x212e
	.uleb128 0x11
	.string	"db"
	.byte	0x25
	.byte	0x92
	.long	0xb30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF569
	.byte	0x25
	.byte	0x95
	.long	0x1fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF570
	.byte	0x25
	.byte	0x9a
	.long	0x1d36
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF571
	.byte	0x25
	.byte	0xa2
	.long	0x212e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF572
	.byte	0x25
	.byte	0xa7
	.long	0x212e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF573
	.byte	0x25
	.byte	0xaa
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF574
	.byte	0x25
	.byte	0xb0
	.long	0x1a0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF575
	.byte	0x25
	.byte	0xb8
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF576
	.byte	0x25
	.byte	0xbb
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF577
	.byte	0x25
	.byte	0xc0
	.long	0x2574
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.long	.LASF578
	.byte	0x25
	.byte	0xc7
	.long	0x1a83
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF579
	.byte	0x25
	.byte	0xca
	.long	0x24b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF580
	.byte	0x25
	.byte	0xcc
	.long	0xfbf
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF581
	.byte	0x25
	.byte	0xcd
	.long	0x26aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.long	.LASF582
	.byte	0x25
	.byte	0xd0
	.long	0x26aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.long	.LASF583
	.byte	0x25
	.byte	0xd6
	.long	0x1047
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.long	.LASF584
	.byte	0x25
	.byte	0xdb
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x9
	.long	.LASF585
	.byte	0x25
	.byte	0xdc
	.long	0x7c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x9
	.long	.LASF586
	.byte	0x25
	.byte	0xdd
	.long	0x26b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.long	.LASF587
	.byte	0x25
	.byte	0xdf
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.long	.LASF588
	.byte	0x25
	.byte	0xe0
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x125
	.uleb128 0x9
	.long	.LASF589
	.byte	0x25
	.byte	0xe2
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x126
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1fe2
	.uleb128 0x7
	.byte	0x4
	.long	0x1e6b
	.uleb128 0xa
	.long	0x83
	.long	0x214a
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x1047
	.long	0x215a
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x1052
	.long	0x216a
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0xf25
	.long	0x217a
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF590
	.byte	0x24
	.byte	0xc3
	.long	0x1ae3
	.uleb128 0x7
	.byte	0x4
	.long	0x939
	.uleb128 0x19
	.long	.LASF591
	.value	0x4e8
	.byte	0xe
	.byte	0x3d
	.long	0x2345
	.uleb128 0x9
	.long	.LASF592
	.byte	0x26
	.byte	0x36
	.long	0x1a06
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF593
	.byte	0x26
	.byte	0x37
	.long	0x2a76
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF594
	.byte	0x26
	.byte	0x38
	.long	0x2185
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF595
	.byte	0x26
	.byte	0x39
	.long	0x2185
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF596
	.byte	0x26
	.byte	0x3a
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF597
	.byte	0x26
	.byte	0x3b
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF598
	.byte	0x26
	.byte	0x3e
	.long	0x1183
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF599
	.byte	0x26
	.byte	0x3f
	.long	0x1052
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF600
	.byte	0x26
	.byte	0x40
	.long	0x6cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF601
	.byte	0x26
	.byte	0x41
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF602
	.byte	0x26
	.byte	0x42
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF603
	.byte	0x26
	.byte	0x45
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF604
	.byte	0x26
	.byte	0x46
	.long	0x1148
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF605
	.byte	0x26
	.byte	0x47
	.long	0x1148
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x9
	.long	.LASF606
	.byte	0x26
	.byte	0x49
	.long	0x2a57
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.long	.LASF607
	.byte	0x26
	.byte	0x4a
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x9
	.long	.LASF608
	.byte	0x26
	.byte	0x4b
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x9
	.long	.LASF609
	.byte	0x26
	.byte	0x4c
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.long	.LASF610
	.byte	0x26
	.byte	0x4d
	.long	0x19fb
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x9
	.long	.LASF611
	.byte	0x26
	.byte	0x4e
	.long	0x3f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x9
	.long	.LASF612
	.byte	0x26
	.byte	0x4f
	.long	0x3f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x9
	.long	.LASF613
	.byte	0x26
	.byte	0x50
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF614
	.byte	0x26
	.byte	0x51
	.long	0xf64
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF615
	.byte	0x26
	.byte	0x52
	.long	0x3f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b4
	.uleb128 0x9
	.long	.LASF616
	.byte	0x26
	.byte	0x55
	.long	0x142a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x9
	.long	.LASF617
	.byte	0x26
	.byte	0x56
	.long	0x12c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x9
	.long	.LASF618
	.byte	0x26
	.byte	0x57
	.long	0x12c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f8
	.uleb128 0x9
	.long	.LASF619
	.byte	0x26
	.byte	0x58
	.long	0x12c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x438
	.uleb128 0x9
	.long	.LASF620
	.byte	0x26
	.byte	0x60
	.long	0xfb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x478
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x218b
	.uleb128 0x8
	.long	.LASF621
	.byte	0x58
	.byte	0x10
	.byte	0x29
	.long	0x2400
	.uleb128 0x9
	.long	.LASF622
	.byte	0x10
	.byte	0x55
	.long	0x243d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF623
	.byte	0x10
	.byte	0x56
	.long	0x1047
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF624
	.byte	0x10
	.byte	0x57
	.long	0x1d36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF625
	.byte	0x10
	.byte	0x58
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF626
	.byte	0x10
	.byte	0x59
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF627
	.byte	0x10
	.byte	0x5a
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF628
	.byte	0x10
	.byte	0x5b
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF629
	.byte	0x10
	.byte	0x5c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF630
	.byte	0x10
	.byte	0x5d
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF631
	.byte	0x10
	.byte	0x5f
	.long	0x2406
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF632
	.byte	0x10
	.byte	0x60
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF633
	.byte	0x10
	.byte	0x61
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x234b
	.uleb128 0xf
	.long	.LASF634
	.byte	0x4
	.byte	0x10
	.byte	0x4a
	.long	0x243d
	.uleb128 0x10
	.long	.LASF635
	.sleb128 0
	.uleb128 0x10
	.long	.LASF636
	.sleb128 1
	.uleb128 0x10
	.long	.LASF637
	.sleb128 2
	.uleb128 0x10
	.long	.LASF638
	.sleb128 3
	.uleb128 0x10
	.long	.LASF639
	.sleb128 4
	.uleb128 0x10
	.long	.LASF640
	.sleb128 5
	.uleb128 0x10
	.long	.LASF641
	.sleb128 6
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x818
	.uleb128 0x3
	.long	.LASF642
	.byte	0x27
	.byte	0x29
	.long	0x244e
	.uleb128 0x1f
	.long	.LASF643
	.byte	0x1
	.uleb128 0x3
	.long	.LASF644
	.byte	0x27
	.byte	0x2a
	.long	0x245f
	.uleb128 0x8
	.long	.LASF645
	.byte	0x14
	.byte	0x27
	.byte	0x2a
	.long	0x24b2
	.uleb128 0x9
	.long	.LASF646
	.byte	0x27
	.byte	0x33
	.long	0x24c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF647
	.byte	0x27
	.byte	0x34
	.long	0x24b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF648
	.byte	0x27
	.byte	0x35
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF649
	.byte	0x27
	.byte	0x36
	.long	0x24c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF650
	.byte	0x27
	.byte	0x37
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2454
	.uleb128 0x3
	.long	.LASF651
	.byte	0x27
	.byte	0x2c
	.long	0x697
	.uleb128 0x7
	.byte	0x4
	.long	0x2443
	.uleb128 0x7
	.byte	0x4
	.long	0x24b8
	.uleb128 0x8
	.long	.LASF652
	.byte	0xc
	.byte	0x27
	.byte	0x58
	.long	0x253e
	.uleb128 0x9
	.long	.LASF653
	.byte	0x27
	.byte	0x59
	.long	0xae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF654
	.byte	0x27
	.byte	0x5a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF655
	.byte	0x27
	.byte	0x5b
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF656
	.byte	0x27
	.byte	0x5c
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF657
	.byte	0x27
	.byte	0x5c
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x9
	.long	.LASF658
	.byte	0x27
	.byte	0x5d
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF659
	.byte	0x27
	.byte	0x5d
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x3
	.long	.LASF660
	.byte	0x27
	.byte	0x5e
	.long	0x24cf
	.uleb128 0xf
	.long	.LASF661
	.byte	0x4
	.byte	0x25
	.byte	0x44
	.long	0x2574
	.uleb128 0x10
	.long	.LASF662
	.sleb128 0
	.uleb128 0x10
	.long	.LASF663
	.sleb128 1
	.uleb128 0x10
	.long	.LASF664
	.sleb128 2
	.uleb128 0x10
	.long	.LASF665
	.sleb128 3
	.uleb128 0x10
	.long	.LASF666
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF667
	.byte	0x25
	.byte	0x4a
	.long	0x2549
	.uleb128 0xf
	.long	.LASF668
	.byte	0x4
	.byte	0x25
	.byte	0x5b
	.long	0x259e
	.uleb128 0x10
	.long	.LASF669
	.sleb128 0
	.uleb128 0x10
	.long	.LASF670
	.sleb128 1
	.uleb128 0x10
	.long	.LASF671
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.long	.LASF672
	.byte	0x25
	.byte	0x5f
	.long	0x257f
	.uleb128 0x8
	.long	.LASF673
	.byte	0x3c
	.byte	0x25
	.byte	0x75
	.long	0x25d2
	.uleb128 0x9
	.long	.LASF674
	.byte	0x25
	.byte	0x78
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF675
	.byte	0x25
	.byte	0x7b
	.long	0x1052
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x8
	.long	.LASF676
	.byte	0x90
	.byte	0x25
	.byte	0x7d
	.long	0x260a
	.uleb128 0x9
	.long	.LASF677
	.byte	0x25
	.byte	0x84
	.long	0x24b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF678
	.byte	0x25
	.byte	0x85
	.long	0x1183
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF679
	.byte	0x25
	.byte	0x86
	.long	0x259e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x22
	.long	.LASF867
	.byte	0x90
	.byte	0x25
	.byte	0x74
	.long	0x262b
	.uleb128 0x12
	.string	"di"
	.byte	0x25
	.byte	0x7c
	.long	0x25a9
	.uleb128 0x12
	.string	"dl"
	.byte	0x25
	.byte	0x87
	.long	0x25d2
	.byte	0x0
	.uleb128 0x8
	.long	.LASF680
	.byte	0xb0
	.byte	0x25
	.byte	0x61
	.long	0x2699
	.uleb128 0x9
	.long	.LASF681
	.byte	0x25
	.byte	0x63
	.long	0x1047
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF682
	.byte	0x25
	.byte	0x66
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF683
	.byte	0x25
	.byte	0x69
	.long	0x19b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF684
	.byte	0x25
	.byte	0x6c
	.long	0x212e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF685
	.byte	0x25
	.byte	0x6f
	.long	0x2699
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF686
	.byte	0x25
	.byte	0x72
	.long	0x2699
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.string	"dt"
	.byte	0x25
	.byte	0x88
	.long	0x260a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x262b
	.uleb128 0x3
	.long	.LASF687
	.byte	0x25
	.byte	0x89
	.long	0x262b
	.uleb128 0x7
	.byte	0x4
	.long	0x269f
	.uleb128 0x7
	.byte	0x4
	.long	0xb3b
	.uleb128 0x3
	.long	.LASF688
	.byte	0x25
	.byte	0xe3
	.long	0x1fe2
	.uleb128 0x7
	.byte	0x4
	.long	0x26c7
	.uleb128 0x7
	.byte	0x4
	.long	0x26b6
	.uleb128 0x8
	.long	.LASF689
	.byte	0xc0
	.byte	0x28
	.byte	0x38
	.long	0x2722
	.uleb128 0x9
	.long	.LASF690
	.byte	0x28
	.byte	0x39
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF691
	.byte	0x28
	.byte	0x3a
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF692
	.byte	0x28
	.byte	0x3b
	.long	0x1183
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF693
	.byte	0x28
	.byte	0x3c
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF694
	.byte	0x28
	.byte	0x3d
	.long	0x2722
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xa
	.long	0x95
	.long	0x2732
	.uleb128 0xb
	.long	0xd6
	.byte	0x4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF695
	.byte	0x28
	.byte	0x3e
	.long	0x26cd
	.uleb128 0x7
	.byte	0x4
	.long	0x10e6
	.uleb128 0x19
	.long	.LASF696
	.value	0x400
	.byte	0xf
	.byte	0x2f
	.long	0x278c
	.uleb128 0x9
	.long	.LASF549
	.byte	0xf
	.byte	0x30
	.long	0x1e6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF558
	.byte	0xf
	.byte	0x31
	.long	0x2732
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.long	.LASF697
	.byte	0xf
	.byte	0x32
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x9
	.long	.LASF698
	.byte	0xf
	.byte	0x33
	.long	0x278c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c8
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x279d
	.uleb128 0x21
	.long	0xd6
	.value	0x137
	.byte	0x0
	.uleb128 0x3
	.long	.LASF699
	.byte	0xf
	.byte	0x35
	.long	0x2743
	.uleb128 0x7
	.byte	0x4
	.long	0x279d
	.uleb128 0x7
	.byte	0x4
	.long	0x217a
	.uleb128 0x7
	.byte	0x4
	.long	0x823
	.uleb128 0x3
	.long	.LASF700
	.byte	0xf
	.byte	0x5e
	.long	0x1e76
	.uleb128 0x8
	.long	.LASF701
	.byte	0x20
	.byte	0x29
	.byte	0x26
	.long	0x280a
	.uleb128 0x9
	.long	.LASF702
	.byte	0x29
	.byte	0x2c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF703
	.byte	0x29
	.byte	0x2d
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF704
	.byte	0x29
	.byte	0x2e
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF705
	.byte	0x29
	.byte	0x2f
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.long	.LASF706
	.byte	0x29
	.byte	0x30
	.long	0x27c5
	.uleb128 0x8
	.long	.LASF707
	.byte	0x88
	.byte	0x29
	.byte	0x34
	.long	0x283f
	.uleb128 0x9
	.long	.LASF708
	.byte	0x29
	.byte	0x35
	.long	0x1183
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF709
	.byte	0x29
	.byte	0x36
	.long	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0x0
	.uleb128 0x3
	.long	.LASF710
	.byte	0x29
	.byte	0x37
	.long	0x2815
	.uleb128 0x8
	.long	.LASF711
	.byte	0x50
	.byte	0x29
	.byte	0x39
	.long	0x28e3
	.uleb128 0x9
	.long	.LASF712
	.byte	0x29
	.byte	0x3a
	.long	0xf64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF713
	.byte	0x29
	.byte	0x3b
	.long	0xcc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF714
	.byte	0x29
	.byte	0x3c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF715
	.byte	0x29
	.byte	0x3d
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF716
	.byte	0x29
	.byte	0x3e
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.long	.LASF717
	.byte	0x29
	.byte	0x3f
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.long	.LASF718
	.byte	0x29
	.byte	0x40
	.long	0x28e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF719
	.byte	0x29
	.byte	0x41
	.long	0x28e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF720
	.byte	0x29
	.byte	0x42
	.long	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF721
	.byte	0x29
	.byte	0x43
	.long	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x283f
	.uleb128 0x7
	.byte	0x4
	.long	0x280a
	.uleb128 0x3
	.long	.LASF722
	.byte	0x29
	.byte	0x44
	.long	0x284a
	.uleb128 0x3
	.long	.LASF723
	.byte	0x13
	.byte	0x2d
	.long	0x2905
	.uleb128 0x1a
	.byte	0x1
	.long	0x2916
	.uleb128 0x16
	.long	0xe71
	.uleb128 0x16
	.long	0xe4
	.byte	0x0
	.uleb128 0x19
	.long	.LASF724
	.value	0x140
	.byte	0x13
	.byte	0x47
	.long	0x2a40
	.uleb128 0x9
	.long	.LASF725
	.byte	0x13
	.byte	0x48
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF726
	.byte	0x13
	.byte	0x49
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF727
	.byte	0x13
	.byte	0x4a
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF728
	.byte	0x13
	.byte	0x4b
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF729
	.byte	0x13
	.byte	0x4c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF730
	.byte	0x13
	.byte	0x4d
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF731
	.byte	0x13
	.byte	0x4e
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF732
	.byte	0x13
	.byte	0x4f
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF733
	.byte	0x13
	.byte	0x50
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF734
	.byte	0x13
	.byte	0x51
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF735
	.byte	0x13
	.byte	0x52
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF736
	.byte	0x13
	.byte	0x53
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF737
	.byte	0x13
	.byte	0x54
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF242
	.byte	0x13
	.byte	0x5a
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF738
	.byte	0x13
	.byte	0x5b
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF739
	.byte	0x13
	.byte	0x5c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF740
	.byte	0x13
	.byte	0x5d
	.long	0x1183
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF741
	.byte	0x13
	.byte	0x5e
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF742
	.byte	0x13
	.byte	0x5f
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.long	.LASF743
	.byte	0x13
	.byte	0x60
	.long	0x10b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.byte	0x0
	.uleb128 0x3
	.long	.LASF744
	.byte	0x13
	.byte	0x61
	.long	0x2916
	.uleb128 0x7
	.byte	0x4
	.long	0x2a40
	.uleb128 0x7
	.byte	0x4
	.long	0x28fa
	.uleb128 0xf
	.long	.LASF745
	.byte	0x4
	.byte	0x26
	.byte	0x2d
	.long	0x2a76
	.uleb128 0x10
	.long	.LASF746
	.sleb128 0
	.uleb128 0x10
	.long	.LASF747
	.sleb128 1
	.uleb128 0x10
	.long	.LASF748
	.sleb128 2
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x7f0
	.uleb128 0x3
	.long	.LASF749
	.byte	0x26
	.byte	0x61
	.long	0x218b
	.uleb128 0xf
	.long	.LASF750
	.byte	0x4
	.byte	0x11
	.byte	0x29
	.long	0x2ab8
	.uleb128 0x10
	.long	.LASF751
	.sleb128 0
	.uleb128 0x10
	.long	.LASF752
	.sleb128 1
	.uleb128 0x10
	.long	.LASF753
	.sleb128 2
	.uleb128 0x10
	.long	.LASF754
	.sleb128 3
	.uleb128 0x10
	.long	.LASF755
	.sleb128 4
	.uleb128 0x10
	.long	.LASF756
	.sleb128 5
	.byte	0x0
	.uleb128 0x19
	.long	.LASF757
	.value	0x100
	.byte	0x11
	.byte	0x34
	.long	0x2b99
	.uleb128 0x9
	.long	.LASF758
	.byte	0x11
	.byte	0x35
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF759
	.byte	0x11
	.byte	0x36
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF760
	.byte	0x11
	.byte	0x37
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF761
	.byte	0x11
	.byte	0x38
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF762
	.byte	0x11
	.byte	0x39
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF763
	.byte	0x11
	.byte	0x3e
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF764
	.byte	0x11
	.byte	0x3f
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF765
	.byte	0x11
	.byte	0x40
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF766
	.byte	0x11
	.byte	0x42
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF767
	.byte	0x11
	.byte	0x44
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF768
	.byte	0x11
	.byte	0x45
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF769
	.byte	0x11
	.byte	0x46
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF770
	.byte	0x11
	.byte	0x47
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF771
	.byte	0x11
	.byte	0x48
	.long	0x2722
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF772
	.byte	0x11
	.byte	0x49
	.long	0x2b99
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0xa
	.long	0x95
	.long	0x2ba9
	.uleb128 0xb
	.long	0xd6
	.byte	0xd
	.byte	0x0
	.uleb128 0x3
	.long	.LASF773
	.byte	0x11
	.byte	0x4a
	.long	0x2ab8
	.uleb128 0x7
	.byte	0x4
	.long	0x2ba9
	.uleb128 0x7
	.byte	0x4
	.long	0x2a7c
	.uleb128 0x7
	.byte	0x4
	.long	0x92e
	.uleb128 0xa
	.long	0x4d
	.long	0x2bd6
	.uleb128 0xb
	.long	0xd6
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	.LASF774
	.byte	0x4
	.byte	0x2a
	.byte	0x4b
	.long	0x2bfb
	.uleb128 0x10
	.long	.LASF775
	.sleb128 0
	.uleb128 0x10
	.long	.LASF776
	.sleb128 1
	.uleb128 0x10
	.long	.LASF777
	.sleb128 2
	.uleb128 0x10
	.long	.LASF778
	.sleb128 3
	.byte	0x0
	.uleb128 0x23
	.byte	0xc
	.byte	0x2
	.value	0x31a
	.long	0x2c31
	.uleb128 0x24
	.string	"dr"
	.byte	0x2
	.value	0x31b
	.long	0x26aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.long	.LASF779
	.byte	0x2
	.value	0x31c
	.long	0x2c31
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x24
	.string	"arg"
	.byte	0x2
	.value	0x31d
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xca6
	.uleb128 0x1c
	.long	.LASF780
	.byte	0x2
	.value	0x31e
	.long	0x2bfb
	.uleb128 0x25
	.long	.LASF791
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x6cf
	.quad	.LFB0
	.quad	.LFE0
	.long	.LLST0
	.long	0x2c75
	.uleb128 0x26
	.string	"ts"
	.byte	0x1
	.byte	0x31
	.long	0x114
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF784
	.byte	0x2
	.byte	0x5b
	.byte	0x1
	.long	0x46
	.quad	.LFB4
	.quad	.LFE4
	.long	.LLST1
	.long	0x2d2f
	.uleb128 0x28
	.string	"os"
	.byte	0x2
	.byte	0x5b
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF781
	.byte	0x2
	.byte	0x5b
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF782
	.byte	0x2
	.byte	0x5b
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.byte	0x5c
	.long	0xe4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"dbp"
	.byte	0x2
	.byte	0x5c
	.long	0x2d2f
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"dn"
	.byte	0x2
	.byte	0x5e
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF783
	.byte	0x2
	.byte	0x5f
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"db"
	.byte	0x2
	.byte	0x60
	.long	0x26c7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.byte	0x61
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x2d45
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11493
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xcc3
	.uleb128 0xa
	.long	0xf7
	.long	0x2d45
	.uleb128 0xb
	.long	0xd6
	.byte	0xc
	.byte	0x0
	.uleb128 0x2c
	.long	0x2d35
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF868
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.long	0x46
	.quad	.LFB5
	.quad	.LFE5
	.long	.LLST2
	.uleb128 0x27
	.byte	0x1
	.long	.LASF785
	.byte	0x2
	.byte	0x80
	.byte	0x1
	.long	0x46
	.quad	.LFB6
	.quad	.LFE6
	.long	.LLST3
	.long	0x2dc6
	.uleb128 0x28
	.string	"db"
	.byte	0x2
	.byte	0x80
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF786
	.byte	0x2
	.byte	0x80
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"tx"
	.byte	0x2
	.byte	0x80
	.long	0x243d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.string	"dn"
	.byte	0x2
	.byte	0x82
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF787
	.byte	0x2
	.byte	0x90
	.byte	0x1
	.long	0x46
	.quad	.LFB7
	.quad	.LFE7
	.long	.LLST4
	.long	0x2e75
	.uleb128 0x28
	.string	"os"
	.byte	0x2
	.byte	0x90
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF781
	.byte	0x2
	.byte	0x90
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.byte	0x90
	.long	0xe4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"dbp"
	.byte	0x2
	.byte	0x90
	.long	0x2d2f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"dn"
	.byte	0x2
	.byte	0x92
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"db"
	.byte	0x2
	.byte	0x93
	.long	0x26c7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF788
	.byte	0x2
	.byte	0x94
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x2e85
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11545
	.uleb128 0x2b
	.long	.LASF790
	.long	0x2e8a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11546
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x2e85
	.uleb128 0xb
	.long	0xd6
	.byte	0xe
	.byte	0x0
	.uleb128 0x2c
	.long	0x2e75
	.uleb128 0x2c
	.long	0x2e75
	.uleb128 0x25
	.long	.LASF792
	.byte	0x2
	.byte	0xb7
	.byte	0x1
	.long	0x46
	.quad	.LFB8
	.quad	.LFE8
	.long	.LLST5
	.long	0x3017
	.uleb128 0x28
	.string	"dn"
	.byte	0x2
	.byte	0xb7
	.long	0x27ae
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.long	.LASF782
	.byte	0x2
	.byte	0xb7
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.long	.LASF793
	.byte	0x2
	.byte	0xb8
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF794
	.byte	0x2
	.byte	0xb8
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.string	"tag"
	.byte	0x2
	.byte	0xb8
	.long	0x6c8
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.long	.LASF795
	.byte	0x2
	.byte	0xb8
	.long	0x6a7
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.long	.LASF796
	.byte	0x2
	.byte	0xb8
	.long	0x3017
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"dp"
	.byte	0x2
	.byte	0xba
	.long	0x2bba
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.string	"dbp"
	.byte	0x2
	.byte	0xbb
	.long	0x2d2f
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF783
	.byte	0x2
	.byte	0xbc
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF797
	.byte	0x2
	.byte	0xbc
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.byte	0xbc
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF798
	.byte	0x2
	.byte	0xbd
	.long	0x83
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.byte	0xbe
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"zio"
	.byte	0x2
	.byte	0xbf
	.long	0x19b0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF799
	.byte	0x2
	.byte	0xc0
	.long	0x6cf
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF790
	.long	0x302d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11607
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2
	.long	0x2fd3
	.uleb128 0x2a
	.long	.LASF800
	.byte	0x2
	.byte	0xca
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3
	.long	0x2ff6
	.uleb128 0x26
	.string	"db"
	.byte	0x2
	.byte	0xe2
	.long	0x26c7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x100
	.long	0x26c7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2d2f
	.uleb128 0xa
	.long	0xf7
	.long	0x302d
	.uleb128 0xb
	.long	0xd6
	.byte	0x1b
	.byte	0x0
	.uleb128 0x2c
	.long	0x301d
	.uleb128 0x31
	.long	.LASF801
	.byte	0x2
	.value	0x115
	.byte	0x1
	.long	0x46
	.quad	.LFB9
	.quad	.LFE9
	.long	.LLST6
	.long	0x3104
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x115
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x115
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x115
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF793
	.byte	0x2
	.value	0x116
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF794
	.byte	0x2
	.value	0x116
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"tag"
	.byte	0x2
	.value	0x116
	.long	0x6c8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	.LASF795
	.byte	0x2
	.value	0x116
	.long	0x6a7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF796
	.byte	0x2
	.value	0x116
	.long	0x3017
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x118
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x119
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3114
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11736
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x3114
	.uleb128 0xb
	.long	0xd6
	.byte	0x12
	.byte	0x0
	.uleb128 0x2c
	.long	0x3104
	.uleb128 0x34
	.byte	0x1
	.long	.LASF802
	.byte	0x2
	.value	0x128
	.byte	0x1
	.long	0x46
	.quad	.LFB10
	.quad	.LFE10
	.long	.LLST7
	.long	0x31c9
	.uleb128 0x32
	.string	"db"
	.byte	0x2
	.value	0x128
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x128
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF793
	.byte	0x2
	.value	0x129
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF794
	.byte	0x2
	.value	0x129
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.string	"tag"
	.byte	0x2
	.value	0x129
	.long	0x6c8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF795
	.byte	0x2
	.value	0x129
	.long	0x6a7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF796
	.byte	0x2
	.value	0x129
	.long	0x3017
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x12b
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x12c
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF805
	.byte	0x2
	.value	0x135
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11
	.long	.LLST8
	.long	0x3235
	.uleb128 0x33
	.long	.LASF803
	.byte	0x2
	.value	0x135
	.long	0x2d2f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF804
	.byte	0x2
	.value	0x135
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"tag"
	.byte	0x2
	.value	0x135
	.long	0x6c8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x137
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"dbp"
	.byte	0x2
	.value	0x138
	.long	0x26c1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF806
	.byte	0x2
	.value	0x146
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12
	.long	.LLST9
	.long	0x3314
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x146
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x146
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x146
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"len"
	.byte	0x2
	.value	0x146
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x148
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF783
	.byte	0x2
	.value	0x149
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF797
	.byte	0x2
	.value	0x14a
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x14a
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x14a
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3314
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11794
	.uleb128 0x2f
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x36
	.long	.LASF800
	.byte	0x2
	.value	0x167
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x2d35
	.uleb128 0x31
	.long	.LASF807
	.byte	0x2
	.value	0x17a
	.byte	0x1
	.long	0x46
	.quad	.LFB13
	.quad	.LFE13
	.long	.LLST10
	.long	0x349c
	.uleb128 0x32
	.string	"dn"
	.byte	0x2
	.value	0x17a
	.long	0x27ae
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x17a
	.long	0x349c
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.long	.LASF808
	.byte	0x2
	.value	0x17a
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x17c
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF809
	.byte	0x2
	.value	0x17d
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF810
	.byte	0x2
	.value	0x17e
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF790
	.long	0x34a2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11864
	.uleb128 0x2f
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x36
	.long	.LASF811
	.byte	0x2
	.value	0x18b
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF812
	.byte	0x2
	.value	0x18c
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x18d
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7
	.long	0x3449
	.uleb128 0x36
	.long	.LASF813
	.byte	0x2
	.value	0x197
	.long	0x34a7
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF814
	.byte	0x2
	.value	0x197
	.long	0x34a7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x36
	.long	.LASF815
	.byte	0x2
	.value	0x197
	.long	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x36
	.long	.LASF813
	.byte	0x2
	.value	0x1aa
	.long	0x34a7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF814
	.byte	0x2
	.value	0x1aa
	.long	0x34a7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x36
	.long	.LASF815
	.byte	0x2
	.value	0x1aa
	.long	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x95
	.uleb128 0x2c
	.long	0x2e75
	.uleb128 0x2c
	.long	0x95
	.uleb128 0x31
	.long	.LASF816
	.byte	0x2
	.value	0x1b0
	.byte	0x1
	.long	0x46
	.quad	.LFB14
	.quad	.LFE14
	.long	.LLST11
	.long	0x35ae
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x1b0
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.string	"dn"
	.byte	0x2
	.value	0x1b0
	.long	0x27ae
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x1b0
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.long	.LASF793
	.byte	0x2
	.value	0x1b1
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.long	.LASF817
	.byte	0x2
	.value	0x1b1
	.long	0x3f5
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.string	"tx"
	.byte	0x2
	.value	0x1b3
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF818
	.byte	0x2
	.value	0x1b4
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF799
	.byte	0x2
	.value	0x1b4
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"end"
	.byte	0x2
	.value	0x1b4
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x1b4
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF819
	.byte	0x2
	.value	0x1b5
	.long	0x3f5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF820
	.byte	0x2
	.value	0x1b6
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x1b6
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF790
	.long	0x35be
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11953
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x35be
	.uleb128 0xb
	.long	0xd6
	.byte	0x18
	.byte	0x0
	.uleb128 0x2c
	.long	0x35ae
	.uleb128 0x34
	.byte	0x1
	.long	.LASF821
	.byte	0x2
	.value	0x1e2
	.byte	0x1
	.long	0x46
	.quad	.LFB15
	.quad	.LFE15
	.long	.LLST12
	.long	0x3658
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x1e2
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x1e2
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x1e3
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF793
	.byte	0x2
	.value	0x1e3
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x1e5
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x1e6
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3658
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12012
	.byte	0x0
	.uleb128 0x2c
	.long	0x1493
	.uleb128 0x34
	.byte	0x1
	.long	.LASF822
	.byte	0x2
	.value	0x1f1
	.byte	0x1
	.long	0x46
	.quad	.LFB16
	.quad	.LFE16
	.long	.LLST13
	.long	0x36e0
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x1f1
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x1f1
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x1f3
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"tx"
	.byte	0x2
	.value	0x1f4
	.long	0x243d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x1f5
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x36e0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12028
	.byte	0x0
	.uleb128 0x2c
	.long	0x12dd
	.uleb128 0x34
	.byte	0x1
	.long	.LASF823
	.byte	0x2
	.value	0x20f
	.byte	0x1
	.long	0x46
	.quad	.LFB17
	.quad	.LFE17
	.long	.LLST14
	.long	0x379d
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x20f
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x20f
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x20f
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x210
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"tx"
	.byte	0x2
	.value	0x210
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x212
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x213
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x379d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12060
	.uleb128 0x2b
	.long	.LASF790
	.long	0x37a2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12061
	.byte	0x0
	.uleb128 0x2c
	.long	0x2e75
	.uleb128 0x2c
	.long	0x2e75
	.uleb128 0x34
	.byte	0x1
	.long	.LASF825
	.byte	0x2
	.value	0x21e
	.byte	0x1
	.long	0x46
	.quad	.LFB18
	.quad	.LFE18
	.long	.LLST15
	.long	0x3909
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x21e
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x21e
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x21e
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x21e
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.string	"buf"
	.byte	0x2
	.value	0x21f
	.long	0xe4
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x221
	.long	0x27ae
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"dbp"
	.byte	0x2
	.value	0x222
	.long	0x2d2f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF804
	.byte	0x2
	.value	0x223
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x223
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x223
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3919
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12088
	.uleb128 0x2b
	.long	.LASF790
	.long	0x391e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12095
	.uleb128 0x2e
	.quad	.LBB11
	.quad	.LBE11
	.long	0x38b5
	.uleb128 0x36
	.long	.LASF826
	.byte	0x2
	.value	0x22f
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x36
	.long	.LASF827
	.byte	0x2
	.value	0x236
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x36
	.long	.LASF828
	.byte	0x2
	.value	0x242
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF829
	.byte	0x2
	.value	0x243
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x244
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x3919
	.uleb128 0xb
	.long	0xd6
	.byte	0x8
	.byte	0x0
	.uleb128 0x2c
	.long	0x3909
	.uleb128 0x2c
	.long	0x3909
	.uleb128 0x35
	.byte	0x1
	.long	.LASF830
	.byte	0x2
	.value	0x258
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19
	.long	.LLST16
	.long	0x3a35
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x258
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x258
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF782
	.byte	0x2
	.value	0x258
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x258
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"buf"
	.byte	0x2
	.value	0x259
	.long	0x6c8
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.string	"tx"
	.byte	0x2
	.value	0x259
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"dbp"
	.byte	0x2
	.value	0x25b
	.long	0x2d2f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF804
	.byte	0x2
	.value	0x25c
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x25c
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3a45
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12167
	.uleb128 0x2b
	.long	.LASF790
	.long	0x3a4a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12168
	.uleb128 0x2f
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x36
	.long	.LASF828
	.byte	0x2
	.value	0x265
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF829
	.byte	0x2
	.value	0x266
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x267
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x3a45
	.uleb128 0xb
	.long	0xd6
	.byte	0x9
	.byte	0x0
	.uleb128 0x2c
	.long	0x3a35
	.uleb128 0x2c
	.long	0x3a35
	.uleb128 0x34
	.byte	0x1
	.long	.LASF831
	.byte	0x2
	.value	0x283
	.byte	0x1
	.long	0x46
	.quad	.LFB20
	.quad	.LFE20
	.long	.LLST17
	.long	0x3b49
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x283
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x283
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"uio"
	.byte	0x2
	.value	0x283
	.long	0xfd5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x283
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"dbp"
	.byte	0x2
	.value	0x285
	.long	0x2d2f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF804
	.byte	0x2
	.value	0x286
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x286
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x286
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3b49
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12236
	.uleb128 0x2b
	.long	.LASF790
	.long	0x3b4e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12240
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x36
	.long	.LASF828
	.byte	0x2
	.value	0x292
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF829
	.byte	0x2
	.value	0x293
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x294
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x2d35
	.uleb128 0x2c
	.long	0x2d35
	.uleb128 0x34
	.byte	0x1
	.long	.LASF832
	.byte	0x2
	.value	0x2a8
	.byte	0x1
	.long	0x46
	.quad	.LFB21
	.quad	.LFE21
	.long	.LLST18
	.long	0x3c5c
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x2a8
	.long	0xcc9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x2a8
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"uio"
	.byte	0x2
	.value	0x2a8
	.long	0xfd5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x2a8
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"tx"
	.byte	0x2
	.value	0x2a9
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"dbp"
	.byte	0x2
	.value	0x2ab
	.long	0x2d2f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF804
	.byte	0x2
	.value	0x2ac
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x2ac
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x2ad
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3c6c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12287
	.uleb128 0x2b
	.long	.LASF790
	.long	0x3c71
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12291
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x36
	.long	.LASF828
	.byte	0x2
	.value	0x2b8
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF829
	.byte	0x2
	.value	0x2b9
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x2ba
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x3c6c
	.uleb128 0xb
	.long	0xd6
	.byte	0xd
	.byte	0x0
	.uleb128 0x2c
	.long	0x3c5c
	.uleb128 0x2c
	.long	0x3c5c
	.uleb128 0x38
	.long	.LASF869
	.byte	0x2
	.value	0x322
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22
	.long	.LLST19
	.long	0x3d12
	.uleb128 0x32
	.string	"zio"
	.byte	0x2
	.value	0x322
	.long	0x19b0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"buf"
	.byte	0x2
	.value	0x322
	.long	0x24b2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF833
	.byte	0x2
	.value	0x322
	.long	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"in"
	.byte	0x2
	.value	0x324
	.long	0x3d12
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"dr"
	.byte	0x2
	.value	0x325
	.long	0x26aa
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x326
	.long	0x26c7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF779
	.byte	0x2
	.value	0x327
	.long	0x2c31
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF790
	.long	0x3d18
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12362
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2c37
	.uleb128 0x2c
	.long	0x3c5c
	.uleb128 0x34
	.byte	0x1
	.long	.LASF834
	.byte	0x2
	.value	0x353
	.byte	0x1
	.long	0x46
	.quad	.LFB23
	.quad	.LFE23
	.long	.LLST20
	.long	0x3e6b
	.uleb128 0x32
	.string	"pio"
	.byte	0x2
	.value	0x353
	.long	0x19b0
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x33
	.long	.LASF835
	.byte	0x2
	.value	0x353
	.long	0xcc3
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.string	"bp"
	.byte	0x2
	.value	0x354
	.long	0x1a0c
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x32
	.string	"txg"
	.byte	0x2
	.value	0x354
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.long	.LASF779
	.byte	0x2
	.value	0x354
	.long	0x2c31
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x32
	.string	"arg"
	.byte	0x2
	.value	0x354
	.long	0xe4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.string	"db"
	.byte	0x2
	.value	0x356
	.long	0x26c7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"os"
	.byte	0x2
	.value	0x357
	.long	0x3e6b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"dp"
	.byte	0x2
	.value	0x358
	.long	0x2bba
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"tx"
	.byte	0x2
	.value	0x359
	.long	0x3e71
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"dr"
	.byte	0x2
	.value	0x35a
	.long	0x26aa
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"in"
	.byte	0x2
	.value	0x35b
	.long	0x3d12
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"zb"
	.byte	0x2
	.value	0x35c
	.long	0x19fb
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"wp"
	.byte	0x2
	.value	0x35d
	.long	0x253e
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.string	"zio"
	.byte	0x2
	.value	0x35e
	.long	0x19b0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF836
	.byte	0x2
	.value	0x35f
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x360
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF790
	.long	0x3e77
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12415
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3e7c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12416
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x27ba
	.uleb128 0x7
	.byte	0x4
	.long	0x142a
	.uleb128 0x2c
	.long	0x3909
	.uleb128 0x2c
	.long	0x3909
	.uleb128 0x34
	.byte	0x1
	.long	.LASF837
	.byte	0x2
	.value	0x3e7
	.byte	0x1
	.long	0x46
	.quad	.LFB24
	.quad	.LFE24
	.long	.LLST21
	.long	0x3f25
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x3e7
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x3e7
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x3e7
	.long	0x95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"ibs"
	.byte	0x2
	.value	0x3e7
	.long	0x46
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.string	"tx"
	.byte	0x2
	.value	0x3e8
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x3ea
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x3eb
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3f25
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12566
	.byte	0x0
	.uleb128 0x2c
	.long	0x35ae
	.uleb128 0x35
	.byte	0x1
	.long	.LASF838
	.byte	0x2
	.value	0x3f6
	.byte	0x1
	.quad	.LFB25
	.quad	.LFE25
	.long	.LLST22
	.long	0x3fbf
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x3f6
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x3f6
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF839
	.byte	0x2
	.value	0x3f6
	.long	0x5f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"tx"
	.byte	0x2
	.value	0x3f7
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x3f9
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x3fcf
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12582
	.uleb128 0x2b
	.long	.LASF790
	.long	0x3fd4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12583
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x3fcf
	.uleb128 0xb
	.long	0xd6
	.byte	0x17
	.byte	0x0
	.uleb128 0x2c
	.long	0x3fbf
	.uleb128 0x2c
	.long	0x3fbf
	.uleb128 0x35
	.byte	0x1
	.long	.LASF840
	.byte	0x2
	.value	0x404
	.byte	0x1
	.quad	.LFB26
	.quad	.LFE26
	.long	.LLST23
	.long	0x406e
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x404
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x404
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF841
	.byte	0x2
	.value	0x404
	.long	0x5f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"tx"
	.byte	0x2
	.value	0x405
	.long	0x243d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x407
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x406e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12597
	.uleb128 0x2b
	.long	.LASF790
	.long	0x4073
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12598
	.byte	0x0
	.uleb128 0x2c
	.long	0x3fbf
	.uleb128 0x2c
	.long	0x3fbf
	.uleb128 0x34
	.byte	0x1
	.long	.LASF842
	.byte	0x2
	.value	0x412
	.byte	0x1
	.long	0x46
	.quad	.LFB27
	.quad	.LFE27
	.long	.LLST24
	.long	0x411a
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x412
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x412
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF843
	.byte	0x2
	.value	0x412
	.long	0x3f5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"off"
	.byte	0x2
	.value	0x412
	.long	0x349c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x414
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x415
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x415
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x411a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12614
	.byte	0x0
	.uleb128 0x2c
	.long	0x12dd
	.uleb128 0x35
	.byte	0x1
	.long	.LASF844
	.byte	0x2
	.value	0x431
	.byte	0x1
	.quad	.LFB28
	.quad	.LFE28
	.long	.LLST25
	.long	0x415f
	.uleb128 0x32
	.string	"dn"
	.byte	0x2
	.value	0x431
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"doi"
	.byte	0x2
	.value	0x431
	.long	0x415f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xc20
	.uleb128 0x34
	.byte	0x1
	.long	.LASF210
	.byte	0x2
	.value	0x44c
	.byte	0x1
	.long	0x46
	.quad	.LFB29
	.quad	.LFE29
	.long	.LLST26
	.long	0x41ea
	.uleb128 0x32
	.string	"os"
	.byte	0x2
	.value	0x44c
	.long	0xcc9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF781
	.byte	0x2
	.value	0x44c
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"doi"
	.byte	0x2
	.value	0x44c
	.long	0x415f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x44e
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"err"
	.byte	0x2
	.value	0x44f
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF789
	.long	0x41ea
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12693
	.byte	0x0
	.uleb128 0x2c
	.long	0x12dd
	.uleb128 0x35
	.byte	0x1
	.long	.LASF845
	.byte	0x2
	.value	0x45f
	.byte	0x1
	.quad	.LFB30
	.quad	.LFE30
	.long	.LLST27
	.long	0x422f
	.uleb128 0x32
	.string	"db"
	.byte	0x2
	.value	0x45f
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"doi"
	.byte	0x2
	.value	0x45f
	.long	0x415f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF846
	.byte	0x2
	.value	0x469
	.byte	0x1
	.quad	.LFB31
	.quad	.LFE31
	.long	.LLST28
	.long	0x428c
	.uleb128 0x32
	.string	"db"
	.byte	0x2
	.value	0x469
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF847
	.byte	0x2
	.value	0x469
	.long	0xfdb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF848
	.byte	0x2
	.value	0x469
	.long	0x428c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"dn"
	.byte	0x2
	.value	0x46b
	.long	0x27ae
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x416
	.uleb128 0x35
	.byte	0x1
	.long	.LASF849
	.byte	0x2
	.value	0x474
	.byte	0x1
	.quad	.LFB32
	.quad	.LFE32
	.long	.LLST29
	.long	0x4312
	.uleb128 0x33
	.long	.LASF850
	.byte	0x2
	.value	0x474
	.long	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x474
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"buf"
	.byte	0x2
	.value	0x476
	.long	0x349c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF851
	.byte	0x2
	.value	0x477
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x478
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF790
	.long	0x4322
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12742
	.byte	0x0
	.uleb128 0xa
	.long	0xf7
	.long	0x4322
	.uleb128 0xb
	.long	0xd6
	.byte	0x15
	.byte	0x0
	.uleb128 0x2c
	.long	0x4312
	.uleb128 0x35
	.byte	0x1
	.long	.LASF852
	.byte	0x2
	.value	0x481
	.byte	0x1
	.quad	.LFB33
	.quad	.LFE33
	.long	.LLST30
	.long	0x43a7
	.uleb128 0x33
	.long	.LASF850
	.byte	0x2
	.value	0x481
	.long	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x481
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"buf"
	.byte	0x2
	.value	0x483
	.long	0xfdb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF851
	.byte	0x2
	.value	0x484
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x485
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF790
	.long	0x43a7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12820
	.byte	0x0
	.uleb128 0x2c
	.long	0x4312
	.uleb128 0x35
	.byte	0x1
	.long	.LASF853
	.byte	0x2
	.value	0x48e
	.byte	0x1
	.quad	.LFB34
	.quad	.LFE34
	.long	.LLST31
	.long	0x442c
	.uleb128 0x33
	.long	.LASF850
	.byte	0x2
	.value	0x48e
	.long	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x48e
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"buf"
	.byte	0x2
	.value	0x490
	.long	0x442c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF851
	.byte	0x2
	.value	0x491
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x492
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF790
	.long	0x4432
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12866
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x71
	.uleb128 0x2c
	.long	0x4312
	.uleb128 0x35
	.byte	0x1
	.long	.LASF854
	.byte	0x2
	.value	0x49c
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35
	.long	.LLST32
	.long	0x4478
	.uleb128 0x33
	.long	.LASF850
	.byte	0x2
	.value	0x49c
	.long	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF824
	.byte	0x2
	.value	0x49c
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.long	.LASF855
	.byte	0x2
	.value	0x4a1
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36
	.long	.LLST33
	.uleb128 0x39
	.byte	0x1
	.long	.LASF856
	.byte	0x2
	.value	0x4ad
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37
	.long	.LLST34
	.uleb128 0x3a
	.long	.LASF857
	.byte	0xa
	.byte	0x93
	.long	0x67b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF858
	.byte	0xe
	.value	0x1d0
	.long	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xc8a
	.long	0x44df
	.uleb128 0xb
	.long	0xd6
	.byte	0x26
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF859
	.byte	0x2
	.byte	0x30
	.long	0x44f5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	dmu_ot
	.uleb128 0x2c
	.long	0x44cf
	.uleb128 0x3a
	.long	.LASF860
	.byte	0x2b
	.byte	0x33
	.long	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x5f
	.long	0x4517
	.uleb128 0xb
	.long	0xd6
	.byte	0x9
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF861
	.byte	0x21
	.byte	0xbe
	.long	0x4507
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF862
	.byte	0x23
	.byte	0x25
	.long	0x95
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
	.uleb128 0x4
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
	.uleb128 0x8
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x17
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x28
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x288
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4532
	.long	0x2c75
	.string	"dmu_buf_hold"
	.long	0x2d4a
	.string	"dmu_bonus_max"
	.long	0x2d6b
	.string	"dmu_set_bonus"
	.long	0x2dc6
	.string	"dmu_bonus_hold"
	.long	0x3119
	.string	"dmu_buf_hold_array_by_bonus"
	.long	0x31c9
	.string	"dmu_buf_rele_array"
	.long	0x3235
	.string	"dmu_prefetch"
	.long	0x35c3
	.string	"dmu_free_long_range"
	.long	0x365d
	.string	"dmu_free_object"
	.long	0x36e5
	.string	"dmu_free_range"
	.long	0x37a7
	.string	"dmu_read"
	.long	0x3923
	.string	"dmu_write"
	.long	0x3a4f
	.string	"dmu_read_uio"
	.long	0x3b53
	.string	"dmu_write_uio"
	.long	0x3d1d
	.string	"dmu_sync"
	.long	0x3e81
	.string	"dmu_object_set_blocksize"
	.long	0x3f2a
	.string	"dmu_object_set_checksum"
	.long	0x3fd9
	.string	"dmu_object_set_compress"
	.long	0x4078
	.string	"dmu_offset_next"
	.long	0x411f
	.string	"dmu_object_info_from_dnode"
	.long	0x4165
	.string	"dmu_object_info"
	.long	0x41ef
	.string	"dmu_object_info_from_db"
	.long	0x422f
	.string	"dmu_object_size_from_db"
	.long	0x4292
	.string	"byteswap_uint64_array"
	.long	0x4327
	.string	"byteswap_uint32_array"
	.long	0x43ac
	.string	"byteswap_uint16_array"
	.long	0x4437
	.string	"byteswap_uint8_array"
	.long	0x4478
	.string	"dmu_init"
	.long	0x4496
	.string	"dmu_fini"
	.long	0x44df
	.string	"dmu_ot"
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF323:
	.string	"th_cpu"
.LASF362:
	.string	"ZIO_STAGE_WAIT_FOR_CHILDREN_READY"
.LASF344:
	.string	"tx_sync_more_cv"
.LASF460:
	.string	"io_dk_callback"
.LASF22:
	.string	"size_t"
.LASF731:
	.string	"ds_creation_time"
.LASF697:
	.string	"os_type"
.LASF428:
	.string	"io_bp_copy"
.LASF825:
	.string	"dmu_read"
.LASF626:
	.string	"txh_space_tofree"
.LASF799:
	.string	"start"
.LASF36:
	.string	"__kind"
.LASF282:
	.string	"kcondvar_t"
.LASF445:
	.string	"io_offset"
.LASF784:
	.string	"dmu_buf_hold"
.LASF715:
	.string	"bpl_blockshift"
.LASF192:
	.string	"DMU_OT_SPA_HISTORY_OFFSETS"
.LASF491:
	.string	"zf_stream_cnt"
.LASF50:
	.string	"pthread_cond_t"
.LASF512:
	.string	"dn_next_nlevels"
.LASF778:
	.string	"KSID_COUNT"
.LASF852:
	.string	"byteswap_uint32_array"
.LASF703:
	.string	"bpl_bytes"
.LASF19:
	.string	"__ssize_t"
.LASF247:
	.string	"ds_synced_link"
.LASF497:
	.string	"dn_object"
.LASF625:
	.string	"txh_space_towrite"
.LASF144:
	.string	"tx_space_tooverwrite"
.LASF300:
	.string	"ZIO_TYPE_WRITE"
.LASF140:
	.string	"tx_anyobj"
.LASF858:
	.string	"zfs_prefetch_disable"
.LASF526:
	.string	"dn_tx_holds"
.LASF741:
	.string	"ds_next_clones_obj"
.LASF255:
	.string	"ds_opening_lock"
.LASF30:
	.string	"__pthread_list_t"
.LASF728:
	.string	"ds_next_snap_obj"
.LASF519:
	.string	"dn_ranges"
.LASF82:
	.string	"_IO_save_end"
.LASF531:
	.string	"dn_zio"
.LASF290:
	.string	"list_head"
.LASF115:
	.string	"_uio_offset"
.LASF609:
	.string	"dp_scrub_max_txg"
.LASF394:
	.string	"ZIO_CHECKSUM_OFF"
.LASF669:
	.string	"DR_NOT_OVERRIDDEN"
.LASF583:
	.string	"db_link"
.LASF789:
	.string	"__func__"
.LASF118:
	.string	"uio_extflg"
.LASF466:
	.string	"io_orig_pipeline"
.LASF501:
	.string	"dn_bonuslen"
.LASF619:
	.string	"dp_sync_tasks"
.LASF680:
	.string	"dbuf_dirty_record"
.LASF102:
	.string	"hrtime_t"
.LASF149:
	.string	"dsl_dir"
.LASF721:
	.string	"bpl_cached_dbuf"
.LASF747:
	.string	"SCRUB_FUNC_CLEAN"
.LASF380:
	.string	"ZIO_STAGE_CHECKSUM_VERIFY"
.LASF39:
	.string	"__data"
.LASF588:
	.string	"db_freed_in_flight"
.LASF327:
	.string	"tn_next"
.LASF537:
	.string	"dnode_phys"
.LASF204:
	.string	"db_object"
.LASF655:
	.string	"wp_level"
.LASF28:
	.string	"__prev"
.LASF686:
	.string	"dr_parent"
.LASF353:
	.string	"tx_quiesce_thread"
.LASF403:
	.string	"ZIO_COMPRESS_INHERIT"
.LASF145:
	.string	"tx_space_tounref"
.LASF91:
	.string	"_lock"
.LASF836:
	.string	"zio_flags"
.LASF857:
	.string	"stderr"
.LASF160:
	.string	"dd_myname"
.LASF691:
	.string	"zh_replay_seq"
.LASF690:
	.string	"zh_claim_txg"
.LASF816:
	.string	"dmu_free_long_range_impl"
.LASF27:
	.string	"__pthread_internal_list"
.LASF453:
	.string	"io_flags"
.LASF180:
	.string	"DMU_OT_OLDACL"
.LASF80:
	.string	"_IO_save_base"
.LASF238:
	.string	"ds_dir"
.LASF636:
	.string	"THT_WRITE"
.LASF652:
	.string	"writeprops"
.LASF34:
	.string	"__owner"
.LASF388:
	.string	"zt_size"
.LASF340:
	.string	"tx_syncing_txg"
.LASF787:
	.string	"dmu_bonus_hold"
.LASF437:
	.string	"io_private"
.LASF348:
	.string	"tx_timeout_cv"
.LASF237:
	.string	"dsl_dataset"
.LASF220:
	.string	"doi_physical_blks"
.LASF723:
	.string	"dsl_dataset_evict_func_t"
.LASF456:
	.string	"io_stage"
.LASF566:
	.string	"os_user_ptr_lock"
.LASF217:
	.string	"doi_checksum"
.LASF409:
	.string	"ZIO_COMPRESS_GZIP_2"
.LASF410:
	.string	"ZIO_COMPRESS_GZIP_3"
.LASF88:
	.string	"_cur_column"
.LASF45:
	.string	"__wakeup_seq"
.LASF693:
	.string	"zh_claim_seq"
.LASF244:
	.string	"ds_origin_txg"
.LASF700:
	.string	"objset_impl_t"
.LASF507:
	.string	"dn_indblkshift"
.LASF470:
	.string	"io_lock"
.LASF376:
	.string	"ZIO_STAGE_VDEV_IO_START"
.LASF677:
	.string	"dr_data"
.LASF804:
	.string	"numbufs"
.LASF586:
	.string	"db_evict_func"
.LASF156:
	.string	"dd_lock"
.LASF225:
	.string	"ot_byteswap"
.LASF811:
	.string	"initial_offset"
.LASF656:
	.string	"wp_dncompress"
.LASF302:
	.string	"ZIO_TYPE_CLAIM"
.LASF730:
	.string	"ds_num_children"
.LASF482:
	.string	"rc_list"
.LASF337:
	.string	"tx_suspend"
.LASF259:
	.string	"avl_node"
.LASF658:
	.string	"wp_dnchecksum"
.LASF802:
	.string	"dmu_buf_hold_array_by_bonus"
.LASF716:
	.string	"bpl_bpshift"
.LASF486:
	.string	"refcount_t"
.LASF775:
	.string	"KSID_USER"
.LASF268:
	.string	"avl_numnodes"
.LASF211:
	.string	"doi_data_block_size"
.LASF13:
	.string	"long int"
.LASF358:
	.string	"dkc_cookie"
.LASF559:
	.string	"os_obj_lock"
.LASF762:
	.string	"dd_child_dir_zapobj"
.LASF426:
	.string	"io_txg"
.LASF271:
	.string	"avl_node_t"
.LASF808:
	.string	"limit"
.LASF585:
	.string	"db_user_data_ptr_ptr"
.LASF63:
	.string	"B_TRUE"
.LASF635:
	.string	"THT_NEWOBJECT"
.LASF467:
	.string	"io_children_notready"
.LASF98:
	.string	"_IO_marker"
.LASF64:
	.string	"boolean_t"
.LASF618:
	.string	"dp_dirty_dirs"
.LASF840:
	.string	"dmu_object_set_compress"
.LASF608:
	.string	"dp_scrub_min_txg"
.LASF55:
	.string	"__nr_writers_queued"
.LASF521:
	.string	"dn_free_txg"
.LASF553:
	.string	"os_copies"
.LASF8:
	.string	"short unsigned int"
.LASF442:
	.string	"io_failed_vds"
.LASF175:
	.string	"DMU_OT_DSL_DIR_CHILD_MAP"
.LASF269:
	.string	"avl_size"
.LASF718:
	.string	"bpl_queue"
.LASF793:
	.string	"length"
.LASF246:
	.string	"ds_dirty_link"
.LASF788:
	.string	"error"
.LASF342:
	.string	"tx_sync_txg_waiting"
.LASF729:
	.string	"ds_snapnames_zapobj"
.LASF498:
	.string	"dn_dbuf"
.LASF139:
	.string	"tx_needassign_txh"
.LASF733:
	.string	"ds_deadlist_obj"
.LASF401:
	.string	"ZIO_CHECKSUM_FUNCTIONS"
.LASF612:
	.string	"dp_scrub_isresilver"
.LASF623:
	.string	"txh_node"
.LASF40:
	.string	"__size"
.LASF508:
	.string	"dn_datablkshift"
.LASF518:
	.string	"dn_dirty_records"
.LASF284:
	.string	"list_node"
.LASF661:
	.string	"dbuf_states"
.LASF35:
	.string	"__nusers"
.LASF724:
	.string	"dsl_dataset_phys"
.LASF66:
	.string	"longlong_t"
.LASF267:
	.string	"avl_offset"
.LASF328:
	.string	"tn_member"
.LASF117:
	.string	"uio_fmode"
.LASF293:
	.string	"zfs_cache_type"
.LASF610:
	.string	"dp_scrub_bookmark"
.LASF373:
	.string	"ZIO_STAGE_DVA_CLAIM"
.LASF138:
	.string	"tx_tempreserve_cookie"
.LASF829:
	.string	"bufoff"
.LASF440:
	.string	"io_size"
.LASF654:
	.string	"wp_copies"
.LASF162:
	.string	"DMU_OT_NONE"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"uint8_t"
.LASF483:
	.string	"rc_removed"
.LASF197:
	.string	"DMU_OT_FUID"
.LASF420:
	.string	"io_root"
.LASF153:
	.string	"dd_pool"
.LASF70:
	.string	"_IO_FILE"
.LASF260:
	.string	"avl_child"
.LASF717:
	.string	"bpl_havecomp"
.LASF107:
	.string	"boolean"
.LASF11:
	.string	"uint64_t"
.LASF704:
	.string	"bpl_comp"
.LASF790:
	.string	"__PRETTY_FUNCTION__"
.LASF611:
	.string	"dp_scrub_pausing"
.LASF299:
	.string	"ZIO_TYPE_READ"
.LASF668:
	.string	"override_states"
.LASF31:
	.string	"__pthread_mutex_s"
.LASF316:
	.string	"tx_cpu_t"
.LASF452:
	.string	"io_delegate_next"
.LASF325:
	.string	"txg_handle_t"
.LASF599:
	.string	"dp_synced_datasets"
.LASF449:
	.string	"io_deadline_node"
.LASF582:
	.string	"db_last_dirty"
.LASF6:
	.string	"unsigned char"
.LASF288:
	.string	"list_size"
.LASF37:
	.string	"__spins"
.LASF758:
	.string	"dd_creation_time"
.LASF711:
	.string	"bplist"
.LASF647:
	.string	"b_next"
.LASF648:
	.string	"b_data"
.LASF266:
	.string	"avl_compar"
.LASF336:
	.string	"tx_sync_lock"
.LASF653:
	.string	"wp_type"
.LASF359:
	.string	"dkc_flag"
.LASF315:
	.string	"blkptr_t"
.LASF249:
	.string	"ds_user_ptr"
.LASF552:
	.string	"os_compress"
.LASF190:
	.string	"DMU_OT_ERROR_LOG"
.LASF571:
	.string	"db_parent"
.LASF743:
	.string	"ds_pad"
.LASF126:
	.string	"objset"
.LASF432:
	.string	"io_transform_stack"
.LASF371:
	.string	"ZIO_STAGE_DVA_ALLOCATE"
.LASF814:
	.string	"__right"
.LASF493:
	.string	"dnode"
.LASF499:
	.string	"dn_phys"
.LASF189:
	.string	"DMU_OT_ZAP_OTHER"
.LASF172:
	.string	"DMU_OT_DNODE"
.LASF621:
	.string	"dmu_tx_hold"
.LASF578:
	.string	"db_holds"
.LASF509:
	.string	"dn_datablkszsec"
.LASF433:
	.string	"io_logical"
.LASF279:
	.string	"rw_owner"
.LASF568:
	.string	"dmu_buf_impl"
.LASF411:
	.string	"ZIO_COMPRESS_GZIP_4"
.LASF613:
	.string	"dp_scrub_start_time"
.LASF607:
	.string	"dp_scrub_queue_obj"
.LASF343:
	.string	"tx_quiesce_txg_waiting"
.LASF522:
	.string	"dn_assigned_txg"
.LASF627:
	.string	"txh_space_tooverwrite"
.LASF245:
	.string	"ds_deadlist"
.LASF580:
	.string	"db_changed"
.LASF207:
	.string	"db_data"
.LASF157:
	.string	"dd_prop_cbs"
.LASF416:
	.string	"ZIO_COMPRESS_GZIP_9"
.LASF322:
	.string	"txg_handle"
.LASF419:
	.string	"io_parent"
.LASF20:
	.string	"char"
.LASF591:
	.string	"dsl_pool"
.LASF665:
	.string	"DB_CACHED"
.LASF224:
	.string	"dmu_object_type_info"
.LASF774:
	.string	"ksid_index"
.LASF748:
	.string	"SCRUB_FUNC_NUMFUNCS"
.LASF477:
	.string	"zb_level"
.LASF780:
	.string	"dmu_sync_arg_t"
.LASF352:
	.string	"tx_sync_thread"
.LASF725:
	.string	"ds_dir_obj"
.LASF166:
	.string	"DMU_OT_PACKED_NVLIST_SIZE"
.LASF120:
	.string	"uio_resid"
.LASF125:
	.string	"objset_t"
.LASF817:
	.string	"free_dnode"
.LASF866:
	.string	"_IO_lock_t"
.LASF141:
	.string	"tx_err"
.LASF248:
	.string	"ds_lock"
.LASF274:
	.string	"m_lock"
.LASF769:
	.string	"dd_deleg_zapobj"
.LASF187:
	.string	"DMU_OT_PLAIN_OTHER"
.LASF208:
	.string	"dmu_buf_t"
.LASF12:
	.string	"long long unsigned int"
.LASF317:
	.string	"tx_cpu"
.LASF84:
	.string	"_chain"
.LASF632:
	.string	"txh_arg1"
.LASF707:
	.string	"bplist_q"
.LASF722:
	.string	"bplist_t"
.LASF554:
	.string	"os_primary_cache"
.LASF321:
	.string	"tc_pad"
.LASF757:
	.string	"dsl_dir_phys"
.LASF429:
	.string	"io_child"
.LASF759:
	.string	"dd_head_dataset_obj"
.LASF798:
	.string	"flags"
.LASF595:
	.string	"dp_mos_dir"
.LASF310:
	.string	"dva_word"
.LASF573:
	.string	"db_blkid"
.LASF233:
	.string	"blk_pad"
.LASF72:
	.string	"_IO_read_ptr"
.LASF698:
	.string	"os_pad"
.LASF203:
	.string	"dmu_buf"
.LASF575:
	.string	"db_level"
.LASF318:
	.string	"tc_lock"
.LASF545:
	.string	"os_dsl_dataset"
.LASF378:
	.string	"ZIO_STAGE_VDEV_IO_ASSESS"
.LASF538:
	.string	"dn_flags"
.LASF232:
	.string	"blk_prop"
.LASF334:
	.string	"txg_list_t"
.LASF355:
	.string	"tx_state_t"
.LASF101:
	.string	"_pos"
.LASF222:
	.string	"dmu_object_info_t"
.LASF837:
	.string	"dmu_object_set_blocksize"
.LASF49:
	.string	"__broadcast_seq"
.LASF859:
	.string	"dmu_ot"
.LASF833:
	.string	"varg"
.LASF169:
	.string	"DMU_OT_SPACE_MAP_HEADER"
.LASF534:
	.string	"DN_UNDIRTIED"
.LASF528:
	.string	"dn_dbufs_mtx"
.LASF83:
	.string	"_markers"
.LASF329:
	.string	"txg_node_t"
.LASF150:
	.string	"dd_object"
.LASF706:
	.string	"bplist_phys_t"
.LASF796:
	.string	"dbpp"
.LASF67:
	.string	"u_longlong_t"
.LASF673:
	.string	"dirty_indirect"
.LASF121:
	.string	"uio_t"
.LASF116:
	.string	"uio_segflg"
.LASF605:
	.string	"dp_tempreserved"
.LASF235:
	.string	"blk_fill"
.LASF250:
	.string	"ds_user_evict_func"
.LASF746:
	.string	"SCRUB_FUNC_NONE"
.LASF345:
	.string	"tx_sync_done_cv"
.LASF167:
	.string	"DMU_OT_BPLIST"
.LASF350:
	.string	"tx_threads"
.LASF226:
	.string	"ot_metadata"
.LASF243:
	.string	"ds_prev"
.LASF446:
	.string	"io_deadline"
.LASF781:
	.string	"object"
.LASF263:
	.string	"avl_balance"
.LASF720:
	.string	"bpl_dbuf"
.LASF551:
	.string	"os_checksum"
.LASF494:
	.string	"dn_struct_rwlock"
.LASF826:
	.string	"newsz"
.LASF461:
	.string	"io_cmd"
.LASF254:
	.string	"ds_trysnap_txg"
.LASF556:
	.string	"os_synctx"
.LASF856:
	.string	"dmu_fini"
.LASF173:
	.string	"DMU_OT_OBJSET"
.LASF112:
	.string	"uio_seg_t"
.LASF305:
	.string	"spa_t"
.LASF642:
	.string	"arc_buf_hdr_t"
.LASF32:
	.string	"__lock"
.LASF795:
	.string	"numbufsp"
.LASF473:
	.string	"zio_done_func_t"
.LASF319:
	.string	"tc_cv"
.LASF384:
	.string	"ZIO_STAGE_DONE"
.LASF617:
	.string	"dp_dirty_datasets"
.LASF215:
	.string	"doi_bonus_type"
.LASF448:
	.string	"io_offset_node"
.LASF60:
	.string	"__flags"
.LASF375:
	.string	"ZIO_STAGE_READY"
.LASF92:
	.string	"_offset"
.LASF347:
	.string	"tx_quiesce_done_cv"
.LASF205:
	.string	"db_offset"
.LASF354:
	.string	"tx_timelimit_thread"
.LASF398:
	.string	"ZIO_CHECKSUM_FLETCHER_2"
.LASF351:
	.string	"tx_exiting"
.LASF79:
	.string	"_IO_buf_end"
.LASF800:
	.string	"blkshift"
.LASF444:
	.string	"io_vsd"
.LASF768:
	.string	"dd_props_zapobj"
.LASF435:
	.string	"io_ready"
.LASF505:
	.string	"dn_compress"
.LASF216:
	.string	"doi_indirection"
.LASF223:
	.string	"arc_byteswap_func_t"
.LASF514:
	.string	"dn_next_bonuslen"
.LASF218:
	.string	"doi_compress"
.LASF832:
	.string	"dmu_write_uio"
.LASF143:
	.string	"tx_space_tofree"
.LASF262:
	.string	"avl_child_index"
.LASF312:
	.string	"zio_cksum"
.LASF311:
	.string	"dva_t"
.LASF469:
	.string	"io_waiter"
.LASF861:
	.string	"zio_priority_table"
.LASF164:
	.string	"DMU_OT_OBJECT_ARRAY"
.LASF495:
	.string	"dn_link"
.LASF853:
	.string	"byteswap_uint16_array"
.LASF763:
	.string	"dd_used_bytes"
.LASF228:
	.string	"dmu_object_type_info_t"
.LASF14:
	.string	"long unsigned int"
.LASF123:
	.string	"UIO_READ"
.LASF756:
	.string	"DD_USED_NUM"
.LASF630:
	.string	"txh_fudge"
.LASF643:
	.string	"arc_buf_hdr"
.LASF562:
	.string	"os_dirty_dnodes"
.LASF381:
	.string	"ZIO_STAGE_READ_GANG_MEMBERS"
.LASF488:
	.string	"zf_rwlock"
.LASF109:
	.string	"UIO_USERSPACE"
.LASF25:
	.string	"pthread_t"
.LASF86:
	.string	"_flags2"
.LASF122:
	.string	"uio_rw"
.LASF742:
	.string	"ds_props_obj"
.LASF674:
	.string	"dr_mtx"
.LASF74:
	.string	"_IO_read_base"
.LASF21:
	.string	"ssize_t"
.LASF712:
	.string	"bpl_lock"
.LASF68:
	.string	"offset_t"
.LASF805:
	.string	"dmu_buf_rele_array"
.LASF234:
	.string	"blk_birth"
.LASF185:
	.string	"DMU_OT_ZVOL"
.LASF791:
	.string	"gethrtime"
.LASF714:
	.string	"bpl_object"
.LASF365:
	.string	"ZIO_STAGE_WRITE_COMPRESS"
.LASF436:
	.string	"io_done"
.LASF261:
	.string	"avl_parent"
.LASF97:
	.string	"_unused2"
.LASF379:
	.string	"ZIO_STAGE_WAIT_FOR_CHILDREN_DONE"
.LASF15:
	.string	"__quad_t"
.LASF555:
	.string	"os_secondary_cache"
.LASF46:
	.string	"__woken_seq"
.LASF281:
	.string	"krwlock_t"
.LASF105:
	.string	"iov_len"
.LASF807:
	.string	"get_next_chunk"
.LASF760:
	.string	"dd_parent_obj"
.LASF539:
	.string	"dn_pad2"
.LASF484:
	.string	"rc_count"
.LASF542:
	.string	"dn_blkptr"
.LASF803:
	.string	"dbp_fake"
.LASF813:
	.string	"__left"
.LASF142:
	.string	"tx_space_towrite"
.LASF151:
	.string	"dd_phys"
.LASF131:
	.string	"tx_objset"
.LASF87:
	.string	"_old_offset"
.LASF572:
	.string	"db_hash_next"
.LASF280:
	.string	"rw_lock"
.LASF749:
	.string	"dsl_pool_t"
.LASF370:
	.string	"ZIO_STAGE_CLAIM_GANG_MEMBERS"
.LASF251:
	.string	"ds_rwlock"
.LASF462:
	.string	"io_retries"
.LASF301:
	.string	"ZIO_TYPE_FREE"
.LASF106:
	.string	"iovec_t"
.LASF541:
	.string	"dn_pad3"
.LASF815:
	.string	"__buf"
.LASF510:
	.string	"dn_datablksz"
.LASF303:
	.string	"ZIO_TYPE_IOCTL"
.LASF54:
	.string	"__nr_readers_queued"
.LASF465:
	.string	"io_pipeline"
.LASF535:
	.string	"DN_DIRTY_OPEN"
.LASF386:
	.string	"zio_transform"
.LASF309:
	.string	"zilog"
.LASF502:
	.string	"dn_bonustype"
.LASF603:
	.string	"dp_lock"
.LASF137:
	.string	"tx_txgh"
.LASF849:
	.string	"byteswap_uint64_array"
.LASF129:
	.string	"dmu_tx"
.LASF199:
	.string	"DMU_OT_NEXT_CLONES"
.LASF4:
	.string	"long long int"
.LASF377:
	.string	"ZIO_STAGE_VDEV_IO_DONE"
.LASF777:
	.string	"KSID_OWNER"
.LASF431:
	.string	"io_sibling_next"
.LASF51:
	.string	"__nr_readers"
.LASF736:
	.string	"ds_uncompressed_bytes"
.LASF574:
	.string	"db_blkptr"
.LASF253:
	.string	"ds_owner"
.LASF356:
	.string	"dk_callback"
.LASF134:
	.string	"tx_txg"
.LASF517:
	.string	"dn_mtx"
.LASF399:
	.string	"ZIO_CHECKSUM_FLETCHER_4"
.LASF278:
	.string	"thr_count"
.LASF174:
	.string	"DMU_OT_DSL_DIR"
.LASF848:
	.string	"nblk512"
.LASF272:
	.string	"kmutex"
.LASF307:
	.string	"vdev"
.LASF504:
	.string	"dn_checksum"
.LASF154:
	.string	"dd_dirty_link"
.LASF210:
	.string	"dmu_object_info"
.LASF155:
	.string	"dd_parent"
.LASF546:
	.string	"os_spa"
.LASF480:
	.string	"refcount"
.LASF364:
	.string	"ZIO_STAGE_ISSUE_ASYNC"
.LASF454:
	.string	"io_orig_flags"
.LASF772:
	.string	"dd_pad"
.LASF77:
	.string	"_IO_write_end"
.LASF265:
	.string	"avl_root"
.LASF236:
	.string	"blk_cksum"
.LASF108:
	.string	"uio_seg"
.LASF513:
	.string	"dn_next_indblkshift"
.LASF640:
	.string	"THT_SPACE"
.LASF561:
	.string	"os_lock"
.LASF516:
	.string	"dn_dirty_link"
.LASF581:
	.string	"db_data_pending"
.LASF241:
	.string	"ds_object"
.LASF270:
	.string	"avl_tree_t"
.LASF346:
	.string	"tx_quiesce_more_cv"
.LASF252:
	.string	"ds_exclusive_cv"
.LASF198:
	.string	"DMU_OT_FUID_SIZE"
.LASF738:
	.string	"ds_guid"
.LASF670:
	.string	"DR_IN_DMU_SYNC"
.LASF457:
	.string	"io_orig_stage"
.LASF292:
	.string	"list_t"
.LASF745:
	.string	"scrub_func"
.LASF750:
	.string	"dd_used"
.LASF412:
	.string	"ZIO_COMPRESS_GZIP_5"
.LASF755:
	.string	"DD_USED_REFRSRV"
.LASF374:
	.string	"ZIO_STAGE_GANG_CHECKSUM_GENERATE"
.LASF841:
	.string	"compress"
.LASF851:
	.string	"count"
.LASF256:
	.string	"ds_reserved"
.LASF855:
	.string	"dmu_init"
.LASF407:
	.string	"ZIO_COMPRESS_EMPTY"
.LASF753:
	.string	"DD_USED_CHILD"
.LASF794:
	.string	"read"
.LASF78:
	.string	"_IO_buf_base"
.LASF423:
	.string	"io_checksum"
.LASF99:
	.string	"_next"
.LASF843:
	.string	"hole"
.LASF854:
	.string	"byteswap_uint8_array"
.LASF547:
	.string	"os_phys_buf"
.LASF430:
	.string	"io_sibling_prev"
.LASF42:
	.string	"pthread_mutex_t"
.LASF188:
	.string	"DMU_OT_UINT64_OTHER"
.LASF596:
	.string	"dp_origin_snap"
.LASF326:
	.string	"txg_node"
.LASF485:
	.string	"rc_removed_count"
.LASF418:
	.string	"zio_t"
.LASF676:
	.string	"dirty_leaf"
.LASF181:
	.string	"DMU_OT_PLAIN_FILE_CONTENTS"
.LASF450:
	.string	"io_vdev_tree"
.LASF406:
	.string	"ZIO_COMPRESS_LZJB"
.LASF52:
	.string	"__readers_wakeup"
.LASF58:
	.string	"__pad1"
.LASF59:
	.string	"__pad2"
.LASF93:
	.string	"__pad3"
.LASF94:
	.string	"__pad4"
.LASF95:
	.string	"__pad5"
.LASF734:
	.string	"ds_used_bytes"
.LASF660:
	.string	"writeprops_t"
.LASF100:
	.string	"_sbuf"
.LASF740:
	.string	"ds_bp"
.LASF119:
	.string	"_uio_limit"
.LASF634:
	.string	"dmu_tx_hold_type"
.LASF111:
	.string	"UIO_USERISPACE"
.LASF240:
	.string	"ds_dbuf"
.LASF754:
	.string	"DD_USED_CHILD_RSRV"
.LASF864:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/dmu.c"
.LASF191:
	.string	"DMU_OT_SPA_HISTORY"
.LASF385:
	.string	"zio_transform_t"
.LASF550:
	.string	"os_zil"
.LASF10:
	.string	"unsigned int"
.LASF598:
	.string	"dp_meta_rootbp"
.LASF708:
	.string	"bpq_blk"
.LASF75:
	.string	"_IO_write_base"
.LASF806:
	.string	"dmu_prefetch"
.LASF71:
	.string	"_flags"
.LASF455:
	.string	"io_type"
.LASF702:
	.string	"bpl_entries"
.LASF779:
	.string	"done"
.LASF287:
	.string	"list"
.LASF679:
	.string	"dr_override_state"
.LASF47:
	.string	"__mutex"
.LASF536:
	.string	"DN_DIRTY_SYNC"
.LASF367:
	.string	"ZIO_STAGE_GET_GANG_HEADER"
.LASF96:
	.string	"_mode"
.LASF62:
	.string	"B_FALSE"
.LASF161:
	.string	"dmu_object_type"
.LASF822:
	.string	"dmu_free_object"
.LASF735:
	.string	"ds_compressed_bytes"
.LASF33:
	.string	"__count"
.LASF651:
	.string	"arc_evict_func_t"
.LASF349:
	.string	"tx_exit_cv"
.LASF631:
	.string	"txh_type"
.LASF639:
	.string	"THT_ZAP"
.LASF850:
	.string	"vbuf"
.LASF335:
	.string	"tx_state"
.LASF765:
	.string	"dd_uncompressed_bytes"
.LASF821:
	.string	"dmu_free_long_range"
.LASF152:
	.string	"dd_dbuf"
.LASF184:
	.string	"DMU_OT_UNLINKED_SET"
.LASF557:
	.string	"os_rootbp"
.LASF838:
	.string	"dmu_object_set_checksum"
.LASF434:
	.string	"zio_link_node"
.LASF744:
	.string	"dsl_dataset_phys_t"
.LASF147:
	.string	"tx_space_freed"
.LASF314:
	.string	"zio_cksum_t"
.LASF628:
	.string	"txh_space_tounref"
.LASF424:
	.string	"io_compress"
.LASF604:
	.string	"dp_space_towrite"
.LASF294:
	.string	"ZFS_CACHE_NONE"
.LASF672:
	.string	"override_states_t"
.LASF570:
	.string	"db_dnode"
.LASF170:
	.string	"DMU_OT_SPACE_MAP"
.LASF667:
	.string	"dbuf_states_t"
.LASF644:
	.string	"arc_buf_t"
.LASF297:
	.string	"zio_type"
.LASF659:
	.string	"wp_oschecksum"
.LASF533:
	.string	"dnode_dirtycontext"
.LASF53:
	.string	"__writer_wakeup"
.LASF201:
	.string	"DMU_OT_NUMTYPES"
.LASF727:
	.string	"ds_prev_snap_txg"
.LASF227:
	.string	"ot_name"
.LASF616:
	.string	"dp_tx"
.LASF839:
	.string	"checksum"
.LASF209:
	.string	"dmu_buf_evict_func_t"
.LASF65:
	.string	"ulong_t"
.LASF182:
	.string	"DMU_OT_DIRECTORY_CONTENTS"
.LASF26:
	.string	"timespec"
.LASF601:
	.string	"dp_throughput"
.LASF646:
	.string	"b_hdr"
.LASF540:
	.string	"dn_used"
.LASF372:
	.string	"ZIO_STAGE_DVA_FREE"
.LASF868:
	.string	"dmu_bonus_max"
.LASF29:
	.string	"__next"
.LASF276:
	.string	"krwlock"
.LASF828:
	.string	"tocpy"
.LASF645:
	.string	"arc_buf"
.LASF296:
	.string	"ZFS_CACHE_ALL"
.LASF844:
	.string	"dmu_object_info_from_dnode"
.LASF402:
	.string	"zio_compress"
.LASF395:
	.string	"ZIO_CHECKSUM_LABEL"
.LASF683:
	.string	"dr_zio"
.LASF732:
	.string	"ds_creation_txg"
.LASF421:
	.string	"io_spa"
.LASF524:
	.string	"dn_dirtyctx"
.LASF824:
	.string	"size"
.LASF820:
	.string	"align"
.LASF622:
	.string	"txh_tx"
.LASF146:
	.string	"tx_space_written"
.LASF447:
	.string	"io_timestamp"
.LASF43:
	.string	"__futex"
.LASF38:
	.string	"__list"
.LASF692:
	.string	"zh_log"
.LASF178:
	.string	"DMU_OT_DSL_DATASET"
.LASF7:
	.string	"uint16_t"
.LASF441:
	.string	"io_vd"
.LASF16:
	.string	"__off_t"
.LASF492:
	.string	"zf_alloc_fail"
.LASF124:
	.string	"UIO_WRITE"
.LASF229:
	.string	"dmu_sync_cb_t"
.LASF176:
	.string	"DMU_OT_DSL_DS_SNAP_MAP"
.LASF543:
	.string	"dnode_phys_t"
.LASF163:
	.string	"DMU_OT_OBJECT_DIRECTORY"
.LASF390:
	.string	"zt_next"
.LASF592:
	.string	"dp_spa"
.LASF148:
	.string	"dsl_dir_t"
.LASF387:
	.string	"zt_data"
.LASF404:
	.string	"ZIO_COMPRESS_ON"
.LASF594:
	.string	"dp_root_dir"
.LASF56:
	.string	"__writer"
.LASF770:
	.string	"dd_flags"
.LASF114:
	.string	"uio_iovcnt"
.LASF579:
	.string	"db_buf"
.LASF812:
	.string	"delta"
.LASF478:
	.string	"zb_blkid"
.LASF458:
	.string	"io_stalled"
.LASF459:
	.string	"io_priority"
.LASF333:
	.string	"tl_head"
.LASF701:
	.string	"bplist_phys"
.LASF830:
	.string	"dmu_write"
.LASF764:
	.string	"dd_compressed_bytes"
.LASF606:
	.string	"dp_scrub_func"
.LASF587:
	.string	"db_immediate_evict"
.LASF705:
	.string	"bpl_uncomp"
.LASF200:
	.string	"DMU_OT_SCRUB_QUEUE"
.LASF520:
	.string	"dn_allocated_txg"
.LASF110:
	.string	"UIO_SYSSPACE"
.LASF685:
	.string	"dr_next"
.LASF320:
	.string	"tc_count"
.LASF158:
	.string	"dd_tempreserved"
.LASF304:
	.string	"ZIO_TYPES"
.LASF186:
	.string	"DMU_OT_ZVOL_PROP"
.LASF2:
	.string	"int32_t"
.LASF500:
	.string	"dn_type"
.LASF18:
	.string	"__time_t"
.LASF275:
	.string	"kmutex_t"
.LASF597:
	.string	"dp_root_dir_obj"
.LASF687:
	.string	"dbuf_dirty_record_t"
.LASF212:
	.string	"doi_metadata_block_size"
.LASF819:
	.string	"trunc"
.LASF81:
	.string	"_IO_backup_base"
.LASF530:
	.string	"dn_bonus"
.LASF90:
	.string	"_shortbuf"
.LASF564:
	.string	"os_dnodes"
.LASF332:
	.string	"tl_offset"
.LASF183:
	.string	"DMU_OT_MASTER_NODE"
.LASF159:
	.string	"dd_space_towrite"
.LASF752:
	.string	"DD_USED_SNAP"
.LASF417:
	.string	"ZIO_COMPRESS_FUNCTIONS"
.LASF624:
	.string	"txh_dnode"
.LASF44:
	.string	"__total_seq"
.LASF590:
	.string	"dnode_t"
.LASF688:
	.string	"dmu_buf_impl_t"
.LASF694:
	.string	"zh_pad"
.LASF196:
	.string	"DMU_OT_SYSACL"
.LASF396:
	.string	"ZIO_CHECKSUM_GANG_HEADER"
.LASF633:
	.string	"txh_arg2"
.LASF422:
	.string	"io_bookmark"
.LASF663:
	.string	"DB_FILL"
.LASF41:
	.string	"__align"
.LASF615:
	.string	"dp_scrub_restart"
.LASF17:
	.string	"__off64_t"
.LASF719:
	.string	"bpl_phys"
.LASF548:
	.string	"os_phys"
.LASF489:
	.string	"zf_stream"
.LASF306:
	.string	"vdev_t"
.LASF696:
	.string	"objset_phys"
.LASF231:
	.string	"blk_dva"
.LASF464:
	.string	"io_numerrors"
.LASF650:
	.string	"b_private"
.LASF523:
	.string	"dn_notxholds"
.LASF739:
	.string	"ds_flags"
.LASF103:
	.string	"iovec"
.LASF427:
	.string	"io_bp"
.LASF298:
	.string	"ZIO_TYPE_NULL"
.LASF230:
	.string	"blkptr"
.LASF368:
	.string	"ZIO_STAGE_REWRITE_GANG_MEMBERS"
.LASF132:
	.string	"tx_dir"
.LASF529:
	.string	"dn_dbufs"
.LASF620:
	.string	"dp_config_rwlock"
.LASF525:
	.string	"dn_dirtyctx_firstset"
.LASF766:
	.string	"dd_quota"
.LASF128:
	.string	"dmu_tx_t"
.LASF831:
	.string	"dmu_read_uio"
.LASF472:
	.string	"io_ena"
.LASF797:
	.string	"nblks"
.LASF391:
	.string	"zio_checksum"
.LASF695:
	.string	"zil_header_t"
.LASF713:
	.string	"bpl_mos"
.LASF357:
	.string	"dkc_callback"
.LASF264:
	.string	"avl_tree"
.LASF389:
	.string	"zt_bufsize"
.LASF273:
	.string	"m_owner"
.LASF785:
	.string	"dmu_set_bonus"
.LASF567:
	.string	"os_user_ptr"
.LASF641:
	.string	"THT_NUMTYPES"
.LASF689:
	.string	"zil_header"
.LASF699:
	.string	"objset_phys_t"
.LASF439:
	.string	"io_data"
.LASF593:
	.string	"dp_meta_objset"
.LASF195:
	.string	"DMU_OT_ACL"
.LASF1:
	.string	"short int"
.LASF737:
	.string	"ds_unique_bytes"
.LASF490:
	.string	"zf_dnode"
.LASF511:
	.string	"dn_maxblkid"
.LASF392:
	.string	"ZIO_CHECKSUM_INHERIT"
.LASF127:
	.string	"os_mode"
.LASF847:
	.string	"blksize"
.LASF475:
	.string	"zb_objset"
.LASF331:
	.string	"tl_lock"
.LASF681:
	.string	"dr_dirty_node"
.LASF865:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool"
.LASF24:
	.string	"tv_nsec"
.LASF506:
	.string	"dn_nlevels"
.LASF194:
	.string	"DMU_OT_DSL_PERMS"
.LASF393:
	.string	"ZIO_CHECKSUM_ON"
.LASF657:
	.string	"wp_oscompress"
.LASF860:
	.string	"zfs_flags"
.LASF285:
	.string	"list_next"
.LASF773:
	.string	"dsl_dir_phys_t"
.LASF560:
	.string	"os_obj_next"
.LASF338:
	.string	"tx_open_txg"
.LASF89:
	.string	"_vtable_offset"
.LASF179:
	.string	"DMU_OT_ZNODE"
.LASF425:
	.string	"io_ndvas"
.LASF638:
	.string	"THT_FREE"
.LASF286:
	.string	"list_prev"
.LASF709:
	.string	"bpq_next"
.LASF113:
	.string	"uio_iov"
.LASF678:
	.string	"dr_overridden_by"
.LASF330:
	.string	"txg_list"
.LASF360:
	.string	"zio_stage"
.LASF515:
	.string	"dn_next_blksz"
.LASF451:
	.string	"io_delegate_list"
.LASF471:
	.string	"io_cv"
.LASF468:
	.string	"io_children_notdone"
.LASF751:
	.string	"DD_USED_HEAD"
.LASF339:
	.string	"tx_quiesced_txg"
.LASF527:
	.string	"dn_holds"
.LASF242:
	.string	"ds_fsid_guid"
.LASF474:
	.string	"zbookmark"
.LASF221:
	.string	"doi_max_block_offset"
.LASF869:
	.string	"dmu_sync_done"
.LASF818:
	.string	"object_size"
.LASF257:
	.string	"ds_quota"
.LASF563:
	.string	"os_free_dnodes"
.LASF258:
	.string	"ds_snapname"
.LASF842:
	.string	"dmu_offset_next"
.LASF171:
	.string	"DMU_OT_INTENT_LOG"
.LASF809:
	.string	"chunk_len"
.LASF600:
	.string	"dp_read_overhead"
.LASF479:
	.string	"zbookmark_t"
.LASF664:
	.string	"DB_READ"
.LASF48:
	.string	"__nwaiters"
.LASF366:
	.string	"ZIO_STAGE_CHECKSUM_GENERATE"
.LASF637:
	.string	"THT_BONUS"
.LASF801:
	.string	"dmu_buf_hold_array"
.LASF400:
	.string	"ZIO_CHECKSUM_SHA256"
.LASF73:
	.string	"_IO_read_end"
.LASF219:
	.string	"doi_pad"
.LASF771:
	.string	"dd_used_breakdown"
.LASF629:
	.string	"txh_memory_tohold"
.LASF202:
	.string	"dmu_object_type_t"
.LASF177:
	.string	"DMU_OT_DSL_PROPS"
.LASF823:
	.string	"dmu_free_range"
.LASF397:
	.string	"ZIO_CHECKSUM_ZILOG"
.LASF767:
	.string	"dd_reserved"
.LASF9:
	.string	"uint32_t"
.LASF382:
	.string	"ZIO_STAGE_READ_DECOMPRESS"
.LASF369:
	.string	"ZIO_STAGE_FREE_GANG_MEMBERS"
.LASF361:
	.string	"ZIO_STAGE_OPEN"
.LASF576:
	.string	"db_mtx"
.LASF85:
	.string	"_fileno"
.LASF649:
	.string	"b_efunc"
.LASF363:
	.string	"ZIO_STAGE_READ_INIT"
.LASF405:
	.string	"ZIO_COMPRESS_OFF"
.LASF291:
	.string	"list_node_t"
.LASF602:
	.string	"dp_write_limit"
.LASF496:
	.string	"dn_objset"
.LASF383:
	.string	"ZIO_STAGE_ASSESS"
.LASF130:
	.string	"tx_holds"
.LASF135:
	.string	"tx_lastsnap_txg"
.LASF206:
	.string	"db_size"
.LASF846:
	.string	"dmu_object_size_from_db"
.LASF133:
	.string	"tx_pool"
.LASF675:
	.string	"dr_children"
.LASF845:
	.string	"dmu_object_info_from_db"
.LASF193:
	.string	"DMU_OT_POOL_PROPS"
.LASF786:
	.string	"newsize"
.LASF438:
	.string	"io_bp_orig"
.LASF168:
	.string	"DMU_OT_BPLIST_HDR"
.LASF341:
	.string	"tx_synced_txg"
.LASF726:
	.string	"ds_prev_snap_obj"
.LASF61:
	.string	"pthread_rwlock_t"
.LASF614:
	.string	"dp_scrub_cancel_lock"
.LASF443:
	.string	"io_failed_vds_count"
.LASF476:
	.string	"zb_object"
.LASF577:
	.string	"db_state"
.LASF827:
	.string	"mylen"
.LASF104:
	.string	"iov_base"
.LASF776:
	.string	"KSID_GROUP"
.LASF863:
	.string	"GNU C 4.4.3"
.LASF558:
	.string	"os_zil_header"
.LASF76:
	.string	"_IO_write_ptr"
.LASF165:
	.string	"DMU_OT_PACKED_NVLIST"
.LASF792:
	.string	"dmu_buf_hold_array_by_dnode"
.LASF549:
	.string	"os_meta_dnode"
.LASF862:
	.string	"zfetch_array_rd_sz"
.LASF810:
	.string	"subchunk"
.LASF544:
	.string	"objset_impl"
.LASF584:
	.string	"db_user_ptr"
.LASF565:
	.string	"os_downgraded_dbufs"
.LASF3:
	.string	"int64_t"
.LASF289:
	.string	"list_offset"
.LASF569:
	.string	"db_objset"
.LASF295:
	.string	"ZFS_CACHE_METADATA"
.LASF308:
	.string	"zilog_t"
.LASF682:
	.string	"dr_txg"
.LASF662:
	.string	"DB_UNCACHED"
.LASF463:
	.string	"io_error"
.LASF782:
	.string	"offset"
.LASF214:
	.string	"doi_type"
.LASF532:
	.string	"dn_zfetch"
.LASF867:
	.string	"dirty_types"
.LASF684:
	.string	"dr_dbuf"
.LASF69:
	.string	"lloff_t"
.LASF408:
	.string	"ZIO_COMPRESS_GZIP_1"
.LASF589:
	.string	"db_dirtycnt"
.LASF761:
	.string	"dd_origin_obj"
.LASF666:
	.string	"DB_EVICTING"
.LASF487:
	.string	"zfetch"
.LASF413:
	.string	"ZIO_COMPRESS_GZIP_6"
.LASF414:
	.string	"ZIO_COMPRESS_GZIP_7"
.LASF415:
	.string	"ZIO_COMPRESS_GZIP_8"
.LASF834:
	.string	"dmu_sync"
.LASF213:
	.string	"doi_bonus_size"
.LASF313:
	.string	"zc_word"
.LASF57:
	.string	"__shared"
.LASF835:
	.string	"db_fake"
.LASF324:
	.string	"th_txg"
.LASF23:
	.string	"tv_sec"
.LASF277:
	.string	"mutex"
.LASF710:
	.string	"bplist_q_t"
.LASF481:
	.string	"rc_mtx"
.LASF136:
	.string	"tx_lasttried_txg"
.LASF503:
	.string	"dn_nblkptr"
.LASF239:
	.string	"ds_phys"
.LASF671:
	.string	"DR_OVERRIDDEN"
.LASF283:
	.string	"kthread_t"
.LASF783:
	.string	"blkid"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
