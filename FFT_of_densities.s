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
.LC8:
	.string	"  * The file '%s' has been loaded!\n"
	.section	.rodata.str1.1
.LC9:
	.string	"File to read is %s "
.LC10:
	.string	"with %d cells per axis\n"
.LC11:
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
	movl	$GV+1016, %edx
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$.LC4, %esi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+1008, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV, %edx
	movl	$.LC6, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+1112, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+1120, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+1088, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV+1080, %edx
	movl	$.LC5, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movsd	.LC7(%rip), %xmm0
	movq	%rbx, %rdi
	movsd	GV+1088(%rip), %xmm1
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+1096(%rip)
	call	fclose
	movq	%rbp, %rdx
	movl	$.LC8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$GV, %edx
	movl	$.LC9, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	GV+1016(%rip), %edx
	movl	$.LC10, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	%rbp, %r8
	movl	$.LC11, %ecx
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
	.section	.rodata.str1.1
.LC12:
	.string	"%d %lf %lf %lf %lf"
.LC13:
	.string	"%d %lf\n"
	.text
	.p2align 4,,15
	.globl	read_data
	.type	read_data, @function
read_data:
.LFB44:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$1801439851, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	movl	$.LC1, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	subq	$1048, %rsp
	.cfi_def_cfa_offset 1088
	movq	%fs:40, %rax
	movq	%rax, 1032(%rsp)
	xorl	%eax, %eax
	call	fopen
	leaq	32(%rsp), %rdi
	movq	%rax, %rdx
	movl	$1000, %esi
	movq	%rax, %r12
	call	fgets
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	call	free
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jg	.L17
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$1, %ebx
	addq	$8, %rbp
	cmpl	%ebx, GV+1020(%rip)
	jle	.L16
.L17:
	leaq	24(%rsp), %r9
	leaq	20(%rsp), %rdx
	xorl	%eax, %eax
	movq	%rbp, (%rsp)
	movl	$.LC12, %esi
	movq	%r12, %rdi
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
	movsd	0(%rbp), %xmm0
	movl	%ebx, %edx
	movl	$.LC13, %esi
	movl	$1, %edi
	movl	$1, %eax
	addl	$1, %ebx
	call	__printf_chk
	addq	$8, %rbp
	cmpl	%ebx, GV+1020(%rip)
	jg	.L17
.L16:
	movq	%r12, %rdi
	call	fclose
	xorl	%eax, %eax
	movq	1032(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L21
	addq	$1048, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE44:
	.size	read_data, .-read_data
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"-----------------------------------------------"
	.section	.rodata.str1.1
.LC15:
	.string	"Cosmological parameters:"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"OmegaM0=%lf OmegaL0=%lf redshift=%lf HubbleParam=%lf\n"
	.section	.rodata.str1.1
.LC17:
	.string	"Simulation parameters:"
.LC18:
	.string	"L=%lf\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Reading m=%d x=%lf y=%lf z=%lf DenCon=%lf\n"
	.text
	.p2align 4,,15
	.globl	read_binary
	.type	read_binary, @function
read_binary:
.LFB45:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	movl	$GV, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	movl	$.LC1, %esi
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	call	fopen
	movl	$1, %edx
	movq	%rax, %r12
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+1008, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1112, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1120, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fread
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1080, %edi
	call	fread
	movsd	.LC7(%rip), %xmm0
	movl	$.LC14, %edi
	movsd	GV+1088(%rip), %xmm1
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+1096(%rip)
	call	puts
	movl	$.LC15, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm3
	movl	$.LC16, %esi
	movsd	GV+1088(%rip), %xmm2
	movl	$1, %edi
	movsd	GV+1120(%rip), %xmm1
	movl	$4, %eax
	movsd	GV+1112(%rip), %xmm0
	call	__printf_chk
	movl	$.LC14, %edi
	call	puts
	movl	$.LC17, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm0
	movl	$.LC18, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC14, %edi
	call	puts
	movq	%rbx, %rdi
	call	free
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L25
	xorl	%ebx, %ebx
	movl	$1801439851, %r13d
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L24:
	addl	$1, %ebx
	addq	$8, %rbp
	cmpl	%ebx, GV+1020(%rip)
	jle	.L25
.L26:
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
	imull	%r13d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	jne	.L24
	movsd	0(%rbp), %xmm3
	movl	%ebx, %edx
	movl	$.LC19, %esi
	movsd	16(%rsp), %xmm2
	movl	$1, %edi
	movsd	8(%rsp), %xmm1
	movl	$4, %eax
	movsd	(%rsp), %xmm0
	addl	$1, %ebx
	addq	$8, %rbp
	call	__printf_chk
	cmpl	%ebx, GV+1020(%rip)
	jg	.L26
.L25:
	movq	%r12, %rdi
	call	fclose
	addq	$40, %rsp
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	read_binary, .-read_binary
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Input of contrast density sorted in C-order (row-major order)!"
	.align 8
.LC22:
	.string	"-----------------------------------------------------------------"
	.align 8
.LC23:
	.string	"FFT: density contrast r2k finished!"
	.section	.rodata.str1.1
.LC26:
	.string	"k vectors computed!"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"------------------------------------------------"
	.align 8
.LC28:
	.string	"Computing density contrast in k space with CIC weight-function!"
	.align 8
.LC29:
	.string	"Density contrast in k-space with CIC weight fn ready!!"
	.section	.rodata.str1.1
.LC30:
	.string	"Destroying plans!"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"--------------------------------------------------"
	.section	.rodata.str1.1
.LC32:
	.string	"plan_r2k destroyed!"
.LC33:
	.string	"Freeing up memory!"
.LC34:
	.string	"FFT_transform code finished!"
	.text
	.p2align 4,,15
	.globl	transform
	.type	transform, @function
transform:
.LFB46:
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
	movq	%rdi, %rbx
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, 40(%rsp)
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, 96(%rsp)
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L33
	movq	40(%rsp), %rsi
	subl	$1, %eax
	leaq	8(,%rax,8), %rdx
	xorl	%eax, %eax
.L34:
	movsd	(%rbx,%rax), %xmm0
	movq	$0, 8(%rsi,%rax,2)
	movsd	%xmm0, (%rsi,%rax,2)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L34
.L33:
	movl	$.LC21, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	GV+1016(%rip), %edi
	movq	40(%rsp), %rcx
	movl	$-1, %r9d
	movq	96(%rsp), %r8
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, 104(%rsp)
	call	fftw_execute
	movl	$.LC23, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	GV+1020(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L32
	movsd	GV+1048(%rip), %xmm0
	movq	96(%rsp), %rdi
	subl	$1, %ecx
	salq	$4, %rcx
	movq	gp(%rip), %rdx
	mulsd	GV+1064(%rip), %xmm0
	leaq	16(%rdi,%rcx), %rcx
	movq	%rdi, %rax
.L37:
	movsd	(%rax), %xmm1
	addq	$16, %rax
	addq	$160, %rdx
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rdx)
	movsd	-8(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rdx)
	cmpq	%rcx, %rax
	jne	.L37
.L32:
	movl	GV+1016(%rip), %ebx
	xorl	%r13d, %r13d
	movq	gp(%rip), %r14
	movsd	.LC24(%rip), %xmm4
	testl	%ebx, %ebx
	jle	.L36
.L61:
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L49:
	xorl	%ebp, %ebp
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L78:
	cvtsi2sd	%r13d, %xmm0
	cmpl	%r12d, %edx
	mulsd	%xmm4, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 16(%rax)
	jl	.L40
.L79:
	cvtsi2sd	%r12d, %xmm2
	cmpl	%ebp, %edx
	mulsd	%xmm4, %xmm2
	divsd	%xmm3, %xmm2
	movsd	%xmm2, 24(%rax)
	jl	.L42
.L80:
	cvtsi2sd	%ebp, %xmm1
	mulsd	%xmm4, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 32(%rax)
.L43:
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L76
.L44:
	movsd	.LC25(%rip), %xmm0
	addq	%r14, %r15
	addl	$1, %ebp
	movsd	%xmm1, 40(%rax)
	mulsd	16(%r15), %xmm0
	movsd	%xmm4, 32(%rsp)
	call	sin
	movsd	%xmm0, 24(%rsp)
	movsd	.LC25(%rip), %xmm0
	mulsd	24(%r15), %xmm0
	call	sin
	movsd	%xmm0, 16(%rsp)
	movsd	.LC25(%rip), %xmm0
	mulsd	32(%r15), %xmm0
	call	sin
	movsd	24(%rsp), %xmm1
	cmpl	%ebp, %ebx
	movsd	16(%rsp), %xmm3
	mulsd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	movsd	32(%rsp), %xmm4
	addsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%r15)
	jle	.L77
