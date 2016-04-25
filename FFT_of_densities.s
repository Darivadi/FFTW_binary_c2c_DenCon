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
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"  * The file '%s' has been loaded!\n"
	.section	.rodata.str1.1
.LC7:
	.string	"File to read is %s "
.LC8:
	.string	"with %d cells per axis\n"
.LC9:
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
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
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
	movq	%rbx, %r9
	movq	%rbx, %r8
	movl	$.LC0, %ecx
	movl	$1000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__sprintf_chk
	leaq	1008(%rsp), %rdi
	call	system
	leaq	1008(%rsp), %rdi
	movq	%rbx, %r8
	movl	$.LC3, %ecx
	movl	$1000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__sprintf_chk
	leaq	1008(%rsp), %rdi
	movl	$.LC1, %esi
	call	fopen
	movl	$GV+1016, %edx
	movq	%rax, %rbp
	movq	%rax, %rdi
	movl	$.LC4, %esi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV, %edx
	movl	$.LC5, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movq	%rbp, %rdi
	call	fclose
	movq	%rbx, %rdx
	movl	$.LC6, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$GV, %edx
	movl	$.LC7, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	GV+1016(%rip), %edx
	movl	$.LC8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	%rbx, %r8
	movl	$.LC9, %ecx
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
	movq	%rbx, %rdx
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
.LC11:
	.string	"-----------------------------------------------"
	.section	.rodata.str1.1
.LC12:
	.string	"Cosmological parameters:"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"OmegaM0=%lf OmegaL0=%lf redshift=%lf HubbleParam=%lf\n"
	.section	.rodata.str1.1
.LC14:
	.string	"Simulation parameters:"
.LC15:
	.string	"L=%lf\n"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"Reading m=%d x=%lf y=%lf z=%lf px=%lf py=%lf pz=%lf DenCon=%lf\n"
	.text
	.p2align 4,,15
	.globl	read_binary
	.type	read_binary, @function
read_binary:
.LFB44:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	movl	$.LC1, %esi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	movl	$GV, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	call	fopen
	movl	$1, %edx
	movq	%rax, %rbp
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$GV+1008, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1112, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1120, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1080, %edi
	call	fread
	movsd	.LC10(%rip), %xmm0
	movl	$.LC11, %edi
	movsd	GV+1088(%rip), %xmm1
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+1096(%rip)
	call	puts
	movl	$.LC12, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm3
	movl	$.LC13, %esi
	movsd	GV+1088(%rip), %xmm2
	movl	$1, %edi
	movsd	GV+1120(%rip), %xmm1
	movl	$4, %eax
	movsd	GV+1112(%rip), %xmm0
	call	__printf_chk
	movl	$.LC11, %edi
	call	puts
	movl	$.LC14, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm0
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC11, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L16
	xorl	%ebx, %ebx
	movl	$1801439851, %r14d
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$1, %ebx
	addq	$8, %r13
	addq	$8, %r12
	cmpl	%ebx, GV+1020(%rip)
	jle	.L16
.L17:
	movq	%rbp, %rcx
	movl	$3, %edx
	movl	$8, %esi
	movq	%rsp, %rdi
	call	fread
	movq	0(%r13), %rdi
	movq	%rbp, %rcx
	movl	$3, %edx
	movl	$8, %esi
	call	fread
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$8, %esi
	movq	%r12, %rdi
	call	fread
	movl	%ebx, %eax
	imull	%r14d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	jne	.L15
	movq	0(%r13), %rax
	movsd	(%r12), %xmm6
	movsd	16(%rsp), %xmm2
	movl	%ebx, %edx
	movsd	8(%rsp), %xmm1
	movl	$.LC16, %esi
	movsd	16(%rax), %xmm5
	movl	$1, %edi
	movsd	8(%rax), %xmm4
	movsd	(%rax), %xmm3
	movl	$7, %eax
	movsd	(%rsp), %xmm0
	call	__printf_chk
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%rbp, %rdi
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
.LFE44:
	.size	read_binary, .-read_binary
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Input of contrast density sorted in C-order (row-major order)!"
	.align 8
.LC19:
	.string	"-----------------------------------------------------------------"
	.align 8
.LC20:
	.string	"FFT: density contrast r2k finished!"
	.section	.rodata.str1.1
.LC21:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"./../../Processed_data/k_module_256.bin"
	.section	.rodata.str1.1
.LC25:
	.string	"k vectors computed!"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"------------------------------------------------"
	.align 8
.LC27:
	.string	"Computing density contrast in k space with CIC weight-function!"
	.align 8
