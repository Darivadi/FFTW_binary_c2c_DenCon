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
	movsd	.LC7(%rip), %xmm0
	movq	%rbx, %rdi
	movsd	GV+2104(%rip), %xmm1
	mulsd	GV+2088(%rip), %xmm0
	movsd	%xmm0, GV+2096(%rip)
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm0, %xmm1
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
	movsd	.LC7(%rip), %xmm0
	movl	$.LC15, %edi
	movsd	GV+2104(%rip), %xmm1
	mulsd	GV+2088(%rip), %xmm0
	movsd	%xmm0, GV+2096(%rip)
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm0, %xmm1
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
	movsd	.LC7(%rip), %xmm0
	movl	GV+2016(%rip), %eax
	movsd	GV+2104(%rip), %xmm1
	movl	$.LC15, %edi
	mulsd	GV+2088(%rip), %xmm0
	movl	%eax, %edx
	imull	%eax, %edx
	imull	%edx, %eax
	movsd	%xmm0, GV+2096(%rip)
	movsd	.LC8(%rip), %xmm0
	cltq
	addsd	%xmm0, %xmm1
	movq	%rax, GV+2024(%rip)
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
.LC23:
	.string	"Input of contrast density sorted in C-order (row-major order)!"
	.align 8
.LC24:
	.string	"-----------------------------------------------------------------"
	.align 8
.LC25:
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
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
	movl	$.LC23, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_execute
	movl	$.LC25, %edi
	call	puts
	movl	$.LC24, %edi
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
	movsd	GV+2040(%rip), %xmm7
	imull	%ebx, %eax
	movsd	.LC31(%rip), %xmm6
	movsd	%xmm7, 8(%rsp)
	movl	%ebx, %r15d
	movq	$0, 120(%rsp)
	mulsd	%xmm7, %xmm6
	sarl	%r15d
	cltq
	movsd	GV+2008(%rip), %xmm5
	leaq	0(,%rax,8), %rdx
	salq	$6, %rax
	movq	%rax, 136(%rsp)
	movq	gp(%rip), %rax
	movapd	%xmm6, %xmm7
	subq	%rdx, 136(%rsp)
	movsd	.LC30(%rip), %xmm4
	movq	%rax, 128(%rsp)
	mulsd	%xmm6, %xmm7
	movslq	%ebx, %rax
	leaq	0(,%rax,8), %rdx
	salq	$6, %rax
	movq	%rax, 112(%rsp)
	subq	%rdx, 112(%rsp)
	movsd	%xmm7, 80(%rsp)