.L48:
	movl	%r13d, %eax
	movl	%ebx, %edx
	imull	%ebx, %eax
	shrl	$31, %edx
	addl	%ebx, %edx
	movsd	GV+1008(%rip), %xmm3
	sarl	%edx
	addl	%r12d, %eax
	imull	%ebx, %eax
	addl	%ebp, %eax
	cltq
	leaq	(%rax,%rax,4), %r15
	salq	$5, %r15
	cmpl	%edx, %r13d
	leaq	(%r14,%r15), %rax
	jle	.L78
	movl	%r13d, %r8d
	subl	%ebx, %r8d
	cmpl	%r12d, %edx
	cvtsi2sd	%r8d, %xmm0
	mulsd	%xmm4, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 16(%rax)
	jge	.L79
.L40:
	movl	%r12d, %r8d
	subl	%ebx, %r8d
	cmpl	%ebp, %edx
	cvtsi2sd	%r8d, %xmm1
	mulsd	%xmm4, %xmm1
	divsd	GV+1008(%rip), %xmm1
	movsd	%xmm1, 24(%r14,%r15)
	movsd	24(%rax), %xmm2
	jge	.L80
.L42:
	movl	%ebp, %edx
	subl	%ebx, %edx
	cvtsi2sd	%edx, %xmm1
	mulsd	%xmm4, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 32(%rax)
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L77:
	addl	$1, %r12d
	cmpl	%r12d, %ebx
	jle	.L47
	testl	%ebx, %ebx
	jg	.L49
.L47:
	addl	$1, %r13d
	cmpl	%r13d, %ebx
	jle	.L36
	testl	%ebx, %ebx
	jg	.L61
.L36:
	movl	$.LC26, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	movl	$.LC28, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	movl	GV+1020(%rip), %edx
	testl	%edx, %edx
	jle	.L59
	movq	gp(%rip), %rbx
	subl	$1, %edx
	movl	GV+1016(%rip), %ebp
	leaq	(%rdx,%rdx,4), %r15
	movsd	GV+1008(%rip), %xmm6
	movsd	GV+1040(%rip), %xmm4
	leaq	160(%rbx), %r13
	salq	$5, %r15
	movsd	%xmm6, 16(%rsp)
	movsd	.LC35(%rip), %xmm3
	addq	%r13, %r15
	jmp	.L60
