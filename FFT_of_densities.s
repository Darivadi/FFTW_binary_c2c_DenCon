	.file	"FFT_of_densities.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"grep -v \"#\" %s | grep -v \"^$\" | awk -F\"=\" '{print $2}' > %s.dump"
	.text
	.p2align 4,,15
	.globl	conf2dump
	.type	conf2dump, @function
conf2dump:
.LFB42:
	.cfi_startproc
	subq	$1016, %rsp
	.cfi_def_cfa_offset 1024
	movq	%rdi, %r8
	movq	%rdi, %r9
	movq	%fs:40, %rax
	movq	%rax, 1000(%rsp)
	xorl	%eax, %eax
	movl	$1000, %edx
	movl	$.LC0, %ecx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	__sprintf_chk
	movq	%rsp, %rdi
	call	system
	xorl	%eax, %eax
	movq	1000(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L5
	addq	$1016, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE42:
	.size	conf2dump, .-conf2dump
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"r"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"  * The file '%s' doesn't exist!\n"
	.section	.rodata.str1.1
.LC3:
	.string	"%s.dump"
.LC4:
	.string	"%d"
.LC5:
	.string	"%lf"
.LC6:
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"  * The file '%s' has been loaded!\n"
	.section	.rodata.str1.1
.LC10:
	.string	"File to read is %s "
.LC11:
	.string	"with %d cells per axis\n"
.LC12:
	.string	"rm -rf %s.dump"
	.text
	.p2align 4,,15
	.globl	read_parameters
	.type	read_parameters, @function
read_parameters:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$.LC1, %esi
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$2024, %rsp
	.cfi_def_cfa_offset 2048
	movq	%fs:40, %rax
	movq	%rax, 2008(%rsp)
	xorl	%eax, %eax
	call	fopen
	testq	%rax, %rax
	je	.L11
	movq	%rax, %rdi
	call	fclose
	leaq	1008(%rsp), %rdi
	movq	%rbp, %r9
	movq	%rbp, %r8
	movl	$.LC0, %ecx
	movl	$1000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__sprintf_chk
	leaq	1008(%rsp), %rdi
	call	system
	leaq	1008(%rsp), %rdi
	movq	%rbp, %r8
	movl	$.LC3, %ecx
	movl	$1000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__sprintf_chk
	leaq	1008(%rsp), %rdi
	movl	$.LC1, %esi
	call	fopen
	movl	$GV+2016, %edx
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$.LC4, %esi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+2008, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV, %edx
	movl	$.LC6, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+2128, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+2136, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+2104, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+2088, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movsd	.LC8(%rip), %xmm0
	movq	%rbx, %rdi
	movsd	GV+2104(%rip), %xmm1
	movsd	.LC7(%rip), %xmm2
	addsd	%xmm0, %xmm1
	movsd	%xmm2, GV+2096(%rip)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+2112(%rip)
	call	fclose
	movq	%rbp, %rdx
	movl	$.LC9, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$GV, %edx
	movl	$.LC10, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$GV+1000, %edx
	movl	$.LC10, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	GV+2016(%rip), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	%rbp, %r8
	movl	$.LC12, %ecx
	movl	$1000, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	xorl	%eax, %eax
	call	__sprintf_chk
	movq	%rsp, %rdi
	call	system
	xorl	%eax, %eax
.L8:
	movq	2008(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L12
	addq	$2024, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	movq	%rbp, %rdx
	movl	$.LC2, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	$1, %eax
	jmp	.L8
.L12:
	call	__stack_chk_fail
	.cfi_endproc
.LFE43:
	.size	read_parameters, .-read_parameters
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"%d%*[,] %d%*[,] %d%*[,] %d%*[,] %lf%*[,]"
	.section	.rodata.str1.1
.LC14:
	.string	"%d %lf\n"
	.text
	.p2align 4,,15
	.globl	read_data
	.type	read_data, @function
read_data:
.LFB44:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$1801439851, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	movl	$.LC1, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	subq	$1040, %rsp
	.cfi_def_cfa_offset 1088
	movq	%fs:40, %rax
	movq	%rax, 1032(%rsp)
	xorl	%eax, %eax
	call	fopen
	leaq	32(%rsp), %rdi
	movq	%rax, %rdx
	movl	$1000, %esi
	movq	%rax, %rbp
	call	fgets
	xorl	%ecx, %ecx
	cmpq	$0, GV+2024(%rip)
	jne	.L17
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	1(%rbx), %rcx
	cmpq	%rcx, GV+2024(%rip)
	jbe	.L16
.L21:
	movq	%rcx, %rbx
.L17:
	leaq	28(%rsp), %r9
	leaq	(%r12,%rcx,8), %r14
	xorl	%eax, %eax
	movl	$.LC13, %esi
	movq	%rbp, %rdi
	movq	%r9, %rdx
	movq	%r14, (%rsp)
	movq	%r9, %r8
	movq	%r9, %rcx
	call	__isoc99_fscanf
	movl	%ebx, %eax
	imull	%r13d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	jne	.L15
	movsd	(%r14), %xmm0
	movl	%ebx, %edx
	movl	$.LC14, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	leaq	1(%rbx), %rcx
	cmpq	%rcx, GV+2024(%rip)
	ja	.L21
.L16:
	movq	%rbp, %rdi
	call	fclose
	xorl	%eax, %eax
	movq	1032(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L22
	addq	$1040, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE44:
	.size	read_data, .-read_data
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"-----------------------------------------------"
	.section	.rodata.str1.1
.LC16:
	.string	"Cosmological parameters:"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"OmegaM0=%lf OmegaL0=%lf redshift=%lf HubbleParam=%lf H0=%lf\n"
	.section	.rodata.str1.1
.LC18:
	.string	"Simulation parameters:"
.LC19:
	.string	"L=%lf\n"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"Reading m=%d x=%lf y=%lf z=%lf DenCon=%lf\n"
	.text
	.p2align 4,,15
	.globl	read_binary
	.type	read_binary, @function
read_binary:
.LFB45:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	movl	$GV, %edi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	$.LC1, %esi
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	call	fopen
	movl	$1, %edx
	movq	%rax, %r12
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2088, %edi
	call	fread
	movsd	.LC8(%rip), %xmm0
	movl	$.LC15, %edi
	movsd	GV+2104(%rip), %xmm1
	movsd	.LC7(%rip), %xmm5
	addsd	%xmm0, %xmm1
	movsd	%xmm5, GV+2096(%rip)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+2112(%rip)
	call	puts
	movl	$.LC16, %edi
	call	puts
	movsd	GV+2096(%rip), %xmm4
	movl	$.LC17, %esi
	movsd	GV+2088(%rip), %xmm3
	movl	$1, %edi
	movsd	GV+2104(%rip), %xmm2
	movl	$5, %eax
	movsd	GV+2136(%rip), %xmm1
	movsd	GV+2128(%rip), %xmm0
	call	__printf_chk
	movl	$.LC15, %edi
	call	puts
	movl	$.LC18, %edi
	call	puts
	movsd	GV+2008(%rip), %xmm0
	movl	$.LC19, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC15, %edi
	call	puts
	movq	%rbx, %rdi
	call	free
	cmpq	$0, GV+2024(%rip)
	je	.L26
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movl	$1801439851, %r14d
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L25:
	leaq	1(%rbx), %rbp
	cmpq	%rbp, GV+2024(%rip)
	jbe	.L26
.L30:
	movq	%rbp, %rbx
.L27:
	leaq	0(%r13,%rbp,8), %rbp
	movq	%r12, %rcx
	movl	$3, %edx
	movl	$8, %esi
	movq	%rsp, %rdi
	call	fread
	movl	$1, %edx
	movq	%r12, %rcx
	movl	$8, %esi
	movq	%rbp, %rdi
	call	fread
	movl	%ebx, %eax
	imull	%r14d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	jne	.L25
	movsd	0(%rbp), %xmm3
	movl	%ebx, %edx
	movl	$.LC20, %esi
	movsd	16(%rsp), %xmm2
	movl	$1, %edi
	movsd	8(%rsp), %xmm1
	movl	$4, %eax
	movsd	(%rsp), %xmm0
	leaq	1(%rbx), %rbp
	call	__printf_chk
	cmpq	%rbp, GV+2024(%rip)
	ja	.L30
.L26:
	movq	%r12, %rdi
	call	fclose
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	read_binary, .-read_binary
	.section	.rodata.str1.1
.LC21:
	.string	"Reading m=%d DenCon=%lf\n"
	.text
	.p2align 4,,15
	.globl	read_binary_super_CIC
	.type	read_binary_super_CIC, @function
read_binary_super_CIC:
.LFB46:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$.LC1, %esi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	movl	$GV, %edi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	$1441151881, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	fopen
	movl	$1, %edx
	movq	%rax, %rbp
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2088, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movl	$GV+2016, %edi
	call	fread
	leaq	4(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2000, %edi
	call	fread
	leaq	8(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2144, %edi
	call	fread
	leaq	8(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	call	fread
	leaq	8(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	call	fread
	leaq	3(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$1, %esi
	call	fread
	leaq	3(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$1, %esi
	call	fread
	leaq	3(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %esi
	movl	$1, %edx
	call	fread
	movsd	.LC8(%rip), %xmm0
	movl	GV+2016(%rip), %eax
	movsd	GV+2104(%rip), %xmm1
	movl	$.LC15, %edi
	movsd	.LC7(%rip), %xmm5
	addsd	%xmm0, %xmm1
	movl	%eax, %edx
	imull	%eax, %edx
	movsd	%xmm5, GV+2096(%rip)
	divsd	%xmm1, %xmm0
	imull	%edx, %eax
	cltq
	movq	%rax, GV+2024(%rip)
	movsd	%xmm0, GV+2112(%rip)
	call	puts
	movl	$.LC16, %edi
	call	puts
	movsd	GV+2096(%rip), %xmm4
	movl	$.LC17, %esi
	movsd	GV+2088(%rip), %xmm3
	movl	$1, %edi
	movsd	GV+2104(%rip), %xmm2
	movl	$5, %eax
	movsd	GV+2136(%rip), %xmm1
	movsd	GV+2128(%rip), %xmm0
	call	__printf_chk
	movl	$.LC15, %edi
	call	puts
	movl	$.LC18, %edi
	call	puts
	movsd	GV+2008(%rip), %xmm0
	movl	$.LC19, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC15, %edi
	call	puts
	xorl	%edx, %edx
	cmpq	$0, GV+2024(%rip)
	jne	.L36
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L33:
	leaq	1(%rbx), %rdx
	cmpq	%rdx, GV+2024(%rip)
	jbe	.L34
.L39:
	movq	%rdx, %rbx
.L36:
	leaq	0(%r13,%rdx,8), %r14
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movq	%r14, %rdi
	call	fread
	movl	%ebx, %eax
	imull	%r12d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$25, %edx
	subl	%eax, %edx
	imull	$100000000, %edx, %edx
	cmpl	%edx, %ebx
	jne	.L33
	movsd	(%r14), %xmm0
	movl	%ebx, %edx
	movl	$.LC21, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	leaq	1(%rbx), %rdx
	cmpq	%rdx, GV+2024(%rip)
	ja	.L39
.L34:
	movq	%rbp, %rdi
	call	fclose
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	read_binary_super_CIC, .-read_binary_super_CIC
	.p2align 4,,15
	.globl	mod
	.type	mod, @function
mod:
.LFB47:
	.cfi_startproc
	movl	%edi, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	jns	.L41
	.p2align 4,,10
	.p2align 3
.L42:
	addl	%esi, %edx
	js	.L42
.L41:
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE47:
	.size	mod, .-mod
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Input of contrast density sorted in C-order (row-major order)!"
	.align 8
.LC23:
	.string	"-----------------------------------------------------------------"
	.align 8
.LC24:
	.string	"FFT: density contrast r2k finished!"
	.section	.rodata.str1.1
.LC26:
	.string	"Destroying plans!"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"--------------------------------------------------"
	.section	.rodata.str1.1
.LC28:
	.string	"plan_r2k destroyed!"
.LC29:
	.string	"Freeing up memory!"
.LC32:
	.string	"k vectors computed!"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"------------------------------------------------"
	.align 8
.LC34:
	.string	"Computing density contrast in k space with CIC weight-function!"
	.align 8
.LC35:
	.string	"Density contrast in k-space with CIC weight fn ready!!"
	.section	.rodata.str1.1
.LC36:
	.string	"FFT_transform code finished!"
	.text
	.p2align 4,,15
	.globl	transform
	.type	transform, @function
transform:
.LFB48:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	GV+2024(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movq	GV+2024(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movl	GV+2016(%rip), %edi
	movq	%rbp, %rcx
	movl	$64, (%rsp)
	movl	$-1, %r9d
	movq	%rax, %r8
	movq	%rax, %r12
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rbx
	movq	GV+2024(%rip), %rax
	xorl	%edx, %edx
	movl	$1, %esi
	testq	%rax, %rax
	leaq	1(%rax), %rcx
	jne	.L82
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L90:
	movq	%rsi, %rdx
	movq	%rax, %rsi
.L82:
	movq	%rdx, %rax
	movsd	0(%r13,%rdx,8), %xmm0
	salq	$4, %rax
	addq	%rbp, %rax
	movsd	%xmm0, (%rax)
	movq	$0, 8(%rax)
	leaq	1(%rsi), %rax
	cmpq	%rcx, %rax
	jne	.L90
.L47:
	movq	%r13, %rdi
	call	free
	movl	$.LC22, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_execute
	movl	$.LC24, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movq	GV+2024(%rip), %rcx
	testq	%rcx, %rcx
	je	.L46
	movsd	GV+2056(%rip), %xmm0
	movq	gp(%rip), %rdi
	addq	$1, %rcx
	movl	$1, %r9d
	xorl	%edx, %edx
	mulsd	GV+2072(%rip), %xmm0
	jmp	.L51
.L91:
	movq	%r9, %rdx
	movq	%rax, %r9
.L51:
	leaq	0(,%rdx,8), %rax
	movq	%rdx, %rsi
	salq	$6, %rsi
	subq	%rax, %rsi
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdi, %rsi
	addq	%r12, %rax
	movsd	(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	movsd	8(%rax), %xmm1
	leaq	1(%r9), %rax
	mulsd	%xmm0, %xmm1
	cmpq	%rcx, %rax
	movsd	%xmm1, 8(%rsi)
	jne	.L91
.L46:
	movl	$.LC26, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_destroy_plan
	movl	$.LC28, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC29, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	movq	%rbp, %rdi
	call	fftw_free
	movq	%r12, %rdi
	call	fftw_free
	movl	GV+2016(%rip), %ebx
	testl	%ebx, %ebx
	jle	.L50
	movl	%ebx, %eax
	movsd	GV+2040(%rip), %xmm6
	imull	%ebx, %eax
	movl	%ebx, %r15d
	movq	$0, 136(%rsp)
	movapd	%xmm6, %xmm7
	movsd	%xmm6, 8(%rsp)
	movsd	.LC31(%rip), %xmm6
	sarl	%r15d
	cltq
	movsd	GV+2008(%rip), %xmm5
	leaq	0(,%rax,8), %rdx
	mulsd	%xmm7, %xmm6
	salq	$6, %rax
	movq	%rax, 152(%rsp)
	movq	gp(%rip), %rax
	subq	%rdx, 152(%rsp)
	movsd	.LC30(%rip), %xmm4
	movq	%rax, 144(%rsp)
	mulsd	%xmm6, %xmm6
	movslq	%ebx, %rax
	leaq	0(,%rax,8), %rdx
	salq	$6, %rax
	movq	%rax, 128(%rsp)
	subq	%rdx, 128(%rsp)
	movsd	%xmm6, 96(%rsp)
.L52:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	movq	$0, 112(%rsp)
	movl	%eax, %r12d
	subl	%ebx, %eax
	movq	%rcx, 120(%rsp)
	movl	%eax, 108(%rsp)
	.p2align 4,,10
	.p2align 3
.L62:
	movq	112(%rsp), %rax
	movq	120(%rsp), %r13
	xorl	%r14d, %r14d
	movl	%eax, %ebp
	subl	%ebx, %eax
	movl	%eax, 80(%rsp)
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L93:
	cvtsi2sd	%r12d, %xmm0
	cmpl	%r15d, %ebp
	mulsd	%xmm4, %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 16(%r13)
	jg	.L55
.L94:
	cvtsi2sd	%ebp, %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm5, %xmm3
	movsd	%xmm3, 24(%r13)
.L56:
	cmpl	%r15d, %esi
	jle	.L89
	movl	%r14d, %esi
	subl	%ebx, %esi
.L89:
	cvtsi2sd	%esi, %xmm2
	mulsd	8(%rsp), %xmm0
	addq	$1, %r14
	movsd	%xmm4, 64(%rsp)
	addq	$56, %r13
	movsd	%xmm5, 56(%rsp)
	movsd	%xmm3, 16(%rsp)
	mulsd	.LC31(%rip), %xmm0
	mulsd	%xmm4, %xmm2
	divsd	%xmm5, %xmm2
	movsd	%xmm2, -24(%r13)
	movsd	%xmm2, 32(%rsp)
	call	sin
	movsd	16(%rsp), %xmm3
	movsd	%xmm0, 48(%rsp)
	mulsd	8(%rsp), %xmm3
	movsd	.LC31(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	call	sin
	movsd	32(%rsp), %xmm2
	movsd	%xmm0, 16(%rsp)
	mulsd	8(%rsp), %xmm2
	movsd	.LC31(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	call	sin
	movsd	48(%rsp), %xmm1
	movsd	16(%rsp), %xmm3
	mulsd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	movsd	56(%rsp), %xmm5
	movsd	64(%rsp), %xmm4
	addsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	divsd	96(%rsp), %xmm1
	movsd	%xmm1, -8(%r13)
	cmpl	%r14d, %ebx
	jle	.L92
.L61:
	cmpl	%r15d, %r12d
	movl	%r14d, %esi
	jle	.L93
	cvtsi2sd	108(%rsp), %xmm0
	mulsd	%xmm4, %xmm0
	cmpl	%r15d, %ebp
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 16(%r13)
	jle	.L94
.L55:
	cvtsi2sd	80(%rsp), %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm5, %xmm3
	movsd	%xmm3, 24(%r13)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L92:
	addq	$1, 112(%rsp)
	movq	128(%rsp), %rax
	addq	%rax, 120(%rsp)
	cmpl	112(%rsp), %ebx
	jg	.L62
	addq	$1, 136(%rsp)
	movq	152(%rsp), %rax
	addq	%rax, 144(%rsp)
	cmpl	136(%rsp), %ebx
	jg	.L52
.L50:
	movl	$.LC32, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	movl	$.LC34, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	cmpq	$0, GV+2024(%rip)
	je	.L73
	movq	gp(%rip), %r13
	movl	$1, %r12d
	xorl	%ebp, %ebp
	movsd	.LC37(%rip), %xmm4
	jmp	.L74
.L96:
	movapd	%xmm5, %xmm7
	cvtsi2sd	GV+2016(%rip), %xmm0
	movsd	%xmm6, 96(%rsp)
	addsd	%xmm0, %xmm0
	movsd	%xmm2, 64(%rsp)
	mulsd	GV+2008(%rip), %xmm7
	movsd	%xmm1, 56(%rsp)
	movapd	%xmm4, 80(%rsp)
	movsd	%xmm3, 32(%rsp)
	movsd	%xmm5, 48(%rsp)
	divsd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	movsd	%xmm7, 16(%rsp)
	call	sin
	movsd	16(%rsp), %xmm7
	movsd	48(%rsp), %xmm5
	divsd	%xmm7, %xmm0
	movapd	80(%rsp), %xmm4
	movsd	32(%rsp), %xmm3
	movsd	56(%rsp), %xmm1
	movsd	64(%rsp), %xmm2
	mulsd	%xmm0, %xmm0
	movsd	96(%rsp), %xmm6
.L68:
	mulsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 40(%rbx)
	andpd	%xmm4, %xmm0
	ucomisd	%xmm2, %xmm0
	ja	.L95
	cmpq	%r12, GV+2024(%rip)
	movq	$0, (%rbx)
	leaq	1(%r12), %rax
	movq	$0, 8(%rbx)
	jbe	.L73
.L97:
	movq	%r12, %rbp
	movq	%rax, %r12
.L74:
	leaq	0(,%rbp,8), %rax
	salq	$6, %rbp
	movsd	GV+2048(%rip), %xmm2
	subq	%rax, %rbp
	movsd	.LC8(%rip), %xmm3
	leaq	0(%r13,%rbp), %rbx
	movsd	16(%rbx), %xmm7
	movapd	%xmm7, %xmm0
	movsd	%xmm7, 8(%rsp)
	andpd	%xmm4, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L64
	movsd	GV+2008(%rip), %xmm1
	cvtsi2sd	GV+2016(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movapd	%xmm4, 32(%rsp)
	mulsd	%xmm7, %xmm1
	movsd	%xmm2, 48(%rsp)
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rsp)
	call	sin
	movsd	16(%rsp), %xmm1
	movapd	%xmm0, %xmm3
	movsd	48(%rsp), %xmm2
	movapd	32(%rsp), %xmm4
	divsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm3
.L64:
	movsd	24(%rbx), %xmm6
	movsd	.LC8(%rip), %xmm1
	movapd	%xmm6, %xmm0
	andpd	%xmm4, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L66
	movapd	%xmm6, %xmm5
	cvtsi2sd	GV+2016(%rip), %xmm0
	movsd	%xmm2, 56(%rsp)
	addsd	%xmm0, %xmm0
	movsd	%xmm3, 32(%rsp)
	mulsd	GV+2008(%rip), %xmm5
	movsd	%xmm6, 48(%rsp)
	movapd	%xmm4, 64(%rsp)
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 16(%rsp)
	call	sin
	movsd	16(%rsp), %xmm5
	movapd	%xmm0, %xmm1
	movsd	48(%rsp), %xmm6
	movsd	32(%rsp), %xmm3
	divsd	%xmm5, %xmm1
	movapd	64(%rsp), %xmm4
	movsd	56(%rsp), %xmm2
	mulsd	%xmm1, %xmm1
.L66:
	movsd	32(%rbx), %xmm5
	movapd	%xmm5, %xmm0
	andpd	%xmm4, %xmm0
	ucomisd	%xmm2, %xmm0
	ja	.L96
	movsd	.LC8(%rip), %xmm0
	jmp	.L68
.L95:
	movsd	(%rbx), %xmm0
	unpcklpd	%xmm1, %xmm1
	movhpd	8(%rbx), %xmm0
	movsd	8(%rsp), %xmm7
	mulsd	%xmm6, %xmm6
	mulsd	%xmm5, %xmm5
	movapd	%xmm4, 16(%rsp)
	divpd	%xmm1, %xmm0
	movlpd	%xmm0, (%rbx)
	movhpd	%xmm0, 8(%rbx)
	movsd	.LC38(%rip), %xmm0
	movsd	GV+2040(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm7, %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm6, %xmm1
	addsd	%xmm5, %xmm1
	mulsd	%xmm1, %xmm0
	call	exp
	movsd	.LC8(%rip), %xmm1
	movq	gp(%rip), %r13
	movapd	16(%rsp), %xmm4
	leaq	1(%r12), %rax
	divsd	%xmm0, %xmm1
	addq	%r13, %rbp
	cmpq	%r12, GV+2024(%rip)
	movsd	0(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	8(%rbp), %xmm1
	movsd	%xmm0, 0(%rbp)
	movsd	%xmm1, 8(%rbp)
	ja	.L97
.L73:
	movl	$.LC35, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movl	$.LC36, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	transform, .-transform
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"Computing potential in k-space"
	.align 8
.LC40:
	.string	"-----------------------------------------"
	.section	.rodata.str1.1
.LC43:
	.string	"Potential in k-space saved!"
.LC44:
	.string	"FFT potential k2r finished!"
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"---------------------------------------"
	.align 8
.LC46:
	.string	"Grid-sorted potential in r space saved!"
	.section	.rodata.str1.1
.LC47:
	.string	"FFT_potential code finished!"
.LC48:
	.string	"----------------------------"
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"Proceeding to the writing of binary file with potential field"
	.section	.rodata.str1.1
.LC50:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"./../../Processed_data/Potential.bin"
	.text
	.p2align 4,,15
	.globl	potential
	.type	potential, @function
potential:
.LFB49:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$.LC39, %edi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	puts
	movl	$.LC40, %edi
	call	puts
	movq	GV+2024(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movq	GV+2024(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movl	GV+2016(%rip), %edi
	movq	%rbp, %rcx
	movl	$64, (%rsp)
	movl	$1, %r9d
	movq	%rax, %r8
	movq	%rax, %r13
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movsd	GV+2096(%rip), %xmm2
	movl	GV+2016(%rip), %ecx
	movq	%rax, %rbx
	mulsd	%xmm2, %xmm2
	testl	%ecx, %ecx
	mulsd	.LC41(%rip), %xmm2
	mulsd	GV+2128(%rip), %xmm2
	divsd	GV+2112(%rip), %xmm2
	jle	.L99
	movq	gp(%rip), %rdi
	xorl	%r12d, %r12d
	movsd	.LC42(%rip), %xmm3
.L100:
	movl	%ecx, %r11d
	xorl	%r10d, %r10d
	imull	%r12d, %r11d
	.p2align 4,,10
	.p2align 3
.L107:
	leal	(%r11,%r10), %eax
	xorl	%edx, %edx
	imull	%ecx, %eax
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L124:
	movapd	%xmm3, %xmm4
	salq	$4, %rsi
	movsd	(%r8), %xmm1
	addq	%rbp, %rsi
	divsd	%xmm0, %xmm4
	addl	$1, %edx
	cmpl	%ecx, %edx
	movapd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	mulsd	8(%r8), %xmm0
	movsd	%xmm0, 8(%rsi)
	jge	.L123
.L106:
	leal	(%rax,%rdx), %esi
	movslq	%esi, %rsi
	leaq	0(,%rsi,8), %r9
	movq	%rsi, %r8
	salq	$6, %r8
	subq	%r9, %r8
	addq	%rdi, %r8
	movsd	48(%r8), %xmm0
	ucomisd	GV+2048(%rip), %xmm0
	ja	.L124
	salq	$4, %rsi
	addl	$1, %edx
	addq	%rbp, %rsi
	cmpl	%ecx, %edx
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	jl	.L106
.L123:
	addl	$1, %r10d
	cmpl	%ecx, %r10d
	jl	.L107
	addl	$1, %r12d
	cmpl	%ecx, %r12d
	jl	.L100
.L99:
	movl	$.LC43, %edi
	call	puts
	movl	$.LC40, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_execute
	movq	%rbp, %rdi
	call	fftw_free
	movl	$.LC44, %edi
	call	puts
	movl	$.LC45, %edi
	call	puts
	movq	GV+2024(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$1, %eax
	testq	%rdx, %rdx
	leaq	1(%rdx), %rsi
	jne	.L119
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L125:
	movq	%rax, %rcx
	movq	%rdx, %rax
.L119:
	salq	$4, %rcx
	movsd	GV+2072(%rip), %xmm0
	movq	%rcx, %rdx
	addq	%r13, %rdx
	mulsd	(%rdx), %xmm0
	divsd	GV+2056(%rip), %xmm0
	movsd	%xmm0, (%rdx)
	leaq	1(%rax), %rdx
	cmpq	%rsi, %rdx
	jne	.L125
.L111:
	movl	$.LC45, %edi
	xorl	%r12d, %r12d
	call	puts
	movl	$.LC46, %edi
	call	puts
	movl	$.LC45, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_destroy_plan
	movl	$.LC47, %edi
	call	puts
	movl	$.LC48, %edi
	call	puts
	movl	$.LC49, %edi
	call	puts
	movl	$.LC48, %edi
	call	puts
	movl	$.LC50, %esi
	movl	$.LC51, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %r14
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fwrite
	movq	%r14, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fwrite
	movq	%r14, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fwrite
	movq	%r14, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fwrite
	movq	%r14, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2096, %edi
	call	fwrite
	movl	$1, %edx
	movq	%r14, %rcx
	movl	$4, %esi
	movl	$GV+2016, %edi
	call	fwrite
	movl	GV+2016(%rip), %edx
	testl	%edx, %edx
	jle	.L110
.L120:
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L116:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L115:
	movl	%r12d, %edi
	movq	%r14, %rcx
	movl	$8, %esi
	imull	%edx, %edi
	addl	%ebp, %edi
	imull	%edx, %edi
	movl	$1, %edx
	addl	%ebx, %edi
	addl	$1, %ebx
	movslq	%edi, %rdi
	salq	$4, %rdi
	addq	%r13, %rdi
	call	fwrite
	movl	GV+2016(%rip), %edx
	cmpl	%ebx, %edx
	jg	.L115
	addl	$1, %ebp
	cmpl	%ebp, %edx
	jle	.L114
	testl	%edx, %edx
	jg	.L116
.L114:
	addl	$1, %r12d
	cmpl	%r12d, %edx
	jle	.L110
	testl	%edx, %edx
	jg	.L120
.L110:
	movq	%r14, %rdi
	call	fclose
	movq	%r13, %rdi
	call	fftw_free
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	potential, .-potential
	.section	.rodata.str1.1
.LC53:
	.string	"Second approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"mu=%lf, OmegaM(a)=%lf, growth rate f(t)=%lf\n"
	.text
	.p2align 4,,15
	.globl	growth_rate_OmegaM
	.type	growth_rate_OmegaM, @function
growth_rate_OmegaM:
.LFB50:
	.cfi_startproc
	movapd	%xmm0, %xmm2
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	GV+2128(%rip), %xmm3
	mulsd	%xmm0, %xmm2
	movsd	.LC52(%rip), %xmm1
	mulsd	%xmm0, %xmm2
	mulsd	GV+2136(%rip), %xmm2
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 8(%rsp)
	call	pow
	movl	$.LC23, %edi
	movsd	%xmm0, (%rsp)
	call	puts
	movl	$.LC53, %edi
	call	puts
	movsd	8(%rsp), %xmm3
	movl	$.LC54, %esi
	xorpd	%xmm0, %xmm0
	movl	$1, %edi
	movsd	(%rsp), %xmm2
	movl	$3, %eax
	movapd	%xmm3, %xmm1
	call	__printf_chk
	movl	$.LC23, %edi
	call	puts
	movsd	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	growth_rate_OmegaM, .-growth_rate_OmegaM
	.section	.rodata.str1.1
.LC55:
	.string	"GR_OmegaM=%lf a_SF=%lf\n"
	.section	.rodata.str1.8
	.align 8
.LC57:
	.string	"FFT of potential derivative in r finished!"
	.align 8
.LC58:
	.string	"Saving data in binary file for the second approximation"
	.section	.rodata.str1.1
.LC59:
	.string	"--------------------------"
	.section	.rodata.str1.8
	.align 8
.LC60:
	.string	"./../../Processed_data/PotDot_app2.bin"
	.align 8
.LC61:
	.string	"FFT_pot_dot lineal code finished!"
	.text
	.p2align 4,,15
	.globl	potential_dot_linear
	.type	potential_dot_linear, @function
potential_dot_linear:
.LFB51:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movsd	GV+2112(%rip), %xmm1
	movsd	GV+2128(%rip), %xmm3
	movapd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC52(%rip), %xmm1
	mulsd	GV+2136(%rip), %xmm0
	addsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 24(%rsp)
	call	pow
	movl	$.LC23, %edi
	movsd	%xmm0, 16(%rsp)
	call	puts
	movl	$.LC53, %edi
	call	puts
	movsd	24(%rsp), %xmm3
	movl	$.LC54, %esi
	xorpd	%xmm0, %xmm0
	movl	$1, %edi
	movsd	16(%rsp), %xmm2
	movl	$3, %eax
	movapd	%xmm3, %xmm1
	call	__printf_chk
	movl	$.LC23, %edi
	call	puts
	movsd	GV+2112(%rip), %xmm4
	movsd	GV+2128(%rip), %xmm5
	movapd	%xmm4, %xmm0
	movsd	.LC8(%rip), %xmm3
	movsd	.LC52(%rip), %xmm1
	mulsd	%xmm4, %xmm0
	subsd	16(%rsp), %xmm3
	movsd	%xmm4, 32(%rsp)
	mulsd	%xmm4, %xmm0
	movsd	%xmm3, 40(%rsp)
	mulsd	GV+2136(%rip), %xmm0
	addsd	%xmm5, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	pow
	movl	$.LC23, %edi
	movsd	%xmm0, 16(%rsp)
	call	puts
	movl	$.LC53, %edi
	call	puts
	movsd	24(%rsp), %xmm5
	movl	$.LC54, %esi
	xorpd	%xmm0, %xmm0
	movl	$1, %edi
	movsd	16(%rsp), %xmm2
	movl	$3, %eax
	movapd	%xmm5, %xmm1
	call	__printf_chk
	movl	$.LC23, %edi
	call	puts
	movsd	32(%rsp), %xmm4
	movl	$.LC55, %esi
	movsd	16(%rsp), %xmm0
	movl	$1, %edi
	movapd	%xmm4, %xmm1
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC45, %edi
	call	puts
	movq	GV+2024(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movq	GV+2024(%rip), %rdi
	movq	%rax, %rbx
	salq	$4, %rdi
	call	fftw_malloc
	movl	GV+2016(%rip), %edi
	movq	%rax, %r8
	movq	%rbx, %rcx
	movl	$64, (%rsp)
	movl	$1, %r9d
	movq	%rax, %r12
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movsd	GV+2096(%rip), %xmm0
	movq	GV+2024(%rip), %rcx
	movsd	.LC56(%rip), %xmm2
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rax, %r14
	movq	gp(%rip), %rdi
	mulsd	%xmm0, %xmm2
	testq	%rcx, %rcx
	movsd	.LC42(%rip), %xmm4
	movsd	40(%rsp), %xmm3
	mulsd	%xmm0, %xmm2
	movsd	GV+2120(%rip), %xmm0
	divsd	GV+2112(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	mulsd	GV+2128(%rip), %xmm2
	jne	.L148
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L151:
	movapd	%xmm4, %xmm6
	movq	%rdx, %rax
	movsd	(%rsi), %xmm1
	salq	$4, %rax
	divsd	%xmm0, %xmm6
	addq	%rbx, %rax
	leaq	1(%r8), %rdx
	cmpq	%rcx, %rdx
	movapd	%xmm6, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, (%rax)
	mulsd	8(%rsi), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 8(%rax)
	jnb	.L135
.L152:
	movq	%rdx, %r8
.L148:
	leaq	0(,%rdx,8), %r9
	movq	%rdx, %rsi
	salq	$6, %rsi
	subq	%r9, %rsi
	addq	%rdi, %rsi
	movsd	48(%rsi), %xmm0
	ucomisd	GV+2048(%rip), %xmm0
	ja	.L151
	movq	%rdx, %rax
	leaq	1(%r8), %rdx
	salq	$4, %rax
	addq	%rbx, %rax
	cmpq	%rcx, %rdx
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	jb	.L152
.L135:
	movq	%r14, %rdi
	call	fftw_execute
	movl	$.LC57, %edi
	call	puts
	movl	$.LC40, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_free
	movq	GV+2024(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$1, %eax
	testq	%rdx, %rdx
	leaq	1(%rdx), %rsi
	jne	.L146
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L153:
	movq	%rax, %rcx
	movq	%rdx, %rax
.L146:
	salq	$4, %rcx
	movsd	GV+2072(%rip), %xmm0
	movq	%rcx, %rdx
	addq	%r12, %rdx
	mulsd	(%rdx), %xmm0
	divsd	GV+2056(%rip), %xmm0
	movsd	%xmm0, (%rdx)
	leaq	1(%rax), %rdx
	cmpq	%rsi, %rdx
	jne	.L153
.L131:
	movl	$.LC58, %edi
	xorl	%ebp, %ebp
	call	puts
	movl	$.LC59, %edi
	call	puts
	movl	$.LC50, %esi
	movl	$.LC60, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %r13
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fwrite
	movq	%r13, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fwrite
	movq	%r13, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fwrite
	movq	%r13, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fwrite
	movq	%r13, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2096, %edi
	call	fwrite
	movl	$1, %edx
	movq	%r13, %rcx
	movl	$4, %esi
	movl	$GV+2016, %edi
	call	fwrite
	movl	GV+2016(%rip), %edx
	testl	%edx, %edx
	jle	.L138
.L147:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L143:
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L142:
	movl	%ebp, %edi
	movq	%r13, %rcx
	movl	$8, %esi
	imull	%edx, %edi
	addl	%ebx, %edi
	imull	%edx, %edi
	movl	$1, %edx
	addl	%r15d, %edi
	addl	$1, %r15d
	movslq	%edi, %rdi
	salq	$4, %rdi
	addq	%r12, %rdi
	call	fwrite
	movl	GV+2016(%rip), %edx
	cmpl	%r15d, %edx
	jg	.L142
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jle	.L141
	testl	%edx, %edx
	jg	.L143
.L141:
	addl	$1, %ebp
	cmpl	%ebp, %edx
	jle	.L138
	testl	%edx, %edx
	.p2align 4,,2
	jg	.L147
.L138:
	movq	%r13, %rdi
	call	fclose
	movq	%r12, %rdi
	call	fftw_free
	movq	%r14, %rdi
	call	fftw_destroy_plan
	movl	$.LC61, %edi
	call	puts
	movl	$.LC59, %edi
	call	puts
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	potential_dot_linear, .-potential_dot_linear
	.section	.rodata.str1.8
	.align 8
.LC62:
	.string	"Error: Incomplete number of parameters. Execute as follows:"
	.section	.rodata.str1.1
.LC63:
	.string	"%s Parameters_file\n"
.LC65:
	.string	"Variables are ready to use!"
	.section	.rodata.str1.8
	.align 8
.LC66:
	.string	"Ascii data file of MDR1 has been read succesfully!"
	.section	.rodata.str1.1
.LC68:
	.string	"Simulation parameters"
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"GV.NCELLS:%12d GV.NTOTALCELLS:%12lu\nGV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n"
	.align 8
.LC70:
	.string	"----------------------------------------------------------------"
	.section	.rodata.str1.1
.LC71:
	.string	"Cosmological parameters"
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"GV.z_RS=%lf GV.h = %lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n"
	.align 8
.LC74:
	.string	"r2k norm = %lf, k2r norm = %lf\n"
	.section	.rodata.str1.1
.LC75:
	.string	"r2k 1D = %lf\n"
	.section	.rodata.str1.8
	.align 8
.LC76:
	.string	"FFT of density contrast finished!"
	.align 8
.LC77:
	.string	"FFT of gravitational potential finished!"
	.align 8
.LC78:
	.string	"FFT of time derivative of gravitational potential in linear approximation finished!"
	.align 8
.LC79:
	.string	"All FFT transforms have finished succesfully!"
	.align 8
.LC80:
	.string	"All codes have run succesfully!"
	.section	.rodata.str1.1
.LC81:
	.string	"FFT code finished!"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB52:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$1, %edi
	jle	.L163
	movq	8(%rsi), %rdi
	call	read_parameters
	movl	GV+2016(%rip), %eax
	movsd	.LC64(%rip), %xmm6
	movl	$.LC65, %edi
	movsd	%xmm6, GV+2048(%rip)
	movl	%eax, %edx
	imull	%eax, %edx
	imull	%edx, %eax
	cltq
	movq	%rax, GV+2024(%rip)
	call	puts
	movl	$.LC23, %edi
	call	puts
	movq	GV+2024(%rip), %rbx
	leaq	0(,%rbx,8), %rax
	movq	%rbx, %rdi
	salq	$6, %rdi
	subq	%rax, %rdi
	call	malloc
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rax, gp(%rip)
	call	calloc
	movl	$GV, %edi
	movq	%rax, %rsi
	movq	%rax, %rbx
	call	read_data
	movl	$.LC66, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movsd	.LC8(%rip), %xmm0
	movsd	GV+2096(%rip), %xmm7
	addsd	GV+2104(%rip), %xmm0
	movsd	GV+2136(%rip), %xmm3
	movsd	GV+2128(%rip), %xmm4
	movsd	.LC67(%rip), %xmm1
	movsd	%xmm7, 8(%rsp)
	movsd	%xmm3, 16(%rsp)
	movsd	%xmm4, 24(%rsp)
	call	pow
	mulsd	24(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L164
.L156:
	mulsd	8(%rsp), %xmm1
	movl	$.LC68, %edi
	movsd	GV+2008(%rip), %xmm0
	movsd	%xmm1, GV+2120(%rip)
	cvtsi2sd	GV+2016(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+2040(%rip)
	call	puts
	movl	GV+2016(%rip), %edx
	movl	$.LC69, %esi
	movl	$1, %edi
	movq	GV+2024(%rip), %rcx
	movsd	GV+2040(%rip), %xmm1
	movsd	GV+2008(%rip), %xmm0
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC70, %edi
	call	puts
	movl	$.LC71, %edi
	call	puts
	movsd	GV+2088(%rip), %xmm1
	movl	$.LC72, %esi
	movsd	GV+2104(%rip), %xmm0
	movl	$1, %edi
	movsd	GV+2112(%rip), %xmm4
	movl	$5, %eax
	movsd	GV+2120(%rip), %xmm3
	movsd	GV+2096(%rip), %xmm2
	call	__printf_chk
	movl	$.LC23, %edi
	call	puts
	movsd	GV+2008(%rip), %xmm0
	movq	GV+2024(%rip), %rdx
	movapd	%xmm0, %xmm1
	testq	%rdx, %rdx
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	js	.L158
	cvtsi2sdq	%rdx, %xmm0
.L159:
	movapd	%xmm1, %xmm2
	movsd	.LC8(%rip), %xmm5
	divsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm5
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	movsd	%xmm2, GV+2056(%rip)
	movsd	%xmm5, GV+2064(%rip)
	jp	.L165
.L160:
	movsd	.LC8(%rip), %xmm0
	movl	$.LC74, %esi
	movl	$1, %edi
	movsd	.LC73(%rip), %xmm6
	movl	$2, %eax
	divsd	%xmm1, %xmm0
	movsd	%xmm6, GV+2080(%rip)
	movsd	GV+2064(%rip), %xmm1
	movsd	%xmm0, GV+2072(%rip)
	movsd	GV+2056(%rip), %xmm0
	call	__printf_chk
	cvtsi2sd	GV+2016(%rip), %xmm1
	movsd	GV+2008(%rip), %xmm0
	movl	$.LC75, %esi
	movl	$1, %edi
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	call	__printf_chk
	movq	%rbx, %rdi
	call	transform
	movl	$.LC76, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	call	potential
	movl	$.LC77, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	call	potential_dot_linear
	movl	$.LC78, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movl	$.LC79, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movq	gp(%rip), %rdi
	call	free
	movl	$.LC23, %edi
	call	puts
	movl	$.LC80, %edi
	call	puts
	movl	$.LC81, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L158:
	.cfi_restore_state
	movq	%rdx, %rax
	andl	$1, %edx
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L159
.L164:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L156
.L165:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L160
.L163:
	movl	$.LC62, %edi
	movq	%rsi, 8(%rsp)
	call	puts
	movq	8(%rsp), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	(%rsi), %rdx
	movl	$.LC63, %esi
	call	__printf_chk
	xorl	%edi, %edi
	call	exit
	.cfi_endproc
.LFE52:
	.size	main, .-main
	.comm	GV,2152,32
	.comm	gp,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	1079574528
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC30:
	.long	1413754136
	.long	1075388923
	.align 8
.LC31:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC37:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC38:
	.long	0
	.long	-1075838976
	.align 8
.LC41:
	.long	0
	.long	1073217536
	.align 8
.LC42:
	.long	0
	.long	-1074790400
	.align 8
.LC52:
	.long	1908874354
	.long	1071761180
	.align 8
.LC56:
	.long	0
	.long	-1074266112
	.align 8
.LC64:
	.long	3271095129
	.long	27618847
	.align 8
.LC67:
	.long	0
	.long	1074266112
	.align 8
.LC73:
	.long	3947222911
	.long	1064338245
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
