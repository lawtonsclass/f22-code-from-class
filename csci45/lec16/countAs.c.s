	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"countAs.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"r\000"
	.align	2
.LC1:
	.ascii	"file.txt\000"
	.align	2
.LC2:
	.ascii	"EOF on this machine is: %d\012\000"
	.align	2
.LC3:
	.ascii	"# of 'a's: %d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	ldr	r3, .L9
.LPIC0:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L9+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	fopen(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #4]
	mov	r1, #-1
	ldr	r3, .L9+8
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L5:
	ldr	r0, [r7, #8]
	bl	fgetc(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L8
	ldr	r3, [r7, #12]
	cmp	r3, #97
	bne	.L5
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	b	.L5
.L8:
	nop
	ldr	r0, [r7, #8]
	bl	fclose(PLT)
	ldr	r1, [r7, #4]
	ldr	r3, .L9+12
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