.L81:
	cvtsi2sd	%ebp, %xmm0
	mulsd	16(%rsp), %xmm5
	movapd	%xmm3, 80(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm2, 32(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	sin
	movsd	24(%rsp), %xmm5
	movsd	32(%rsp), %xmm2
	divsd	%xmm5, %xmm0
	movapd	80(%rsp), %xmm3
	movsd	48(%rsp), %xmm1
	movsd	64(%rsp), %xmm4
	mulsd	%xmm0, %xmm0
.L55:
	mulsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 48(%rbx)
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L74
	movsd	(%rbx), %xmm0
	movsd	8(%rbx), %xmm2
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
.L57:
	cmpq	%r15, %r13
	movsd	%xmm2, 8(%rbx)
	movsd	%xmm0, (%rbx)
	movq	%r13, %rbx
	je	.L59
	addq	$160, %r13
.L60:
	movsd	16(%rbx), %xmm1
	movsd	.LC7(%rip), %xmm2
	movapd	%xmm1, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L51
	cvtsi2sd	%ebp, %xmm0
	mulsd	16(%rsp), %xmm1
	movapd	%xmm3, 48(%rsp)
	movsd	%xmm4, 32(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 24(%rsp)
	call	sin
	movsd	24(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	movsd	32(%rsp), %xmm4
	movapd	48(%rsp), %xmm3
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
.L51:
	movsd	24(%rbx), %xmm5
	movsd	.LC7(%rip), %xmm1
	movapd	%xmm5, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L53
	cvtsi2sd	%ebp, %xmm0
	mulsd	16(%rsp), %xmm5
	movapd	%xmm3, 64(%rsp)
	movsd	%xmm4, 48(%rsp)
	movsd	%xmm2, 32(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	sin
	movsd	24(%rsp), %xmm5
	movapd	%xmm0, %xmm1
	movsd	32(%rsp), %xmm2
	movsd	48(%rsp), %xmm4
	divsd	%xmm5, %xmm1
	movapd	64(%rsp), %xmm3
	mulsd	%xmm1, %xmm1
.L53:
	movsd	32(%rbx), %xmm5
	movapd	%xmm5, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L81
	movsd	.LC7(%rip), %xmm0
	jmp	.L55
.L74:
	xorpd	%xmm2, %xmm2
	movapd	%xmm2, %xmm0
	jmp	.L57
.L59:
	movl	$.LC29, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	$.LC30, %edi
	call	puts
	movl	$.LC31, %edi
	call	puts
	movq	104(%rsp), %rdi
	call	fftw_destroy_plan
	movl	$.LC32, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC33, %edi
	call	puts
	movl	$.LC31, %edi
	call	puts
	movq	40(%rsp), %rdi
	call	free
	movq	96(%rsp), %rdi
	call	fftw_free
	movl	$.LC34, %edi
	call	puts
	movl	$.LC31, %edi
	call	puts
	addq	$120, %rsp
	.cfi_remember_state
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
.L76:
	.cfi_restore_state
	movsd	%xmm4, 24(%rsp)
	movq	%rax, 16(%rsp)
	call	sqrt
	movl	GV+1016(%rip), %ebx
	movapd	%xmm0, %xmm1
	movq	gp(%rip), %r14
	movsd	24(%rsp), %xmm4
	movq	16(%rsp), %rax
	jmp	.L44
	.cfi_endproc
.LFE46:
	.size	transform, .-transform
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"Computing potential in k-space"
	.align 8
.LC37:
	.string	"-----------------------------------------"
	.section	.rodata.str1.1
.LC39:
	.string	"Potential in k-space saved!"
.LC40:
	.string	"%lf %lf\n"
.LC41:
	.string	"FFT potential k2r finished!"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"---------------------------------------"
	.align 8
.LC43:
	.string	"Grid-sorted potential in r space saved!"
	.section	.rodata.str1.1
.LC44:
	.string	"FFT_potential code finished!"
.LC45:
	.string	"----------------------------"
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"Proceeding to the writing of binary file with potential field"
	.section	.rodata.str1.1
.LC47:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"./../../Processed_data/Potential.bin"
	.text
	.p2align 4,,15
	.globl	potential
	.type	potential, @function
potential:
.LFB47:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	movl	$.LC36, %edi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$1801439851, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, 24(%rsp)
	call	puts
	movl	$.LC37, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm3
	movl	GV+1020(%rip), %eax
	xorpd	%xmm4, %xmm4
	mulsd	%xmm3, %xmm3
	testl	%eax, %eax
	mulsd	.LC38(%rip), %xmm3
	mulsd	GV+1112(%rip), %xmm3
	divsd	GV+1096(%rip), %xmm3
	jg	.L106
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L111:
	movsd	(%rax), %xmm0
	movq	(%r12), %rdx
	mulsd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdx)
	movsd	40(%rax), %xmm2
	movsd	8(%rax), %xmm1
	mulsd	%xmm2, %xmm2
	mulsd	%xmm3, %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%rdx)
.L88:
	movl	%ebx, %eax
	imull	%r13d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	je	.L110
.L89:
	addl	$1, %ebx
	addq	$160, %rbp
	addq	$8, %r12
	cmpl	%ebx, GV+1020(%rip)
	jle	.L90
.L106:
	movq	%rbp, %rax
	addq	gp(%rip), %rax
	movsd	40(%rax), %xmm1
	ucomisd	GV+1040(%rip), %xmm1
	ja	.L111
	movq	(%r12), %rax
	movapd	%xmm4, %xmm0
	movapd	%xmm4, %xmm1
	movsd	%xmm4, (%rax)
	movsd	%xmm4, 8(%rax)
	jmp	.L88
.L110:
	movl	$.LC40, %esi
	movl	$1, %edi
	movl	$2, %eax
	movsd	%xmm4, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	call	__printf_chk
	movsd	16(%rsp), %xmm4
	movsd	8(%rsp), %xmm3
	jmp	.L89
.L90:
	movl	$.LC39, %edi
	call	puts
	movl	$.LC37, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %r13
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, 8(%rsp)
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L85
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rcx
.L94:
	movq	24(%rsp), %rax
	movq	(%rax,%rdx), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, 0(%r13,%rdx,2)
	movsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%r13,%rdx,2)
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L94
.L85:
	movl	GV+1016(%rip), %edi
	movq	8(%rsp), %rbp
	movl	$1, %r9d
	movq	%r13, %rcx
	movl	$64, (%rsp)
	xorl	%ebx, %ebx
	movq	%r14, %r12
	movl	$1125899907, %r15d
	movl	%edi, %esi
	movl	%edi, %edx
	movq	%rbp, %r8
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	fftw_execute
	movl	$.LC41, %edi
	call	puts
	movl	$.LC42, %edi
	call	puts
	movl	GV+1020(%rip), %esi
	testl	%esi, %esi
	jg	.L107
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L97:
	addl	$1, %ebx
	addq	$16, %rbp
	addq	$8, %r12
	cmpl	%esi, %ebx
	jge	.L93
.L107:
	movsd	GV+1064(%rip), %xmm0
	movl	%ebx, %eax
	imull	%r15d
	movl	%ebx, %eax
	mulsd	GV+1072(%rip), %xmm0
	sarl	$31, %eax
	sarl	$18, %edx
	subl	%eax, %edx
	imull	$1000000, %edx, %edx
	mulsd	0(%rbp), %xmm0
	cmpl	%edx, %ebx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%r12)
	jne	.L97
	movl	%ebx, %edx
	movl	$.LC13, %esi
	movl	$1, %edi
	movl	$1, %eax
	addl	$1, %ebx
	addq	$16, %rbp
	call	__printf_chk
	movl	GV+1020(%rip), %esi
	addq	$8, %r12
	cmpl	%esi, %ebx
	jl	.L107
.L93:
	movl	$.LC42, %edi
	call	puts
	movl	$.LC43, %edi
	call	puts
	movl	$.LC42, %edi
	call	puts
	movq	16(%rsp), %rdi
	call	fftw_destroy_plan
	movq	%r13, %rdi
	xorl	%r13d, %r13d
	call	free
	movq	8(%rsp), %rdi
	call	fftw_free
	movl	$.LC44, %edi
	call	puts
	movl	$.LC45, %edi
	call	puts
	movl	$.LC46, %edi
	call	puts
	movl	$.LC45, %edi
	call	puts
	movl	$.LC47, %esi
	movl	$.LC48, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %rbp
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+1008, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1112, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1120, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1080, %edi
	call	fwrite
	movl	GV+1016(%rip), %r15d
	testl	%r15d, %r15d
	jle	.L96
.L105:
	cvtsi2sd	%r13d, %xmm6
	xorl	%r12d, %r12d
	movsd	%xmm6, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L102:
	cvtsi2sd	%r12d, %xmm5
	xorl	%ebx, %ebx
	movsd	%xmm5, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L101:
	movsd	GV+1032(%rip), %xmm1
	leaq	32(%rsp), %rdi
	movq	%rbp, %rcx
	movsd	16(%rsp), %xmm0
	movl	$3, %edx
	movl	$8, %esi
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)
	movsd	8(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)
	cvtsi2sd	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)
	call	fwrite
	movl	%r13d, %eax
	movq	%rbp, %rcx
	movl	$1, %edx
	imull	%r15d, %eax
	movl	$8, %esi
	addl	%r12d, %eax
	imull	%eax, %r15d
	movl	%r15d, %r8d
	addl	%ebx, %r8d
	addl	$1, %ebx
	movslq	%r8d, %r8
	leaq	(%r14,%r8,8), %rdi
	call	fwrite
	movl	GV+1016(%rip), %r15d
	cmpl	%ebx, %r15d
	jg	.L101
	addl	$1, %r12d
	cmpl	%r12d, %r15d
	jle	.L100
	testl	%r15d, %r15d
	jg	.L102
