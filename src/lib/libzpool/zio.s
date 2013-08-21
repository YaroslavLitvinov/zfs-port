	.file	"zio.c"
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
	.file 1 "../../lib/libsolcompat/include/sys/time.h"
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
.globl zio_priority_table
	.data
	.type	zio_priority_table, @object
	.size	zio_priority_table, 10
zio_priority_table:
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	10
	.byte	20
.globl zio_type_name
	.section	.rodata
.LC3:
	.string	"null"
.LC4:
	.string	"read"
.LC5:
	.string	"write"
.LC6:
	.string	"free"
.LC7:
	.string	"claim"
.LC8:
	.string	"ioctl"
	.data
	.align 16
	.type	zio_type_name, @object
	.size	zio_type_name, 24
zio_type_name:
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
.globl zio_zil_fail_shift
	.bss
	.align 2
	.type	zio_zil_fail_shift, @object
	.size	zio_zil_fail_shift, 2
zio_zil_fail_shift:
	.zero	2
.globl zio_io_fail_shift
	.align 2
	.type	zio_io_fail_shift, @object
	.size	zio_io_fail_shift, 2
zio_io_fail_shift:
	.zero	2
.globl zio_write_retry
	.data
	.align 4
	.type	zio_write_retry, @object
	.size	zio_write_retry, 4
zio_write_retry:
	.long	1
	.comm	zio_taskq,4,4
.globl zio_resume_threads
	.align 4
	.type	zio_resume_threads, @object
	.size	zio_resume_threads, 4
zio_resume_threads:
	.long	4
.globl zio_sync_pass
	.align 4
	.type	zio_sync_pass, @object
	.size	zio_sync_pass, 12
zio_sync_pass:
	.long	1
	.long	4
	.long	1
	.comm	zio_cache,4,4
	.comm	zio_buf_cache,1024,32
	.comm	zio_data_buf_cache,1024,32
	.section	.rodata
.LC9:
	.string	"zio_cache"
.LC10:
	.string	"zio_buf_%lu"
.LC11:
	.string	"zio_data_buf_%lu"
	.align 8
.LC12:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/zio.c"
	.align 8
.LC13:
	.string	"zio_buf_cache[c] != ((void *)0)"
	.align 8
.LC14:
	.string	"zio_data_buf_cache[c] != ((void *)0)"
	.text
	.align 32
.globl zio_init
	.type	zio_init, @function
zio_init:
.LFB77:
	.file 2 "/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/zio.c"
	.loc 2 132 0
	.cfi_startproc
	pushq	%rbp
.LCFI2:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI3:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	.loc 2 132 0
	movq	8(%rbp), %rsi
	movl	$zio_init, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 134 0
	movl	$0, -32(%rbp)
	.loc 2 140 0
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$672, %esi
	movl	$.LC9, %edi
	call	umem_cache_create
	mov	%eax, %eax
	movl	%eax, zio_cache(%rip)
	.loc 2 149 0
	movl	$0, -36(%rbp)
	jmp	.L5
	.align 32
.L12:
.LBB2:
	.loc 2 150 0
	movl	-36(%rbp), %eax
	addl	$1, %eax
	sall	$9, %eax
	movl	%eax, -28(%rbp)
	.loc 2 151 0
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	.loc 2 152 0
	movl	$0, -20(%rbp)
	.loc 2 154 0
	jmp	.L6
	.align 32
.L7:
	.loc 2 155 0
	movl	-24(%rbp), %eax
	subl	$1, %eax
	andl	%eax, -24(%rbp)
	.align 32
.L6:
	.loc 2 154 0
	movl	-24(%rbp), %eax
	subl	$1, %eax
	andl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L7
	.loc 2 157 0
	cmpl	$2048, -28(%rbp)
	ja	.L8
	.loc 2 158 0
	movl	$512, -20(%rbp)
	jmp	.L9
	.align 32
.L8:
	.loc 2 159 0
	movl	$30, %edi
	call	sysconf
	subl	$1, %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L10
	.loc 2 160 0
	movl	$30, %edi
	call	sysconf
	movl	%eax, -20(%rbp)
	jmp	.L9
	.align 32
.L10:
	.loc 2 161 0
	movl	-24(%rbp), %eax
	shrl	$2, %eax
	subl	$1, %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L9
	.loc 2 162 0
	movl	-24(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, -20(%rbp)
	.align 32
.L9:
	.loc 2 165 0
	cmpl	$0, -20(%rbp)
	je	.L11
.LBB3:
	.loc 2 167 0
	movl	$.LC10, %eax
	mov	%eax, %ebx
	movl	-28(%rbp), %eax
	leal	-80(%rbp), %ecx
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	sprintf
	.loc 2 168 0
	movl	-36(%rbp), %ebx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	leal	-80(%rbp), %edi
	movl	$131072, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %esi
	call	umem_cache_create
	mov	%eax, %edx
	leal	0(,%rbx,4), %eax
	cltq
	movl	%edx, %nacl:zio_buf_cache(%r15,%rax)
	.loc 2 171 0
	movl	$.LC11, %eax
	mov	%eax, %ebx
	movl	-28(%rbp), %eax
	leal	-80(%rbp), %ecx
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	sprintf
	.loc 2 172 0
	movl	-36(%rbp), %ebx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	leal	-80(%rbp), %edi
	movl	$131072, 16(%rsp)
	movl	-32(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %esi
	call	umem_cache_create
	mov	%eax, %edx
	leal	0(,%rbx,4), %eax
	cltq
	movl	%edx, %nacl:zio_data_buf_cache(%r15,%rax)
	.align 32
.L11:
.LBE3:
.LBE2:
	.loc 2 149 0
	addl	$1, -36(%rbp)
	.align 32
.L5:
	cmpl	$255, -36(%rbp)
	jbe	.L12
	.loc 2 179 0
	jmp	.L13
	.align 32
.L17:
	.loc 2 180 0
	movl	-36(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L14
	movl	$__PRETTY_FUNCTION__.9273, %ecx
	movl	$180, %edx
	movl	$.LC12, %esi
	movl	$.LC13, %edi
	call	__assert_fail
	.align 32
.L14:
	.loc 2 181 0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L15
	.loc 2 182 0
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %edx
	leal	0(,%rcx,4), %eax
	cltq
	movl	%edx, %nacl:zio_buf_cache(%r15,%rax)
	.align 32
.L15:
	.loc 2 184 0
	movl	-36(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L16
	movl	$__PRETTY_FUNCTION__.9273, %ecx
	movl	$184, %edx
	movl	$.LC12, %esi
	movl	$.LC14, %edi
	call	__assert_fail
	.align 32
.L16:
	.loc 2 185 0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L13
	.loc 2 186 0
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %edx
	leal	0(,%rcx,4), %eax
	cltq
	movl	%edx, %nacl:zio_data_buf_cache(%r15,%rax)
	.align 32
.L13:
	.loc 2 179 0
	subl	$1, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L17
	.loc 2 192 0
	call	zio_inject_init
	movq	8(%rbp), %rsi
	movl	$zio_init, %edi
	call	__cyg_profile_func_exit
	.loc 2 193 0
	naclaspq	$104, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE77:
	.size	zio_init, .-zio_init
	.align 32
.globl zio_fini
	.type	zio_fini, @function
zio_fini:
.LFB78:
	.loc 2 197 0
	.cfi_startproc
	pushq	%rbp
.LCFI4:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI5:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	.loc 2 197 0
	movq	8(%rbp), %rsi
	movl	$zio_fini, %edi
	call	__cyg_profile_func_enter
	.loc 2 199 0
	movl	$0, -8(%rbp)
	.loc 2 200 0
	movl	$0, -4(%rbp)
	.loc 2 202 0
	movl	$0, -12(%rbp)
	jmp	.L20
	.align 32
.L23:
	.loc 2 203 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %eax
	cmpl	%eax, -8(%rbp)
	je	.L21
	.loc 2 204 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	movl	%nacl:zio_buf_cache(%r15,%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 2 205 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %eax
	movl	%eax, %edi
	call	umem_cache_destroy
	.align 32
.L21:
	.loc 2 207 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	movl	$0, %nacl:zio_buf_cache(%r15,%rax)
	.loc 2 209 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L22
	.loc 2 210 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	movl	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 2 211 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	movl	%eax, %edi
	call	umem_cache_destroy
	.align 32
.L22:
	.loc 2 213 0
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	movl	$0, %nacl:zio_data_buf_cache(%r15,%rax)
	.loc 2 202 0
	addl	$1, -12(%rbp)
	.align 32
.L20:
	cmpl	$255, -12(%rbp)
	jbe	.L23
	.loc 2 218 0
	mov	zio_cache(%rip), %eax
	movl	%eax, %edi
	call	umem_cache_destroy
	.loc 2 220 0
	call	zio_inject_fini
	movq	8(%rbp), %rsi
	movl	$zio_fini, %edi
	call	__cyg_profile_func_exit
	.loc 2 221 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE78:
	.size	zio_fini, .-zio_fini
	.section	.rodata
.LC15:
	.string	"c < (1ULL << 17) >> 9"
	.text
	.align 32
.globl zio_buf_alloc
	.type	zio_buf_alloc, @function
zio_buf_alloc:
.LFB79:
	.loc 2 237 0
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
	.loc 2 237 0
	movq	8(%rbp), %rsi
	movl	$zio_buf_alloc, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 238 0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	shrl	$9, %eax
	movl	%eax, -20(%rbp)
	.loc 2 240 0
	cmpl	$255, -20(%rbp)
	jbe	.L26
	movl	$__PRETTY_FUNCTION__.9358, %ecx
	movl	$240, %edx
	movl	$.LC12, %esi
	movl	$.LC15, %edi
	call	__assert_fail
	.align 32
.L26:
	.loc 2 242 0
	movl	-20(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movq	%rax, %rbx
	movq	8(%rbp), %rsi
	movl	$zio_buf_alloc, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 243 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE79:
	.size	zio_buf_alloc, .-zio_buf_alloc
	.align 32
.globl zio_data_buf_alloc
	.type	zio_data_buf_alloc, @function
zio_data_buf_alloc:
.LFB80:
	.loc 2 253 0
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
	.loc 2 253 0
	movq	8(%rbp), %rsi
	movl	$zio_data_buf_alloc, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 254 0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	shrl	$9, %eax
	movl	%eax, -20(%rbp)
	.loc 2 256 0
	cmpl	$255, -20(%rbp)
	jbe	.L29
	movl	$__PRETTY_FUNCTION__.9370, %ecx
	movl	$256, %edx
	movl	$.LC12, %esi
	movl	$.LC15, %edi
	call	__assert_fail
	.align 32
.L29:
	.loc 2 258 0
	movl	-20(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movq	%rax, %rbx
	movq	8(%rbp), %rsi
	movl	$zio_data_buf_alloc, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 259 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE80:
	.size	zio_data_buf_alloc, .-zio_data_buf_alloc
	.align 32
.globl zio_buf_free
	.type	zio_buf_free, @function
zio_buf_free:
.LFB81:
	.loc 2 263 0
	.cfi_startproc
	pushq	%rbp
.LCFI10:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI11:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 263 0
	movq	8(%rbp), %rsi
	movl	$zio_buf_free, %edi
	call	__cyg_profile_func_enter
	.loc 2 264 0
	movl	-24(%rbp), %eax
	subl	$1, %eax
	shrl	$9, %eax
	movl	%eax, -4(%rbp)
	.loc 2 266 0
	cmpl	$255, -4(%rbp)
	jbe	.L32
	movl	$__PRETTY_FUNCTION__.9383, %ecx
	movl	$266, %edx
	movl	$.LC12, %esi
	movl	$.LC15, %edi
	call	__assert_fail
	.align 32
.L32:
	.loc 2 268 0
	movl	-4(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_buf_cache(%r15,%rax), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	movq	8(%rbp), %rsi
	movl	$zio_buf_free, %edi
	call	__cyg_profile_func_exit
	.loc 2 269 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE81:
	.size	zio_buf_free, .-zio_buf_free
	.align 32
.globl zio_data_buf_free
	.type	zio_data_buf_free, @function
zio_data_buf_free:
.LFB82:
	.loc 2 273 0
	.cfi_startproc
	pushq	%rbp
.LCFI12:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI13:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 273 0
	movq	8(%rbp), %rsi
	movl	$zio_data_buf_free, %edi
	call	__cyg_profile_func_enter
	.loc 2 274 0
	movl	-24(%rbp), %eax
	subl	$1, %eax
	shrl	$9, %eax
	movl	%eax, -4(%rbp)
	.loc 2 276 0
	cmpl	$255, -4(%rbp)
	jbe	.L35
	movl	$__PRETTY_FUNCTION__.9394, %ecx
	movl	$276, %edx
	movl	$.LC12, %esi
	movl	$.LC15, %edi
	call	__assert_fail
	.align 32
.L35:
	.loc 2 278 0
	movl	-4(%rbp), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_data_buf_cache(%r15,%rax), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	movq	8(%rbp), %rsi
	movl	$zio_data_buf_free, %edi
	call	__cyg_profile_func_exit
	.loc 2 279 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE82:
	.size	zio_data_buf_free, .-zio_data_buf_free
	.align 32
	.type	zio_push_transform, @function
zio_push_transform:
.LFB83:
	.loc 2 288 0
	.cfi_startproc
	pushq	%rbp
.LCFI14:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI15:
	.cfi_def_cfa_register 6
	naclsspq	$48, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 2 288 0
	movq	8(%rbp), %rsi
	movl	$zio_push_transform, %edi
	call	__cyg_profile_func_enter
	.loc 2 289 0
	movl	$256, %esi
	movl	$32, %edi
	call	umem_alloc
	mov	%eax, %eax
	movl	%eax, -4(%rbp)
	.loc 2 291 0
	mov	-4(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 292 0
	mov	-4(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 293 0
	mov	-4(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, %nacl:16(%r15,%rax)
	.loc 2 295 0
	mov	-20(%rbp), %eax
	mov	%nacl:220(%r15,%rax), %edx
	mov	-4(%rbp), %eax
	movl	%edx, %nacl:24(%r15,%rax)
	.loc 2 296 0
	mov	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, %nacl:220(%r15,%rax)
	.loc 2 298 0
	mov	-20(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:376(%r15,%rax)
	.loc 2 299 0
	mov	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %nacl:384(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$zio_push_transform, %edi
	call	__cyg_profile_func_exit
	.loc 2 300 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE83:
	.size	zio_push_transform, .-zio_push_transform
	.align 32
	.type	zio_pop_transform, @function
zio_pop_transform:
.LFB84:
	.loc 2 304 0
	.cfi_startproc
	pushq	%rbp
.LCFI16:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI17:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 2 304 0
	movq	8(%rbp), %rsi
	movl	$zio_pop_transform, %edi
	call	__cyg_profile_func_enter
	.loc 2 305 0
	mov	-20(%rbp), %eax
	movl	%nacl:220(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 2 307 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 308 0
	mov	-4(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-28(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 309 0
	mov	-4(%rbp), %eax
	movq	%nacl:16(%r15,%rax), %rdx
	mov	-32(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 311 0
	mov	-4(%rbp), %eax
	mov	%nacl:24(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:220(%r15,%rax)
	.loc 2 312 0
	movl	-4(%rbp), %eax
	movl	$32, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 314 0
	mov	-20(%rbp), %eax
	movl	%nacl:220(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L40
	.loc 2 315 0
	mov	-4(%rbp), %eax
	mov	%nacl:(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:376(%r15,%rax)
	.loc 2 316 0
	mov	-4(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rdx
	mov	-20(%rbp), %eax
	movq	%rdx, %nacl:384(%r15,%rax)
	.align 32
.L40:
	movq	8(%rbp), %rsi
	movl	$zio_pop_transform, %edi
	call	__cyg_profile_func_exit
	.loc 2 318 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE84:
	.size	zio_pop_transform, .-zio_pop_transform
	.section	.rodata
	.align 8
.LC16:
	.string	"zio->io_transform_stack != ((void *)0)"
	.text
	.align 32
	.type	zio_clear_transform_stack, @function
zio_clear_transform_stack:
.LFB85:
	.loc 2 322 0
	.cfi_startproc
	pushq	%rbp
.LCFI18:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI19:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 322 0
	movq	8(%rbp), %rsi
	movl	$zio_clear_transform_stack, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 326 0
	mov	-52(%rbp), %eax
	mov	%nacl:220(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L43
	movl	$__PRETTY_FUNCTION__.9430, %ecx
	movl	$326, %edx
	movl	$.LC12, %esi
	movl	$.LC16, %edi
	call	__assert_fail
	.align 32
.L43:
	.loc 2 328 0
	leal	-40(%rbp), %ecx
	leal	-32(%rbp), %edx
	leal	-20(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 329 0
	jmp	.L44
	.align 32
.L45:
	.loc 2 330 0
	movq	-40(%rbp), %rax
	mov	-20(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_buf_free
	.loc 2 331 0
	leal	-40(%rbp), %ecx
	leal	-32(%rbp), %edx
	leal	-20(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.align 32
.L44:
	.loc 2 329 0
	mov	-52(%rbp), %eax
	mov	%nacl:220(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L45
	movq	8(%rbp), %rsi
	movl	$zio_clear_transform_stack, %edi
	call	__cyg_profile_func_exit
	.loc 2 333 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE85:
	.size	zio_clear_transform_stack, .-zio_clear_transform_stack
	.section	.rodata
.LC17:
	.string	"%s %s %s (0x%llx %s 0x%llx)"
.LC18:
	.string	"(1ULL << 17)"
.LC19:
	.string	"<="
.LC20:
	.string	"size"
	.align 8
.LC21:
	.string	"((size) & (((1ULL << 9)) - 1)) == 0"
.LC22:
	.string	"!(flags & 0x00008)"
	.align 8
.LC23:
	.string	"(zio->io_root->io_flags & 0x00004) || zio->io_type == ZIO_TYPE_NULL || (zio->io_root->io_flags & 0x00008)"
	.align 8
.LC24:
	.string	"zio->io_root == zio || !(zio->io_flags & 0x00008)"
	.text
	.align 32
	.type	zio_create, @function
zio_create:
.LFB86:
	.loc 2 344 0
	.cfi_startproc
	pushq	%rbp
.LCFI20:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI21:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	56(%rbp), %eax
	movb	%al, -84(%rbp)
	.loc 2 344 0
	movq	8(%rbp), %rsi
	movl	$zio_create, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
.LBB4:
	.loc 2 347 0
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$131072, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L48
.LBB5:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC18, %r9d
	movl	$.LC19, %r8d
	movl	$.LC20, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$347, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L48:
.LBE5:
.LBE4:
	.loc 2 348 0
	movq	-80(%rbp), %rax
	andl	$511, %eax
	testq	%rax, %rax
	je	.L49
	movl	$__PRETTY_FUNCTION__.9460, %ecx
	movl	$348, %edx
	movl	$.LC12, %esi
	movl	$.LC21, %edi
	call	__assert_fail
	.align 32
.L49:
	.loc 2 351 0
	movl	48(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L50
	movl	$__PRETTY_FUNCTION__.9460, %ecx
	movl	$351, %edx
	movl	$.LC12, %esi
	movl	$.LC22, %edi
	call	__assert_fail
	.align 32
.L50:
	.loc 2 353 0
	mov	zio_cache(%rip), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_cache_alloc
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 354 0
	movl	-44(%rbp), %eax
	movl	$672, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 355 0
	mov	-44(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 356 0
	mov	-44(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	%edx, %nacl:8(%r15,%rax)
	.loc 2 357 0
	mov	-44(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %nacl:64(%r15,%rax)
	.loc 2 358 0
	mov	-44(%rbp), %eax
	movl	48(%rbp), %edx
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 359 0
	cmpl	$0, -68(%rbp)
	je	.L51
	.loc 2 360 0
	mov	-44(%rbp), %eax
	movl	-68(%rbp), %edx
	movl	%edx, %nacl:72(%r15,%rax)
	.loc 2 361 0
	mov	-44(%rbp), %eax
	mov	-68(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:120(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:128(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:136(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:144(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:152(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:160(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:168(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:176(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:184(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:192(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:200(%r15,%rax)
	.loc 2 362 0
	mov	-44(%rbp), %eax
	mov	-68(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:248(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:256(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:264(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:272(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:280(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:288(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:296(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:304(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:312(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:320(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:328(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:336(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:344(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:352(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:360(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:368(%r15,%rax)
	.align 32
.L51:
	.loc 2 364 0
	mov	-44(%rbp), %eax
	movl	16(%rbp), %edx
	movl	%edx, %nacl:240(%r15,%rax)
	.loc 2 365 0
	mov	-44(%rbp), %eax
	movl	24(%rbp), %edx
	movl	%edx, %nacl:244(%r15,%rax)
	.loc 2 366 0
	mov	-44(%rbp), %eax
	movl	32(%rbp), %edx
	movl	%edx, %nacl:492(%r15,%rax)
	.loc 2 367 0
	movl	40(%rbp), %eax
	movl	%eax, %edx
	mov	-44(%rbp), %eax
	movb	%dl, %nacl:505(%r15,%rax)
	.loc 2 368 0
	movzbl	-84(%rbp), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:496(%r15,%rax)
	.loc 2 369 0
	mov	-44(%rbp), %eax
	movl	64(%rbp), %edx
	movl	%edx, %nacl:536(%r15,%rax)
	.loc 2 370 0
	call	gethrtime
	sarq	$23, %rax
	movq	%rax, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:432(%r15,%rax)
	.loc 2 374 0
	movl	-44(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_init
	.loc 2 375 0
	movl	-44(%rbp), %eax
	addl	$616, %eax
	mov	%eax, %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	cv_init
	.loc 2 376 0
	movq	-80(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	-72(%rbp), %ebx
	movl	-44(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 396 0
	cmpl	$0, -52(%rbp)
	jne	.L52
	.loc 2 397 0
	cmpl	$0, 32(%rbp)
	je	.L53
	.loc 2 398 0
	movl	48(%rbp), %eax
	andl	$4, %eax
	.loc 2 397 0
	testl	%eax, %eax
	jne	.L53
	.loc 2 399 0
	movl	-44(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	spa_config_enter
	.loc 2 400 0
	mov	-44(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L53:
	.loc 2 402 0
	mov	-44(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:4(%r15,%rax)
	jmp	.L54
	.align 32
.L52:
	.loc 2 404 0
	mov	-52(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:4(%r15,%rax)
	.loc 2 405 0
	movl	48(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L55
	.loc 2 406 0
	mov	-52(%rbp), %eax
	mov	%nacl:224(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:224(%r15,%rax)
	.align 32
.L55:
	.loc 2 407 0
	movl	-52(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 408 0
	mov	-52(%rbp), %eax
	mov	%nacl:(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L56
	.loc 2 409 0
	mov	-52(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	.loc 2 408 0
	testl	%eax, %eax
	jne	.L56
	.loc 2 410 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$8, %eax
	.loc 2 408 0
	testl	%eax, %eax
	jne	.L56
	.loc 2 411 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$4, %eax
	.loc 2 408 0
	testl	%eax, %eax
	jne	.L56
	.loc 2 412 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 413 0
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	spa_config_enter
	.align 32
.L56:
	.loc 2 415 0
	cmpb	$13, -84(%rbp)
	ja	.L57
	.loc 2 416 0
	mov	-52(%rbp), %eax
	movq	%nacl:544(%r15,%rax), %rax
	leaq	1(%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:544(%r15,%rax)
	.align 32
.L57:
	.loc 2 417 0
	mov	-52(%rbp), %eax
	movq	%nacl:552(%r15,%rax), %rax
	leaq	1(%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:552(%r15,%rax)
	.loc 2 418 0
	mov	-52(%rbp), %eax
	mov	%nacl:208(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:216(%r15,%rax)
	.loc 2 419 0
	mov	-44(%rbp), %eax
	movl	$0, %nacl:212(%r15,%rax)
	.loc 2 420 0
	mov	-52(%rbp), %eax
	mov	%nacl:208(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L58
	.loc 2 421 0
	mov	-52(%rbp), %eax
	mov	%nacl:208(%r15,%rax), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:212(%r15,%rax)
	.align 32
.L58:
	.loc 2 422 0
	mov	-52(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:208(%r15,%rax)
	.loc 2 423 0
	mov	-52(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:56(%r15,%rax)
	.loc 2 424 0
	movl	-52(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L54:
	.loc 2 430 0
	mov	-44(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:500(%r15,%rax)
	.loc 2 431 0
	mov	-44(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:540(%r15,%rax)
	.loc 2 432 0
	mov	-44(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:488(%r15,%rax)
	.loc 2 440 0
	mov	-44(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L59
	mov	-44(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L59
	mov	-44(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L59
	movl	$__PRETTY_FUNCTION__.9460, %ecx
	movl	$442, %edx
	movl	$.LC12, %esi
	movl	$.LC23, %edi
	call	__assert_fail
	.align 32
.L59:
	.loc 2 443 0
	mov	-44(%rbp), %eax
	mov	%nacl:4(%r15,%rax), %eax
	cmpl	%eax, -44(%rbp)
	je	.L60
	mov	-44(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L60
	movl	$__PRETTY_FUNCTION__.9460, %ecx
	movl	$444, %edx
	movl	$.LC12, %esi
	movl	$.LC24, %edi
	call	__assert_fail
	.align 32
.L60:
	.loc 2 446 0
	mov	-44(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_create, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 447 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE86:
	.size	zio_create, .-zio_create
	.align 32
	.type	zio_reset, @function
zio_reset:
.LFB87:
	.loc 2 451 0
	.cfi_startproc
	pushq	%rbp
.LCFI22:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI23:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 451 0
	movq	8(%rbp), %rsi
	movl	$zio_reset, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 452 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	zio_clear_transform_stack
	.loc 2 454 0
	mov	-20(%rbp), %eax
	movl	%nacl:488(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 455 0
	mov	-20(%rbp), %eax
	movl	%nacl:500(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:496(%r15,%rax)
	.loc 2 456 0
	mov	-20(%rbp), %eax
	movl	%nacl:540(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:536(%r15,%rax)
	.loc 2 457 0
	mov	-20(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rcx
	mov	-20(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rdx
	mov	-20(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %ebx
	movl	-20(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	movq	8(%rbp), %rsi
	movl	$zio_reset, %edi
	call	__cyg_profile_func_exit
	.loc 2 458 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE87:
	.size	zio_reset, .-zio_reset
	.align 32
.globl zio_null
	.type	zio_null, @function
zio_null:
.LFB88:
	.loc 2 463 0
	.cfi_startproc
	pushq	%rbp
.LCFI24:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI25:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	.loc 2 463 0
	movq	8(%rbp), %rsi
	movl	$zio_null, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 467 0
	movzbl	zio_priority_table(%rip), %eax
	.loc 2 466 0
	movzbl	%al, %edx
	movl	-40(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	$12861442, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	-52(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rsp)
	movl	-44(%rbp), %edx
	movl	%edx, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 470 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_null, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 471 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE88:
	.size	zio_null, .-zio_null
	.align 32
.globl zio_root
	.type	zio_root, @function
zio_root:
.LFB89:
	.loc 2 475 0
	.cfi_startproc
	pushq	%rbp
.LCFI26:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI27:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 2 475 0
	movq	8(%rbp), %rsi
	movl	$zio_root, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 476 0
	movl	-32(%rbp), %ebx
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%ebx, %r8d
	movl	%eax, %esi
	movl	$0, %edi
	call	zio_null
	mov	%eax, %eax
	movq	%rax, %rbx
	movq	8(%rbp), %rsi
	movl	$zio_root, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 477 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE89:
	.size	zio_root, .-zio_root
	.section	.rodata
	.align 8
.LC25:
	.string	"(((bp)->blk_birth == 0) ? 0 : ((((((bp)->blk_prop) >> (0)) & ((1ULL << (16)) - 1)) + (1)) << (9)))"
.LC26:
	.string	"=="
	.text
	.align 32
.globl zio_read
	.type	zio_read, @function
zio_read:
.LFB90:
	.loc 2 483 0
	.cfi_startproc
	pushq	%rbp
.LCFI28:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI29:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	.loc 2 483 0
	movq	8(%rbp), %rsi
	movl	$zio_read, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
.LBB6:
	.loc 2 486 0
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L69
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	jmp	.L70
	.align 32
.L69:
	movl	$0, %eax
	.align 32
.L70:
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L71
.LBB7:
	naclsspq	$272, %r15
	leal	56(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC25, %r9d
	movl	$.LC26, %r8d
	movl	$.LC20, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$486, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L71:
.LBE7:
.LBE6:
	.loc 2 492 0
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	spa_get_failmode
	cmpb	$1, %al
	je	.L72
	.loc 2 493 0
	mov	-56(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	jne	.L72
	movl	-56(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	jmp	.L73
	.align 32
.L74:
	movl	-56(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %edx
	movl	-56(%rbp), %eax
	addl	$1560, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.align 32
.L73:
	mov	-56(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	je	.L74
	movl	-56(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L72:
	.loc 2 495 0
	movl	32(%rbp), %eax
	movl	%eax, %esi
	orl	$131072, %esi
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	movq	-72(%rbp), %r8
	movl	-64(%rbp), %edi
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	$13615110, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%esi, 32(%rsp)
	movl	24(%rbp), %esi
	movl	%esi, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	16(%rbp), %esi
	movl	%esi, 8(%rsp)
	movl	-76(%rbp), %esi
	movl	%esi, (%rsp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 499 0
	mov	-44(%rbp), %eax
	mov	40(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rdx
	movq	%rdx, %nacl:40(%r15,%rax)
	.loc 2 501 0
	mov	-44(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:224(%r15,%rax)
	.loc 2 506 0
	movl	-44(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:72(%r15,%rax)
	.loc 2 508 0
	mov	-44(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_read, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 509 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE90:
	.size	zio_read, .-zio_read
	.section	.rodata
	.align 8
.LC27:
	.string	"checksum >= ZIO_CHECKSUM_OFF && checksum < ZIO_CHECKSUM_FUNCTIONS"
	.align 8
.LC28:
	.string	"compress >= ZIO_COMPRESS_OFF && compress < ZIO_COMPRESS_FUNCTIONS"
	.align 8
.LC29:
	.ascii	"(((zio->io_ndvas + (((((&(bp)->blk_dva[0]))->dva_word[1]) >>"
	.ascii	" (63)) & ((1ULL << (1)) - 1)))<(spa_max_replication(spa)))?("
	.ascii	"zio->io_ndvas + (((((&(bp)->blk_dva[0]))->dva_word[1]) >> (6"
	.ascii	"3)) & ((1ULL << (1)) - 1))):(spa_max_replication(spa))) == ("
	.ascii	"!!((((((&(bp"
	.string	")->blk_dva[0])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(bp)->blk_dva[1])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(bp)->blk_dva[2])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)))"
	.text
	.align 32
.globl zio_write
	.type	zio_write, @function
zio_write:
.LFB91:
	.loc 2 516 0
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
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	.loc 2 516 0
	movq	8(%rbp), %rsi
	movl	$zio_write, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 519 0
	cmpl	$1, -44(%rbp)
	jle	.L77
	cmpl	$8, -44(%rbp)
	jle	.L78
	.align 32
.L77:
	movl	$__PRETTY_FUNCTION__.9645, %ecx
	movl	$520, %edx
	movl	$.LC12, %esi
	movl	$.LC27, %edi
	call	__assert_fail
	.align 32
.L78:
	.loc 2 522 0
	cmpl	$1, -48(%rbp)
	jle	.L79
	cmpl	$13, -48(%rbp)
	jle	.L80
	.align 32
.L79:
	movl	$__PRETTY_FUNCTION__.9645, %ecx
	movl	$523, %edx
	movl	$.LC12, %esi
	movl	$.LC28, %edi
	call	__assert_fail
	.align 32
.L80:
	.loc 2 525 0
	mov	-40(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	jne	.L81
	movl	-40(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	jmp	.L82
	.align 32
.L83:
	movl	-40(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %edx
	movl	-40(%rbp), %eax
	addl	$1560, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.align 32
.L82:
	mov	-40(%rbp), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	je	.L83
	movl	-40(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L81:
	.loc 2 527 0
	movl	72(%rbp), %eax
	movl	%eax, %ecx
	orl	$131072, %ecx
	movq	32(%rbp), %rdi
	movl	24(%rbp), %esi
	movq	-64(%rbp), %rdx
	movl	-40(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	$13091898, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	64(%rbp), %ecx
	movl	%ecx, 24(%rsp)
	movl	$2, 16(%rsp)
	movl	56(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movl	48(%rbp), %ecx
	movl	%ecx, (%rsp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	16(%rbp), %ecx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 531 0
	mov	-20(%rbp), %eax
	movl	40(%rbp), %edx
	movl	%edx, %nacl:236(%r15,%rax)
	.loc 2 533 0
	mov	-20(%rbp), %eax
	mov	80(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rdx
	movq	%rdx, %nacl:40(%r15,%rax)
	.loc 2 535 0
	mov	-20(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %nacl:224(%r15,%rax)
	.loc 2 537 0
	movl	-44(%rbp), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:48(%r15,%rax)
	.loc 2 538 0
	movl	-48(%rbp), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:52(%r15,%rax)
	.loc 2 539 0
	mov	-20(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	%edx, %nacl:56(%r15,%rax)
	.loc 2 541 0
	mov	16(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.L84
	.loc 2 543 0
	mov	16(%rbp), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:80(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:48(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:56(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:64(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:72(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:88(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:96(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	16(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.loc 2 544 0
	mov	16(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	16(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	32(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	16(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 545 0
	mov	16(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	16(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	32(%rbp), %rax
	shrq	$9, %rax
	subq	$1, %rax
	xorq	%rcx, %rax
	salq	$16, %rax
	andl	$4294967295, %eax
	xorq	%rax, %rdx
	mov	16(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	jmp	.L85
	.align 32
.L84:
	.loc 2 548 0
	mov	-20(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	movslq	%eax,%rdx
	mov	16(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	shrq	$63, %rax
	leaq	(%rdx,%rax), %rbx
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	cltq
	cmpq	%rax, %rbx
	jae	.L86
	mov	-20(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	movslq	%eax,%rdx
	mov	16(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	shrq	$63, %rax
	leaq	(%rdx,%rax), %rax
	jmp	.L87
	.align 32
.L86:
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	cltq
	.align 32
.L87:
	mov	16(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rdx
	andl	$16777215, %edx
	salq	$9, %rdx
	testq	%rdx, %rdx
	setne	%dl
	movzbl	%dl, %ecx
	movl	16(%rbp), %edx
	addl	$16, %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	andl	$16777215, %edx
	salq	$9, %rdx
	testq	%rdx, %rdx
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %ecx
	movl	16(%rbp), %edx
	addl	$32, %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	andl	$16777215, %edx
	salq	$9, %rdx
	testq	%rdx, %rdx
	setne	%dl
	movzbl	%dl, %edx
	leal	(%rcx,%rdx), %edx
	movslq	%edx,%rdx
	cmpq	%rdx, %rax
	je	.L85
	movl	$__PRETTY_FUNCTION__.9645, %ecx
	movl	$549, %edx
	movl	$.LC12, %esi
	movl	$.LC29, %edi
	call	__assert_fail
	.align 32
.L85:
	.loc 2 552 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_write, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 553 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE91:
	.size	zio_write, .-zio_write
	.section	.rodata
	.align 8
.LC30:
	.ascii	"(!!((((((&(bp"
	.string	")->blk_dva[0])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(bp)->blk_dva[1])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(bp)->blk_dva[2])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)))"
.LC31:
	.string	"zio->io_ndvas"
	.text
	.align 32
.globl zio_rewrite
	.type	zio_rewrite, @function
zio_rewrite:
.LFB92:
	.loc 2 559 0
	.cfi_startproc
	pushq	%rbp
.LCFI32:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI33:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	.loc 2 559 0
	movq	8(%rbp), %rsi
	movl	$zio_rewrite, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 564 0
	mov	-76(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	.loc 2 562 0
	testq	%rax, %rax
	jns	.L90
	movl	$13099242, %eax
	jmp	.L91
	.align 32
.L90:
	movl	$13090858, %eax
	.align 32
.L91:
	movl	48(%rbp), %edx
	movl	%edx, %r8d
	orl	$131072, %r8d
	movl	-80(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %ebx
	movl	%eax, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%r8d, 32(%rsp)
	movl	40(%rbp), %eax
	movl	%eax, 24(%rsp)
	movl	$2, 16(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 8(%rsp)
	movl	24(%rbp), %eax
	movl	%eax, (%rsp)
	movq	16(%rbp), %r9
	movl	%edi, %r8d
	movl	%ebx, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	.loc 2 566 0
	mov	-44(%rbp), %eax
	mov	56(%rbp), %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:16(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:24(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:32(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rdx
	movq	%rdx, %nacl:40(%r15,%rax)
	.loc 2 567 0
	movl	-60(%rbp), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:48(%r15,%rax)
	.loc 2 568 0
	mov	-44(%rbp), %eax
	movl	$2, %nacl:52(%r15,%rax)
	.loc 2 570 0
	cmpl	$0, -52(%rbp)
	je	.L92
.LBB8:
	.loc 2 571 0
	mov	-44(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	mov	-76(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	-76(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-76(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L92
.LBB9:
	naclsspq	$272, %r15
	leal	56(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC30, %r9d
	movl	$.LC19, %r8d
	movl	$.LC31, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$571, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L92:
.LBE9:
.LBE8:
	.loc 2 573 0
	mov	-44(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_rewrite, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 574 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE92:
	.size	zio_rewrite, .-zio_rewrite
	.align 32
	.type	zio_write_allocate_ready, @function
zio_write_allocate_ready:
.LFB93:
	.loc 2 578 0
	.cfi_startproc
	pushq	%rbp
.LCFI34:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI35:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 578 0
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate_ready, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 580 0
	mov	-20(%rbp), %eax
	movq	%nacl:328(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L95
	.loc 2 581 0
	movl	-20(%rbp), %eax
	addl	$248, %eax
	mov	%eax, %ecx
	mov	-20(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_free
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	.align 32
.L95:
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate_ready, %edi
	call	__cyg_profile_func_exit
	.loc 2 584 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE93:
	.size	zio_write_allocate_ready, .-zio_write_allocate_ready
	.align 32
	.type	zio_write_allocate, @function
zio_write_allocate:
.LFB94:
	.loc 2 590 0
	.cfi_startproc
	pushq	%rbp
.LCFI36:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI37:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	.loc 2 590 0
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 593 0
	mov	-60(%rbp), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:80(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:48(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:56(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:64(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:72(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:88(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:96(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.loc 2 594 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	16(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 595 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	16(%rbp), %rax
	shrq	$9, %rax
	subq	$1, %rax
	xorq	%rcx, %rax
	salq	$16, %rax
	andl	$4294967295, %eax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 596 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	xorq	$2, %rax
	andl	$255, %eax
	salq	$32, %rax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 598 0
	movl	-64(%rbp), %edi
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	$13091882, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	48(%rbp), %esi
	movl	%esi, 32(%rsp)
	movl	40(%rbp), %esi
	movl	%esi, 24(%rsp)
	movl	$2, 16(%rsp)
	movl	32(%rbp), %esi
	movl	%esi, 8(%rsp)
	movl	24(%rbp), %esi
	movl	%esi, (%rsp)
	movq	16(%rbp), %r9
	movl	%edi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 602 0
	movl	-44(%rbp), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:48(%r15,%rax)
	.loc 2 603 0
	mov	-20(%rbp), %eax
	movl	$2, %nacl:52(%r15,%rax)
	.loc 2 604 0
	mov	-20(%rbp), %eax
	movl	$zio_write_allocate_ready, %nacl:236(%r15,%rax)
	.loc 2 606 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 607 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE94:
	.size	zio_write_allocate, .-zio_write_allocate
	.section	.rodata
.LC32:
	.string	"!((bp)->blk_birth == 0)"
	.text
	.align 32
.globl zio_free
	.type	zio_free, @function
zio_free:
.LFB95:
	.loc 2 612 0
	.cfi_startproc
	pushq	%rbp
.LCFI38:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI39:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	.loc 2 612 0
	movq	8(%rbp), %rsi
	movl	$zio_free, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 615 0
	mov	-52(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L100
	movl	$__PRETTY_FUNCTION__.9833, %ecx
	movl	$615, %edx
	movl	$.LC12, %esi
	movl	$.LC32, %edi
	call	__assert_fail
	.align 32
.L100:
	.loc 2 617 0
	mov	-40(%rbp), %eax
	movq	%nacl:368(%r15,%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L101
	.loc 2 618 0
	mov	-40(%rbp), %eax
	movl	%nacl:88(%r15,%rax), %edx
	movl	zio_sync_pass(%rip), %eax
	.loc 2 617 0
	cmpl	%eax, %edx
	jle	.L101
	.loc 2 619 0
	movl	-40(%rbp), %eax
	addl	$384, %eax
	mov	%eax, %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	bplist_enqueue_deferred
	.loc 2 620 0
	movl	-40(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_null
	mov	%eax, %eax
	movq	%rax, %rbx
	jmp	.L102
	.align 32
.L101:
	.loc 2 625 0
	mov	-52(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	.loc 2 623 0
	testq	%rax, %rax
	jns	.L103
	movl	$12863810, %eax
	jmp	.L104
	.align 32
.L103:
	movl	$12863490, %eax
	.align 32
.L104:
	.loc 2 624 0
	movzbl	zio_priority_table+5(%rip), %edx
	.loc 2 623 0
	movzbl	%dl, %edi
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %ebx
	movl	%eax, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$131072, 32(%rsp)
	movl	%edi, 24(%rsp)
	movl	$3, 16(%rsp)
	movl	-60(%rbp), %eax
	movl	%eax, 8(%rsp)
	movl	-56(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%ebx, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 627 0
	movl	-20(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:72(%r15,%rax)
	.loc 2 629 0
	mov	-20(%rbp), %ebx
	.align 32
.L102:
	movq	8(%rbp), %rsi
	movl	$zio_free, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 630 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE95:
	.size	zio_free, .-zio_free
	.section	.rodata
.LC33:
	.string	"spa_first_txg(spa)"
.LC34:
	.string	"<"
	.align 8
.LC35:
	.string	"spa->spa_uberblock.ub_rootbp.blk_birth"
.LC36:
	.string	"txg"
	.text
	.align 32
.globl zio_claim
	.type	zio_claim, @function
zio_claim:
.LFB96:
	.loc 2 635 0
	.cfi_startproc
	pushq	%rbp
.LCFI40:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI41:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$168, %r15
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movl	%ecx, -100(%rbp)
	movl	%r8d, -104(%rbp)
	movl	%r9d, -108(%rbp)
	.loc 2 635 0
	movq	8(%rbp), %rsi
	movl	$zio_claim, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
.LBB10:
	.loc 2 649 0
	mov	-88(%rbp), %eax
	movq	%nacl:880(%r15,%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	spa_first_txg
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L107
.LBB11:
	naclsspq	$272, %r15
	leal	56(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC34, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC33, %r9d
	movl	$.LC34, %r8d
	movl	$.LC35, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-44(%rbp), %eax
	movl	$649, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L107:
.LBE11:
.LBE10:
.LBB12:
	.loc 2 650 0
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	spa_first_txg
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L108
.LBB13:
	naclsspq	$272, %r15
	leal	56(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC36, %r9d
	movl	$.LC19, %r8d
	movl	$.LC33, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$650, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L108:
.LBE13:
.LBE12:
	.loc 2 654 0
	mov	-100(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	.loc 2 652 0
	testq	%rax, %rax
	jns	.L109
	movl	$12866114, %eax
	jmp	.L110
	.align 32
.L109:
	movl	$12865538, %eax
	.align 32
.L110:
	.loc 2 653 0
	movzbl	zio_priority_table(%rip), %edx
	.loc 2 652 0
	movzbl	%dl, %edi
	movl	-100(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movl	-88(%rbp), %esi
	movl	-84(%rbp), %ebx
	movl	%eax, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	%edi, 24(%rsp)
	movl	$4, 16(%rsp)
	movl	-108(%rbp), %eax
	movl	%eax, 8(%rsp)
	movl	-104(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%ebx, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -68(%rbp)
	.loc 2 656 0
	movl	-68(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:72(%r15,%rax)
	.loc 2 658 0
	mov	-68(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_claim, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 659 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE96:
	.size	zio_claim, .-zio_claim
	.align 32
.globl zio_ioctl
	.type	zio_ioctl, @function
zio_ioctl:
.LFB97:
	.loc 2 664 0
	.cfi_startproc
	pushq	%rbp
.LCFI42:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI43:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	.loc 2 664 0
	movq	8(%rbp), %rsi
	movl	$zio_ioctl, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 668 0
	mov	-44(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L113
	.loc 2 669 0
	movl	-40(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	$13090818, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	24(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	16(%rbp), %edx
	movl	%edx, 24(%rsp)
	movl	$5, 16(%rsp)
	movl	-56(%rbp), %edx
	movl	%edx, 8(%rsp)
	movl	-52(%rbp), %edx
	movl	%edx, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 673 0
	mov	-24(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:392(%r15,%rax)
	.loc 2 674 0
	mov	-24(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%edx, %nacl:520(%r15,%rax)
	jmp	.L114
	.align 32
.L113:
	.loc 2 676 0
	movl	24(%rbp), %edx
	movl	-40(%rbp), %ebx
	movl	-36(%rbp), %eax
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_null
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 678 0
	movl	$0, -20(%rbp)
	jmp	.L115
	.align 32
.L116:
	.loc 2 679 0
	mov	-44(%rbp), %eax
	mov	%nacl:76(%r15,%rax), %eax
	movl	-20(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %esi
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %edx
	movl	-40(%rbp), %ebx
	movl	-24(%rbp), %eax
	movl	24(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movl	16(%rbp), %ecx
	movl	%ecx, (%rsp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_ioctl
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 678 0
	addl	$1, -20(%rbp)
	.align 32
.L115:
	movl	-20(%rbp), %eax
	movslq	%eax,%rdx
	mov	-44(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jb	.L116
	.align 32
.L114:
	.loc 2 683 0
	mov	-24(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_ioctl, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 684 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE97:
	.size	zio_ioctl, .-zio_ioctl
	.section	.rodata
.LC37:
	.string	"vd->vdev_children == 0"
.LC38:
	.string	"size <= (1ULL << 17)"
	.align 8
.LC39:
	.string	"((offset) & (((1ULL << 9)) - 1)) == 0"
	.align 8
.LC40:
	.string	"offset + size <= (2 * sizeof (vdev_label_t) + (7ULL << 19)) || offset >= vd->vdev_psize - (2 * sizeof (vdev_label_t))"
.LC41:
	.string	"vd->vdev_psize"
.LC42:
	.string	"offset + size"
	.text
	.align 32
	.type	zio_phys_bp_init, @function
zio_phys_bp_init:
.LFB98:
	.loc 2 689 0
	.cfi_startproc
	pushq	%rbp
.LCFI44:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI45:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	.loc 2 689 0
	movq	8(%rbp), %rsi
	movl	$zio_phys_bp_init, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 690 0
	mov	-52(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L119
	movl	$__PRETTY_FUNCTION__.9931, %ecx
	movl	$690, %edx
	movl	$.LC12, %esi
	movl	$.LC37, %edi
	call	__assert_fail
	.align 32
.L119:
	.loc 2 692 0
	cmpq	$131072, -72(%rbp)
	jbe	.L120
	movl	$__PRETTY_FUNCTION__.9931, %ecx
	movl	$692, %edx
	movl	$.LC12, %esi
	movl	$.LC38, %edi
	call	__assert_fail
	.align 32
.L120:
	.loc 2 693 0
	movq	-72(%rbp), %rax
	andl	$511, %eax
	testq	%rax, %rax
	je	.L121
	movl	$__PRETTY_FUNCTION__.9931, %ecx
	movl	$693, %edx
	movl	$.LC12, %esi
	movl	$.LC21, %edi
	call	__assert_fail
	.align 32
.L121:
	.loc 2 694 0
	movq	-64(%rbp), %rax
	andl	$511, %eax
	testq	%rax, %rax
	je	.L122
	movl	$__PRETTY_FUNCTION__.9931, %ecx
	movl	$694, %edx
	movl	$.LC12, %esi
	movl	$.LC39, %edi
	call	__assert_fail
	.align 32
.L122:
	.loc 2 697 0
	cmpl	$0, -80(%rbp)
	je	.L123
	.loc 2 698 0
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	cmpq	$4194304, %rax
	jbe	.L123
	mov	-52(%rbp), %eax
	movq	%nacl:784(%r15,%rax), %rax
	subq	$524288, %rax
	cmpq	-64(%rbp), %rax
	jbe	.L123
	movl	$__PRETTY_FUNCTION__.9931, %ecx
	movl	$699, %edx
	movl	$.LC12, %esi
	movl	$.LC40, %edi
	call	__assert_fail
	.align 32
.L123:
.LBB14:
	.loc 2 702 0
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -40(%rbp)
	mov	-52(%rbp), %eax
	movq	%nacl:784(%r15,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L124
.LBB15:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC41, %r9d
	movl	$.LC19, %r8d
	movl	$.LC42, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$702, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L124:
.LBE15:
.LBE14:
	.loc 2 704 0
	mov	-56(%rbp), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:80(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:48(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:56(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:64(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:72(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:88(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:96(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.loc 2 706 0
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	-72(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	-56(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 707 0
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	-72(%rbp), %rax
	shrq	$9, %rax
	subq	$1, %rax
	xorq	%rcx, %rax
	salq	$16, %rax
	andl	$4294967295, %eax
	xorq	%rax, %rdx
	mov	-56(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 709 0
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$40, %rcx
	movl	-76(%rbp), %eax
	cltq
	xorq	%rcx, %rax
	andl	$255, %eax
	salq	$40, %rax
	xorq	%rax, %rdx
	mov	-56(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 710 0
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	xorq	$2, %rax
	andl	$255, %eax
	salq	$32, %rax
	xorq	%rax, %rdx
	mov	-56(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 711 0
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-56(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L125
	movabsq	$-9223372036854775808, %rax
	jmp	.L126
	.align 32
.L125:
	movl	$0, %eax
	.align 32
.L126:
	xorq	%rax, %rdx
	mov	-56(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 713 0
	cmpl	$2, -76(%rbp)
	je	.L127
	.loc 2 714 0
	mov	-56(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %nacl:96(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	-56(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.align 32
.L127:
	movq	8(%rbp), %rsi
	movl	$zio_phys_bp_init, %edi
	call	__cyg_profile_func_exit
	.loc 2 715 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE98:
	.size	zio_phys_bp_init, .-zio_phys_bp_init
	.align 32
.globl zio_read_phys
	.type	zio_read_phys, @function
zio_read_phys:
.LFB99:
	.loc 2 721 0
	.cfi_startproc
	pushq	%rbp
.LCFI46:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI47:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$248, %r15
	movl	%edi, -164(%rbp)
	movl	%esi, -168(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movl	%r8d, -188(%rbp)
	movl	%r9d, -192(%rbp)
	.loc 2 721 0
	movq	8(%rbp), %rsi
	movl	$zio_read_phys, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 725 0
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	jne	.L130
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	jmp	.L131
	.align 32
.L132:
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1608, %eax
	mov	%eax, %edx
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1560, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.align 32
.L131:
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	je	.L132
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L130:
	.loc 2 727 0
	movl	48(%rbp), %edi
	movl	-192(%rbp), %esi
	movq	-184(%rbp), %rcx
	movq	-176(%rbp), %rdx
	leal	-160(%rbp), %ebx
	movl	-168(%rbp), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_phys_bp_init
	.loc 2 729 0
	movl	40(%rbp), %eax
	movl	%eax, %edx
	orb	$1, %dh
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %ebx
	movq	-184(%rbp), %rdi
	movl	-188(%rbp), %esi
	leal	-160(%rbp), %ecx
	movl	-164(%rbp), %eax
	movl	$13615106, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%edx, 32(%rsp)
	movl	32(%rbp), %edx
	movl	%edx, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	24(%rbp), %edx
	movl	%edx, 8(%rsp)
	movl	16(%rbp), %edx
	movl	%edx, (%rsp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 733 0
	mov	-20(%rbp), %eax
	movl	-168(%rbp), %edx
	movl	%edx, %nacl:392(%r15,%rax)
	.loc 2 734 0
	mov	-20(%rbp), %eax
	movq	-176(%rbp), %rdx
	movq	%rdx, %nacl:416(%r15,%rax)
	.loc 2 739 0
	movl	-20(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:72(%r15,%rax)
	.loc 2 741 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_read_phys, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 742 0
	naclaspq	$248, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE99:
	.size	zio_read_phys, .-zio_read_phys
	.align 32
.globl zio_write_phys
	.type	zio_write_phys, @function
zio_write_phys:
.LFB100:
	.loc 2 748 0
	.cfi_startproc
	pushq	%rbp
.LCFI48:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI49:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$248, %r15
	movl	%edi, -164(%rbp)
	movl	%esi, -168(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movl	%r8d, -188(%rbp)
	movl	%r9d, -192(%rbp)
	.loc 2 748 0
	movq	8(%rbp), %rsi
	movl	$zio_write_phys, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 754 0
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	jne	.L135
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	jmp	.L136
	.align 32
.L137:
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1608, %eax
	mov	%eax, %edx
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1560, %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	cv_wait
	.align 32
.L136:
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	movl	%nacl:92(%r15,%rax), %eax
	cmpl	$6, %eax
	je	.L137
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L135:
	.loc 2 756 0
	movl	48(%rbp), %edi
	movl	-192(%rbp), %esi
	movq	-184(%rbp), %rcx
	movq	-176(%rbp), %rdx
	leal	-160(%rbp), %ebx
	movl	-168(%rbp), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_phys_bp_init
	.loc 2 758 0
	movl	40(%rbp), %eax
	movl	%eax, %edx
	orb	$1, %dh
	mov	-168(%rbp), %eax
	mov	%nacl:60(%r15,%rax), %ebx
	movq	-184(%rbp), %rdi
	movl	-188(%rbp), %esi
	leal	-160(%rbp), %ecx
	movl	-164(%rbp), %eax
	movl	$13090858, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%edx, 32(%rsp)
	movl	32(%rbp), %edx
	movl	%edx, 24(%rsp)
	movl	$2, 16(%rsp)
	movl	24(%rbp), %edx
	movl	%edx, 8(%rsp)
	movl	16(%rbp), %edx
	movl	%edx, (%rsp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	$0, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 762 0
	mov	-20(%rbp), %eax
	movl	-168(%rbp), %edx
	movl	%edx, %nacl:392(%r15,%rax)
	.loc 2 763 0
	mov	-20(%rbp), %eax
	movq	-176(%rbp), %rdx
	movq	%rdx, %nacl:416(%r15,%rax)
	.loc 2 765 0
	movl	-20(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:72(%r15,%rax)
	.loc 2 766 0
	movl	-192(%rbp), %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:48(%r15,%rax)
	.loc 2 768 0
	movl	-192(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movslq	%eax,%rdx
	movl	$zio_checksum_table+12, %eax
	leaq	(%rdx,%rax), %rax
	movl	%nacl:(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L138
	.loc 2 775 0
	movq	-184(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 776 0
	movq	-184(%rbp), %rax
	movl	%eax, %edx
	movl	-24(%rbp), %ecx
	movl	-188(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	bcopy
	.loc 2 777 0
	movq	-184(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movl	-24(%rbp), %ebx
	movl	-20(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 779 0
	mov	-24(%rbp), %eax
	movq	-184(%rbp), %rdx
	subl	$40, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 780 0
	mov	-28(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %nacl:8(%r15,%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, %nacl:16(%r15,%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, %nacl:24(%r15,%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, %nacl:32(%r15,%rax)
	.align 32
.L138:
	.loc 2 783 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_write_phys, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 784 0
	naclaspq	$248, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE100:
	.size	zio_write_phys, .-zio_write_phys
	.align 32
.globl zio_vdev_child_io
	.type	zio_vdev_child_io, @function
zio_vdev_child_io:
.LFB101:
	.loc 2 793 0
	.cfi_startproc
	pushq	%rbp
.LCFI50:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI51:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	.loc 2 793 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_child_io, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 794 0
	movl	$13074432, -24(%rbp)
	.loc 2 797 0
	cmpl	$1, 16(%rbp)
	jne	.L141
	cmpl	$0, -40(%rbp)
	je	.L141
	.loc 2 804 0
	orl	$524288, -24(%rbp)
	.loc 2 805 0
	mov	-36(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-524289, %edx
	mov	-36(%rbp), %eax
	movl	%edx, %nacl:536(%r15,%rax)
	.align 32
.L141:
	.loc 2 810 0
	mov	-36(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$425366, %eax
	orl	$1, %eax
	.loc 2 808 0
	movl	%eax, %esi
	orl	32(%rbp), %esi
	movl	16(%rbp), %ebx
	mov	-36(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-36(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %r10d
	movq	-72(%rbp), %r9
	movl	-60(%rbp), %r8d
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %edi
	movl	%edi, 48(%rsp)
	movl	$14, 40(%rsp)
	movl	%esi, 32(%rsp)
	movl	24(%rbp), %esi
	movl	%esi, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	48(%rbp), %ebx
	movl	%ebx, 8(%rsp)
	movl	40(%rbp), %ebx
	movl	%ebx, (%rsp)
	movl	%r10d, %esi
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 813 0
	mov	-20(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %nacl:392(%r15,%rax)
	.loc 2 814 0
	mov	-20(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %nacl:416(%r15,%rax)
	.loc 2 816 0
	mov	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_vdev_child_io, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 817 0
	naclaspq	$136, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE101:
	.size	zio_vdev_child_io, .-zio_vdev_child_io
	.align 32
	.type	zio_destroy, @function
zio_destroy:
.LFB102:
	.loc 2 826 0
	.cfi_startproc
	pushq	%rbp
.LCFI52:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI53:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 826 0
	movq	8(%rbp), %rsi
	movl	$zio_destroy, %edi
	call	__cyg_profile_func_enter
	.loc 2 827 0
	movl	-4(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	zmutex_destroy
	.loc 2 828 0
	movl	-4(%rbp), %eax
	addl	$616, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_destroy
	.loc 2 829 0
	mov	-4(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L144
	.loc 2 830 0
	mov	-4(%rbp), %eax
	movq	%nacl:400(%r15,%rax), %rax
	leal	0(,%rax,4), %edx
	mov	-4(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 832 0
	mov	-4(%rbp), %eax
	movl	$0, %nacl:396(%r15,%rax)
	.loc 2 833 0
	mov	-4(%rbp), %eax
	movq	$0, %nacl:400(%r15,%rax)
	.align 32
.L144:
	.loc 2 835 0
	mov	zio_cache(%rip), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	umem_cache_free
	movq	8(%rbp), %rsi
	movl	$zio_destroy, %edi
	call	__cyg_profile_func_exit
	.loc 2 836 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE102:
	.size	zio_destroy, .-zio_destroy
	.section	.rodata
	.align 8
.LC43:
	.string	"zio->io_stage == ZIO_STAGE_OPEN"
	.text
	.align 32
.globl zio_wait
	.type	zio_wait, @function
zio_wait:
.LFB103:
	.loc 2 840 0
	.cfi_startproc
	pushq	%rbp
.LCFI54:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI55:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 840 0
	movq	8(%rbp), %rsi
	movl	$zio_wait, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 843 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L147
	movl	$__PRETTY_FUNCTION__.10134, %ecx
	movl	$843, %edx
	movl	$.LC12, %esi
	movl	$.LC43, %edi
	call	__assert_fail
	.align 32
.L147:
	.loc 2 844 0
	mov	-36(%rbp), %eax
	movl	$0, %nacl:560(%r15,%rax)
	.loc 2 846 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	zio_execute
	.loc 2 854 0
	mov	-36(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 855 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	zio_destroy
	.loc 2 857 0
	movl	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_wait, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 858 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE103:
	.size	zio_wait, .-zio_wait
	.align 32
.globl zio_nowait
	.type	zio_nowait, @function
zio_nowait:
.LFB104:
	.loc 2 862 0
	.cfi_startproc
	pushq	%rbp
.LCFI56:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI57:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 862 0
	movq	8(%rbp), %rsi
	movl	$zio_nowait, %edi
	call	__cyg_profile_func_enter
	.loc 2 863 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	zio_execute
	movq	8(%rbp), %rsi
	movl	$zio_nowait, %edi
	call	__cyg_profile_func_exit
	.loc 2 864 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE104:
	.size	zio_nowait, .-zio_nowait
	.align 32
.globl zio_interrupt
	.type	zio_interrupt, @function
zio_interrupt:
.LFB105:
	.loc 2 868 0
	.cfi_startproc
	pushq	%rbp
.LCFI58:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI59:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 868 0
	movq	8(%rbp), %rsi
	movl	$zio_interrupt, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 870 0
	movl	$zio_execute, %eax
	mov	%eax, %esi
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	addl	$32, %eax
	sall	$2, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	mov	%nacl:4(%r15,%rax), %ebx
	movl	-20(%rbp), %eax
	movl	$256, %ecx
	movl	%eax, %edx
	movl	%ebx, %edi
	call	taskq_dispatch
	movq	8(%rbp), %rsi
	movl	$zio_interrupt, %edi
	call	__cyg_profile_func_exit
	.loc 2 873 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE105:
	.size	zio_interrupt, .-zio_interrupt
	.align 32
	.type	zio_issue_async, @function
zio_issue_async:
.LFB106:
	.loc 2 877 0
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
	.loc 2 877 0
	movq	8(%rbp), %rsi
	movl	$zio_issue_async, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 879 0
	movl	$zio_execute, %eax
	mov	%eax, %esi
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	addl	$24, %eax
	sall	$2, %eax
	cltq
	leaq	(%rdx,%rax), %rax
	mov	%nacl:12(%r15,%rax), %ebx
	movl	-20(%rbp), %eax
	movl	$256, %ecx
	movl	%eax, %edx
	movl	%ebx, %edi
	call	taskq_dispatch
	.loc 2 882 0
	movl	$257, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_issue_async, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 883 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE106:
	.size	zio_issue_async, .-zio_issue_async
	.section	.rodata
.LC44:
	.string	"zio->io_stalled == 0"
	.text
	.align 32
	.type	zio_wait_for_children, @function
zio_wait_for_children:
.LFB107:
	.loc 2 892 0
	.cfi_startproc
	pushq	%rbp
.LCFI62:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI63:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 2 892 0
	movq	8(%rbp), %rsi
	movl	$zio_wait_for_children, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 893 0
	movl	$256, -20(%rbp)
	.loc 2 895 0
	movl	-36(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 896 0
	mov	-36(%rbp), %eax
	movzbl	%nacl:504(%r15,%rax), %eax
	testb	%al, %al
	je	.L156
	movl	$__PRETTY_FUNCTION__.10163, %ecx
	movl	$896, %edx
	movl	$.LC12, %esi
	movl	$.LC44, %edi
	call	__assert_fail
	.align 32
.L156:
	.loc 2 897 0
	mov	-44(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L157
	.loc 2 898 0
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	mov	-36(%rbp), %eax
	movb	%dl, %nacl:504(%r15,%rax)
	.loc 2 899 0
	movl	$257, -20(%rbp)
	.align 32
.L157:
	.loc 2 901 0
	movl	-36(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 903 0
	movl	-20(%rbp), %ebx
	movq	8(%rbp), %rsi
	movl	$zio_wait_for_children, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 904 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE107:
	.size	zio_wait_for_children, .-zio_wait_for_children
	.align 32
	.type	zio_add_failed_vdev, @function
zio_add_failed_vdev:
.LFB108:
	.loc 2 908 0
	.cfi_startproc
	pushq	%rbp
.LCFI64:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI65:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 2 908 0
	movq	8(%rbp), %rsi
	movl	$zio_add_failed_vdev, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 909 0
	mov	-36(%rbp), %eax
	movq	%nacl:400(%r15,%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 915 0
	mov	-40(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L160
	movl	$0, %ebx
	jmp	.L161
	.align 32
.L160:
	.loc 2 918 0
	movl	$0, -20(%rbp)
	jmp	.L162
	.align 32
.L164:
	.loc 2 919 0
	mov	-36(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	movl	-20(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	mov	%nacl:(%r15,%rax), %edx
	mov	-40(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %eax
	cmpl	%eax, %edx
	jne	.L163
	movl	$0, %ebx
	jmp	.L161
	.align 32
.L163:
	.loc 2 918 0
	addl	$1, -20(%rbp)
	.align 32
.L162:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jb	.L164
	.loc 2 923 0
	movq	-32(%rbp), %rax
	addq	$1, %rax
	sall	$2, %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	umem_zalloc
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.loc 2 924 0
	mov	-36(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L165
	.loc 2 925 0
	movq	-32(%rbp), %rax
	leal	0(,%rax,4), %edx
	mov	-36(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %ecx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	bcopy
	.loc 2 927 0
	movq	-32(%rbp), %rax
	leal	0(,%rax,4), %edx
	mov	-36(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	umem_free
	.align 32
.L165:
	.loc 2 929 0
	mov	-36(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:396(%r15,%rax)
	.loc 2 930 0
	mov	-36(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	movq	-32(%rbp), %rdx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	mov	-40(%rbp), %edx
	mov	%nacl:392(%r15,%rdx), %edx
	movl	%edx, %nacl:(%r15,%rax)
	.loc 2 931 0
	mov	-36(%rbp), %eax
	movq	%nacl:400(%r15,%rax), %rax
	leaq	1(%rax), %rdx
	mov	-36(%rbp), %eax
	movq	%rdx, %nacl:400(%r15,%rax)
	movl	$1, %ebx
	.align 32
.L161:
	movq	8(%rbp), %rsi
	movl	$zio_add_failed_vdev, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 932 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE108:
	.size	zio_add_failed_vdev, .-zio_add_failed_vdev
	.section	.rodata
.LC45:
	.string	"0"
.LC46:
	.string	">"
.LC47:
	.string	"*countp"
	.text
	.align 32
	.type	zio_notify_parent, @function
zio_notify_parent:
.LFB109:
	.loc 2 936 0
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
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	.loc 2 936 0
	movq	8(%rbp), %rsi
	movl	$zio_notify_parent, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 937 0
	mov	-52(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 939 0
	movl	-44(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 940 0
	mov	-44(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L171
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L171
	.loc 2 941 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %edx
	mov	-44(%rbp), %eax
	movl	%edx, %nacl:528(%r15,%rax)
	.loc 2 942 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L171
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	cmpl	$95, %eax
	je	.L171
	.loc 2 943 0
	movl	-52(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_add_failed_vdev
	.align 32
.L171:
.LBB16:
	.loc 2 945 0
	mov	-60(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.L172
.LBB17:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC46, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC45, %r9d
	movl	$.LC46, %r8d
	movl	$.LC47, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$945, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L172:
.LBE17:
.LBE16:
	.loc 2 946 0
	mov	-60(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	leaq	-1(%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L173
	mov	-44(%rbp), %eax
	movzbl	%nacl:504(%r15,%rax), %eax
	movzbl	%al, %eax
	cmpl	-56(%rbp), %eax
	jne	.L173
	.loc 2 947 0
	mov	-44(%rbp), %eax
	movb	$0, %nacl:504(%r15,%rax)
	.loc 2 948 0
	movl	-44(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 949 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	zio_execute
	.loc 2 946 0
	jmp	.L174
	.align 32
.L173:
	.loc 2 951 0
	movl	-44(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L174:
	movq	8(%rbp), %rsi
	movl	$zio_notify_parent, %edi
	call	__cyg_profile_func_exit
	.loc 2 953 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE109:
	.size	zio_notify_parent, .-zio_notify_parent
	.align 32
.globl zio_wait_for_children_ready
	.type	zio_wait_for_children_ready, @function
zio_wait_for_children_ready:
.LFB110:
	.loc 2 957 0
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
	movl	%edi, -20(%rbp)
	.loc 2 957 0
	movq	8(%rbp), %rsi
	movl	$zio_wait_for_children_ready, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 958 0
	movl	-20(%rbp), %eax
	addl	$544, %eax
	mov	%eax, %edx
	movl	-20(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	zio_wait_for_children
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_wait_for_children_ready, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 960 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE110:
	.size	zio_wait_for_children_ready, .-zio_wait_for_children_ready
	.align 32
.globl zio_wait_for_children_done
	.type	zio_wait_for_children_done, @function
zio_wait_for_children_done:
.LFB111:
	.loc 2 964 0
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
	.loc 2 964 0
	movq	8(%rbp), %rsi
	movl	$zio_wait_for_children_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 965 0
	movl	-20(%rbp), %eax
	addl	$552, %eax
	mov	%eax, %edx
	movl	-20(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	call	zio_wait_for_children
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_wait_for_children_done, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 967 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE111:
	.size	zio_wait_for_children_done, .-zio_wait_for_children_done
	.align 32
	.type	zio_read_init, @function
zio_read_init:
.LFB112:
	.loc 2 971 0
	.cfi_startproc
	pushq	%rbp
.LCFI72:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI73:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -68(%rbp)
	.loc 2 971 0
	movq	8(%rbp), %rsi
	movl	$zio_read_init, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 972 0
	mov	-68(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 974 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	andl	$255, %eax
	cmpq	$2, %rax
	je	.L181
.LBB18:
	.loc 2 975 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	movq	%rax, -48(%rbp)
	.loc 2 976 0
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %eax
	movl	%eax, -36(%rbp)
	.loc 2 978 0
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ebx
	movl	-68(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 979 0
	mov	-68(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$2097152, %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:536(%r15,%rax)
	.align 32
.L181:
.LBE18:
	.loc 2 982 0
	mov	-52(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jns	.L182
.LBB19:
	.loc 2 983 0
	movq	$512, -32(%rbp)
	.loc 2 984 0
	movq	-32(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 986 0
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ebx
	movl	-68(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 987 0
	mov	-68(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$1048576, %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:536(%r15,%rax)
	.align 32
.L182:
.LBE19:
	.loc 2 990 0
	mov	-52(%rbp), %eax
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
	jne	.L183
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$56, %rax
	andl	$31, %eax
	testq	%rax, %rax
	jne	.L183
	.loc 2 991 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$16, %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L183:
	.loc 2 993 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_read_init, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 994 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE112:
	.size	zio_read_init, .-zio_read_init
	.align 32
	.type	zio_ready, @function
zio_ready:
.LFB113:
	.loc 2 998 0
	.cfi_startproc
	pushq	%rbp
.LCFI74:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI75:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 998 0
	movq	8(%rbp), %rsi
	movl	$zio_ready, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 999 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1001 0
	mov	-36(%rbp), %eax
	mov	%nacl:236(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L186
	.loc 2 1002 0
	mov	-36(%rbp), %eax
	mov	%nacl:236(%r15,%rax), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	.align 32
.L186:
	.loc 2 1004 0
	cmpl	$0, -20(%rbp)
	je	.L187
	.loc 2 1005 0
	movl	-20(%rbp), %eax
	addl	$544, %eax
	mov	%eax, %edx
	movl	-36(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	zio_notify_parent
	.align 32
.L187:
	.loc 2 1008 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L188
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %edx
	movl	-36(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %eax
	cmpl	%eax, %edx
	je	.L188
	.loc 2 1009 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %edx
	mov	-36(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:80(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:88(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:96(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:104(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:112(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:120(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:128(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:136(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:144(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:152(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:160(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:168(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:176(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:184(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:192(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:200(%r15,%rax)
	.align 32
.L188:
	.loc 2 1011 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_ready, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1012 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE113:
	.size	zio_ready, .-zio_ready
	.section	.rodata
	.align 8
.LC48:
	.string	"pio->io_stage <= ZIO_STAGE_WAIT_FOR_CHILDREN_DONE"
	.text
	.align 32
	.type	zio_vdev_retry_io, @function
zio_vdev_retry_io:
.LFB114:
	.loc 2 1016 0
	.cfi_startproc
	pushq	%rbp
.LCFI76:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI77:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 1016 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_retry_io, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1017 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1025 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %edx
	mov	-36(%rbp), %eax
	movq	%nacl:(%r15,%rdx), %rcx
	movq	%rcx, %nacl:248(%r15,%rax)
	movq	%nacl:8(%r15,%rdx), %rcx
	movq	%rcx, %nacl:256(%r15,%rax)
	movq	%nacl:16(%r15,%rdx), %rcx
	movq	%rcx, %nacl:264(%r15,%rax)
	movq	%nacl:24(%r15,%rdx), %rcx
	movq	%rcx, %nacl:272(%r15,%rax)
	movq	%nacl:32(%r15,%rdx), %rcx
	movq	%rcx, %nacl:280(%r15,%rax)
	movq	%nacl:40(%r15,%rdx), %rcx
	movq	%rcx, %nacl:288(%r15,%rax)
	movq	%nacl:48(%r15,%rdx), %rcx
	movq	%rcx, %nacl:296(%r15,%rax)
	movq	%nacl:56(%r15,%rdx), %rcx
	movq	%rcx, %nacl:304(%r15,%rax)
	movq	%nacl:64(%r15,%rdx), %rcx
	movq	%rcx, %nacl:312(%r15,%rax)
	movq	%nacl:72(%r15,%rdx), %rcx
	movq	%rcx, %nacl:320(%r15,%rax)
	movq	%nacl:80(%r15,%rdx), %rcx
	movq	%rcx, %nacl:328(%r15,%rax)
	movq	%nacl:88(%r15,%rdx), %rcx
	movq	%rcx, %nacl:336(%r15,%rax)
	movq	%nacl:96(%r15,%rdx), %rcx
	movq	%rcx, %nacl:344(%r15,%rax)
	movq	%nacl:104(%r15,%rdx), %rcx
	movq	%rcx, %nacl:352(%r15,%rax)
	movq	%nacl:112(%r15,%rdx), %rcx
	movq	%rcx, %nacl:360(%r15,%rax)
	movq	%nacl:120(%r15,%rdx), %rdx
	movq	%rdx, %nacl:368(%r15,%rax)
	.loc 2 1031 0
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	-36(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	$0, %nacl:80(%r15,%rax)
	.loc 2 1032 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	zio_reset
	.loc 2 1034 0
	cmpl	$0, -20(%rbp)
	je	.L191
	.loc 2 1039 0
	movl	-20(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1040 0
	mov	-20(%rbp), %eax
	movq	%nacl:544(%r15,%rax), %rax
	leaq	1(%rax), %rdx
	mov	-20(%rbp), %eax
	movq	%rdx, %nacl:544(%r15,%rax)
	.loc 2 1047 0
	mov	-20(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L192
	mov	-20(%rbp), %eax
	movl	%nacl:540(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L192
	.loc 2 1048 0
	mov	-20(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$524288, %edx
	mov	-20(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L192:
	.loc 2 1050 0
	mov	-20(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$18, %eax
	jbe	.L193
	movl	$__PRETTY_FUNCTION__.10334, %ecx
	movl	$1050, %edx
	movl	$.LC12, %esi
	movl	$.LC48, %edi
	call	__assert_fail
	.align 32
.L193:
	.loc 2 1051 0
	movl	-20(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.align 32
.L191:
	.loc 2 1058 0
	mov	-36(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-524289, %edx
	mov	-36(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1059 0
	mov	-36(%rbp), %eax
	movl	$0, %nacl:528(%r15,%rax)
	.loc 2 1061 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_vdev_retry_io, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1062 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE114:
	.size	zio_vdev_retry_io, .-zio_vdev_retry_io
	.align 32
.globl zio_vdev_resume_io
	.type	zio_vdev_resume_io, @function
zio_vdev_resume_io:
.LFB115:
	.loc 2 1066 0
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
	movl	%edi, -36(%rbp)
	.loc 2 1066 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_resume_io, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1069 0
	movl	-36(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1076 0
	movl	-36(%rbp), %eax
	addl	$1540, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	jmp	.L196
	.align 32
.L201:
.LBB20:
	.loc 2 1078 0
	movl	$0, -20(%rbp)
	.loc 2 1081 0
	mov	-24(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L207
	mov	-24(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L208
	.align 32
.L198:
	.loc 2 1083 0
	mov	-24(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %eax
	movl	%eax, %edi
	call	vdev_probe
	movl	%eax, -20(%rbp)
	.loc 2 1084 0
	cmpl	$0, -20(%rbp)
	je	.L199
	.loc 2 1085 0
	movl	-36(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1086 0
	movl	-20(%rbp), %ebx
	jmp	.L200
	.align 32
.L207:
	.loc 2 1082 0
	nop
	jmp	.L199
	.align 32
.L208:
	nop
	.align 32
.L199:
.LBE20:
	.loc 2 1077 0
	movl	-36(%rbp), %eax
	addl	$1540, %eax
	mov	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_next
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	.align 32
.L196:
	.loc 2 1076 0
	cmpl	$0, -24(%rbp)
	jne	.L201
	.loc 2 1093 0
	movl	-36(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	vdev_clear
	.loc 2 1095 0
	mov	-36(%rbp), %eax
	movl	$0, %nacl:92(%r15,%rax)
	.loc 2 1096 0
	jmp	.L202
	.align 32
.L204:
	.loc 2 1097 0
	movl	-36(%rbp), %eax
	addl	$1540, %eax
	mov	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_remove
	.loc 2 1098 0
	mov	-24(%rbp), %eax
	movl	$0, %nacl:528(%r15,%rax)
	.loc 2 1106 0
	movl	zio_write_retry(%rip), %eax
	testl	%eax, %eax
	je	.L203
	mov	-24(%rbp), %eax
	movl	%nacl:540(%r15,%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L203
	.loc 2 1107 0
	mov	-24(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$524288, %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1108 0
	mov	-24(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	leal	-1(%rax), %edx
	mov	-24(%rbp), %eax
	movl	%edx, %nacl:496(%r15,%rax)
	.loc 2 1106 0
	jmp	.L202
	.align 32
.L203:
	.loc 2 1110 0
	mov	-24(%rbp), %eax
	movl	$14, %nacl:496(%r15,%rax)
	.align 32
.L202:
	.loc 2 1096 0
	movl	-36(%rbp), %eax
	addl	$1540, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	list_head
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L204
	.loc 2 1117 0
	movl	-36(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1126 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	spa_state
	cmpl	$6, %eax
	jne	.L205
	.loc 2 1127 0
	movl	$5, %ebx
	jmp	.L200
	.align 32
.L205:
	.loc 2 1129 0
	movl	-36(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1130 0
	movl	-36(%rbp), %eax
	addl	$1560, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_broadcast
	.loc 2 1131 0
	movl	-36(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1133 0
	movl	$0, %ebx
	.align 32
.L200:
	movq	8(%rbp), %rsi
	movl	$zio_vdev_resume_io, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1134 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE115:
	.size	zio_vdev_resume_io, .-zio_vdev_resume_io
	.align 32
	.type	zio_vdev_suspend_io, @function
zio_vdev_suspend_io:
.LFB116:
	.loc 2 1138 0
	.cfi_startproc
	pushq	%rbp
.LCFI80:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI81:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 1138 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_suspend_io, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1139 0
	mov	-36(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1146 0
	mov	-20(%rbp), %eax
	movl	$6, %nacl:92(%r15,%rax)
	.loc 2 1148 0
	movl	-20(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1149 0
	movl	-20(%rbp), %eax
	addl	$1540, %eax
	mov	%eax, %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	list_insert_tail
	.loc 2 1153 0
	movl	-20(%rbp), %eax
	addl	$1560, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_broadcast
	.loc 2 1155 0
	movl	-20(%rbp), %eax
	addl	$1608, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1157 0
	movl	$257, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_vdev_suspend_io, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1158 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE116:
	.size	zio_vdev_suspend_io, .-zio_vdev_suspend_io
	.section	.rodata
.LC49:
	.string	""
.LC50:
	.string	"bad checksum"
.LC51:
	.string	"I/O failure"
	.align 8
.LC52:
	.string	"ZFS: %s (%s on %s off %llx: zio %p %s): error %d"
	.align 8
.LC53:
	.string	"Pool '%s' has encountered an uncorrectable I/O failure and the failure mode property for this pool is set to panic."
.LC54:
	.string	"io_failure"
	.text
	.align 32
	.type	zio_handle_io_failure, @function
zio_handle_io_failure:
.LFB117:
	.loc 2 1162 0
	.cfi_startproc
	pushq	%rbp
.LCFI82:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI83:
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	.loc 2 1162 0
	movq	8(%rbp), %rsi
	movl	$zio_handle_io_failure, %edi
	.cfi_offset 3, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	call	__cyg_profile_func_enter
	.loc 2 1163 0
	mov	-52(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1164 0
	mov	-52(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 1168 0
	movl	$0, %esi
	movl	$320, %edi
	call	umem_alloc
	mov	%eax, %eax
	movl	%eax, -36(%rbp)
	.loc 2 1169 0
	cmpl	$0, -36(%rbp)
	je	.L212
	.loc 2 1170 0
	cmpl	$0, -40(%rbp)
	jne	.L213
	movl	-52(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %eax
	jmp	.L214
	.align 32
.L213:
	mov	-40(%rbp), %eax
	.align 32
.L214:
	movl	-36(%rbp), %ecx
	movl	%eax, %edx
	movl	$320, %esi
	movl	%ecx, %edi
	call	sprintf_blkptr
	.align 32
.L212:
	.loc 2 1173 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %r12d
	cmpl	$0, -36(%rbp)
	je	.L215
	mov	-36(%rbp), %ebx
	jmp	.L216
	.align 32
.L215:
	movl	$.LC49, %eax
	mov	%eax, %ebx
	.align 32
.L216:
	mov	-52(%rbp), %eax
	movq	%nacl:416(%r15,%rax), %r13
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	vdev_description
	mov	%eax, %esi
	.loc 2 1175 0
	mov	-52(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	.loc 2 1173 0
	sall	$2, %eax
	cltq
	mov	%nacl:zio_type_name(%r15,%rax), %ecx
	.loc 2 1174 0
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	.loc 2 1173 0
	cmpl	$52, %eax
	jne	.L217
	movl	$.LC50, %eax
	mov	%eax, %eax
	jmp	.L218
	.align 32
.L217:
	movl	$.LC51, %eax
	mov	%eax, %eax
	.align 32
.L218:
	movl	%r12d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	-52(%rbp), %edx
	movl	%edx, (%rsp)
	movq	%r13, %r9
	movl	%esi, %r8d
	movl	%eax, %edx
	movl	$.LC52, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	cmn_err
	.loc 2 1178 0
	cmpl	$0, -36(%rbp)
	je	.L219
	.loc 2 1179 0
	movl	-36(%rbp), %eax
	movl	$320, %esi
	movl	%eax, %edi
	call	umem_free
	.align 32
.L219:
	.loc 2 1182 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	spa_get_failmode
	cmpb	$2, %al
	jne	.L220
	.loc 2 1183 0
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	spa_name
	mov	%eax, %eax
	movl	%eax, %esi
	movl	$.LC53, %edi
	movl	$0, %eax
	call	panic
	.align 32
.L220:
	.loc 2 1187 0
	movl	-44(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$.LC54, %edi
	call	zfs_ereport_post
	.loc 2 1188 0
	mov	-44(%rbp), %eax
	mov	%nacl:264(%r15,%rax), %eax
	cmpl	%eax, -56(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movl	-56(%rbp), %eax
	movl	$11, %ecx
	movl	$5, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	vdev_set_state
	movq	8(%rbp), %rsi
	movl	$zio_handle_io_failure, %edi
	call	__cyg_profile_func_exit
	.loc 2 1190 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE117:
	.size	zio_handle_io_failure, .-zio_handle_io_failure
	.section	.rodata
	.align 8
.LC55:
	.string	"zio->io_children_notready == 0"
.LC56:
	.string	"zio->io_children_notdone == 0"
.LC57:
	.string	"bp->blk_pad[0] == 0"
.LC58:
	.string	"bp->blk_pad[1] == 0"
.LC59:
	.string	"bp->blk_pad[2] == 0"
	.align 8
.LC60:
	.string	"bcmp(bp, &zio->io_bp_copy, sizeof (blkptr_t)) == 0"
	.align 8
.LC61:
	.string	"!((0 - ((((bp)->blk_prop) >> (63)) & ((1ULL << (1)) - 1))) != (-1ULL))"
	.align 8
.LC62:
	.ascii	"(((((&(bp)->blk_dva[0])->dva_word[1]) >> (63)) & ((1ULL << ("
	.ascii	"1)) - 1)) + ((((&(bp)->blk_dva[1])->dva_word[1]) >> (63)) & "
	.ascii	"((1ULL << (1)) - 1)) + ((((&(bp)->blk_dva[2])->dva_word[1]) "
	.ascii	">> (63)) & ((1ULL << (1)) - 1))) == 0 || ((((((&(bp)->blk_dv"
	.ascii	"a[0])->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1)) + ((((&("
	.ascii	"bp)->blk_dva[1])->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1"
	.ascii	")) + ((((&(bp)->blk_dva[2])->dva_word[1]) >> (63)) & ((1ULL "
	.ascii	"<< (1)) - 1))) == (!!((((((&(bp)"
	.string	"->blk_dva[0])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(bp)->blk_dva[1])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(bp)->blk_dva[2])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9))))"
.LC63:
	.string	"io"
.LC64:
	.string	"data"
.LC65:
	.string	"!(zio->io_flags & 0x80000)"
	.text
	.align 32
	.type	zio_assess, @function
zio_assess:
.LFB118:
	.loc 2 1194 0
	.cfi_startproc
	pushq	%rbp
.LCFI84:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI85:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$104, %r15
	movl	%edi, -68(%rbp)
	.loc 2 1194 0
	movq	8(%rbp), %rsi
	movl	$zio_assess, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1195 0
	mov	-68(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 1196 0
	mov	-68(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -48(%rbp)
	.loc 2 1197 0
	mov	-68(%rbp), %eax
	movl	%nacl:392(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1199 0
	mov	-68(%rbp), %eax
	movq	%nacl:544(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L223
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1199, %edx
	movl	$.LC12, %esi
	movl	$.LC55, %edi
	call	__assert_fail
	.align 32
.L223:
	.loc 2 1200 0
	mov	-68(%rbp), %eax
	movq	%nacl:552(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L224
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1200, %edx
	movl	$.LC12, %esi
	movl	$.LC56, %edi
	call	__assert_fail
	.align 32
.L224:
	.loc 2 1202 0
	cmpl	$0, -48(%rbp)
	je	.L225
	.loc 2 1203 0
	mov	-48(%rbp), %eax
	movq	%nacl:56(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L226
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1203, %edx
	movl	$.LC12, %esi
	movl	$.LC57, %edi
	call	__assert_fail
	.align 32
.L226:
	.loc 2 1204 0
	mov	-48(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L227
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1204, %edx
	movl	$.LC12, %esi
	movl	$.LC58, %edi
	call	__assert_fail
	.align 32
.L227:
	.loc 2 1205 0
	mov	-48(%rbp), %eax
	movq	%nacl:72(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L228
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1205, %edx
	movl	$.LC12, %esi
	movl	$.LC59, %edi
	call	__assert_fail
	.align 32
.L228:
	.loc 2 1206 0
	movl	-68(%rbp), %eax
	addl	$80, %eax
	mov	%eax, %ecx
	movl	-48(%rbp), %eax
	movl	$128, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	bcmp
	testl	%eax, %eax
	je	.L229
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1206, %edx
	movl	$.LC12, %esi
	movl	$.LC60, %edi
	call	__assert_fail
	.align 32
.L229:
	.loc 2 1207 0
	mov	-68(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	cmpl	$2, %eax
	jne	.L225
	mov	-48(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L225
	.loc 2 1208 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$1024, %eax
	.loc 2 1207 0
	testl	%eax, %eax
	jne	.L225
	.loc 2 1209 0
	mov	-48(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	sarq	$63, %rax
	cmpq	$-1, %rax
	je	.L230
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1209, %edx
	movl	$.LC12, %esi
	movl	$.LC61, %edi
	call	__assert_fail
	.align 32
.L230:
	.loc 2 1210 0
	mov	-68(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L231
.LBB21:
	.loc 2 1211 0
	mov	-68(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	mov	-48(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	-48(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-48(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L231
.LBB22:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -24(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC30, %r9d
	movl	$.LC19, %r8d
	movl	$.LC31, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-24(%rbp), %eax
	movl	$1211, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L231:
.LBE22:
.LBE21:
	.loc 2 1212 0
	mov	-48(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	movl	-48(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rax
	shrq	$63, %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rax
	shrq	$63, %rax
	leaq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L225
	mov	-48(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	movl	-48(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rax
	shrq	$63, %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rax
	shrq	$63, %rax
	leaq	(%rdx,%rax), %rcx
	mov	-48(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	-48(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-48(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	cmpq	%rax, %rcx
	je	.L225
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1213, %edx
	movl	$.LC12, %esi
	movl	$.LC62, %edi
	call	__assert_fail
	.align 32
.L225:
	.loc 2 1222 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L232
	.loc 2 1223 0
	mov	-68(%rbp), %eax
	movl	$85, %nacl:528(%r15,%rax)
	.align 32
.L232:
	.loc 2 1225 0
	cmpl	$0, -44(%rbp)
	je	.L233
	.loc 2 1226 0
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	vdev_stat_update
	.align 32
.L233:
	.loc 2 1228 0
	mov	-68(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L234
	.loc 2 1235 0
	mov	-68(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	cmpl	$52, %eax
	je	.L235
	cmpl	$0, -44(%rbp)
	je	.L235
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	vdev_is_dead
	testl	%eax, %eax
	jne	.L235
	.loc 2 1236 0
	movl	-68(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %esi
	movl	$.LC63, %edi
	call	zfs_ereport_post
	.align 32
.L235:
	.loc 2 1238 0
	mov	-68(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	cmpl	$5, %eax
	je	.L236
	.loc 2 1239 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$2048, %eax
	.loc 2 1238 0
	testl	%eax, %eax
	jne	.L237
	.align 32
.L236:
	.loc 2 1240 0
	mov	-68(%rbp), %eax
	mov	%nacl:224(%r15,%rax), %eax
	.loc 2 1238 0
	cmpl	%eax, -68(%rbp)
	jne	.L237
	.loc 2 1246 0
	movl	-68(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	spa_log_error
	.loc 2 1248 0
	movl	-68(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$.LC64, %edi
	call	zfs_ereport_post
	.align 32
.L237:
	.loc 2 1258 0
	movl	zio_write_retry(%rip), %eax
	testl	%eax, %eax
	jne	.L238
	movzwl	zio_io_fail_shift(%rip), %eax
	testw	%ax, %ax
	je	.L239
	.align 32
.L238:
	.loc 2 1259 0
	mov	-68(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	.loc 2 1258 0
	cmpl	$28, %eax
	je	.L239
	.loc 2 1259 0
	mov	-68(%rbp), %eax
	movl	%nacl:540(%r15,%rax), %eax
	andl	$1024, %eax
	.loc 2 1258 0
	testl	%eax, %eax
	je	.L239
	.loc 2 1260 0
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	zio_vdev_retry_io
	movl	%eax, %ebx
	jmp	.L240
	.align 32
.L239:
	.loc 2 1262 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L241
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1262, %edx
	movl	$.LC12, %esi
	movl	$.LC65, %edi
	call	__assert_fail
	.align 32
.L241:
	.loc 2 1272 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L234
.LBB23:
	.loc 2 1275 0
	movl	$0, -20(%rbp)
	jmp	.L242
	.align 32
.L243:
	.loc 2 1277 0
	mov	-68(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	movl	-20(%rbp), %edx
	sall	$2, %edx
	leal	(%rdx,%rax), %eax
	mov	%eax, %eax
	.loc 2 1276 0
	mov	%nacl:(%r15,%rax), %edx
	movl	-68(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_handle_io_failure
	.loc 2 1275 0
	addl	$1, -20(%rbp)
	.align 32
.L242:
	movl	-20(%rbp), %eax
	movslq	%eax,%rdx
	mov	-68(%rbp), %eax
	movq	%nacl:400(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jb	.L243
	.loc 2 1279 0
	mov	-68(%rbp), %eax
	movq	%nacl:400(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L244
	.loc 2 1280 0
	cmpl	$0, -44(%rbp)
	jne	.L245
	mov	-52(%rbp), %eax
	mov	%nacl:264(%r15,%rax), %eax
	jmp	.L246
	.align 32
.L245:
	mov	-44(%rbp), %eax
	.align 32
.L246:
	movl	-68(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_handle_io_failure
	.align 32
.L244:
	.loc 2 1283 0
	mov	-68(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L247
	.loc 2 1284 0
	mov	-68(%rbp), %eax
	movq	%nacl:400(%r15,%rax), %rax
	leal	0(,%rax,4), %edx
	mov	-68(%rbp), %eax
	mov	%nacl:396(%r15,%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	umem_free
	.loc 2 1287 0
	mov	-68(%rbp), %eax
	movl	$0, %nacl:396(%r15,%rax)
	.loc 2 1288 0
	mov	-68(%rbp), %eax
	movq	$0, %nacl:400(%r15,%rax)
	.align 32
.L247:
	.loc 2 1290 0
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	zio_vdev_suspend_io
	movl	%eax, %ebx
	jmp	.L240
	.align 32
.L234:
.LBE23:
	.loc 2 1293 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L248
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1293, %edx
	movl	$.LC12, %esi
	movl	$.LC65, %edi
	call	__assert_fail
	.align 32
.L248:
	.loc 2 1294 0
	mov	-68(%rbp), %eax
	movq	%nacl:544(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L249
	movl	$__PRETTY_FUNCTION__.10466, %ecx
	movl	$1294, %edx
	movl	$.LC12, %esi
	movl	$.LC55, %edi
	call	__assert_fail
	.align 32
.L249:
	.loc 2 1296 0
	movl	$256, %ebx
	.align 32
.L240:
	movq	8(%rbp), %rsi
	movl	$zio_assess, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1297 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE118:
	.size	zio_assess, .-zio_assess
	.section	.rodata
	.align 8
.LC66:
	.string	"zio->io_delegate_list == ((void *)0)"
	.align 8
.LC67:
	.string	"zio->io_delegate_next == ((void *)0)"
	.align 8
.LC68:
	.string	"zio->io_stage == ZIO_STAGE_DONE"
	.text
	.align 32
	.type	zio_done, @function
zio_done:
.LFB119:
	.loc 2 1301 0
	.cfi_startproc
	pushq	%rbp
.LCFI86:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI87:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 1301 0
	movq	8(%rbp), %rsi
	movl	$zio_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1302 0
	mov	-36(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 2 1303 0
	mov	-36(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1305 0
	mov	-36(%rbp), %eax
	movq	%nacl:544(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L252
	movl	$__PRETTY_FUNCTION__.10657, %ecx
	movl	$1305, %edx
	movl	$.LC12, %esi
	movl	$.LC55, %edi
	call	__assert_fail
	.align 32
.L252:
	.loc 2 1306 0
	mov	-36(%rbp), %eax
	movq	%nacl:552(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L253
	movl	$__PRETTY_FUNCTION__.10657, %ecx
	movl	$1306, %edx
	movl	$.LC12, %esi
	movl	$.LC56, %edi
	call	__assert_fail
	.align 32
.L253:
	.loc 2 1308 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	zio_clear_transform_stack
	.loc 2 1310 0
	mov	-36(%rbp), %eax
	mov	%nacl:240(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L254
	.loc 2 1311 0
	mov	-36(%rbp), %eax
	mov	%nacl:240(%r15,%rax), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	.align 32
.L254:
	.loc 2 1313 0
	mov	-36(%rbp), %eax
	mov	%nacl:476(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L255
	movl	$__PRETTY_FUNCTION__.10657, %ecx
	movl	$1313, %edx
	movl	$.LC12, %esi
	movl	$.LC66, %edi
	call	__assert_fail
	.align 32
.L255:
	.loc 2 1314 0
	mov	-36(%rbp), %eax
	mov	%nacl:480(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L256
	movl	$__PRETTY_FUNCTION__.10657, %ecx
	movl	$1314, %edx
	movl	$.LC12, %esi
	movl	$.LC67, %edi
	call	__assert_fail
	.align 32
.L256:
	.loc 2 1316 0
	cmpl	$0, -32(%rbp)
	je	.L257
.LBB24:
	.loc 2 1319 0
	movl	-32(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1320 0
	mov	-36(%rbp), %eax
	movl	%nacl:216(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 1321 0
	mov	-36(%rbp), %eax
	movl	%nacl:212(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1322 0
	cmpl	$0, -24(%rbp)
	je	.L258
	.loc 2 1323 0
	mov	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %nacl:212(%r15,%rax)
	.align 32
.L258:
	.loc 2 1324 0
	cmpl	$0, -20(%rbp)
	je	.L259
	.loc 2 1325 0
	mov	-20(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:216(%r15,%rax)
	.align 32
.L259:
	.loc 2 1326 0
	mov	-32(%rbp), %eax
	mov	%nacl:208(%r15,%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L260
	.loc 2 1327 0
	mov	-32(%rbp), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %nacl:208(%r15,%rax)
	.align 32
.L260:
	.loc 2 1328 0
	movl	-32(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	.loc 2 1330 0
	movl	-32(%rbp), %eax
	addl	$552, %eax
	mov	%eax, %edx
	movl	-36(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	call	zio_notify_parent
	.align 32
.L257:
.LBE24:
	.loc 2 1338 0
	mov	-36(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L261
	.loc 2 1339 0
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	spa_config_exit
	.align 32
.L261:
	.loc 2 1341 0
	mov	-36(%rbp), %eax
	mov	%nacl:560(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L262
	.loc 2 1342 0
	movl	-36(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1343 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$23, %eax
	je	.L263
	movl	$__PRETTY_FUNCTION__.10657, %ecx
	movl	$1343, %edx
	movl	$.LC12, %esi
	movl	$.LC68, %edi
	call	__assert_fail
	.align 32
.L263:
	.loc 2 1344 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	movl	%eax, %edx
	mov	-36(%rbp), %eax
	movb	%dl, %nacl:504(%r15,%rax)
	.loc 2 1345 0
	movl	-36(%rbp), %eax
	addl	$616, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	cv_broadcast
	.loc 2 1346 0
	movl	-36(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	jmp	.L264
	.align 32
.L262:
	.loc 2 1348 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	zio_destroy
	.align 32
.L264:
	.loc 2 1351 0
	movl	$257, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_done, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1352 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE119:
	.size	zio_done, .-zio_done
	.section	.rodata
.LC69:
	.string	"((bp)->blk_birth == 0)"
.LC70:
	.string	"csize != 0"
	.text
	.align 32
	.type	zio_write_compress, @function
zio_write_compress:
.LFB120:
	.loc 2 1361 0
	.cfi_startproc
	pushq	%rbp
.LCFI88:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI89:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$136, %r15
	movl	%edi, -100(%rbp)
	.loc 2 1361 0
	movq	8(%rbp), %rsi
	movl	$zio_write_compress, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1362 0
	mov	-100(%rbp), %eax
	movl	%nacl:52(%r15,%rax), %eax
	movl	%eax, -64(%rbp)
	.loc 2 1363 0
	mov	-100(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 2 1365 0
	mov	-100(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 1366 0
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 1367 0
	movq	$0, -88(%rbp)
	.loc 2 1370 0
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-100(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L267
	.loc 2 1380 0
	mov	-100(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	movl	%eax, %edi
	call	spa_sync_pass
	movl	%eax, -44(%rbp)
	.loc 2 1381 0
	movl	zio_sync_pass+4(%rip), %eax
	cmpl	-44(%rbp), %eax
	jge	.L282
	.loc 2 1382 0
	movl	$2, -64(%rbp)
	jmp	.L269
	.align 32
.L267:
	.loc 2 1384 0
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L270
	movl	$__PRETTY_FUNCTION__.10715, %ecx
	movl	$1384, %edx
	movl	$.LC12, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L270:
	.loc 2 1385 0
	movl	$1, -44(%rbp)
	jmp	.L269
	.align 32
.L282:
	.loc 2 1382 0
	nop
	.align 32
.L269:
	.loc 2 1388 0
	cmpl	$2, -64(%rbp)
	je	.L271
	.loc 2 1389 0
	mov	-100(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rdx
	mov	-100(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %ebx
	leal	-88(%rbp), %edi
	leal	-80(%rbp), %esi
	leal	-68(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_compress_data
	testl	%eax, %eax
	jne	.L271
	.loc 2 1391 0
	movl	$2, -64(%rbp)
	.align 32
.L271:
	.loc 2 1393 0
	cmpl	$2, -64(%rbp)
	je	.L272
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L272
	.loc 2 1394 0
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	mov	-68(%rbp), %ebx
	movl	-100(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.align 32
.L272:
	.loc 2 1404 0
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-100(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L273
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	movq	%rax, %rdx
	salq	$9, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L273
	.loc 2 1405 0
	movl	zio_sync_pass+8(%rip), %eax
	.loc 2 1404 0
	cmpl	-44(%rbp), %eax
	jge	.L273
	.loc 2 1406 0
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L274
	movl	$__PRETTY_FUNCTION__.10715, %ecx
	movl	$1406, %edx
	movl	$.LC12, %esi
	movl	$.LC70, %edi
	call	__assert_fail
	.align 32
.L274:
	.loc 2 1407 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	-56(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1408 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	-64(%rbp), %eax
	cltq
	xorq	%rcx, %rax
	andl	$255, %eax
	salq	$32, %rax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1409 0
	mov	-60(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jns	.L275
	movl	$13099242, %eax
	jmp	.L276
	.align 32
.L275:
	movl	$13090858, %eax
	.align 32
.L276:
	mov	-100(%rbp), %edx
	movl	%eax, %nacl:536(%r15,%rdx)
	.loc 2 1404 0
	jmp	.L277
	.align 32
.L273:
	.loc 2 1411 0
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-100(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rax
	cmpq	%rax, %rdx
	jne	.L278
	.loc 2 1412 0
	mov	-60(%rbp), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:80(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:48(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:56(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:64(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:72(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:88(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:96(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.align 32
.L278:
	.loc 2 1413 0
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L279
	.loc 2 1414 0
	mov	-60(%rbp), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:80(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:48(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:56(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:64(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:72(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:88(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:96(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	-60(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.loc 2 1415 0
	mov	-100(%rbp), %eax
	movl	$12861442, %nacl:536(%r15,%rax)
	jmp	.L277
	.align 32
.L279:
.LBB25:
	.loc 2 1417 0
	mov	-60(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	-60(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-60(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L280
.LBB26:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC45, %r9d
	movl	$.LC26, %r8d
	movl	$.LC30, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1417, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L280:
.LBE26:
.LBE25:
	.loc 2 1418 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	-56(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1419 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	shrq	$9, %rax
	subq	$1, %rax
	xorq	%rcx, %rax
	salq	$16, %rax
	andl	$4294967295, %eax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1420 0
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-60(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	-64(%rbp), %eax
	cltq
	xorq	%rcx, %rax
	andl	$255, %eax
	salq	$32, %rax
	xorq	%rax, %rdx
	mov	-60(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.align 32
.L277:
	.loc 2 1424 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_write_compress, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1425 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE120:
	.size	zio_write_compress, .-zio_write_compress
	.section	.rodata
.LC71:
	.string	"compress != ZIO_COMPRESS_OFF"
	.text
	.align 32
	.type	zio_read_decompress, @function
zio_read_decompress:
.LFB121:
	.loc 2 1429 0
	.cfi_startproc
	pushq	%rbp
.LCFI90:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI91:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 1429 0
	movq	8(%rbp), %rsi
	movl	$zio_read_decompress, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1430 0
	mov	-52(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 1434 0
	mov	-24(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	andl	$255, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1436 0
	cmpl	$2, -20(%rbp)
	jne	.L284
	movl	$__PRETTY_FUNCTION__.10848, %ecx
	movl	$1436, %edx
	movl	$.LC12, %esi
	movl	$.LC71, %edi
	call	__assert_fail
	.align 32
.L284:
	.loc 2 1438 0
	leal	-48(%rbp), %ecx
	leal	-40(%rbp), %edx
	leal	-28(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 1440 0
	mov	-52(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rsi
	mov	-52(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %ecx
	movq	-40(%rbp), %rdx
	mov	-28(%rbp), %ebx
	movl	-20(%rbp), %eax
	movq	%rsi, %r8
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_decompress_data
	testl	%eax, %eax
	je	.L285
	.loc 2 1442 0
	mov	-52(%rbp), %eax
	movl	$5, %nacl:528(%r15,%rax)
	.align 32
.L285:
	.loc 2 1444 0
	movq	-48(%rbp), %rax
	mov	-28(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_buf_free
	.loc 2 1446 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_read_decompress, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1447 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE121:
	.size	zio_read_decompress, .-zio_read_decompress
	.section	.rodata
.LC72:
	.string	"zio->io_size == (1ULL << 9)"
	.text
	.align 32
	.type	zio_gang_byteswap, @function
zio_gang_byteswap:
.LFB122:
	.loc 2 1456 0
	.cfi_startproc
	pushq	%rbp
.LCFI92:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI93:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 1456 0
	movq	8(%rbp), %rsi
	movl	$zio_gang_byteswap, %edi
	call	__cyg_profile_func_enter
	.loc 2 1457 0
	mov	-4(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	$512, %rax
	je	.L288
	movl	$__PRETTY_FUNCTION__.10868, %ecx
	movl	$1457, %edx
	movl	$.LC12, %esi
	movl	$.LC72, %edi
	call	__assert_fail
	.align 32
.L288:
	.loc 2 1459 0
	mov	-4(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:48(%r15,%rax), %rax
	sarq	$63, %rax
	cmpq	$-1, %rax
	je	.L289
	.loc 2 1460 0
	mov	-4(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	mov	-4(%rbp), %edx
	mov	%nacl:376(%r15,%rdx), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	byteswap_uint64_array
	.align 32
.L289:
	movq	8(%rbp), %rsi
	movl	$zio_gang_byteswap, %edi
	call	__cyg_profile_func_exit
	.loc 2 1461 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE122:
	.size	zio_gang_byteswap, .-zio_gang_byteswap
	.section	.rodata
	.align 8
.LC73:
	.string	"(((((&(bp)->blk_dva[0]))->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1))"
	.text
	.align 32
	.type	zio_get_gang_header, @function
zio_get_gang_header:
.LFB123:
	.loc 2 1465 0
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
	movl	%edi, -52(%rbp)
	.loc 2 1465 0
	movq	8(%rbp), %rsi
	movl	$zio_get_gang_header, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1466 0
	mov	-52(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 2 1467 0
	movq	$512, -32(%rbp)
	.loc 2 1468 0
	movq	-32(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1470 0
	mov	-36(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L292
	movl	$__PRETTY_FUNCTION__.10887, %ecx
	movl	$1470, %edx
	movl	$.LC12, %esi
	movl	$.LC73, %edi
	call	__assert_fail
	.align 32
.L292:
	.loc 2 1472 0
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 1474 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %r9d
	andl	$425111, %r9d
	.loc 2 1475 0
	mov	-52(%rbp), %eax
	movzbl	%nacl:505(%r15,%rax), %eax
	.loc 2 1474 0
	movzbl	%al, %ebx
	mov	-36(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %esi
	movq	-32(%rbp), %r8
	movl	-20(%rbp), %edi
	movl	-36(%rbp), %ecx
	movl	-52(%rbp), %eax
	movl	$13615106, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%r9d, 32(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%eax, %edi
	call	zio_create
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	.loc 2 1479 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait_for_children_done
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_get_gang_header, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1480 0
	naclaspq	$120, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE123:
	.size	zio_get_gang_header, .-zio_get_gang_header
	.section	.rodata
	.align 8
.LC74:
	.string	"(((((&(zio->io_bp)->blk_dva[0]))->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1))"
	.align 8
.LC75:
	.string	"((((gbp)->blk_prop) >> (32)) & ((1ULL << (8)) - 1)) == ZIO_COMPRESS_OFF"
	.align 8
.LC76:
	.string	"(((gbp)->blk_birth == 0) ? 0 : ((((((gbp)->blk_prop) >> (0)) & ((1ULL << (16)) - 1)) + (1)) << (9)))"
.LC77:
	.string	"lsize"
.LC78:
	.string	"zio->io_size"
.LC79:
	.string	"loff + lsize"
	.align 8
.LC80:
	.string	"i < (((1ULL << 9) - sizeof (zio_block_tail_t)) / sizeof (blkptr_t))"
.LC81:
	.string	"!((gbp)->blk_birth == 0)"
	.text
	.align 32
	.type	zio_read_gang_members, @function
zio_read_gang_members:
.LFB124:
	.loc 2 1484 0
	.cfi_startproc
	pushq	%rbp
.LCFI96:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI97:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$152, %r15
	movl	%edi, -116(%rbp)
	.loc 2 1484 0
	movq	8(%rbp), %rsi
	movl	$zio_read_gang_members, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1489 0
	mov	-116(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L295
	movl	$__PRETTY_FUNCTION__.10912, %ecx
	movl	$1489, %edx
	movl	$.LC12, %esi
	movl	$.LC74, %edi
	call	__assert_fail
	.align 32
.L295:
	.loc 2 1491 0
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	zio_gang_byteswap
	.loc 2 1492 0
	leal	-92(%rbp), %eax
	mov	%eax, %ebx
	leal	-112(%rbp), %ecx
	leal	-104(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 1494 0
	movq	$0, -88(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L296
	.align 32
.L304:
.LBB27:
	.loc 2 1495 0
	mov	-92(%rbp), %eax
	movl	-72(%rbp), %edx
	sall	$7, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 1496 0
	mov	-68(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	movq	%rax, -80(%rbp)
	.loc 2 1498 0
	mov	-68(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	andl	$255, %eax
	cmpq	$2, %rax
	je	.L297
	movl	$__PRETTY_FUNCTION__.10912, %ecx
	movl	$1498, %edx
	movl	$.LC12, %esi
	movl	$.LC75, %edi
	call	__assert_fail
	.align 32
.L297:
.LBB28:
	.loc 2 1499 0
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	mov	-68(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L298
	mov	-68(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	jmp	.L299
	.align 32
.L298:
	movl	$0, %eax
	.align 32
.L299:
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L300
.LBB29:
	naclsspq	$272, %r15
	leal	32(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC76, %r9d
	movl	$.LC26, %r8d
	movl	$.LC77, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-44(%rbp), %eax
	movl	$1499, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L300:
.LBE29:
.LBE28:
.LBB30:
	.loc 2 1500 0
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -40(%rbp)
	mov	-116(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L301
.LBB31:
	naclsspq	$272, %r15
	leal	32(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC78, %r9d
	movl	$.LC19, %r8d
	movl	$.LC79, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1500, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L301:
.LBE31:
.LBE30:
	.loc 2 1501 0
	movl	-72(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L302
	movl	$__PRETTY_FUNCTION__.10912, %ecx
	movl	$1501, %edx
	movl	$.LC12, %esi
	movl	$.LC80, %edi
	call	__assert_fail
	.align 32
.L302:
	.loc 2 1502 0
	mov	-68(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L303
	movl	$__PRETTY_FUNCTION__.10912, %ecx
	movl	$1502, %edx
	movl	$.LC12, %esi
	movl	$.LC81, %edi
	call	__assert_fail
	.align 32
.L303:
	.loc 2 1507 0
	movl	-116(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %ebx
	.loc 2 1504 0
	mov	-116(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %r9d
	andl	$425111, %r9d
	.loc 2 1506 0
	mov	-116(%rbp), %eax
	movzbl	%nacl:505(%r15,%rax), %eax
	.loc 2 1504 0
	movzbl	%al, %ecx
	mov	-116(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %eax
	movq	-88(%rbp), %rdx
	leal	(%rdx,%rax), %eax
	mov	%eax, %edi
	mov	-116(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %esi
	movq	-80(%rbp), %r8
	movl	-68(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	%ebx, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %r9d
	movl	%edi, %ecx
	movl	%eax, %edi
	call	zio_read
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
.LBE27:
	.loc 2 1494 0
	movq	-80(%rbp), %rax
	addq	%rax, -88(%rbp)
	addl	$1, -72(%rbp)
	.align 32
.L296:
	mov	-116(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.L304
	.loc 2 1510 0
	movq	-112(%rbp), %rax
	mov	-92(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_buf_free
	.loc 2 1512 0
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait_for_children_done
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_read_gang_members, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1513 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE124:
	.size	zio_read_gang_members, .-zio_read_gang_members
	.section	.rodata
.LC82:
	.string	"(1ULL << 9)"
.LC83:
	.string	"gsize == gbufsize"
	.text
	.align 32
	.type	zio_rewrite_gang_members, @function
zio_rewrite_gang_members:
.LFB125:
	.loc 2 1517 0
	.cfi_startproc
	pushq	%rbp
.LCFI98:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI99:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$200, %r15
	movl	%edi, -148(%rbp)
	.loc 2 1517 0
	movq	8(%rbp), %rsi
	movl	$zio_rewrite_gang_members, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1522 0
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L307
	movl	$__PRETTY_FUNCTION__.10989, %ecx
	movl	$1522, %edx
	movl	$.LC12, %esi
	movl	$.LC74, %edi
	call	__assert_fail
	.align 32
.L307:
.LBB32:
	.loc 2 1523 0
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$512, -80(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L308
.LBB33:
	naclsspq	$272, %r15
	leal	48(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -72(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-72(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC82, %r9d
	movl	$.LC26, %r8d
	movl	$.LC78, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-72(%rbp), %eax
	movl	$1523, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L308:
.LBE33:
.LBE32:
	.loc 2 1525 0
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	zio_gang_byteswap
	.loc 2 1526 0
	leal	-116(%rbp), %eax
	mov	%eax, %ebx
	leal	-136(%rbp), %ecx
	leal	-128(%rbp), %edx
	movl	-148(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 1528 0
	movq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L309
	movl	$__PRETTY_FUNCTION__.10989, %ecx
	movl	$1528, %edx
	movl	$.LC12, %esi
	movl	$.LC83, %edi
	call	__assert_fail
	.align 32
.L309:
	.loc 2 1530 0
	movq	$0, -112(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L310
	.align 32
.L318:
.LBB34:
	.loc 2 1531 0
	mov	-116(%rbp), %eax
	movl	-92(%rbp), %edx
	sall	$7, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 1532 0
	mov	-68(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	movq	%rax, -104(%rbp)
	.loc 2 1534 0
	mov	-68(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	andl	$255, %eax
	cmpq	$2, %rax
	je	.L311
	movl	$__PRETTY_FUNCTION__.10989, %ecx
	movl	$1534, %edx
	movl	$.LC12, %esi
	movl	$.LC75, %edi
	call	__assert_fail
	.align 32
.L311:
.LBB35:
	.loc 2 1535 0
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	mov	-68(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L312
	mov	-68(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	jmp	.L313
	.align 32
.L312:
	movl	$0, %eax
	.align 32
.L313:
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L314
.LBB36:
	naclsspq	$272, %r15
	leal	48(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC76, %r9d
	movl	$.LC26, %r8d
	movl	$.LC77, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-44(%rbp), %eax
	movl	$1535, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L314:
.LBE36:
.LBE35:
.LBB37:
	.loc 2 1536 0
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -40(%rbp)
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L315
.LBB38:
	naclsspq	$272, %r15
	leal	48(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC78, %r9d
	movl	$.LC19, %r8d
	movl	$.LC79, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1536, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L315:
.LBE38:
.LBE37:
	.loc 2 1537 0
	movl	-92(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L316
	movl	$__PRETTY_FUNCTION__.10989, %ecx
	movl	$1537, %edx
	movl	$.LC12, %esi
	movl	$.LC80, %edi
	call	__assert_fail
	.align 32
.L316:
	.loc 2 1538 0
	mov	-68(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L317
	movl	$__PRETTY_FUNCTION__.10989, %ecx
	movl	$1538, %edx
	movl	$.LC12, %esi
	movl	$.LC81, %edi
	call	__assert_fail
	.align 32
.L317:
	.loc 2 1540 0
	movl	-148(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %esi
	mov	-148(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %r10d
	andl	$425111, %r10d
	.loc 2 1542 0
	mov	-148(%rbp), %eax
	movzbl	%nacl:505(%r15,%rax), %eax
	.loc 2 1540 0
	movzbl	%al, %ebx
	mov	-148(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %eax
	movq	-112(%rbp), %rdx
	leal	(%rdx,%rax), %eax
	mov	%eax, %r9d
	mov	-148(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rcx
	mov	-148(%rbp), %eax
	movl	%nacl:48(%r15,%rax), %eax
	movl	%eax, %edx
	mov	-148(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %edi
	movl	-68(%rbp), %r8d
	movl	-148(%rbp), %eax
	movl	%esi, 40(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	-104(%rbp), %rbx
	movq	%rbx, (%rsp)
	movl	%edi, %esi
	movl	%eax, %edi
	call	zio_rewrite
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
.LBE34:
	.loc 2 1530 0
	movq	-104(%rbp), %rax
	addq	%rax, -112(%rbp)
	addl	$1, -92(%rbp)
	.align 32
.L310:
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.L318
	.loc 2 1546 0
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	mov	-116(%rbp), %ebx
	movl	-148(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 1548 0
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait_for_children_ready
	movl	%eax, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_rewrite_gang_members, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1549 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE125:
	.size	zio_rewrite_gang_members, .-zio_rewrite_gang_members
	.align 32
	.type	zio_free_gang_members, @function
zio_free_gang_members:
.LFB126:
	.loc 2 1553 0
	.cfi_startproc
	pushq	%rbp
.LCFI100:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI101:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 1553 0
	movq	8(%rbp), %rsi
	movl	$zio_free_gang_members, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1558 0
	mov	-52(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L321
	movl	$__PRETTY_FUNCTION__.11078, %ecx
	movl	$1558, %edx
	movl	$.LC12, %esi
	movl	$.LC74, %edi
	call	__assert_fail
	.align 32
.L321:
	.loc 2 1560 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	zio_gang_byteswap
	.loc 2 1561 0
	leal	-28(%rbp), %eax
	mov	%eax, %ebx
	leal	-48(%rbp), %ecx
	leal	-40(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 1563 0
	movl	$0, -24(%rbp)
	jmp	.L322
	.align 32
.L325:
.LBB39:
	.loc 2 1564 0
	mov	-28(%rbp), %eax
	movl	-24(%rbp), %edx
	sall	$7, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1566 0
	mov	-20(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L327
	.align 32
.L323:
	.loc 2 1568 0
	mov	-52(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-20(%rbp), %ecx
	movl	-52(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_free
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	jmp	.L324
	.align 32
.L327:
	.loc 2 1567 0
	nop
	.align 32
.L324:
.LBE39:
	.loc 2 1563 0
	addl	$1, -24(%rbp)
	.align 32
.L322:
	movl	-24(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L325
	.loc 2 1572 0
	movq	-48(%rbp), %rax
	mov	-28(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_buf_free
	.loc 2 1574 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_free_gang_members, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1575 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE126:
	.size	zio_free_gang_members, .-zio_free_gang_members
	.align 32
	.type	zio_claim_gang_members, @function
zio_claim_gang_members:
.LFB127:
	.loc 2 1579 0
	.cfi_startproc
	pushq	%rbp
.LCFI102:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI103:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 1579 0
	movq	8(%rbp), %rsi
	movl	$zio_claim_gang_members, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1584 0
	mov	-52(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L329
	movl	$__PRETTY_FUNCTION__.11112, %ecx
	movl	$1584, %edx
	movl	$.LC12, %esi
	movl	$.LC74, %edi
	call	__assert_fail
	.align 32
.L329:
	.loc 2 1586 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	zio_gang_byteswap
	.loc 2 1587 0
	leal	-28(%rbp), %eax
	mov	%eax, %ebx
	leal	-48(%rbp), %ecx
	leal	-40(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 1589 0
	movl	$0, -24(%rbp)
	jmp	.L330
	.align 32
.L333:
.LBB40:
	.loc 2 1590 0
	mov	-28(%rbp), %eax
	movl	-24(%rbp), %edx
	sall	$7, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1591 0
	mov	-20(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L335
	.align 32
.L331:
	.loc 2 1593 0
	mov	-52(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-20(%rbp), %ecx
	movl	-52(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_claim
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	jmp	.L332
	.align 32
.L335:
	.loc 2 1592 0
	nop
	.align 32
.L332:
.LBE40:
	.loc 2 1589 0
	addl	$1, -24(%rbp)
	.align 32
.L330:
	movl	-24(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L333
	.loc 2 1597 0
	movq	-48(%rbp), %rax
	mov	-28(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_buf_free
	.loc 2 1599 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_claim_gang_members, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1600 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE127:
	.size	zio_claim_gang_members, .-zio_claim_gang_members
	.section	.rodata
.LC84:
	.string	"pio->io_ndvas"
	.align 8
.LC85:
	.ascii	"(!!((((((&(pio->io_bp)->blk_dva[0])->"
	.string	"dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(pio->io_bp)->blk_dva[1])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(pio->io_bp)->blk_dva[2])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)))"
	.align 8
.LC86:
	.ascii	"(!!((((((&(zio->io_bp)->blk_dva[0])->"
	.string	"dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(zio->io_bp)->blk_dva[1])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)) + !!((((((&(zio->io_bp)->blk_dva[2])->dva_word[0]) >> (0)) & ((1ULL << (24)) - 1)) + (0)) << (9)))"
	.align 8
.LC87:
	.string	"((((&pdva[d])->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1))"
	.text
	.align 32
	.type	zio_write_allocate_gang_member_done, @function
zio_write_allocate_gang_member_done:
.LFB128:
	.loc 2 1604 0
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
	.loc 2 1604 0
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate_gang_member_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1605 0
	mov	-148(%rbp), %eax
	movl	%nacl:(%r15,%rax), %eax
	movl	%eax, -140(%rbp)
	.loc 2 1606 0
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movl	%eax, -136(%rbp)
	.loc 2 1607 0
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movl	%eax, -132(%rbp)
.LBB41:
	.loc 2 1611 0
	mov	-140(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	mov	-148(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L337
.LBB42:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -92(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-92(%rbp), %eax
	movq	-104(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC31, %r9d
	movl	$.LC26, %r8d
	movl	$.LC84, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-92(%rbp), %eax
	movl	$1611, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L337:
.LBE42:
.LBE41:
.LBB43:
	.loc 2 1612 0
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jbe	.L338
.LBB44:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -68(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-68(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC85, %r9d
	movl	$.LC19, %r8d
	movl	$.LC86, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-68(%rbp), %eax
	movl	$1612, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L338:
.LBE44:
.LBE43:
.LBB45:
	.loc 2 1613 0
	mov	-148(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	mov	-148(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L339
.LBB46:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC86, %r9d
	movl	$.LC19, %r8d
	movl	$.LC31, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-44(%rbp), %eax
	movl	$1613, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L339:
.LBE46:
.LBE45:
.LBB47:
	.loc 2 1614 0
	mov	-140(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L340
.LBB48:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC85, %r9d
	movl	$.LC19, %r8d
	movl	$.LC84, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1614, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L340:
.LBE48:
.LBE47:
	.loc 2 1616 0
	movl	-140(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_enter
	.loc 2 1617 0
	movl	$0, -116(%rbp)
	jmp	.L341
	.align 32
.L343:
	.loc 2 1618 0
	movl	-116(%rbp), %eax
	sall	$4, %eax
	addl	-132(%rbp), %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L342
	movl	$__PRETTY_FUNCTION__.11159, %ecx
	movl	$1618, %edx
	movl	$.LC12, %esi
	movl	$.LC87, %edi
	call	__assert_fail
	.align 32
.L342:
	.loc 2 1619 0
	movl	-116(%rbp), %eax
	sall	$4, %eax
	addl	-132(%rbp), %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	movq	%rax, -128(%rbp)
	.loc 2 1620 0
	movl	-116(%rbp), %eax
	sall	$4, %eax
	addl	-136(%rbp), %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	addq	%rax, -128(%rbp)
	.loc 2 1621 0
	movl	-116(%rbp), %eax
	sall	$4, %eax
	addl	-132(%rbp), %eax
	mov	%eax, %eax
	movl	-116(%rbp), %edx
	sall	$4, %edx
	addl	-132(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rcx
	movl	-116(%rbp), %edx
	sall	$4, %edx
	addl	-132(%rbp), %edx
	mov	%edx, %edx
	movq	%nacl:(%r15,%rdx), %rdx
	movq	-128(%rbp), %rbx
	shrq	$9, %rbx
	xorq	%rbx, %rdx
	andl	$16777215, %edx
	xorq	%rcx, %rdx
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 1617 0
	addl	$1, -116(%rbp)
	.align 32
.L341:
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	mov	-140(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cmpl	-116(%rbp), %eax
	jg	.L343
	.loc 2 1623 0
	movl	-140(%rbp), %eax
	addl	$564, %eax
	mov	%eax, %eax
	movl	%eax, %edi
	call	mutex_exit
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate_gang_member_done, %edi
	call	__cyg_profile_func_exit
	.loc 2 1624 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE128:
	.size	zio_write_allocate_gang_member_done, .-zio_write_allocate_gang_member_done
	.section	.rodata
.LC88:
	.string	"gbps_left != 0"
.LC89:
	.string	"28"
.LC90:
	.string	"error"
.LC91:
	.string	"lsize != (1ULL << 9)"
	.align 8
.LC92:
	.string	"resid == 0 && loff == zio->io_size"
	.text
	.align 32
	.type	zio_write_allocate_gang_members, @function
zio_write_allocate_gang_members:
.LFB129:
	.loc 2 1628 0
	.cfi_startproc
	pushq	%rbp
.LCFI106:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI107:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$216, %r15
	movl	%edi, -148(%rbp)
	movl	%esi, -152(%rbp)
	.loc 2 1628 0
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate_gang_members, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1629 0
	mov	-148(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -136(%rbp)
	.loc 2 1630 0
	movl	-136(%rbp), %eax
	movl	%eax, -132(%rbp)
	.loc 2 1631 0
	mov	-148(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -128(%rbp)
	.loc 2 1633 0
	mov	-148(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rax
	movq	%rax, -120(%rbp)
	.loc 2 1634 0
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -112(%rbp)
	.loc 2 1635 0
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	shrq	%rax
	negq	%rax
	andq	$-512, %rax
	negq	%rax
	movq	%rax, -104(%rbp)
	.loc 2 1638 0
	mov	-148(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	movl	%eax, -64(%rbp)
	.loc 2 1639 0
	movl	-64(%rbp), %eax
	leal	1(%rax), %ebx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	cmpl	%eax, %ebx
	jge	.L346
	movl	-64(%rbp), %eax
	addl	$1, %eax
	jmp	.L347
	.align 32
.L346:
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	.align 32
.L347:
	movl	%eax, -60(%rbp)
	.loc 2 1643 0
	movq	$512, -96(%rbp)
	.loc 2 1644 0
	movl	$3, -68(%rbp)
	.loc 2 1646 0
	movq	-120(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-136(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movl	-152(%rbp), %ebx
	movl	-128(%rbp), %eax
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	metaslab_alloc
	movl	%eax, -56(%rbp)
	.loc 2 1648 0
	cmpl	$0, -56(%rbp)
	je	.L348
	.loc 2 1649 0
	mov	-148(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	%edx, %nacl:528(%r15,%rax)
	.loc 2 1650 0
	movl	$256, %ebx
	jmp	.L349
	.align 32
.L348:
	.loc 2 1653 0
	movl	$0, -48(%rbp)
	jmp	.L350
	.align 32
.L353:
	.loc 2 1654 0
	movl	-48(%rbp), %eax
	sall	$4, %eax
	addl	-132(%rbp), %eax
	mov	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$4, %eax
	addl	-132(%rbp), %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rcx
	movl	-48(%rbp), %eax
	sall	$4, %eax
	addl	-132(%rbp), %eax
	mov	%eax, %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L351
	movabsq	$-9223372036854775808, %rax
	jmp	.L352
	.align 32
.L351:
	movl	$0, %eax
	.align 32
.L352:
	xorq	%rcx, %rax
	movq	%rax, %nacl:8(%r15,%rdx)
	.loc 2 1653 0
	addl	$1, -48(%rbp)
	.align 32
.L350:
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L353
	.loc 2 1656 0
	mov	-136(%rbp), %eax
	movq	-120(%rbp), %rdx
	movq	%rdx, %nacl:80(%r15,%rax)
	.loc 2 1658 0
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %eax
	movl	%eax, -124(%rbp)
	.loc 2 1659 0
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movl	-124(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bzero
	.loc 2 1661 0
	movq	$0, -88(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L354
	.align 32
.L365:
.LBB49:
	.loc 2 1663 0
	mov	-124(%rbp), %eax
	movl	-52(%rbp), %edx
	sall	$7, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1664 0
	movl	-44(%rbp), %eax
	movl	%eax, -132(%rbp)
	.loc 2 1666 0
	cmpl	$0, -68(%rbp)
	jne	.L355
	movl	$__PRETTY_FUNCTION__.11339, %ecx
	movl	$1666, %edx
	movl	$.LC12, %esi
	movl	$.LC88, %edi
	call	__assert_fail
	.align 32
.L355:
	.loc 2 1667 0
	movq	-104(%rbp), %rax
	cmpq	%rax, -112(%rbp)
	cmovbe	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 2 1669 0
	jmp	.L356
	.align 32
.L361:
	.loc 2 1670 0
	movq	-120(%rbp), %r8
	movl	-64(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movl	-152(%rbp), %ebx
	movl	-128(%rbp), %eax
	movl	$0, 8(%rsp)
	movl	-136(%rbp), %esi
	movl	%esi, (%rsp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	metaslab_alloc
	movl	%eax, -56(%rbp)
	.loc 2 1672 0
	cmpl	$0, -56(%rbp)
	je	.L369
	.align 32
.L357:
.LBB50:
	.loc 2 1674 0
	movl	-56(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	$28, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L359
.LBB51:
	naclsspq	$272, %r15
	leal	48(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC89, %r9d
	movl	$.LC26, %r8d
	movl	$.LC90, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1674, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L359:
.LBE51:
.LBE50:
	.loc 2 1676 0
	cmpq	$512, -104(%rbp)
	jne	.L360
	.loc 2 1677 0
	mov	-148(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	%edx, %nacl:528(%r15,%rax)
	.loc 2 1678 0
	movl	$256, %ebx
	jmp	.L349
	.align 32
.L360:
	.loc 2 1680 0
	movq	-104(%rbp), %rax
	shrq	%rax
	negq	%rax
	andq	$-512, %rax
	negq	%rax
	movq	%rax, -104(%rbp)
	.align 32
.L356:
	.loc 2 1669 0
	mov	-68(%rbp), %eax
	imulq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jae	.L361
	jmp	.L358
	.align 32
.L369:
	.loc 2 1673 0
	nop
	.align 32
.L358:
	.loc 2 1683 0
	mov	-68(%rbp), %eax
	imulq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L362
	.loc 2 1684 0
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 1685 0
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	-80(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1686 0
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	-80(%rbp), %rax
	shrq	$9, %rax
	subq	$1, %rax
	xorq	%rcx, %rax
	salq	$16, %rax
	andl	$4294967295, %eax
	xorq	%rax, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1687 0
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	xorq	$2, %rax
	andl	$255, %eax
	salq	$32, %rax
	xorq	%rax, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1688 0
	mov	-44(%rbp), %eax
	movq	-120(%rbp), %rdx
	movq	%rdx, %nacl:80(%r15,%rax)
	.loc 2 1689 0
	movl	-148(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %edi
	mov	-148(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %r10d
	andl	$425111, %r10d
	.loc 2 1692 0
	mov	-148(%rbp), %eax
	movzbl	%nacl:505(%r15,%rax), %eax
	.loc 2 1689 0
	movzbl	%al, %esi
	mov	-148(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %eax
	movq	-88(%rbp), %rdx
	leal	(%rdx,%rax), %eax
	mov	%eax, %r9d
	mov	-148(%rbp), %eax
	movl	%nacl:48(%r15,%rax), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %r8d
	movq	-120(%rbp), %rcx
	movl	-128(%rbp), %ebx
	movl	-148(%rbp), %eax
	movl	%edi, 40(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%esi, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$zio_write_allocate_gang_member_done, 8(%rsp)
	movq	-80(%rbp), %rsi
	movq	%rsi, (%rsp)
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_rewrite
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	jmp	.L363
	.align 32
.L362:
	.loc 2 1696 0
	mov	-68(%rbp), %eax
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	divq	-168(%rbp)
	negq	%rax
	andq	$-512, %rax
	negq	%rax
	movq	%rax, -80(%rbp)
	.loc 2 1697 0
	cmpq	$512, -80(%rbp)
	jne	.L364
	movl	$__PRETTY_FUNCTION__.11339, %ecx
	movl	$1697, %edx
	movl	$.LC12, %esi
	movl	$.LC91, %edi
	call	__assert_fail
	.align 32
.L364:
	.loc 2 1698 0
	mov	-148(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %r9d
	andl	$425111, %r9d
	.loc 2 1702 0
	mov	-148(%rbp), %eax
	movzbl	%nacl:505(%r15,%rax), %eax
	.loc 2 1698 0
	movzbl	%al, %esi
	mov	-148(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %eax
	movq	-88(%rbp), %rdx
	leal	(%rdx,%rax), %eax
	mov	%eax, %r8d
	.loc 2 1699 0
	mov	-148(%rbp), %eax
	movl	%nacl:48(%r15,%rax), %eax
	.loc 2 1698 0
	movl	%eax, %edx
	movl	-44(%rbp), %edi
	movq	-120(%rbp), %rcx
	movl	-128(%rbp), %ebx
	movl	-148(%rbp), %eax
	movl	%r9d, 32(%rsp)
	movl	%esi, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$zio_write_allocate_gang_member_done, 8(%rsp)
	movq	-80(%rbp), %rsi
	movq	%rsi, (%rsp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_write_allocate
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	.align 32
.L363:
.LBE49:
	.loc 2 1662 0
	movq	-80(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	subq	%rax, -112(%rbp)
	subl	$1, -68(%rbp)
	addl	$1, -52(%rbp)
	.align 32
.L354:
	.loc 2 1661 0
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.L365
	.loc 2 1707 0
	cmpq	$0, -112(%rbp)
	jne	.L366
	mov	-148(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	-88(%rbp), %rax
	je	.L367
	.align 32
.L366:
	movl	$__PRETTY_FUNCTION__.11339, %ecx
	movl	$1707, %edx
	movl	$.LC12, %esi
	movl	$.LC92, %edi
	call	__assert_fail
	.align 32
.L367:
	.loc 2 1709 0
	mov	-148(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$32, %dh
	mov	-148(%rbp), %eax
	movl	%edx, %nacl:536(%r15,%rax)
	.loc 2 1711 0
	movq	-96(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movl	-124(%rbp), %ebx
	movl	-148(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 1719 0
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	zio_wait_for_children_done
	movl	%eax, %ebx
	.align 32
.L349:
	movq	8(%rbp), %rsi
	movl	$zio_write_allocate_gang_members, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1720 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE129:
	.size	zio_write_allocate_gang_members, .-zio_write_allocate_gang_members
	.section	.rodata
.LC93:
	.string	"spa_max_replication(spa)"
	.align 8
.LC94:
	.string	"((((((bp)->blk_prop) >> (16)) & ((1ULL << (16)) - 1)) + (1)) << (9))"
	.text
	.align 32
	.type	zio_dva_allocate, @function
zio_dva_allocate:
.LFB130:
	.loc 2 1729 0
	.cfi_startproc
	pushq	%rbp
.LCFI108:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI109:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$168, %r15
	movl	%edi, -132(%rbp)
	.loc 2 1729 0
	movq	8(%rbp), %rsi
	movl	$zio_dva_allocate, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1730 0
	mov	-132(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -128(%rbp)
	.loc 2 1731 0
	mov	-128(%rbp), %eax
	movl	%nacl:160(%r15,%rax), %eax
	movl	%eax, -124(%rbp)
	.loc 2 1732 0
	mov	-132(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -120(%rbp)
	.loc 2 1735 0
	mov	-120(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	je	.L371
	movl	$__PRETTY_FUNCTION__.11473, %ecx
	movl	$1735, %edx
	movl	$.LC12, %esi
	movl	$.LC69, %edi
	call	__assert_fail
	.align 32
.L371:
.LBB52:
	.loc 2 1736 0
	mov	-120(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	-120(%rbp), %eax
	addl	$16, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-120(%rbp), %eax
	addl	$32, %eax
	mov	%eax, %eax
	movq	%nacl:(%r15,%rax), %rax
	andl	$16777215, %eax
	salq	$9, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L372
.LBB53:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -92(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-92(%rbp), %eax
	movq	-104(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC45, %r9d
	movl	$.LC26, %r8d
	movl	$.LC30, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-92(%rbp), %eax
	movl	$1736, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L372:
.LBE53:
.LBE52:
.LBB54:
	.loc 2 1737 0
	mov	-132(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	ja	.L373
.LBB55:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -68(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-68(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC46, 8(%rsp)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC45, %r9d
	movl	$.LC46, %r8d
	movl	$.LC31, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-68(%rbp), %eax
	movl	$1737, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L373:
.LBE55:
.LBE54:
.LBB56:
	.loc 2 1738 0
	mov	-132(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	call	spa_max_replication
	cltq
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L374
.LBB57:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -44(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC19, 8(%rsp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC93, %r9d
	movl	$.LC19, %r8d
	movl	$.LC31, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-44(%rbp), %eax
	movl	$1738, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L374:
.LBE57:
.LBE56:
	.loc 2 1745 0
	movzwl	zio_io_fail_shift(%rip), %eax
	testw	%ax, %ax
	je	.L375
	.loc 2 1746 0
	mov	-132(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %eax
	movl	%eax, %edi
	call	spa_sync_pass
	movl	zio_sync_pass+8(%rip), %edx
	.loc 2 1745 0
	cmpl	%edx, %eax
	jg	.L375
	.loc 2 1747 0
	movzwl	zio_io_fail_shift(%rip), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	zio_io_should_fail
	.loc 2 1745 0
	testl	%eax, %eax
	je	.L375
	.loc 2 1748 0
	mov	-132(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$524288, %edx
	mov	-132(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L375:
.LBB58:
	.loc 2 1750 0
	mov	-132(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	mov	-120(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L376
.LBB59:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC94, %r9d
	movl	$.LC26, %r8d
	movl	$.LC78, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1750, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L376:
.LBE59:
.LBE58:
	.loc 2 1752 0
	mov	-132(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdi
	mov	-132(%rbp), %eax
	movl	%nacl:56(%r15,%rax), %esi
	mov	-132(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rdx
	movl	-120(%rbp), %ecx
	movl	-124(%rbp), %ebx
	movl	-128(%rbp), %eax
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%ebx, %esi
	movl	%eax, %edi
	call	metaslab_alloc
	movl	%eax, -116(%rbp)
	.loc 2 1755 0
	cmpl	$0, -116(%rbp)
	jne	.L377
	.loc 2 1756 0
	mov	-132(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-120(%rbp), %eax
	movq	%rdx, %nacl:80(%r15,%rax)
	jmp	.L378
	.align 32
.L377:
	.loc 2 1757 0
	cmpl	$28, -116(%rbp)
	jne	.L379
	mov	-132(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	$512, %rax
	jbe	.L379
	.loc 2 1758 0
	movl	-124(%rbp), %edx
	movl	-132(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_write_allocate_gang_members
	movl	%eax, %ebx
	jmp	.L380
	.align 32
.L379:
	.loc 2 1760 0
	mov	-132(%rbp), %eax
	movl	-116(%rbp), %edx
	movl	%edx, %nacl:528(%r15,%rax)
	.align 32
.L378:
	.loc 2 1763 0
	movl	$256, %ebx
	.align 32
.L380:
	movq	8(%rbp), %rsi
	movl	$zio_dva_allocate, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1764 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE130:
	.size	zio_dva_allocate, .-zio_dva_allocate
	.align 32
	.type	zio_dva_free, @function
zio_dva_free:
.LFB131:
	.loc 2 1768 0
	.cfi_startproc
	pushq	%rbp
.LCFI110:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI111:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 1768 0
	movq	8(%rbp), %rsi
	movl	$zio_dva_free, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1769 0
	mov	-36(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1771 0
	mov	-36(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rdx
	mov	-36(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	%ebx, %edi
	call	metaslab_free
	.loc 2 1773 0
	mov	-20(%rbp), %eax
	movq	$0, %nacl:(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:8(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:16(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:32(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:40(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:80(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:48(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:56(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:64(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:72(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:88(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:96(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:104(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:112(%r15,%rax)
	mov	-20(%rbp), %eax
	movq	$0, %nacl:120(%r15,%rax)
	.loc 2 1775 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_dva_free, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1776 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE131:
	.size	zio_dva_free, .-zio_dva_free
	.align 32
	.type	zio_dva_claim, @function
zio_dva_claim:
.LFB132:
	.loc 2 1780 0
	.cfi_startproc
	pushq	%rbp
.LCFI112:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI113:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 1780 0
	movq	8(%rbp), %rsi
	movl	$zio_dva_claim, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1781 0
	mov	-20(%rbp), %eax
	movq	%nacl:64(%r15,%rax), %rax
	mov	-20(%rbp), %edx
	mov	%nacl:72(%r15,%rdx), %ebx
	mov	-20(%rbp), %edx
	mov	%nacl:8(%r15,%rdx), %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	metaslab_claim
	mov	-20(%rbp), %edx
	movl	%eax, %nacl:528(%r15,%rdx)
	.loc 2 1783 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_dva_claim, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1784 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE132:
	.size	zio_dva_claim, .-zio_dva_claim
	.section	.rodata
.LC95:
	.string	"vd == tvd"
.LC96:
	.string	"!(zio->io_flags & 0x08000)"
	.align 8
.LC97:
	.string	"((zio->io_offset) & ((align) - 1)) == 0"
	.align 8
.LC98:
	.string	"((zio->io_size) & ((align) - 1)) == 0"
	.align 8
.LC99:
	.string	"bp == ((void *)0) || (-(-(((((((&((zio)->io_bp)->blk_dva[0]))->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1)) ? (1ULL << 9) : (((((((zio)->io_bp)->blk_prop) >> (16)) & ((1ULL << (16)) - 1)) + (1)) << (9)))) & -(align))) == zio->io_size"
	.align 8
.LC100:
	.string	"zio->io_type != ZIO_TYPE_WRITE || (spa_mode & 2)"
	.text
	.align 32
	.type	zio_vdev_io_start, @function
zio_vdev_io_start:
.LFB133:
	.loc 2 1794 0
	.cfi_startproc
	pushq	%rbp
.LCFI114:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI115:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -68(%rbp)
	.loc 2 1794 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_start, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1795 0
	mov	-68(%rbp), %eax
	movl	%nacl:392(%r15,%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 2 1796 0
	cmpl	$0, -60(%rbp)
	je	.L387
	mov	-60(%rbp), %eax
	mov	%nacl:68(%r15,%rax), %eax
	jmp	.L388
	.align 32
.L387:
	movl	$0, %eax
	.align 32
.L388:
	movl	%eax, -56(%rbp)
	.loc 2 1797 0
	mov	-68(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 1799 0
	mov	-68(%rbp), %eax
	movl	%nacl:8(%r15,%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 2 1806 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	spa_state
	cmpl	$6, %eax
	jne	.L389
	.loc 2 1807 0
	mov	-68(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	.loc 2 1806 0
	cmpl	$2, %eax
	jne	.L389
	.loc 2 1808 0
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	zio_vdev_suspend_io
	movl	%eax, %ebx
	jmp	.L390
	.align 32
.L389:
	.loc 2 1813 0
	cmpl	$0, -60(%rbp)
	jne	.L391
	.loc 2 1814 0
	mov	vdev_mirror_ops+16(%rip), %eax
	movl	-68(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	movl	%eax, %ebx
	jmp	.L390
	.align 32
.L391:
	.loc 2 1816 0
	mov	-56(%rbp), %eax
	movq	%nacl:32(%r15,%rax), %rax
	movl	$1, %edx
	movq	%rdx, %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 1818 0
	mov	-68(%rbp), %eax
	movl	%nacl:524(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L392
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.L392
	.loc 2 1819 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$2, %edx
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L392:
	.loc 2 1821 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L393
	mov	-60(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rax
	testq	%rax, %rax
	jne	.L393
	.loc 2 1822 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$1, %dh
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1823 0
	mov	-68(%rbp), %eax
	movq	%nacl:416(%r15,%rax), %rax
	leaq	4194304(%rax), %rdx
	mov	-68(%rbp), %eax
	movq	%rdx, %nacl:416(%r15,%rax)
	.align 32
.L393:
	.loc 2 1826 0
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L394
.LBB60:
	.loc 2 1827 0
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, %rdx
	negq	%rdx
	movq	-48(%rbp), %rax
	negq	%rax
	andq	%rdx, %rax
	negq	%rax
	movq	%rax, -32(%rbp)
	.loc 2 1828 0
	movq	-32(%rbp), %rax
	movl	%eax, %edi
	call	zio_buf_alloc
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1829 0
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L395
	movl	$__PRETTY_FUNCTION__.11582, %ecx
	movl	$1829, %edx
	movl	$.LC12, %esi
	movl	$.LC95, %edi
	call	__assert_fail
	.align 32
.L395:
	.loc 2 1830 0
	mov	-68(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	cmpl	$2, %eax
	jne	.L396
	.loc 2 1831 0
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movl	%eax, %edx
	mov	-68(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %ecx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	bcopy
	.loc 2 1832 0
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	subl	%eax, %edx
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	addl	-20(%rbp), %eax
	mov	%eax, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bzero
	.align 32
.L396:
	.loc 2 1834 0
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ebx
	movl	-68(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_push_transform
	.loc 2 1835 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L397
	movl	$__PRETTY_FUNCTION__.11582, %ecx
	movl	$1835, %edx
	movl	$.LC12, %esi
	movl	$.LC96, %edi
	call	__assert_fail
	.align 32
.L397:
	.loc 2 1836 0
	mov	-68(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$128, %dh
	mov	-68(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L394:
.LBE60:
	.loc 2 1839 0
	mov	-68(%rbp), %eax
	movq	%nacl:416(%r15,%rax), %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L398
	movl	$__PRETTY_FUNCTION__.11582, %ecx
	movl	$1839, %edx
	movl	$.LC12, %esi
	movl	$.LC97, %edi
	call	__assert_fail
	.align 32
.L398:
	.loc 2 1840 0
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L399
	movl	$__PRETTY_FUNCTION__.11582, %ecx
	movl	$1840, %edx
	movl	$.LC12, %esi
	movl	$.LC98, %edi
	call	__assert_fail
	.align 32
.L399:
	.loc 2 1841 0
	cmpl	$0, -52(%rbp)
	je	.L400
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L401
	mov	-68(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	negq	%rax
	jmp	.L402
	.align 32
.L401:
	movq	$-512, %rax
	.align 32
.L402:
	movq	-48(%rbp), %rdx
	negq	%rdx
	andq	%rdx, %rax
	movq	%rax, %rdx
	negq	%rdx
	mov	-68(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	cmpq	%rax, %rdx
	je	.L400
	movl	$__PRETTY_FUNCTION__.11582, %ecx
	movl	$1842, %edx
	movl	$.LC12, %esi
	movl	$.LC99, %edi
	call	__assert_fail
	.align 32
.L400:
	.loc 2 1843 0
	mov	-68(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	cmpl	$2, %eax
	jne	.L403
	movl	spa_mode(%rip), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L403
	movl	$__PRETTY_FUNCTION__.11582, %ecx
	movl	$1843, %edx
	movl	$.LC12, %esi
	movl	$.LC100, %edi
	call	__assert_fail
	.align 32
.L403:
	.loc 2 1845 0
	mov	-60(%rbp), %eax
	mov	%nacl:56(%r15,%rax), %eax
	mov	%nacl:16(%r15,%rax), %eax
	movl	-68(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	movl	%eax, %ebx
	.align 32
.L390:
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_start, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1846 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE133:
	.size	zio_vdev_io_start, .-zio_vdev_io_start
	.align 32
	.type	zio_vdev_io_done, @function
zio_vdev_io_done:
.LFB134:
	.loc 2 1850 0
	.cfi_startproc
	pushq	%rbp
.LCFI116:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI117:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 1850 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_done, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1851 0
	mov	-20(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %eax
	testq	%rax, %rax
	jne	.L406
	.loc 2 1852 0
	mov	vdev_mirror_ops+20(%rip), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	movl	%eax, %ebx
	jmp	.L407
	.align 32
.L406:
	.loc 2 1854 0
	mov	-20(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %eax
	mov	%nacl:56(%r15,%rax), %eax
	mov	%nacl:20(%r15,%rax), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	movl	%eax, %ebx
	.align 32
.L407:
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_done, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1855 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE134:
	.size	zio_vdev_io_done, .-zio_vdev_io_done
	.align 32
.globl zio_should_retry
	.type	zio_should_retry, @function
zio_should_retry:
.LFB135:
	.loc 2 1860 0
	.cfi_startproc
	pushq	%rbp
.LCFI118:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI119:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 1860 0
	movq	8(%rbp), %rsi
	movl	$zio_should_retry, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1861 0
	mov	-36(%rbp), %eax
	movl	%nacl:392(%r15,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 2 1863 0
	mov	-36(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L410
	.loc 2 1864 0
	movl	$0, %ebx
	jmp	.L411
	.align 32
.L410:
	.loc 2 1865 0
	mov	-36(%rbp), %eax
	mov	%nacl:476(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L412
	.loc 2 1866 0
	movl	$0, %ebx
	jmp	.L411
	.align 32
.L412:
	.loc 2 1867 0
	cmpl	$0, -20(%rbp)
	je	.L413
	.loc 2 1868 0
	mov	-20(%rbp), %eax
	mov	%nacl:68(%r15,%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L414
	.loc 2 1869 0
	movl	$0, %ebx
	jmp	.L411
	.align 32
.L414:
	.loc 2 1870 0
	mov	-20(%rbp), %eax
	movl	%nacl:1192(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L413
	.loc 2 1871 0
	movl	$0, %ebx
	jmp	.L411
	.align 32
.L413:
	.loc 2 1873 0
	mov	-36(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L415
	.loc 2 1874 0
	movl	$0, %ebx
	jmp	.L411
	.align 32
.L415:
	.loc 2 1875 0
	mov	-36(%rbp), %eax
	movl	%nacl:524(%r15,%rax), %eax
	testl	%eax, %eax
	jle	.L416
	.loc 2 1876 0
	movl	$0, %ebx
	jmp	.L411
	.align 32
.L416:
	.loc 2 1878 0
	movl	$1, %ebx
	.align 32
.L411:
	movq	8(%rbp), %rsi
	movl	$zio_should_retry, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1879 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE135:
	.size	zio_should_retry, .-zio_should_retry
	.section	.rodata
.LC101:
	.string	"zio->io_vsd == ((void *)0)"
.LC102:
	.string	"tvd == vd"
	.text
	.align 32
	.type	zio_vdev_io_assess, @function
zio_vdev_io_assess:
.LFB136:
	.loc 2 1883 0
	.cfi_startproc
	pushq	%rbp
.LCFI120:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI121:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$56, %r15
	movl	%edi, -52(%rbp)
	.loc 2 1883 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_assess, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1884 0
	mov	-52(%rbp), %eax
	movl	%nacl:392(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 1885 0
	cmpl	$0, -24(%rbp)
	je	.L419
	mov	-24(%rbp), %eax
	mov	%nacl:68(%r15,%rax), %eax
	jmp	.L420
	.align 32
.L419:
	movl	$0, %eax
	.align 32
.L420:
	movl	%eax, -20(%rbp)
	.loc 2 1887 0
	mov	-52(%rbp), %eax
	mov	%nacl:408(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L421
	movl	$__PRETTY_FUNCTION__.11736, %ecx
	movl	$1887, %edx
	movl	$.LC12, %esi
	movl	$.LC101, %edi
	call	__assert_fail
	.align 32
.L421:
	.loc 2 1889 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L422
.LBB61:
	.loc 2 1892 0
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L423
	movl	$__PRETTY_FUNCTION__.11736, %ecx
	movl	$1892, %edx
	movl	$.LC12, %esi
	movl	$.LC95, %edi
	call	__assert_fail
	.align 32
.L423:
	.loc 2 1893 0
	leal	-40(%rbp), %ecx
	leal	-40(%rbp), %edx
	leal	-28(%rbp), %ebx
	movl	-52(%rbp), %eax
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_pop_transform
	.loc 2 1894 0
	mov	-52(%rbp), %eax
	movl	%nacl:492(%r15,%rax), %eax
	cmpl	$1, %eax
	jne	.L424
	.loc 2 1895 0
	mov	-52(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	mov	-52(%rbp), %edx
	mov	%nacl:376(%r15,%rdx), %ebx
	mov	-28(%rbp), %ecx
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	bcopy
	.align 32
.L424:
	.loc 2 1896 0
	movq	-40(%rbp), %rax
	mov	-28(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	zio_buf_free
	.loc 2 1897 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	andb	$127, %dh
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.align 32
.L422:
.LBE61:
	.loc 2 1900 0
	movl	zio_injection_enabled(%rip), %eax
	testl	%eax, %eax
	je	.L425
	mov	-52(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	jne	.L425
	.loc 2 1901 0
	movl	-52(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	zio_handle_fault_injection
	mov	-52(%rbp), %edx
	movl	%eax, %nacl:528(%r15,%rdx)
	.align 32
.L425:
	.loc 2 1907 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	zio_should_retry
	testl	%eax, %eax
	je	.L426
	.loc 2 1908 0
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L427
	movl	$__PRETTY_FUNCTION__.11736, %ecx
	movl	$1908, %edx
	movl	$.LC12, %esi
	movl	$.LC102, %edi
	call	__assert_fail
	.align 32
.L427:
	.loc 2 1910 0
	mov	-52(%rbp), %eax
	movl	%nacl:524(%r15,%rax), %eax
	leal	1(%rax), %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:524(%r15,%rax)
	.loc 2 1911 0
	mov	-52(%rbp), %eax
	movl	$0, %nacl:528(%r15,%rax)
	.loc 2 1912 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$490975, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1914 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-3, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1915 0
	mov	-52(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orl	$16, %edx
	mov	-52(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1916 0
	mov	-52(%rbp), %eax
	movl	$14, %nacl:496(%r15,%rax)
	.loc 2 1918 0
	movl	$256, %ebx
	jmp	.L428
	.align 32
.L426:
	.loc 2 1921 0
	movl	$256, %ebx
	.align 32
.L428:
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_assess, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1922 0
	naclaspq	$56, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE136:
	.size	zio_vdev_io_assess, .-zio_vdev_io_assess
	.section	.rodata
	.align 8
.LC103:
	.string	"zio->io_stage == ZIO_STAGE_VDEV_IO_START"
.LC104:
	.string	"zio->io_error == 0"
	.text
	.align 32
.globl zio_vdev_io_reissue
	.type	zio_vdev_io_reissue, @function
zio_vdev_io_reissue:
.LFB137:
	.loc 2 1926 0
	.cfi_startproc
	pushq	%rbp
.LCFI122:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI123:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 1926 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_reissue, %edi
	call	__cyg_profile_func_enter
	.loc 2 1927 0
	mov	-4(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$15, %eax
	je	.L431
	movl	$__PRETTY_FUNCTION__.11788, %ecx
	movl	$1927, %edx
	movl	$.LC12, %esi
	movl	$.LC103, %edi
	call	__assert_fail
	.align 32
.L431:
	.loc 2 1928 0
	mov	-4(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L432
	movl	$__PRETTY_FUNCTION__.11788, %ecx
	movl	$1928, %edx
	movl	$.LC12, %esi
	movl	$.LC104, %edi
	call	__assert_fail
	.align 32
.L432:
	.loc 2 1930 0
	mov	-4(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	leal	-1(%rax), %edx
	mov	-4(%rbp), %eax
	movl	%edx, %nacl:496(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_reissue, %edi
	call	__cyg_profile_func_exit
	.loc 2 1931 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE137:
	.size	zio_vdev_io_reissue, .-zio_vdev_io_reissue
	.section	.rodata
	.align 8
.LC105:
	.string	"zio->io_stage == ZIO_STAGE_VDEV_IO_DONE"
	.text
	.align 32
.globl zio_vdev_io_redone
	.type	zio_vdev_io_redone, @function
zio_vdev_io_redone:
.LFB138:
	.loc 2 1935 0
	.cfi_startproc
	pushq	%rbp
.LCFI124:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI125:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 1935 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_redone, %edi
	call	__cyg_profile_func_enter
	.loc 2 1936 0
	mov	-4(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$16, %eax
	je	.L435
	movl	$__PRETTY_FUNCTION__.11800, %ecx
	movl	$1936, %edx
	movl	$.LC12, %esi
	movl	$.LC105, %edi
	call	__assert_fail
	.align 32
.L435:
	.loc 2 1938 0
	mov	-4(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	leal	-1(%rax), %edx
	mov	-4(%rbp), %eax
	movl	%edx, %nacl:496(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_redone, %edi
	call	__cyg_profile_func_exit
	.loc 2 1939 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE138:
	.size	zio_vdev_io_redone, .-zio_vdev_io_redone
	.align 32
.globl zio_vdev_io_bypass
	.type	zio_vdev_io_bypass, @function
zio_vdev_io_bypass:
.LFB139:
	.loc 2 1943 0
	.cfi_startproc
	pushq	%rbp
.LCFI126:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI127:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 1943 0
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_bypass, %edi
	call	__cyg_profile_func_enter
	.loc 2 1944 0
	mov	-4(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$15, %eax
	je	.L438
	movl	$__PRETTY_FUNCTION__.11809, %ecx
	movl	$1944, %edx
	movl	$.LC12, %esi
	movl	$.LC103, %edi
	call	__assert_fail
	.align 32
.L438:
	.loc 2 1945 0
	mov	-4(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L439
	movl	$__PRETTY_FUNCTION__.11809, %ecx
	movl	$1945, %edx
	movl	$.LC12, %esi
	movl	$.LC104, %edi
	call	__assert_fail
	.align 32
.L439:
	.loc 2 1947 0
	mov	-4(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	movl	%eax, %edx
	orb	$2, %dh
	mov	-4(%rbp), %eax
	movl	%edx, %nacl:484(%r15,%rax)
	.loc 2 1948 0
	mov	-4(%rbp), %eax
	movl	$16, %nacl:496(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$zio_vdev_io_bypass, %edi
	call	__cyg_profile_func_exit
	.loc 2 1949 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE139:
	.size	zio_vdev_io_bypass, .-zio_vdev_io_bypass
	.align 32
	.type	zio_checksum_generate, @function
zio_checksum_generate:
.LFB140:
	.loc 2 1958 0
	.cfi_startproc
	pushq	%rbp
.LCFI128:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI129:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$88, %r15
	movl	%edi, -52(%rbp)
	.loc 2 1958 0
	movq	8(%rbp), %rsi
	movl	$zio_checksum_generate, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1959 0
	mov	-52(%rbp), %eax
	movl	%nacl:48(%r15,%rax), %eax
	movl	%eax, -48(%rbp)
	.loc 2 1960 0
	mov	-52(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
.LBB62:
	.loc 2 1962 0
	mov	-52(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$16, %rax
	andl	$65535, %eax
	addq	$1, %rax
	salq	$9, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L442
.LBB63:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC94, %r9d
	movl	$.LC26, %r8d
	movl	$.LC78, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1962, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L442:
.LBE63:
.LBE62:
	.loc 2 1964 0
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$40, %rcx
	movl	-48(%rbp), %eax
	cltq
	xorq	%rcx, %rax
	andl	$255, %eax
	salq	$40, %rax
	xorq	%rax, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1965 0
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-44(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L443
	movabsq	$-9223372036854775808, %rax
	jmp	.L444
	.align 32
.L443:
	movl	$0, %eax
	.align 32
.L444:
	xorq	%rax, %rdx
	mov	-44(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 1967 0
	mov	-52(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %esi
	movl	-44(%rbp), %eax
	addl	$96, %eax
	mov	%eax, %ebx
	movl	-48(%rbp), %eax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_checksum
	.loc 2 1969 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_checksum_generate, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1970 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE140:
	.size	zio_checksum_generate, .-zio_checksum_generate
	.align 32
	.type	zio_gang_checksum_generate, @function
zio_gang_checksum_generate:
.LFB141:
	.loc 2 1974 0
	.cfi_startproc
	pushq	%rbp
.LCFI130:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI131:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$120, %r15
	movl	%edi, -84(%rbp)
	.loc 2 1974 0
	movq	8(%rbp), %rsi
	movl	$zio_gang_checksum_generate, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1976 0
	mov	-84(%rbp), %eax
	mov	%nacl:376(%r15,%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1978 0
	mov	-84(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L447
	movl	$__PRETTY_FUNCTION__.11861, %ecx
	movl	$1978, %edx
	movl	$.LC12, %esi
	movl	$.LC74, %edi
	call	__assert_fail
	.align 32
.L447:
.LBB64:
	.loc 2 1979 0
	mov	-84(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$512, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L448
.LBB65:
	naclsspq	$272, %r15
	leal	24(%rsp), %eax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	mov	%eax, %eax
	movl	%eax, -20(%rbp)
	movl	$.LC17, %eax
	mov	%eax, %ebx
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movl	$.LC26, 8(%rsp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rsp)
	movl	$.LC82, %r9d
	movl	$.LC26, %r8d
	movl	$.LC78, %ecx
	movl	%ebx, %edx
	movl	$256, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	snprintf
	movl	-20(%rbp), %eax
	movl	$1979, %edx
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	__assert
	.align 32
.L448:
.LBE65:
.LBE64:
	.loc 2 1981 0
	movl	-44(%rbp), %eax
	addl	$480, %eax
	mov	%eax, %edx
	movl	-84(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	zio_set_gang_verifier
	.loc 2 1983 0
	mov	-84(%rbp), %eax
	movq	%nacl:384(%r15,%rax), %rax
	mov	-84(%rbp), %edx
	mov	%nacl:376(%r15,%rdx), %edx
	leal	-80(%rbp), %ebx
	movq	%rax, %rcx
	movl	%ebx, %esi
	movl	$4, %edi
	call	zio_checksum
	.loc 2 1985 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_gang_checksum_generate, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1986 0
	movq	-8(%rbp), %rbx
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE141:
	.size	zio_gang_checksum_generate, .-zio_gang_checksum_generate
	.section	.rodata
.LC106:
	.string	"checksum"
	.text
	.align 32
	.type	zio_checksum_verify, @function
zio_checksum_verify:
.LFB142:
	.loc 2 1990 0
	.cfi_startproc
	pushq	%rbp
.LCFI132:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI133:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	.loc 2 1990 0
	movq	8(%rbp), %rsi
	movl	$zio_checksum_verify, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 1991 0
	mov	-20(%rbp), %eax
	mov	%nacl:72(%r15,%rax), %eax
	testq	%rax, %rax
	je	.L451
	.loc 2 1992 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	zio_checksum_error
	mov	-20(%rbp), %edx
	movl	%eax, %nacl:528(%r15,%rdx)
	.loc 2 1993 0
	mov	-20(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L451
	mov	-20(%rbp), %eax
	movl	%nacl:484(%r15,%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L451
	.loc 2 1994 0
	mov	-20(%rbp), %eax
	mov	%nacl:392(%r15,%rax), %edx
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	%ebx, %esi
	movl	$.LC106, %edi
	call	zfs_ereport_post
	.align 32
.L451:
	.loc 2 1998 0
	movl	$256, %ebx
	movq	8(%rbp), %rsi
	movl	$zio_checksum_verify, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 1999 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE142:
	.size	zio_checksum_verify, .-zio_checksum_verify
	.align 32
.globl zio_checksum_verified
	.type	zio_checksum_verified, @function
zio_checksum_verified:
.LFB143:
	.loc 2 2006 0
	.cfi_startproc
	pushq	%rbp
.LCFI134:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI135:
	.cfi_def_cfa_register 6
	naclsspq	$16, %r15
	movl	%edi, -4(%rbp)
	.loc 2 2006 0
	movq	8(%rbp), %rsi
	movl	$zio_checksum_verified, %edi
	call	__cyg_profile_func_enter
	.loc 2 2007 0
	mov	-4(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %eax
	movl	%eax, %edx
	andl	$-524289, %edx
	mov	-4(%rbp), %eax
	movl	%edx, %nacl:536(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$zio_checksum_verified, %edi
	call	__cyg_profile_func_exit
	.loc 2 2008 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE143:
	.size	zio_checksum_verified, .-zio_checksum_verified
	.align 32
.globl zio_set_gang_verifier
	.type	zio_set_gang_verifier, @function
zio_set_gang_verifier:
.LFB144:
	.loc 2 2015 0
	.cfi_startproc
	pushq	%rbp
.LCFI136:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI137:
	.cfi_def_cfa_register 6
	naclsspq	$32, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 2015 0
	movq	8(%rbp), %rsi
	movl	$zio_set_gang_verifier, %edi
	call	__cyg_profile_func_enter
	.loc 2 2016 0
	mov	-20(%rbp), %eax
	movl	%nacl:72(%r15,%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 2 2018 0
	mov	-4(%rbp), %eax
	movq	%nacl:(%r15,%rax), %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	mov	-24(%rbp), %eax
	movq	%rdx, %nacl:(%r15,%rax)
	.loc 2 2019 0
	mov	-4(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	movq	%rax, %rdx
	salq	$9, %rdx
	mov	-24(%rbp), %eax
	movq	%rdx, %nacl:8(%r15,%rax)
	.loc 2 2020 0
	mov	-4(%rbp), %eax
	movq	%nacl:80(%r15,%rax), %rdx
	mov	-24(%rbp), %eax
	movq	%rdx, %nacl:16(%r15,%rax)
	.loc 2 2021 0
	mov	-24(%rbp), %eax
	movq	$0, %nacl:24(%r15,%rax)
	movq	8(%rbp), %rsi
	movl	$zio_set_gang_verifier, %edi
	call	__cyg_profile_func_exit
	.loc 2 2022 0
	movq	%rbp, %rsp
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE144:
	.size	zio_set_gang_verifier, .-zio_set_gang_verifier
.globl zio_pipeline
	.data
	.align 32
	.type	zio_pipeline, @object
	.size	zio_pipeline, 100
zio_pipeline:
	.long	0
	.long	zio_wait_for_children_ready
	.long	zio_read_init
	.long	zio_issue_async
	.long	zio_write_compress
	.long	zio_checksum_generate
	.long	zio_get_gang_header
	.long	zio_rewrite_gang_members
	.long	zio_free_gang_members
	.long	zio_claim_gang_members
	.long	zio_dva_allocate
	.long	zio_dva_free
	.long	zio_dva_claim
	.long	zio_gang_checksum_generate
	.long	zio_ready
	.long	zio_vdev_io_start
	.long	zio_vdev_io_done
	.long	zio_vdev_io_assess
	.long	zio_wait_for_children_done
	.long	zio_checksum_verify
	.long	zio_read_gang_members
	.long	zio_read_decompress
	.long	zio_assess
	.long	zio_done
	.long	0
	.section	.rodata
	.align 8
.LC107:
	.string	"zio->io_stage <= ZIO_STAGE_DONE"
.LC108:
	.string	"rv == 0x100"
	.text
	.align 32
.globl zio_execute
	.type	zio_execute, @function
zio_execute:
.LFB145:
	.loc 2 2074 0
	.cfi_startproc
	pushq	%rbp
.LCFI138:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI139:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -36(%rbp)
	.loc 2 2074 0
	movq	8(%rbp), %rsi
	movl	$zio_execute, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2075 0
	jmp	.L458
	.align 32
.L466:
.LBB66:
	.loc 2 2076 0
	mov	-36(%rbp), %eax
	movl	%nacl:536(%r15,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 2085 0
	mov	-36(%rbp), %eax
	movl	%nacl:528(%r15,%rax), %eax
	testl	%eax, %eax
	je	.L471
	.loc 2 2086 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	movl	$229376, %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	andl	$1, %eax
	.loc 2 2085 0
	testl	%eax, %eax
	jne	.L472
	.loc 2 2087 0
	andl	$12861442, -24(%rbp)
	.loc 2 2089 0
	jmp	.L460
	.align 32
.L471:
	nop
	jmp	.L460
	.align 32
.L472:
	nop
	.align 32
.L460:
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	leal	1(%rax), %edx
	mov	-36(%rbp), %eax
	movl	%edx, %nacl:496(%r15,%rax)
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	movl	-24(%rbp), %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L460
	.loc 2 2092 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$23, %eax
	jbe	.L462
	movl	$__PRETTY_FUNCTION__.11922, %ecx
	movl	$2092, %edx
	movl	$.LC12, %esi
	movl	$.LC107, %edi
	call	__assert_fail
	.align 32
.L462:
	.loc 2 2093 0
	mov	-36(%rbp), %eax
	movzbl	%nacl:504(%r15,%rax), %eax
	testb	%al, %al
	je	.L463
	movl	$__PRETTY_FUNCTION__.11922, %ecx
	movl	$2093, %edx
	movl	$.LC12, %esi
	movl	$.LC44, %edi
	call	__assert_fail
	.align 32
.L463:
	.loc 2 2095 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	sall	$2, %eax
	cltq
	mov	%nacl:zio_pipeline(%r15,%rax), %eax
	movl	-36(%rbp), %edx
	movl	%edx, %edi
	naclcall	%eax,%r15
	movl	%eax, -20(%rbp)
	.loc 2 2097 0
	cmpl	$257, -20(%rbp)
	jne	.L464
	movl	$0, %ebx
	jmp	.L465
	.align 32
.L464:
	.loc 2 2100 0
	cmpl	$256, -20(%rbp)
	je	.L458
	movl	$__PRETTY_FUNCTION__.11922, %ecx
	movl	$2100, %edx
	movl	$.LC12, %esi
	movl	$.LC108, %edi
	call	__assert_fail
	.align 32
.L458:
.LBE66:
	.loc 2 2075 0
	mov	-36(%rbp), %eax
	movl	%nacl:496(%r15,%rax), %eax
	cmpl	$22, %eax
	jbe	.L466
	movl	$1, %ebx
	.align 32
.L465:
	movq	8(%rbp), %rsi
	movl	$zio_execute, %edi
	call	__cyg_profile_func_exit
	cmpl	$1, %ebx
	.loc 2 2102 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE145:
	.size	zio_execute, .-zio_execute
	.align 32
	.type	zio_io_should_fail, @function
zio_io_should_fail:
.LFB146:
	.loc 2 2106 0
	.cfi_startproc
	pushq	%rbp
.LCFI140:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI141:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	.loc 2 2106 0
	movq	8(%rbp), %rsi
	movl	$zio_io_should_fail, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2109 0
	movzwl	allocs.11958(%rip), %eax
	movzwl	%ax, %ebx
	movzwl	-20(%rbp), %edx
	movl	$1, %esi
	movl	%esi, %edi
	movl	%edx, %ecx
	sall	%cl, %edi
	movl	%edi, %edx
	subl	$1, %edx
	andl	%ebx, %edx
	testl	%edx, %edx
	sete	%dl
	movzbl	%dl, %ebx
	addl	$1, %eax
	movw	%ax, allocs.11958(%rip)
	movq	8(%rbp), %rsi
	movl	$zio_io_should_fail, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2110 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE146:
	.size	zio_io_should_fail, .-zio_io_should_fail
	.align 32
.globl zio_alloc_blk
	.type	zio_alloc_blk, @function
zio_alloc_blk:
.LFB147:
	.loc 2 2118 0
	.cfi_startproc
	pushq	%rbp
.LCFI142:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI143:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$72, %r15
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	.loc 2 2118 0
	movq	8(%rbp), %rsi
	movl	$zio_alloc_blk, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2121 0
	movl	-36(%rbp), %eax
	movl	$__func__.11975, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	spa_config_enter
	.loc 2 2123 0
	movzwl	zio_zil_fail_shift(%rip), %eax
	testw	%ax, %ax
	je	.L476
	movzwl	zio_zil_fail_shift(%rip), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	zio_io_should_fail
	testl	%eax, %eax
	je	.L476
	.loc 2 2124 0
	movl	-36(%rbp), %eax
	movl	$__func__.11975, %esi
	movl	%eax, %edi
	call	spa_config_exit
	.loc 2 2125 0
	movl	$28, %ebx
	jmp	.L477
	.align 32
.L476:
	.loc 2 2132 0
	mov	-36(%rbp), %eax
	mov	%nacl:164(%r15,%rax), %esi
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$1, 8(%rsp)
	movl	-56(%rbp), %ebx
	movl	%ebx, (%rsp)
	movq	%rdi, %r9
	movl	$1, %r8d
	movl	%eax, %edi
	call	metaslab_alloc
	movl	%eax, -20(%rbp)
	.loc 2 2135 0
	cmpl	$0, -20(%rbp)
	je	.L478
	.loc 2 2136 0
	mov	-36(%rbp), %eax
	mov	%nacl:160(%r15,%rax), %esi
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$1, 8(%rsp)
	movl	-56(%rbp), %ebx
	movl	%ebx, (%rsp)
	movq	%rdi, %r9
	movl	$1, %r8d
	movl	%eax, %edi
	call	metaslab_alloc
	movl	%eax, -20(%rbp)
	.align 32
.L478:
	.loc 2 2139 0
	cmpl	$0, -20(%rbp)
	jne	.L479
	.loc 2 2140 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	-48(%rbp), %rcx
	shrq	$9, %rcx
	subq	$1, %rcx
	xorq	%rcx, %rax
	andl	$65535, %eax
	xorq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2141 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	-48(%rbp), %rax
	shrq	$9, %rax
	subq	$1, %rax
	xorq	%rcx, %rax
	salq	$16, %rax
	andl	$4294967295, %eax
	xorq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2142 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$32, %rax
	xorq	$2, %rax
	andl	$255, %eax
	salq	$32, %rax
	xorq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2143 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$40, %rax
	xorq	$5, %rax
	andl	$255, %eax
	salq	$40, %rax
	xorq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2144 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	shrq	$48, %rax
	xorq	$9, %rax
	andl	$255, %eax
	salq	$48, %rax
	xorq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2145 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	movabsq	$-2233785415175766017, %rax
	andq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2146 0
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rdx
	mov	-52(%rbp), %eax
	movq	%nacl:48(%r15,%rax), %rax
	testq	%rax, %rax
	js	.L480
	movabsq	$-9223372036854775808, %rax
	jmp	.L481
	.align 32
.L480:
	movl	$0, %eax
	.align 32
.L481:
	xorq	%rax, %rdx
	mov	-52(%rbp), %eax
	movq	%rdx, %nacl:48(%r15,%rax)
	.loc 2 2147 0
	mov	-52(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %nacl:80(%r15,%rax)
	.align 32
.L479:
	.loc 2 2150 0
	movl	-36(%rbp), %eax
	movl	$__func__.11975, %esi
	movl	%eax, %edi
	call	spa_config_exit
	.loc 2 2152 0
	movl	-20(%rbp), %ebx
	.align 32
.L477:
	movq	8(%rbp), %rsi
	movl	$zio_alloc_blk, %edi
	call	__cyg_profile_func_exit
	movl	%ebx, %eax
	.loc 2 2153 0
	naclaspq	$72, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE147:
	.size	zio_alloc_blk, .-zio_alloc_blk
	.section	.rodata
	.align 8
.LC109:
	.string	"!(((((&(bp)->blk_dva[0]))->dva_word[1]) >> (63)) & ((1ULL << (1)) - 1))"
	.text
	.align 32
.globl zio_free_blk
	.type	zio_free_blk, @function
zio_free_blk:
.LFB148:
	.loc 2 2161 0
	.cfi_startproc
	pushq	%rbp
.LCFI144:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI145:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$24, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 2 2161 0
	movq	8(%rbp), %rsi
	movl	$zio_free_blk, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2162 0
	mov	-24(%rbp), %eax
	movq	%nacl:8(%r15,%rax), %rax
	testq	%rax, %rax
	jns	.L484
	movl	$__PRETTY_FUNCTION__.12045, %ecx
	movl	$2162, %edx
	movl	$.LC12, %esi
	movl	$.LC109, %edi
	call	__assert_fail
	.align 32
.L484:
	.loc 2 2164 0
	movl	-20(%rbp), %eax
	movl	$__func__.12046, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	spa_config_enter
	.loc 2 2166 0
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	metaslab_free
	.loc 2 2168 0
	movl	-20(%rbp), %eax
	movl	$__func__.12046, %esi
	movl	%eax, %edi
	call	spa_config_exit
	movq	8(%rbp), %rsi
	movl	$zio_free_blk, %edi
	call	__cyg_profile_func_exit
	.loc 2 2169 0
	naclaspq	$24, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE148:
	.size	zio_free_blk, .-zio_free_blk
	.align 32
.globl zio_flush
	.type	zio_flush, @function
zio_flush:
.LFB149:
	.loc 2 2176 0
	.cfi_startproc
	pushq	%rbp
.LCFI146:
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
.LCFI147:
	.cfi_def_cfa_register 6
	pushq	%rbx
	naclsspq	$40, %r15
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 2 2176 0
	movq	8(%rbp), %rsi
	movl	$zio_flush, %edi
	.cfi_offset 3, -24
	call	__cyg_profile_func_enter
	.loc 2 2178 0
	movzbl	zio_priority_table(%rip), %eax
	.loc 2 2177 0
	movzbl	%al, %ecx
	mov	-20(%rbp), %eax
	mov	%nacl:8(%r15,%rax), %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	$129, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$1058, %ecx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	zio_ioctl
	mov	%eax, %eax
	movl	%eax, %edi
	call	zio_nowait
	movq	8(%rbp), %rsi
	movl	$zio_flush, %edi
	call	__cyg_profile_func_exit
	.loc 2 2180 0
	naclaspq	$40, %r15
	popq	%rbx
	popq	%r11
	naclrestbp	%r11d, %r15
	popq	%r11
	nacljmp	%r11d,%r15
	.cfi_endproc
.LFE149:
	.size	zio_flush, .-zio_flush
	.section	.rodata
	.type	__PRETTY_FUNCTION__.12045, @object
	.size	__PRETTY_FUNCTION__.12045, 13
__PRETTY_FUNCTION__.12045:
	.string	"zio_free_blk"
	.type	__func__.12046, @object
	.size	__func__.12046, 13
__func__.12046:
	.string	"zio_free_blk"
	.type	__func__.11975, @object
	.size	__func__.11975, 14
__func__.11975:
	.string	"zio_alloc_blk"
	.local	allocs.11958
	.comm	allocs.11958,2,2
	.type	__PRETTY_FUNCTION__.11922, @object
	.size	__PRETTY_FUNCTION__.11922, 12
__PRETTY_FUNCTION__.11922:
	.string	"zio_execute"
	.align 16
	.type	__PRETTY_FUNCTION__.11861, @object
	.size	__PRETTY_FUNCTION__.11861, 27
__PRETTY_FUNCTION__.11861:
	.string	"zio_gang_checksum_generate"
	.align 16
	.type	__PRETTY_FUNCTION__.11809, @object
	.size	__PRETTY_FUNCTION__.11809, 19
__PRETTY_FUNCTION__.11809:
	.string	"zio_vdev_io_bypass"
	.align 16
	.type	__PRETTY_FUNCTION__.11800, @object
	.size	__PRETTY_FUNCTION__.11800, 19
__PRETTY_FUNCTION__.11800:
	.string	"zio_vdev_io_redone"
	.align 16
	.type	__PRETTY_FUNCTION__.11788, @object
	.size	__PRETTY_FUNCTION__.11788, 20
__PRETTY_FUNCTION__.11788:
	.string	"zio_vdev_io_reissue"
	.align 16
	.type	__PRETTY_FUNCTION__.11736, @object
	.size	__PRETTY_FUNCTION__.11736, 19
__PRETTY_FUNCTION__.11736:
	.string	"zio_vdev_io_assess"
	.align 16
	.type	__PRETTY_FUNCTION__.11582, @object
	.size	__PRETTY_FUNCTION__.11582, 18
__PRETTY_FUNCTION__.11582:
	.string	"zio_vdev_io_start"
	.align 16
	.type	__PRETTY_FUNCTION__.11473, @object
	.size	__PRETTY_FUNCTION__.11473, 17
__PRETTY_FUNCTION__.11473:
	.string	"zio_dva_allocate"
	.align 32
	.type	__PRETTY_FUNCTION__.11339, @object
	.size	__PRETTY_FUNCTION__.11339, 32
__PRETTY_FUNCTION__.11339:
	.string	"zio_write_allocate_gang_members"
	.align 32
	.type	__PRETTY_FUNCTION__.11159, @object
	.size	__PRETTY_FUNCTION__.11159, 36
__PRETTY_FUNCTION__.11159:
	.string	"zio_write_allocate_gang_member_done"
	.align 16
	.type	__PRETTY_FUNCTION__.11112, @object
	.size	__PRETTY_FUNCTION__.11112, 23
__PRETTY_FUNCTION__.11112:
	.string	"zio_claim_gang_members"
	.align 16
	.type	__PRETTY_FUNCTION__.11078, @object
	.size	__PRETTY_FUNCTION__.11078, 22
__PRETTY_FUNCTION__.11078:
	.string	"zio_free_gang_members"
	.align 16
	.type	__PRETTY_FUNCTION__.10989, @object
	.size	__PRETTY_FUNCTION__.10989, 25
__PRETTY_FUNCTION__.10989:
	.string	"zio_rewrite_gang_members"
	.align 16
	.type	__PRETTY_FUNCTION__.10912, @object
	.size	__PRETTY_FUNCTION__.10912, 22
__PRETTY_FUNCTION__.10912:
	.string	"zio_read_gang_members"
	.align 16
	.type	__PRETTY_FUNCTION__.10887, @object
	.size	__PRETTY_FUNCTION__.10887, 20
__PRETTY_FUNCTION__.10887:
	.string	"zio_get_gang_header"
	.align 16
	.type	__PRETTY_FUNCTION__.10868, @object
	.size	__PRETTY_FUNCTION__.10868, 18
__PRETTY_FUNCTION__.10868:
	.string	"zio_gang_byteswap"
	.align 16
	.type	__PRETTY_FUNCTION__.10848, @object
	.size	__PRETTY_FUNCTION__.10848, 20
__PRETTY_FUNCTION__.10848:
	.string	"zio_read_decompress"
	.align 16
	.type	__PRETTY_FUNCTION__.10715, @object
	.size	__PRETTY_FUNCTION__.10715, 19
__PRETTY_FUNCTION__.10715:
	.string	"zio_write_compress"
	.type	__PRETTY_FUNCTION__.10657, @object
	.size	__PRETTY_FUNCTION__.10657, 9
__PRETTY_FUNCTION__.10657:
	.string	"zio_done"
	.type	__PRETTY_FUNCTION__.10466, @object
	.size	__PRETTY_FUNCTION__.10466, 11
__PRETTY_FUNCTION__.10466:
	.string	"zio_assess"
	.align 16
	.type	__PRETTY_FUNCTION__.10334, @object
	.size	__PRETTY_FUNCTION__.10334, 18
__PRETTY_FUNCTION__.10334:
	.string	"zio_vdev_retry_io"
	.align 16
	.type	__PRETTY_FUNCTION__.10163, @object
	.size	__PRETTY_FUNCTION__.10163, 22
__PRETTY_FUNCTION__.10163:
	.string	"zio_wait_for_children"
	.type	__PRETTY_FUNCTION__.10134, @object
	.size	__PRETTY_FUNCTION__.10134, 9
__PRETTY_FUNCTION__.10134:
	.string	"zio_wait"
	.align 16
	.type	__PRETTY_FUNCTION__.9931, @object
	.size	__PRETTY_FUNCTION__.9931, 17
__PRETTY_FUNCTION__.9931:
	.string	"zio_phys_bp_init"
	.type	__PRETTY_FUNCTION__.9833, @object
	.size	__PRETTY_FUNCTION__.9833, 9
__PRETTY_FUNCTION__.9833:
	.string	"zio_free"
	.type	__PRETTY_FUNCTION__.9645, @object
	.size	__PRETTY_FUNCTION__.9645, 10
__PRETTY_FUNCTION__.9645:
	.string	"zio_write"
	.type	__PRETTY_FUNCTION__.9460, @object
	.size	__PRETTY_FUNCTION__.9460, 11
__PRETTY_FUNCTION__.9460:
	.string	"zio_create"
	.align 16
	.type	__PRETTY_FUNCTION__.9430, @object
	.size	__PRETTY_FUNCTION__.9430, 26
__PRETTY_FUNCTION__.9430:
	.string	"zio_clear_transform_stack"
	.align 16
	.type	__PRETTY_FUNCTION__.9394, @object
	.size	__PRETTY_FUNCTION__.9394, 18
__PRETTY_FUNCTION__.9394:
	.string	"zio_data_buf_free"
	.type	__PRETTY_FUNCTION__.9383, @object
	.size	__PRETTY_FUNCTION__.9383, 13
__PRETTY_FUNCTION__.9383:
	.string	"zio_buf_free"
	.align 16
	.type	__PRETTY_FUNCTION__.9370, @object
	.size	__PRETTY_FUNCTION__.9370, 19
__PRETTY_FUNCTION__.9370:
	.string	"zio_data_buf_alloc"
	.type	__PRETTY_FUNCTION__.9358, @object
	.size	__PRETTY_FUNCTION__.9358, 14
__PRETTY_FUNCTION__.9358:
	.string	"zio_buf_alloc"
	.type	__PRETTY_FUNCTION__.9273, @object
	.size	__PRETTY_FUNCTION__.9273, 9
__PRETTY_FUNCTION__.9273:
	.string	"zio_init"
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
	.quad	.LFB77-.Ltext0
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
	.quad	.LFE77-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST2:
	.quad	.LFB78-.Ltext0
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
	.quad	.LFE78-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST3:
	.quad	.LFB79-.Ltext0
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
	.quad	.LFE79-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST4:
	.quad	.LFB80-.Ltext0
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
	.quad	.LFE80-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST5:
	.quad	.LFB81-.Ltext0
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
	.quad	.LFE81-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST6:
	.quad	.LFB82-.Ltext0
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
	.quad	.LFE82-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST7:
	.quad	.LFB83-.Ltext0
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
	.quad	.LFE83-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST8:
	.quad	.LFB84-.Ltext0
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
	.quad	.LFE84-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST9:
	.quad	.LFB85-.Ltext0
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
	.quad	.LFE85-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST10:
	.quad	.LFB86-.Ltext0
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
	.quad	.LFE86-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST11:
	.quad	.LFB87-.Ltext0
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
	.quad	.LFE87-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST12:
	.quad	.LFB88-.Ltext0
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
	.quad	.LFE88-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST13:
	.quad	.LFB89-.Ltext0
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
	.quad	.LFE89-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST14:
	.quad	.LFB90-.Ltext0
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
	.quad	.LFE90-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST15:
	.quad	.LFB91-.Ltext0
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
	.quad	.LFE91-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST16:
	.quad	.LFB92-.Ltext0
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
	.quad	.LFE92-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST17:
	.quad	.LFB93-.Ltext0
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
	.quad	.LFE93-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST18:
	.quad	.LFB94-.Ltext0
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
	.quad	.LFE94-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST19:
	.quad	.LFB95-.Ltext0
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
	.quad	.LFE95-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST20:
	.quad	.LFB96-.Ltext0
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
	.quad	.LFE96-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST21:
	.quad	.LFB97-.Ltext0
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
	.quad	.LFE97-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST22:
	.quad	.LFB98-.Ltext0
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
	.quad	.LFE98-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST23:
	.quad	.LFB99-.Ltext0
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
	.quad	.LFE99-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST24:
	.quad	.LFB100-.Ltext0
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
	.quad	.LFE100-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST25:
	.quad	.LFB101-.Ltext0
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
	.quad	.LFE101-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST26:
	.quad	.LFB102-.Ltext0
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
	.quad	.LFE102-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST27:
	.quad	.LFB103-.Ltext0
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
	.quad	.LFE103-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST28:
	.quad	.LFB104-.Ltext0
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
	.quad	.LFE104-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST29:
	.quad	.LFB105-.Ltext0
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
	.quad	.LFE105-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST30:
	.quad	.LFB106-.Ltext0
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
	.quad	.LFE106-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST31:
	.quad	.LFB107-.Ltext0
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
	.quad	.LFE107-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST32:
	.quad	.LFB108-.Ltext0
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
	.quad	.LFE108-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST33:
	.quad	.LFB109-.Ltext0
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
	.quad	.LFE109-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST34:
	.quad	.LFB110-.Ltext0
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
	.quad	.LFE110-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST35:
	.quad	.LFB111-.Ltext0
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
	.quad	.LFE111-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST36:
	.quad	.LFB112-.Ltext0
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
	.quad	.LFE112-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST37:
	.quad	.LFB113-.Ltext0
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
	.quad	.LFE113-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST38:
	.quad	.LFB114-.Ltext0
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
	.quad	.LFE114-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST39:
	.quad	.LFB115-.Ltext0
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
	.quad	.LFE115-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST40:
	.quad	.LFB116-.Ltext0
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
	.quad	.LFE116-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST41:
	.quad	.LFB117-.Ltext0
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
	.quad	.LFE117-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST42:
	.quad	.LFB118-.Ltext0
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
	.quad	.LFE118-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST43:
	.quad	.LFB119-.Ltext0
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
	.quad	.LFE119-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST44:
	.quad	.LFB120-.Ltext0
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
	.quad	.LFE120-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST45:
	.quad	.LFB121-.Ltext0
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
	.quad	.LFE121-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST46:
	.quad	.LFB122-.Ltext0
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
	.quad	.LFE122-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST47:
	.quad	.LFB123-.Ltext0
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
	.quad	.LFE123-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST48:
	.quad	.LFB124-.Ltext0
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
	.quad	.LFE124-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST49:
	.quad	.LFB125-.Ltext0
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
	.quad	.LFE125-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST50:
	.quad	.LFB126-.Ltext0
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
	.quad	.LFE126-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST51:
	.quad	.LFB127-.Ltext0
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
	.quad	.LFE127-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST52:
	.quad	.LFB128-.Ltext0
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
	.quad	.LFE128-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST53:
	.quad	.LFB129-.Ltext0
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
	.quad	.LFE129-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST54:
	.quad	.LFB130-.Ltext0
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
	.quad	.LFE130-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST55:
	.quad	.LFB131-.Ltext0
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
	.quad	.LFE131-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST56:
	.quad	.LFB132-.Ltext0
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
	.quad	.LFE132-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST57:
	.quad	.LFB133-.Ltext0
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
	.quad	.LFE133-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST58:
	.quad	.LFB134-.Ltext0
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
	.quad	.LFE134-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST59:
	.quad	.LFB135-.Ltext0
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
	.quad	.LFE135-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST60:
	.quad	.LFB136-.Ltext0
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
	.quad	.LFE136-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST61:
	.quad	.LFB137-.Ltext0
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
	.quad	.LFE137-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST62:
	.quad	.LFB138-.Ltext0
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
	.quad	.LFE138-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST63:
	.quad	.LFB139-.Ltext0
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
	.quad	.LFE139-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST64:
	.quad	.LFB140-.Ltext0
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
	.quad	.LFE140-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST65:
	.quad	.LFB141-.Ltext0
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
	.quad	.LFE141-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST66:
	.quad	.LFB142-.Ltext0
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
	.quad	.LFE142-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST67:
	.quad	.LFB143-.Ltext0
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
	.quad	.LFE143-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST68:
	.quad	.LFB144-.Ltext0
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
	.quad	.LFE144-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST69:
	.quad	.LFB145-.Ltext0
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
	.quad	.LFE145-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST70:
	.quad	.LFB146-.Ltext0
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
	.quad	.LFE146-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST71:
	.quad	.LFB147-.Ltext0
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
	.quad	.LFE147-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST72:
	.quad	.LFB148-.Ltext0
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
	.quad	.LFE148-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
.LLST73:
	.quad	.LFB149-.Ltext0
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
	.quad	.LFE149-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	0x0
	.quad	0x0
	.file 3 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/include/stddef.h"
	.file 4 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/types.h"
	.file 5 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/libio.h"
	.file 6 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/stdio.h"
	.file 7 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/sys/types.h"
	.file 8 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/time.h"
	.file 9 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/pthreadtypes.h"
	.file 10 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/stdint.h"
	.file 11 "../../lib/libsolcompat/include/sys/types.h"
	.file 12 "../../lib/libsolcompat/include/thread.h"
	.file 13 "../../lib/libsolcompat/include/sys/vmem.h"
	.file 14 "../../lib/libumem/include/umem.h"
	.file 15 "../../lib/libzfscommon/include/sys/list_impl.h"
	.file 16 "../../lib/libzfscommon/include/sys/list.h"
	.file 17 "include/sys/zfs_context.h"
	.file 18 "../../lib/libavl/include/sys/avl_impl.h"
	.file 19 "../../lib/libavl/include/sys/avl.h"
	.file 20 "../../lib/libnvpair/include/sys/nvpair.h"
	.file 21 "../../lib/libzfscommon/include/sys/fs/zfs.h"
	.file 22 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/bits/confname.h"
	.file 23 "../../lib/libzfscommon/include/sys/spa.h"
	.file 24 "../../lib/libzfscommon/include/sys/spa_impl.h"
	.file 25 "../../lib/libzfscommon/include/sys/vdev_impl.h"
	.file 26 "../../lib/libzfscommon/include/sys/dmu.h"
	.file 27 "../../lib/libzfscommon/include/sys/txg.h"
	.file 28 "../../lib/libzfscommon/include/sys/txg_impl.h"
	.file 29 "../../lib/libsolcompat/include/sys/dkio.h"
	.file 30 "../../lib/libzfscommon/include/sys/zio_impl.h"
	.file 31 "../../lib/libzfscommon/include/sys/zio.h"
	.file 32 "../../lib/libzfscommon/include/sys/space_map.h"
	.file 33 "../../lib/libzfscommon/include/sys/metaslab.h"
	.file 34 "../../lib/libzfscommon/include/sys/dsl_pool.h"
	.file 35 "../../lib/libzfscommon/include/sys/zio_checksum.h"
	.file 36 "../../lib/libzfscommon/include/sys/uberblock.h"
	.file 37 "../../lib/libzfscommon/include/sys/vdev.h"
	.file 38 "../../lib/libzfscommon/include/sys/uberblock_impl.h"
	.file 39 "../../lib/libzfscommon/include/sys/refcount.h"
	.file 40 "../../lib/libzfscommon/include/sys/bplist.h"
	.file 41 "/opt/zerovm/lib/gcc/x86_64-nacl/4.4.3/../../../../x86_64-nacl/include/asm-generic/ioctl.h"
	.section	.debug_info
	.long	0x5f57
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1117
	.byte	0x1
	.long	.LASF1118
	.long	.LASF1119
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0xd3
	.long	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x38
	.long	0x69
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x8d
	.long	0x77
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x8e
	.long	0x77
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x95
	.long	0x77
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.long	0xb5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x8
	.long	.LASF44
	.byte	0x98
	.byte	0x6
	.byte	0x2d
	.long	0x27c
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.value	0x110
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.value	0x115
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.value	0x116
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x117
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x118
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x119
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x11a
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x11b
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x11c
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x11e
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x11f
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x120
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x122
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x124
	.long	0x2c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x126
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x12a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x12c
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x130
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x131
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x132
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x136
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x13f
	.long	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x148
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x149
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x14a
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x14b
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x14e
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x150
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xa
	.long	.LASF1120
	.byte	0x5
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF45
	.byte	0xc
	.byte	0x5
	.byte	0xba
	.long	0x2ba
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xbb
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xbc
	.long	0x2c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0xc0
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x283
	.uleb128 0x7
	.byte	0x4
	.long	0xbc
	.uleb128 0xc
	.long	0xb5
	.long	0x2d6
	.uleb128 0xd
	.long	0x98
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x27c
	.uleb128 0xc
	.long	0xb5
	.long	0x2ec
	.uleb128 0xd
	.long	0x98
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x7
	.byte	0xc5
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0xc6
	.long	0x69
	.uleb128 0x8
	.long	.LASF51
	.byte	0x10
	.byte	0x8
	.byte	0x7a
	.long	0x32b
	.uleb128 0xb
	.long	.LASF52
	.byte	0x8
	.byte	0x7b
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x8
	.byte	0x7c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x33b
	.uleb128 0xd
	.long	0x98
	.byte	0x37
	.byte	0x0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x8
	.byte	0x9
	.byte	0x3e
	.long	0x364
	.uleb128 0xb
	.long	.LASF55
	.byte	0x9
	.byte	0x3f
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF56
	.byte	0x9
	.byte	0x40
	.long	0x364
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x33b
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x41
	.long	0x33b
	.uleb128 0x8
	.long	.LASF58
	.byte	0x20
	.byte	0x9
	.byte	0x4f
	.long	0x3e4
	.uleb128 0xb
	.long	.LASF59
	.byte	0x9
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x9
	.byte	0x51
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF61
	.byte	0x9
	.byte	0x52
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF62
	.byte	0x9
	.byte	0x54
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF63
	.byte	0x9
	.byte	0x58
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF64
	.byte	0x9
	.byte	0x5a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF65
	.byte	0x9
	.byte	0x5b
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.byte	0x28
	.byte	0x9
	.byte	0x4d
	.long	0x40e
	.uleb128 0xf
	.long	.LASF66
	.byte	0x9
	.byte	0x65
	.long	0x375
	.uleb128 0xf
	.long	.LASF67
	.byte	0x9
	.byte	0x66
	.long	0x2dc
	.uleb128 0xf
	.long	.LASF68
	.byte	0x9
	.byte	0x67
	.long	0x9b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x9
	.byte	0x68
	.long	0x3e4
	.uleb128 0x10
	.byte	0x30
	.byte	0x9
	.byte	0x76
	.long	0x492
	.uleb128 0xb
	.long	.LASF59
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF70
	.byte	0x9
	.byte	0x78
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF71
	.byte	0x9
	.byte	0x79
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF72
	.byte	0x9
	.byte	0x7a
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF73
	.byte	0x9
	.byte	0x7b
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF74
	.byte	0x9
	.byte	0x7c
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF75
	.byte	0x9
	.byte	0x7d
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF76
	.byte	0x9
	.byte	0x7e
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xe
	.byte	0x30
	.byte	0x9
	.byte	0x74
	.long	0x4bc
	.uleb128 0xf
	.long	.LASF66
	.byte	0x9
	.byte	0x7f
	.long	0x419
	.uleb128 0xf
	.long	.LASF67
	.byte	0x9
	.byte	0x80
	.long	0x4bc
	.uleb128 0xf
	.long	.LASF68
	.byte	0x9
	.byte	0x81
	.long	0x69
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x4cc
	.uleb128 0xd
	.long	0x98
	.byte	0x2f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x9
	.byte	0x82
	.long	0x492
	.uleb128 0x10
	.byte	0x2c
	.byte	0x9
	.byte	0x9a
	.long	0x57a
	.uleb128 0xb
	.long	.LASF59
	.byte	0x9
	.byte	0x9b
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF78
	.byte	0x9
	.byte	0x9c
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF79
	.byte	0x9
	.byte	0x9d
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF80
	.byte	0x9
	.byte	0x9e
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF81
	.byte	0x9
	.byte	0x9f
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF82
	.byte	0x9
	.byte	0xa0
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF83
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF84
	.byte	0x9
	.byte	0xa2
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF37
	.byte	0x9
	.byte	0xa3
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF38
	.byte	0x9
	.byte	0xa4
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF85
	.byte	0x9
	.byte	0xa7
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xe
	.byte	0x38
	.byte	0x9
	.byte	0x97
	.long	0x5a4
	.uleb128 0xf
	.long	.LASF66
	.byte	0x9
	.byte	0xa8
	.long	0x4d7
	.uleb128 0xf
	.long	.LASF67
	.byte	0x9
	.byte	0xbb
	.long	0x32b
	.uleb128 0xf
	.long	.LASF68
	.byte	0x9
	.byte	0xbc
	.long	0x9b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x9
	.byte	0xbd
	.long	0x57a
	.uleb128 0xc
	.long	0xb5
	.long	0x5bf
	.uleb128 0xd
	.long	0x98
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0xa
	.byte	0x32
	.long	0x3f
	.uleb128 0x2
	.long	.LASF88
	.byte	0xa
	.byte	0x33
	.long	0x46
	.uleb128 0x2
	.long	.LASF89
	.byte	0xa
	.byte	0x35
	.long	0x38
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.byte	0x3c
	.long	0x70
	.uleb128 0x11
	.long	.LASF356
	.byte	0x4
	.byte	0xb
	.byte	0x29
	.long	0x604
	.uleb128 0x12
	.long	.LASF91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF92
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0xb
	.byte	0x29
	.long	0x5eb
	.uleb128 0x2
	.long	.LASF94
	.byte	0xb
	.byte	0x2d
	.long	0x38
	.uleb128 0x2
	.long	.LASF95
	.byte	0xb
	.byte	0x2e
	.long	0x4d
	.uleb128 0x2
	.long	.LASF96
	.byte	0xb
	.byte	0x30
	.long	0x69
	.uleb128 0x2
	.long	.LASF97
	.byte	0x1
	.byte	0x26
	.long	0x625
	.uleb128 0x7
	.byte	0x4
	.long	0x641
	.uleb128 0x13
	.byte	0x1
	.long	0x62
	.long	0x656
	.uleb128 0x14
	.long	0x656
	.uleb128 0x14
	.long	0x656
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x65c
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x4
	.byte	0x16
	.byte	0x4a
	.long	0xbb2
	.uleb128 0x12
	.long	.LASF98
	.sleb128 0
	.uleb128 0x12
	.long	.LASF99
	.sleb128 1
	.uleb128 0x12
	.long	.LASF100
	.sleb128 2
	.uleb128 0x12
	.long	.LASF101
	.sleb128 3
	.uleb128 0x12
	.long	.LASF102
	.sleb128 4
	.uleb128 0x12
	.long	.LASF103
	.sleb128 5
	.uleb128 0x12
	.long	.LASF104
	.sleb128 6
	.uleb128 0x12
	.long	.LASF105
	.sleb128 7
	.uleb128 0x12
	.long	.LASF106
	.sleb128 8
	.uleb128 0x12
	.long	.LASF107
	.sleb128 9
	.uleb128 0x12
	.long	.LASF108
	.sleb128 10
	.uleb128 0x12
	.long	.LASF109
	.sleb128 11
	.uleb128 0x12
	.long	.LASF110
	.sleb128 12
	.uleb128 0x12
	.long	.LASF111
	.sleb128 13
	.uleb128 0x12
	.long	.LASF112
	.sleb128 14
	.uleb128 0x12
	.long	.LASF113
	.sleb128 15
	.uleb128 0x12
	.long	.LASF114
	.sleb128 16
	.uleb128 0x12
	.long	.LASF115
	.sleb128 17
	.uleb128 0x12
	.long	.LASF116
	.sleb128 18
	.uleb128 0x12
	.long	.LASF117
	.sleb128 19
	.uleb128 0x12
	.long	.LASF118
	.sleb128 20
	.uleb128 0x12
	.long	.LASF119
	.sleb128 21
	.uleb128 0x12
	.long	.LASF120
	.sleb128 22
	.uleb128 0x12
	.long	.LASF121
	.sleb128 23
	.uleb128 0x12
	.long	.LASF122
	.sleb128 24
	.uleb128 0x12
	.long	.LASF123
	.sleb128 25
	.uleb128 0x12
	.long	.LASF124
	.sleb128 26
	.uleb128 0x12
	.long	.LASF125
	.sleb128 27
	.uleb128 0x12
	.long	.LASF126
	.sleb128 28
	.uleb128 0x12
	.long	.LASF127
	.sleb128 29
	.uleb128 0x12
	.long	.LASF128
	.sleb128 30
	.uleb128 0x12
	.long	.LASF129
	.sleb128 31
	.uleb128 0x12
	.long	.LASF130
	.sleb128 32
	.uleb128 0x12
	.long	.LASF131
	.sleb128 33
	.uleb128 0x12
	.long	.LASF132
	.sleb128 34
	.uleb128 0x12
	.long	.LASF133
	.sleb128 35
	.uleb128 0x12
	.long	.LASF134
	.sleb128 36
	.uleb128 0x12
	.long	.LASF135
	.sleb128 37
	.uleb128 0x12
	.long	.LASF136
	.sleb128 38
	.uleb128 0x12
	.long	.LASF137
	.sleb128 39
	.uleb128 0x12
	.long	.LASF138
	.sleb128 40
	.uleb128 0x12
	.long	.LASF139
	.sleb128 41
	.uleb128 0x12
	.long	.LASF140
	.sleb128 42
	.uleb128 0x12
	.long	.LASF141
	.sleb128 43
	.uleb128 0x12
	.long	.LASF142
	.sleb128 44
	.uleb128 0x12
	.long	.LASF143
	.sleb128 45
	.uleb128 0x12
	.long	.LASF144
	.sleb128 46
	.uleb128 0x12
	.long	.LASF145
	.sleb128 47
	.uleb128 0x12
	.long	.LASF146
	.sleb128 48
	.uleb128 0x12
	.long	.LASF147
	.sleb128 49
	.uleb128 0x12
	.long	.LASF148
	.sleb128 50
	.uleb128 0x12
	.long	.LASF149
	.sleb128 51
	.uleb128 0x12
	.long	.LASF150
	.sleb128 52
	.uleb128 0x12
	.long	.LASF151
	.sleb128 53
	.uleb128 0x12
	.long	.LASF152
	.sleb128 54
	.uleb128 0x12
	.long	.LASF153
	.sleb128 55
	.uleb128 0x12
	.long	.LASF154
	.sleb128 56
	.uleb128 0x12
	.long	.LASF155
	.sleb128 57
	.uleb128 0x12
	.long	.LASF156
	.sleb128 58
	.uleb128 0x12
	.long	.LASF157
	.sleb128 59
	.uleb128 0x12
	.long	.LASF158
	.sleb128 60
	.uleb128 0x12
	.long	.LASF159
	.sleb128 60
	.uleb128 0x12
	.long	.LASF160
	.sleb128 61
	.uleb128 0x12
	.long	.LASF161
	.sleb128 62
	.uleb128 0x12
	.long	.LASF162
	.sleb128 63
	.uleb128 0x12
	.long	.LASF163
	.sleb128 64
	.uleb128 0x12
	.long	.LASF164
	.sleb128 65
	.uleb128 0x12
	.long	.LASF165
	.sleb128 66
	.uleb128 0x12
	.long	.LASF166
	.sleb128 67
	.uleb128 0x12
	.long	.LASF167
	.sleb128 68
	.uleb128 0x12
	.long	.LASF168
	.sleb128 69
	.uleb128 0x12
	.long	.LASF169
	.sleb128 70
	.uleb128 0x12
	.long	.LASF170
	.sleb128 71
	.uleb128 0x12
	.long	.LASF171
	.sleb128 72
	.uleb128 0x12
	.long	.LASF172
	.sleb128 73
	.uleb128 0x12
	.long	.LASF173
	.sleb128 74
	.uleb128 0x12
	.long	.LASF174
	.sleb128 75
	.uleb128 0x12
	.long	.LASF175
	.sleb128 76
	.uleb128 0x12
	.long	.LASF176
	.sleb128 77
	.uleb128 0x12
	.long	.LASF177
	.sleb128 78
	.uleb128 0x12
	.long	.LASF178
	.sleb128 79
	.uleb128 0x12
	.long	.LASF179
	.sleb128 80
	.uleb128 0x12
	.long	.LASF180
	.sleb128 81
	.uleb128 0x12
	.long	.LASF181
	.sleb128 82
	.uleb128 0x12
	.long	.LASF182
	.sleb128 83
	.uleb128 0x12
	.long	.LASF183
	.sleb128 84
	.uleb128 0x12
	.long	.LASF184
	.sleb128 85
	.uleb128 0x12
	.long	.LASF185
	.sleb128 86
	.uleb128 0x12
	.long	.LASF186
	.sleb128 87
	.uleb128 0x12
	.long	.LASF187
	.sleb128 88
	.uleb128 0x12
	.long	.LASF188
	.sleb128 89
	.uleb128 0x12
	.long	.LASF189
	.sleb128 90
	.uleb128 0x12
	.long	.LASF190
	.sleb128 91
	.uleb128 0x12
	.long	.LASF191
	.sleb128 92
	.uleb128 0x12
	.long	.LASF192
	.sleb128 93
	.uleb128 0x12
	.long	.LASF193
	.sleb128 94
	.uleb128 0x12
	.long	.LASF194
	.sleb128 95
	.uleb128 0x12
	.long	.LASF195
	.sleb128 96
	.uleb128 0x12
	.long	.LASF196
	.sleb128 97
	.uleb128 0x12
	.long	.LASF197
	.sleb128 98
	.uleb128 0x12
	.long	.LASF198
	.sleb128 99
	.uleb128 0x12
	.long	.LASF199
	.sleb128 100
	.uleb128 0x12
	.long	.LASF200
	.sleb128 101
	.uleb128 0x12
	.long	.LASF201
	.sleb128 102
	.uleb128 0x12
	.long	.LASF202
	.sleb128 103
	.uleb128 0x12
	.long	.LASF203
	.sleb128 104
	.uleb128 0x12
	.long	.LASF204
	.sleb128 105
	.uleb128 0x12
	.long	.LASF205
	.sleb128 106
	.uleb128 0x12
	.long	.LASF206
	.sleb128 107
	.uleb128 0x12
	.long	.LASF207
	.sleb128 108
	.uleb128 0x12
	.long	.LASF208
	.sleb128 109
	.uleb128 0x12
	.long	.LASF209
	.sleb128 110
	.uleb128 0x12
	.long	.LASF210
	.sleb128 111
	.uleb128 0x12
	.long	.LASF211
	.sleb128 112
	.uleb128 0x12
	.long	.LASF212
	.sleb128 113
	.uleb128 0x12
	.long	.LASF213
	.sleb128 114
	.uleb128 0x12
	.long	.LASF214
	.sleb128 115
	.uleb128 0x12
	.long	.LASF215
	.sleb128 116
	.uleb128 0x12
	.long	.LASF216
	.sleb128 117
	.uleb128 0x12
	.long	.LASF217
	.sleb128 118
	.uleb128 0x12
	.long	.LASF218
	.sleb128 119
	.uleb128 0x12
	.long	.LASF219
	.sleb128 120
	.uleb128 0x12
	.long	.LASF220
	.sleb128 121
	.uleb128 0x12
	.long	.LASF221
	.sleb128 122
	.uleb128 0x12
	.long	.LASF222
	.sleb128 123
	.uleb128 0x12
	.long	.LASF223
	.sleb128 124
	.uleb128 0x12
	.long	.LASF224
	.sleb128 125
	.uleb128 0x12
	.long	.LASF225
	.sleb128 126
	.uleb128 0x12
	.long	.LASF226
	.sleb128 127
	.uleb128 0x12
	.long	.LASF227
	.sleb128 128
	.uleb128 0x12
	.long	.LASF228
	.sleb128 129
	.uleb128 0x12
	.long	.LASF229
	.sleb128 130
	.uleb128 0x12
	.long	.LASF230
	.sleb128 131
	.uleb128 0x12
	.long	.LASF231
	.sleb128 132
	.uleb128 0x12
	.long	.LASF232
	.sleb128 133
	.uleb128 0x12
	.long	.LASF233
	.sleb128 134
	.uleb128 0x12
	.long	.LASF234
	.sleb128 135
	.uleb128 0x12
	.long	.LASF235
	.sleb128 136
	.uleb128 0x12
	.long	.LASF236
	.sleb128 137
	.uleb128 0x12
	.long	.LASF237
	.sleb128 138
	.uleb128 0x12
	.long	.LASF238
	.sleb128 139
	.uleb128 0x12
	.long	.LASF239
	.sleb128 140
	.uleb128 0x12
	.long	.LASF240
	.sleb128 141
	.uleb128 0x12
	.long	.LASF241
	.sleb128 142
	.uleb128 0x12
	.long	.LASF242
	.sleb128 143
	.uleb128 0x12
	.long	.LASF243
	.sleb128 144
	.uleb128 0x12
	.long	.LASF244
	.sleb128 145
	.uleb128 0x12
	.long	.LASF245
	.sleb128 146
	.uleb128 0x12
	.long	.LASF246
	.sleb128 147
	.uleb128 0x12
	.long	.LASF247
	.sleb128 148
	.uleb128 0x12
	.long	.LASF248
	.sleb128 149
	.uleb128 0x12
	.long	.LASF249
	.sleb128 150
	.uleb128 0x12
	.long	.LASF250
	.sleb128 151
	.uleb128 0x12
	.long	.LASF251
	.sleb128 152
	.uleb128 0x12
	.long	.LASF252
	.sleb128 153
	.uleb128 0x12
	.long	.LASF253
	.sleb128 154
	.uleb128 0x12
	.long	.LASF254
	.sleb128 155
	.uleb128 0x12
	.long	.LASF255
	.sleb128 156
	.uleb128 0x12
	.long	.LASF256
	.sleb128 157
	.uleb128 0x12
	.long	.LASF257
	.sleb128 158
	.uleb128 0x12
	.long	.LASF258
	.sleb128 159
	.uleb128 0x12
	.long	.LASF259
	.sleb128 160
	.uleb128 0x12
	.long	.LASF260
	.sleb128 161
	.uleb128 0x12
	.long	.LASF261
	.sleb128 162
	.uleb128 0x12
	.long	.LASF262
	.sleb128 163
	.uleb128 0x12
	.long	.LASF263
	.sleb128 164
	.uleb128 0x12
	.long	.LASF264
	.sleb128 165
	.uleb128 0x12
	.long	.LASF265
	.sleb128 166
	.uleb128 0x12
	.long	.LASF266
	.sleb128 167
	.uleb128 0x12
	.long	.LASF267
	.sleb128 168
	.uleb128 0x12
	.long	.LASF268
	.sleb128 169
	.uleb128 0x12
	.long	.LASF269
	.sleb128 170
	.uleb128 0x12
	.long	.LASF270
	.sleb128 171
	.uleb128 0x12
	.long	.LASF271
	.sleb128 172
	.uleb128 0x12
	.long	.LASF272
	.sleb128 173
	.uleb128 0x12
	.long	.LASF273
	.sleb128 174
	.uleb128 0x12
	.long	.LASF274
	.sleb128 175
	.uleb128 0x12
	.long	.LASF275
	.sleb128 176
	.uleb128 0x12
	.long	.LASF276
	.sleb128 177
	.uleb128 0x12
	.long	.LASF277
	.sleb128 178
	.uleb128 0x12
	.long	.LASF278
	.sleb128 179
	.uleb128 0x12
	.long	.LASF279
	.sleb128 180
	.uleb128 0x12
	.long	.LASF280
	.sleb128 181
	.uleb128 0x12
	.long	.LASF281
	.sleb128 182
	.uleb128 0x12
	.long	.LASF282
	.sleb128 183
	.uleb128 0x12
	.long	.LASF283
	.sleb128 184
	.uleb128 0x12
	.long	.LASF284
	.sleb128 185
	.uleb128 0x12
	.long	.LASF285
	.sleb128 186
	.uleb128 0x12
	.long	.LASF286
	.sleb128 187
	.uleb128 0x12
	.long	.LASF287
	.sleb128 188
	.uleb128 0x12
	.long	.LASF288
	.sleb128 189
	.uleb128 0x12
	.long	.LASF289
	.sleb128 190
	.uleb128 0x12
	.long	.LASF290
	.sleb128 191
	.uleb128 0x12
	.long	.LASF291
	.sleb128 192
	.uleb128 0x12
	.long	.LASF292
	.sleb128 193
	.uleb128 0x12
	.long	.LASF293
	.sleb128 194
	.uleb128 0x12
	.long	.LASF294
	.sleb128 195
	.uleb128 0x12
	.long	.LASF295
	.sleb128 196
	.uleb128 0x12
	.long	.LASF296
	.sleb128 197
	.uleb128 0x12
	.long	.LASF297
	.sleb128 198
	.uleb128 0x12
	.long	.LASF298
	.sleb128 199
	.uleb128 0x12
	.long	.LASF299
	.sleb128 235
	.uleb128 0x12
	.long	.LASF300
	.sleb128 236
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	0xbbe
	.uleb128 0x14
	.long	0xad
	.byte	0x0
	.uleb128 0x2
	.long	.LASF301
	.byte	0xc
	.byte	0x27
	.long	0x40e
	.uleb128 0x2
	.long	.LASF302
	.byte	0xc
	.byte	0x28
	.long	0x4cc
	.uleb128 0x2
	.long	.LASF303
	.byte	0xc
	.byte	0x29
	.long	0x5a4
	.uleb128 0x2
	.long	.LASF304
	.byte	0xd
	.byte	0x20
	.long	0xbea
	.uleb128 0x18
	.long	.LASF306
	.byte	0x1
	.uleb128 0x2
	.long	.LASF305
	.byte	0xe
	.byte	0x3f
	.long	0xbfb
	.uleb128 0x18
	.long	.LASF307
	.byte	0x1
	.uleb128 0x8
	.long	.LASF308
	.byte	0x8
	.byte	0xf
	.byte	0x26
	.long	0xc2a
	.uleb128 0xb
	.long	.LASF309
	.byte	0xf
	.byte	0x27
	.long	0xc2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF310
	.byte	0xf
	.byte	0x28
	.long	0xc2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xc01
	.uleb128 0x8
	.long	.LASF311
	.byte	0x10
	.byte	0xf
	.byte	0x2b
	.long	0xc67
	.uleb128 0xb
	.long	.LASF312
	.byte	0xf
	.byte	0x2c
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF313
	.byte	0xf
	.byte	0x2d
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF314
	.byte	0xf
	.byte	0x2e
	.long	0xc01
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF315
	.byte	0x10
	.byte	0x25
	.long	0xc01
	.uleb128 0x2
	.long	.LASF316
	.byte	0x10
	.byte	0x26
	.long	0xc30
	.uleb128 0xc
	.long	0xb5
	.long	0xc8d
	.uleb128 0xd
	.long	0x98
	.byte	0xf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF317
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF318
	.uleb128 0x2
	.long	.LASF319
	.byte	0x11
	.byte	0xbc
	.long	0xca6
	.uleb128 0x18
	.long	.LASF320
	.byte	0x1
	.uleb128 0x8
	.long	.LASF321
	.byte	0x30
	.byte	0x11
	.byte	0xca
	.long	0xce3
	.uleb128 0xb
	.long	.LASF322
	.byte	0x11
	.byte	0xcb
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF323
	.byte	0x11
	.byte	0xcc
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF324
	.byte	0x11
	.byte	0xcd
	.long	0xbbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF325
	.byte	0x11
	.byte	0xce
	.long	0xcac
	.uleb128 0x8
	.long	.LASF326
	.byte	0x74
	.byte	0x11
	.byte	0xe1
	.long	0xd41
	.uleb128 0xb
	.long	.LASF327
	.byte	0x11
	.byte	0xe2
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF328
	.byte	0x11
	.byte	0xe3
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF329
	.byte	0x11
	.byte	0xe4
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF323
	.byte	0x11
	.byte	0xe5
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF330
	.byte	0x11
	.byte	0xe6
	.long	0xbd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF331
	.byte	0x11
	.byte	0xe7
	.long	0xcee
	.uleb128 0x19
	.long	.LASF332
	.byte	0x11
	.value	0x105
	.long	0xbc9
	.uleb128 0x19
	.long	.LASF333
	.byte	0x11
	.value	0x12a
	.long	0xbf0
	.uleb128 0x19
	.long	.LASF334
	.byte	0x11
	.value	0x12f
	.long	0xd70
	.uleb128 0x18
	.long	.LASF335
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.long	0xce3
	.uleb128 0x8
	.long	.LASF336
	.byte	0x10
	.byte	0x12
	.byte	0x3d
	.long	0xdc1
	.uleb128 0xb
	.long	.LASF337
	.byte	0x12
	.byte	0x3e
	.long	0xdc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF338
	.byte	0x12
	.byte	0x3f
	.long	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF339
	.byte	0x12
	.byte	0x40
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF340
	.byte	0x12
	.byte	0x41
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xc
	.long	0xdd1
	.long	0xdd1
	.uleb128 0xd
	.long	0x98
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xd7c
	.uleb128 0x8
	.long	.LASF341
	.byte	0x14
	.byte	0x12
	.byte	0x92
	.long	0xe2a
	.uleb128 0xb
	.long	.LASF342
	.byte	0x12
	.byte	0x93
	.long	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF343
	.byte	0x12
	.byte	0x94
	.long	0x63b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF344
	.byte	0x12
	.byte	0x95
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF345
	.byte	0x12
	.byte	0x96
	.long	0x61a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF346
	.byte	0x12
	.byte	0x97
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF347
	.byte	0x13
	.byte	0x6e
	.long	0xdd7
	.uleb128 0x2
	.long	.LASF348
	.byte	0x13
	.byte	0x73
	.long	0xd7c
	.uleb128 0x8
	.long	.LASF349
	.byte	0x18
	.byte	0x14
	.byte	0x5a
	.long	0xe93
	.uleb128 0xb
	.long	.LASF350
	.byte	0x14
	.byte	0x5b
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF351
	.byte	0x14
	.byte	0x5c
	.long	0x5d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF352
	.byte	0x14
	.byte	0x5d
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF353
	.byte	0x14
	.byte	0x5e
	.long	0x5d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF354
	.byte	0x14
	.byte	0x5f
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF355
	.byte	0x14
	.byte	0x60
	.long	0xe40
	.uleb128 0x1a
	.long	.LASF357
	.byte	0x4
	.byte	0x15
	.value	0x183
	.long	0xedc
	.uleb128 0x12
	.long	.LASF358
	.sleb128 0
	.uleb128 0x12
	.long	.LASF359
	.sleb128 1
	.uleb128 0x12
	.long	.LASF360
	.sleb128 2
	.uleb128 0x12
	.long	.LASF361
	.sleb128 3
	.uleb128 0x12
	.long	.LASF362
	.sleb128 4
	.uleb128 0x12
	.long	.LASF363
	.sleb128 5
	.uleb128 0x12
	.long	.LASF364
	.sleb128 6
	.uleb128 0x12
	.long	.LASF365
	.sleb128 7
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF366
	.byte	0x4
	.byte	0x15
	.value	0x194
	.long	0xf38
	.uleb128 0x12
	.long	.LASF367
	.sleb128 0
	.uleb128 0x12
	.long	.LASF368
	.sleb128 1
	.uleb128 0x12
	.long	.LASF369
	.sleb128 2
	.uleb128 0x12
	.long	.LASF370
	.sleb128 3
	.uleb128 0x12
	.long	.LASF371
	.sleb128 4
	.uleb128 0x12
	.long	.LASF372
	.sleb128 5
	.uleb128 0x12
	.long	.LASF373
	.sleb128 6
	.uleb128 0x12
	.long	.LASF374
	.sleb128 7
	.uleb128 0x12
	.long	.LASF375
	.sleb128 8
	.uleb128 0x12
	.long	.LASF376
	.sleb128 9
	.uleb128 0x12
	.long	.LASF377
	.sleb128 10
	.uleb128 0x12
	.long	.LASF378
	.sleb128 11
	.uleb128 0x12
	.long	.LASF379
	.sleb128 12
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF380
	.byte	0x4
	.byte	0x15
	.value	0x1aa
	.long	0xf7c
	.uleb128 0x12
	.long	.LASF381
	.sleb128 0
	.uleb128 0x12
	.long	.LASF382
	.sleb128 1
	.uleb128 0x12
	.long	.LASF383
	.sleb128 2
	.uleb128 0x12
	.long	.LASF384
	.sleb128 3
	.uleb128 0x12
	.long	.LASF385
	.sleb128 4
	.uleb128 0x12
	.long	.LASF386
	.sleb128 5
	.uleb128 0x12
	.long	.LASF387
	.sleb128 6
	.uleb128 0x12
	.long	.LASF388
	.sleb128 7
	.uleb128 0x12
	.long	.LASF389
	.sleb128 8
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF390
	.byte	0x4
	.byte	0x15
	.value	0x1c3
	.long	0xfb4
	.uleb128 0x12
	.long	.LASF391
	.sleb128 0
	.uleb128 0x12
	.long	.LASF392
	.sleb128 1
	.uleb128 0x12
	.long	.LASF393
	.sleb128 2
	.uleb128 0x12
	.long	.LASF394
	.sleb128 3
	.uleb128 0x12
	.long	.LASF395
	.sleb128 4
	.uleb128 0x12
	.long	.LASF396
	.sleb128 5
	.uleb128 0x12
	.long	.LASF397
	.sleb128 6
	.byte	0x0
	.uleb128 0x19
	.long	.LASF398
	.byte	0x15
	.value	0x1cb
	.long	0xf7c
	.uleb128 0x1b
	.long	.LASF399
	.byte	0xf0
	.byte	0x15
	.value	0x1d1
	.long	0x1105
	.uleb128 0x9
	.long	.LASF400
	.byte	0x15
	.value	0x1d2
	.long	0x630
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF401
	.byte	0x15
	.value	0x1d3
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF402
	.byte	0x15
	.value	0x1d4
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF403
	.byte	0x15
	.value	0x1d5
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF404
	.byte	0x15
	.value	0x1d6
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF405
	.byte	0x15
	.value	0x1d7
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF406
	.byte	0x15
	.value	0x1d8
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF407
	.byte	0x15
	.value	0x1d9
	.long	0x1105
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF408
	.byte	0x15
	.value	0x1da
	.long	0x1105
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF409
	.byte	0x15
	.value	0x1db
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF410
	.byte	0x15
	.value	0x1dc
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF411
	.byte	0x15
	.value	0x1dd
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF412
	.byte	0x15
	.value	0x1de
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF413
	.byte	0x15
	.value	0x1df
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF414
	.byte	0x15
	.value	0x1e0
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF415
	.byte	0x15
	.value	0x1e1
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF416
	.byte	0x15
	.value	0x1e2
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF417
	.byte	0x15
	.value	0x1e3
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF418
	.byte	0x15
	.value	0x1e4
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF419
	.byte	0x15
	.value	0x1e5
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.byte	0x0
	.uleb128 0xc
	.long	0x5e0
	.long	0x1115
	.uleb128 0xd
	.long	0x98
	.byte	0x5
	.byte	0x0
	.uleb128 0x19
	.long	.LASF420
	.byte	0x15
	.value	0x1e6
	.long	0xfc0
	.uleb128 0x1c
	.byte	0x4
	.byte	0x15
	.value	0x23b
	.long	0x1143
	.uleb128 0x12
	.long	.LASF421
	.sleb128 0
	.uleb128 0x12
	.long	.LASF422
	.sleb128 1
	.uleb128 0x12
	.long	.LASF423
	.sleb128 2
	.uleb128 0x12
	.long	.LASF424
	.sleb128 3
	.byte	0x0
	.uleb128 0x19
	.long	.LASF425
	.byte	0x15
	.value	0x240
	.long	0x1121
	.uleb128 0x2
	.long	.LASF426
	.byte	0x17
	.byte	0x2d
	.long	0x115a
	.uleb128 0x1d
	.string	"spa"
	.value	0x7b8
	.byte	0x11
	.value	0x1c3
	.long	0x15fd
	.uleb128 0xb
	.long	.LASF427
	.byte	0x18
	.byte	0x60
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF428
	.byte	0x18
	.byte	0x61
	.long	0xe35
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF429
	.byte	0x18
	.byte	0x62
	.long	0x2c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF430
	.byte	0x18
	.byte	0x63
	.long	0x2c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF431
	.byte	0x18
	.byte	0x64
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF432
	.byte	0x18
	.byte	0x65
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF433
	.byte	0x18
	.byte	0x66
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF434
	.byte	0x18
	.byte	0x67
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF435
	.byte	0x18
	.byte	0x68
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF436
	.byte	0x18
	.byte	0x69
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.long	.LASF437
	.byte	0x18
	.byte	0x6a
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0xb
	.long	.LASF438
	.byte	0x18
	.byte	0x6b
	.long	0x1143
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF439
	.byte	0x18
	.byte	0x6c
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.long	.LASF440
	.byte	0x18
	.byte	0x6d
	.long	0x2ce2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.long	.LASF441
	.byte	0x18
	.byte	0x6e
	.long	0x2cf8
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.long	.LASF442
	.byte	0x18
	.byte	0x6f
	.long	0x2cfe
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF443
	.byte	0x18
	.byte	0x70
	.long	0x2cfe
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.long	.LASF444
	.byte	0x18
	.byte	0x71
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF445
	.byte	0x18
	.byte	0x72
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF446
	.byte	0x18
	.byte	0x73
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF447
	.byte	0x18
	.byte	0x74
	.long	0x1ce2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF448
	.byte	0x18
	.byte	0x75
	.long	0x1df4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.long	.LASF449
	.byte	0x18
	.byte	0x76
	.long	0x247b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.long	.LASF450
	.byte	0x18
	.byte	0x77
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.long	.LASF451
	.byte	0x18
	.byte	0x78
	.long	0xc72
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.long	.LASF452
	.byte	0x18
	.byte	0x79
	.long	0x199c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xb
	.long	.LASF453
	.byte	0x18
	.byte	0x7a
	.long	0x199c
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xb
	.long	.LASF454
	.byte	0x18
	.byte	0x7b
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xb
	.long	.LASF455
	.byte	0x18
	.byte	0x7c
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xb
	.long	.LASF456
	.byte	0x18
	.byte	0x7d
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xb
	.long	.LASF457
	.byte	0x18
	.byte	0x7e
	.long	0x2c3d
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.long	.LASF458
	.byte	0x18
	.byte	0x7f
	.long	0xd41
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0xb
	.long	.LASF459
	.byte	0x18
	.byte	0x80
	.long	0x2a49
	.byte	0x3
	.byte	0x23
	.uleb128 0x250
	.uleb128 0xb
	.long	.LASF460
	.byte	0x18
	.byte	0x81
	.long	0x2a49
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f8
	.uleb128 0xb
	.long	.LASF461
	.byte	0x18
	.byte	0x82
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xb
	.long	.LASF462
	.byte	0x18
	.byte	0x83
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xb
	.long	.LASF463
	.byte	0x18
	.byte	0x84
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xb
	.long	.LASF464
	.byte	0x18
	.byte	0x85
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.uleb128 0xb
	.long	.LASF465
	.byte	0x18
	.byte	0x86
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e8
	.uleb128 0xb
	.long	.LASF466
	.byte	0x18
	.byte	0x87
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x418
	.uleb128 0xb
	.long	.LASF467
	.byte	0x18
	.byte	0x88
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x419
	.uleb128 0xb
	.long	.LASF468
	.byte	0x18
	.byte	0x89
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x41a
	.uleb128 0xb
	.long	.LASF469
	.byte	0x18
	.byte	0x8a
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x41b
	.uleb128 0xb
	.long	.LASF470
	.byte	0x18
	.byte	0x8b
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x41c
	.uleb128 0xb
	.long	.LASF471
	.byte	0x18
	.byte	0x8c
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x420
	.uleb128 0xb
	.long	.LASF472
	.byte	0x18
	.byte	0x8d
	.long	0x27bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x450
	.uleb128 0xb
	.long	.LASF473
	.byte	0x18
	.byte	0x8e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x454
	.uleb128 0xb
	.long	.LASF474
	.byte	0x18
	.byte	0x8f
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x458
	.uleb128 0xb
	.long	.LASF475
	.byte	0x18
	.byte	0x90
	.long	0x5ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x488
	.uleb128 0xb
	.long	.LASF476
	.byte	0x18
	.byte	0x91
	.long	0xaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x48c
	.uleb128 0xb
	.long	.LASF477
	.byte	0x18
	.byte	0x92
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x490
	.uleb128 0xb
	.long	.LASF478
	.byte	0x18
	.byte	0x93
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x4c0
	.uleb128 0xb
	.long	.LASF479
	.byte	0x18
	.byte	0x94
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x4c8
	.uleb128 0xb
	.long	.LASF480
	.byte	0x18
	.byte	0x95
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x4cc
	.uleb128 0xb
	.long	.LASF481
	.byte	0x18
	.byte	0x96
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x500
	.uleb128 0xb
	.long	.LASF482
	.byte	0x18
	.byte	0x97
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x508
	.uleb128 0xb
	.long	.LASF483
	.byte	0x18
	.byte	0x98
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x510
	.uleb128 0xb
	.long	.LASF484
	.byte	0x18
	.byte	0x99
	.long	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x540
	.uleb128 0xb
	.long	.LASF485
	.byte	0x18
	.byte	0x9a
	.long	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x554
	.uleb128 0xb
	.long	.LASF486
	.byte	0x18
	.byte	0x9b
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x568
	.uleb128 0xb
	.long	.LASF487
	.byte	0x18
	.byte	0x9c
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x570
	.uleb128 0xb
	.long	.LASF488
	.byte	0x18
	.byte	0x9d
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x578
	.uleb128 0xb
	.long	.LASF489
	.byte	0x18
	.byte	0x9e
	.long	0x247b
	.byte	0x3
	.byte	0x23
	.uleb128 0x5a8
	.uleb128 0xb
	.long	.LASF490
	.byte	0x18
	.byte	0x9f
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x5ac
	.uleb128 0xb
	.long	.LASF491
	.byte	0x18
	.byte	0xa0
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x5e0
	.uleb128 0xb
	.long	.LASF492
	.byte	0x18
	.byte	0xa1
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x5e8
	.uleb128 0xb
	.long	.LASF493
	.byte	0x18
	.byte	0xa2
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x5f0
	.uleb128 0xb
	.long	.LASF494
	.byte	0x18
	.byte	0xa3
	.long	0xc72
	.byte	0x3
	.byte	0x23
	.uleb128 0x5f4
	.uleb128 0xb
	.long	.LASF495
	.byte	0x18
	.byte	0xa4
	.long	0xc72
	.byte	0x3
	.byte	0x23
	.uleb128 0x604
	.uleb128 0xb
	.long	.LASF496
	.byte	0x18
	.byte	0xa5
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x618
	.uleb128 0xb
	.long	.LASF497
	.byte	0x18
	.byte	0xa6
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x648
	.uleb128 0xb
	.long	.LASF498
	.byte	0x18
	.byte	0xa7
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x678
	.uleb128 0xb
	.long	.LASF499
	.byte	0x18
	.byte	0xa8
	.long	0x2d0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x67c
	.uleb128 0xb
	.long	.LASF500
	.byte	0x18
	.byte	0xa9
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x680
	.uleb128 0xb
	.long	.LASF501
	.byte	0x18
	.byte	0xaa
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x684
	.uleb128 0xb
	.long	.LASF502
	.byte	0x18
	.byte	0xab
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x688
	.uleb128 0xb
	.long	.LASF503
	.byte	0x18
	.byte	0xac
	.long	0x2cd7
	.byte	0x3
	.byte	0x23
	.uleb128 0x68c
	.uleb128 0xb
	.long	.LASF504
	.byte	0x18
	.byte	0xb3
	.long	0x2ca7
	.byte	0x3
	.byte	0x23
	.uleb128 0x690
	.uleb128 0xb
	.long	.LASF505
	.byte	0x18
	.byte	0xb4
	.long	0x2b08
	.byte	0x3
	.byte	0x23
	.uleb128 0x758
	.byte	0x0
	.uleb128 0x2
	.long	.LASF506
	.byte	0x17
	.byte	0x2e
	.long	0x1608
	.uleb128 0x1e
	.long	.LASF507
	.value	0x510
	.byte	0x17
	.byte	0x2e
	.long	0x198b
	.uleb128 0xb
	.long	.LASF508
	.byte	0x19
	.byte	0x74
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF509
	.byte	0x19
	.byte	0x75
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF510
	.byte	0x19
	.byte	0x76
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF511
	.byte	0x19
	.byte	0x77
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF512
	.byte	0x19
	.byte	0x78
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF357
	.byte	0x19
	.byte	0x79
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF513
	.byte	0x19
	.byte	0x7a
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF514
	.byte	0x19
	.byte	0x7b
	.long	0x2f34
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF515
	.byte	0x19
	.byte	0x7c
	.long	0x2469
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF516
	.byte	0x19
	.byte	0x7d
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF517
	.byte	0x19
	.byte	0x7e
	.long	0x247b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.long	.LASF518
	.byte	0x19
	.byte	0x7f
	.long	0x247b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF519
	.byte	0x19
	.byte	0x80
	.long	0x2481
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF520
	.byte	0x19
	.byte	0x81
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF521
	.byte	0x19
	.byte	0x82
	.long	0x25b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF522
	.byte	0x19
	.byte	0x83
	.long	0x25b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.long	.LASF399
	.byte	0x19
	.byte	0x84
	.long	0x1115
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xb
	.long	.LASF523
	.byte	0x19
	.byte	0x89
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.long	.LASF524
	.byte	0x19
	.byte	0x8a
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xb
	.long	.LASF525
	.byte	0x19
	.byte	0x8b
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xb
	.long	.LASF526
	.byte	0x19
	.byte	0x8c
	.long	0x2f3a
	.byte	0x3
	.byte	0x23
	.uleb128 0x250
	.uleb128 0xb
	.long	.LASF527
	.byte	0x19
	.byte	0x8d
	.long	0x2f40
	.byte	0x3
	.byte	0x23
	.uleb128 0x254
	.uleb128 0xb
	.long	.LASF528
	.byte	0x19
	.byte	0x8e
	.long	0x1df4
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0xb
	.long	.LASF529
	.byte	0x19
	.byte	0x8f
	.long	0x1df4
	.byte	0x3
	.byte	0x23
	.uleb128 0x29c
	.uleb128 0xb
	.long	.LASF530
	.byte	0x19
	.byte	0x90
	.long	0x1d9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xb
	.long	.LASF531
	.byte	0x19
	.byte	0x91
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f4
	.uleb128 0xb
	.long	.LASF532
	.byte	0x19
	.byte	0x92
	.long	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f8
	.uleb128 0xb
	.long	.LASF533
	.byte	0x19
	.byte	0x93
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xb
	.long	.LASF534
	.byte	0x19
	.byte	0x94
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x308
	.uleb128 0xb
	.long	.LASF535
	.byte	0x19
	.byte	0x99
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x310
	.uleb128 0xb
	.long	.LASF536
	.byte	0x19
	.byte	0x9a
	.long	0x25f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x318
	.uleb128 0xb
	.long	.LASF537
	.byte	0x19
	.byte	0x9b
	.long	0x1d9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x330
	.uleb128 0xb
	.long	.LASF538
	.byte	0x19
	.byte	0x9c
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x348
	.uleb128 0xb
	.long	.LASF539
	.byte	0x19
	.byte	0x9d
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x350
	.uleb128 0xb
	.long	.LASF540
	.byte	0x19
	.byte	0x9e
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x358
	.uleb128 0xb
	.long	.LASF541
	.byte	0x19
	.byte	0x9f
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x360
	.uleb128 0xb
	.long	.LASF542
	.byte	0x19
	.byte	0xa0
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x368
	.uleb128 0xb
	.long	.LASF543
	.byte	0x19
	.byte	0xa1
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xb
	.long	.LASF544
	.byte	0x19
	.byte	0xa2
	.long	0xaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x378
	.uleb128 0xb
	.long	.LASF545
	.byte	0x19
	.byte	0xa3
	.long	0xaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x37c
	.uleb128 0xb
	.long	.LASF546
	.byte	0x19
	.byte	0xa4
	.long	0xaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xb
	.long	.LASF547
	.byte	0x19
	.byte	0xa5
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xb
	.long	.LASF548
	.byte	0x19
	.byte	0xa6
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xb
	.long	.LASF549
	.byte	0x19
	.byte	0xa7
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x394
	.uleb128 0xb
	.long	.LASF550
	.byte	0x19
	.byte	0xa8
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x395
	.uleb128 0xb
	.long	.LASF551
	.byte	0x19
	.byte	0xa9
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x396
	.uleb128 0xb
	.long	.LASF552
	.byte	0x19
	.byte	0xaa
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xb
	.long	.LASF553
	.byte	0x19
	.byte	0xab
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xb
	.long	.LASF554
	.byte	0x19
	.byte	0xac
	.long	0x2d10
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xb
	.long	.LASF555
	.byte	0x19
	.byte	0xad
	.long	0x2d6e
	.byte	0x3
	.byte	0x23
	.uleb128 0x428
	.uleb128 0xb
	.long	.LASF556
	.byte	0x19
	.byte	0xae
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x480
	.uleb128 0xb
	.long	.LASF557
	.byte	0x19
	.byte	0xaf
	.long	0x630
	.byte	0x3
	.byte	0x23
	.uleb128 0x488
	.uleb128 0xb
	.long	.LASF558
	.byte	0x19
	.byte	0xb0
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x490
	.uleb128 0xb
	.long	.LASF559
	.byte	0x19
	.byte	0xb1
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x498
	.uleb128 0xb
	.long	.LASF560
	.byte	0x19
	.byte	0xb2
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xb
	.long	.LASF561
	.byte	0x19
	.byte	0xb3
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xb
	.long	.LASF562
	.byte	0x19
	.byte	0xb4
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xb
	.long	.LASF366
	.byte	0x19
	.byte	0xb5
	.long	0x2f4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0xb
	.long	.LASF563
	.byte	0x19
	.byte	0xbe
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xb
	.long	.LASF564
	.byte	0x19
	.byte	0xbf
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF565
	.byte	0x17
	.byte	0x2f
	.long	0x1996
	.uleb128 0x18
	.long	.LASF566
	.byte	0x1
	.uleb128 0x2
	.long	.LASF567
	.byte	0x17
	.byte	0x32
	.long	0x19a7
	.uleb128 0x8
	.long	.LASF568
	.byte	0x20
	.byte	0x17
	.byte	0x32
	.long	0x1a16
	.uleb128 0xb
	.long	.LASF569
	.byte	0x18
	.byte	0x3f
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF570
	.byte	0x18
	.byte	0x40
	.long	0x2c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF571
	.byte	0x18
	.byte	0x41
	.long	0x2481
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF572
	.byte	0x18
	.byte	0x42
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF573
	.byte	0x18
	.byte	0x43
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF574
	.byte	0x18
	.byte	0x44
	.long	0x2c4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF575
	.byte	0x18
	.byte	0x45
	.long	0x60f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x1f
	.string	"dva"
	.byte	0x10
	.byte	0x17
	.byte	0x6a
	.long	0x1a31
	.uleb128 0xb
	.long	.LASF576
	.byte	0x17
	.byte	0x6b
	.long	0x1a31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x5e0
	.long	0x1a41
	.uleb128 0xd
	.long	0x98
	.byte	0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF577
	.byte	0x17
	.byte	0x6c
	.long	0x1a16
	.uleb128 0x8
	.long	.LASF578
	.byte	0x20
	.byte	0x17
	.byte	0x71
	.long	0x1a67
	.uleb128 0xb
	.long	.LASF579
	.byte	0x17
	.byte	0x72
	.long	0x1a67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x5e0
	.long	0x1a77
	.uleb128 0xd
	.long	0x98
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF580
	.byte	0x17
	.byte	0x73
	.long	0x1a4c
	.uleb128 0x8
	.long	.LASF581
	.byte	0x80
	.byte	0x17
	.byte	0xae
	.long	0x1ae3
	.uleb128 0xb
	.long	.LASF582
	.byte	0x17
	.byte	0xaf
	.long	0x1ae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF583
	.byte	0x17
	.byte	0xb0
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF584
	.byte	0x17
	.byte	0xb1
	.long	0x1af3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF585
	.byte	0x17
	.byte	0xb2
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF586
	.byte	0x17
	.byte	0xb3
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF587
	.byte	0x17
	.byte	0xb4
	.long	0x1a77
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0xc
	.long	0x1a41
	.long	0x1af3
	.uleb128 0xd
	.long	0x98
	.byte	0x2
	.byte	0x0
	.uleb128 0xc
	.long	0x5e0
	.long	0x1b03
	.uleb128 0xd
	.long	0x98
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.long	.LASF588
	.byte	0x17
	.byte	0xb5
	.long	0x1a82
	.uleb128 0x2
	.long	.LASF589
	.byte	0x1a
	.byte	0x46
	.long	0x1b19
	.uleb128 0x18
	.long	.LASF590
	.byte	0x1
	.uleb128 0x18
	.long	.LASF591
	.byte	0x1
	.uleb128 0x11
	.long	.LASF592
	.byte	0x4
	.byte	0x1a
	.byte	0x4a
	.long	0x1c22
	.uleb128 0x12
	.long	.LASF593
	.sleb128 0
	.uleb128 0x12
	.long	.LASF594
	.sleb128 1
	.uleb128 0x12
	.long	.LASF595
	.sleb128 2
	.uleb128 0x12
	.long	.LASF596
	.sleb128 3
	.uleb128 0x12
	.long	.LASF597
	.sleb128 4
	.uleb128 0x12
	.long	.LASF598
	.sleb128 5
	.uleb128 0x12
	.long	.LASF599
	.sleb128 6
	.uleb128 0x12
	.long	.LASF600
	.sleb128 7
	.uleb128 0x12
	.long	.LASF601
	.sleb128 8
	.uleb128 0x12
	.long	.LASF602
	.sleb128 9
	.uleb128 0x12
	.long	.LASF603
	.sleb128 10
	.uleb128 0x12
	.long	.LASF604
	.sleb128 11
	.uleb128 0x12
	.long	.LASF605
	.sleb128 12
	.uleb128 0x12
	.long	.LASF606
	.sleb128 13
	.uleb128 0x12
	.long	.LASF607
	.sleb128 14
	.uleb128 0x12
	.long	.LASF608
	.sleb128 15
	.uleb128 0x12
	.long	.LASF609
	.sleb128 16
	.uleb128 0x12
	.long	.LASF610
	.sleb128 17
	.uleb128 0x12
	.long	.LASF611
	.sleb128 18
	.uleb128 0x12
	.long	.LASF612
	.sleb128 19
	.uleb128 0x12
	.long	.LASF613
	.sleb128 20
	.uleb128 0x12
	.long	.LASF614
	.sleb128 21
	.uleb128 0x12
	.long	.LASF615
	.sleb128 22
	.uleb128 0x12
	.long	.LASF616
	.sleb128 23
	.uleb128 0x12
	.long	.LASF617
	.sleb128 24
	.uleb128 0x12
	.long	.LASF618
	.sleb128 25
	.uleb128 0x12
	.long	.LASF619
	.sleb128 26
	.uleb128 0x12
	.long	.LASF620
	.sleb128 27
	.uleb128 0x12
	.long	.LASF621
	.sleb128 28
	.uleb128 0x12
	.long	.LASF622
	.sleb128 29
	.uleb128 0x12
	.long	.LASF623
	.sleb128 30
	.uleb128 0x12
	.long	.LASF624
	.sleb128 31
	.uleb128 0x12
	.long	.LASF625
	.sleb128 32
	.uleb128 0x12
	.long	.LASF626
	.sleb128 33
	.uleb128 0x12
	.long	.LASF627
	.sleb128 34
	.uleb128 0x12
	.long	.LASF628
	.sleb128 35
	.uleb128 0x12
	.long	.LASF629
	.sleb128 36
	.uleb128 0x12
	.long	.LASF630
	.sleb128 37
	.uleb128 0x12
	.long	.LASF631
	.sleb128 38
	.uleb128 0x12
	.long	.LASF632
	.sleb128 39
	.byte	0x0
	.uleb128 0x8
	.long	.LASF633
	.byte	0x20
	.byte	0x1a
	.byte	0xbb
	.long	0x1c67
	.uleb128 0xb
	.long	.LASF634
	.byte	0x1a
	.byte	0xbc
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF635
	.byte	0x1a
	.byte	0xbd
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF636
	.byte	0x1a
	.byte	0xbe
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF637
	.byte	0x1a
	.byte	0xbf
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF638
	.byte	0x1a
	.byte	0xc0
	.long	0x1c22
	.uleb128 0x19
	.long	.LASF639
	.byte	0x1a
	.value	0x1e8
	.long	0x1c7e
	.uleb128 0x17
	.byte	0x1
	.long	0x1c8f
	.uleb128 0x14
	.long	0xad
	.uleb128 0x14
	.long	0x2d
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF640
	.byte	0xc
	.byte	0x1a
	.value	0x1ea
	.long	0x1cca
	.uleb128 0x9
	.long	.LASF641
	.byte	0x1a
	.value	0x1eb
	.long	0x1cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF642
	.byte	0x1a
	.value	0x1ec
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF643
	.byte	0x1a
	.value	0x1ed
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1c72
	.uleb128 0x19
	.long	.LASF644
	.byte	0x1a
	.value	0x1ee
	.long	0x1c8f
	.uleb128 0x7
	.byte	0x4
	.long	0x1c67
	.uleb128 0x7
	.byte	0x4
	.long	0x1b0e
	.uleb128 0x18
	.long	.LASF645
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.long	0x1ce8
	.uleb128 0x2
	.long	.LASF646
	.byte	0x1b
	.byte	0x2f
	.long	0x1cff
	.uleb128 0x1e
	.long	.LASF647
	.value	0x120
	.byte	0x1b
	.byte	0x2f
	.long	0x1d47
	.uleb128 0xb
	.long	.LASF648
	.byte	0x1c
	.byte	0x27
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF649
	.byte	0x1c
	.byte	0x28
	.long	0x2674
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF650
	.byte	0x1c
	.byte	0x29
	.long	0x1a67
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.long	.LASF651
	.byte	0x1c
	.byte	0x2a
	.long	0xc7d
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1cf4
	.uleb128 0x8
	.long	.LASF652
	.byte	0x14
	.byte	0x1b
	.byte	0x36
	.long	0x1d76
	.uleb128 0xb
	.long	.LASF653
	.byte	0x1b
	.byte	0x37
	.long	0x1d76
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF654
	.byte	0x1b
	.byte	0x38
	.long	0x1d8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x1d86
	.long	0x1d86
	.uleb128 0xd
	.long	0x98
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1d4d
	.uleb128 0xc
	.long	0x5bf
	.long	0x1d9c
	.uleb128 0xd
	.long	0x98
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF655
	.byte	0x1b
	.byte	0x39
	.long	0x1d4d
	.uleb128 0x8
	.long	.LASF656
	.byte	0x44
	.byte	0x1b
	.byte	0x3b
	.long	0x1dde
	.uleb128 0xb
	.long	.LASF657
	.byte	0x1b
	.byte	0x3c
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF658
	.byte	0x1b
	.byte	0x3d
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF659
	.byte	0x1b
	.byte	0x3e
	.long	0x1dde
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0xc
	.long	0x1dee
	.long	0x1dee
	.uleb128 0xd
	.long	0x98
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1d9c
	.uleb128 0x2
	.long	.LASF660
	.byte	0x1b
	.byte	0x3f
	.long	0x1da7
	.uleb128 0xc
	.long	0xb5
	.long	0x1e0f
	.uleb128 0xd
	.long	0x98
	.byte	0xb
	.byte	0x0
	.uleb128 0x8
	.long	.LASF661
	.byte	0xc
	.byte	0x1d
	.byte	0xbf
	.long	0x1e46
	.uleb128 0xb
	.long	.LASF662
	.byte	0x1d
	.byte	0xc0
	.long	0x1e57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF663
	.byte	0x1d
	.byte	0xc1
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF664
	.byte	0x1d
	.byte	0xc2
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	0x1e57
	.uleb128 0x14
	.long	0xad
	.uleb128 0x14
	.long	0x62
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1e46
	.uleb128 0xc
	.long	0xb5
	.long	0x1e6d
	.uleb128 0xd
	.long	0x98
	.byte	0x13
	.byte	0x0
	.uleb128 0x11
	.long	.LASF665
	.byte	0x4
	.byte	0x1e
	.byte	0x35
	.long	0x1f0a
	.uleb128 0x12
	.long	.LASF666
	.sleb128 0
	.uleb128 0x12
	.long	.LASF667
	.sleb128 1
	.uleb128 0x12
	.long	.LASF668
	.sleb128 2
	.uleb128 0x12
	.long	.LASF669
	.sleb128 3
	.uleb128 0x12
	.long	.LASF670
	.sleb128 4
	.uleb128 0x12
	.long	.LASF671
	.sleb128 5
	.uleb128 0x12
	.long	.LASF672
	.sleb128 6
	.uleb128 0x12
	.long	.LASF673
	.sleb128 7
	.uleb128 0x12
	.long	.LASF674
	.sleb128 8
	.uleb128 0x12
	.long	.LASF675
	.sleb128 9
	.uleb128 0x12
	.long	.LASF676
	.sleb128 10
	.uleb128 0x12
	.long	.LASF677
	.sleb128 11
	.uleb128 0x12
	.long	.LASF678
	.sleb128 12
	.uleb128 0x12
	.long	.LASF679
	.sleb128 13
	.uleb128 0x12
	.long	.LASF680
	.sleb128 14
	.uleb128 0x12
	.long	.LASF681
	.sleb128 15
	.uleb128 0x12
	.long	.LASF682
	.sleb128 16
	.uleb128 0x12
	.long	.LASF683
	.sleb128 17
	.uleb128 0x12
	.long	.LASF684
	.sleb128 18
	.uleb128 0x12
	.long	.LASF685
	.sleb128 19
	.uleb128 0x12
	.long	.LASF686
	.sleb128 20
	.uleb128 0x12
	.long	.LASF687
	.sleb128 21
	.uleb128 0x12
	.long	.LASF688
	.sleb128 22
	.uleb128 0x12
	.long	.LASF689
	.sleb128 23
	.byte	0x0
	.uleb128 0x2
	.long	.LASF690
	.byte	0x1e
	.byte	0xaf
	.long	0x1f15
	.uleb128 0x8
	.long	.LASF691
	.byte	0x20
	.byte	0x1e
	.byte	0xaf
	.long	0x1f5a
	.uleb128 0xb
	.long	.LASF692
	.byte	0x1e
	.byte	0xb1
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF693
	.byte	0x1e
	.byte	0xb2
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF694
	.byte	0x1e
	.byte	0xb3
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF695
	.byte	0x1e
	.byte	0xb4
	.long	0x1f5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1f0a
	.uleb128 0x8
	.long	.LASF696
	.byte	0x28
	.byte	0x1f
	.byte	0x2e
	.long	0x1f89
	.uleb128 0xb
	.long	.LASF697
	.byte	0x1f
	.byte	0x2f
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF698
	.byte	0x1f
	.byte	0x30
	.long	0x1a77
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF699
	.byte	0x1f
	.byte	0x31
	.long	0x1f60
	.uleb128 0x1e
	.long	.LASF700
	.value	0x200
	.byte	0x1f
	.byte	0x43
	.long	0x1fce
	.uleb128 0xb
	.long	.LASF701
	.byte	0x1f
	.byte	0x44
	.long	0x1fce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF702
	.byte	0x1f
	.byte	0x45
	.long	0x1fde
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.long	.LASF703
	.byte	0x1f
	.byte	0x46
	.long	0x1f89
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.byte	0x0
	.uleb128 0xc
	.long	0x1b03
	.long	0x1fde
	.uleb128 0xd
	.long	0x98
	.byte	0x2
	.byte	0x0
	.uleb128 0xc
	.long	0x5e0
	.long	0x1fee
	.uleb128 0xd
	.long	0x98
	.byte	0xa
	.byte	0x0
	.uleb128 0x2
	.long	.LASF704
	.byte	0x1f
	.byte	0x47
	.long	0x1f94
	.uleb128 0x11
	.long	.LASF705
	.byte	0x4
	.byte	0x1f
	.byte	0x49
	.long	0x2042
	.uleb128 0x12
	.long	.LASF706
	.sleb128 0
	.uleb128 0x12
	.long	.LASF707
	.sleb128 1
	.uleb128 0x12
	.long	.LASF708
	.sleb128 2
	.uleb128 0x12
	.long	.LASF709
	.sleb128 3
	.uleb128 0x12
	.long	.LASF710
	.sleb128 4
	.uleb128 0x12
	.long	.LASF711
	.sleb128 5
	.uleb128 0x12
	.long	.LASF712
	.sleb128 6
	.uleb128 0x12
	.long	.LASF713
	.sleb128 7
	.uleb128 0x12
	.long	.LASF714
	.sleb128 8
	.uleb128 0x12
	.long	.LASF715
	.sleb128 9
	.byte	0x0
	.uleb128 0x11
	.long	.LASF716
	.byte	0x4
	.byte	0x1f
	.byte	0x59
	.long	0x20a9
	.uleb128 0x12
	.long	.LASF717
	.sleb128 0
	.uleb128 0x12
	.long	.LASF718
	.sleb128 1
	.uleb128 0x12
	.long	.LASF719
	.sleb128 2
	.uleb128 0x12
	.long	.LASF720
	.sleb128 3
	.uleb128 0x12
	.long	.LASF721
	.sleb128 4
	.uleb128 0x12
	.long	.LASF722
	.sleb128 5
	.uleb128 0x12
	.long	.LASF723
	.sleb128 6
	.uleb128 0x12
	.long	.LASF724
	.sleb128 7
	.uleb128 0x12
	.long	.LASF725
	.sleb128 8
	.uleb128 0x12
	.long	.LASF726
	.sleb128 9
	.uleb128 0x12
	.long	.LASF727
	.sleb128 10
	.uleb128 0x12
	.long	.LASF728
	.sleb128 11
	.uleb128 0x12
	.long	.LASF729
	.sleb128 12
	.uleb128 0x12
	.long	.LASF730
	.sleb128 13
	.uleb128 0x12
	.long	.LASF731
	.sleb128 14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF732
	.byte	0x1f
	.byte	0xbb
	.long	0x20b4
	.uleb128 0x20
	.string	"zio"
	.value	0x2a0
	.byte	0x1a
	.byte	0x39
	.long	0x23fc
	.uleb128 0xb
	.long	.LASF733
	.byte	0x1f
	.byte	0xde
	.long	0x2413
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF734
	.byte	0x1f
	.byte	0xdf
	.long	0x2413
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF735
	.byte	0x1f
	.byte	0xe0
	.long	0x2469
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF736
	.byte	0x1f
	.byte	0xe1
	.long	0x245e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF737
	.byte	0x1f
	.byte	0xe2
	.long	0x1ff9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF738
	.byte	0x1f
	.byte	0xe3
	.long	0x2042
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF739
	.byte	0x1f
	.byte	0xe4
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF740
	.byte	0x1f
	.byte	0xe5
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF741
	.byte	0x1f
	.byte	0xe6
	.long	0x246f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF742
	.byte	0x1f
	.byte	0xe7
	.long	0x1b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF743
	.byte	0x1f
	.byte	0xe8
	.long	0x2413
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.long	.LASF744
	.byte	0x1f
	.byte	0xe9
	.long	0x2413
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.long	.LASF745
	.byte	0x1f
	.byte	0xea
	.long	0x2413
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.long	.LASF746
	.byte	0x1f
	.byte	0xeb
	.long	0x1f5a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.long	.LASF747
	.byte	0x1f
	.byte	0xec
	.long	0x2413
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.long	.LASF748
	.byte	0x1f
	.byte	0xed
	.long	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.long	.LASF749
	.byte	0x1f
	.byte	0xf0
	.long	0x2475
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.long	.LASF750
	.byte	0x1f
	.byte	0xf1
	.long	0x2475
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.long	.LASF751
	.byte	0x1f
	.byte	0xf2
	.long	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.long	.LASF752
	.byte	0x1f
	.byte	0xf3
	.long	0x1b03
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.long	.LASF753
	.byte	0x1f
	.byte	0xf6
	.long	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xb
	.long	.LASF754
	.byte	0x1f
	.byte	0xf7
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.long	.LASF755
	.byte	0x1f
	.byte	0xfa
	.long	0x247b
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xb
	.long	.LASF756
	.byte	0x1f
	.byte	0xfb
	.long	0x2481
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xb
	.long	.LASF757
	.byte	0x1f
	.byte	0xfc
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xb
	.long	.LASF758
	.byte	0x1f
	.byte	0xfd
	.long	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xb
	.long	.LASF759
	.byte	0x1f
	.byte	0xfe
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0xb
	.long	.LASF760
	.byte	0x1f
	.byte	0xff
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x9
	.long	.LASF761
	.byte	0x1f
	.value	0x100
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x9
	.long	.LASF762
	.byte	0x1f
	.value	0x101
	.long	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x9
	.long	.LASF763
	.byte	0x1f
	.value	0x102
	.long	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x9
	.long	.LASF764
	.byte	0x1f
	.value	0x103
	.long	0x2487
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0x9
	.long	.LASF765
	.byte	0x1f
	.value	0x104
	.long	0x2413
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x9
	.long	.LASF766
	.byte	0x1f
	.value	0x105
	.long	0x2413
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.long	.LASF767
	.byte	0x1f
	.value	0x108
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x9
	.long	.LASF768
	.byte	0x1f
	.value	0x109
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x9
	.long	.LASF769
	.byte	0x1f
	.value	0x10a
	.long	0xf7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x9
	.long	.LASF770
	.byte	0x1f
	.value	0x10b
	.long	0x1e6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x9
	.long	.LASF771
	.byte	0x1f
	.value	0x10c
	.long	0x1e6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x9
	.long	.LASF772
	.byte	0x1f
	.value	0x10d
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.long	.LASF773
	.byte	0x1f
	.value	0x10e
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f9
	.uleb128 0x9
	.long	.LASF774
	.byte	0x1f
	.value	0x10f
	.long	0x1e0f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.long	.LASF775
	.byte	0x1f
	.value	0x110
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x9
	.long	.LASF776
	.byte	0x1f
	.value	0x111
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x9
	.long	.LASF777
	.byte	0x1f
	.value	0x112
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.long	.LASF778
	.byte	0x1f
	.value	0x113
	.long	0x5d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.long	.LASF779
	.byte	0x1f
	.value	0x114
	.long	0x5d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x9
	.long	.LASF780
	.byte	0x1f
	.value	0x115
	.long	0x5d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x9
	.long	.LASF781
	.byte	0x1f
	.value	0x116
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.long	.LASF782
	.byte	0x1f
	.value	0x117
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.long	.LASF783
	.byte	0x1f
	.value	0x118
	.long	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.long	.LASF784
	.byte	0x1f
	.value	0x119
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x9
	.long	.LASF785
	.byte	0x1f
	.value	0x11a
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x9
	.long	.LASF786
	.byte	0x1f
	.value	0x11d
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x298
	.byte	0x0
	.uleb128 0x2
	.long	.LASF787
	.byte	0x1f
	.byte	0xbc
	.long	0x2407
	.uleb128 0x17
	.byte	0x1
	.long	0x2413
	.uleb128 0x14
	.long	0x2413
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x20a9
	.uleb128 0x8
	.long	.LASF788
	.byte	0x20
	.byte	0x1a
	.byte	0x41
	.long	0x245e
	.uleb128 0xb
	.long	.LASF789
	.byte	0x1f
	.byte	0xd6
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF790
	.byte	0x1f
	.byte	0xd7
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF791
	.byte	0x1f
	.byte	0xd8
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF792
	.byte	0x1f
	.byte	0xd9
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF793
	.byte	0x1f
	.byte	0xda
	.long	0x2419
	.uleb128 0x7
	.byte	0x4
	.long	0x114f
	.uleb128 0x7
	.byte	0x4
	.long	0x1b03
	.uleb128 0x7
	.byte	0x4
	.long	0x23fc
	.uleb128 0x7
	.byte	0x4
	.long	0x15fd
	.uleb128 0x7
	.byte	0x4
	.long	0x247b
	.uleb128 0x7
	.byte	0x4
	.long	0xe2a
	.uleb128 0x2
	.long	.LASF794
	.byte	0x20
	.byte	0x26
	.long	0x2498
	.uleb128 0x8
	.long	.LASF795
	.byte	0x14
	.byte	0x20
	.byte	0x26
	.long	0x24eb
	.uleb128 0xb
	.long	.LASF796
	.byte	0x20
	.byte	0x44
	.long	0x2615
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF797
	.byte	0x20
	.byte	0x45
	.long	0x2615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF798
	.byte	0x20
	.byte	0x46
	.long	0x2630
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF799
	.byte	0x20
	.byte	0x47
	.long	0x264c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF800
	.byte	0x20
	.byte	0x48
	.long	0x264c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.long	.LASF801
	.byte	0x78
	.byte	0x20
	.byte	0x28
	.long	0x25a0
	.uleb128 0xb
	.long	.LASF802
	.byte	0x20
	.byte	0x29
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF803
	.byte	0x20
	.byte	0x2a
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF804
	.byte	0x20
	.byte	0x2b
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF805
	.byte	0x20
	.byte	0x2c
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF806
	.byte	0x20
	.byte	0x2d
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF807
	.byte	0x20
	.byte	0x2e
	.long	0x25a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xb
	.long	.LASF808
	.byte	0x20
	.byte	0x2f
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF809
	.byte	0x20
	.byte	0x30
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xb
	.long	.LASF810
	.byte	0x20
	.byte	0x31
	.long	0xd4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF811
	.byte	0x20
	.byte	0x32
	.long	0x25b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF812
	.byte	0x20
	.byte	0x33
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.long	.LASF813
	.byte	0x20
	.byte	0x34
	.long	0xd76
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xc
	.long	0x5bf
	.long	0x25b0
	.uleb128 0xd
	.long	0x98
	.byte	0x2
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x248d
	.uleb128 0x2
	.long	.LASF814
	.byte	0x20
	.byte	0x35
	.long	0x24eb
	.uleb128 0x8
	.long	.LASF815
	.byte	0x18
	.byte	0x20
	.byte	0x3d
	.long	0x25f8
	.uleb128 0xb
	.long	.LASF816
	.byte	0x20
	.byte	0x3e
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF817
	.byte	0x20
	.byte	0x3f
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF818
	.byte	0x20
	.byte	0x40
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF819
	.byte	0x20
	.byte	0x41
	.long	0x25c1
	.uleb128 0x17
	.byte	0x1
	.long	0x260f
	.uleb128 0x14
	.long	0x260f
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x25b6
	.uleb128 0x7
	.byte	0x4
	.long	0x2603
	.uleb128 0x13
	.byte	0x1
	.long	0x5e0
	.long	0x2630
	.uleb128 0x14
	.long	0x260f
	.uleb128 0x14
	.long	0x5e0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x261b
	.uleb128 0x17
	.byte	0x1
	.long	0x264c
	.uleb128 0x14
	.long	0x260f
	.uleb128 0x14
	.long	0x5e0
	.uleb128 0x14
	.long	0x5e0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2636
	.uleb128 0x2
	.long	.LASF820
	.byte	0x21
	.byte	0x29
	.long	0x265d
	.uleb128 0x18
	.long	.LASF821
	.byte	0x1
	.uleb128 0x2
	.long	.LASF822
	.byte	0x21
	.byte	0x2a
	.long	0x266e
	.uleb128 0x18
	.long	.LASF823
	.byte	0x1
	.uleb128 0xc
	.long	0xd4c
	.long	0x2684
	.uleb128 0xd
	.long	0x98
	.byte	0x3
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF824
	.value	0x208
	.byte	0x1c
	.byte	0x2d
	.long	0x27bb
	.uleb128 0xb
	.long	.LASF647
	.byte	0x1c
	.byte	0x2e
	.long	0x1d47
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF825
	.byte	0x1c
	.byte	0x2f
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF826
	.byte	0x1c
	.byte	0x30
	.long	0xd41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF827
	.byte	0x1c
	.byte	0x31
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF828
	.byte	0x1c
	.byte	0x32
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF829
	.byte	0x1c
	.byte	0x33
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF830
	.byte	0x1c
	.byte	0x34
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF831
	.byte	0x1c
	.byte	0x36
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.long	.LASF832
	.byte	0x1c
	.byte	0x37
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.long	.LASF833
	.byte	0x1c
	.byte	0x39
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.long	.LASF834
	.byte	0x1c
	.byte	0x3a
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.long	.LASF835
	.byte	0x1c
	.byte	0x3b
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.long	.LASF836
	.byte	0x1c
	.byte	0x3c
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xb
	.long	.LASF837
	.byte	0x1c
	.byte	0x3d
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xb
	.long	.LASF838
	.byte	0x1c
	.byte	0x3e
	.long	0xd4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xb
	.long	.LASF839
	.byte	0x1c
	.byte	0x40
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.long	.LASF840
	.byte	0x1c
	.byte	0x41
	.long	0x5bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f9
	.uleb128 0xb
	.long	.LASF841
	.byte	0x1c
	.byte	0x43
	.long	0x27bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xb
	.long	.LASF842
	.byte	0x1c
	.byte	0x44
	.long	0x27bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.long	.LASF843
	.byte	0x1c
	.byte	0x45
	.long	0x27bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xc9b
	.uleb128 0x2
	.long	.LASF844
	.byte	0x1c
	.byte	0x46
	.long	0x2684
	.uleb128 0x11
	.long	.LASF845
	.byte	0x4
	.byte	0x22
	.byte	0x2d
	.long	0x27eb
	.uleb128 0x12
	.long	.LASF846
	.sleb128 0
	.uleb128 0x12
	.long	.LASF847
	.sleb128 1
	.uleb128 0x12
	.long	.LASF848
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF849
	.value	0x508
	.byte	0x17
	.byte	0x33
	.long	0x29a5
	.uleb128 0xb
	.long	.LASF850
	.byte	0x22
	.byte	0x36
	.long	0x2469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF851
	.byte	0x22
	.byte	0x37
	.long	0x29a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF852
	.byte	0x22
	.byte	0x38
	.long	0x29ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF853
	.byte	0x22
	.byte	0x39
	.long	0x29ab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF854
	.byte	0x22
	.byte	0x3a
	.long	0x1cee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF855
	.byte	0x22
	.byte	0x3b
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF856
	.byte	0x22
	.byte	0x3e
	.long	0x1b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF857
	.byte	0x22
	.byte	0x3f
	.long	0xc72
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF858
	.byte	0x22
	.byte	0x40
	.long	0x630
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF859
	.byte	0x22
	.byte	0x41
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF860
	.byte	0x22
	.byte	0x42
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF861
	.byte	0x22
	.byte	0x45
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.long	.LASF862
	.byte	0x22
	.byte	0x46
	.long	0x1a67
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.long	.LASF863
	.byte	0x22
	.byte	0x47
	.long	0x1a67
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.long	.LASF864
	.byte	0x22
	.byte	0x49
	.long	0x27cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.long	.LASF865
	.byte	0x22
	.byte	0x4a
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xb
	.long	.LASF866
	.byte	0x22
	.byte	0x4b
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xb
	.long	.LASF867
	.byte	0x22
	.byte	0x4c
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xb
	.long	.LASF868
	.byte	0x22
	.byte	0x4d
	.long	0x245e
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0xb
	.long	.LASF869
	.byte	0x22
	.byte	0x4e
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xb
	.long	.LASF870
	.byte	0x22
	.byte	0x4f
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0xb
	.long	.LASF871
	.byte	0x22
	.byte	0x50
	.long	0x5e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.long	.LASF872
	.byte	0x22
	.byte	0x51
	.long	0xce3
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xb
	.long	.LASF873
	.byte	0x22
	.byte	0x52
	.long	0x604
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0xb
	.long	.LASF874
	.byte	0x22
	.byte	0x55
	.long	0x27c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0xb
	.long	.LASF875
	.byte	0x22
	.byte	0x56
	.long	0x1df4
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0xb
	.long	.LASF876
	.byte	0x22
	.byte	0x57
	.long	0x1df4
	.byte	0x3
	.byte	0x23
	.uleb128 0x40c
	.uleb128 0xb
	.long	.LASF877
	.byte	0x22
	.byte	0x58
	.long	0x1df4
	.byte	0x3
	.byte	0x23
	.uleb128 0x450
	.uleb128 0xb
	.long	.LASF878
	.byte	0x22
	.byte	0x60
	.long	0xd41
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1b19
	.uleb128 0x7
	.byte	0x4
	.long	0x1b1f
	.uleb128 0x2
	.long	.LASF879
	.byte	0x22
	.byte	0x61
	.long	0x27eb
	.uleb128 0x2
	.long	.LASF880
	.byte	0x23
	.byte	0x28
	.long	0x29c7
	.uleb128 0x17
	.byte	0x1
	.long	0x29dd
	.uleb128 0x14
	.long	0x656
	.uleb128 0x14
	.long	0x5e0
	.uleb128 0x14
	.long	0x29dd
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1a77
	.uleb128 0x8
	.long	.LASF881
	.byte	0x14
	.byte	0x23
	.byte	0x2d
	.long	0x2a28
	.uleb128 0xb
	.long	.LASF882
	.byte	0x23
	.byte	0x2e
	.long	0x2a28
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF883
	.byte	0x23
	.byte	0x2f
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF884
	.byte	0x23
	.byte	0x30
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF885
	.byte	0x23
	.byte	0x31
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x2a38
	.long	0x2a38
	.uleb128 0xd
	.long	0x98
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x29bc
	.uleb128 0x2
	.long	.LASF886
	.byte	0x23
	.byte	0x32
	.long	0x29e3
	.uleb128 0x2
	.long	.LASF887
	.byte	0x24
	.byte	0x29
	.long	0x2a54
	.uleb128 0x8
	.long	.LASF888
	.byte	0xa8
	.byte	0x25
	.byte	0x7a
	.long	0x2ab5
	.uleb128 0xb
	.long	.LASF889
	.byte	0x26
	.byte	0x33
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF890
	.byte	0x26
	.byte	0x34
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF891
	.byte	0x26
	.byte	0x35
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF892
	.byte	0x26
	.byte	0x36
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF893
	.byte	0x26
	.byte	0x37
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF894
	.byte	0x26
	.byte	0x38
	.long	0x1b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x8
	.long	.LASF895
	.byte	0x60
	.byte	0x27
	.byte	0x36
	.long	0x2b08
	.uleb128 0xb
	.long	.LASF896
	.byte	0x27
	.byte	0x37
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF897
	.byte	0x27
	.byte	0x38
	.long	0xc72
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF898
	.byte	0x27
	.byte	0x39
	.long	0xc72
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF899
	.byte	0x27
	.byte	0x3a
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF900
	.byte	0x27
	.byte	0x3b
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x2
	.long	.LASF901
	.byte	0x27
	.byte	0x3c
	.long	0x2ab5
	.uleb128 0x8
	.long	.LASF902
	.byte	0x20
	.byte	0x28
	.byte	0x26
	.long	0x2b58
	.uleb128 0xb
	.long	.LASF903
	.byte	0x28
	.byte	0x2c
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF904
	.byte	0x28
	.byte	0x2d
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF905
	.byte	0x28
	.byte	0x2e
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF906
	.byte	0x28
	.byte	0x2f
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF907
	.byte	0x28
	.byte	0x30
	.long	0x2b13
	.uleb128 0x8
	.long	.LASF908
	.byte	0x88
	.byte	0x28
	.byte	0x34
	.long	0x2b8d
	.uleb128 0xb
	.long	.LASF909
	.byte	0x28
	.byte	0x35
	.long	0x1b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF910
	.byte	0x28
	.byte	0x36
	.long	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0x0
	.uleb128 0x2
	.long	.LASF911
	.byte	0x28
	.byte	0x37
	.long	0x2b63
	.uleb128 0x8
	.long	.LASF912
	.byte	0x58
	.byte	0x28
	.byte	0x39
	.long	0x2c31
	.uleb128 0xb
	.long	.LASF913
	.byte	0x28
	.byte	0x3a
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF914
	.byte	0x28
	.byte	0x3b
	.long	0x1ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF915
	.byte	0x28
	.byte	0x3c
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF916
	.byte	0x28
	.byte	0x3d
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF917
	.byte	0x28
	.byte	0x3e
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xb
	.long	.LASF918
	.byte	0x28
	.byte	0x3f
	.long	0x5bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xb
	.long	.LASF919
	.byte	0x28
	.byte	0x40
	.long	0x2c31
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.long	.LASF920
	.byte	0x28
	.byte	0x41
	.long	0x2c37
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF921
	.byte	0x28
	.byte	0x42
	.long	0x1cdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF922
	.byte	0x28
	.byte	0x43
	.long	0x1cdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2b8d
	.uleb128 0x7
	.byte	0x4
	.long	0x2b58
	.uleb128 0x2
	.long	.LASF923
	.byte	0x28
	.byte	0x44
	.long	0x2b98
	.uleb128 0x7
	.byte	0x4
	.long	0xe93
	.uleb128 0x7
	.byte	0x4
	.long	0x2c48
	.uleb128 0x8
	.long	.LASF504
	.byte	0xc8
	.byte	0x18
	.byte	0x48
	.long	0x2ca7
	.uleb128 0xb
	.long	.LASF924
	.byte	0x18
	.byte	0x49
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF925
	.byte	0x18
	.byte	0x4a
	.long	0x27bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF926
	.byte	0x18
	.byte	0x4b
	.long	0x5ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF927
	.byte	0x18
	.byte	0x4c
	.long	0xd4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF928
	.byte	0x18
	.byte	0x4d
	.long	0x2b08
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x2
	.long	.LASF929
	.byte	0x18
	.byte	0x4e
	.long	0x2c54
	.uleb128 0x11
	.long	.LASF503
	.byte	0x4
	.byte	0x18
	.byte	0x55
	.long	0x2cd7
	.uleb128 0x12
	.long	.LASF930
	.sleb128 0
	.uleb128 0x12
	.long	.LASF931
	.sleb128 1
	.uleb128 0x12
	.long	.LASF932
	.sleb128 2
	.uleb128 0x12
	.long	.LASF933
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF934
	.byte	0x18
	.byte	0x5a
	.long	0x2cb2
	.uleb128 0xc
	.long	0x2cf2
	.long	0x2cf2
	.uleb128 0xd
	.long	0x98
	.byte	0x5
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xd64
	.uleb128 0x7
	.byte	0x4
	.long	0x29b1
	.uleb128 0x7
	.byte	0x4
	.long	0x2652
	.uleb128 0x18
	.long	.LASF935
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.long	0x2d04
	.uleb128 0x2
	.long	.LASF936
	.byte	0x19
	.byte	0x36
	.long	0x2d1b
	.uleb128 0x8
	.long	.LASF554
	.byte	0x80
	.byte	0x19
	.byte	0x36
	.long	0x2d6e
	.uleb128 0xb
	.long	.LASF937
	.byte	0x19
	.byte	0x66
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF938
	.byte	0x19
	.byte	0x67
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF939
	.byte	0x19
	.byte	0x68
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF940
	.byte	0x19
	.byte	0x69
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF941
	.byte	0x19
	.byte	0x6a
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x2
	.long	.LASF942
	.byte	0x19
	.byte	0x37
	.long	0x2d79
	.uleb128 0x8
	.long	.LASF555
	.byte	0x58
	.byte	0x19
	.byte	0x37
	.long	0x2db0
	.uleb128 0xb
	.long	.LASF943
	.byte	0x19
	.byte	0x60
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF944
	.byte	0x19
	.byte	0x61
	.long	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF945
	.byte	0x19
	.byte	0x62
	.long	0xce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.long	.LASF946
	.byte	0x19
	.byte	0x3d
	.long	0x2dbb
	.uleb128 0x13
	.byte	0x1
	.long	0x62
	.long	0x2dd5
	.uleb128 0x14
	.long	0x247b
	.uleb128 0x14
	.long	0x2dd5
	.uleb128 0x14
	.long	0x2dd5
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x5e0
	.uleb128 0x2
	.long	.LASF947
	.byte	0x19
	.byte	0x3e
	.long	0x2de6
	.uleb128 0x17
	.byte	0x1
	.long	0x2df2
	.uleb128 0x14
	.long	0x247b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF948
	.byte	0x19
	.byte	0x3f
	.long	0x2dfd
	.uleb128 0x13
	.byte	0x1
	.long	0x62
	.long	0x2e0d
	.uleb128 0x14
	.long	0x247b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF949
	.byte	0x19
	.byte	0x40
	.long	0x2e18
	.uleb128 0x13
	.byte	0x1
	.long	0x5e0
	.long	0x2e2d
	.uleb128 0x14
	.long	0x247b
	.uleb128 0x14
	.long	0x5e0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF950
	.byte	0x19
	.byte	0x41
	.long	0x2e38
	.uleb128 0x13
	.byte	0x1
	.long	0x62
	.long	0x2e48
	.uleb128 0x14
	.long	0x2413
	.byte	0x0
	.uleb128 0x2
	.long	.LASF951
	.byte	0x19
	.byte	0x42
	.long	0x2e38
	.uleb128 0x2
	.long	.LASF952
	.byte	0x19
	.byte	0x43
	.long	0x2e5e
	.uleb128 0x17
	.byte	0x1
	.long	0x2e74
	.uleb128 0x14
	.long	0x247b
	.uleb128 0x14
	.long	0x62
	.uleb128 0x14
	.long	0x62
	.byte	0x0
	.uleb128 0x8
	.long	.LASF514
	.byte	0x30
	.byte	0x19
	.byte	0x45
	.long	0x2eff
	.uleb128 0xb
	.long	.LASF953
	.byte	0x19
	.byte	0x46
	.long	0x2eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF954
	.byte	0x19
	.byte	0x47
	.long	0x2f05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF955
	.byte	0x19
	.byte	0x48
	.long	0x2f0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF956
	.byte	0x19
	.byte	0x49
	.long	0x2f11
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF957
	.byte	0x19
	.byte	0x4a
	.long	0x2f17
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF958
	.byte	0x19
	.byte	0x4b
	.long	0x2f1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF959
	.byte	0x19
	.byte	0x4c
	.long	0x2f23
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF960
	.byte	0x19
	.byte	0x4d
	.long	0xc7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF961
	.byte	0x19
	.byte	0x4e
	.long	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2db0
	.uleb128 0x7
	.byte	0x4
	.long	0x2ddb
	.uleb128 0x7
	.byte	0x4
	.long	0x2df2
	.uleb128 0x7
	.byte	0x4
	.long	0x2e0d
	.uleb128 0x7
	.byte	0x4
	.long	0x2e2d
	.uleb128 0x7
	.byte	0x4
	.long	0x2e48
	.uleb128 0x7
	.byte	0x4
	.long	0x2e53
	.uleb128 0x2
	.long	.LASF962
	.byte	0x19
	.byte	0x4f
	.long	0x2e74
	.uleb128 0x7
	.byte	0x4
	.long	0x2f29
	.uleb128 0x7
	.byte	0x4
	.long	0x2663
	.uleb128 0x7
	.byte	0x4
	.long	0x2f46
	.uleb128 0x7
	.byte	0x4
	.long	0x198b
	.uleb128 0x7
	.byte	0x4
	.long	0x199c
	.uleb128 0x8
	.long	.LASF963
	.byte	0xc
	.byte	0x2
	.byte	0x52
	.long	0x2f89
	.uleb128 0xb
	.long	.LASF964
	.byte	0x2
	.byte	0x53
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF965
	.byte	0x2
	.byte	0x54
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF966
	.byte	0x2
	.byte	0x55
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF967
	.byte	0x2
	.byte	0x56
	.long	0x2f52
	.uleb128 0x19
	.long	.LASF968
	.byte	0x2
	.value	0x7ed
	.long	0x2e38
	.uleb128 0x21
	.long	.LASF987
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x630
	.quad	.LFB0
	.quad	.LFE0
	.long	.LLST0
	.long	0x2fd2
	.uleb128 0x22
	.string	"ts"
	.byte	0x1
	.byte	0x31
	.long	0x302
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF973
	.byte	0x2
	.byte	0x83
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77
	.long	.LLST1
	.long	0x307e
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.byte	0x85
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF969
	.byte	0x2
	.byte	0x86
	.long	0x307e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF977
	.long	0x3094
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9273
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x24
	.long	.LASF970
	.byte	0x2
	.byte	0x96
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"p2"
	.byte	0x2
	.byte	0x97
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF971
	.byte	0x2
	.byte	0x98
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x24
	.long	.LASF972
	.byte	0x2
	.byte	0xa6
	.long	0x3099
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xbdf
	.uleb128 0xc
	.long	0xb5
	.long	0x3094
	.uleb128 0xd
	.long	0x98
	.byte	0x8
	.byte	0x0
	.uleb128 0x27
	.long	0x3084
	.uleb128 0xc
	.long	0xb5
	.long	0x30a9
	.uleb128 0xd
	.long	0x98
	.byte	0x23
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF974
	.byte	0x2
	.byte	0xc4
	.byte	0x1
	.quad	.LFB78
	.quad	.LFE78
	.long	.LLST2
	.long	0x30f3
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.byte	0xc6
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF975
	.byte	0x2
	.byte	0xc7
	.long	0x30f3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF976
	.byte	0x2
	.byte	0xc8
	.long	0x30f3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xd58
	.uleb128 0x28
	.byte	0x1
	.long	.LASF978
	.byte	0x2
	.byte	0xec
	.byte	0x1
	.long	0xad
	.quad	.LFB79
	.quad	.LFE79
	.long	.LLST3
	.long	0x314d
	.uleb128 0x29
	.long	.LASF970
	.byte	0x2
	.byte	0xec
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.byte	0xee
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x315d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9358
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x315d
	.uleb128 0xd
	.long	0x98
	.byte	0xd
	.byte	0x0
	.uleb128 0x27
	.long	0x314d
	.uleb128 0x28
	.byte	0x1
	.long	.LASF979
	.byte	0x2
	.byte	0xfc
	.byte	0x1
	.long	0xad
	.quad	.LFB80
	.quad	.LFE80
	.long	.LLST4
	.long	0x31b6
	.uleb128 0x29
	.long	.LASF970
	.byte	0x2
	.byte	0xfc
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.byte	0xfe
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x31c6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9370
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x31c6
	.uleb128 0xd
	.long	0x98
	.byte	0x12
	.byte	0x0
	.uleb128 0x27
	.long	0x31b6
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF980
	.byte	0x2
	.value	0x106
	.byte	0x1
	.quad	.LFB81
	.quad	.LFE81
	.long	.LLST5
	.long	0x322d
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x106
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x106
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x108
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF977
	.long	0x323d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9383
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x323d
	.uleb128 0xd
	.long	0x98
	.byte	0xc
	.byte	0x0
	.uleb128 0x27
	.long	0x322d
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF981
	.byte	0x2
	.value	0x110
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82
	.long	.LLST6
	.long	0x32a4
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x110
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x110
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x112
	.long	0x2d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF977
	.long	0x32b4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9394
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x32b4
	.uleb128 0xd
	.long	0x98
	.byte	0x11
	.byte	0x0
	.uleb128 0x27
	.long	0x32a4
	.uleb128 0x2e
	.long	.LASF984
	.byte	0x2
	.value	0x11f
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83
	.long	.LLST7
	.long	0x3325
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x11f
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x11f
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x11f
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF983
	.byte	0x2
	.value	0x11f
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"zt"
	.byte	0x2
	.value	0x121
	.long	0x1f5a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF985
	.byte	0x2
	.value	0x12f
	.byte	0x1
	.quad	.LFB84
	.quad	.LFE84
	.long	.LLST8
	.long	0x3391
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x12f
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x12f
	.long	0x3391
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x12f
	.long	0x2dd5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF983
	.byte	0x2
	.value	0x12f
	.long	0x2dd5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"zt"
	.byte	0x2
	.value	0x131
	.long	0x1f5a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0xad
	.uleb128 0x2e
	.long	.LASF986
	.byte	0x2
	.value	0x141
	.byte	0x1
	.quad	.LFB85
	.quad	.LFE85
	.long	.LLST9
	.long	0x340a
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x141
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF982
	.byte	0x2
	.value	0x143
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF970
	.byte	0x2
	.value	0x144
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF983
	.byte	0x2
	.value	0x144
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF977
	.long	0x341a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9430
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x341a
	.uleb128 0xd
	.long	0x98
	.byte	0x19
	.byte	0x0
	.uleb128 0x27
	.long	0x340a
	.uleb128 0x30
	.long	.LASF988
	.byte	0x2
	.value	0x155
	.byte	0x1
	.long	0x2413
	.quad	.LFB86
	.quad	.LFE86
	.long	.LLST10
	.long	0x3582
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x155
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x155
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x155
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x155
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x156
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x156
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x156
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x156
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF991
	.byte	0x2
	.value	0x157
	.long	0xfb4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x157
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x157
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2c
	.long	.LASF994
	.byte	0x2
	.value	0x157
	.long	0x5bf
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF995
	.byte	0x2
	.value	0x157
	.long	0x5d5
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x159
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF977
	.long	0x3592
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9460
	.uleb128 0x26
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x15b
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x15b
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x15b
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x3592
	.uleb128 0xd
	.long	0x98
	.byte	0xa
	.byte	0x0
	.uleb128 0x27
	.long	0x3582
	.uleb128 0x27
	.long	0x5e0
	.uleb128 0x2e
	.long	.LASF999
	.byte	0x2
	.value	0x1c2
	.byte	0x1
	.quad	.LFB87
	.quad	.LFE87
	.long	.LLST11
	.long	0x35cd
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x1c2
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1000
	.byte	0x2
	.value	0x1cd
	.byte	0x1
	.long	0x2413
	.quad	.LFB88
	.quad	.LFE88
	.long	.LLST12
	.long	0x364f
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x1cd
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x1cd
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x1cd
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x1cd
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x1ce
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x1d0
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1001
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x2413
	.quad	.LFB89
	.quad	.LFE89
	.long	.LLST13
	.long	0x36b2
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x1da
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x1da
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x1da
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x1da
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1002
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x2413
	.quad	.LFB90
	.quad	.LFE90
	.long	.LLST14
	.long	0x37d3
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x1e0
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x1e0
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x1e0
	.long	0x37d3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x1e0
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x1e1
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x1e1
	.long	0x2475
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x1e1
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x1e2
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x1e2
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"zb"
	.byte	0x2
	.value	0x1e2
	.long	0x37de
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x1e4
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x1e6
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x1e6
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x1e6
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x37d9
	.uleb128 0x27
	.long	0x1b03
	.uleb128 0x7
	.byte	0x4
	.long	0x37e4
	.uleb128 0x27
	.long	0x245e
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1003
	.byte	0x2
	.value	0x200
	.byte	0x1
	.long	0x2413
	.quad	.LFB91
	.quad	.LFE91
	.long	.LLST15
	.long	0x3915
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x200
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x200
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x2
	.value	0x200
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF1005
	.byte	0x2
	.value	0x200
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF1006
	.byte	0x2
	.value	0x200
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x201
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x201
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x201
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x201
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF1007
	.byte	0x2
	.value	0x202
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x202
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x202
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x202
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x203
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2b
	.string	"zb"
	.byte	0x2
	.value	0x203
	.long	0x37de
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x205
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x3925
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9645
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x3925
	.uleb128 0xd
	.long	0x98
	.byte	0x9
	.byte	0x0
	.uleb128 0x27
	.long	0x3915
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1008
	.byte	0x2
	.value	0x22c
	.byte	0x1
	.long	0x2413
	.quad	.LFB92
	.quad	.LFE92
	.long	.LLST16
	.long	0x3a69
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x22c
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x22c
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x2
	.value	0x22c
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x22c
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x22d
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x22d
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x22d
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x22d
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x22e
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x22e
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x22e
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.string	"zb"
	.byte	0x2
	.value	0x22e
	.long	0x3a69
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x230
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x23b
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x23b
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x23b
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x245e
	.uleb128 0x2e
	.long	.LASF1009
	.byte	0x2
	.value	0x241
	.byte	0x1
	.quad	.LFB93
	.quad	.LFE93
	.long	.LLST17
	.long	0x3aa0
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x241
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1010
	.byte	0x2
	.value	0x24b
	.byte	0x1
	.long	0x2413
	.quad	.LFB94
	.quad	.LFE94
	.long	.LLST18
	.long	0x3b7c
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x24b
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x24b
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x2
	.value	0x24b
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x24c
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x24c
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x24c
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x24c
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x24d
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x24d
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x24d
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x24d
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x24f
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1011
	.byte	0x2
	.value	0x262
	.byte	0x1
	.long	0x2413
	.quad	.LFB95
	.quad	.LFE95
	.long	.LLST19
	.long	0x3c22
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x262
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x262
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x262
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x262
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x263
	.long	0x2475
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x263
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x265
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x3c22
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9833
	.byte	0x0
	.uleb128 0x27
	.long	0x3084
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1012
	.byte	0x2
	.value	0x279
	.byte	0x1
	.long	0x2413
	.quad	.LFB96
	.quad	.LFE96
	.long	.LLST20
	.long	0x3d65
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x279
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x279
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x279
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x279
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x27a
	.long	0x2475
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x27a
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x27c
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.quad	.LBB10
	.quad	.LBE10
	.long	0x3d13
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x289
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x289
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x289
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x28a
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x28a
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x28a
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1013
	.byte	0x2
	.value	0x296
	.byte	0x1
	.long	0x2413
	.quad	.LFB97
	.quad	.LFE97
	.long	.LLST21
	.long	0x3e21
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x296
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x296
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x296
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"cmd"
	.byte	0x2
	.value	0x296
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x297
	.long	0x2475
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x297
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x297
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x297
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x299
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x29a
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF1014
	.byte	0x2
	.value	0x2af
	.byte	0x1
	.quad	.LFB98
	.quad	.LFE98
	.long	.LLST22
	.long	0x3f06
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x2af
	.long	0x247b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x2af
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1015
	.byte	0x2
	.value	0x2af
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x2af
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x2
	.value	0x2b0
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF1016
	.byte	0x2
	.value	0x2b0
	.long	0x604
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF977
	.long	0x3f16
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9931
	.uleb128 0x26
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x2be
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x2be
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x2be
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x3f16
	.uleb128 0xd
	.long	0x98
	.byte	0x10
	.byte	0x0
	.uleb128 0x27
	.long	0x3f06
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1017
	.byte	0x2
	.value	0x2ce
	.byte	0x1
	.long	0x2413
	.quad	.LFB99
	.quad	.LFE99
	.long	.LLST23
	.long	0x400b
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x2ce
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x2ce
	.long	0x247b
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF1015
	.byte	0x2
	.value	0x2ce
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x2ce
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x2cf
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x2
	.value	0x2cf
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x2cf
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x2cf
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x2d0
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x2d0
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF1016
	.byte	0x2
	.value	0x2d0
	.long	0x604
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x2d2
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"blk"
	.byte	0x2
	.value	0x2d3
	.long	0x1b03
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1018
	.byte	0x2
	.value	0x2e9
	.byte	0x1
	.long	0x2413
	.quad	.LFB100
	.quad	.LFE100
	.long	.LLST24
	.long	0x4119
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x2e9
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x2e9
	.long	0x247b
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF1015
	.byte	0x2
	.value	0x2e9
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x2e9
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x2ea
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2c
	.long	.LASF1004
	.byte	0x2
	.value	0x2ea
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x2ea
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x2ea
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x2eb
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x2eb
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF1016
	.byte	0x2
	.value	0x2eb
	.long	0x604
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"zbt"
	.byte	0x2
	.value	0x2ed
	.long	0x4119
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1019
	.byte	0x2
	.value	0x2ee
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x2ef
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"blk"
	.byte	0x2
	.value	0x2f0
	.long	0x1b03
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1f89
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1020
	.byte	0x2
	.value	0x316
	.byte	0x1
	.long	0x2413
	.quad	.LFB101
	.quad	.LFE101
	.long	.LLST25
	.long	0x420a
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x316
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x316
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x316
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF1015
	.byte	0x2
	.value	0x316
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF982
	.byte	0x2
	.value	0x317
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x317
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF991
	.byte	0x2
	.value	0x317
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF992
	.byte	0x2
	.value	0x317
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF993
	.byte	0x2
	.value	0x317
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF989
	.byte	0x2
	.value	0x318
	.long	0x2475
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF990
	.byte	0x2
	.value	0x318
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2f
	.long	.LASF995
	.byte	0x2
	.value	0x31a
	.long	0x5d5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"cio"
	.byte	0x2
	.value	0x31b
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF1021
	.byte	0x2
	.value	0x339
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.long	.LLST26
	.long	0x423b
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x339
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1022
	.byte	0x2
	.value	0x347
	.byte	0x1
	.long	0x62
	.quad	.LFB103
	.quad	.LFE103
	.long	.LLST27
	.long	0x4294
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x347
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x2
	.value	0x349
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x4294
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10134
	.byte	0x0
	.uleb128 0x27
	.long	0x3084
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1024
	.byte	0x2
	.value	0x35d
	.byte	0x1
	.quad	.LFB104
	.quad	.LFE104
	.long	.LLST28
	.long	0x42cb
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x35d
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1025
	.byte	0x2
	.value	0x363
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.long	.LLST29
	.long	0x42fd
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x363
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1026
	.byte	0x2
	.value	0x36c
	.byte	0x1
	.long	0x62
	.quad	.LFB106
	.quad	.LFE106
	.long	.LLST30
	.long	0x4332
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x36c
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1027
	.byte	0x2
	.value	0x37b
	.byte	0x1
	.long	0x62
	.quad	.LFB107
	.quad	.LFE107
	.long	.LLST31
	.long	0x43a7
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x37b
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF994
	.byte	0x2
	.value	0x37b
	.long	0x5d5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1028
	.byte	0x2
	.value	0x37b
	.long	0x2dd5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"rv"
	.byte	0x2
	.value	0x37d
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x43b7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10163
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x43b7
	.uleb128 0xd
	.long	0x98
	.byte	0x15
	.byte	0x0
	.uleb128 0x27
	.long	0x43a7
	.uleb128 0x2e
	.long	.LASF1029
	.byte	0x2
	.value	0x38b
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.long	.LLST32
	.long	0x4427
	.uleb128 0x2b
	.string	"pio"
	.byte	0x2
	.value	0x38b
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x38b
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1030
	.byte	0x2
	.value	0x38d
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1031
	.byte	0x2
	.value	0x38e
	.long	0x2481
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x38f
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF1032
	.byte	0x2
	.value	0x3a7
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.long	.LLST33
	.long	0x44d9
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x3a7
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF994
	.byte	0x2
	.value	0x3a7
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1028
	.byte	0x2
	.value	0x3a7
	.long	0x2dd5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"pio"
	.byte	0x2
	.value	0x3a9
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x3b1
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x3b1
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x3b1
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1033
	.byte	0x2
	.value	0x3bc
	.byte	0x1
	.long	0x62
	.quad	.LFB110
	.quad	.LFE110
	.long	.LLST34
	.long	0x450f
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x3bc
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1034
	.byte	0x2
	.value	0x3c3
	.byte	0x1
	.long	0x62
	.quad	.LFB111
	.quad	.LFE111
	.long	.LLST35
	.long	0x4545
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x3c3
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1035
	.byte	0x2
	.value	0x3ca
	.byte	0x1
	.long	0x62
	.quad	.LFB112
	.quad	.LFE112
	.long	.LLST36
	.long	0x45ee
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x3ca
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x3cc
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.quad	.LBB18
	.quad	.LBE18
	.long	0x45bd
	.uleb128 0x2f
	.long	.LASF1036
	.byte	0x2
	.value	0x3cf
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1037
	.byte	0x2
	.value	0x3d0
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x3d7
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1039
	.byte	0x2
	.value	0x3d8
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1040
	.byte	0x2
	.value	0x3e5
	.byte	0x1
	.long	0x62
	.quad	.LFB113
	.quad	.LFE113
	.long	.LLST37
	.long	0x4632
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x3e5
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"pio"
	.byte	0x2
	.value	0x3e7
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1041
	.byte	0x2
	.value	0x3f7
	.byte	0x1
	.long	0x62
	.quad	.LFB114
	.quad	.LFE114
	.long	.LLST38
	.long	0x468a
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x3f7
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"pio"
	.byte	0x2
	.value	0x3f9
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x468a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10334
	.byte	0x0
	.uleb128 0x27
	.long	0x32a4
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1042
	.byte	0x2
	.value	0x429
	.byte	0x1
	.long	0x62
	.quad	.LFB115
	.quad	.LFE115
	.long	.LLST39
	.long	0x46f5
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x429
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"zio"
	.byte	0x2
	.value	0x42b
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x2
	.value	0x436
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1043
	.byte	0x2
	.value	0x471
	.byte	0x1
	.long	0x62
	.quad	.LFB116
	.quad	.LFE116
	.long	.LLST40
	.long	0x4739
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x471
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x473
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF1044
	.byte	0x2
	.value	0x489
	.byte	0x1
	.quad	.LFB117
	.quad	.LFE117
	.long	.LLST41
	.long	0x47a6
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x489
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x489
	.long	0x247b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x48b
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x48c
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1045
	.byte	0x2
	.value	0x48d
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1046
	.byte	0x2
	.value	0x4a9
	.byte	0x1
	.long	0x62
	.quad	.LFB118
	.quad	.LFE118
	.long	.LLST42
	.long	0x4890
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x4a9
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x4ab
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x4ac
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"vd"
	.byte	0x2
	.value	0x4ad
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF977
	.long	0x4890
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10466
	.uleb128 0x32
	.quad	.LBB21
	.quad	.LBE21
	.long	0x4870
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x4bb
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x4bb
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x4bb
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x4f9
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x3582
	.uleb128 0x30
	.long	.LASF1047
	.byte	0x2
	.value	0x514
	.byte	0x1
	.long	0x62
	.quad	.LFB119
	.quad	.LFE119
	.long	.LLST43
	.long	0x492c
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x514
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"pio"
	.byte	0x2
	.value	0x516
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x517
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF977
	.long	0x492c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10657
	.uleb128 0x26
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x2f
	.long	.LASF1048
	.byte	0x2
	.value	0x525
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1049
	.byte	0x2
	.value	0x525
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x3084
	.uleb128 0x30
	.long	.LASF1050
	.byte	0x2
	.value	0x550
	.byte	0x1
	.long	0x62
	.quad	.LFB120
	.quad	.LFE120
	.long	.LLST44
	.long	0x4a3a
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x550
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF1005
	.byte	0x2
	.value	0x552
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x553
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF1037
	.byte	0x2
	.value	0x554
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF1051
	.byte	0x2
	.value	0x555
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1036
	.byte	0x2
	.value	0x556
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1052
	.byte	0x2
	.value	0x557
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1053
	.byte	0x2
	.value	0x558
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF977
	.long	0x4a3a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10715
	.uleb128 0x26
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x589
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x589
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x589
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x31b6
	.uleb128 0x30
	.long	.LASF1054
	.byte	0x2
	.value	0x594
	.byte	0x1
	.long	0x62
	.quad	.LFB121
	.quad	.LFE121
	.long	.LLST45
	.long	0x4ad3
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x594
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x596
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF982
	.byte	0x2
	.value	0x597
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF970
	.byte	0x2
	.value	0x598
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF983
	.byte	0x2
	.value	0x599
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1005
	.byte	0x2
	.value	0x59a
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x4ad3
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10848
	.byte	0x0
	.uleb128 0x27
	.long	0x1e5d
	.uleb128 0x2e
	.long	.LASF1055
	.byte	0x2
	.value	0x5af
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.long	.LLST46
	.long	0x4b1d
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x5af
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF977
	.long	0x4b1d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10868
	.byte	0x0
	.uleb128 0x27
	.long	0x32a4
	.uleb128 0x30
	.long	.LASF1056
	.byte	0x2
	.value	0x5b8
	.byte	0x1
	.long	0x62
	.quad	.LFB123
	.quad	.LFE123
	.long	.LLST47
	.long	0x4b98
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x5b8
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x5ba
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x5bb
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1039
	.byte	0x2
	.value	0x5bc
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x4b98
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10887
	.byte	0x0
	.uleb128 0x27
	.long	0x1e5d
	.uleb128 0x30
	.long	.LASF1057
	.byte	0x2
	.value	0x5cb
	.byte	0x1
	.long	0x62
	.quad	.LFB124
	.quad	.LFE124
	.long	.LLST48
	.long	0x4d0f
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x5cb
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.string	"gbh"
	.byte	0x2
	.value	0x5cd
	.long	0x4d0f
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x5ce
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1058
	.byte	0x2
	.value	0x5ce
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1059
	.byte	0x2
	.value	0x5ce
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1051
	.byte	0x2
	.value	0x5ce
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x5cf
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF977
	.long	0x4d15
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10912
	.uleb128 0x26
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x2d
	.string	"gbp"
	.byte	0x2
	.value	0x5d7
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.quad	.LBB28
	.quad	.LBE28
	.long	0x4cbc
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x5db
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x5db
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x5db
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x5dc
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x5dc
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x5dc
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1fee
	.uleb128 0x27
	.long	0x43a7
	.uleb128 0x30
	.long	.LASF1060
	.byte	0x2
	.value	0x5ec
	.byte	0x1
	.long	0x62
	.quad	.LFB125
	.quad	.LFE125
	.long	.LLST49
	.long	0x4ee4
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x5ec
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"gbh"
	.byte	0x2
	.value	0x5ee
	.long	0x4d0f
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x5ef
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1058
	.byte	0x2
	.value	0x5ef
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1059
	.byte	0x2
	.value	0x5ef
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1051
	.byte	0x2
	.value	0x5ef
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x5f0
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.long	.LASF977
	.long	0x4ef4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10989
	.uleb128 0x32
	.quad	.LBB32
	.quad	.LBE32
	.long	0x4e19
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x5f3
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x5f3
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x5f3
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x2d
	.string	"gbp"
	.byte	0x2
	.value	0x5fb
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.quad	.LBB35
	.quad	.LBE35
	.long	0x4e91
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x5ff
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x5ff
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x5ff
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x600
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x600
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x600
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x4ef4
	.uleb128 0xd
	.long	0x98
	.byte	0x18
	.byte	0x0
	.uleb128 0x27
	.long	0x4ee4
	.uleb128 0x30
	.long	.LASF1061
	.byte	0x2
	.value	0x610
	.byte	0x1
	.long	0x62
	.quad	.LFB126
	.quad	.LFE126
	.long	.LLST50
	.long	0x4f9e
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x610
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"gbh"
	.byte	0x2
	.value	0x612
	.long	0x4d0f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x613
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1058
	.byte	0x2
	.value	0x613
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x614
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF977
	.long	0x4f9e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11078
	.uleb128 0x26
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x2d
	.string	"gbp"
	.byte	0x2
	.value	0x61c
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x43a7
	.uleb128 0x30
	.long	.LASF1062
	.byte	0x2
	.value	0x62a
	.byte	0x1
	.long	0x62
	.quad	.LFB127
	.quad	.LFE127
	.long	.LLST51
	.long	0x5048
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x62a
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"gbh"
	.byte	0x2
	.value	0x62c
	.long	0x4d0f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x62d
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1058
	.byte	0x2
	.value	0x62d
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x62e
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF977
	.long	0x5058
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11112
	.uleb128 0x26
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x2d
	.string	"gbp"
	.byte	0x2
	.value	0x636
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x5058
	.uleb128 0xd
	.long	0x98
	.byte	0x16
	.byte	0x0
	.uleb128 0x27
	.long	0x5048
	.uleb128 0x2e
	.long	.LASF1063
	.byte	0x2
	.value	0x643
	.byte	0x1
	.quad	.LFB128
	.quad	.LFE128
	.long	.LLST52
	.long	0x5249
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x643
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"pio"
	.byte	0x2
	.value	0x645
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2f
	.long	.LASF1064
	.byte	0x2
	.value	0x646
	.long	0x5249
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1065
	.byte	0x2
	.value	0x647
	.long	0x5249
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF1066
	.byte	0x2
	.value	0x648
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"d"
	.byte	0x2
	.value	0x649
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.long	.LASF977
	.long	0x524f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11159
	.uleb128 0x32
	.quad	.LBB41
	.quad	.LBE41
	.long	0x5148
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x64b
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x64b
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x64b
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.quad	.LBB43
	.quad	.LBE43
	.long	0x51a0
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x64c
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x64c
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x64c
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.quad	.LBB45
	.quad	.LBE45
	.long	0x51f7
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x64d
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x64d
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x64d
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x64e
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x64e
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x64e
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x1a41
	.uleb128 0x27
	.long	0x3099
	.uleb128 0x30
	.long	.LASF1067
	.byte	0x2
	.value	0x65b
	.byte	0x1
	.long	0x62
	.quad	.LFB129
	.quad	.LFE129
	.long	.LLST53
	.long	0x5419
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x65b
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2b
	.string	"mc"
	.byte	0x2
	.value	0x65b
	.long	0x2cfe
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x65d
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"dva"
	.byte	0x2
	.value	0x65e
	.long	0x5249
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x65f
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"gbh"
	.byte	0x2
	.value	0x660
	.long	0x4d0f
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2d
	.string	"txg"
	.byte	0x2
	.value	0x661
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1068
	.byte	0x2
	.value	0x662
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1069
	.byte	0x2
	.value	0x663
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1038
	.byte	0x2
	.value	0x664
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1059
	.byte	0x2
	.value	0x664
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1051
	.byte	0x2
	.value	0x664
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1070
	.byte	0x2
	.value	0x665
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF1071
	.byte	0x2
	.value	0x666
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1072
	.byte	0x2
	.value	0x667
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x2
	.value	0x668
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x669
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"d"
	.byte	0x2
	.value	0x669
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF977
	.long	0x5419
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11339
	.uleb128 0x26
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x2d
	.string	"gbp"
	.byte	0x2
	.value	0x67f
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.quad	.LBB50
	.quad	.LBE50
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x68a
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x68a
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB51
	.quad	.LBE51
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x68a
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x5af
	.uleb128 0x30
	.long	.LASF1073
	.byte	0x2
	.value	0x6c0
	.byte	0x1
	.long	0x62
	.quad	.LFB130
	.quad	.LFE130
	.long	.LLST54
	.long	0x55fe
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x6c0
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x6c2
	.long	0x2469
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"mc"
	.byte	0x2
	.value	0x6c3
	.long	0x2cfe
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x6c4
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x2
	.value	0x6c5
	.long	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.long	.LASF977
	.long	0x55fe
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11473
	.uleb128 0x32
	.quad	.LBB52
	.quad	.LBE52
	.long	0x54fd
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x6c8
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x6c8
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x6c8
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.quad	.LBB54
	.quad	.LBE54
	.long	0x5555
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x6c9
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x6c9
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x6c9
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.quad	.LBB56
	.quad	.LBE56
	.long	0x55ac
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x6ca
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x6ca
	.long	0x3597
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x6ca
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x6d6
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x6d6
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x6d6
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x3f06
	.uleb128 0x30
	.long	.LASF1074
	.byte	0x2
	.value	0x6e7
	.byte	0x1
	.long	0x62
	.quad	.LFB131
	.quad	.LFE131
	.long	.LLST55
	.long	0x5646
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x6e7
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x6e9
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1075
	.byte	0x2
	.value	0x6f3
	.byte	0x1
	.long	0x62
	.quad	.LFB132
	.quad	.LFE132
	.long	.LLST56
	.long	0x567b
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x6f3
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1076
	.byte	0x2
	.value	0x701
	.byte	0x1
	.long	0x62
	.quad	.LFB133
	.quad	.LFE133
	.long	.LLST57
	.long	0x5741
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x701
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"vd"
	.byte	0x2
	.value	0x703
	.long	0x247b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"tvd"
	.byte	0x2
	.value	0x704
	.long	0x247b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x705
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF971
	.byte	0x2
	.value	0x706
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"spa"
	.byte	0x2
	.value	0x707
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF977
	.long	0x5741
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11582
	.uleb128 0x26
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x2f
	.long	.LASF1066
	.byte	0x2
	.value	0x723
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1077
	.byte	0x2
	.value	0x724
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x32a4
	.uleb128 0x30
	.long	.LASF1078
	.byte	0x2
	.value	0x739
	.byte	0x1
	.long	0x62
	.quad	.LFB134
	.quad	.LFE134
	.long	.LLST58
	.long	0x577b
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x739
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1079
	.byte	0x2
	.value	0x743
	.byte	0x1
	.long	0x604
	.quad	.LFB135
	.quad	.LFE135
	.long	.LLST59
	.long	0x57bf
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x743
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"vd"
	.byte	0x2
	.value	0x745
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1080
	.byte	0x2
	.value	0x75a
	.byte	0x1
	.long	0x62
	.quad	.LFB136
	.quad	.LFE136
	.long	.LLST60
	.long	0x5856
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x75a
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"vd"
	.byte	0x2
	.value	0x75c
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"tvd"
	.byte	0x2
	.value	0x75d
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF977
	.long	0x5856
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11736
	.uleb128 0x26
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x2f
	.long	.LASF1077
	.byte	0x2
	.value	0x762
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1066
	.byte	0x2
	.value	0x763
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x31b6
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1081
	.byte	0x2
	.value	0x785
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137
	.long	.LLST61
	.long	0x58a1
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x785
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF977
	.long	0x58a1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11788
	.byte	0x0
	.uleb128 0x27
	.long	0x1e5d
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1082
	.byte	0x2
	.value	0x78e
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138
	.long	.LLST62
	.long	0x58ec
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x78e
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF977
	.long	0x58ec
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11800
	.byte	0x0
	.uleb128 0x27
	.long	0x31b6
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1083
	.byte	0x2
	.value	0x796
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139
	.long	.LLST63
	.long	0x5937
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x796
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF977
	.long	0x5937
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11809
	.byte	0x0
	.uleb128 0x27
	.long	0x31b6
	.uleb128 0x30
	.long	.LASF1084
	.byte	0x2
	.value	0x7a5
	.byte	0x1
	.long	0x62
	.quad	.LFB140
	.quad	.LFE140
	.long	.LLST64
	.long	0x59e0
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x7a5
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1004
	.byte	0x2
	.value	0x7a7
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x7a8
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x7aa
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x7aa
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x7aa
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF1085
	.byte	0x2
	.value	0x7b5
	.byte	0x1
	.long	0x62
	.quad	.LFB141
	.quad	.LFE141
	.long	.LLST65
	.long	0x5a99
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x7b5
	.long	0x2413
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.string	"zc"
	.byte	0x2
	.value	0x7b7
	.long	0x1a77
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"gbh"
	.byte	0x2
	.value	0x7b8
	.long	0x4d0f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF977
	.long	0x5aa9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11861
	.uleb128 0x26
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x2
	.value	0x7bb
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x2
	.value	0x7bb
	.long	0x3597
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x2
	.value	0x7bb
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xb5
	.long	0x5aa9
	.uleb128 0xd
	.long	0x98
	.byte	0x1a
	.byte	0x0
	.uleb128 0x27
	.long	0x5a99
	.uleb128 0x30
	.long	.LASF1086
	.byte	0x2
	.value	0x7c5
	.byte	0x1
	.long	0x62
	.quad	.LFB142
	.quad	.LFE142
	.long	.LLST66
	.long	0x5ae3
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x7c5
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1087
	.byte	0x2
	.value	0x7d5
	.byte	0x1
	.quad	.LFB143
	.quad	.LFE143
	.long	.LLST67
	.long	0x5b15
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x7d5
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1088
	.byte	0x2
	.value	0x7de
	.byte	0x1
	.quad	.LFB144
	.quad	.LFE144
	.long	.LLST68
	.long	0x5b64
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x7de
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"zcp"
	.byte	0x2
	.value	0x7de
	.long	0x29dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"bp"
	.byte	0x2
	.value	0x7e0
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1089
	.byte	0x2
	.value	0x819
	.byte	0x1
	.quad	.LFB145
	.quad	.LFE145
	.long	.LLST69
	.long	0x5bd9
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x819
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF977
	.long	0x5bd9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11922
	.uleb128 0x26
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x2f
	.long	.LASF995
	.byte	0x2
	.value	0x81c
	.long	0x5d5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"rv"
	.byte	0x2
	.value	0x81d
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1dff
	.uleb128 0x30
	.long	.LASF1090
	.byte	0x2
	.value	0x839
	.byte	0x1
	.long	0x604
	.quad	.LFB146
	.quad	.LFE146
	.long	.LLST70
	.long	0x5c29
	.uleb128 0x2c
	.long	.LASF1091
	.byte	0x2
	.value	0x839
	.long	0x5ca
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1092
	.byte	0x2
	.value	0x83b
	.long	0x5ca
	.byte	0x9
	.byte	0x3
	.quad	allocs.11958
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF1093
	.byte	0x2
	.value	0x844
	.byte	0x1
	.long	0x62
	.quad	.LFB147
	.quad	.LFE147
	.long	.LLST71
	.long	0x5cc1
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x844
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF970
	.byte	0x2
	.value	0x844
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF1094
	.byte	0x2
	.value	0x844
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF1095
	.byte	0x2
	.value	0x844
	.long	0x246f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x845
	.long	0x5e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x2
	.value	0x847
	.long	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF1096
	.long	0x5cc1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.11975
	.byte	0x0
	.uleb128 0x27
	.long	0x314d
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1097
	.byte	0x2
	.value	0x870
	.byte	0x1
	.quad	.LFB148
	.quad	.LFE148
	.long	.LLST72
	.long	0x5d3d
	.uleb128 0x2b
	.string	"spa"
	.byte	0x2
	.value	0x870
	.long	0x2469
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bp"
	.byte	0x2
	.value	0x870
	.long	0x246f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"txg"
	.byte	0x2
	.value	0x870
	.long	0x5e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF977
	.long	0x5d3d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12045
	.uleb128 0x25
	.long	.LASF1096
	.long	0x5d42
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__func__.12046
	.byte	0x0
	.uleb128 0x27
	.long	0x322d
	.uleb128 0x27
	.long	0x322d
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF1098
	.byte	0x2
	.value	0x87f
	.byte	0x1
	.quad	.LFB149
	.quad	.LFE149
	.long	.LLST73
	.long	0x5d87
	.uleb128 0x2b
	.string	"zio"
	.byte	0x2
	.value	0x87f
	.long	0x2413
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"vd"
	.byte	0x2
	.value	0x87f
	.long	0x247b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	.LASF1099
	.byte	0x6
	.byte	0x93
	.long	0x2c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF1100
	.byte	0x29
	.byte	0x33
	.long	0x38
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x1cd0
	.long	0x5db1
	.uleb128 0xd
	.long	0x98
	.byte	0x26
	.byte	0x0
	.uleb128 0x34
	.long	.LASF1101
	.byte	0x1a
	.value	0x1f0
	.long	0x5dbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	0x5da1
	.uleb128 0x34
	.long	.LASF1102
	.byte	0x17
	.value	0x215
	.long	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x5bf
	.long	0x5de2
	.uleb128 0xd
	.long	0x98
	.byte	0x9
	.byte	0x0
	.uleb128 0x35
	.long	.LASF1103
	.byte	0x2
	.byte	0x32
	.long	0x5dd2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_priority_table
	.uleb128 0xc
	.long	0xaf
	.long	0x5e08
	.uleb128 0xd
	.long	0x98
	.byte	0x5
	.byte	0x0
	.uleb128 0x35
	.long	.LASF1104
	.byte	0x2
	.byte	0x44
	.long	0x5df8
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_type_name
	.uleb128 0x34
	.long	.LASF1105
	.byte	0x1f
	.value	0x17e
	.long	0x5d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x2a3e
	.long	0x5e3c
	.uleb128 0xd
	.long	0x98
	.byte	0x8
	.byte	0x0
	.uleb128 0x33
	.long	.LASF1106
	.byte	0x23
	.byte	0x34
	.long	0x5e2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF1107
	.byte	0x19
	.value	0x11c
	.long	0x2f29
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF1108
	.byte	0x2
	.byte	0x48
	.long	0x5ca
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_zil_fail_shift
	.uleb128 0x35
	.long	.LASF1109
	.byte	0x2
	.byte	0x49
	.long	0x5ca
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_io_fail_shift
	.uleb128 0x35
	.long	.LASF1110
	.byte	0x2
	.byte	0x4c
	.long	0x62
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_write_retry
	.uleb128 0x35
	.long	.LASF1111
	.byte	0x2
	.byte	0x4f
	.long	0x2cf2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_taskq
	.uleb128 0x35
	.long	.LASF1112
	.byte	0x2
	.byte	0x50
	.long	0x62
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_resume_threads
	.uleb128 0x35
	.long	.LASF963
	.byte	0x2
	.byte	0x58
	.long	0x2f89
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_sync_pass
	.uleb128 0x35
	.long	.LASF1113
	.byte	0x2
	.byte	0x65
	.long	0x30f3
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_cache
	.uleb128 0xc
	.long	0x30f3
	.long	0x5f01
	.uleb128 0xd
	.long	0x98
	.byte	0xff
	.byte	0x0
	.uleb128 0x35
	.long	.LASF1114
	.byte	0x2
	.byte	0x66
	.long	0x5ef1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_buf_cache
	.uleb128 0x35
	.long	.LASF1115
	.byte	0x2
	.byte	0x67
	.long	0x5ef1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_data_buf_cache
	.uleb128 0xc
	.long	0x5f3d
	.long	0x5f3d
	.uleb128 0xd
	.long	0x98
	.byte	0x18
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x2f94
	.uleb128 0x36
	.long	.LASF1116
	.byte	0x2
	.value	0x7ef
	.long	0x5f2d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	zio_pipeline
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
	.uleb128 0x3
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x4
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x35e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5f5b
	.long	0x2fd2
	.string	"zio_init"
	.long	0x30a9
	.string	"zio_fini"
	.long	0x30f9
	.string	"zio_buf_alloc"
	.long	0x3162
	.string	"zio_data_buf_alloc"
	.long	0x31cb
	.string	"zio_buf_free"
	.long	0x3242
	.string	"zio_data_buf_free"
	.long	0x35cd
	.string	"zio_null"
	.long	0x364f
	.string	"zio_root"
	.long	0x36b2
	.string	"zio_read"
	.long	0x37e9
	.string	"zio_write"
	.long	0x392a
	.string	"zio_rewrite"
	.long	0x3b7c
	.string	"zio_free"
	.long	0x3c27
	.string	"zio_claim"
	.long	0x3d65
	.string	"zio_ioctl"
	.long	0x3f1b
	.string	"zio_read_phys"
	.long	0x400b
	.string	"zio_write_phys"
	.long	0x411f
	.string	"zio_vdev_child_io"
	.long	0x423b
	.string	"zio_wait"
	.long	0x4299
	.string	"zio_nowait"
	.long	0x42cb
	.string	"zio_interrupt"
	.long	0x44d9
	.string	"zio_wait_for_children_ready"
	.long	0x450f
	.string	"zio_wait_for_children_done"
	.long	0x468f
	.string	"zio_vdev_resume_io"
	.long	0x577b
	.string	"zio_should_retry"
	.long	0x585b
	.string	"zio_vdev_io_reissue"
	.long	0x58a6
	.string	"zio_vdev_io_redone"
	.long	0x58f1
	.string	"zio_vdev_io_bypass"
	.long	0x5ae3
	.string	"zio_checksum_verified"
	.long	0x5b15
	.string	"zio_set_gang_verifier"
	.long	0x5b64
	.string	"zio_execute"
	.long	0x5c29
	.string	"zio_alloc_blk"
	.long	0x5cc6
	.string	"zio_free_blk"
	.long	0x5d47
	.string	"zio_flush"
	.long	0x5de2
	.string	"zio_priority_table"
	.long	0x5e08
	.string	"zio_type_name"
	.long	0x5e57
	.string	"zio_zil_fail_shift"
	.long	0x5e6d
	.string	"zio_io_fail_shift"
	.long	0x5e83
	.string	"zio_write_retry"
	.long	0x5e99
	.string	"zio_taskq"
	.long	0x5eaf
	.string	"zio_resume_threads"
	.long	0x5ec5
	.string	"zio_sync_pass"
	.long	0x5edb
	.string	"zio_cache"
	.long	0x5f01
	.string	"zio_buf_cache"
	.long	0x5f17
	.string	"zio_data_buf_cache"
	.long	0x5f43
	.string	"zio_pipeline"
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
	.section	.debug_str,"MS",@progbits,1
.LASF260:
	.string	"_SC_THREAD_SPORADIC_SERVER"
.LASF557:
	.string	"vdev_last_try"
.LASF363:
	.string	"VDEV_STATE_FAULTED"
.LASF348:
	.string	"avl_node_t"
.LASF68:
	.string	"__align"
.LASF675:
	.string	"ZIO_STAGE_CLAIM_GANG_MEMBERS"
.LASF149:
	.string	"_SC_2_SW_DEV"
.LASF43:
	.string	"_unused2"
.LASF109:
	.string	"_SC_TIMERS"
.LASF687:
	.string	"ZIO_STAGE_READ_DECOMPRESS"
.LASF743:
	.string	"io_child"
.LASF758:
	.string	"io_vsd"
.LASF385:
	.string	"POOL_STATE_L2CACHE"
.LASF29:
	.string	"_fileno"
.LASF58:
	.string	"__pthread_mutex_s"
.LASF399:
	.string	"vdev_stat"
.LASF438:
	.string	"spa_load_state"
.LASF1113:
	.string	"zio_cache"
.LASF1043:
	.string	"zio_vdev_suspend_io"
.LASF823:
	.string	"metaslab_group"
.LASF256:
	.string	"_SC_SHELL"
.LASF117:
	.string	"_SC_MEMORY_PROTECTION"
.LASF769:
	.string	"io_type"
.LASF210:
	.string	"_SC_SCHAR_MAX"
.LASF432:
	.string	"spa_config_cache_lock"
.LASF593:
	.string	"DMU_OT_NONE"
.LASF697:
	.string	"zbt_magic"
.LASF752:
	.string	"io_bp_orig"
.LASF71:
	.string	"__total_seq"
.LASF214:
	.string	"_SC_UCHAR_MAX"
.LASF349:
	.string	"nvlist"
.LASF234:
	.string	"_SC_C_LANG_SUPPORT"
.LASF396:
	.string	"ZIO_TYPE_IOCTL"
.LASF338:
	.string	"avl_parent"
.LASF559:
	.string	"vdev_unspare"
.LASF658:
	.string	"tl_offset"
.LASF767:
	.string	"io_flags"
.LASF1020:
	.string	"zio_vdev_child_io"
.LASF92:
	.string	"B_TRUE"
.LASF856:
	.string	"dp_meta_rootbp"
.LASF708:
	.string	"ZIO_CHECKSUM_OFF"
.LASF838:
	.string	"tx_exit_cv"
.LASF1099:
	.string	"stderr"
.LASF537:
	.string	"vdev_dtl_node"
.LASF371:
	.string	"VDEV_AUX_BAD_GUID_SUM"
.LASF171:
	.string	"_SC_TTY_NAME_MAX"
.LASF1042:
	.string	"zio_vdev_resume_io"
.LASF745:
	.string	"io_sibling_next"
.LASF753:
	.string	"io_data"
.LASF915:
	.string	"bpl_object"
.LASF157:
	.string	"_SC_SELECT"
.LASF34:
	.string	"_shortbuf"
.LASF505:
	.string	"spa_refcount"
.LASF737:
	.string	"io_checksum"
.LASF106:
	.string	"_SC_SAVED_IDS"
.LASF887:
	.string	"uberblock_t"
.LASF137:
	.string	"_SC_BC_STRING_MAX"
.LASF989:
	.string	"done"
.LASF282:
	.string	"_SC_TRACE_INHERIT"
.LASF936:
	.string	"vdev_queue_t"
.LASF809:
	.string	"sm_loading"
.LASF119:
	.string	"_SC_SEMAPHORES"
.LASF563:
	.string	"vdev_dtl_lock"
.LASF555:
	.string	"vdev_cache"
.LASF139:
	.string	"_SC_EQUIV_CLASS_MAX"
.LASF789:
	.string	"zb_objset"
.LASF337:
	.string	"avl_child"
.LASF984:
	.string	"zio_push_transform"
.LASF1072:
	.string	"gbh_ndvas"
.LASF309:
	.string	"list_next"
.LASF577:
	.string	"dva_t"
.LASF564:
	.string	"vdev_stat_lock"
.LASF88:
	.string	"uint16_t"
.LASF759:
	.string	"io_offset"
.LASF801:
	.string	"space_map"
.LASF839:
	.string	"tx_threads"
.LASF676:
	.string	"ZIO_STAGE_DVA_ALLOCATE"
.LASF698:
	.string	"zbt_cksum"
.LASF240:
	.string	"_SC_DEVICE_SPECIFIC"
.LASF15:
	.string	"_flags"
.LASF734:
	.string	"io_root"
.LASF175:
	.string	"_SC_THREAD_THREADS_MAX"
.LASF877:
	.string	"dp_sync_tasks"
.LASF1048:
	.string	"next"
.LASF293:
	.string	"_SC_LEVEL3_CACHE_SIZE"
.LASF775:
	.string	"io_cmd"
.LASF10:
	.string	"__off_t"
.LASF566:
	.string	"metaslab"
.LASF1028:
	.string	"countp"
.LASF617:
	.string	"DMU_OT_ZVOL_PROP"
.LASF865:
	.string	"dp_scrub_queue_obj"
.LASF1060:
	.string	"zio_rewrite_gang_members"
.LASF1086:
	.string	"zio_checksum_verify"
.LASF181:
	.string	"_SC_THREAD_PROCESS_SHARED"
.LASF105:
	.string	"_SC_JOB_CONTROL"
.LASF72:
	.string	"__wakeup_seq"
.LASF482:
	.string	"spa_errlog_scrub"
.LASF886:
	.string	"zio_checksum_info_t"
.LASF1053:
	.string	"pass"
.LASF485:
	.string	"spa_errlist_scrub"
.LASF35:
	.string	"_lock"
.LASF330:
	.string	"rw_lock"
.LASF1102:
	.string	"spa_mode"
.LASF1104:
	.string	"zio_type_name"
.LASF319:
	.string	"kthread_t"
.LASF544:
	.string	"vdev_path"
.LASF916:
	.string	"bpl_blockshift"
.LASF610:
	.string	"DMU_OT_ZNODE"
.LASF445:
	.string	"spa_final_txg"
.LASF478:
	.string	"spa_ena"
.LASF221:
	.string	"_SC_NL_NMAX"
.LASF647:
	.string	"tx_cpu"
.LASF957:
	.string	"vdev_op_io_start"
.LASF1033:
	.string	"zio_wait_for_children_ready"
.LASF407:
	.string	"vs_ops"
.LASF1118:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool/zio.c"
.LASF156:
	.string	"_SC_POLL"
.LASF782:
	.string	"io_children_notdone"
.LASF360:
	.string	"VDEV_STATE_OFFLINE"
.LASF939:
	.string	"vq_write_tree"
.LASF1098:
	.string	"zio_flush"
.LASF275:
	.string	"_SC_V6_ILP32_OFF32"
.LASF851:
	.string	"dp_meta_objset"
.LASF706:
	.string	"ZIO_CHECKSUM_INHERIT"
.LASF1091:
	.string	"range"
.LASF849:
	.string	"dsl_pool"
.LASF233:
	.string	"_SC_BASE"
.LASF49:
	.string	"int32_t"
.LASF205:
	.string	"_SC_LONG_BIT"
.LASF653:
	.string	"tn_next"
.LASF73:
	.string	"__woken_seq"
.LASF236:
	.string	"_SC_CLOCK_SELECTION"
.LASF489:
	.string	"spa_pending_vdev"
.LASF719:
	.string	"ZIO_COMPRESS_OFF"
.LASF1119:
	.string	"/home/yarik/git/zfs-fuse-0.5.0/src/lib/libzpool"
.LASF796:
	.string	"smop_load"
.LASF956:
	.string	"vdev_op_asize"
.LASF334:
	.string	"taskq_t"
.LASF940:
	.string	"vq_pending_tree"
.LASF905:
	.string	"bpl_comp"
.LASF677:
	.string	"ZIO_STAGE_DVA_FREE"
.LASF121:
	.string	"_SC_AIO_LISTIO_MAX"
.LASF992:
	.string	"priority"
.LASF678:
	.string	"ZIO_STAGE_DVA_CLAIM"
.LASF591:
	.string	"dsl_dir"
.LASF1070:
	.string	"gbps_left"
.LASF493:
	.string	"spa_delegation"
.LASF1084:
	.string	"zio_checksum_generate"
.LASF813:
	.string	"sm_lock"
.LASF74:
	.string	"__mutex"
.LASF841:
	.string	"tx_sync_thread"
.LASF247:
	.string	"_SC_FILE_SYSTEM"
.LASF21:
	.string	"_IO_write_end"
.LASF705:
	.string	"zio_checksum"
.LASF211:
	.string	"_SC_SCHAR_MIN"
.LASF141:
	.string	"_SC_LINE_MAX"
.LASF1115:
	.string	"zio_data_buf_cache"
.LASF61:
	.string	"__owner"
.LASF532:
	.string	"vdev_dirty_node"
.LASF754:
	.string	"io_size"
.LASF104:
	.string	"_SC_TZNAME_MAX"
.LASF409:
	.string	"vs_read_errors"
.LASF208:
	.string	"_SC_NZERO"
.LASF771:
	.string	"io_orig_stage"
.LASF508:
	.string	"vdev_id"
.LASF540:
	.string	"vdev_faulted"
.LASF144:
	.string	"_SC_2_VERSION"
.LASF274:
	.string	"_SC_2_PBS_CHECKPOINT"
.LASF496:
	.string	"spa_zio_cv"
.LASF633:
	.string	"dmu_buf"
.LASF377:
	.string	"VDEV_AUX_ERR_EXCEEDED"
.LASF854:
	.string	"dp_origin_snap"
.LASF806:
	.string	"sm_shift"
.LASF59:
	.string	"__lock"
.LASF379:
	.string	"VDEV_AUX_BAD_LOG"
.LASF499:
	.string	"spa_aio_ctx"
.LASF365:
	.string	"VDEV_STATE_HEALTHY"
.LASF439:
	.string	"spa_zio_issue_taskq"
.LASF487:
	.string	"spa_history"
.LASF662:
	.string	"dkc_callback"
.LASF631:
	.string	"DMU_OT_SCRUB_QUEUE"
.LASF919:
	.string	"bpl_queue"
.LASF297:
	.string	"_SC_LEVEL4_CACHE_ASSOC"
.LASF57:
	.string	"__pthread_list_t"
.LASF366:
	.string	"vdev_aux"
.LASF862:
	.string	"dp_space_towrite"
.LASF219:
	.string	"_SC_NL_LANGMAX"
.LASF973:
	.string	"zio_init"
.LASF966:
	.string	"zp_rewrite"
.LASF1018:
	.string	"zio_write_phys"
.LASF1076:
	.string	"zio_vdev_io_start"
.LASF504:
	.string	"spa_config_lock"
.LASF840:
	.string	"tx_exiting"
.LASF427:
	.string	"spa_name"
.LASF990:
	.string	"private"
.LASF701:
	.string	"zg_blkptr"
.LASF420:
	.string	"vdev_stat_t"
.LASF774:
	.string	"io_dk_callback"
.LASF285:
	.string	"_SC_LEVEL1_ICACHE_ASSOC"
.LASF1032:
	.string	"zio_notify_parent"
.LASF183:
	.string	"_SC_NPROCESSORS_ONLN"
.LASF1074:
	.string	"zio_dva_free"
.LASF358:
	.string	"VDEV_STATE_UNKNOWN"
.LASF695:
	.string	"zt_next"
.LASF520:
	.string	"vdev_children"
.LASF1045:
	.string	"blkbuf"
.LASF401:
	.string	"vs_state"
.LASF81:
	.string	"__nr_readers_queued"
.LASF625:
	.string	"DMU_OT_DSL_PERMS"
.LASF381:
	.string	"POOL_STATE_ACTIVE"
.LASF814:
	.string	"space_map_t"
.LASF747:
	.string	"io_logical"
.LASF367:
	.string	"VDEV_AUX_NONE"
.LASF145:
	.string	"_SC_2_C_BIND"
.LASF836:
	.string	"tx_quiesce_done_cv"
.LASF645:
	.string	"dsl_dataset"
.LASF922:
	.string	"bpl_cached_dbuf"
.LASF75:
	.string	"__nwaiters"
.LASF368:
	.string	"VDEV_AUX_OPEN_FAILED"
.LASF971:
	.string	"align"
.LASF108:
	.string	"_SC_PRIORITY_SCHEDULING"
.LASF824:
	.string	"tx_state"
.LASF603:
	.string	"DMU_OT_DNODE"
.LASF968:
	.string	"zio_pipe_stage_t"
.LASF927:
	.string	"scl_cv"
.LASF378:
	.string	"VDEV_AUX_IO_FAILURE"
.LASF946:
	.string	"vdev_open_func_t"
.LASF328:
	.string	"thr_count"
.LASF127:
	.string	"_SC_VERSION"
.LASF828:
	.string	"tx_quiesced_txg"
.LASF113:
	.string	"_SC_FSYNC"
.LASF490:
	.string	"spa_props_lock"
.LASF347:
	.string	"avl_tree_t"
.LASF962:
	.string	"vdev_ops_t"
.LASF965:
	.string	"zp_dontcompress"
.LASF372:
	.string	"VDEV_AUX_TOO_SMALL"
.LASF608:
	.string	"DMU_OT_DSL_PROPS"
.LASF873:
	.string	"dp_scrub_restart"
.LASF649:
	.string	"tc_cv"
.LASF459:
	.string	"spa_ubsync"
.LASF696:
	.string	"zio_block_tail"
.LASF746:
	.string	"io_transform_stack"
.LASF1082:
	.string	"zio_vdev_io_redone"
.LASF245:
	.string	"_SC_FILE_ATTRIBUTES"
.LASF768:
	.string	"io_orig_flags"
.LASF888:
	.string	"uberblock"
.LASF66:
	.string	"__data"
.LASF86:
	.string	"pthread_rwlock_t"
.LASF908:
	.string	"bplist_q"
.LASF802:
	.string	"sm_root"
.LASF899:
	.string	"rc_count"
.LASF580:
	.string	"zio_cksum_t"
.LASF331:
	.string	"krwlock_t"
.LASF146:
	.string	"_SC_2_C_DEV"
.LASF471:
	.string	"spa_async_lock"
.LASF28:
	.string	"_chain"
.LASF403:
	.string	"vs_alloc"
.LASF783:
	.string	"io_waiter"
.LASF638:
	.string	"dmu_buf_t"
.LASF272:
	.string	"_SC_SYMLOOP_MAX"
.LASF354:
	.string	"nvl_pad"
.LASF595:
	.string	"DMU_OT_OBJECT_ARRAY"
.LASF1106:
	.string	"zio_checksum_table"
.LASF486:
	.string	"spa_deflate"
.LASF410:
	.string	"vs_write_errors"
.LASF1:
	.string	"unsigned char"
.LASF596:
	.string	"DMU_OT_PACKED_NVLIST"
.LASF725:
	.string	"ZIO_COMPRESS_GZIP_4"
.LASF125:
	.string	"_SC_MQ_OPEN_MAX"
.LASF82:
	.string	"__nr_writers_queued"
.LASF69:
	.string	"pthread_mutex_t"
.LASF323:
	.string	"initialized"
.LASF1120:
	.string	"_IO_lock_t"
.LASF317:
	.string	"float"
.LASF1003:
	.string	"zio_write"
.LASF1108:
	.string	"zio_zil_fail_shift"
.LASF1014:
	.string	"zio_phys_bp_init"
.LASF1034:
	.string	"zio_wait_for_children_done"
.LASF554:
	.string	"vdev_queue"
.LASF1031:
	.string	"new_vds"
.LASF130:
	.string	"_SC_SEM_NSEMS_MAX"
.LASF217:
	.string	"_SC_USHRT_MAX"
.LASF539:
	.string	"vdev_offline"
.LASF611:
	.string	"DMU_OT_OLDACL"
.LASF642:
	.string	"ot_metadata"
.LASF406:
	.string	"vs_rsize"
.LASF103:
	.string	"_SC_STREAM_MAX"
.LASF110:
	.string	"_SC_ASYNCHRONOUS_IO"
.LASF778:
	.string	"io_numerrors"
.LASF666:
	.string	"ZIO_STAGE_OPEN"
.LASF252:
	.string	"_SC_READER_WRITER_LOCKS"
.LASF237:
	.string	"_SC_CPUTIME"
.LASF394:
	.string	"ZIO_TYPE_FREE"
.LASF601:
	.string	"DMU_OT_SPACE_MAP"
.LASF926:
	.string	"scl_write_wanted"
.LASF974:
	.string	"zio_fini"
.LASF269:
	.string	"_SC_2_PBS_LOCATE"
.LASF239:
	.string	"_SC_DEVICE_IO"
.LASF142:
	.string	"_SC_RE_DUP_MAX"
.LASF863:
	.string	"dp_tempreserved"
.LASF829:
	.string	"tx_syncing_txg"
.LASF950:
	.string	"vdev_io_start_func_t"
.LASF257:
	.string	"_SC_SIGNALS"
.LASF996:
	.string	"__left"
.LASF465:
	.string	"spa_scrub_io_cv"
.LASF650:
	.string	"tc_count"
.LASF576:
	.string	"dva_word"
.LASF864:
	.string	"dp_scrub_func"
.LASF931:
	.string	"SPA_LOG_MISSING"
.LASF914:
	.string	"bpl_mos"
.LASF187:
	.string	"_SC_PASS_MAX"
.LASF63:
	.string	"__kind"
.LASF531:
	.string	"vdev_remove_wanted"
.LASF90:
	.string	"uint64_t"
.LASF853:
	.string	"dp_mos_dir"
.LASF412:
	.string	"vs_self_healed"
.LASF629:
	.string	"DMU_OT_FUID_SIZE"
.LASF1027:
	.string	"zio_wait_for_children"
.LASF786:
	.string	"io_ena"
.LASF488:
	.string	"spa_history_lock"
.LASF986:
	.string	"zio_clear_transform_stack"
.LASF182:
	.string	"_SC_NPROCESSORS_CONF"
.LASF1015:
	.string	"offset"
.LASF569:
	.string	"sav_object"
.LASF528:
	.string	"vdev_ms_list"
.LASF874:
	.string	"dp_tx"
.LASF980:
	.string	"zio_buf_free"
.LASF343:
	.string	"avl_compar"
.LASF332:
	.string	"kcondvar_t"
.LASF189:
	.string	"_SC_XOPEN_XCU_VERSION"
.LASF1067:
	.string	"zio_write_allocate_gang_members"
.LASF424:
	.string	"SPA_LOAD_TRYIMPORT"
.LASF538:
	.string	"vdev_wholedisk"
.LASF875:
	.string	"dp_dirty_datasets"
.LASF948:
	.string	"vdev_probe_func_t"
.LASF115:
	.string	"_SC_MEMLOCK"
.LASF1061:
	.string	"zio_free_gang_members"
.LASF750:
	.string	"io_done"
.LASF1005:
	.string	"compress"
.LASF1006:
	.string	"ncopies"
.LASF913:
	.string	"bpl_lock"
.LASF131:
	.string	"_SC_SEM_VALUE_MAX"
.LASF635:
	.string	"db_offset"
.LASF369:
	.string	"VDEV_AUX_CORRUPT_DATA"
.LASF197:
	.string	"_SC_XOPEN_XPG2"
.LASF198:
	.string	"_SC_XOPEN_XPG3"
.LASF199:
	.string	"_SC_XOPEN_XPG4"
.LASF805:
	.string	"sm_size"
.LASF20:
	.string	"_IO_write_ptr"
.LASF107:
	.string	"_SC_REALTIME_SIGNALS"
.LASF1000:
	.string	"zio_null"
.LASF773:
	.string	"io_priority"
.LASF1055:
	.string	"zio_gang_byteswap"
.LASF682:
	.string	"ZIO_STAGE_VDEV_IO_DONE"
.LASF326:
	.string	"krwlock"
.LASF1100:
	.string	"__invalid_size_argument_for_IOC"
.LASF530:
	.string	"vdev_txg_node"
.LASF335:
	.string	"taskq"
.LASF514:
	.string	"vdev_ops"
.LASF180:
	.string	"_SC_THREAD_PRIO_PROTECT"
.LASF607:
	.string	"DMU_OT_DSL_DS_SNAP_MAP"
.LASF96:
	.string	"longlong_t"
.LASF395:
	.string	"ZIO_TYPE_CLAIM"
.LASF541:
	.string	"vdev_degraded"
.LASF500:
	.string	"spa_import_faulted"
.LASF416:
	.string	"vs_scrub_repaired"
.LASF904:
	.string	"bpl_bytes"
.LASF389:
	.string	"POOL_STATE_POTENTIALLY_ACTIVE"
.LASF568:
	.string	"spa_aux_vdev"
.LASF857:
	.string	"dp_synced_datasets"
.LASF606:
	.string	"DMU_OT_DSL_DIR_CHILD_MAP"
.LASF417:
	.string	"vs_scrub_errors"
.LASF663:
	.string	"dkc_cookie"
.LASF1051:
	.string	"lsize"
.LASF742:
	.string	"io_bp_copy"
.LASF67:
	.string	"__size"
.LASF866:
	.string	"dp_scrub_min_txg"
.LASF327:
	.string	"mutex"
.LASF970:
	.string	"size"
.LASF464:
	.string	"spa_scrub_errors"
.LASF613:
	.string	"DMU_OT_DIRECTORY_CONTENTS"
.LASF762:
	.string	"io_offset_node"
.LASF852:
	.string	"dp_root_dir"
.LASF167:
	.string	"_SC_THREAD_SAFE_FUNCTIONS"
.LASF906:
	.string	"bpl_uncomp"
.LASF161:
	.string	"_SC_PII_INTERNET_DGRAM"
.LASF250:
	.string	"_SC_SINGLE_PROCESS"
.LASF434:
	.string	"spa_state"
.LASF526:
	.string	"vdev_mg"
.LASF300:
	.string	"_SC_RAW_SOCKETS"
.LASF798:
	.string	"smop_alloc"
.LASF83:
	.string	"__writer"
.LASF924:
	.string	"scl_lock"
.LASF527:
	.string	"vdev_ms"
.LASF574:
	.string	"sav_pending"
.LASF8:
	.string	"size_t"
.LASF1039:
	.string	"gbuf"
.LASF303:
	.string	"rwlock_t"
.LASF60:
	.string	"__count"
.LASF87:
	.string	"uint8_t"
.LASF585:
	.string	"blk_birth"
.LASF831:
	.string	"tx_sync_txg_waiting"
.LASF949:
	.string	"vdev_asize_func_t"
.LASF134:
	.string	"_SC_BC_BASE_MAX"
.LASF994:
	.string	"stage"
.LASF787:
	.string	"zio_done_func_t"
.LASF641:
	.string	"ot_byteswap"
.LASF749:
	.string	"io_ready"
.LASF890:
	.string	"ub_version"
.LASF129:
	.string	"_SC_RTSIG_MAX"
.LASF686:
	.string	"ZIO_STAGE_READ_GANG_MEMBERS"
.LASF251:
	.string	"_SC_NETWORKING"
.LASF534:
	.string	"vdev_islog"
.LASF376:
	.string	"VDEV_AUX_SPARED"
.LASF168:
	.string	"_SC_GETGR_R_SIZE_MAX"
.LASF795:
	.string	"space_map_ops"
.LASF512:
	.string	"vdev_ashift"
.LASF176:
	.string	"_SC_THREAD_ATTR_STACKADDR"
.LASF291:
	.string	"_SC_LEVEL2_CACHE_ASSOC"
.LASF159:
	.string	"_SC_IOV_MAX"
.LASF450:
	.string	"spa_load_guid"
.LASF947:
	.string	"vdev_close_func_t"
.LASF398:
	.string	"zio_type_t"
.LASF154:
	.string	"_SC_PII_INTERNET"
.LASF804:
	.string	"sm_start"
.LASF1078:
	.string	"zio_vdev_io_done"
.LASF426:
	.string	"spa_t"
.LASF24:
	.string	"_IO_save_base"
.LASF400:
	.string	"vs_timestamp"
.LASF932:
	.string	"SPA_LOG_CLEAR"
.LASF928:
	.string	"scl_count"
.LASF717:
	.string	"ZIO_COMPRESS_INHERIT"
.LASF196:
	.string	"_SC_2_UPE"
.LASF627:
	.string	"DMU_OT_SYSACL"
.LASF525:
	.string	"vdev_ms_count"
.LASF668:
	.string	"ZIO_STAGE_READ_INIT"
.LASF1040:
	.string	"zio_ready"
.LASF925:
	.string	"scl_writer"
.LASF124:
	.string	"_SC_DELAYTIMER_MAX"
.LASF1011:
	.string	"zio_free"
.LASF225:
	.string	"_SC_XBS5_ILP32_OFFBIG"
.LASF592:
	.string	"dmu_object_type"
.LASF352:
	.string	"nvl_priv"
.LASF672:
	.string	"ZIO_STAGE_GET_GANG_HEADER"
.LASF513:
	.string	"vdev_prevstate"
.LASF302:
	.string	"cond_t"
.LASF442:
	.string	"spa_normal_class"
.LASF533:
	.string	"vdev_deflate_ratio"
.LASF552:
	.string	"vdev_isspare"
.LASF684:
	.string	"ZIO_STAGE_WAIT_FOR_CHILDREN_DONE"
.LASF261:
	.string	"_SC_SYSTEM_DATABASE"
.LASF38:
	.string	"__pad2"
.LASF685:
	.string	"ZIO_STAGE_CHECKSUM_VERIFY"
.LASF661:
	.string	"dk_callback"
.LASF492:
	.string	"spa_bootfs"
.LASF891:
	.string	"ub_txg"
.LASF691:
	.string	"zio_transform"
.LASF748:
	.string	"zio_link_node"
.LASF640:
	.string	"dmu_object_type_info"
.LASF165:
	.string	"_SC_T_IOV_MAX"
.LASF868:
	.string	"dp_scrub_bookmark"
.LASF918:
	.string	"bpl_havecomp"
.LASF626:
	.string	"DMU_OT_ACL"
.LASF311:
	.string	"list"
.LASF637:
	.string	"db_data"
.LASF693:
	.string	"zt_size"
.LASF911:
	.string	"bplist_q_t"
.LASF54:
	.string	"__pthread_internal_list"
.LASF711:
	.string	"ZIO_CHECKSUM_ZILOG"
.LASF55:
	.string	"__prev"
.LASF953:
	.string	"vdev_op_open"
.LASF414:
	.string	"vs_scrub_complete"
.LASF384:
	.string	"POOL_STATE_SPARE"
.LASF1037:
	.string	"cbuf"
.LASF94:
	.string	"uint_t"
.LASF364:
	.string	"VDEV_STATE_DEGRADED"
.LASF547:
	.string	"vdev_fault_arg"
.LASF909:
	.string	"bpq_blk"
.LASF895:
	.string	"refcount"
.LASF408:
	.string	"vs_bytes"
.LASF1103:
	.string	"zio_priority_table"
.LASF917:
	.string	"bpl_bpshift"
.LASF934:
	.string	"spa_log_state_t"
.LASF731:
	.string	"ZIO_COMPRESS_FUNCTIONS"
.LASF46:
	.string	"_next"
.LASF797:
	.string	"smop_unload"
.LASF393:
	.string	"ZIO_TYPE_WRITE"
.LASF382:
	.string	"POOL_STATE_EXPORTED"
.LASF80:
	.string	"__writer_wakeup"
.LASF901:
	.string	"refcount_t"
.LASF897:
	.string	"rc_list"
.LASF978:
	.string	"zio_buf_alloc"
.LASF583:
	.string	"blk_prop"
.LASF536:
	.string	"vdev_dtl"
.LASF370:
	.string	"VDEV_AUX_NO_REPLICAS"
.LASF655:
	.string	"txg_node_t"
.LASF910:
	.string	"bpq_next"
.LASF535:
	.string	"vdev_psize"
.LASF579:
	.string	"zc_word"
.LASF825:
	.string	"tx_sync_lock"
.LASF1052:
	.string	"cbufsize"
.LASF509:
	.string	"vdev_guid"
.LASF907:
	.string	"bplist_phys_t"
.LASF615:
	.string	"DMU_OT_UNLINKED_SET"
.LASF751:
	.string	"io_private"
.LASF305:
	.string	"umem_cache_t"
.LASF884:
	.string	"ci_zbt"
.LASF76:
	.string	"__broadcast_seq"
.LASF51:
	.string	"timespec"
.LASF548:
	.string	"vdev_fault_mask"
.LASF1069:
	.string	"maxalloc"
.LASF1077:
	.string	"abuf"
.LASF1012:
	.string	"zio_claim"
.LASF456:
	.string	"spa_sync_bplist_obj"
.LASF148:
	.string	"_SC_2_FORT_RUN"
.LASF572:
	.string	"sav_count"
.LASF855:
	.string	"dp_root_dir_obj"
.LASF709:
	.string	"ZIO_CHECKSUM_LABEL"
.LASF421:
	.string	"SPA_LOAD_NONE"
.LASF231:
	.string	"_SC_ADVISORY_INFO"
.LASF447:
	.string	"spa_meta_objset"
.LASF860:
	.string	"dp_write_limit"
.LASF77:
	.string	"pthread_cond_t"
.LASF133:
	.string	"_SC_TIMER_MAX"
.LASF166:
	.string	"_SC_THREADS"
.LASF262:
	.string	"_SC_SYSTEM_DATABASE_R"
.LASF266:
	.string	"_SC_USER_GROUPS_R"
.LASF732:
	.string	"zio_t"
.LASF1026:
	.string	"zio_issue_async"
.LASF1044:
	.string	"zio_handle_io_failure"
.LASF793:
	.string	"zbookmark_t"
.LASF380:
	.string	"pool_state"
.LASF921:
	.string	"bpl_dbuf"
.LASF614:
	.string	"DMU_OT_MASTER_NODE"
.LASF1065:
	.string	"pdva"
.LASF821:
	.string	"metaslab_class"
.LASF501:
	.string	"spa_is_root"
.LASF215:
	.string	"_SC_UINT_MAX"
.LASF612:
	.string	"DMU_OT_PLAIN_FILE_CONTENTS"
.LASF415:
	.string	"vs_scrub_examined"
.LASF1088:
	.string	"zio_set_gang_verifier"
.LASF827:
	.string	"tx_open_txg"
.LASF876:
	.string	"dp_dirty_dirs"
.LASF808:
	.string	"sm_loaded"
.LASF325:
	.string	"kmutex_t"
.LASF1010:
	.string	"zio_write_allocate"
.LASF476:
	.string	"spa_root"
.LASF878:
	.string	"dp_config_rwlock"
.LASF356:
	.string	"boolean"
.LASF673:
	.string	"ZIO_STAGE_REWRITE_GANG_MEMBERS"
.LASF616:
	.string	"DMU_OT_ZVOL"
.LASF342:
	.string	"avl_root"
.LASF972:
	.string	"name"
.LASF651:
	.string	"tc_pad"
.LASF733:
	.string	"io_parent"
.LASF47:
	.string	"_sbuf"
.LASF99:
	.string	"_SC_CHILD_MAX"
.LASF1095:
	.string	"old_bp"
.LASF26:
	.string	"_IO_save_end"
.LASF353:
	.string	"nvl_flag"
.LASF1019:
	.string	"wbuf"
.LASF56:
	.string	"__next"
.LASF462:
	.string	"spa_scrub_inflight"
.LASF1002:
	.string	"zio_read"
.LASF361:
	.string	"VDEV_STATE_REMOVED"
.LASF277:
	.string	"_SC_V6_LP64_OFF64"
.LASF373:
	.string	"VDEV_AUX_BAD_LABEL"
.LASF101:
	.string	"_SC_NGROUPS_MAX"
.LASF1036:
	.string	"csize"
.LASF590:
	.string	"objset"
.LASF13:
	.string	"__time_t"
.LASF550:
	.string	"vdev_tmpoffline"
.LASF654:
	.string	"tn_member"
.LASF172:
	.string	"_SC_THREAD_DESTRUCTOR_ITERATIONS"
.LASF636:
	.string	"db_size"
.LASF977:
	.string	"__PRETTY_FUNCTION__"
.LASF470:
	.string	"spa_scrub_reopen"
.LASF581:
	.string	"blkptr"
.LASF755:
	.string	"io_vd"
.LASF340:
	.string	"avl_balance"
.LASF209:
	.string	"_SC_SSIZE_MAX"
.LASF955:
	.string	"vdev_op_probe"
.LASF933:
	.string	"SPA_LOG_GOOD"
.LASF1096:
	.string	"__func__"
.LASF163:
	.string	"_SC_PII_OSI_CLTS"
.LASF391:
	.string	"ZIO_TYPE_NULL"
.LASF1073:
	.string	"zio_dva_allocate"
.LASF1081:
	.string	"zio_vdev_io_reissue"
.LASF387:
	.string	"POOL_STATE_IO_FAILURE"
.LASF1097:
	.string	"zio_free_blk"
.LASF837:
	.string	"tx_timeout_cv"
.LASF287:
	.string	"_SC_LEVEL1_DCACHE_SIZE"
.LASF336:
	.string	"avl_node"
.LASF437:
	.string	"spa_sync_on"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF475:
	.string	"spa_async_tasks"
.LASF359:
	.string	"VDEV_STATE_CLOSED"
.LASF605:
	.string	"DMU_OT_DSL_DIR"
.LASF871:
	.string	"dp_scrub_start_time"
.LASF670:
	.string	"ZIO_STAGE_WRITE_COMPRESS"
.LASF273:
	.string	"_SC_STREAMS"
.LASF621:
	.string	"DMU_OT_ERROR_LOG"
.LASF433:
	.string	"spa_sync_pass"
.LASF498:
	.string	"spa_failmode"
.LASF128:
	.string	"_SC_PAGESIZE"
.LASF694:
	.string	"zt_bufsize"
.LASF178:
	.string	"_SC_THREAD_PRIORITY_SCHEDULING"
.LASF522:
	.string	"vdev_dtl_scrub"
.LASF630:
	.string	"DMU_OT_NEXT_CLONES"
.LASF618:
	.string	"DMU_OT_PLAIN_OTHER"
.LASF847:
	.string	"SCRUB_FUNC_CLEAN"
.LASF313:
	.string	"list_offset"
.LASF143:
	.string	"_SC_CHARCLASS_NAME_MAX"
.LASF671:
	.string	"ZIO_STAGE_CHECKSUM_GENERATE"
.LASF455:
	.string	"spa_syncing_txg"
.LASF11:
	.string	"__off64_t"
.LASF929:
	.string	"spa_config_lock_t"
.LASF1022:
	.string	"zio_wait"
.LASF549:
	.string	"vdev_fault_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF322:
	.string	"m_owner"
.LASF976:
	.string	"last_data_cache"
.LASF36:
	.string	"_offset"
.LASF902:
	.string	"bplist_phys"
.LASF898:
	.string	"rc_removed"
.LASF1062:
	.string	"zio_claim_gang_members"
.LASF834:
	.string	"tx_sync_done_cv"
.LASF707:
	.string	"ZIO_CHECKSUM_ON"
.LASF23:
	.string	"_IO_buf_end"
.LASF867:
	.string	"dp_scrub_max_txg"
.LASF781:
	.string	"io_children_notready"
.LASF1071:
	.string	"ndvas"
.LASF791:
	.string	"zb_level"
.LASF681:
	.string	"ZIO_STAGE_VDEV_IO_START"
.LASF440:
	.string	"spa_zio_intr_taskq"
.LASF1109:
	.string	"zio_io_fail_shift"
.LASF333:
	.string	"kmem_cache_t"
.LASF826:
	.string	"tx_suspend"
.LASF1080:
	.string	"zio_vdev_io_assess"
.LASF241:
	.string	"_SC_DEVICE_SPECIFIC_R"
.LASF413:
	.string	"vs_scrub_type"
.LASF896:
	.string	"rc_mtx"
.LASF800:
	.string	"smop_free"
.LASF1063:
	.string	"zio_write_allocate_gang_member_done"
.LASF1068:
	.string	"resid"
.LASF42:
	.string	"_mode"
.LASF344:
	.string	"avl_offset"
.LASF600:
	.string	"DMU_OT_SPACE_MAP_HEADER"
.LASF244:
	.string	"_SC_PIPE"
.LASF943:
	.string	"vc_offset_tree"
.LASF19:
	.string	"_IO_write_base"
.LASF405:
	.string	"vs_dspace"
.LASF644:
	.string	"dmu_object_type_info_t"
.LASF941:
	.string	"vq_lock"
.LASF794:
	.string	"space_map_ops_t"
.LASF184:
	.string	"_SC_PHYS_PAGES"
.LASF930:
	.string	"SPA_LOG_UNKNOWN"
.LASF429:
	.string	"spa_config"
.LASF578:
	.string	"zio_cksum"
.LASF784:
	.string	"io_lock"
.LASF710:
	.string	"ZIO_CHECKSUM_GANG_HEADER"
.LASF779:
	.string	"io_pipeline"
.LASF186:
	.string	"_SC_ATEXIT_MAX"
.LASF656:
	.string	"txg_list"
.LASF212:
	.string	"_SC_SHRT_MAX"
.LASF763:
	.string	"io_deadline_node"
.LASF1024:
	.string	"zio_nowait"
.LASF243:
	.string	"_SC_FIFO"
.LASF431:
	.string	"spa_config_txg"
.LASF842:
	.string	"tx_quiesce_thread"
.LASF739:
	.string	"io_ndvas"
.LASF265:
	.string	"_SC_USER_GROUPS"
.LASF945:
	.string	"vc_lock"
.LASF1085:
	.string	"zio_gang_checksum_generate"
.LASF680:
	.string	"ZIO_STAGE_READY"
.LASF634:
	.string	"db_object"
.LASF12:
	.string	"long int"
.LASF477:
	.string	"spa_uberblock_lock"
.LASF573:
	.string	"sav_sync"
.LASF280:
	.string	"_SC_TRACE"
.LASF91:
	.string	"B_FALSE"
.LASF912:
	.string	"bplist"
.LASF224:
	.string	"_SC_XBS5_ILP32_OFF32"
.LASF822:
	.string	"metaslab_group_t"
.LASF446:
	.string	"spa_freeze_txg"
.LASF669:
	.string	"ZIO_STAGE_ISSUE_ASYNC"
.LASF833:
	.string	"tx_sync_more_cv"
.LASF45:
	.string	"_IO_marker"
.LASF659:
	.string	"tl_head"
.LASF845:
	.string	"scrub_func"
.LASF270:
	.string	"_SC_2_PBS_MESSAGE"
.LASF468:
	.string	"spa_scrub_finished"
.LASF1092:
	.string	"allocs"
.LASF78:
	.string	"__nr_readers"
.LASF817:
	.string	"smo_objsize"
.LASF93:
	.string	"boolean_t"
.LASF230:
	.string	"_SC_XOPEN_REALTIME_THREADS"
.LASF1064:
	.string	"cdva"
.LASF253:
	.string	"_SC_SPIN_LOCKS"
.LASF436:
	.string	"spa_traverse_wanted"
.LASF961:
	.string	"vdev_op_leaf"
.LASF259:
	.string	"_SC_SPORADIC_SERVER"
.LASF700:
	.string	"zio_gbh"
.LASF983:
	.string	"bufsize"
.LASF788:
	.string	"zbookmark"
.LASF289:
	.string	"_SC_LEVEL1_DCACHE_LINESIZE"
.LASF111:
	.string	"_SC_PRIORITIZED_IO"
.LASF1105:
	.string	"zio_injection_enabled"
.LASF375:
	.string	"VDEV_AUX_VERSION_OLDER"
.LASF89:
	.string	"uint32_t"
.LASF97:
	.string	"hrtime_t"
.LASF560:
	.string	"vdev_checkremove"
.LASF543:
	.string	"vdev_nparity"
.LASF169:
	.string	"_SC_GETPW_R_SIZE_MAX"
.LASF844:
	.string	"tx_state_t"
.LASF304:
	.string	"vmem_t"
.LASF620:
	.string	"DMU_OT_ZAP_OTHER"
.LASF870:
	.string	"dp_scrub_isresilver"
.LASF188:
	.string	"_SC_XOPEN_VERSION"
.LASF136:
	.string	"_SC_BC_SCALE_MAX"
.LASF195:
	.string	"_SC_2_C_VERSION"
.LASF479:
	.string	"spa_last_open_failed"
.LASF757:
	.string	"io_failed_vds_count"
.LASF355:
	.string	"nvlist_t"
.LASF316:
	.string	"list_t"
.LASF390:
	.string	"zio_type"
.LASF1107:
	.string	"vdev_mirror_ops"
.LASF298:
	.string	"_SC_LEVEL4_CACHE_LINESIZE"
.LASF628:
	.string	"DMU_OT_FUID"
.LASF223:
	.string	"_SC_NL_TEXTMAX"
.LASF345:
	.string	"avl_numnodes"
.LASF3:
	.string	"long unsigned int"
.LASF639:
	.string	"arc_byteswap_func_t"
.LASF542:
	.string	"vdev_removed"
.LASF170:
	.string	"_SC_LOGIN_NAME_MAX"
.LASF999:
	.string	"zio_reset"
.LASF226:
	.string	"_SC_XBS5_LP64_OFF64"
.LASF258:
	.string	"_SC_SPAWN"
.LASF164:
	.string	"_SC_PII_OSI_M"
.LASF484:
	.string	"spa_errlist_last"
.LASF790:
	.string	"zb_object"
.LASF448:
	.string	"spa_vdev_txg_list"
.LASF735:
	.string	"io_spa"
.LASF267:
	.string	"_SC_2_PBS"
.LASF960:
	.string	"vdev_op_type"
.LASF227:
	.string	"_SC_XBS5_LPBIG_OFFBIG"
.LASF206:
	.string	"_SC_WORD_BIT"
.LASF807:
	.string	"sm_pad"
.LASF14:
	.string	"char"
.LASF268:
	.string	"_SC_2_PBS_ACCOUNTING"
.LASF624:
	.string	"DMU_OT_POOL_PROPS"
.LASF885:
	.string	"ci_name"
.LASF232:
	.string	"_SC_BARRIERS"
.LASF122:
	.string	"_SC_AIO_MAX"
.LASF194:
	.string	"_SC_2_CHAR_TERM"
.LASF64:
	.string	"__spins"
.LASF286:
	.string	"_SC_LEVEL1_ICACHE_LINESIZE"
.LASF466:
	.string	"spa_scrub_active"
.LASF362:
	.string	"VDEV_STATE_CANT_OPEN"
.LASF22:
	.string	"_IO_buf_base"
.LASF425:
	.string	"spa_load_state_t"
.LASF1009:
	.string	"zio_write_allocate_ready"
.LASF571:
	.string	"sav_vdevs"
.LASF62:
	.string	"__nusers"
.LASF1114:
	.string	"zio_buf_cache"
.LASF452:
	.string	"spa_spares"
.LASF193:
	.string	"_SC_XOPEN_SHM"
.LASF308:
	.string	"list_node"
.LASF192:
	.string	"_SC_XOPEN_ENH_I18N"
.LASF173:
	.string	"_SC_THREAD_KEYS_MAX"
.LASF386:
	.string	"POOL_STATE_UNINITIALIZED"
.LASF1116:
	.string	"zio_pipeline"
.LASF17:
	.string	"_IO_read_end"
.LASF881:
	.string	"zio_checksum_info"
.LASF523:
	.string	"vdev_ms_array"
.LASF959:
	.string	"vdev_op_state_change"
.LASF216:
	.string	"_SC_ULONG_MAX"
.LASF264:
	.string	"_SC_TYPED_MEMORY_OBJECTS"
.LASF263:
	.string	"_SC_TIMEOUTS"
.LASF997:
	.string	"__right"
.LASF190:
	.string	"_SC_XOPEN_UNIX"
.LASF44:
	.string	"_IO_FILE"
.LASF1001:
	.string	"zio_root"
.LASF1016:
	.string	"labels"
.LASF324:
	.string	"m_lock"
.LASF657:
	.string	"tl_lock"
.LASF292:
	.string	"_SC_LEVEL2_CACHE_LINESIZE"
.LASF95:
	.string	"ulong_t"
.LASF558:
	.string	"vdev_nowritecache"
.LASF1087:
	.string	"zio_checksum_verified"
.LASF1089:
	.string	"zio_execute"
.LASF329:
	.string	"rw_owner"
.LASF832:
	.string	"tx_quiesce_txg_waiting"
.LASF174:
	.string	"_SC_THREAD_STACK_MIN"
.LASF843:
	.string	"tx_timelimit_thread"
.LASF712:
	.string	"ZIO_CHECKSUM_FLETCHER_2"
.LASF713:
	.string	"ZIO_CHECKSUM_FLETCHER_4"
.LASF435:
	.string	"spa_inject_ref"
.LASF816:
	.string	"smo_object"
.LASF441:
	.string	"spa_dsl_pool"
.LASF524:
	.string	"vdev_ms_shift"
.LASF346:
	.string	"avl_size"
.LASF1093:
	.string	"zio_alloc_blk"
.LASF392:
	.string	"ZIO_TYPE_READ"
.LASF220:
	.string	"_SC_NL_MSGMAX"
.LASF622:
	.string	"DMU_OT_SPA_HISTORY"
.LASF1029:
	.string	"zio_add_failed_vdev"
.LASF722:
	.string	"ZIO_COMPRESS_GZIP_1"
.LASF723:
	.string	"ZIO_COMPRESS_GZIP_2"
.LASF724:
	.string	"ZIO_COMPRESS_GZIP_3"
.LASF213:
	.string	"_SC_SHRT_MIN"
.LASF726:
	.string	"ZIO_COMPRESS_GZIP_5"
.LASF727:
	.string	"ZIO_COMPRESS_GZIP_6"
.LASF728:
	.string	"ZIO_COMPRESS_GZIP_7"
.LASF729:
	.string	"ZIO_COMPRESS_GZIP_8"
.LASF730:
	.string	"ZIO_COMPRESS_GZIP_9"
.LASF597:
	.string	"DMU_OT_PACKED_NVLIST_SIZE"
.LASF290:
	.string	"_SC_LEVEL2_CACHE_SIZE"
.LASF567:
	.string	"spa_aux_vdev_t"
.LASF341:
	.string	"avl_tree"
.LASF529:
	.string	"vdev_dtl_list"
.LASF586:
	.string	"blk_fill"
.LASF191:
	.string	"_SC_XOPEN_CRYPT"
.LASF37:
	.string	"__pad1"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF1057:
	.string	"zio_read_gang_members"
.LASF288:
	.string	"_SC_LEVEL1_DCACHE_ASSOC"
.LASF952:
	.string	"vdev_state_change_func_t"
.LASF307:
	.string	"umem_cache"
.LASF418:
	.string	"vs_scrub_start"
.LASF830:
	.string	"tx_synced_txg"
.LASF818:
	.string	"smo_alloc"
.LASF714:
	.string	"ZIO_CHECKSUM_SHA256"
.LASF511:
	.string	"vdev_asize"
.LASF872:
	.string	"dp_scrub_cancel_lock"
.LASF1079:
	.string	"zio_should_retry"
.LASF587:
	.string	"blk_cksum"
.LASF123:
	.string	"_SC_AIO_PRIO_DELTA_MAX"
.LASF1013:
	.string	"zio_ioctl"
.LASF602:
	.string	"DMU_OT_INTENT_LOG"
.LASF1090:
	.string	"zio_io_should_fail"
.LASF229:
	.string	"_SC_XOPEN_REALTIME"
.LASF27:
	.string	"_markers"
.LASF48:
	.string	"_pos"
.LASF50:
	.string	"int64_t"
.LASF1094:
	.string	"new_bp"
.LASF765:
	.string	"io_delegate_list"
.LASF203:
	.string	"_SC_INT_MAX"
.LASF483:
	.string	"spa_errlist_lock"
.LASF963:
	.string	"zio_sync_pass"
.LASF975:
	.string	"last_cache"
.LASF1041:
	.string	"zio_vdev_retry_io"
.LASF760:
	.string	"io_deadline"
.LASF848:
	.string	"SCRUB_FUNC_NUMFUNCS"
.LASF987:
	.string	"gethrtime"
.LASF609:
	.string	"DMU_OT_DSL_DATASET"
.LASF721:
	.string	"ZIO_COMPRESS_EMPTY"
.LASF575:
	.string	"sav_npending"
.LASF1083:
	.string	"zio_vdev_io_bypass"
.LASF503:
	.string	"spa_log_state"
.LASF283:
	.string	"_SC_TRACE_LOG"
.LASF619:
	.string	"DMU_OT_UINT64_OTHER"
.LASF1038:
	.string	"gsize"
.LASF923:
	.string	"bplist_t"
.LASF1117:
	.string	"GNU C 4.4.3"
.LASF1007:
	.string	"ready"
.LASF561:
	.string	"vdev_forcefault"
.LASF318:
	.string	"double"
.LASF803:
	.string	"sm_space"
.LASF419:
	.string	"vs_scrub_end"
.LASF883:
	.string	"ci_correctable"
.LASF351:
	.string	"nvl_nvflag"
.LASF1110:
	.string	"zio_write_retry"
.LASF584:
	.string	"blk_pad"
.LASF1059:
	.string	"loff"
.LASF882:
	.string	"ci_func"
.LASF102:
	.string	"_SC_OPEN_MAX"
.LASF903:
	.string	"bpl_entries"
.LASF84:
	.string	"__shared"
.LASF158:
	.string	"_SC_UIO_MAXIOV"
.LASF388:
	.string	"POOL_STATE_UNAVAIL"
.LASF314:
	.string	"list_head"
.LASF1075:
	.string	"zio_dva_claim"
.LASF1050:
	.string	"zio_write_compress"
.LASF374:
	.string	"VDEV_AUX_VERSION_NEWER"
.LASF135:
	.string	"_SC_BC_DIM_MAX"
.LASF632:
	.string	"DMU_OT_NUMTYPES"
.LASF900:
	.string	"rc_removed_count"
.LASF982:
	.string	"data"
.LASF623:
	.string	"DMU_OT_SPA_HISTORY_OFFSETS"
.LASF938:
	.string	"vq_read_tree"
.LASF646:
	.string	"tx_cpu_t"
.LASF738:
	.string	"io_compress"
.LASF79:
	.string	"__readers_wakeup"
.LASF718:
	.string	"ZIO_COMPRESS_ON"
.LASF397:
	.string	"ZIO_TYPES"
.LASF720:
	.string	"ZIO_COMPRESS_LZJB"
.LASF736:
	.string	"io_bookmark"
.LASF85:
	.string	"__flags"
.LASF491:
	.string	"spa_pool_props_object"
.LASF689:
	.string	"ZIO_STAGE_DONE"
.LASF457:
	.string	"spa_sync_bplist"
.LASF776:
	.string	"io_retries"
.LASF458:
	.string	"spa_traverse_lock"
.LASF958:
	.string	"vdev_op_io_done"
.LASF201:
	.string	"_SC_CHAR_MAX"
.LASF301:
	.string	"mutex_t"
.LASF463:
	.string	"spa_scrub_maxinflight"
.LASF674:
	.string	"ZIO_STAGE_FREE_GANG_MEMBERS"
.LASF835:
	.string	"tx_quiesce_more_cv"
.LASF350:
	.string	"nvl_version"
.LASF481:
	.string	"spa_errlog_last"
.LASF472:
	.string	"spa_async_thread"
.LASF979:
	.string	"zio_data_buf_alloc"
.LASF152:
	.string	"_SC_PII_XTI"
.LASF521:
	.string	"vdev_dtl_map"
.LASF981:
	.string	"zio_data_buf_free"
.LASF799:
	.string	"smop_claim"
.LASF444:
	.string	"spa_first_txg"
.LASF162:
	.string	"_SC_PII_OSI_COTS"
.LASF648:
	.string	"tc_lock"
.LASF792:
	.string	"zb_blkid"
.LASF964:
	.string	"zp_defer_free"
.LASF551:
	.string	"vdev_detached"
.LASF604:
	.string	"DMU_OT_OBJSET"
.LASF153:
	.string	"_SC_PII_SOCKET"
.LASF278:
	.string	"_SC_V6_LPBIG_OFFBIG"
.LASF126:
	.string	"_SC_MQ_PRIO_MAX"
.LASF582:
	.string	"blk_dva"
.LASF515:
	.string	"vdev_spa"
.LASF518:
	.string	"vdev_parent"
.LASF306:
	.string	"vmem"
.LASF811:
	.string	"sm_ops"
.LASF892:
	.string	"ub_guid_sum"
.LASF411:
	.string	"vs_checksum_errors"
.LASF991:
	.string	"type"
.LASF281:
	.string	"_SC_TRACE_EVENT_FILTER"
.LASF402:
	.string	"vs_aux"
.LASF967:
	.string	"zio_sync_pass_t"
.LASF1054:
	.string	"zio_read_decompress"
.LASF473:
	.string	"spa_async_suspended"
.LASF846:
	.string	"SCRUB_FUNC_NONE"
.LASF683:
	.string	"ZIO_STAGE_VDEV_IO_ASSESS"
.LASF1008:
	.string	"zio_rewrite"
.LASF238:
	.string	"_SC_THREAD_CPUTIME"
.LASF52:
	.string	"tv_sec"
.LASF235:
	.string	"_SC_C_LANG_SUPPORT_R"
.LASF704:
	.string	"zio_gbh_phys_t"
.LASF7:
	.string	"long long unsigned int"
.LASF519:
	.string	"vdev_child"
.LASF954:
	.string	"vdev_op_close"
.LASF218:
	.string	"_SC_NL_ARGMAX"
.LASF32:
	.string	"_cur_column"
.LASF660:
	.string	"txg_list_t"
.LASF430:
	.string	"spa_config_syncing"
.LASF151:
	.string	"_SC_PII"
.LASF428:
	.string	"spa_avl"
.LASF114:
	.string	"_SC_MAPPED_FILES"
.LASF296:
	.string	"_SC_LEVEL4_CACHE_SIZE"
.LASF497:
	.string	"spa_zio_lock"
.LASF65:
	.string	"__list"
.LASF598:
	.string	"DMU_OT_BPLIST"
.LASF147:
	.string	"_SC_2_FORT_DEV"
.LASF510:
	.string	"vdev_guid_sum"
.LASF565:
	.string	"metaslab_t"
.LASF995:
	.string	"pipeline"
.LASF451:
	.string	"spa_dirty_list"
.LASF998:
	.string	"__buf"
.LASF150:
	.string	"_SC_2_LOCALEDEF"
.LASF1023:
	.string	"error"
.LASF284:
	.string	"_SC_LEVEL1_ICACHE_SIZE"
.LASF494:
	.string	"spa_config_list"
.LASF1004:
	.string	"checksum"
.LASF25:
	.string	"_IO_backup_base"
.LASF16:
	.string	"_IO_read_ptr"
.LASF200:
	.string	"_SC_CHAR_BIT"
.LASF937:
	.string	"vq_deadline_tree"
.LASF588:
	.string	"blkptr_t"
.LASF951:
	.string	"vdev_io_done_func_t"
.LASF780:
	.string	"io_orig_pipeline"
.LASF741:
	.string	"io_bp"
.LASF460:
	.string	"spa_uberblock"
.LASF453:
	.string	"spa_l2cache"
.LASF944:
	.string	"vc_lastused_tree"
.LASF942:
	.string	"vdev_cache_t"
.LASF703:
	.string	"zg_tail"
.LASF454:
	.string	"spa_config_object"
.LASF1030:
	.string	"oldcount"
.LASF443:
	.string	"spa_log_class"
.LASF546:
	.string	"vdev_physpath"
.LASF688:
	.string	"ZIO_STAGE_ASSESS"
.LASF988:
	.string	"zio_create"
.LASF204:
	.string	"_SC_INT_MIN"
.LASF1066:
	.string	"asize"
.LASF312:
	.string	"list_size"
.LASF556:
	.string	"vdev_not_present"
.LASF160:
	.string	"_SC_PII_INTERNET_STREAM"
.LASF177:
	.string	"_SC_THREAD_ATTR_STACKSIZE"
.LASF31:
	.string	"_old_offset"
.LASF132:
	.string	"_SC_SIGQUEUE_MAX"
.LASF716:
	.string	"zio_compress"
.LASF474:
	.string	"spa_async_cv"
.LASF667:
	.string	"ZIO_STAGE_WAIT_FOR_CHILDREN_READY"
.LASF242:
	.string	"_SC_FD_MGMT"
.LASF112:
	.string	"_SC_SYNCHRONIZED_IO"
.LASF480:
	.string	"spa_errlog_lock"
.LASF861:
	.string	"dp_lock"
.LASF652:
	.string	"txg_node"
.LASF740:
	.string	"io_txg"
.LASF422:
	.string	"SPA_LOAD_OPEN"
.LASF692:
	.string	"zt_data"
.LASF140:
	.string	"_SC_EXPR_NEST_MAX"
.LASF1056:
	.string	"zio_get_gang_header"
.LASF295:
	.string	"_SC_LEVEL3_CACHE_LINESIZE"
.LASF6:
	.string	"long long int"
.LASF570:
	.string	"sav_config"
.LASF702:
	.string	"zg_filler"
.LASF461:
	.string	"spa_scrub_lock"
.LASF1101:
	.string	"dmu_ot"
.LASF30:
	.string	"_flags2"
.LASF969:
	.string	"data_alloc_arena"
.LASF820:
	.string	"metaslab_class_t"
.LASF679:
	.string	"ZIO_STAGE_GANG_CHECKSUM_GENERATE"
.LASF893:
	.string	"ub_timestamp"
.LASF850:
	.string	"dp_spa"
.LASF118:
	.string	"_SC_MESSAGE_PASSING"
.LASF935:
	.string	"zio_aio_ctx"
.LASF810:
	.string	"sm_load_cv"
.LASF517:
	.string	"vdev_top"
.LASF255:
	.string	"_SC_REGEX_VERSION"
.LASF785:
	.string	"io_cv"
.LASF815:
	.string	"space_map_obj"
.LASF469:
	.string	"spa_scrub_started"
.LASF53:
	.string	"tv_nsec"
.LASF764:
	.string	"io_vdev_tree"
.LASF545:
	.string	"vdev_devid"
.LASF246:
	.string	"_SC_FILE_LOCKING"
.LASF495:
	.string	"spa_zio_list"
.LASF320:
	.string	"kthread"
.LASF1046:
	.string	"zio_assess"
.LASF185:
	.string	"_SC_AVPHYS_PAGES"
.LASF1021:
	.string	"zio_destroy"
.LASF207:
	.string	"_SC_MB_LEN_MAX"
.LASF812:
	.string	"sm_ppd"
.LASF1111:
	.string	"zio_taskq"
.LASF155:
	.string	"_SC_PII_OSI"
.LASF643:
	.string	"ot_name"
.LASF98:
	.string	"_SC_ARG_MAX"
.LASF594:
	.string	"DMU_OT_OBJECT_DIRECTORY"
.LASF116:
	.string	"_SC_MEMLOCK_RANGE"
.LASF879:
	.string	"dsl_pool_t"
.LASF120:
	.string	"_SC_SHARED_MEMORY_OBJECTS"
.LASF249:
	.string	"_SC_MULTI_PROCESS"
.LASF1035:
	.string	"zio_read_init"
.LASF202:
	.string	"_SC_CHAR_MIN"
.LASF756:
	.string	"io_failed_vds"
.LASF1047:
	.string	"zio_done"
.LASF423:
	.string	"SPA_LOAD_IMPORT"
.LASF228:
	.string	"_SC_XOPEN_LEGACY"
.LASF271:
	.string	"_SC_2_PBS_TRACK"
.LASF467:
	.string	"spa_scrub_type"
.LASF179:
	.string	"_SC_THREAD_PRIO_INHERIT"
.LASF294:
	.string	"_SC_LEVEL3_CACHE_ASSOC"
.LASF70:
	.string	"__futex"
.LASF880:
	.string	"zio_checksum_t"
.LASF1025:
	.string	"zio_interrupt"
.LASF589:
	.string	"objset_t"
.LASF744:
	.string	"io_sibling_prev"
.LASF690:
	.string	"zio_transform_t"
.LASF279:
	.string	"_SC_HOST_NAME_MAX"
.LASF770:
	.string	"io_stage"
.LASF889:
	.string	"ub_magic"
.LASF562:
	.string	"vdev_is_failing"
.LASF920:
	.string	"bpl_phys"
.LASF138:
	.string	"_SC_COLL_WEIGHTS_MAX"
.LASF248:
	.string	"_SC_MONOTONIC_CLOCK"
.LASF664:
	.string	"dkc_flag"
.LASF339:
	.string	"avl_child_index"
.LASF507:
	.string	"vdev"
.LASF100:
	.string	"_SC_CLK_TCK"
.LASF777:
	.string	"io_error"
.LASF222:
	.string	"_SC_NL_SETMAX"
.LASF766:
	.string	"io_delegate_next"
.LASF0:
	.string	"unsigned int"
.LASF894:
	.string	"ub_rootbp"
.LASF858:
	.string	"dp_read_overhead"
.LASF985:
	.string	"zio_pop_transform"
.LASF599:
	.string	"DMU_OT_BPLIST_HDR"
.LASF315:
	.string	"list_node_t"
.LASF310:
	.string	"list_prev"
.LASF383:
	.string	"POOL_STATE_DESTROYED"
.LASF1112:
	.string	"zio_resume_threads"
.LASF516:
	.string	"vdev_tsd"
.LASF819:
	.string	"space_map_obj_t"
.LASF276:
	.string	"_SC_V6_ILP32_OFFBIG"
.LASF1058:
	.string	"gbufsize"
.LASF761:
	.string	"io_timestamp"
.LASF404:
	.string	"vs_space"
.LASF665:
	.string	"zio_stage"
.LASF699:
	.string	"zio_block_tail_t"
.LASF5:
	.string	"short int"
.LASF502:
	.string	"spa_minref"
.LASF1049:
	.string	"prev"
.LASF33:
	.string	"_vtable_offset"
.LASF506:
	.string	"vdev_t"
.LASF299:
	.string	"_SC_IPV6"
.LASF321:
	.string	"kmutex"
.LASF1017:
	.string	"zio_read_phys"
.LASF254:
	.string	"_SC_REGEXP"
.LASF772:
	.string	"io_stalled"
.LASF869:
	.string	"dp_scrub_pausing"
.LASF449:
	.string	"spa_root_vdev"
.LASF715:
	.string	"ZIO_CHECKSUM_FUNCTIONS"
.LASF859:
	.string	"dp_throughput"
.LASF553:
	.string	"vdev_isl2cache"
.LASF993:
	.string	"flags"
.LASF357:
	.string	"vdev_state"
.LASF9:
	.string	"__quad_t"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
