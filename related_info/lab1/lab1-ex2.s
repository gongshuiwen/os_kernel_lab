	.file	"lab1-ex2.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	call	A
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	A
	.type	A, @function
A:
.LFB1:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$1, -20(%ebp)
	movl	$2, -16(%ebp)
	movl	$3, -12(%ebp)

	movl	-12(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax

	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	B
	addl	$16, %esp
	
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	A, .-A
	.section	.rodata
	.align 4
.LC0:
	.string	" [ebp-12] --?? = %p --- %d \n [ebp-08] --?? = %p --- %d \n [ebp-04] --?? = %p --- %d \n [ebp+00] -oebp= %p --- %p \n [ebp+04] -ret = %p --- %p \n [ebp+08] -- d = %p --- %d \n [ebp+12] -- e = %p --- %d \n [ebp+16] -- f = %p --- %d \n "
	.text
	.globl	B
	.type	B, @function
B:
.LFB2:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
#APP
# 25 "lab1-ex2.c" 1
	movl %ebp,%eax
	
# 0 "" 2
#NO_APP
	movl	%eax, -32(%ebp)
	movl	$4, -28(%ebp)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -48(%ebp)
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	%edx, -52(%ebp)
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -56(%ebp)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	%ecx, -60(%ebp)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -64(%ebp)
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %esi
	movl	%esi, -68(%ebp)
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -72(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edi
	movl	%edi, -76(%ebp)
	movl	-32(%ebp), %edi
	movl	-32(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %esi
	movl	-32(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -80(%ebp)
	movl	-32(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -84(%ebp)
	movl	-32(%ebp), %eax
	subl	$12, %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	subl	$12, %eax
	subl	$12, %esp
	pushl	-44(%ebp)
	pushl	-48(%ebp)
	pushl	-52(%ebp)
	pushl	-56(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	pushl	-68(%ebp)
	pushl	-72(%ebp)
	pushl	-76(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	-80(%ebp)
	pushl	%ecx
	pushl	-84(%ebp)
	pushl	%edx
	pushl	%eax
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$80, %esp
	nop
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	B, .-B
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB3:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE3:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB4:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE4:
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