.L100:
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jle	.L96
	testl	%r15d, %r15d
	jg	.L105
.L96:
	movq	%rbp, %rdi
	call	fclose
	movq	%r14, %rdi
	call	free
	movq	24(%rsp), %rdi
	call	free
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
.LFE47:
	.size	potential, .-potential
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"Dealing with FFT momentum_cm in X!"
	.align 8
.LC50:
	.string	"---------------------------------"
	.align 8
.LC51:
	.string	"FFT of momentum_cm in X finished!"
	.align 8
.LC52:
	.string	" Dealing with FFT momentum_cm in Y!"
	.align 8
.LC53:
	.string	"FFT of momentum_cm in Y finished!"
	.align 8
.LC54:
	.string	" Dealing with FFT momentum_cm in Z!"
	.align 8
.LC55:
	.string	"FFT of momentum_cm in Z finished!"
	.text
	.p2align 4,,15
	.globl	momentum_den_cm
	.type	momentum_den_cm, @function
momentum_den_cm:
.LFB48:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$.LC49, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	puts
	movl	$.LC50, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %r12
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L116
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L117:
	movq	(%rbx,%rdx), %rcx
	movsd	(%rcx), %xmm0
	movq	$0, 8(%rbp,%rdx,2)
	movsd	%xmm0, 0(%rbp,%rdx,2)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jne	.L117
.L116:
	movl	GV+1016(%rip), %edi
	movl	$-1, %r9d
	movq	%r12, %r8
	movq	%rbp, %rcx
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC51, %edi
	call	puts
	movl	$.LC50, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L115
	movsd	GV+1048(%rip), %xmm0
	subl	$1, %eax
	movq	gp(%rip), %rsi
	salq	$4, %rax
	movq	%r12, %rdx
	mulsd	GV+1064(%rip), %xmm0
	leaq	16(%r12,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L120:
	movsd	(%rdx), %xmm1
	addq	$16, %rdx
	addq	$160, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rsi)
	movsd	-8(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rsi)
	cmpq	%rcx, %rdx
	jne	.L120
.L115:
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
	call	fftw_free
	movl	$.LC52, %edi
	call	puts
	movl	$.LC50, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %r12
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L119
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L123:
	movq	(%rbx,%rdx), %rcx
	movsd	8(%rcx), %xmm0
	movq	$0, 8(%rbp,%rdx,2)
	movsd	%xmm0, 0(%rbp,%rdx,2)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jne	.L123
.L119:
	movl	GV+1016(%rip), %edi
	movl	$-1, %r9d
	movq	%r12, %r8
	movq	%rbp, %rcx
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC53, %edi
	call	puts
	movl	$.LC50, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L122
	movsd	GV+1048(%rip), %xmm0
	subl	$1, %eax
	movq	gp(%rip), %rsi
	salq	$4, %rax
	movq	%r12, %rdx
	mulsd	GV+1064(%rip), %xmm0
	leaq	16(%r12,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L126:
	movsd	(%rdx), %xmm1
	addq	$16, %rdx
	addq	$160, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rsi)
	movsd	-8(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rsi)
	cmpq	%rcx, %rdx
	jne	.L126
.L122:
	movq	%rbp, %rdi
	call	free
	movq	%r12, %rdi
	call	fftw_free
	movl	$.LC54, %edi
	call	puts
	movl	$.LC50, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %r12
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L125
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L129:
	movq	(%rbx,%rdx), %rcx
	movsd	16(%rcx), %xmm0
	movq	$0, 8(%rbp,%rdx,2)
	movsd	%xmm0, 0(%rbp,%rdx,2)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jne	.L129
.L125:
	movl	GV+1016(%rip), %edi
	movl	$-1, %r9d
	movq	%r12, %r8
	movq	%rbp, %rcx
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	fftw_execute
	movl	$.LC55, %edi
	call	puts
	movl	$.LC50, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L128
	movsd	GV+1048(%rip), %xmm0
	leal	-1(%rax), %ecx
	movq	gp(%rip), %rsi
	movq	%r12, %rdx
	mulsd	GV+1064(%rip), %xmm0
	salq	$4, %rcx
	leaq	16(%r12,%rcx), %rcx
	.p2align 4,,10
	.p2align 3
.L132:
	movsd	(%rdx), %xmm1
	addq	$16, %rdx
	addq	$160, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rsi)
	movsd	-8(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rsi)
	cmpq	%rcx, %rdx
	jne	.L132