.LC28:
	.string	"Density contrast in k-space with CIC weight fn ready!!"
	.section	.rodata.str1.1
.LC29:
	.string	"Destroying plans!"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"--------------------------------------------------"
	.section	.rodata.str1.1
.LC31:
	.string	"plan_r2k destroyed!"
.LC32:
	.string	"Freeing up memory!"
.LC33:
	.string	"FFT_transform code finished!"
	.text
	.p2align 4,,15
	.globl	transform
	.type	transform, @function
transform:
.LFB45:
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, 88(%rsp)
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, 96(%rsp)
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L24
	movq	88(%rsp), %rsi
	subl	$1, %eax
	leaq	8(,%rax,8), %rdx
	xorl	%eax, %eax
.L25:
	movsd	(%rbx,%rax), %xmm0
	movq	$0, 8(%rsi,%rax,2)
	movsd	%xmm0, (%rsi,%rax,2)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L25
.L24:
	movl	$.LC18, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	GV+1016(%rip), %edi
	movq	88(%rsp), %rcx
	movl	$-1, %r9d
	movq	96(%rsp), %r8
	movl	$64, (%rsp)
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, 104(%rsp)
	call	fftw_execute
	movl	$.LC20, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	GV+1020(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L23
	movsd	GV+1048(%rip), %xmm0
	movq	96(%rsp), %rbx
	subl	$1, %ecx
	salq	$4, %rcx
	movq	gp(%rip), %rdx
	mulsd	GV+1064(%rip), %xmm0
	leaq	16(%rbx,%rcx), %rcx
	movq	%rbx, %rax
.L28:
	movsd	(%rax), %xmm1
	addq	$16, %rax
	addq	$160, %rdx
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rdx)
	movsd	-8(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rdx)
	cmpq	%rcx, %rax
	jne	.L28
.L23:
	movl	$.LC21, %esi
	movl	$.LC22, %edi
	xorl	%r14d, %r14d
	call	fopen
	movl	GV+1016(%rip), %edx
	movq	%rax, %rbp
	movsd	.LC23(%rip), %xmm4
	testl	%edx, %edx
	jle	.L27
.L52:
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L40:
	xorl	%r12d, %r12d
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L69:
	cvtsi2sd	%r14d, %xmm0
	cmpl	%r13d, %eax
	mulsd	%xmm4, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 16(%rcx)
	jl	.L31
.L70:
	cvtsi2sd	%r13d, %xmm2
	cmpl	%r12d, %eax
	mulsd	%xmm4, %xmm2
	divsd	%xmm3, %xmm2
	movsd	%xmm2, 24(%rcx)
	jl	.L33
.L71:
	cvtsi2sd	%r12d, %xmm1
	mulsd	%xmm4, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 32(%rcx)
.L34:
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	movsd	%xmm0, 112(%rsp)
	jp	.L67
