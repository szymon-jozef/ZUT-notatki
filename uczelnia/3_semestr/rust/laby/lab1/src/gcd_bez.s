	.file	"gcd.6643139bf81a864-cgu.0"
	.section	.text._RNvCsy1jhtvzCfM_3gcd3gcd,"ax",@progbits
	.globl	_RNvCsy1jhtvzCfM_3gcd3gcd
	.p2align	4
	.type	_RNvCsy1jhtvzCfM_3gcd3gcd,@function
_RNvCsy1jhtvzCfM_3gcd3gcd:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
.LBB0_1:
	cmpq	$0, 32(%rsp)
	jne	.LBB0_3
	movq	24(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:
	.cfi_def_cfa_offset 48
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB0_5
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	32(%rsp), %rax
	movq	%rdx, 32(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB0_1
.LBB0_5:
	leaq	.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.1(%rip), %rdi
	callq	*_RNvNtNtCs6Xa2QwhY5JM_4core9panicking11panic_const23panic_const_rem_by_zero@GOTPCREL(%rip)
.Lfunc_end0:
	.size	_RNvCsy1jhtvzCfM_3gcd3gcd, .Lfunc_end0-_RNvCsy1jhtvzCfM_3gcd3gcd
	.cfi_endproc

	.type	.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.0:
	.asciz	"gcd.rs"
	.size	.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.0, 7

	.type	.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.1,@object
	.section	.data.rel.ro..Lanon.7fcf6383cbbc6b99e4703d6007e30d82.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.1:
	.quad	.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.0
	.asciz	"\006\000\000\000\000\000\000\000\003\000\000\000\023\000\000"
	.size	.Lanon.7fcf6383cbbc6b99e4703d6007e30d82.1, 24

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01) (built from a source tarball)"
	.section	".note.GNU-stack","",@progbits