.L128:
	movq	%rbx, %rdi
	call	fftw_destroy_plan
	movq	%rbp, %rdi
	call	fftw_free
	movq	%r12, %rdi
	call	fftw_free
	movl	GV+1020(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L138
	movsd	GV+1040(%rip), %xmm9
	movq	gp(%rip), %rax
	xorl	%edx, %edx
	movsd	.LC35(%rip), %xmm8
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L141:
	divsd	%xmm0, %xmm3
	addl	$1, %edx
	addq	$160, %rax
	divsd	%xmm0, %xmm2
	movsd	%xmm3, -96(%rax)
	divsd	%xmm0, %xmm1
	movsd	%xmm2, -80(%rax)
	divsd	%xmm0, %xmm5
	movsd	%xmm1, -64(%rax)
	divsd	%xmm0, %xmm4
	movsd	%xmm5, -88(%rax)
	divsd	%xmm0, %xmm6
	movsd	%xmm4, -72(%rax)
	movsd	%xmm6, -56(%rax)
	cmpl	%ecx, %edx
	jge	.L138
.L136:
	movsd	32(%rax), %xmm0
	movsd	104(%rax), %xmm1
	movapd	%xmm0, %xmm6
	movsd	16(%rax), %xmm5
	mulsd	%xmm0, %xmm1
	movsd	48(%rax), %xmm0
	movsd	72(%rax), %xmm3
	movsd	24(%rax), %xmm4
	movapd	%xmm0, %xmm7
	movsd	88(%rax), %xmm2
	mulsd	%xmm5, %xmm3
	movsd	%xmm1, 96(%rax)
	mulsd	%xmm4, %xmm2
	andpd	%xmm8, %xmm7
	mulsd	%xmm1, %xmm6
	mulsd	%xmm3, %xmm5
	movsd	%xmm3, 64(%rax)
	mulsd	%xmm2, %xmm4
	movsd	%xmm2, 80(%rax)
	ucomisd	%xmm9, %xmm7
	movsd	%xmm6, 104(%rax)
	movsd	%xmm5, 72(%rax)
	movsd	%xmm4, 88(%rax)
	ja	.L141
	addl	$1, %edx
	movq	$0, 64(%rax)
	addq	$160, %rax
	movq	$0, -80(%rax)
	movq	$0, -64(%rax)
	movq	$0, -88(%rax)
	movq	$0, -72(%rax)
	movq	$0, -56(%rax)
	cmpl	%ecx, %edx
	jl	.L136
.L138:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	momentum_den_cm, .-momentum_den_cm
	.section	.rodata.str1.8
	.align 8
.LC56:
	.string	"Computing time derivative of potential in k-space!"
	.align 8
.LC57:
	.string	"Data time derivative of potential in k-space assigned!"
	.section	.rodata.str1.1
.LC60:
	.string	"%10d %16.8lf %16.8lf\n"
	.section	.rodata.str1.8
	.align 8
.LC61:
	.string	"FFT of potential derivative in r finished!"
	.section	.rodata.str1.1
.LC62:
	.string	"FFT_pot_dot code finished!"
.LC63:
	.string	"--------------------------"
	.section	.rodata.str1.8
	.align 8
.LC64:
	.string	"Writing binary file with PotDot"
	.align 8
.LC65:
	.string	"./../../Processed_data/PotDot.bin"
	.text
	.p2align 4,,15
	.globl	potential_dot
	.type	potential_dot, @function
potential_dot:
.LFB49:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	movl	$.LC56, %edi
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
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	call	puts
	movl	$.LC22, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm7
	movl	GV+1020(%rip), %eax
	movsd	GV+1096(%rip), %xmm5
	mulsd	%xmm7, %xmm7
	testl	%eax, %eax
	mulsd	.LC38(%rip), %xmm7
	mulsd	GV+1112(%rip), %xmm7
	divsd	%xmm5, %xmm7
	jle	.L149
	movl	$1801439851, %r12d
	movsd	.LC58(%rip), %xmm12
	movsd	.LC59(%rip), %xmm11
	jmp	.L165
.L168:
	addsd	%xmm15, %xmm2
	movapd	%xmm12, %xmm1
	addsd	%xmm10, %xmm3
	mulsd	%xmm6, %xmm4
	movl	%ebx, %eax
	divsd	%xmm0, %xmm1
	movapd	%xmm7, %xmm8
	imull	%r12d
	movl	%ebx, %eax
	addsd	%xmm14, %xmm2
	sarl	$31, %eax
	addsd	%xmm9, %xmm3
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	xorpd	%xmm11, %xmm2
	divsd	%xmm5, %xmm3
	divsd	%xmm5, %xmm2
	mulsd	%xmm13, %xmm6
	mulsd	%xmm1, %xmm8
	addsd	%xmm2, %xmm4
	movapd	%xmm6, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	%xmm8, %xmm4
	mulsd	%xmm8, %xmm2
	movsd	%xmm4, 112(%rcx)
	movsd	%xmm2, 120(%rcx)
	je	.L167
.L148:
	addl	$1, %ebx
	addq	$160, %rbp
	cmpl	%ebx, GV+1020(%rip)
	jle	.L149
	movsd	GV+1096(%rip), %xmm5
.L165:
	movq	%rbp, %rcx
	addq	gp(%rip), %rcx
	movsd	GV+1104(%rip), %xmm6
	movsd	56(%rcx), %xmm0
	movsd	(%rcx), %xmm4
	ucomisd	GV+1040(%rip), %xmm0
	movsd	64(%rcx), %xmm15
	movsd	80(%rcx), %xmm2
	movsd	96(%rcx), %xmm14
	movsd	8(%rcx), %xmm13
	movsd	72(%rcx), %xmm10
	movsd	88(%rcx), %xmm3
	movsd	104(%rcx), %xmm9
	ja	.L168
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	jmp	.L148
.L167:
	movl	%ebx, %edx
	movl	$.LC60, %esi
	movl	$1, %edi
	movl	$2, %eax
	movsd	%xmm12, 24(%rsp)
	movapd	%xmm11, 32(%rsp)
	movsd	%xmm7, 16(%rsp)
	call	__printf_chk
	movsd	16(%rsp), %xmm7
	movsd	24(%rsp), %xmm12
	movapd	32(%rsp), %xmm11
	jmp	.L148
.L149:
	movl	$.LC57, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbx
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %rbp
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L145
	movq	gp(%rip), %r9
	subl	$1, %eax
	movq	%rbx, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	160(%r9), %rdx
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L153
.L169:
	addq	$160, %rdx
.L153:
	movsd	112(%r9), %xmm0
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	120(%r9), %xmm0
	movq	%rdx, %r9
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L169
.L145:
	movl	GV+1016(%rip), %edi
	movl	$1, %r9d
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %r12
	call	fftw_execute
	movl	$.LC61, %edi
	call	puts
	movl	$.LC37, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L152
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rsi
.L156:
	movsd	GV+1064(%rip), %xmm0
	movq	(%r15,%rdx), %rcx
	mulsd	GV+1072(%rip), %xmm0
	mulsd	0(%rbp,%rdx,2), %xmm0
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%rcx)
	jne	.L156
.L152:
	movq	%r12, %rdi
	xorl	%r14d, %r14d
	call	fftw_destroy_plan
	movq	%rbx, %rdi
	call	free
	movq	%rbp, %rdi
	call	fftw_free
	movl	$.LC62, %edi
	call	puts
	movl	$.LC63, %edi
	call	puts
	movl	$.LC64, %edi
	call	puts
	movl	$.LC63, %edi
	call	puts
	movl	$.LC47, %esi
	movl	$.LC65, %edi
	call	fopen
	movl	$1, %edx
	movq	%rax, %r12
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+1008, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1112, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1120, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fwrite
	movq	%r12, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1080, %edi
	call	fwrite
	movl	GV+1016(%rip), %ebp
	testl	%ebp, %ebp
	jle	.L155
.L163:
	cvtsi2sd	%r14d, %xmm6
	xorl	%r13d, %r13d
	movsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L160:
	cvtsi2sd	%r13d, %xmm7
	xorl	%ebx, %ebx
	movsd	%xmm7, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L159:
	movsd	GV+1032(%rip), %xmm1
	leaq	48(%rsp), %rdi
	movq	%r12, %rcx
	movsd	24(%rsp), %xmm0
	movl	$3, %edx
	movl	$8, %esi
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)
	movsd	16(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)
	cvtsi2sd	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)
	call	fwrite
	movl	%r14d, %eax
	movq	%r12, %rcx
	movl	$1, %edx
	imull	%ebp, %eax
	movl	$8, %esi
	addl	%r13d, %eax
	imull	%eax, %ebp
	addl	%ebx, %ebp
	addl	$1, %ebx
	movslq	%ebp, %rbp
	movq	(%r15,%rbp,8), %rdi
	call	fwrite
	movl	GV+1016(%rip), %ebp
	cmpl	%ebx, %ebp
	jg	.L159
	addl	$1, %r13d
	cmpl	%r13d, %ebp
	jle	.L158
	testl	%ebp, %ebp
	jg	.L160
