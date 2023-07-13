	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"sound.c"
	.text
	.align	2
	.global	setupSounds
	.syntax unified
	.arm
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L3
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r7, #0
	ldr	r3, .L7+8
	ldr	ip, [r3]
	mov	r5, r1
	str	r7, [ip, #20]
	mov	r8, r2
	mov	r1, r6
	mov	r3, #910163968
	mov	r0, #1
	ldr	r2, .L7+12
	ldr	r4, .L7+16
	mov	lr, pc
	bx	r4
	mov	r2, #128
	mvn	r1, #1520
	mov	r0, #1
	ldr	r4, .L7+20
	ldr	r3, .L7+24
	str	r0, [r4, #12]
	str	r8, [r4, #16]
	mov	r0, r5
	strh	r7, [r3, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	str	r5, [r4, #4]
	ldr	r3, .L7+28
	str	r6, [r4]
	mov	lr, pc
	bx	r3
	ldr	r5, .L7+32
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L7+36
	ldr	r3, .L7+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L7+44
	mov	lr, pc
	bx	r3
	str	r7, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L8:
	.align	3
.L7:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109024
	.word	DMANow
	.word	.LANCHOR0
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r7, #0
	ldr	r3, .L11+8
	ldr	ip, [r3]
	mov	r5, r1
	str	r7, [ip, #32]
	mov	r8, r2
	mov	r1, r6
	mov	r3, #910163968
	mov	r0, #2
	ldr	r2, .L11+12
	ldr	r4, .L11+16
	mov	lr, pc
	bx	r4
	mov	r2, #128
	mvn	r1, #1520
	mov	r0, #1
	ldr	r4, .L11+20
	ldr	r3, .L11+24
	str	r0, [r4, #44]
	str	r6, [r4, #32]
	str	r8, [r4, #48]
	mov	r0, r5
	strh	r7, [r3, #6]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	str	r5, [r4, #36]
	ldr	r3, .L11+28
	mov	lr, pc
	bx	r3
	ldr	r5, .L11+32
	adr	r3, .L11
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L11+36
	ldr	r3, .L11+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L11+44
	mov	lr, pc
	bx	r3
	str	r7, [r4, #60]
	str	r0, [r4, #52]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109028
	.word	DMANow
	.word	.LANCHOR0
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L32
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L27
	push	{r4, lr}
	ldr	r4, .L32+4
	ldr	r3, [r4, #12]
	cmp	r3, r2
	beq	.L16
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r4, #28]
	ble	.L16
	ldr	r2, [r4, #16]
	cmp	r2, #0
	bne	.L30
	ldr	r1, .L32+8
	ldr	r3, .L32+12
	ldr	r1, [r1]
	str	r2, [r4, #12]
	str	r2, [r1, #20]
	strh	r2, [r3, #2]	@ movhi
.L16:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r4, #60]
	ldr	r2, [r4, #52]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r4, #60]
	ble	.L20
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L31
	ldr	r1, .L32+8
	ldr	r3, .L32+12
	ldr	r1, [r1]
	str	r2, [r4, #44]
	str	r2, [r1, #32]
	strh	r2, [r3, #6]	@ movhi
.L20:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L32
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L27:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L30:
	ldm	r4, {r0, r1}
	bl	playSoundA
	b	.L16
.L31:
	add	r0, r4, #32
	ldm	r0, {r0, r1}
	bl	playSoundB
	b	.L20
.L33:
	.align	2
.L32:
	.word	67109376
	.word	.LANCHOR0
	.word	dma
	.word	67109120
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	mov	r1, #67108864
	ldr	r2, .L35
	ldr	r3, .L35+4
	ldr	ip, .L35+8
	str	ip, [r3, #4092]
	ldrh	r3, [r2]
	orr	r3, r3, r0
	strh	r3, [r2]	@ movhi
	ldrh	r3, [r1, #4]
	orr	r3, r3, #8
	strh	r0, [r2, #8]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L38
	ldr	r2, .L38+4
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r1, #44]
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.word	67109120
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	mov	r2, #128
	ldr	r1, .L41
	ldr	r3, .L41+4
	str	r0, [r1, #12]
	strh	r2, [r3, #2]	@ movhi
	str	r0, [r1, #44]
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.word	67109120
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L44
	ldr	r0, .L44+4
	ldr	r1, [r2]
	ldr	r2, .L44+8
	str	r3, [r1, #20]
	str	r3, [r0, #12]
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r0, #44]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L45:
	.align	2
.L44:
	.word	dma
	.word	.LANCHOR0
	.word	67109120
	.size	stopSound, .-stopSound
	.align	2
	.global	stopSoundA
	.syntax unified
	.arm
	.type	stopSoundA, %function
stopSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L47
	ldr	r1, .L47+4
	ldr	r0, [r2]
	ldr	r2, .L47+8
	str	r3, [r0, #20]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	bx	lr
.L48:
	.align	2
.L47:
	.word	dma
	.word	.LANCHOR0
	.word	67109120
	.size	stopSoundA, .-stopSoundA
	.align	2
	.global	stopSoundB
	.syntax unified
	.arm
	.type	stopSoundB, %function
stopSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L50
	ldr	r1, .L50+4
	ldr	r0, [r2]
	ldr	r2, .L50+8
	str	r3, [r0, #32]
	str	r3, [r1, #44]
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L51:
	.align	2
.L50:
	.word	dma
	.word	.LANCHOR0
	.word	67109120
	.size	stopSoundB, .-stopSoundB
	.global	soundB
	.global	soundA
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	soundA, %object
	.size	soundA, 32
soundA:
	.space	32
	.type	soundB, %object
	.size	soundB, 32
soundB:
	.space	32
	.ident	"GCC: (devkitARM release 61) 13.1.0"
