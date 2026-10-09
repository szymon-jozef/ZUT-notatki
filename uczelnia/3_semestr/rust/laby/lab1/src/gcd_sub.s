	.file	"gcd_sub.1e33a45d982b2d22-cgu.0"
	.section	.text._RNvCs2ALji1wryY8_7gcd_sub7gcd_sub,"ax",@progbits
	.globl	_RNvCs2ALji1wryY8_7gcd_sub7gcd_sub
	.p2align	4
	.type	_RNvCs2ALji1wryY8_7gcd_sub7gcd_sub,@function
_RNvCs2ALji1wryY8_7gcd_sub7gcd_sub:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
.LBB0_1:
	movq	24(%rsp), %rax
	cmpq	32(%rsp), %rax
	jne	.LBB0_3
	movq	24(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:
	.cfi_def_cfa_offset 48
	movq	24(%rsp), %rax
	cmpq	32(%rsp), %rax
	ja	.LBB0_5
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 16(%rsp)
	cmpq	%rcx, %rax
	jb	.LBB0_7
	jmp	.LBB0_6
.LBB0_5:
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 8(%rsp)
	cmpq	%rcx, %rax
	jb	.LBB0_9
	jmp	.LBB0_8
.LBB0_6:
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB0_1
.LBB0_7:
	leaq	.Lanon.74accf476ba42064f0b195c61eb89188.1(%rip), %rdi
	callq	*_RNvNtNtCs6Xa2QwhY5JM_4core9panicking11panic_const24panic_const_sub_overflow@GOTPCREL(%rip)
.LBB0_8:
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB0_1
.LBB0_9:
	leaq	.Lanon.74accf476ba42064f0b195c61eb89188.2(%rip), %rdi
	callq	*_RNvNtNtCs6Xa2QwhY5JM_4core9panicking11panic_const24panic_const_sub_overflow@GOTPCREL(%rip)
.Lfunc_end0:
	.size	_RNvCs2ALji1wryY8_7gcd_sub7gcd_sub, .Lfunc_end0-_RNvCs2ALji1wryY8_7gcd_sub7gcd_sub
	.cfi_endproc

	.type	.Lanon.74accf476ba42064f0b195c61eb89188.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.74accf476ba42064f0b195c61eb89188.0:
	.asciz	"gcd_sub.rs"
	.size	.Lanon.74accf476ba42064f0b195c61eb89188.0, 11

	.type	.Lanon.74accf476ba42064f0b195c61eb89188.1,@object
	.section	.data.rel.ro..Lanon.74accf476ba42064f0b195c61eb89188.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.74accf476ba42064f0b195c61eb89188.1:
	.quad	.Lanon.74accf476ba42064f0b195c61eb89188.0
	.asciz	"\n\000\000\000\000\000\000\000\003\000\000\000$\000\000"
	.size	.Lanon.74accf476ba42064f0b195c61eb89188.1, 24

	.type	.Lanon.74accf476ba42064f0b195c61eb89188.2,@object
	.section	.data.rel.ro..Lanon.74accf476ba42064f0b195c61eb89188.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.74accf476ba42064f0b195c61eb89188.2:
	.quad	.Lanon.74accf476ba42064f0b195c61eb89188.0
	.asciz	"\n\000\000\000\000\000\000\000\003\000\000\000\024\000\000"
	.size	.Lanon.74accf476ba42064f0b195c61eb89188.2, 24

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01) (built from a source tarball)"
	.section	".note.GNU-stack","",@progbits