.L158:
	addl	$1, %r14d
	cmpl	%r14d, %ebp
	jle	.L155
	testl	%ebp, %ebp
	jg	.L163
.L155:
	movq	%r12, %rdi
	call	fclose
	movq	%r15, %rdi
	call	free
	addq	$88, %rsp
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
	.size	potential_dot, .-potential_dot
	.section	.rodata.str1.1
.LC68:
	.string	"First approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC69:
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
	movsd	.LC66(%rip), %xmm1
	call	pow
	mulsd	GV+1120(%rip), %xmm0
	movsd	.LC67(%rip), %xmm1
	addsd	.LC7(%rip), %xmm0
	call	pow
	movsd	.LC7(%rip), %xmm2
	movl	$.LC22, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%rsp)
	call	puts
	movl	$.LC68, %edi
	call	puts
	movsd	8(%rsp), %xmm1
	movl	$.LC69, %esi
	movsd	GV+1120(%rip), %xmm0
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	growth_rate_OmegaL0, .-growth_rate_OmegaL0
	.section	.rodata.str1.1
.LC71:
	.string	"Second approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"mu=%lf, OmegaM(a)=%lf, growth rate f(t)=%lf\n"
	.text
	.p2align 4,,15
	.globl	growth_rate_OmegaM
	.type	growth_rate_OmegaM, @function
