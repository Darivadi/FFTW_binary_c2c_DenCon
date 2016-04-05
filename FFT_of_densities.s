	.file	"FFT_of_densities.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"grep -v \"#\" %s | grep -v \"^$\" | gawk -F\"=\" '{print $2}' > %s.dump"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	conf2dump
	.type	conf2dump, @function
conf2dump:
.LFB24:
	.cfi_startproc
	subq	$1016, %rsp
	.cfi_def_cfa_offset 1024
	movq	%rdi, %rdx
	movq	%rdi, %rcx
	movl	$.LC0, %esi
	movq	%rsp, %rdi
	xorl	%eax, %eax
	call	sprintf
	movq	%rsp, %rdi
	call	system
	xorl	%eax, %eax
	addq	$1016, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	conf2dump, .-conf2dump
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"r"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"  * The file '%s' doesn't exist!\n"
	.section	.rodata.str1.1
.LC4:
	.string	"%s.dump"
.LC5:
	.string	"%d"
.LC6:
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"  * The file '%s' has been loaded!\n"
	.section	.rodata.str1.1
.LC8:
	.string	"File to read is %s "
.LC9:
	.string	"with %d cells per axis\n"
.LC10:
	.string	"rm -rf %s.dump"
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	read_parameters
	.type	read_parameters, @function
read_parameters:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$.LC2, %esi
	movq	%rdi, %rbx
	subq	$2024, %rsp
	.cfi_def_cfa_offset 2048
	call	fopen
	testq	%rax, %rax
	je	.L8
	movq	%rax, %rdi
	call	fclose
	leaq	1008(%rsp), %rdi
	movq	%rbx, %rcx
	movq	%rbx, %rdx
	movl	$.LC0, %esi
	xorl	%eax, %eax
	call	sprintf
	leaq	1008(%rsp), %rdi
	call	system
	leaq	1008(%rsp), %rdi
	movq	%rbx, %rdx
	movl	$.LC4, %esi
	xorl	%eax, %eax
	call	sprintf
	leaq	1008(%rsp), %rdi
	movl	$.LC2, %esi
	call	fopen
	movl	$GV+1016, %edx
	movq	%rax, %rbp
	movq	%rax, %rdi
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movl	$GV, %edx
	movl	$.LC6, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__isoc99_fscanf
	movq	%rbp, %rdi
	call	fclose
	movq	%rbx, %rsi
	movl	$.LC7, %edi
	xorl	%eax, %eax
	call	printf
	movl	$GV, %esi
	movl	$.LC8, %edi
	xorl	%eax, %eax
	call	printf
	movl	GV+1016(%rip), %esi
	movl	$.LC9, %edi
	xorl	%eax, %eax
	call	printf
	movq	%rbx, %rdx
	movq	%rsp, %rdi
	movl	$.LC10, %esi
	xorl	%eax, %eax
	call	sprintf
	movq	%rsp, %rdi
	call	system
	addq	$2024, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	movq	%rbx, %rsi
	movl	$.LC3, %edi
	call	printf
	addq	$2024, %rsp
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	read_parameters, .-read_parameters
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"-----------------------------------------------"
	.section	.rodata.str1.1
.LC14:
	.string	"Cosmological parameters:"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"OmegaM0=%lf OmegaL0=%lf redshift=%lf HubbleParam=%lf\n"
	.section	.rodata.str1.1
.LC16:
	.string	"Simulation parameters:"
.LC17:
	.string	"L=%lf\n"
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	read_binary
	.type	read_binary, @function
read_binary:
.LFB26:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC2, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$GV, %edi
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
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
	movl	$GV+1080, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1056, %edi
	call	fread
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1048, %edi
	call	fread
	movsd	.LC12(%rip), %xmm0
	movl	$.LC13, %edi
	movsd	GV+1056(%rip), %xmm1
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+1064(%rip)
	call	puts
	movl	$.LC14, %edi
	call	puts
	movsd	GV+1048(%rip), %xmm3
	movl	$.LC15, %edi
	movsd	GV+1056(%rip), %xmm2
	movl	$4, %eax
	movsd	GV+1088(%rip), %xmm1
	movsd	GV+1080(%rip), %xmm0
	call	printf
	movl	$.LC13, %edi
	call	puts
	movl	$.LC16, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm0
	movl	$.LC17, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC13, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L11
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$4, %esi
	addl	$1, %r12d
	addq	$28, %rdi
	call	fread
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$4, %esi
	addq	$24, %rdi
	call	fread
	movq	%rbp, %rcx
	movl	$3, %edx
	movl	$8, %esi
	movq	%rsp, %rdi
	call	fread
	movq	%rbx, %rdx
	addq	gp(%rip), %rdx
	movq	%rbp, %rcx
	movsd	(%rsp), %xmm0
	movl	$8, %esi
	addq	$376, %rbx
	movsd	%xmm0, (%rdx)
	leaq	32(%rdx), %rdi
	movsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rdx)
	movsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rdx)
	movl	$1, %edx
	call	fread
	cmpl	%r12d, GV+1020(%rip)
	jg	.L10
.L11:
	movq	%rbp, %rdi
	call	fclose
	addq	$32, %rsp
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
.LFE26:
	.size	read_binary, .-read_binary
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.rodata.str1.1
.LC19:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"./../Processed_data/DenCon_Pot_PotDot_fields_256.bin"
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	write_binary
	.type	write_binary, @function
write_binary:
.LFB27:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC19, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$.LC20, %edi
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
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
	movl	$GV+1080, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1088, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1056, %edi
	call	fwrite
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movl	$GV+1048, %edi
	call	fwrite
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L18
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$4, %esi
	addl	$1, %r12d
	addq	$28, %rdi
	call	fwrite
	movq	%rbx, %rax
	addq	gp(%rip), %rax
	movq	%rbp, %rcx
	movl	$3, %edx
	movl	$8, %esi
	movq	%rsp, %rdi
	movsd	(%rax), %xmm0
	movsd	%xmm0, (%rsp)
	movsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rsp)
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$32, %rdi
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$264, %rdi
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$280, %rdi
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$312, %rdi
	call	fwrite
	movq	%rbx, %rdi
	addq	gp(%rip), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$8, %esi
	addq	$376, %rbx
	addq	$344, %rdi
	call	fwrite
	cmpl	%r12d, GV+1020(%rip)
	jg	.L17
.L18:
	movq	%rbp, %rdi
	call	fclose
	addq	$32, %rsp
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
.LFE27:
	.size	write_binary, .-write_binary
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
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
.LC28:
	.string	"k vectors computed!"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"------------------------------------------------"
	.align 8
.LC30:
	.string	"Computing density contrast in k space with CIC weight-function!"
	.align 8
.LC31:
	.string	"Density contrast in k-space with CIC weight fn ready!!"
	.section	.rodata.str1.1
.LC32:
	.string	"Destroying plans!"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"--------------------------------------------------"
	.section	.rodata.str1.1
.LC34:
	.string	"plan_r2k destroyed!"
.LC35:
	.string	"Freeing up memory!"
