	.file	"longest-valid-parentheses.c"
	.text
	.globl	longestValidParentheses
	.p2align	4
	.type	longestValidParentheses,@function
longestValidParentheses:
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	32(%rsp), %rdi
	callq	strlen@PLT

	movl	%eax, 28(%rsp)
	movl	28(%rsp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, 16(%rsp)
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rsp)
	movslq	%ecx, %rcx
	movl	$-1, (%rax,%rcx,4)
	movl	$0, 8(%rsp)
	movl	$0, 4(%rsp)
.LBB0_1:
	movl	4(%rsp), %eax
	cmpl	28(%rsp), %eax
	jge	.LBB0_13
# %bb.2:
	movq	32(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$40, %eax
	jne	.LBB0_4
# %bb.3:
	movl	4(%rsp), %edx
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rsp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_11
.LBB0_4:
	movl	12(%rsp), %eax
	addl	$-1, %eax
	movl	%eax, 12(%rsp)
	cmpl	$-1, 12(%rsp)
	jne	.LBB0_6
# %bb.5:
	movl	4(%rsp), %edx
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rsp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_10
.LBB0_6:
	movl	4(%rsp), %eax
	movq	16(%rsp), %rcx
	movslq	12(%rsp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	8(%rsp), %eax
	jle	.LBB0_8
# %bb.7:
	movl	4(%rsp), %eax
	movq	16(%rsp), %rcx
	movslq	12(%rsp), %rdx
	subl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rsp)
	jmp	.LBB0_9
.LBB0_8:
	movl	8(%rsp), %eax
	movl	%eax, (%rsp)
.LBB0_9:
	movl	(%rsp), %eax
	movl	%eax, 8(%rsp)
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 4(%rsp)
	jmp	.LBB0_1
.LBB0_13:
	movq	16(%rsp), %rdi
	callq	free@PLT
	movl	8(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	longestValidParentheses, .Lfunc_end0-longestValidParentheses
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	movl	.L__const.main.s1(%rip), %eax
	movl	%eax, 16(%rsp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	16(%rsp), %rdi
	callq	longestValidParentheses@PLT
	movl	%eax, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	.L__const.main.s2(%rip), %eax
	movl	%eax, 9(%rsp)
	movw	.L__const.main.s2+4(%rip), %ax
	movw	%ax, 13(%rsp)
	movb	.L__const.main.s2+6(%rip), %al
	movb	%al, 15(%rsp)
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	9(%rsp), %rdi
	callq	longestValidParentheses@PLT
	movl	%eax, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	memset@PLT
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	8(%rsp), %rdi
	callq	longestValidParentheses@PLT
	movl	%eax, %esi
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L__const.main.s1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.main.s1:
	.asciz	"(()"
	.size	.L__const.main.s1, 4

	.type	.L.str,@object
.L.str:
	.asciz	"Example 1:\n"
	.size	.L.str, 12

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"s = \"(()\"\n"
	.size	.L.str.1, 11

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Longest Valid Parentheses: %d\n\n"
	.size	.L.str.2, 32

	.type	.L__const.main.s2,@object
.L__const.main.s2:
	.asciz	")()())"
	.size	.L__const.main.s2, 7

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"Example 2:\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"s = \")()())\"\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"Example 3:\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"s = \"\"\n"
	.size	.L.str.6, 8

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"Longest Valid Parentheses: %d\n"
	.size	.L.str.7, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym longestValidParentheses
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym free
	.addrsig_sym printf
