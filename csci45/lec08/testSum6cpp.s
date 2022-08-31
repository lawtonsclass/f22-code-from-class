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
	.file	"testSum6cpp.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	.fnstart
.LFB1719:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #8
	add	r7, sp, #8
	ldr	r4, .L3
.LPIC0:
	add	r4, pc
	movs	r3, #6
	str	r3, [sp, #4]
	movs	r3, #5
	str	r3, [sp]
	movs	r3, #4
	movs	r2, #3
	movs	r1, #2
	movs	r0, #1
	bl	sum6(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L3+4
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEi(PLT)
	mov	r2, r0
	ldr	r3, .L3+8
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	_ZNSolsEPFRSoS_E(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #4
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L4:
	.align	2
.L3:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_ZSt4cout(GOT)
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(GOT)
	.fnend
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB2222:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L8
.LPIC3:
	add	r4, pc
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [r7]
	movw	r2, #65535
	cmp	r3, r2
	bne	.L7
	ldr	r3, .L8+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	_ZNSt8ios_base4InitC1Ev(PLT)
	ldr	r3, .L8+8
.LPIC2:
	add	r3, pc
	mov	r2, r3
	ldr	r3, .L8+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L8+16
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	__aeabi_atexit(PLT)
.L7:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_ZStL8__ioinit-(.LPIC1+4)
	.word	__dso_handle-(.LPIC2+4)
	.word	_ZNSt8ios_base4InitD1Ev(GOT)
	.word	_ZStL8__ioinit-(.LPIC4+4)
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2223:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movw	r1, #65535
	movs	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii(PLT)
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
