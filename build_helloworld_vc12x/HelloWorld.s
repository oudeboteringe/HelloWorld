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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, #8
	sub	sp, sp, #36
	bl	malloc(PLT)
	subs	r5, r0, #0
	beq	.L61
.L2:
	ldr	r8, .L67
	ldr	r3, .L67+4
.LPIC8:
	add	r8, pc, r8
	str	r8, [sp, #12]
	ldr	r8, .L67+8
.LPIC11:
	add	r3, pc, r3
.LPIC6:
	add	r8, pc, r8
	str	r8, [sp, #20]
	ldr	r8, [sp, #12]
	mov	r6, #0
	add	r10, r8, #37
	ldr	r8, [sp, #20]
	add	r3, r3, #37
	add	r8, r8, #32
	strb	r6, [r5]
	str	r3, [sp, #24]
	str	r8, [sp, #28]
	bl	s3eDeviceCheckQuitRequest(PLT)
	add	r9, r5, #8
	mov	r4, r5
	subs	r1, r0, #0
	bne	.L62
.L28:
	mov	r2, #255
	bl	s3eSurfaceClear(PLT)
	cmp	r6, #0
	rsb	r7, r4, r5
	bne	.L4
	cmp	r7, #37
	bls	.L5
	ldr	r7, .L67+12
	mov	lr, r4
.LPIC0:
	add	r7, pc, r7
	add	r8, r7, #32
.L6:
	mov	ip, r7
	add	lr, lr, #16
	ldmia	ip!, {r0, r1, r2, r3}
	add	r7, r7, #16
	cmp	ip, r8
	str	r0, [lr, #-16]	@ unaligned
	str	r1, [lr, #-12]	@ unaligned
	str	r2, [lr, #-8]	@ unaligned
	str	r3, [lr, #-4]	@ unaligned
	bne	.L6
	ldrh	r3, [r7, #4]	@ unaligned
	ldr	r0, [r7]	@ unaligned
	add	r2, r4, #38
	cmp	r2, r5
	strh	r3, [lr, #4]	@ unaligned
	str	r0, [lr]	@ unaligned
	ldrneb	r3, [r5]	@ zero_extendqisi2
	movne	r5, r2
	strneb	r3, [r4, #38]
	b	.L7
.L4:
	cmp	r7, #36
	bls	.L17
	ldr	r7, [sp, #20]
	mov	lr, r4
.L18:
	mov	ip, r7
	ldr	r8, [sp, #28]
	ldmia	ip!, {r0, r1, r2, r3}
	add	r7, r7, #16
	add	lr, lr, #16
	cmp	ip, r8
	str	r0, [lr, #-16]	@ unaligned
	str	r1, [lr, #-12]	@ unaligned
	str	r2, [lr, #-8]	@ unaligned
	str	r3, [lr, #-4]	@ unaligned
	bne	.L18
	ldrb	r3, [r7, #4]	@ zero_extendqisi2
	ldr	r0, [r7]	@ unaligned
	add	r2, r4, #37
	cmp	r2, r5
	strb	r3, [lr, #4]
	str	r0, [lr]	@ unaligned
	ldrneb	r3, [r5]	@ zero_extendqisi2
	movne	r5, r2
	strneb	r3, [r4, #37]
	b	.L7
.L5:
	cmp	r7, #0
	bne	.L63
.L8:
	ldr	fp, .L67+16
.LPIC2:
	add	fp, pc, fp
	add	r3, r7, fp
	add	r2, fp, #38
	cmp	r3, r2
	beq	.L7
	rsb	r8, r3, r2
	cmn	r8, #1
	beq	.L9
	mvn	r1, #1
	rsb	r1, r8, r1
	cmp	r7, r1
	bls	.L30
.L9:
	ldr	r0, .L67+20
	str	r2, [sp, #8]
.LPIC12:
	add	r0, pc, r0
	str	r3, [sp, #4]
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
.L30:
	rsb	r1, r4, r9
	sub	r1, r1, #1
	add	r0, r8, r7
	cmp	r0, r1
	bls	.L10
	add	r9, r7, #1
	cmp	r8, r7
	addcs	r9, r9, r8
	addcc	r9, r9, r7
	cmp	r9, #0
	moveq	fp, r9
	bne	.L64
.L11:
	cmp	r5, r4
	mov	r0, fp
	beq	.L13
	mov	r1, r4
	mov	r2, r7
	str	r3, [sp, #4]
	bl	memmove(PLT)
	ldr	r3, [sp, #4]
	add	r0, r0, r7
.L13:
	mov	r1, r3
	mov	r2, r8
	bl	memcpy(PLT)
	mov	r3, #0
	cmp	r4, #0
	strb	r3, [r0, r8]
	add	r5, r0, r8
	beq	.L14
	mov	r0, r4
	bl	free(PLT)
.L14:
	add	r9, fp, r9
	mov	r4, fp
.L7:
	mov	r2, r4
	mov	r3, #0
	mov	r1, #150
	mov	r0, #120
	bl	s3eDebugPrint(PLT)
	bl	s3eSurfaceShow(PLT)
	mov	r0, #1000
	bl	s3eDeviceYield(PLT)
	bl	s3eDeviceCheckQuitRequest(PLT)
	eor	r6, r6, #1
	subs	r1, r0, #0
	beq	.L28
.L62:
	cmp	r4, #0
	beq	.L50
	mov	r0, r4
	bl	free(PLT)
.L50:
	mov	r0, #0
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L17:
	cmp	r7, #0
	bne	.L65
.L19:
	ldr	r8, [sp, #12]
	add	fp, r7, r8
	cmp	fp, r10
	beq	.L7
	rsb	r8, fp, r10
	cmn	r8, #1
	beq	.L20
	mvn	r2, #1
	rsb	r2, r8, r2
	cmp	r7, r2
	bls	.L31
.L20:
	ldr	r0, .L67+24
.LPIC13:
	add	r0, pc, r0
	bl	_ZN4_STL24__stl_throw_length_errorEPKc(PLT)
.L31:
	rsb	r2, r4, r9
	sub	r2, r2, #1
	add	r1, r8, r7
	cmp	r1, r2
	bls	.L21
	add	r9, r7, #1
	cmp	r8, r7
	addcs	r9, r9, r8
	addcc	r9, r9, r7
	cmp	r9, #0
	streq	r9, [sp, #16]
	bne	.L66
.L22:
	cmp	r5, r4
	ldr	r0, [sp, #16]
	beq	.L24
	mov	r1, r4
	mov	r2, r7
	bl	memmove(PLT)
	add	r0, r0, r7
.L24:
	mov	r1, fp
	mov	r2, r8
	bl	memcpy(PLT)
	mov	r3, #0
	cmp	r4, #0
	strb	r3, [r0, r8]
	add	r5, r0, r8
	beq	.L25
	mov	r0, r4
	bl	free(PLT)
.L25:
	ldr	r3, [sp, #16]
	add	r9, r3, r9
	mov	r4, r3
	b	.L7
.L21:
	ldr	r2, [sp, #24]
	add	r1, fp, #1
	cmp	r1, r2
	beq	.L27
	rsb	r2, r1, r10
	add	r0, r5, #1
	bl	memcpy(PLT)
.L27:
	ldr	r2, [sp, #12]
	ldrb	r3, [r7, r2]	@ zero_extendqisi2
	mov	r2, #0
	strb	r2, [r5, r8]
	strb	r3, [r5]
	add	r5, r5, r8
	b	.L7
.L10:
	ldr	r0, .L67+28
	add	r1, r3, #1
.LPIC5:
	add	r0, pc, r0
	add	r3, r0, #38
	cmp	r1, r3
	beq	.L16
	rsb	r2, r1, r2
	add	r0, r5, #1
	bl	memcpy(PLT)
.L16:
	ldrb	r3, [r7, fp]	@ zero_extendqisi2
	mov	r2, #0
	strb	r2, [r5, r8]
	strb	r3, [r5]
	add	r5, r5, r8
	b	.L7
.L63:
	ldr	r1, .L67+32
	mov	r0, r4
.LPIC1:
	add	r1, pc, r1
	mov	r2, r7
	bl	memcpy(PLT)
	b	.L8
.L65:
	ldr	r1, .L67+36
	mov	r0, r4
.LPIC7:
	add	r1, pc, r1
	mov	r2, r7
	bl	memcpy(PLT)
	b	.L19
.L66:
	mov	r0, r9
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [sp, #16]
	bne	.L22
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	str	r0, [sp, #16]
	b	.L22
.L64:
	mov	r0, r9
	str	r3, [sp, #4]
	bl	malloc(PLT)
	ldr	r3, [sp, #4]
	subs	fp, r0, #0
	bne	.L11
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r3, [sp, #4]
	mov	fp, r0
	b	.L11
.L61:
	mov	r0, #8
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r5, r0
	b	.L2
.L68:
	.align	2
.L67:
	.word	.LC1-(.LPIC8+8)
	.word	.LC1-(.LPIC11+8)
	.word	.LC1-(.LPIC6+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC2-(.LPIC12+8)
	.word	.LC2-(.LPIC13+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC7+8)
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"`xffffffCristiane is mijn grote schat!\000"
	.space	1
.LC1:
	.ascii	"`xffffffCristiane is mijn lieve baby!\000"
	.space	2
.LC2:
	.ascii	"basic_string\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