.LC36:
	.string	"FFT_transform code finished!"
	.section	.text.unlikely
.LCOLDB38:
	.text
.LHOTB38:
	.p2align 4,,15
	.globl	transform
	.type	transform, @function
transform:
.LFB28:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
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
	cvtsi2sd	GV+1020(%rip), %xmm0
	sqrtsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm2
	jp	.L81
.L24:
	movslq	GV+1020(%rip), %rdi
	movsd	%xmm2, (%rsp)
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, 72(%rsp)
	salq	$4, %rdi
	call	fftw_malloc
	movl	GV+1020(%rip), %ecx
	movq	%rax, 80(%rsp)
	movsd	(%rsp), %xmm2
	testl	%ecx, %ecx
	jle	.L30
	movq	gp(%rip), %rax
	movq	72(%rsp), %rdi
	subl	$1, %ecx
	salq	$4, %rcx
	leaq	32(%rax), %rdx
	leaq	24(%rdi,%rcx), %rcx
	movq	%rdi, %rax
	addq	$8, %rax
.L29:
	movsd	(%rdx), %xmm0
	addq	$16, %rax
	movq	$0, -16(%rax)
	addq	$376, %rdx
	movsd	%xmm0, -24(%rax)
	cmpq	%rcx, %rax
	jne	.L29
.L30:
	movl	$.LC23, %edi
	movsd	%xmm2, (%rsp)
	call	puts
	movl	$.LC24, %edi
	call	puts
	subq	$8, %rsp
	.cfi_def_cfa_offset 168
	movl	GV+1016(%rip), %edi
	movl	$-1, %r9d
	pushq	$64
	.cfi_def_cfa_offset 176
	movq	88(%rsp), %rcx
	movq	96(%rsp), %r8
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, 104(%rsp)
	call	fftw_execute
	movl	$.LC25, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	popq	%rax
	.cfi_def_cfa_offset 168
	movl	GV+1020(%rip), %ecx
	popq	%rdx
	.cfi_def_cfa_offset 160
	testl	%ecx, %ecx
	movsd	(%rsp), %xmm2
	jle	.L28
	subl	$1, %ecx
	movq	gp(%rip), %rsi
	movq	80(%rsp), %rdx
	imulq	$376, %rcx, %rcx
	leaq	40(%rsi), %rax
	leaq	416(%rsi,%rcx), %rcx
.L33:
	movsd	(%rdx), %xmm1
	addq	$376, %rax
	addq	$16, %rdx
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -376(%rax)
	movsd	-8(%rdx), %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -368(%rax)
	cmpq	%rcx, %rax
	jne	.L33
.L28:
	movl	GV+1016(%rip), %r15d
	xorl	%r13d, %r13d
	movsd	.LC26(%rip), %xmm4
	testl	%r15d, %r15d
	jle	.L32
.L67:
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jle	.L44
	.p2align 4,,10
	.p2align 3
.L68:
	testl	%r15d, %r15d
	jle	.L45
	movq	gp(%rip), %rbp
	xorl	%r14d, %r14d
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L83:
	pxor	%xmm3, %xmm3
	cmpl	%r12d, %r8d
	cvtsi2sd	%r13d, %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, 72(%rdi)
	jl	.L36
.L84:
	pxor	%xmm0, %xmm0
	cmpl	%r14d, %r8d
	cvtsi2sd	%r12d, %xmm0
	mulsd	%xmm4, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rdi)
	jl	.L38
.L85:
	pxor	%xmm2, %xmm2
	cvtsi2sd	%r14d, %xmm2
	mulsd	%xmm4, %xmm2
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm2, 88(%rdi)
.L39:
	mulsd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L82
.L40:
	addq	%rbp, %rbx
	movsd	%xmm0, 96(%rdi)
	addl	$1, %r14d
	movsd	72(%rbx), %xmm0
	movsd	%xmm4, 64(%rsp)
	mulsd	.LC27(%rip), %xmm0
	call	sin
	movsd	%xmm0, 8(%rsp)
	movsd	80(%rbx), %xmm0
	mulsd	.LC27(%rip), %xmm0
	call	sin
	movsd	%xmm0, (%rsp)
	movsd	88(%rbx), %xmm0
	mulsd	.LC27(%rip), %xmm0
	call	sin
	movsd	8(%rsp), %xmm3
	cmpl	%r14d, %r15d
	movsd	(%rsp), %xmm2
	mulsd	%xmm3, %xmm3
	movapd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm1
	movsd	64(%rsp), %xmm4
	addsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 120(%rbx)
	jle	.L45
.L42:
	movl	%r13d, %ebx
	movl	%r15d, %r8d
	imull	%r15d, %ebx
	sarl	%r8d
	movsd	GV+1008(%rip), %xmm1
	addl	%r12d, %ebx
	imull	%r15d, %ebx
	addl	%r14d, %ebx
	movslq	%ebx, %rbx
	imulq	$376, %rbx, %rbx
	cmpl	%r13d, %r8d
	leaq	0(%rbp,%rbx), %rdi
	jge	.L83
	pxor	%xmm3, %xmm3
	movl	%r13d, %esi
	subl	%r15d, %esi
	cmpl	%r12d, %r8d
	cvtsi2sd	%esi, %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, 72(%rdi)
	jge	.L84
.L36:
	pxor	%xmm0, %xmm0
	movl	%r12d, %esi
	subl	%r15d, %esi
	cmpl	%r14d, %r8d
	cvtsi2sd	%esi, %xmm0
	mulsd	%xmm4, %xmm0
	divsd	GV+1008(%rip), %xmm0
	movsd	%xmm0, 80(%rbp,%rbx)
	movsd	80(%rdi), %xmm0
	jge	.L85
.L38:
	pxor	%xmm2, %xmm2
	movl	%r14d, %esi
	subl	%r15d, %esi
	cvtsi2sd	%esi, %xmm2
	mulsd	%xmm4, %xmm2
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm2, 88(%rdi)
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L45:
	addl	$1, %r12d
	cmpl	%r15d, %r12d
	jl	.L68
.L44:
	addl	$1, %r13d
	cmpl	%r15d, %r13d
	jl	.L67
.L32:
	movl	$.LC28, %edi
	call	puts
	movl	$.LC29, %edi
	call	puts
	movl	$.LC30, %edi
	call	puts
	movl	$.LC29, %edi
	call	puts
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L58
	subl	$1, %eax
	movq	gp(%rip), %rdx
	movl	GV+1016(%rip), %r14d
	imulq	$376, %rax, %rax
	movsd	GV+1008(%rip), %xmm5
	movsd	GV+1040(%rip), %xmm4
	movsd	%xmm5, 8(%rsp)
	leaq	72(%rdx), %rbx
	movsd	.LC37(%rip), %xmm3
	leaq	448(%rdx,%rax), %r15
	jmp	.L57
.L86:
	pxor	%xmm1, %xmm1
	movsd	%xmm4, 64(%rsp)
	mulsd	8(%rsp), %xmm0
	movaps	%xmm3, 16(%rsp)
	cvtsi2sd	%r14d, %xmm1
	addsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	call	sin
	movsd	(%rsp), %xmm1
	movsd	64(%rsp), %xmm4
	divsd	%xmm1, %xmm0
	movapd	16(%rsp), %xmm3
	movapd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, (%rsp)