growth_rate_OmegaM:
.LFB51:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 8(%rsp)
	movsd	GV+1120(%rip), %xmm0
	movsd	.LC70(%rip), %xmm1
	divsd	GV+1112(%rip), %xmm0
	call	pow
	movsd	8(%rsp), %xmm3
	movsd	GV+1112(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	movsd	.LC66(%rip), %xmm1
	movsd	%xmm4, 8(%rsp)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 24(%rsp)
	call	pow
	addsd	.LC7(%rip), %xmm0
	movsd	8(%rsp), %xmm4
	movsd	.LC67(%rip), %xmm1
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 16(%rsp)
	call	pow
	movl	$.LC22, %edi
	movsd	%xmm0, 8(%rsp)
	call	puts
	movl	$.LC71, %edi
	call	puts
	movsd	16(%rsp), %xmm4
	movl	$.LC72, %esi
	movsd	24(%rsp), %xmm3
	movl	$1, %edi
	movsd	8(%rsp), %xmm2
	movl	$3, %eax
	movapd	%xmm3, %xmm0
	movapd	%xmm4, %xmm1
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	growth_rate_OmegaM, .-growth_rate_OmegaM
	.section	.rodata.str1.8
	.align 8
.LC73:
	.string	"GR_OmegaL0=%lf GR_OmegaM=%lf a_SF=%lf\n"
	.align 8
.LC74:
	.string	"Time derivative of potential in k-space saved!"
	.align 8
.LC75:
	.string	"FFT_pot_dot lineal code finished!"
	.align 8
.LC76:
	.string	"Saving data in binary file for both approximations"
	.align 8
.LC77:
	.string	"./../../Processed_data/PotDot_app1.bin"
	.align 8
.LC78:
	.string	"./../../Processed_data/PotDot_app2.bin"
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
	movq	%rdi, %r14
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
	movsd	.LC66(%rip), %xmm1
	movq	%rsi, 32(%rsp)
	movsd	GV+1096(%rip), %xmm0
	call	pow
	mulsd	GV+1120(%rip), %xmm0
	movsd	.LC67(%rip), %xmm1
	addsd	.LC7(%rip), %xmm0
	call	pow
	movsd	.LC7(%rip), %xmm2
	movl	$.LC22, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%rsp)
	call	puts
	movl	$.LC68, %edi
	call	puts
	movsd	16(%rsp), %xmm1
	movl	$.LC69, %esi
	movsd	GV+1120(%rip), %xmm0
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	GV+1120(%rip), %xmm0
	movsd	.LC7(%rip), %xmm4
	divsd	GV+1112(%rip), %xmm0
	subsd	16(%rsp), %xmm4
	movsd	%xmm4, 56(%rsp)
	movsd	GV+1096(%rip), %xmm3
	movsd	.LC70(%rip), %xmm1
	movsd	%xmm3, 16(%rsp)
	call	pow
	movsd	16(%rsp), %xmm3
	movsd	GV+1112(%rip), %xmm5
	mulsd	%xmm0, %xmm3
	movsd	.LC66(%rip), %xmm1
	movsd	%xmm5, 16(%rsp)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rsp)
	call	pow
	addsd	.LC7(%rip), %xmm0
	movsd	16(%rsp), %xmm5
	movsd	.LC67(%rip), %xmm1
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	pow
	movl	$.LC22, %edi
	movsd	%xmm0, 16(%rsp)
	call	puts
	movl	$.LC71, %edi
	call	puts
	movsd	24(%rsp), %xmm5
	movl	$.LC72, %esi
	movsd	40(%rsp), %xmm3
	movl	$1, %edi
	movsd	16(%rsp), %xmm2
	movl	$3, %eax
	movapd	%xmm5, %xmm1
	movapd	%xmm3, %xmm0
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	GV+1120(%rip), %xmm0
	movsd	.LC7(%rip), %xmm3
	divsd	GV+1112(%rip), %xmm0
	subsd	16(%rsp), %xmm3
	movsd	%xmm3, 48(%rsp)
	movsd	GV+1096(%rip), %xmm5
	movsd	.LC70(%rip), %xmm1
	movsd	%xmm5, 16(%rsp)
	call	pow
	movsd	16(%rsp), %xmm5
	movsd	GV+1112(%rip), %xmm6
	mulsd	%xmm0, %xmm5
	movsd	.LC66(%rip), %xmm1
	movsd	%xmm6, 16(%rsp)
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 40(%rsp)
	call	pow
	addsd	.LC7(%rip), %xmm0
	movsd	16(%rsp), %xmm6
	movsd	.LC67(%rip), %xmm1
	divsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 16(%rsp)
	call	pow
	movl	$.LC22, %edi
	movsd	%xmm0, 24(%rsp)
	call	puts
	movl	$.LC71, %edi
	call	puts
	movsd	40(%rsp), %xmm5
	movl	$.LC72, %esi
	movsd	16(%rsp), %xmm6
	movl	$1, %edi
	movapd	%xmm5, %xmm0
	movl	$3, %eax
	movapd	%xmm6, %xmm1
	movsd	24(%rsp), %xmm2
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	GV+1096(%rip), %xmm2
	movsd	.LC66(%rip), %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rsp)
	call	pow
	mulsd	GV+1120(%rip), %xmm0
	movsd	.LC67(%rip), %xmm1
	addsd	.LC7(%rip), %xmm0
	call	pow
	movsd	.LC7(%rip), %xmm2
	movl	$.LC22, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%rsp)
	call	puts
	movl	$.LC68, %edi
	call	puts
	movsd	16(%rsp), %xmm1
	movl	$.LC69, %esi
	movsd	GV+1120(%rip), %xmm0
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	40(%rsp), %xmm2
	movl	$.LC73, %esi
	movsd	16(%rsp), %xmm0
	movl	$1, %edi
	movsd	24(%rsp), %xmm1
	movl	$3, %eax
	call	__printf_chk
	movl	$.LC42, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm0
	movl	GV+1020(%rip), %ecx
	movsd	.LC38(%rip), %xmm2
	xorl	%edx, %edx
	movsd	GV+1040(%rip), %xmm5
	movq	gp(%rip), %rax
	mulsd	%xmm0, %xmm2
	testl	%ecx, %ecx
	movsd	.LC58(%rip), %xmm7
	movsd	48(%rsp), %xmm3
	movsd	56(%rsp), %xmm4
	mulsd	%xmm0, %xmm2
	movsd	GV+1104(%rip), %xmm0
	divsd	GV+1096(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	mulsd	GV+1112(%rip), %xmm2
	jg	.L202
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L205:
	movapd	%xmm7, %xmm6
	addl	$1, %edx
	movsd	(%rax), %xmm1
	addq	$160, %rax
	divsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	-152(%rax), %xmm0
	movapd	%xmm1, %xmm6
	mulsd	%xmm3, %xmm1
	mulsd	%xmm4, %xmm6
	movsd	%xmm1, -16(%rax)
	movsd	%xmm6, -32(%rax)
	movapd	%xmm0, %xmm6
	mulsd	%xmm3, %xmm0
	mulsd	%xmm4, %xmm6
	movsd	%xmm0, -8(%rax)
	movsd	%xmm6, -24(%rax)
	cmpl	%ecx, %edx
	jge	.L181
.L202:
	movsd	56(%rax), %xmm0
	ucomisd	%xmm5, %xmm0
	ja	.L205
	addl	$1, %edx
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	addq	$160, %rax
	cmpl	%ecx, %edx
	jl	.L202
.L181:
	movl	$.LC74, %edi
	call	puts
	movl	$.LC31, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbx
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %rbp
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L177
	movq	gp(%rip), %rcx
	subl	$1, %eax
	movq	%rbx, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	160(%rcx), %rdx
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L185
.L206:
	addq	$160, %rdx
.L185:
	movsd	128(%rcx), %xmm0
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	136(%rcx), %xmm0
	movq	%rdx, %rcx
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L206
.L177:
	movl	GV+1016(%rip), %edi
	movl	$1, %r9d
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC61, %edi
	call	puts
	movl	$.LC37, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L184
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rcx
.L188:
	movsd	GV+1064(%rip), %xmm0
	movq	(%r14,%rdx), %rax
	mulsd	GV+1072(%rip), %xmm0
	mulsd	0(%rbp,%rdx,2), %xmm0
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jne	.L188
.L184:
	movq	%rbx, %rdi
	call	free
	movq	%rbp, %rdi
	call	fftw_free
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbx
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %rbp
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L187
	movq	gp(%rip), %rcx
	subl	$1, %eax
	movq	%rbx, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	160(%rcx), %rdx
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L191
.L207:
	addq	$160, %rdx
.L191:
	movsd	144(%rcx), %xmm0
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	152(%rcx), %xmm0
	movq	%rdx, %rcx
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L207
.L187:
	movl	GV+1016(%rip), %edi
	movl	$1, %r9d
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %r12
	call	fftw_execute
	movl	$.LC61, %edi
	call	puts
	movl	$.LC37, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L190
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rcx
.L194:
	movsd	GV+1064(%rip), %xmm0
	movq	32(%rsp), %rax
	mulsd	GV+1072(%rip), %xmm0
	movq	(%rax,%rdx), %rax
	mulsd	0(%rbp,%rdx,2), %xmm0
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jne	.L194
.L190:
	movq	%rbx, %rdi
	call	free
	movq	%rbp, %rdi
	call	fftw_free
	movq	%r12, %rdi
	call	fftw_destroy_plan
	movl	$.LC75, %edi
	call	puts
	movl	$.LC63, %edi
	call	puts
	movl	$.LC76, %edi
	call	puts
	movl	$.LC63, %edi
	call	puts
	movl	$.LC47, %esi
	movl	$.LC77, %edi
	call	fopen
	movl	$.LC47, %esi
	movq	%rax, %rbp
	movl	$.LC78, %edi
	call	fopen
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1008, %edi
	movq	%rax, %rbx
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1112, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1120, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1080, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1008, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1112, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1120, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1080, %edi
	call	fwrite
	movl	GV+1016(%rip), %r13d
	movl	$0, 24(%rsp)
	testl	%r13d, %r13d
	jle	.L193
.L201:
	cvtsi2sd	24(%rsp), %xmm4
	movsd	%xmm4, 40(%rsp)
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L198:
	cvtsi2sd	%r12d, %xmm7
	xorl	%r15d, %r15d
	movsd	%xmm7, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L197:
	movsd	GV+1032(%rip), %xmm1
	leaq	64(%rsp), %rdi
	movq	%rbp, %rcx
	movsd	40(%rsp), %xmm0
	movl	$3, %edx
	movl	$8, %esi
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)
	movsd	16(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	cvtsi2sd	%r15d, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)
	call	fwrite
	movl	24(%rsp), %eax
	movl	%r13d, %r9d
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	imull	%r13d, %eax
	addl	%r12d, %eax
	imull	%eax, %r9d
	addl	%r15d, %r9d
	addl	$1, %r15d
	movslq	%r9d, %r13
	movq	(%r14,%r13,8), %rdi
	call	fwrite
	leaq	64(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$3, %edx
	movl	$8, %esi
	call	fwrite
	movq	32(%rsp), %rax
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movq	(%rax,%r13,8), %rdi
	call	fwrite
	movl	GV+1016(%rip), %r13d
	cmpl	%r15d, %r13d
	jg	.L197
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jle	.L196
	testl	%r13d, %r13d
	jg	.L198
.L196:
	addl	$1, 24(%rsp)
	cmpl	24(%rsp), %r13d
	jle	.L193
	testl	%r13d, %r13d
	jg	.L201
.L193:
	movq	%rbp, %rdi
	call	fclose
	movq	%rbx, %rdi
	call	fclose
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
.LC79:
	.string	"Error: Incomplete number of parameters. Execute as follows:"
	.section	.rodata.str1.1
.LC80:
	.string	"%s Parameters_file\n"
.LC82:
	.string	"Variables are ready to use!"
	.section	.rodata.str1.8
	.align 8
.LC83:
	.string	"Ascii data file has been read succesfully!"
	.section	.rodata.str1.1
.LC84:
	.string	"Simulation parameters"
	.section	.rodata.str1.8
	.align 8
.LC85:
	.string	"GV.NCELLS:%12d GV.NTOTALCELLS:%12d\nGV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n"
	.align 8
.LC86:
	.string	"----------------------------------------------------------------"
	.section	.rodata.str1.1
.LC87:
	.string	"Cosmological parameters"
	.section	.rodata.str1.8
	.align 8
.LC88:
	.string	"GV.z_RS=%lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n"
	.align 8
.LC90:
	.string	"r2k norm = %lf, k2r norm = %lf\n"
	.section	.rodata.str1.1
.LC91:
	.string	"r2k 1D = %lf\n"
	.section	.rodata.str1.8
	.align 8
.LC92:
	.string	"FFT of density contrast finished!"
	.align 8
.LC93:
	.string	"FFT of gravitational potential finished!"
	.align 8
.LC94:
	.string	"FFT of time derivative of gravitational potential in linear approximation finished!"
	.align 8
.LC95:
	.string	"All FFT transforms have finished succesfully!"
	.align 8
.LC96:
	.string	"All codes have run succesfully!"
	.section	.rodata.str1.1
.LC97:
	.string	"FFT code finished!"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB53:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$1, %edi
	jle	.L224
	movq	8(%rsi), %rdi
	call	read_parameters
	movl	GV+1016(%rip), %eax
	movsd	.LC81(%rip), %xmm5
	movl	$.LC82, %edi
	movsd	%xmm5, GV+1040(%rip)
	movl	%eax, %edx
	imull	%eax, %edx
	imull	%edx, %eax
	movl	%eax, GV+1020(%rip)
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	GV+1020(%rip), %ebp
	movslq	%ebp, %rbx
	leaq	(%rbx,%rbx,4), %rdi
	salq	$5, %rdi
	call	malloc
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rax, gp(%rip)
	call	calloc
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rax, %r13
	call	calloc
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rax, %r14
	xorl	%ebx, %ebx
	call	calloc
	testl	%ebp, %ebp
	movq	%rax, %r12
	jle	.L217
	.p2align 4,,10
	.p2align 3
.L220:
	movl	$8, %esi
	movl	$2, %edi
	call	calloc
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpl	%ebx, %ebp
	jg	.L220
.L217:
	xorl	%edx, %edx
	movq	%r13, %rsi
	movl	$GV, %edi
	call	read_data
	movl	$.LC83, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movsd	.LC7(%rip), %xmm0
	movsd	GV+1080(%rip), %xmm6
	addsd	GV+1088(%rip), %xmm0
	movsd	GV+1120(%rip), %xmm7
	movsd	GV+1112(%rip), %xmm3
	movsd	.LC66(%rip), %xmm1
	movsd	%xmm6, 8(%rsp)
	movsd	%xmm7, 16(%rsp)
	movsd	%xmm3, 24(%rsp)
	call	pow
	mulsd	24(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L225
.L211:
	mulsd	8(%rsp), %xmm1
	movl	$.LC84, %edi
	movsd	GV+1008(%rip), %xmm0
	movsd	%xmm1, GV+1104(%rip)
	cvtsi2sd	GV+1016(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+1032(%rip)
	call	puts
	movl	GV+1020(%rip), %ecx
	movl	$.LC85, %esi
	movl	$1, %edi
	movl	GV+1016(%rip), %edx
	movsd	GV+1032(%rip), %xmm1
	movsd	GV+1008(%rip), %xmm0
	movl	$2, %eax
	call	__printf_chk
	movl	$.LC86, %edi
	call	puts
	movl	$.LC87, %edi
	call	puts
	movsd	GV+1104(%rip), %xmm2
	movl	$.LC88, %esi
	movsd	GV+1080(%rip), %xmm1
	movl	$1, %edi
	movsd	GV+1088(%rip), %xmm0
	movl	$4, %eax
	movsd	GV+1096(%rip), %xmm3
	call	__printf_chk
	movl	$.LC22, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm0
	movsd	.LC7(%rip), %xmm4
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sd	GV+1020(%rip), %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm1, %xmm4
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	divsd	%xmm0, %xmm2
	movsd	%xmm4, GV+1056(%rip)
	movsd	%xmm2, GV+1048(%rip)
	jp	.L226
.L213:
	movsd	.LC7(%rip), %xmm0
	movl	$.LC90, %esi
	movl	$1, %edi
	movsd	.LC89(%rip), %xmm5
	movl	$2, %eax
	divsd	%xmm1, %xmm0
	movsd	%xmm5, GV+1072(%rip)
	movsd	GV+1056(%rip), %xmm1
	movsd	%xmm0, GV+1064(%rip)
	movsd	GV+1048(%rip), %xmm0
	call	__printf_chk
	cvtsi2sd	GV+1016(%rip), %xmm1
	movsd	GV+1008(%rip), %xmm0
	movl	$.LC91, %esi
	movl	$1, %edi
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	call	__printf_chk
	movq	%r13, %rdi
	call	transform
	movq	%r13, %rdi
	call	free
	movl	$.LC92, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	potential
	movl	$.LC93, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	GV+1020(%rip), %ebp
	movl	$8, %esi
	movslq	%ebp, %rbx
	movq	%rbx, %rdi
	call	calloc
	movq	%rbx, %rdi
	movl	$8, %esi
	movq	%rax, %r12
	xorl	%ebx, %ebx
	call	calloc
	testl	%ebp, %ebp
	movq	%rax, %r13
	jle	.L216
	.p2align 4,,10
	.p2align 3
.L221:
	movl	$8, %esi
	movl	$2, %edi
	call	calloc
	movl	$8, %esi
	movq	%rax, (%r12,%rbx,8)
	movl	$2, %edi
	call	calloc
	movq	%rax, 0(%r13,%rbx,8)
	addq	$1, %rbx
	cmpl	%ebx, %ebp
	jg	.L221
.L216:
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	potential_dot_linear
	movl	$.LC94, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	$.LC95, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movq	gp(%rip), %rdi
	call	free
	movl	$.LC22, %edi
	call	puts
	movl	$.LC96, %edi
	call	puts
	movl	$.LC97, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	addq	$32, %rsp
	.cfi_remember_state
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
.L224:
	.cfi_restore_state
	movl	$.LC79, %edi
	movq	%rsi, 8(%rsp)
	call	puts
	movq	8(%rsp), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	(%rsi), %rdx
	movl	$.LC80, %esi
	call	__printf_chk
	xorl	%edi, %edi
	call	exit
.L226:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L213
.L225:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L211
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.comm	GV,1136,32
	.comm	gp,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC24:
	.long	1413754136
	.long	1075388923
	.align 8
.LC25:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC35:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC38:
	.long	0
	.long	-1074266112
	.align 8
.LC58:
	.long	0
	.long	-1074790400
	.section	.rodata.cst16
	.align 16
.LC59:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC66:
	.long	0
	.long	1074266112
	.align 8
.LC67:
	.long	858993459
	.long	1071854387
	.align 8
.LC70:
	.long	1431655765
	.long	1070945621
	.align 8
.LC81:
	.long	3271095129
	.long	27618847
	.align 8
.LC89:
	.long	3947222911
	.long	1064338245
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