.L52:
	movq	120(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	$0, 96(%rsp)
	movl	%eax, %r12d
	subl	%ebx, %eax
	movq	%rcx, 104(%rsp)
	movl	%eax, 92(%rsp)
	.p2align 4,,10
	.p2align 3
.L62:
	movq	96(%rsp), %rax
	movq	104(%rsp), %r13
	xorl	%r14d, %r14d
	movl	%eax, %ebp
	subl	%ebx, %eax
	movl	%eax, 88(%rsp)
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
	movsd	%xmm5, 48(%rsp)
	movsd	%xmm3, 16(%rsp)
	mulsd	.LC31(%rip), %xmm0
	mulsd	%xmm4, %xmm2
	divsd	%xmm5, %xmm2
	movsd	%xmm2, -24(%r13)
	movsd	%xmm2, 32(%rsp)
	call	sin
	movsd	16(%rsp), %xmm3
	movsd	%xmm0, 24(%rsp)
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
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm3
	mulsd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	movsd	48(%rsp), %xmm5
	movsd	64(%rsp), %xmm4
	addsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	divsd	80(%rsp), %xmm1
	movsd	%xmm1, -8(%r13)
	cmpl	%r14d, %ebx
	jle	.L92
.L61:
	cmpl	%r15d, %r12d
	movl	%r14d, %esi
	jle	.L93
	cvtsi2sd	92(%rsp), %xmm0
	mulsd	%xmm4, %xmm0
	cmpl	%r15d, %ebp
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 16(%r13)
	jle	.L94
.L55:
	cvtsi2sd	88(%rsp), %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm5, %xmm3
	movsd	%xmm3, 24(%r13)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L92:
	addq	$1, 96(%rsp)
	movq	112(%rsp), %rax
	addq	%rax, 104(%rsp)
	cmpl	96(%rsp), %ebx
	jg	.L62
	addq	$1, 120(%rsp)
	movq	136(%rsp), %rax
	addq	%rax, 128(%rsp)
	cmpl	120(%rsp), %ebx
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
	movq	GV+2024(%rip), %r13
	testq	%r13, %r13
	je	.L72
	movsd	GV+2008(%rip), %xmm6
	movq	gp(%rip), %r14
	addq	$1, %r13
	movsd	GV+2048(%rip), %xmm4
	movl	GV+2016(%rip), %r12d
	movsd	%xmm6, 8(%rsp)
	movl	$1, %ebp
	xorl	%ebx, %ebx
	movsd	.LC37(%rip), %xmm3
	jmp	.L73
.L95:
	cvtsi2sd	%r12d, %xmm0
	mulsd	8(%rsp), %xmm5
	movapd	%xmm3, 64(%rsp)
	movsd	%xmm4, 48(%rsp)
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 16(%rsp)
	call	sin
	movsd	16(%rsp), %xmm5
	movsd	24(%rsp), %xmm2
	divsd	%xmm5, %xmm0
	movapd	64(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	48(%rsp), %xmm4
	mulsd	%xmm0, %xmm0
.L68:
	mulsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 40(%rbx)
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L87
	movsd	(%rbx), %xmm0
	movsd	8(%rbx), %xmm2
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
.L70:
	leaq	1(%rbp), %rax
	movsd	%xmm2, 8(%rbx)
	movsd	%xmm0, (%rbx)
	cmpq	%r13, %rax
	je	.L72
	movq	%rbp, %rbx
	movq	%rax, %rbp
.L73:
	leaq	0(,%rbx,8), %rax
	salq	$6, %rbx
	subq	%rax, %rbx
	addq	%r14, %rbx
	movsd	16(%rbx), %xmm1
	movsd	.LC8(%rip), %xmm2
	movapd	%xmm1, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L64
	cvtsi2sd	%r12d, %xmm0
	mulsd	8(%rsp), %xmm1
	movapd	%xmm3, 32(%rsp)
	movsd	%xmm4, 24(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rsp)
	call	sin
	movsd	16(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	movsd	24(%rsp), %xmm4
	movapd	32(%rsp), %xmm3
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
.L64:
	movsd	24(%rbx), %xmm5
	movsd	.LC8(%rip), %xmm1
	movapd	%xmm5, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L66
	cvtsi2sd	%r12d, %xmm0
	mulsd	8(%rsp), %xmm5
	movapd	%xmm3, 48(%rsp)
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 16(%rsp)
	call	sin
	movsd	16(%rsp), %xmm5
	movapd	%xmm0, %xmm1
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm4
	divsd	%xmm5, %xmm1
	movapd	48(%rsp), %xmm3
	mulsd	%xmm1, %xmm1
.L66:
	movsd	32(%rbx), %xmm5
	movapd	%xmm5, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L95
	movsd	.LC8(%rip), %xmm0
	jmp	.L68
.L87:
	xorpd	%xmm2, %xmm2
	movapd	%xmm2, %xmm0
	jmp	.L70
.L72:
	movl	$.LC35, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movl	$.LC36, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	addq	$152, %rsp
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
.LC38:
	.string	"Computing potential in k-space"
	.align 8
.LC39:
	.string	"-----------------------------------------"
	.section	.rodata.str1.1
.LC42:
	.string	"Potential in k-space saved!"
.LC43:
	.string	"FFT potential k2r finished!"
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"---------------------------------------"
	.align 8
.LC45:
	.string	"Grid-sorted potential in r space saved!"
	.section	.rodata.str1.1
.LC46:
	.string	"FFT_potential code finished!"
.LC47:
	.string	"----------------------------"
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"Proceeding to the writing of binary file with potential field"
	.section	.rodata.str1.1
.LC49:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"./../../Processed_data/Potential.bin"
	.text
	.p2align 4,,15
	.globl	potential
	.type	potential, @function
potential:
.LFB49:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$.LC38, %edi
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	call	puts
	movl	$.LC39, %edi
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
	movq	%rax, %r14
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movsd	GV+2096(%rip), %xmm2
	movl	GV+2016(%rip), %ecx
	movq	%rax, %rbx
	mulsd	%xmm2, %xmm2
	testl	%ecx, %ecx
	mulsd	.LC40(%rip), %xmm2
	mulsd	GV+2128(%rip), %xmm2
	divsd	GV+2112(%rip), %xmm2
	jle	.L97
	movq	gp(%rip), %rdi
	xorl	%r12d, %r12d
	movsd	.LC41(%rip), %xmm3
.L98:
	movl	%ecx, %r11d
	xorl	%r10d, %r10d
	imull	%r12d, %r11d
	.p2align 4,,10
	.p2align 3
.L105:
	leal	(%r11,%r10), %eax
	xorl	%edx, %edx
	imull	%ecx, %eax
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L122:
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
	jge	.L121
.L104:
	leal	(%rax,%rdx), %esi
	movslq	%esi, %rsi
	leaq	0(,%rsi,8), %r9
	movq	%rsi, %r8
	salq	$6, %r8
	subq	%r9, %r8
	addq	%rdi, %r8
	movsd	48(%r8), %xmm0
	ucomisd	GV+2048(%rip), %xmm0
	ja	.L122
	salq	$4, %rsi
	addl	$1, %edx
	addq	%rbp, %rsi
	cmpl	%ecx, %edx
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	jl	.L104
.L121:
	addl	$1, %r10d
	cmpl	%ecx, %r10d
	jl	.L105
	addl	$1, %r12d
	cmpl	%ecx, %r12d
	jl	.L98
.L97:
	movl	$.LC42, %edi
	call	puts
	movl	$.LC39, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_execute
	movq	%rbp, %rdi
	call	fftw_free
	movl	$.LC43, %edi
	call	puts
	movl	$.LC44, %edi
	call	puts
	movq	GV+2024(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$1, %eax
	testq	%rdx, %rdx
	leaq	1(%rdx), %rsi
	jne	.L117
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%rax, %rcx
	movq	%rdx, %rax
.L117:
	salq	$4, %rcx
	movsd	GV+2072(%rip), %xmm0
	movq	%rcx, %rdx
	addq	%r14, %rdx
	mulsd	(%rdx), %xmm0
	divsd	GV+2056(%rip), %xmm0
	movsd	%xmm0, (%rdx)
	leaq	1(%rax), %rdx
	cmpq	%rsi, %rdx
	jne	.L123
.L109:
	movl	$.LC44, %edi
	xorl	%r15d, %r15d
	call	puts
	movl	$.LC45, %edi
	call	puts
	movl	$.LC44, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_destroy_plan
	movl	$.LC46, %edi
	call	puts
	movl	$.LC47, %edi
	call	puts
	movl	$.LC48, %edi
	call	puts
	movl	$.LC47, %edi
	call	puts
	movl	$.LC49, %esi
	movl	$.LC50, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %r12
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2096, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movl	$GV+2016, %edi
	call	fwrite
	movl	GV+2016(%rip), %ebp
	testl	%ebp, %ebp
	jle	.L108
.L118:
	cvtsi2sd	%r15d, %xmm6
	xorl	%r13d, %r13d
	movsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L114:
	cvtsi2sd	%r13d, %xmm5
	xorl	%ebx, %ebx
	movsd	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L113:
	movsd	GV+2040(%rip), %xmm1
	leaq	32(%rsp), %rdi
	movq	%r12, %rcx
	movsd	24(%rsp), %xmm0
	movl	$3, %edx
	movl	$8, %esi
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)
	movsd	16(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)
	cvtsi2sd	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)
	call	fwrite
	movl	%r15d, %edi
	movq	%r12, %rcx
	movl	$1, %edx
	imull	%ebp, %edi
	movl	$8, %esi
	addl	%r13d, %edi
	imull	%ebp, %edi
	addl	%ebx, %edi
	addl	$1, %ebx
	movslq	%edi, %rdi
	salq	$4, %rdi
	addq	%r14, %rdi
	call	fwrite
	movl	GV+2016(%rip), %ebp
	cmpl	%ebx, %ebp
	jg	.L113
	addl	$1, %r13d
	cmpl	%r13d, %ebp
	jle	.L112
	testl	%ebp, %ebp
	jg	.L114
.L112:
	addl	$1, %r15d
	cmpl	%r15d, %ebp
	jle	.L108
	testl	%ebp, %ebp
	jg	.L118
.L108:
	movq	%r12, %rdi
	call	fclose
	movq	%r14, %rdi
	call	fftw_free
	addq	$72, %rsp
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
.LFE49:
	.size	potential, .-potential
	.section	.rodata.str1.1
.LC53:
	.string	"First approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"OmegaL0=%lf,  growth rate f(t)=%lf\n"
	.text
	.p2align 4,,15
	.globl	growth_rate_OmegaL0
	.type	growth_rate_OmegaL0, @function
growth_rate_OmegaL0:
.LFB50:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	.LC51(%rip), %xmm1
	call	pow
	mulsd	GV+2136(%rip), %xmm0
	movsd	.LC52(%rip), %xmm1
	addsd	.LC8(%rip), %xmm0
	call	pow
	movsd	.LC8(%rip), %xmm2
	movl	$.LC24, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%rsp)
	call	puts
	movl	$.LC53, %edi
	call	puts
	movsd	8(%rsp), %xmm1
	movl	$.LC54, %esi
	movsd	GV+2136(%rip), %xmm0
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	growth_rate_OmegaL0, .-growth_rate_OmegaL0
	.section	.rodata.str1.1
.LC56:
	.string	"Second approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC57:
	.string	"mu=%lf, OmegaM(a)=%lf, growth rate f(t)=%lf\n"
	.text
	.p2align 4,,15
	.globl	growth_rate_OmegaM
	.type	growth_rate_OmegaM, @function
growth_rate_OmegaM:
.LFB51:
	.cfi_startproc
	movapd	%xmm0, %xmm2
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	GV+2128(%rip), %xmm3
	mulsd	%xmm0, %xmm2
	movsd	.LC55(%rip), %xmm1
	mulsd	%xmm0, %xmm2
	mulsd	GV+2136(%rip), %xmm2
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 8(%rsp)
	call	pow
	movl	$.LC24, %edi
	movsd	%xmm0, (%rsp)
	call	puts
	movl	$.LC56, %edi
	call	puts
	movsd	8(%rsp), %xmm3
	movl	$.LC57, %esi
	xorpd	%xmm0, %xmm0
	movl	$1, %edi
	movsd	(%rsp), %xmm2
	movl	$3, %eax
	movapd	%xmm3, %xmm1
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	growth_rate_OmegaM, .-growth_rate_OmegaM
	.section	.rodata.str1.8
	.align 8
.LC58:
	.string	"GR_OmegaL0=%lf GR_OmegaM=%lf a_SF=%lf\n"
	.align 8
.LC60:
	.string	"FFT of PotDot App1 in r finished!"
	.align 8
.LC61:
	.string	"Saving data in binary file for the first approximation"
	.section	.rodata.str1.1
.LC62:
	.string	"--------------------------"
	.section	.rodata.str1.8
	.align 8
.LC63:
	.string	"./../../Processed_data/PotDot_app1.bin"
	.align 8
.LC64:
	.string	"FFT of potential derivative in r finished!"
	.align 8
.LC65:
	.string	"Saving data in binary file for the second approximation"
	.align 8
.LC66:
	.string	"./../../Processed_data/PotDot_app2.bin"
	.align 8
.LC67:
	.string	"FFT_pot_dot lineal code finished!"
	.text
	.p2align 4,,15
	.globl	potential_dot_linear
	.type	potential_dot_linear, @function
potential_dot_linear:
.LFB52:
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movsd	.LC51(%rip), %xmm1
	movsd	GV+2112(%rip), %xmm0
	call	pow
	mulsd	GV+2136(%rip), %xmm0
	movsd	.LC52(%rip), %xmm1
	addsd	.LC8(%rip), %xmm0
	call	pow
	movsd	.LC8(%rip), %xmm2
	movl	$.LC24, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%rsp)
	call	puts
	movl	$.LC53, %edi
	call	puts
	movsd	16(%rsp), %xmm1
	movl	$.LC54, %esi
	movsd	GV+2136(%rip), %xmm0
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	GV+2112(%rip), %xmm1
	movsd	GV+2128(%rip), %xmm4
	movapd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm3
	mulsd	%xmm1, %xmm0
	subsd	16(%rsp), %xmm3
	mulsd	%xmm1, %xmm0
	movsd	.LC55(%rip), %xmm1
	movsd	%xmm3, 56(%rsp)
	mulsd	GV+2136(%rip), %xmm0
	addsd	%xmm4, %xmm0
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 24(%rsp)
	call	pow
	movl	$.LC24, %edi
	movsd	%xmm0, 16(%rsp)
	call	puts
	movl	$.LC56, %edi
	call	puts
	movsd	24(%rsp), %xmm4
	movl	$.LC57, %esi
	xorpd	%xmm0, %xmm0
	movl	$1, %edi
	movapd	%xmm4, %xmm1
	movl	$3, %eax
	movsd	16(%rsp), %xmm2
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	GV+2112(%rip), %xmm1
	movsd	GV+2128(%rip), %xmm4
	movapd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	subsd	16(%rsp), %xmm2
	mulsd	%xmm1, %xmm0
	movsd	.LC55(%rip), %xmm1
	movsd	%xmm2, 48(%rsp)
	mulsd	GV+2136(%rip), %xmm0
	addsd	%xmm4, %xmm0
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 16(%rsp)
	call	pow
	movl	$.LC24, %edi
	movsd	%xmm0, 24(%rsp)
	call	puts
	movl	$.LC56, %edi
	call	puts
	movsd	16(%rsp), %xmm4
	movl	$.LC57, %esi
	xorpd	%xmm0, %xmm0
	movl	$1, %edi
	movapd	%xmm4, %xmm1
	movl	$3, %eax
	movsd	24(%rsp), %xmm2
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	GV+2112(%rip), %xmm2
	movsd	.LC51(%rip), %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 32(%rsp)
	call	pow
	mulsd	GV+2136(%rip), %xmm0
	movsd	.LC52(%rip), %xmm1
	addsd	.LC8(%rip), %xmm0
	call	pow
	movsd	.LC8(%rip), %xmm2
	movl	$.LC24, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%rsp)
	call	puts
	movl	$.LC53, %edi
	call	puts
	movsd	16(%rsp), %xmm1
	movl	$.LC54, %esi
	movsd	GV+2136(%rip), %xmm0
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	32(%rsp), %xmm2
	movl	$.LC58, %esi
	movsd	16(%rsp), %xmm0
	movl	$1, %edi
	movsd	24(%rsp), %xmm1
	movl	$3, %eax
	call	__printf_chk
	movl	$.LC44, %edi
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
	movq	%rax, 24(%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movsd	GV+2096(%rip), %xmm0
	movq	GV+2024(%rip), %rcx
	movsd	.LC59(%rip), %xmm2
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	gp(%rip), %r10
	mulsd	%xmm0, %xmm2
	testq	%rcx, %rcx
	movsd	56(%rsp), %xmm3
	mulsd	%xmm2, %xmm0
	movsd	.LC41(%rip), %xmm2
	movapd	%xmm0, %xmm4
	movsd	GV+2120(%rip), %xmm0
	divsd	GV+2112(%rip), %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	GV+2128(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)
	jne	.L167
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L172:
	movapd	%xmm2, %xmm4
	salq	$4, %rdx
	movsd	(%rsi), %xmm1
	addq	%rbx, %rdx
	divsd	%xmm0, %xmm4
	movsd	40(%rsp), %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, (%rdx)
	mulsd	8(%rsi), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 8(%rdx)
	leaq	1(%r8), %rdx
	cmpq	%rcx, %rdx
	jnb	.L135
.L173:
	movq	%rdx, %r8
.L167:
	leaq	0(,%rdx,8), %r9
	movq	%rdx, %rsi
	salq	$6, %rsi
	subq	%r9, %rsi
	addq	%r10, %rsi
	movsd	48(%rsi), %xmm0
	ucomisd	GV+2048(%rip), %xmm0
	ja	.L172
	salq	$4, %rdx
	addq	%rbx, %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	leaq	1(%r8), %rdx
	cmpq	%rcx, %rdx
	jb	.L173
.L135:
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC60, %edi
	call	puts
	movl	$.LC39, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_free
	movq	GV+2024(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$1, %eax
	testq	%rdx, %rdx
	leaq	1(%rdx), %rsi
	jne	.L163
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L174:
	movq	%rax, %rcx
	movq	%rdx, %rax
.L163:
	salq	$4, %rcx
	movsd	GV+2072(%rip), %xmm0
	movq	%rcx, %rdx
	addq	24(%rsp), %rdx
	mulsd	(%rdx), %xmm0
	divsd	GV+2056(%rip), %xmm0
	movsd	%xmm0, (%rdx)
	leaq	1(%rax), %rdx
	cmpq	%rsi, %rdx
	jne	.L174
.L131:
	movl	$.LC61, %edi
	xorl	%r14d, %r14d
	leaq	64(%rsp), %rbp
	call	puts
	movl	$.LC62, %edi
	call	puts
	movl	$.LC49, %esi
	movl	$.LC63, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %r12
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2096, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movl	$GV+2016, %edi
	call	fwrite
	movl	GV+2016(%rip), %r15d
	testl	%r15d, %r15d
	jle	.L138
.L164:
	cvtsi2sd	%r14d, %xmm7
	xorl	%r13d, %r13d
	movsd	%xmm7, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L143:
	cvtsi2sd	%r13d, %xmm5
	xorl	%ebx, %ebx
	movsd	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L142:
	movsd	GV+2040(%rip), %xmm1
	movq	%r12, %rcx
	movl	$3, %edx
	movsd	32(%rsp), %xmm0
	movl	$8, %esi
	movq	%rbp, %rdi
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)
	movsd	16(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	cvtsi2sd	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)
	call	fwrite
	movl	%r14d, %edi
	movq	%r12, %rcx
	movl	$1, %edx
	imull	%r15d, %edi
	movl	$8, %esi
	addl	%r13d, %edi
	imull	%r15d, %edi
	addl	%ebx, %edi
	addl	$1, %ebx
	movslq	%edi, %rdi
	salq	$4, %rdi
	addq	24(%rsp), %rdi
	call	fwrite
	movl	GV+2016(%rip), %r15d
	cmpl	%ebx, %r15d
	jg	.L142
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jle	.L141
	testl	%r15d, %r15d
	jg	.L143
.L141:
	addl	$1, %r14d
	cmpl	%r14d, %r15d
	jle	.L138
	testl	%r15d, %r15d
	jg	.L164
.L138:
	movq	%r12, %rdi
	call	fclose
	movq	24(%rsp), %rdi
	call	fftw_free
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
	movq	%rax, 24(%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	GV+2024(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rax, 56(%rsp)
	movq	gp(%rip), %rdi
	movsd	.LC41(%rip), %xmm2
	testq	%rcx, %rcx
	jne	.L168
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L175:
	movapd	%xmm2, %xmm7
	movq	%rdx, %rax
	movsd	(%rsi), %xmm1
	salq	$4, %rax
	divsd	%xmm0, %xmm7
	addq	%rbx, %rax
	leaq	1(%r8), %rdx
	cmpq	%rcx, %rdx
	movsd	40(%rsp), %xmm0
	movsd	48(%rsp), %xmm3
	mulsd	%xmm7, %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, (%rax)
	mulsd	8(%rsi), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 8(%rax)
	jnb	.L150
.L176:
	movq	%rdx, %r8
.L168:
	leaq	0(,%rdx,8), %r9
	movq	%rdx, %rsi
	salq	$6, %rsi
	subq	%r9, %rsi
	addq	%rdi, %rsi
	movsd	48(%rsi), %xmm0
	ucomisd	GV+2048(%rip), %xmm0
	ja	.L175
	movq	%rdx, %rax
	leaq	1(%r8), %rdx
	salq	$4, %rax
	addq	%rbx, %rax
	cmpq	%rcx, %rdx
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	jb	.L176
.L150:
	movq	56(%rsp), %rdi
	call	fftw_execute
	movl	$.LC64, %edi
	call	puts
	movl	$.LC39, %edi
	call	puts
	movq	%rbx, %rdi
	call	fftw_free
	movq	GV+2024(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$1, %eax
	testq	%rdx, %rdx
	leaq	1(%rdx), %rsi
	jne	.L165
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L177:
	movq	%rax, %rcx
	movq	%rdx, %rax
.L165:
	salq	$4, %rcx
	movsd	GV+2072(%rip), %xmm0
	movq	%rcx, %rdx
	addq	24(%rsp), %rdx
	mulsd	(%rdx), %xmm0
	divsd	GV+2056(%rip), %xmm0
	movsd	%xmm0, (%rdx)
	leaq	1(%rax), %rdx
	cmpq	%rsi, %rdx
	jne	.L177
.L146:
	movl	$.LC65, %edi
	xorl	%r13d, %r13d
	leaq	64(%rsp), %rbp
	call	puts
	movl	$.LC62, %edi
	call	puts
	movl	$.LC49, %esi
	movl	$.LC66, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %rbx
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+2008, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2128, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2136, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2104, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+2096, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movl	$GV+2016, %edi
	call	fwrite
	movl	GV+2016(%rip), %r15d
	testl	%r15d, %r15d
	jle	.L153
.L166:
	cvtsi2sd	%r13d, %xmm3
	xorl	%r12d, %r12d
	movsd	%xmm3, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L158:
	cvtsi2sd	%r12d, %xmm6
	xorl	%r14d, %r14d
	movsd	%xmm6, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L157:
	movsd	GV+2040(%rip), %xmm1
	movq	%rbx, %rcx
	movl	$3, %edx
	movsd	32(%rsp), %xmm0
	movl	$8, %esi
	movq	%rbp, %rdi
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)
	movsd	16(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	cvtsi2sd	%r14d, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)
	call	fwrite
	movl	%r13d, %edi
	movq	%rbx, %rcx
	movl	$1, %edx
	imull	%r15d, %edi
	movl	$8, %esi
	addl	%r12d, %edi
	imull	%r15d, %edi
	addl	%r14d, %edi
	addl	$1, %r14d
	movslq	%edi, %rdi
	salq	$4, %rdi
	addq	24(%rsp), %rdi
	call	fwrite
	movl	GV+2016(%rip), %r15d
	cmpl	%r14d, %r15d
	jg	.L157
	addl	$1, %r12d
	cmpl	%r12d, %r15d
	jle	.L156
	testl	%r15d, %r15d
	jg	.L158
.L156:
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jle	.L153
	testl	%r15d, %r15d
	jg	.L166
.L153:
	movq	%rbx, %rdi
	call	fclose
	movq	24(%rsp), %rdi
	call	fftw_free
	movq	56(%rsp), %rdi
	call	fftw_destroy_plan
	movl	$.LC67, %edi
	call	puts
	movl	$.LC62, %edi
	call	puts
	addq	$104, %rsp
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
.LFE52:
	.size	potential_dot_linear, .-potential_dot_linear
	.section	.rodata.str1.8
	.align 8
.LC68:
	.string	"Error: Incomplete number of parameters. Execute as follows:"
	.section	.rodata.str1.1
.LC69:
	.string	"%s Parameters_file\n"
.LC71:
	.string	"Variables are ready to use!"
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"Ascii data file of MDR1 has been read succesfully!"
	.section	.rodata.str1.1
.LC73:
	.string	"Simulation parameters"
	.section	.rodata.str1.8
	.align 8
.LC74:
	.string	"GV.NCELLS:%12d GV.NTOTALCELLS:%12lu\nGV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n"
	.align 8
.LC75:
	.string	"----------------------------------------------------------------"
	.section	.rodata.str1.1
.LC76:
	.string	"Cosmological parameters"
	.section	.rodata.str1.8
	.align 8
.LC77:
	.string	"GV.z_RS=%lf GV.h = %lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n"
	.align 8
.LC79:
	.string	"r2k norm = %lf, k2r norm = %lf\n"
	.section	.rodata.str1.1
.LC80:
	.string	"r2k 1D = %lf\n"
	.section	.rodata.str1.8
	.align 8
.LC81:
	.string	"FFT of density contrast finished!"
	.align 8
.LC82:
	.string	"FFT of gravitational potential finished!"
	.align 8
.LC83:
	.string	"FFT of time derivative of gravitational potential in linear approximation finished!"
	.align 8
.LC84:
	.string	"All FFT transforms have finished succesfully!"
	.align 8
.LC85:
	.string	"All codes have run succesfully!"
	.section	.rodata.str1.1
.LC86:
	.string	"FFT code finished!"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB53:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$1, %edi
	jle	.L187
	movq	8(%rsi), %rdi
	call	read_parameters
	movl	GV+2016(%rip), %eax
	movsd	.LC70(%rip), %xmm6
	movl	$.LC71, %edi
	movsd	%xmm6, GV+2048(%rip)
	movl	%eax, %edx
	imull	%eax, %edx
	imull	%edx, %eax
	cltq
	movq	%rax, GV+2024(%rip)
	call	puts
	movl	$.LC24, %edi
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
	movl	$.LC72, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movsd	.LC8(%rip), %xmm0
	movsd	GV+2096(%rip), %xmm7
	addsd	GV+2104(%rip), %xmm0
	movsd	GV+2136(%rip), %xmm3
	movsd	GV+2128(%rip), %xmm4
	movsd	.LC51(%rip), %xmm1
	movsd	%xmm7, 8(%rsp)
	movsd	%xmm3, 16(%rsp)
	movsd	%xmm4, 24(%rsp)
	call	pow
	mulsd	24(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L188
.L180:
	mulsd	8(%rsp), %xmm1
	movl	$.LC73, %edi
	movsd	GV+2008(%rip), %xmm0
	movsd	%xmm1, GV+2120(%rip)
	cvtsi2sd	GV+2016(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+2040(%rip)
	call	puts
	movl	GV+2016(%rip), %edx
	movl	$.LC74, %esi
	movl	$1, %edi
	movq	GV+2024(%rip), %rcx
	movsd	GV+2040(%rip), %xmm1
	movsd	GV+2008(%rip), %xmm0
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC75, %edi
	call	puts
	movl	$.LC76, %edi
	call	puts
	movsd	GV+2088(%rip), %xmm1
	movl	$.LC77, %esi
	movsd	GV+2104(%rip), %xmm0
	movl	$1, %edi
	movsd	GV+2112(%rip), %xmm4
	movl	$5, %eax
	movsd	GV+2120(%rip), %xmm3
	movsd	GV+2096(%rip), %xmm2
	call	__printf_chk
	movl	$.LC24, %edi
	call	puts
	movsd	GV+2008(%rip), %xmm0
	movq	GV+2024(%rip), %rdx
	movapd	%xmm0, %xmm1
	testq	%rdx, %rdx
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	js	.L182
	cvtsi2sdq	%rdx, %xmm0
.L183:
	movapd	%xmm1, %xmm2
	movsd	.LC8(%rip), %xmm5
	divsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm5
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	movsd	%xmm2, GV+2056(%rip)
	movsd	%xmm5, GV+2064(%rip)
	jp	.L189
.L184:
	movsd	.LC8(%rip), %xmm0
	movl	$.LC79, %esi
	movl	$1, %edi
	movsd	.LC78(%rip), %xmm6
	movl	$2, %eax
	divsd	%xmm1, %xmm0
	movsd	%xmm6, GV+2080(%rip)
	movsd	GV+2064(%rip), %xmm1
	movsd	%xmm0, GV+2072(%rip)
	movsd	GV+2056(%rip), %xmm0
	call	__printf_chk
	cvtsi2sd	GV+2016(%rip), %xmm1
	movsd	GV+2008(%rip), %xmm0
	movl	$.LC80, %esi
	movl	$1, %edi
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	call	__printf_chk
	movq	%rbx, %rdi
	call	transform
	movl	$.LC81, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	call	potential
	movl	$.LC82, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	call	potential_dot_linear
	movl	$.LC83, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movl	$.LC84, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movq	gp(%rip), %rdi
	call	free
	movl	$.LC24, %edi
	call	puts
	movl	$.LC85, %edi
	call	puts
	movl	$.LC86, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L182:
	.cfi_restore_state
	movq	%rdx, %rax
	andl	$1, %edx
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L183
.L188:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L180
.L189:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L184
.L187:
	movl	$.LC68, %edi
	movq	%rsi, 8(%rsp)
	call	puts
	movq	8(%rsp), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	(%rsi), %rdx
	movl	$.LC69, %esi
	call	__printf_chk
	xorl	%edi, %edi
	call	exit
	.cfi_endproc
.LFE53:
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
.LC40:
	.long	0
	.long	1073217536
	.align 8
.LC41:
	.long	0
	.long	-1074790400
	.align 8
.LC51:
	.long	0
	.long	1074266112
	.align 8
.LC52:
	.long	858993459
	.long	1071854387
	.align 8
.LC55:
	.long	1908874354
	.long	1071761180
	.align 8
.LC59:
	.long	0
	.long	-1074266112
	.align 8
.LC70:
	.long	3271095129
	.long	27618847
	.align 8
.LC78:
	.long	3947222911
	.long	1064338245
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