.L49:
	movsd	8(%rbx), %xmm0
	movsd	.LC12(%rip), %xmm2
	movapd	%xmm0, %xmm1
	andpd	%xmm3, %xmm1
	ucomisd	%xmm4, %xmm1
	jbe	.L51
	pxor	%xmm1, %xmm1
	movsd	%xmm4, 16(%rsp)
	mulsd	8(%rsp), %xmm0
	movaps	%xmm3, 32(%rsp)
	cvtsi2sd	%r14d, %xmm1
	addsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)
	call	sin
	movsd	64(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	movsd	16(%rsp), %xmm4
	movapd	32(%rsp), %xmm3
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
.L51:
	movsd	16(%rbx), %xmm0
	movapd	%xmm0, %xmm1
	andpd	%xmm3, %xmm1
	ucomisd	%xmm4, %xmm1
	jbe	.L78
	pxor	%xmm1, %xmm1
	movsd	%xmm4, 32(%rsp)
	mulsd	8(%rsp), %xmm0
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm3, 48(%rsp)
	cvtsi2sd	%r14d, %xmm1
	addsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)
	call	sin
	movsd	64(%rsp), %xmm1
	movsd	16(%rsp), %xmm2
	divsd	%xmm1, %xmm0
	movapd	48(%rsp), %xmm3
	movsd	32(%rsp), %xmm4
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
.L53:
	movsd	(%rsp), %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 40(%rbx)
	andpd	%xmm3, %xmm1
	ucomisd	%xmm4, %xmm1
	jbe	.L79
	movsd	-24(%rbx), %xmm2
	movsd	-32(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	divsd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
.L55:
	movsd	%xmm0, -8(%rbx)
	addq	$376, %rbx
	movsd	%xmm1, -392(%rbx)
	cmpq	%r15, %rbx
	je	.L58
.L57:
	movsd	(%rbx), %xmm0
	movapd	%xmm0, %xmm1
	andpd	%xmm3, %xmm1
	ucomisd	%xmm4, %xmm1
	ja	.L86
	movsd	.LC12(%rip), %xmm7
	movsd	%xmm7, (%rsp)
	jmp	.L49
.L82:
	movapd	%xmm1, %xmm0
	movsd	%xmm4, 8(%rsp)
	movq	%rdi, (%rsp)
	call	sqrt
	movl	GV+1016(%rip), %r15d
	movq	gp(%rip), %rbp
	movsd	8(%rsp), %xmm4
	movq	(%rsp), %rdi
	jmp	.L40
.L79:
	pxor	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	jmp	.L55
.L78:
	movsd	.LC12(%rip), %xmm1
	jmp	.L53
.L58:
	movl	$.LC31, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movl	$.LC32, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	movq	88(%rsp), %rdi
	call	fftw_destroy_plan
	movl	$.LC34, %edi
	xorl	%eax, %eax
	call	printf
	movl	$.LC35, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	movq	72(%rsp), %rdi
	call	free
	movq	80(%rsp), %rdi
	call	fftw_free
	movl	$.LC36, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	addq	$104, %rsp
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
.L81:
	.cfi_restore_state
	call	sqrt
	movapd	%xmm0, %xmm2
	jmp	.L24
	.cfi_endproc
.LFE28:
	.size	transform, .-transform
	.section	.text.unlikely
.LCOLDE38:
	.text
.LHOTE38:
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"Computing potential in k-space"
	.align 8
.LC40:
	.string	"-----------------------------------------"
	.section	.rodata.str1.1
.LC42:
	.string	"Potential in k-space saved!"
.LC43:
	.string	"%lf %lf\n"
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
	.section	.text.unlikely
.LCOLDB49:
	.text
.LHOTB49:
	.p2align 4,,15
	.globl	potential
	.type	potential, @function
potential:
.LFB29:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC39, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	puts
	movl	$.LC40, %edi
	call	puts
	movsd	GV+1048(%rip), %xmm3
	movl	GV+1020(%rip), %ecx
	pxor	%xmm4, %xmm4
	mulsd	%xmm3, %xmm3
	testl	%ecx, %ecx
	mulsd	.LC41(%rip), %xmm3
	mulsd	GV+1080(%rip), %xmm3
	divsd	GV+1064(%rip), %xmm3
	jg	.L102
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L110:
	movsd	56(%rax), %xmm2
	movsd	64(%rax), %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm1
	divsd	%xmm0, %xmm2
	divsd	%xmm0, %xmm1
.L91:
	movsd	%xmm1, 256(%rax)
	movl	$1125899907, %edx
	movsd	%xmm2, 248(%rax)
	movl	%ebx, %eax
	imull	%edx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$18, %edx
	subl	%eax, %edx
	imull	$1000000, %edx, %edx
	cmpl	%edx, %ebx
	je	.L109
	addl	$1, %ebx
	addq	$376, %rbp
	cmpl	%ecx, %ebx
	jge	.L95
.L102:
	movq	%rbp, %rax
	addq	gp(%rip), %rax
	movsd	96(%rax), %xmm0
	ucomisd	GV+1040(%rip), %xmm0
	ja	.L110
	movapd	%xmm4, %xmm1
	movapd	%xmm4, %xmm2
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L109:
	movapd	%xmm2, %xmm0
	movl	$.LC43, %edi
	movl	$2, %eax
	movsd	%xmm4, 8(%rsp)
	addl	$1, %ebx
	movsd	%xmm3, (%rsp)
	addq	$376, %rbp
	call	printf
	movl	GV+1020(%rip), %ecx
	movsd	8(%rsp), %xmm4
	movsd	(%rsp), %xmm3
	cmpl	%ecx, %ebx
	jl	.L102
.L95:
	movl	$.LC42, %edi
	call	puts
	movl	$.LC40, %edi
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
	jle	.L90
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbx, %rsi
	imulq	$376, %rax, %rax
	leaq	248(%rcx), %rdx
	leaq	624(%rcx,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L98:
	movsd	(%rdx), %xmm0
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	-368(%rdx), %xmm0
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L98
.L90:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rcx
	pushq	$64
	.cfi_def_cfa_offset 64
	movl	$1, %r9d
	movq	%rbp, %r8
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %r12
	call	fftw_execute
	movl	$.LC44, %edi
	call	puts
	movl	$.LC45, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm1
	movl	GV+1020(%rip), %eax
	popq	%rdx
	.cfi_def_cfa_offset 56
	movapd	%xmm1, %xmm0
	testl	%eax, %eax
	mulsd	%xmm1, %xmm0
	popq	%rcx
	.cfi_def_cfa_offset 48
	mulsd	%xmm0, %xmm1
	movsd	.LC12(%rip), %xmm0
	divsd	%xmm1, %xmm0
	jle	.L97
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbp, %rsi
	imulq	$376, %rax, %rax
	leaq	264(%rcx), %rdx
	leaq	640(%rcx,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L99:
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	-16(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -376(%rdx)
	movsd	-8(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -368(%rdx)
	cmpq	%rcx, %rdx
	jne	.L99
.L97:
	movl	$.LC45, %edi
	call	puts
	movl	$.LC46, %edi
	call	puts
	movl	$.LC45, %edi
	call	puts
	movq	%r12, %rdi
	call	fftw_destroy_plan
	movq	%rbx, %rdi
	call	free
	movq	%rbp, %rdi
	call	fftw_free
	movl	$.LC47, %edi
	call	puts
	movl	$.LC48, %edi
	call	puts
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
.LFE29:
	.size	potential, .-potential
	.section	.text.unlikely
.LCOLDE49:
	.text
.LHOTE49:
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"Dealing with FFT momentum_cm in X!"
	.align 8
.LC51:
	.string	"---------------------------------"
	.align 8
.LC52:
	.string	"FFT of momentum_cm in X finished!"
	.align 8
.LC53:
	.string	" Dealing with FFT momentum_cm in Y!"
	.align 8
.LC54:
	.string	"FFT of momentum_cm in Y finished!"
	.align 8
.LC55:
	.string	" Dealing with FFT momentum_cm in Z!"
	.align 8
.LC56:
	.string	"FFT of momentum_cm in Z finished!"
	.section	.text.unlikely
.LCOLDB57:
	.text
.LHOTB57:
	.p2align 4,,15
	.globl	momentum_den_cm
	.type	momentum_den_cm, @function
momentum_den_cm:
.LFB30:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$.LC50, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	puts
	movl	$.LC51, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %rbx
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L116
	movq	gp(%rip), %rcx
	subl	$1, %eax
	leaq	8(%rbp), %rdx
	salq	$4, %rax
	leaq	24(%rbp,%rax), %r8
	leaq	128(%rcx), %rsi
	.p2align 4,,10
	.p2align 3
.L115:
	movsd	(%rsi), %xmm0
	addq	$16, %rdx
	movq	$0, -16(%rdx)
	addq	$376, %rsi
	movsd	%xmm0, -24(%rdx)
	cmpq	%r8, %rdx
	jne	.L115
.L116:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbx, %r8
	pushq	$64
	.cfi_def_cfa_offset 48
	movl	$-1, %r9d
	movq	%rbp, %rcx
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC52, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movsd	GV+1032(%rip), %xmm1
	movl	GV+1020(%rip), %eax
	popq	%rdi
	.cfi_def_cfa_offset 40
	movapd	%xmm1, %xmm0
	testl	%eax, %eax
	mulsd	%xmm1, %xmm0
	popq	%r8
	.cfi_def_cfa_offset 32
	mulsd	%xmm1, %xmm0
	jle	.L114
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbx, %rsi
	imulq	$376, %rax, %rax
	leaq	152(%rcx), %rdx
	leaq	528(%rcx,%rax), %r9
	.p2align 4,,10
	.p2align 3
.L119:
	movsd	(%rsi), %xmm1
	addq	$376, %rdx
	addq	$16, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -376(%rdx)
	movsd	-8(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -368(%rdx)
	cmpq	%r9, %rdx
	jne	.L119
.L114:
	movq	%rbp, %rdi
	call	free
	movq	%rbx, %rdi
	call	fftw_free
	movl	$.LC53, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	salq	$4, %rdi
	call	fftw_malloc
	movslq	GV+1020(%rip), %rdi
	movq	%rax, %rbp
	salq	$4, %rdi
	call	fftw_malloc
	movq	%rax, %rbx
	movl	GV+1020(%rip), %eax
	testl	%eax, %eax
	jle	.L118
	movq	gp(%rip), %rcx
	subl	$1, %eax
	leaq	8(%rbp), %rdx
	salq	$4, %rax
	leaq	24(%rbp,%rax), %r8
	leaq	136(%rcx), %rsi
	.p2align 4,,10
	.p2align 3
.L122:
	movsd	(%rsi), %xmm0
	addq	$16, %rdx
	movq	$0, -16(%rdx)
	addq	$376, %rsi
	movsd	%xmm0, -24(%rdx)
	cmpq	%r8, %rdx
	jne	.L122
.L118:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbp, %rcx
	pushq	$64
	.cfi_def_cfa_offset 48
	movl	$-1, %r9d
	movq	%rbx, %r8
	movl	%edi, %esi
	movl	%edi, %edx
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC54, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movsd	GV+1032(%rip), %xmm1
	movl	GV+1020(%rip), %eax
	popq	%rcx
	.cfi_def_cfa_offset 40
	movapd	%xmm1, %xmm0
	testl	%eax, %eax
	mulsd	%xmm1, %xmm0
	popq	%rsi
	.cfi_def_cfa_offset 32
	mulsd	%xmm1, %xmm0
	jle	.L121
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbx, %rsi
	imulq	$376, %rax, %rax
	leaq	168(%rcx), %rdx
	leaq	544(%rcx,%rax), %r9
	.p2align 4,,10
	.p2align 3
.L125:
	movsd	(%rsi), %xmm1
	addq	$376, %rdx
	addq	$16, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -376(%rdx)
	movsd	-8(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -368(%rdx)
	cmpq	%r9, %rdx
	jne	.L125
.L121:
	movq	%rbp, %rdi
	call	free
	movq	%rbx, %rdi
	call	fftw_free
	movl	$.LC55, %edi
	call	puts
	movl	$.LC51, %edi
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
	jle	.L124
	movq	gp(%rip), %rcx
	subl	$1, %eax
	leaq	8(%rbx), %rdx
	salq	$4, %rax
	leaq	24(%rbx,%rax), %rax
	leaq	144(%rcx), %rsi
	.p2align 4,,10
	.p2align 3
.L128:
	movsd	(%rsi), %xmm0
	addq	$16, %rdx
	movq	$0, -16(%rdx)
	addq	$376, %rsi
	movsd	%xmm0, -24(%rdx)
	cmpq	%rax, %rdx
	jne	.L128
.L124:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbx, %rcx
	pushq	$64
	.cfi_def_cfa_offset 48
	movl	$-1, %r9d
	movq	%rbp, %r8
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %r12
	call	fftw_execute
	movl	$.LC56, %edi
	call	puts
	movl	$.LC51, %edi
	call	puts
	movsd	GV+1032(%rip), %xmm1
	movl	GV+1020(%rip), %ecx
	popq	%rax
	.cfi_def_cfa_offset 40
	movapd	%xmm1, %xmm0
	testl	%ecx, %ecx
	mulsd	%xmm1, %xmm0
	popq	%rdx
	.cfi_def_cfa_offset 32
	mulsd	%xmm1, %xmm0
	jle	.L127
	subl	$1, %ecx
	movq	gp(%rip), %rax
	movq	%rbp, %rsi
	imulq	$376, %rcx, %rcx
	leaq	184(%rax), %rdx
	leaq	560(%rax,%rcx), %rcx
	.p2align 4,,10
	.p2align 3
.L131:
	movsd	(%rsi), %xmm1
	addq	$376, %rdx
	addq	$16, %rsi
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -376(%rdx)
	movsd	-8(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -368(%rdx)
	cmpq	%rcx, %rdx
	jne	.L131
.L127:
	movq	%r12, %rdi
	call	fftw_destroy_plan
	movq	%rbx, %rdi
	call	fftw_free
	movq	%rbp, %rdi
	call	fftw_free
	movl	GV+1020(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L144
	movq	gp(%rip), %rax
	movsd	GV+1040(%rip), %xmm7
	xorl	%edx, %edx
	movsd	.LC37(%rip), %xmm6
	addq	$200, %rax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L147:
	divsd	%xmm3, %xmm8
	addl	$1, %edx
	addq	$376, %rax
	divsd	%xmm3, %xmm5
	movsd	%xmm8, -376(%rax)
	divsd	%xmm3, %xmm4
	movsd	%xmm5, -360(%rax)
	divsd	%xmm3, %xmm2
	movsd	%xmm4, -344(%rax)
	divsd	%xmm3, %xmm1
	movsd	%xmm2, -368(%rax)
	divsd	%xmm3, %xmm0
	movsd	%xmm1, -352(%rax)
	movsd	%xmm0, -336(%rax)
	cmpl	%ecx, %edx
	jge	.L144
.L135:
	movsd	-88(%rax), %xmm3
	movsd	-128(%rax), %xmm2
	movapd	%xmm3, %xmm9
	movsd	-120(%rax), %xmm1
	movsd	-112(%rax), %xmm0
	movsd	-40(%rax), %xmm8
	movsd	-24(%rax), %xmm5
	movsd	-8(%rax), %xmm4
	andpd	%xmm6, %xmm9
	mulsd	%xmm2, %xmm8
	mulsd	%xmm1, %xmm5
	mulsd	%xmm0, %xmm4
	mulsd	-48(%rax), %xmm2
	mulsd	-32(%rax), %xmm1
	movsd	%xmm8, (%rax)
	mulsd	-16(%rax), %xmm0
	movsd	%xmm5, 16(%rax)
	ucomisd	%xmm7, %xmm9
	movsd	%xmm4, 32(%rax)
	movsd	%xmm2, 8(%rax)
	movsd	%xmm1, 24(%rax)
	movsd	%xmm0, 40(%rax)
	ja	.L147
	addl	$1, %edx
	movq	$0, (%rax)
	addq	$376, %rax
	movq	$0, -360(%rax)
	movq	$0, -344(%rax)
	movq	$0, -368(%rax)
	movq	$0, -352(%rax)
	movq	$0, -336(%rax)
	cmpl	%ecx, %edx
	jl	.L135
.L144:
	popq	%rbx
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE30:
	.size	momentum_den_cm, .-momentum_den_cm
	.section	.text.unlikely
.LCOLDE57:
	.text
.LHOTE57:
	.section	.rodata.str1.8
	.align 8
.LC58:
	.string	"Computing time derivative of potential in k-space!"
	.align 8
.LC59:
	.string	"Data time derivative of potential in k-space assigned!"
	.section	.rodata.str1.1
.LC62:
	.string	"%10d %16.8lf %16.8lf\n"
	.section	.rodata.str1.8
	.align 8
.LC63:
	.string	"FFT of potential derivative in r finished!"
	.section	.rodata.str1.1
.LC64:
	.string	"FFT_pot_dot code finished!"
.LC65:
	.string	"--------------------------"
	.section	.text.unlikely
.LCOLDB66:
	.text
.LHOTB66:
	.p2align 4,,15
	.globl	potential_dot
	.type	potential_dot, @function
potential_dot:
.LFB31:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm0, %xmm0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pxor	%xmm1, %xmm1
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	cvtsi2sd	GV+1020(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.L171
.L149:
	movl	$.LC58, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movsd	GV+1048(%rip), %xmm9
	movl	GV+1020(%rip), %ecx
	movsd	GV+1064(%rip), %xmm7
	mulsd	%xmm9, %xmm9
	testl	%ecx, %ecx
	mulsd	.LC41(%rip), %xmm9
	mulsd	GV+1080(%rip), %xmm9
	divsd	%xmm7, %xmm9
	jle	.L153
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movl	$1125899907, %r12d
	movsd	.LC60(%rip), %xmm11
	movsd	.LC61(%rip), %xmm10
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L173:
	addsd	%xmm15, %xmm14
	movapd	%xmm11, %xmm1
	addsd	%xmm12, %xmm6
	mulsd	%xmm8, %xmm13
	movl	%ebx, %eax
	divsd	%xmm0, %xmm1
	movapd	%xmm9, %xmm4
	addsd	%xmm14, %xmm2
	addsd	%xmm6, %xmm3
	xorpd	%xmm10, %xmm2
	divsd	%xmm7, %xmm3
	divsd	%xmm7, %xmm2
	mulsd	%xmm8, %xmm5
	mulsd	%xmm1, %xmm4
	addsd	%xmm13, %xmm2
	addsd	%xmm3, %xmm5
	mulsd	%xmm4, %xmm2
	mulsd	%xmm4, %xmm5
	movsd	%xmm2, 296(%rdx)
	movsd	%xmm5, 304(%rdx)
	imull	%r12d
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$18, %edx
	subl	%eax, %edx
	imull	$1000000, %edx, %edx
	cmpl	%edx, %ebx
	je	.L172
.L159:
	addl	$1, %ebx
	addq	$376, %rbp
	cmpl	%ebx, GV+1020(%rip)
	jle	.L153
	movsd	GV+1064(%rip), %xmm7
.L154:
	movq	%rbp, %rdx
	addq	gp(%rip), %rdx
	movsd	GV+1072(%rip), %xmm8
	movsd	120(%rdx), %xmm0
	movsd	56(%rdx), %xmm13
	ucomisd	GV+1040(%rip), %xmm0
	movsd	200(%rdx), %xmm15
	movsd	216(%rdx), %xmm14
	movsd	232(%rdx), %xmm2
	movsd	64(%rdx), %xmm5
	movsd	208(%rdx), %xmm12
	movsd	224(%rdx), %xmm6
	movsd	240(%rdx), %xmm3
	ja	.L173
	movq	$0, 296(%rdx)
	movq	$0, 304(%rdx)
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L172:
	movl	%ebx, %esi
	movl	$.LC62, %edi
	movl	$2, %eax
	movaps	%xmm10, 16(%rsp)
	movsd	%xmm11, 8(%rsp)
	movsd	%xmm9, (%rsp)
	call	printf
	movsd	(%rsp), %xmm9
	movsd	8(%rsp), %xmm11
	movapd	16(%rsp), %xmm10
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L153:
	movl	$.LC59, %edi
	call	puts
	movl	$.LC24, %edi
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
	jle	.L156
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbx, %rsi
	imulq	$376, %rax, %rax
	leaq	296(%rcx), %rdx
	leaq	672(%rcx,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L162:
	movsd	(%rdx), %xmm0
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	-368(%rdx), %xmm0
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L162
.L156:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	%rbx, %rcx
	pushq	$64
	.cfi_def_cfa_offset 80
	movl	$1, %r9d
	movq	%rbp, %r8
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %r12
	call	fftw_execute
	movl	$.LC63, %edi
	call	puts
	movl	$.LC40, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm1
	movl	GV+1020(%rip), %ecx
	popq	%rax
	.cfi_def_cfa_offset 72
	movapd	%xmm1, %xmm0
	testl	%ecx, %ecx
	mulsd	%xmm1, %xmm0
	popq	%rdx
	.cfi_def_cfa_offset 64
	mulsd	%xmm0, %xmm1
	movsd	.LC12(%rip), %xmm0
	divsd	%xmm1, %xmm0
	jle	.L161
	subl	$1, %ecx
	movq	gp(%rip), %rax
	movq	%rbp, %rsi
	imulq	$376, %rcx, %rcx
	leaq	280(%rax), %rdx
	leaq	656(%rax,%rcx), %rcx
	.p2align 4,,10
	.p2align 3
.L163:
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	-16(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -376(%rdx)
	movsd	-8(%rsi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -368(%rdx)
	cmpq	%rcx, %rdx
	jne	.L163
.L161:
	movq	%r12, %rdi
	call	fftw_destroy_plan
	movq	%rbx, %rdi
	call	free
	movq	%rbp, %rdi
	call	fftw_free
	movl	$.LC64, %edi
	call	puts
	movl	$.LC65, %edi
	call	puts
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L171:
	.cfi_restore_state
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.L149
	call	sqrt
	jmp	.L149
	.cfi_endproc
.LFE31:
	.size	potential_dot, .-potential_dot
	.section	.text.unlikely
.LCOLDE66:
	.text
.LHOTE66:
	.section	.rodata.str1.1
.LC69:
	.string	"First approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC70:
	.string	"OmegaL0=%lf,  growth rate f(t)=%lf\n"
	.section	.text.unlikely
.LCOLDB71:
	.text
.LHOTB71:
	.p2align 4,,15
	.globl	growth_rate_OmegaL0
	.type	growth_rate_OmegaL0, @function
growth_rate_OmegaL0:
.LFB32:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	.LC67(%rip), %xmm1
	call	pow
	mulsd	GV+1088(%rip), %xmm0
	movsd	.LC68(%rip), %xmm1
	addsd	.LC12(%rip), %xmm0
	call	pow
	movsd	.LC12(%rip), %xmm2
	movl	$.LC24, %edi
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%rsp)
	call	puts
	movl	$.LC69, %edi
	call	puts
	movsd	8(%rsp), %xmm1
	movl	$.LC70, %edi
	movsd	GV+1088(%rip), %xmm0
	movl	$2, %eax
	call	printf
	movl	$.LC24, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	growth_rate_OmegaL0, .-growth_rate_OmegaL0
	.section	.text.unlikely
.LCOLDE71:
	.text
.LHOTE71:
	.section	.rodata.str1.1
.LC73:
	.string	"Second approximation to f(t)"
	.section	.rodata.str1.8
	.align 8
.LC74:
	.string	"mu=%lf, OmegaM(a)=%lf, growth rate f(t)=%lf\n"
	.section	.text.unlikely
.LCOLDB75:
	.text
.LHOTB75:
	.p2align 4,,15
	.globl	growth_rate_OmegaM
	.type	growth_rate_OmegaM, @function
growth_rate_OmegaM:
.LFB33:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 8(%rsp)
	movsd	GV+1088(%rip), %xmm0
	movsd	.LC72(%rip), %xmm1
	divsd	GV+1080(%rip), %xmm0
	call	pow
	movsd	8(%rsp), %xmm3
	movsd	GV+1080(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	movsd	.LC67(%rip), %xmm1
	movsd	%xmm4, 8(%rsp)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 24(%rsp)
	call	pow
	addsd	.LC12(%rip), %xmm0
	movsd	8(%rsp), %xmm4
	movsd	.LC68(%rip), %xmm1
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 16(%rsp)
	call	pow
	movl	$.LC24, %edi
	movsd	%xmm0, 8(%rsp)
	call	puts
	movl	$.LC73, %edi
	call	puts
	movsd	16(%rsp), %xmm4
	movl	$.LC74, %edi
	movsd	24(%rsp), %xmm3
	movl	$3, %eax
	movsd	8(%rsp), %xmm2
	movapd	%xmm3, %xmm0
	movapd	%xmm4, %xmm1
	call	printf
	movl	$.LC24, %edi
	call	puts
	movsd	8(%rsp), %xmm0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	growth_rate_OmegaM, .-growth_rate_OmegaM
	.section	.text.unlikely
.LCOLDE75:
	.text
.LHOTE75:
	.section	.rodata.str1.8
	.align 8
.LC76:
	.string	"GR_OmegaL0=%lf GR_OmegaM=%lf a_SF=%lf\n"
	.align 8
.LC77:
	.string	"Time derivative of potential in k-space saved!"
	.align 8
.LC78:
	.string	"FFT_pot_dot lineal code finished!"
	.section	.text.unlikely
.LCOLDB79:
	.text
.LHOTB79:
	.p2align 4,,15
	.globl	potential_dot_linear
	.type	potential_dot_linear, @function
potential_dot_linear:
.LFB34:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm0, %xmm0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pxor	%xmm1, %xmm1
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	cvtsi2sd	GV+1020(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.L211
.L179:
	movsd	.LC67(%rip), %xmm1
	movsd	GV+1064(%rip), %xmm0
	call	pow
	mulsd	GV+1088(%rip), %xmm0
	movsd	.LC68(%rip), %xmm1
	addsd	.LC12(%rip), %xmm0
	call	pow
	movsd	.LC12(%rip), %xmm7
	movl	$.LC24, %edi
	divsd	%xmm0, %xmm7
	movsd	%xmm7, 8(%rsp)
	call	puts
	movl	$.LC69, %edi
	call	puts
	movsd	8(%rsp), %xmm1
	movl	$.LC70, %edi
	movsd	GV+1088(%rip), %xmm0
	movl	$2, %eax
	call	printf
	movl	$.LC24, %edi
	call	puts
	movsd	GV+1088(%rip), %xmm0
	movsd	.LC12(%rip), %xmm3
	divsd	GV+1080(%rip), %xmm0
	subsd	8(%rsp), %xmm3
	movsd	%xmm3, 40(%rsp)
	movsd	GV+1064(%rip), %xmm7
	movsd	.LC72(%rip), %xmm1
	movsd	%xmm7, 8(%rsp)
	call	pow
	movsd	8(%rsp), %xmm4
	movsd	GV+1080(%rip), %xmm5
	mulsd	%xmm0, %xmm4
	movsd	.LC67(%rip), %xmm1
	movsd	%xmm5, 8(%rsp)
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 24(%rsp)
	call	pow
	addsd	.LC12(%rip), %xmm0
	movsd	8(%rsp), %xmm5
	movsd	.LC68(%rip), %xmm1
	divsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 16(%rsp)
	call	pow
	movl	$.LC24, %edi
	movsd	%xmm0, 8(%rsp)
	call	puts
	movl	$.LC73, %edi
	call	puts
	movsd	16(%rsp), %xmm5
	movl	$.LC74, %edi
	movsd	24(%rsp), %xmm4
	movl	$3, %eax
	movsd	8(%rsp), %xmm2
	movapd	%xmm5, %xmm1
	movapd	%xmm4, %xmm0
	call	printf
	movl	$.LC24, %edi
	call	puts
	movsd	GV+1088(%rip), %xmm0
	movsd	.LC12(%rip), %xmm4
	divsd	GV+1080(%rip), %xmm0
	subsd	8(%rsp), %xmm4
	movsd	%xmm4, 32(%rsp)
	movsd	GV+1064(%rip), %xmm3
	movsd	.LC72(%rip), %xmm1
	movsd	%xmm3, 8(%rsp)
	call	pow
	movsd	8(%rsp), %xmm5
	movsd	GV+1080(%rip), %xmm6
	mulsd	%xmm0, %xmm5
	movsd	.LC67(%rip), %xmm1
	movsd	%xmm6, 8(%rsp)
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 24(%rsp)
	call	pow
	addsd	.LC12(%rip), %xmm0
	movsd	8(%rsp), %xmm6
	movsd	.LC68(%rip), %xmm1
	divsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 8(%rsp)
	call	pow
	movl	$.LC24, %edi
	movsd	%xmm0, 16(%rsp)
	call	puts
	movl	$.LC73, %edi
	call	puts
	movsd	8(%rsp), %xmm6
	movl	$.LC74, %edi
	movsd	24(%rsp), %xmm5
	movl	$3, %eax
	movapd	%xmm6, %xmm1
	movapd	%xmm5, %xmm0
	movsd	16(%rsp), %xmm2
	call	printf
	movl	$.LC24, %edi
	call	puts
	movsd	GV+1064(%rip), %xmm2
	movsd	.LC67(%rip), %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)
	call	pow
	mulsd	GV+1088(%rip), %xmm0
	movsd	.LC68(%rip), %xmm1
	addsd	.LC12(%rip), %xmm0
	call	pow
	movsd	.LC12(%rip), %xmm7
	movl	$.LC24, %edi
	divsd	%xmm0, %xmm7
	movsd	%xmm7, 8(%rsp)
	call	puts
	movl	$.LC69, %edi
	call	puts
	movsd	8(%rsp), %xmm1
	movl	$.LC70, %edi
	movsd	GV+1088(%rip), %xmm0
	movl	$2, %eax
	call	printf
	movl	$.LC24, %edi
	call	puts
	movsd	24(%rsp), %xmm2
	movl	$.LC76, %edi
	movsd	8(%rsp), %xmm0
	movl	$3, %eax
	movsd	16(%rsp), %xmm1
	call	printf
	movl	$.LC45, %edi
	call	puts
	movsd	GV+1048(%rip), %xmm2
	movl	GV+1020(%rip), %ecx
	movsd	.LC41(%rip), %xmm0
	movsd	32(%rsp), %xmm4
	mulsd	%xmm2, %xmm0
	testl	%ecx, %ecx
	movsd	40(%rsp), %xmm3
	mulsd	%xmm0, %xmm2
	movsd	GV+1072(%rip), %xmm0
	divsd	GV+1064(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	mulsd	GV+1080(%rip), %xmm2
	jle	.L190
	movq	gp(%rip), %rax
	movsd	GV+1040(%rip), %xmm5
	xorl	%edx, %edx
	movsd	.LC60(%rip), %xmm7
	addq	$328, %rax
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L212:
	movapd	%xmm7, %xmm6
	addl	$1, %edx
	movsd	-272(%rax), %xmm1
	addq	$376, %rax
	divsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	mulsd	-640(%rax), %xmm0
	movapd	%xmm1, %xmm6
	mulsd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm6
	movsd	%xmm1, -344(%rax)
	movsd	%xmm6, -376(%rax)
	movapd	%xmm0, %xmm6
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm6
	movsd	%xmm0, -336(%rax)
	movsd	%xmm6, -368(%rax)
	cmpl	%ecx, %edx
	jge	.L190
.L189:
	movsd	-208(%rax), %xmm0
	ucomisd	%xmm5, %xmm0
	ja	.L212
	addl	$1, %edx
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	addq	$376, %rax
	cmpl	%ecx, %edx
	jl	.L189
.L190:
	movl	$.LC77, %edi
	call	puts
	movl	$.LC33, %edi
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
	jle	.L185
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbx, %rsi
	imulq	$376, %rax, %rax
	leaq	328(%rcx), %rdx
	leaq	704(%rcx,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L193:
	movsd	(%rdx), %xmm0
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	-368(%rdx), %xmm0
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L193
.L185:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$1, %r9d
	pushq	$64
	.cfi_def_cfa_offset 96
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movl	%edi, %esi
	movl	%edi, %edx
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	call	fftw_execute
	movl	$.LC63, %edi
	call	puts
	movl	$.LC40, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm1
	movl	GV+1020(%rip), %eax
	popq	%rsi
	.cfi_def_cfa_offset 88
	movapd	%xmm1, %xmm0
	testl	%eax, %eax
	mulsd	%xmm1, %xmm0
	popq	%rdi
	.cfi_def_cfa_offset 80
	mulsd	%xmm1, %xmm0
	movsd	.LC12(%rip), %xmm1
	divsd	%xmm0, %xmm1
	jle	.L192
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbp, %rsi
	imulq	$376, %rax, %rax
	leaq	312(%rcx), %rdx
	leaq	688(%rcx,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L196:
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	-16(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -376(%rdx)
	movsd	-8(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -368(%rdx)
	cmpq	%rax, %rdx
	jne	.L196
.L192:
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
	jle	.L195
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbx, %rsi
	imulq	$376, %rax, %rax
	leaq	360(%rcx), %rdx
	leaq	736(%rcx,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L199:
	movsd	(%rdx), %xmm0
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	%xmm0, -16(%rsi)
	movsd	-368(%rdx), %xmm0
	movsd	%xmm0, -8(%rsi)
	cmpq	%rax, %rdx
	jne	.L199
.L195:
	movl	GV+1016(%rip), %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	%rbx, %rcx
	pushq	$64
	.cfi_def_cfa_offset 96
	movl	$1, %r9d
	movq	%rbp, %r8
	movl	%edi, %edx
	movl	%edi, %esi
	call	fftw_plan_dft_3d
	movq	%rax, %rdi
	movq	%rax, %r12
	call	fftw_execute
	movl	$.LC63, %edi
	call	puts
	movl	$.LC40, %edi
	call	puts
	movsd	GV+1008(%rip), %xmm1
	movl	GV+1020(%rip), %eax
	popq	%rdx
	.cfi_def_cfa_offset 88
	movapd	%xmm1, %xmm0
	testl	%eax, %eax
	mulsd	%xmm1, %xmm0
	popq	%rcx
	.cfi_def_cfa_offset 80
	mulsd	%xmm1, %xmm0
	movsd	.LC12(%rip), %xmm1
	divsd	%xmm0, %xmm1
	jle	.L198
	subl	$1, %eax
	movq	gp(%rip), %rcx
	movq	%rbp, %rsi
	imulq	$376, %rax, %rax
	leaq	344(%rcx), %rdx
	leaq	720(%rcx,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L200:
	addq	$376, %rdx
	addq	$16, %rsi
	movsd	-16(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -376(%rdx)
	movsd	-8(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -368(%rdx)
	cmpq	%rcx, %rdx
	jne	.L200
.L198:
	movq	%rbx, %rdi
	call	free
	movq	%rbp, %rdi
	call	fftw_free
	movq	%r12, %rdi
	call	fftw_destroy_plan
	movl	$.LC78, %edi
	call	puts
	movl	$.LC65, %edi
	call	puts
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L211:
	.cfi_restore_state
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.L179
	call	sqrt
	jmp	.L179
	.cfi_endproc
.LFE34:
	.size	potential_dot_linear, .-potential_dot_linear
	.section	.text.unlikely
.LCOLDE79:
	.text
.LHOTE79:
	.section	.rodata.str1.8
	.align 8
.LC80:
	.string	"Error: Incomplete number of parameters. Execute as follows:"
	.section	.rodata.str1.1
.LC81:
	.string	"%s Parameters_file\n"
.LC83:
	.string	"Variables are ready to use!"
	.section	.rodata.str1.8
	.align 8
.LC84:
	.string	"Binary data file has been read succesfully!"
	.section	.rodata.str1.1
.LC85:
	.string	"Simulation parameters"
	.section	.rodata.str1.8
	.align 8
.LC86:
	.string	"GV.NCELLS:%12d GV.NTOTALCELLS:%12d\nGV.BoxSize:%16.8lf GV.CellSize:%16.8lf\n"
	.align 8
.LC87:
	.string	"----------------------------------------------------------------"
	.section	.rodata.str1.1
.LC88:
	.string	"Cosmological parameters"
	.section	.rodata.str1.8
	.align 8
.LC89:
	.string	"GV.z_RS=%lf GV.H0=%lf \nGV.Hz=%lf GV.a_SF=%lf\n"
	.align 8
.LC90:
	.string	"FFT of density contrast finished!"
	.align 8
.LC91:
	.string	"FFT of gravitational potential finished!"
	.section	.rodata.str1.1
.LC92:
	.string	"FFT of momentum finished!"
	.section	.rodata.str1.8
	.align 8
.LC93:
	.string	"FFT of time derivative of gravitational potential finished!"
	.align 8
.LC94:
	.string	"FFT of time derivative of gravitational potential in linear approximation finished!"
	.align 8
.LC95:
	.string	"All FFT transforms have finished succesfully!"
	.section	.rodata.str1.1
.LC96:
	.string	"Binary file saved!"
	.section	.rodata.str1.8
	.align 8
.LC97:
	.string	"All codes have run succesfully!"
	.section	.rodata.str1.1
.LC98:
	.string	"FFT code finished!"
	.section	.text.unlikely
.LCOLDB99:
	.section	.text.startup,"ax",@progbits
.LHOTB99:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB35:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$1, %edi
	jle	.L218
	movq	8(%rsi), %rdi
	call	read_parameters
	movl	GV+1016(%rip), %edx
	movsd	.LC82(%rip), %xmm4
	movl	$.LC83, %edi
	movsd	%xmm4, GV+1040(%rip)
	movl	%edx, %eax
	imull	%edx, %eax
	imull	%edx, %eax
	movl	%eax, GV+1020(%rip)
	call	puts
	movl	$.LC24, %edi
	call	puts
	movslq	GV+1020(%rip), %rdi
	imulq	$376, %rdi, %rdi
	call	malloc
	movq	%rax, gp(%rip)
	call	read_binary
	movl	$.LC84, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movsd	.LC12(%rip), %xmm0
	movsd	GV+1048(%rip), %xmm5
	addsd	GV+1056(%rip), %xmm0
	movsd	GV+1088(%rip), %xmm6
	movsd	GV+1080(%rip), %xmm7
	movsd	.LC67(%rip), %xmm1
	movsd	%xmm5, 8(%rsp)
	movsd	%xmm6, 16(%rsp)
	movsd	%xmm7, 24(%rsp)
	call	pow
	mulsd	24(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jp	.L219
.L215:
	mulsd	8(%rsp), %xmm1
	movl	$.LC85, %edi
	movsd	GV+1008(%rip), %xmm0
	movsd	%xmm1, GV+1072(%rip)
	pxor	%xmm1, %xmm1
	cvtsi2sd	GV+1016(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, GV+1032(%rip)
	call	puts
	movl	GV+1020(%rip), %edx
	movl	$.LC86, %edi
	movl	$2, %eax
	movl	GV+1016(%rip), %esi
	movsd	GV+1032(%rip), %xmm1
	movsd	GV+1008(%rip), %xmm0
	call	printf
	movl	$.LC87, %edi
	call	puts
	movl	$.LC88, %edi
	call	puts
	movsd	GV+1064(%rip), %xmm3
	movl	$.LC89, %edi
	movsd	GV+1072(%rip), %xmm2
	movl	$4, %eax
	movsd	GV+1048(%rip), %xmm1
	movsd	GV+1056(%rip), %xmm0
	call	printf
	movl	$.LC24, %edi
	call	puts
	xorl	%eax, %eax
	call	transform
	movl	$.LC90, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	xorl	%eax, %eax
	call	potential
	movl	$.LC91, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movl	$.LC92, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	xorl	%eax, %eax
	call	potential_dot
	movl	$.LC93, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	call	potential_dot_linear
	movl	$.LC94, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movl	$.LC95, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	call	write_binary
	movl	$.LC96, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	movq	gp(%rip), %rdi
	call	free
	movl	$.LC24, %edi
	call	puts
	movl	$.LC97, %edi
	call	puts
	movl	$.LC98, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L219:
	.cfi_restore_state
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L215
.L218:
	movl	$.LC80, %edi
	movq	%rsi, 8(%rsp)
	call	puts
	movq	8(%rsp), %rsi
	movl	$.LC81, %edi
	xorl	%eax, %eax
	movq	(%rsi), %rsi
	call	printf
	xorl	%edi, %edi
	call	exit
	.cfi_endproc
.LFE35:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE99:
	.section	.text.startup
.LHOTE99:
	.comm	GV,1104,64
	.comm	gp,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC26:
	.long	1413754136
	.long	1075388923
	.align 8
.LC27:
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
.LC41:
	.long	0
	.long	-1074266112
	.align 8
.LC60:
	.long	0
	.long	-1074790400
	.section	.rodata.cst16
	.align 16
.LC61:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC67:
	.long	0
	.long	1074266112
	.align 8
.LC68:
	.long	858993459
	.long	1071854387
	.align 8
.LC72:
	.long	1431655765
	.long	1070945621
	.align 8
.LC82:
	.long	3271095129
	.long	27618847
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