.L35:
	addq	%rbx, %r15
	movsd	.LC24(%rip), %xmm0
	movsd	16(%r15), %xmm6
	addl	$1, %r12d
	movsd	%xmm1, 40(%rcx)
	mulsd	%xmm6, %xmm0
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm6, 48(%rsp)
	call	sin
	movsd	24(%r15), %xmm5
	movsd	%xmm0, 80(%rsp)
	movsd	.LC24(%rip), %xmm0
	movsd	%xmm5, 24(%rsp)
	mulsd	%xmm5, %xmm0
	call	sin
	movsd	32(%r15), %xmm3
	movsd	%xmm0, 16(%rsp)
	movsd	.LC24(%rip), %xmm0
	movsd	%xmm3, 32(%rsp)
	mulsd	%xmm3, %xmm0
	call	sin
	movsd	80(%rsp), %xmm1
	movsd	16(%rsp), %xmm7
	mulsd	%xmm1, %xmm1
	mulsd	%xmm7, %xmm7
	movsd	GV+1032(%rip), %xmm6
	mulsd	%xmm0, %xmm0
	movapd	%xmm6, %xmm4
	movsd	48(%rsp), %xmm6
	addsd	%xmm7, %xmm1
	movsd	%xmm4, 16(%rsp)
	addsd	%xmm0, %xmm1
	movapd	%xmm6, %xmm0
	mulsd	%xmm4, %xmm0
	movsd	%xmm1, 120(%rsp)
	call	sin
	movsd	24(%rsp), %xmm5
	movsd	%xmm0, 80(%rsp)
	mulsd	16(%rsp), %xmm5
	movapd	%xmm5, %xmm0
	call	sin
	movsd	32(%rsp), %xmm3
	movsd	%xmm0, 24(%rsp)
	mulsd	16(%rsp), %xmm3
	movapd	%xmm3, %xmm0
	call	sin
	movsd	.LC10(%rip), %xmm1
	leaq	16(%r15), %rdi
	movsd	80(%rsp), %xmm2
	movq	%rbp, %rcx
	divsd	16(%rsp), %xmm1
	movl	$1, %edx
	movl	$8, %esi
	movsd	24(%rsp), %xmm5
	mulsd	%xmm2, %xmm2
	mulsd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm5, %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 56(%r15)
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$24, %rdi
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$32, %rdi
	call	fwrite
	leaq	112(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	call	fwrite
	leaq	120(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	call	fwrite
	addq	gp(%rip), %rbx
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$8, %esi
	leaq	56(%rbx), %rdi
	call	fwrite
	movl	GV+1016(%rip), %edx
	movsd	64(%rsp), %xmm4
	cmpl	%r12d, %edx
	jle	.L68
.L39:
	movl	%r14d, %ecx
	movl	%edx, %eax
	movq	gp(%rip), %r15
	imull	%edx, %ecx
	shrl	$31, %eax
	addl	%edx, %eax
	movsd	GV+1008(%rip), %xmm3
	sarl	%eax
	addl	%r13d, %ecx
	imull	%edx, %ecx
	addl	%r12d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,4), %rbx
	salq	$5, %rbx
	cmpl	%eax, %r14d
	leaq	(%r15,%rbx), %rcx
	jle	.L69
	movl	%r14d, %esi
	subl	%edx, %esi
	cmpl	%r13d, %eax
	cvtsi2sd	%esi, %xmm0
	mulsd	%xmm4, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 16(%rcx)
	jge	.L70
.L31:
	movl	%r13d, %esi
	subl	%edx, %esi
	cmpl	%r12d, %eax
	cvtsi2sd	%esi, %xmm2
	mulsd	%xmm4, %xmm2
	divsd	%xmm3, %xmm2
	movsd	%xmm2, 24(%rcx)
	jge	.L71
.L33:
	movl	%r12d, %eax
	subl	%edx, %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	%xmm4, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 32(%rcx)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L68:
	addl	$1, %r13d
	cmpl	%r13d, %edx
	jle	.L38
	testl	%edx, %edx
	jg	.L40
.L38:
	addl	$1, %r14d
	cmpl	%r14d, %edx
	jle	.L27
	testl	%edx, %edx
	jg	.L52
.L27:
	movq	%rbp, %rdi
	call	fclose
	movl	$.LC25, %edi
	call	puts
	movl	$.LC26, %edi
	call	puts
	movl	$.LC27, %edi
	call	puts
	movl	$.LC26, %edi
	call	puts
	movl	GV+1020(%rip), %edx
	testl	%edx, %edx
	jle	.L50
	movq	gp(%rip), %rbx
	subl	$1, %edx
	movl	GV+1016(%rip), %ebp
	leaq	(%rdx,%rdx,4), %r15
	movsd	GV+1008(%rip), %xmm7
	movsd	GV+1040(%rip), %xmm4
	leaq	160(%rbx), %r14
	salq	$5, %r15
	movsd	%xmm7, 16(%rsp)
	movsd	.LC34(%rip), %xmm3
	addq	%r14, %r15
	jmp	.L51
.L72:
	cvtsi2sd	%ebp, %xmm0
	mulsd	16(%rsp), %xmm5
	movapd	%xmm3, 64(%rsp)
	movsd	%xmm4, 48(%rsp)
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 80(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	sin
	movsd	24(%rsp), %xmm5
	movsd	80(%rsp), %xmm2
	divsd	%xmm5, %xmm0
	movapd	64(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	48(%rsp), %xmm4
	mulsd	%xmm0, %xmm0
.L46:
	mulsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 48(%rbx)
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L65
	movsd	(%rbx), %xmm0
	movsd	8(%rbx), %xmm2
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
.L48:
	cmpq	%r15, %r14
	movsd	%xmm2, 8(%rbx)
	movsd	%xmm0, (%rbx)
	movq	%r14, %rbx
	je	.L50
	addq	$160, %r14
.L51:
	movsd	16(%rbx), %xmm1
	movsd	.LC10(%rip), %xmm2
	movapd	%xmm1, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L42
	cvtsi2sd	%ebp, %xmm0
	mulsd	16(%rsp), %xmm1
	movapd	%xmm3, 32(%rsp)
	movsd	%xmm4, 80(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 24(%rsp)
	call	sin
	movsd	24(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	movsd	80(%rsp), %xmm4
	movapd	32(%rsp), %xmm3
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
.L42:
	movsd	24(%rbx), %xmm5
	movsd	.LC10(%rip), %xmm1
	movapd	%xmm5, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L44
	cvtsi2sd	%ebp, %xmm0
	mulsd	16(%rsp), %xmm5
	movapd	%xmm3, 48(%rsp)
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm2, 80(%rsp)
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	sin
	movsd	24(%rsp), %xmm5
	movapd	%xmm0, %xmm1
	movsd	80(%rsp), %xmm2
	movsd	32(%rsp), %xmm4
	divsd	%xmm5, %xmm1
	movapd	48(%rsp), %xmm3
	mulsd	%xmm1, %xmm1
.L44:
	movsd	32(%rbx), %xmm5
	movapd	%xmm5, %xmm0
	andpd	%xmm3, %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L72
	movsd	.LC10(%rip), %xmm0
	jmp	.L46
.L65:
	xorpd	%xmm2, %xmm2
	movapd	%xmm2, %xmm0
	jmp	.L48
.L50:
	movl	$.LC28, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	$.LC29, %edi
	call	puts
	movl	$.LC30, %edi
	call	puts
	movq	104(%rsp), %rdi
	call	fftw_destroy_plan
	movl	$.LC31, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$.LC32, %edi
	call	puts
	movl	$.LC30, %edi
	call	puts
	movq	88(%rsp), %rdi
	call	free
	movq	96(%rsp), %rdi
	call	fftw_free
	movl	$.LC33, %edi
	call	puts
	movl	$.LC30, %edi
	call	puts
	addq	$136, %rsp
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
.L67:
	.cfi_restore_state
	movsd	%xmm4, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	sqrt
	movq	gp(%rip), %r15
	movapd	%xmm0, %xmm1
	movsd	24(%rsp), %xmm4
	movq	16(%rsp), %rcx
	jmp	.L35
	.cfi_endproc
.LFE45:
	.size	transform, .-transform
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"Computing potential in k-space"
	.align 8
.LC36:
	.string	"-----------------------------------------"
	.section	.rodata.str1.1
.LC38:
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
	.align 8
.LC47:
	.string	"./../../Processed_data/Potential.bin"
	.section	.rodata.str1.1
.LC48:
	.string	"%d %lf\n"
	.text
	.p2align 4,,15
	.globl	potential
	.type	potential, @function
potential:
.LFB46:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	movl	$.LC35, %edi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
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
	movl	$.LC36, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm3
	movl	GV+1020(%rip), %eax
	xorpd	%xmm2, %xmm2
	mulsd	%xmm3, %xmm3
	testl	%eax, %eax
	mulsd	.LC37(%rip), %xmm3
	mulsd	GV+1112(%rip), %xmm3
	divsd	GV+1096(%rip), %xmm3
	jg	.L97
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L102:
	movsd	.LC39(%rip), %xmm1
	movq	(%r12), %rdx
	movsd	(%rax), %xmm0
	divsd	56(%rax), %xmm1
	mulsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdx)
	mulsd	8(%rax), %xmm1
	movsd	%xmm1, 8(%rdx)
.L79:
	movl	%ebx, %eax
	movl	$1801439851, %edx
	imull	%edx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$21, %edx
	subl	%eax, %edx
	imull	$5000000, %edx, %edx
	cmpl	%edx, %ebx
	je	.L101
.L80:
	addl	$1, %ebx
	addq	$160, %rbp
	addq	$8, %r12
	cmpl	%ebx, GV+1020(%rip)
	jle	.L81
.L97:
	movq	%rbp, %rax
	addq	gp(%rip), %rax
	movsd	40(%rax), %xmm0
	ucomisd	GV+1040(%rip), %xmm0
	ja	.L102
	movq	(%r12), %rax
	movapd	%xmm2, %xmm0
	movapd	%xmm2, %xmm1
	movsd	%xmm2, (%rax)
	movsd	%xmm2, 8(%rax)
	jmp	.L79
.L101:
	movl	$.LC40, %esi
	movl	$1, %edi
	movl	$2, %eax
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	call	__printf_chk
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm3
	jmp	.L80
.L81:
	movl	$.LC38, %edi
	call	puts
	movl	$.LC36, %edi
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
	jle	.L76
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rcx
.L85:
	movq	24(%rsp), %rax
	movq	(%rax,%rdx), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, 0(%r13,%rdx,2)
	movsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%r13,%rdx,2)
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L85
.L76:
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
	jg	.L98
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L88:
	addl	$1, %ebx
	addq	$16, %rbp
	addq	$8, %r12
	cmpl	%esi, %ebx
	jge	.L84
.L98:
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
	jne	.L88
	movl	%ebx, %edx
	movl	$.LC48, %esi
	movl	$1, %edi
	movl	$1, %eax
	addl	$1, %ebx
	addq	$16, %rbp
	call	__printf_chk
	movl	GV+1020(%rip), %esi
	addq	$8, %r12
	cmpl	%esi, %ebx
	jl	.L98
.L84:
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
	movl	$.LC21, %esi
	movl	$.LC47, %edi
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
	jle	.L87
.L96:
	cvtsi2sd	%r13d, %xmm5
	xorl	%r12d, %r12d
	movsd	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L93:
	cvtsi2sd	%r12d, %xmm4
	xorl	%ebx, %ebx
	movsd	%xmm4, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L92:
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
	jg	.L92
	addl	$1, %r12d
	cmpl	%r12d, %r15d
	jle	.L91
	testl	%r15d, %r15d
	jg	.L93
.L91:
	addl	$1, %r13d
	cmpl	%r13d, %r15d
	jle	.L87
	testl	%r15d, %r15d
	jg	.L96
.L87:
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
.LFE46:
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
.LFB47:
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
	jle	.L107
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L108:
	movq	(%rbx,%rdx), %rcx
	movsd	(%rcx), %xmm0
	movq	$0, 8(%rbp,%rdx,2)
	movsd	%xmm0, 0(%rbp,%rdx,2)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jne	.L108
.L107:
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
	jle	.L106
	movsd	GV+1048(%rip), %xmm0
	subl	$1, %eax
	movq	gp(%rip), %rsi
	salq	$4, %rax
	movq	%r12, %rdx
	mulsd	GV+1064(%rip), %xmm0
	leaq	16(%r12,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L111:
	movsd	(%rdx), %xmm1
	addq	$16, %rdx
	addq	$160, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rsi)
	movsd	-8(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rsi)
	cmpq	%rcx, %rdx
	jne	.L111
.L106:
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
	jle	.L110
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L114:
	movq	(%rbx,%rdx), %rcx
	movsd	8(%rcx), %xmm0
	movq	$0, 8(%rbp,%rdx,2)
	movsd	%xmm0, 0(%rbp,%rdx,2)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jne	.L114
.L110:
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
	jle	.L113
	movsd	GV+1048(%rip), %xmm0
	subl	$1, %eax
	movq	gp(%rip), %rsi
	salq	$4, %rax
	movq	%r12, %rdx
	mulsd	GV+1064(%rip), %xmm0
	leaq	16(%r12,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L117:
	movsd	(%rdx), %xmm1
	addq	$16, %rdx
	addq	$160, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rsi)
	movsd	-8(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rsi)
	cmpq	%rcx, %rdx
	jne	.L117
.L113:
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
	jle	.L116
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L120:
	movq	(%rbx,%rdx), %rcx
	movsd	16(%rcx), %xmm0
	movq	$0, 8(%rbp,%rdx,2)
	movsd	%xmm0, 0(%rbp,%rdx,2)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jne	.L120
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
	movq	%rax, %rbx
	call	fftw_execute
	movl	$.LC55, %edi
	call	puts
	movl	$.LC50, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L119
	movsd	GV+1048(%rip), %xmm0
	leal	-1(%rax), %ecx
	movq	gp(%rip), %rsi
	movq	%r12, %rdx
	mulsd	GV+1064(%rip), %xmm0
	salq	$4, %rcx
	leaq	16(%r12,%rcx), %rcx
	.p2align 4,,10
	.p2align 3
.L123:
	movsd	(%rdx), %xmm1
	addq	$16, %rdx
	addq	$160, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rsi)
	movsd	-8(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rsi)
	cmpq	%rcx, %rdx
	jne	.L123
.L119:
	movq	%rbx, %rdi
	call	fftw_destroy_plan
	movq	%rbp, %rdi
	call	fftw_free
	movq	%r12, %rdi
	call	fftw_free
	movl	GV+1020(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L129
	movsd	GV+1040(%rip), %xmm10
	movq	gp(%rip), %rax
	xorl	%edx, %edx
	movsd	.LC34(%rip), %xmm9
	xorpd	%xmm1, %xmm1
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L132:
	movsd	64(%rax), %xmm5
	movsd	80(%rax), %xmm3
	movsd	96(%rax), %xmm2
	movsd	72(%rax), %xmm4
	movsd	88(%rax), %xmm8
	movsd	104(%rax), %xmm7
	divsd	%xmm0, %xmm5
	divsd	%xmm0, %xmm3
	divsd	%xmm0, %xmm2
	divsd	%xmm0, %xmm4
	divsd	%xmm0, %xmm8
	divsd	%xmm0, %xmm7
.L124:
	addl	$1, %edx
	addq	$160, %rax
	movsd	-144(%rax), %xmm6
	movsd	-128(%rax), %xmm0
	mulsd	%xmm6, %xmm4
	mulsd	%xmm0, %xmm7
	mulsd	%xmm6, %xmm5
	mulsd	%xmm0, %xmm2
	movsd	%xmm4, -96(%rax)
	movsd	-136(%rax), %xmm4
	movsd	%xmm7, -64(%rax)
	mulsd	%xmm4, %xmm8
	movsd	%xmm5, -88(%rax)
	mulsd	%xmm4, %xmm3
	movsd	%xmm2, -56(%rax)
	movsd	%xmm8, -80(%rax)
	movsd	%xmm3, -72(%rax)
	cmpl	%ecx, %edx
	jge	.L129
.L126:
	movsd	48(%rax), %xmm0
	movapd	%xmm0, %xmm2
	andpd	%xmm9, %xmm2
	ucomisd	%xmm10, %xmm2
	ja	.L132
	movapd	%xmm1, %xmm7
	movapd	%xmm1, %xmm2
	movapd	%xmm1, %xmm8
	movapd	%xmm1, %xmm3
	movapd	%xmm1, %xmm4
	movapd	%xmm1, %xmm5
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L129:
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
.LFE47:
	.size	momentum_den_cm, .-momentum_den_cm
	.section	.rodata.str1.8
	.align 8
.LC56:
	.string	"Computing time derivative of potential in k-space!"
	.align 8
.LC58:
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
.LFB48:
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
	movl	$.LC19, %edi
	call	puts
	movsd	GV+1080(%rip), %xmm7
	movl	GV+1020(%rip), %eax
	movsd	GV+1096(%rip), %xmm5
	mulsd	%xmm7, %xmm7
	testl	%eax, %eax
	mulsd	.LC57(%rip), %xmm7
	mulsd	GV+1112(%rip), %xmm7
	divsd	%xmm5, %xmm7
	jle	.L140
	movl	$1801439851, %r12d
	movsd	.LC39(%rip), %xmm12
	movsd	.LC59(%rip), %xmm11
	jmp	.L156
.L159:
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
	je	.L158
.L139:
	addl	$1, %ebx
	addq	$160, %rbp
	cmpl	%ebx, GV+1020(%rip)
	jle	.L140
	movsd	GV+1096(%rip), %xmm5
.L156:
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
	ja	.L159
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	jmp	.L139
.L158:
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
	jmp	.L139
.L140:
	movl	$.LC58, %edi
	call	puts
	movl	$.LC19, %edi
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
	jle	.L136
	movq	gp(%rip), %r9
	subl	$1, %eax
	movq	%rbx, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	160(%r9), %rdx
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L144
.L160:
	addq	$160, %rdx
.L144:
	movsd	112(%r9), %xmm0
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	120(%r9), %xmm0
	movq	%rdx, %r9
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L160
.L136:
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
	movl	$.LC36, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L143
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rsi
.L147:
	movsd	GV+1064(%rip), %xmm0
	movq	(%r15,%rdx), %rcx
	mulsd	GV+1072(%rip), %xmm0
	mulsd	0(%rbp,%rdx,2), %xmm0
	addq	$8, %rdx
	cmpq	%rsi, %rdx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%rcx)
	jne	.L147
.L143:
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
	movl	$.LC21, %esi
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
	jle	.L146
.L154:
	cvtsi2sd	%r14d, %xmm6
	xorl	%r13d, %r13d
	movsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L151:
	cvtsi2sd	%r13d, %xmm7
	xorl	%ebx, %ebx
	movsd	%xmm7, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L150:
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
	jg	.L150
	addl	$1, %r13d
	cmpl	%r13d, %ebp
	jle	.L149
	testl	%ebp, %ebp
	jg	.L151
.L149:
	addl	$1, %r14d
	cmpl	%r14d, %ebp
	jle	.L146
	testl	%ebp, %ebp
	jg	.L154
.L146:
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
.LFE48:
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
.LFB49:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	.LC66(%rip), %xmm1
	call	pow
	mulsd	GV+1120(%rip), %xmm0
	movsd	.LC67(%rip), %xmm1
	addsd	.LC10(%rip), %xmm0
	call	pow
	movsd	.LC10(%rip), %xmm2
	movl	$.LC19, %edi
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
	movl	$.LC19, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
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
.LFB50:
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
	addsd	.LC10(%rip), %xmm0
	movsd	8(%rsp), %xmm4
	movsd	.LC67(%rip), %xmm1
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 16(%rsp)
	call	pow
	movl	$.LC19, %edi
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
	movl	$.LC19, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
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
.LFB51:
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
	addsd	.LC10(%rip), %xmm0
	call	pow
	movsd	.LC10(%rip), %xmm2
	movl	$.LC19, %edi
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
	movl	$.LC19, %edi
	call	puts
	movsd	GV+1120(%rip), %xmm0
	movsd	.LC10(%rip), %xmm4
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
	addsd	.LC10(%rip), %xmm0
	movsd	16(%rsp), %xmm5
	movsd	.LC67(%rip), %xmm1
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	pow
	movl	$.LC19, %edi
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
	movl	$.LC19, %edi
	call	puts
	movsd	GV+1120(%rip), %xmm0
	movsd	.LC10(%rip), %xmm3
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
	addsd	.LC10(%rip), %xmm0
	movsd	16(%rsp), %xmm6
	movsd	.LC67(%rip), %xmm1
	divsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 16(%rsp)
	call	pow
	movl	$.LC19, %edi
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
	movl	$.LC19, %edi
	call	puts
	movsd	GV+1096(%rip), %xmm2
	movsd	.LC66(%rip), %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rsp)
	call	pow
	mulsd	GV+1120(%rip), %xmm0
	movsd	.LC67(%rip), %xmm1
	addsd	.LC10(%rip), %xmm0
	call	pow
	movsd	.LC10(%rip), %xmm2
	movl	$.LC19, %edi
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
	movl	$.LC19, %edi
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
	movsd	.LC57(%rip), %xmm2
	xorl	%edx, %edx
	movsd	GV+1040(%rip), %xmm5
	movq	gp(%rip), %rax
	mulsd	%xmm0, %xmm2
	testl	%ecx, %ecx
	movsd	.LC39(%rip), %xmm7
	movsd	48(%rsp), %xmm3
	movsd	56(%rsp), %xmm4
	mulsd	%xmm0, %xmm2
	movsd	GV+1104(%rip), %xmm0
	divsd	GV+1096(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	mulsd	GV+1112(%rip), %xmm2
	jg	.L193
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L196:
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
	jge	.L172
.L193:
	movsd	56(%rax), %xmm0
	ucomisd	%xmm5, %xmm0
	ja	.L196
	addl	$1, %edx
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	addq	$160, %rax
	cmpl	%ecx, %edx
	jl	.L193
.L172:
	movl	$.LC74, %edi
	call	puts
	movl	$.LC30, %edi
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
	jle	.L168
	movq	gp(%rip), %rcx
	subl	$1, %eax
	movq	%rbx, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	160(%rcx), %rdx
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L176
.L197:
	addq	$160, %rdx
.L176:
	movsd	128(%rcx), %xmm0
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	136(%rcx), %xmm0
	movq	%rdx, %rcx
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L197
.L168:
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
	movl	$.LC36, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L175
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rcx
.L179:
	movsd	GV+1064(%rip), %xmm0
	movq	(%r14,%rdx), %rax
	mulsd	GV+1072(%rip), %xmm0
	mulsd	0(%rbp,%rdx,2), %xmm0
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jne	.L179
.L175:
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
	jle	.L178
	movq	gp(%rip), %rcx
	subl	$1, %eax
	movq	%rbx, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	160(%rcx), %rdx
	salq	$5, %rax
	addq	%rdx, %rax
	jmp	.L182
.L198:
	addq	$160, %rdx
.L182:
	movsd	144(%rcx), %xmm0
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	152(%rcx), %xmm0
	movq	%rdx, %rcx
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L198
.L178:
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
	movl	$.LC36, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L181
	subl	$1, %eax
	xorl	%edx, %edx
	leaq	8(,%rax,8), %rcx
.L185:
	movsd	GV+1064(%rip), %xmm0
	movq	32(%rsp), %rax
	mulsd	GV+1072(%rip), %xmm0
	movq	(%rax,%rdx), %rax
	mulsd	0(%rbp,%rdx,2), %xmm0
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	divsd	GV+1048(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jne	.L185
.L181:
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
	movl	$.LC21, %esi
	movl	$.LC77, %edi
	call	fopen
	movl	$.LC21, %esi
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
	jle	.L184
.L192:
	cvtsi2sd	24(%rsp), %xmm4
	movsd	%xmm4, 40(%rsp)
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L189:
	cvtsi2sd	%r12d, %xmm7
	xorl	%r15d, %r15d
	movsd	%xmm7, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L188:
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
	jg	.L188
	addl	$1, %r12d
	cmpl	%r12d, %r13d
	jle	.L187
	testl	%r13d, %r13d
	jg	.L189
.L187:
	addl	$1, 24(%rsp)
	cmpl	24(%rsp), %r13d
	jle	.L184
	testl	%r13d, %r13d
	jg	.L192
.L184:
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
.LFE51:
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
	.string	"Binary data file has been read succesfully!"
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
	.section	.rodata.str1.1
.LC94:
	.string	"FFT of momentum finished!"
	.section	.rodata.str1.8
	.align 8
.LC95:
	.string	"FFT of time derivative of gravitational potential finished!"
	.align 8
.LC96:
	.string	"FFT of time derivative of gravitational potential in linear approximation finished!"
	.align 8
.LC97:
	.string	"All FFT transforms have finished succesfully!"
	.align 8
.LC98:
	.string	"All codes have run succesfully!"
	.section	.rodata.str1.1
.LC99:
	.string	"FFT code finished!"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	cmpl	$1, %edi
	jle	.L217
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
	movl	$.LC19, %edi
	call	puts
	movl	GV+1020(%rip), %ebx
	movslq	%ebx, %r13
	leaq	0(%r13,%r13,4), %rdi
	salq	$5, %rdi
	call	malloc
	movl	$8, %esi
	movq	%r13, %rdi
	movq	%rax, gp(%rip)
	call	calloc
	movl	$8, %esi
	movq	%r13, %rdi
	movq	%rax, %r14
	call	calloc
	movl	$8, %esi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
	call	calloc
	testl	%ebx, %ebx
	movq	%rax, %r12
	jle	.L201
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L203:
	movl	$8, %esi
	movl	$2, %edi
	call	calloc
	movq	%rax, (%r12,%rbp,8)
	addq	$1, %rbp
	cmpl	%ebp, %ebx
	jg	.L203
	movq	%r13, %rdi
	movl	$8, %esi
	xorl	%r15d, %r15d
	call	calloc
	movq	%r13, %rdi
	movl	$8, %esi
	movq	%rax, %rbp
	call	calloc
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L212:
	movl	$8, %esi
	movl	$3, %edi
	call	calloc
	movl	$8, %esi
	movq	%rax, 0(%rbp,%r15,8)
	movl	$2, %edi
	call	calloc
	movq	%rax, 0(%r13,%r15,8)
	addq	$1, %r15
	cmpl	%r15d, %ebx
	jg	.L212
.L213:
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	read_binary
	movl	$.LC83, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movsd	.LC10(%rip), %xmm0
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
	jp	.L218
.L205:
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
	movl	$.LC19, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm0
	movsd	.LC10(%rip), %xmm4
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
	jp	.L219
.L207:
	movsd	.LC10(%rip), %xmm0
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
	movq	%r14, %rdi
	call	transform
	movq	%r14, %rdi
	call	free
	movl	$.LC92, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movq	(%rsp), %rdi
	movq	%r12, %rsi
	call	potential
	movl	$.LC93, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movq	%rbp, %rdi
	call	momentum_den_cm
	movq	%rbp, %rdi
	call	free
	movl	$.LC94, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movq	%r13, %rdi
	call	potential_dot
	movl	$.LC95, %edi
	call	puts
	movl	$.LC19, %edi
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
	jle	.L210
	.p2align 4,,10
	.p2align 3
.L214:
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
	jg	.L214
.L210:
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	potential_dot_linear
	movl	$.LC96, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	$.LC97, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movq	gp(%rip), %rdi
	call	free
	movl	$.LC19, %edi
	call	puts
	movl	$.LC98, %edi
	call	puts
	movl	$.LC99, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	addq	$40, %rsp
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
.L201:
	.cfi_restore_state
	movq	%r13, %rdi
	movl	$8, %esi
	call	calloc
	movq	%r13, %rdi
	movl	$8, %esi
	movq	%rax, %rbp
	call	calloc
	movq	%rax, %r13
	jmp	.L213
.L218:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L205
.L217:
	movl	$.LC79, %edi
	movq	%rsi, (%rsp)
	call	puts
	movq	(%rsp), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	(%rsi), %rdx
	movl	$.LC80, %esi
	call	__printf_chk
	xorl	%edi, %edi
	call	exit
.L219:
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L207
	.cfi_endproc
.LFE52:
	.size	main, .-main
	.comm	GV,1136,32
	.comm	gp,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 8
.LC23:
	.long	1413754136
	.long	1075388923
	.align 8
.LC24:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC34:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC37:
	.long	0
	.long	1073217536
	.align 8
.LC39:
	.long	0
	.long	-1074790400
	.align 8
.LC57:
	.long	0
	.long	-1074266112
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
