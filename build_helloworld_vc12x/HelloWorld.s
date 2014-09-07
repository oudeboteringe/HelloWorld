	.arch armv6
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 2
	.file	"HelloWorld.cpp"
	.section	.text.startup.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, #8
	sub	sp, sp, #28
	bl	malloc(PLT)
	subs	r5, r0, #0
	beq	.L67
.L2:
	ldr	r2, .L73
	ldr	r3, .L73+4
.LPIC8:
	add	r2, pc, r2
	str	r2, [sp, #12]
	ldr	r2, .L73+8
.LPIC11:
	add	r3, pc, r3
.LPIC2:
	add	r2, pc, r2
	str	r2, [sp, #16]
	add	r3, r3, #20
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	mov	r6, #0
	add	r3, r3, #21
	add	r10, r2, #20
	str	r3, [sp, #8]
	strb	r6, [r5]
	add	r9, r5, #8
	mov	r4, r5
	b	.L3
.L69:
	cmp	r7, #20
	bls	.L5
	ldr	ip, .L73+12
	add	lr, r4, #21
.LPIC0:
	add	ip, pc, ip
	cmp	lr, r5
	ldmia	ip!, {r0, r1, r2, r3}
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	str	r0, [r4]	@ unaligned
	ldr	r0, [ip]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	strb	r7, [r4, #20]
	str	r0, [r4, #16]	@ unaligned
	ldrneb	r3, [r5]	@ zero_extendqisi2
	movne	r5, lr
	strneb	r3, [r4, #21]
.L6:
	mov	r1, #150
	mov	r2, r4
	mov	r3, #0
	mov	r0, #120
	bl	s3eDebugPrint(PLT)
	bl	s3eSurfaceShow(PLT)
	mov	r0, #1000
	bl	s3eDeviceYield(PLT)
	eor	r6, r6, #1
.L3:
	bl	s3eDeviceCheckQuitRequest(PLT)
	subs	r1, r0, #0
	bne	.L68
	mov	r2, #255
	bl	s3eSurfaceClear(PLT)
	cmp	r6, #0
	rsb	r7, r4, r5
	beq	.L69
	cmp	r7, #19
	bls	.L16
	ldr	ip, .L73+16
	add	lr, r4, #20
.LPIC6:
	add	ip, pc, ip
	cmp	lr, r5
	ldmia	ip!, {r0, r1, r2, r3}
	str	r0, [r4]	@ unaligned
	ldr	r0, [ip]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r0, [r4, #16]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	ldrneb	r3, [r5]	@ zero_extendqisi2
	movne	r5, lr
	strneb	r3, [r4, #20]
	b	.L6
.L5:
	cmp	r7, #0
	bne	.L70
.L7:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #8]
	add	fp, r7, r2
	cmp	fp, r3
	beq	.L6
	rsb	r8, fp, r3
	cmn	r8, #1
	beq	.L8
	mvn	r2, #1
	rsb	r2, r8, r2
	cmp	r7, r2
	bls	.L28
.L8:
	ldr	r0, .L73+20
.LPIC12:
	add	r0, pc, r0
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
.L28:
	rsb	r2, r4, r9
	sub	r2, r2, #1
	add	r1, r8, r7
	cmp	r1, r2
	bhi	.L65
	ldr	r2, .L73+24
	add	r1, fp, #1
.LPIC5:
	add	r2, pc, r2
	add	r3, r2, #21
	cmp	r1, r3
	beq	.L15
	ldr	r3, [sp, #8]
	add	r0, r5, #1
	rsb	r2, r1, r3
	bl	memcpy(PLT)
.L15:
	ldr	r2, [sp, #16]
.L56:
	ldrb	r3, [r7, r2]	@ zero_extendqisi2
	mov	r2, #0
	strb	r2, [r5, r8]
	strb	r3, [r5]
	add	r5, r5, r8
	b	.L6
.L16:
	cmp	r7, #0
	bne	.L71
.L17:
	ldr	r3, [sp, #12]
	add	fp, r7, r3
	cmp	fp, r10
	beq	.L6
	rsb	r8, fp, r10
	cmn	r8, #1
	beq	.L18
	mvn	r2, #1
	rsb	r2, r8, r2
	cmp	r7, r2
	bls	.L29
.L18:
	ldr	r0, .L73+28
.LPIC13:
	add	r0, pc, r0
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
.L29:
	rsb	r2, r4, r9
	sub	r2, r2, #1
	add	r1, r8, r7
	cmp	r1, r2
	bhi	.L65
	ldr	r2, [sp, #20]
	add	r1, fp, #1
	cmp	r1, r2
	beq	.L25
	rsb	r2, r1, r10
	add	r0, r5, #1
	bl	memcpy(PLT)
.L25:
	ldr	r2, [sp, #12]
	b	.L56
.L65:
	add	r9, r7, #1
	cmp	r8, r7
	addcs	r9, r9, r8
	addcc	r9, r9, r7
	cmp	r9, #0
	streq	r9, [sp, #4]
	bne	.L72
.L20:
	cmp	r5, r4
	ldr	r0, [sp, #4]
	beq	.L22
	mov	r1, r4
	mov	r2, r7
	bl	memmove(PLT)
	add	r0, r0, r7
.L22:
	mov	r1, fp
	mov	r2, r8
	bl	memcpy(PLT)
	mov	r3, #0
	cmp	r4, #0
	strb	r3, [r0, r8]
	add	r5, r0, r8
	beq	.L23
	mov	r0, r4
	bl	free(PLT)
.L23:
	ldr	r3, [sp, #4]
	add	r9, r3, r9
	mov	r4, r3
	b	.L6
.L68:
	cmp	r4, #0
	beq	.L48
	mov	r0, r4
	bl	free(PLT)
.L48:
	mov	r0, #0
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L71:
	ldr	r1, .L73+32
	mov	r0, r4
.LPIC7:
	add	r1, pc, r1
	mov	r2, r7
	bl	memcpy(PLT)
	b	.L17
.L70:
	ldr	r1, .L73+36
	mov	r0, r4
.LPIC1:
	add	r1, pc, r1
	mov	r2, r7
	bl	memcpy(PLT)
	b	.L7
.L72:
	mov	r0, r9
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [sp, #4]
	bne	.L20
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	str	r0, [sp, #4]
	b	.L20
.L67:
	mov	r0, #8
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r5, r0
	b	.L2
.L74:
	.align	2
.L73:
	.word	.LC1-(.LPIC8+8)
	.word	.LC1-(.LPIC11+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC6+8)
	.word	.LC2-(.LPIC12+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC13+8)
	.word	.LC1-(.LPIC7+8)
	.word	.LC0-(.LPIC1+8)
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"`xffffffHallo Wereld!\000"
	.space	2
.LC1:
	.ascii	"`xffffffHello World!\000"
	.space	3
.LC2:
	.ascii	"basic_string\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
