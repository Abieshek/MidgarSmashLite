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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel3
	.syntax unified
	.arm
	.type	setPixel3, %function
setPixel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel3, .-setPixel3
	.align	2
	.global	setPixel4
	.syntax unified
	.arm
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	ldr	ip, [r3]
	add	r1, r1, r1, lsr #31
	bic	r1, r1, #1
	ldrh	r3, [ip, r1]
	tst	r0, #1
	andne	r3, r3, #255
	andeq	r3, r3, #65280
	orrne	r2, r3, r2, lsl #8
	orreq	r2, r3, r2
	strh	r2, [ip, r1]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect3
	.syntax unified
	.arm
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	bxle	lr
	add	r3, r3, r1
	rsb	ip, r3, r3, lsl #4
	push	{r4, lr}
	add	lr, r0, ip, lsl #4
	mov	ip, #0
	ldr	r4, .L19
	rsb	r1, r1, r1, lsl #4
	add	r3, r0, r1, lsl #4
	ldm	r4, {r0, r1}
	orr	r2, r2, #-2130706432
	add	r3, r0, r3, lsl #1
	add	r0, r0, lr, lsl #1
.L12:
	add	lr, sp, #8
	str	ip, [r1, #44]
	str	lr, [r1, #36]
	str	r3, [r1, #40]
	add	r3, r3, #480
	cmp	r3, r0
	str	r2, [r1, #44]
	bne	.L12
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	orr	ip, ip, lr, lsl #8
	subs	lr, r3, #0
	strh	ip, [sp, #14]	@ movhi
	ble	.L21
	add	lr, r1, lr
	ldr	ip, .L47
	rsb	r1, r1, r1, lsl #4
	rsb	lr, lr, lr, lsl #4
	ands	fp, r0, #1
	ldm	ip, {r4, ip}
	add	r3, r0, r1, lsl #4
	add	lr, r0, lr, lsl #4
	sub	r7, r2, #1
	and	r6, r2, #1
	beq	.L45
.L23:
	cmp	r6, #0
	beq	.L46
	cmp	r2, #1
	ble	.L33
	mov	r1, #0
	str	r1, [ip, #44]
	add	r1, r3, #1
	add	r1, r1, r1, lsr #31
	bic	r1, r1, #1
	asr	r5, r7, #1
	add	r1, r4, r1
	orr	r5, r5, #-2130706432
	add	r8, sp, #14
	str	r8, [ip, #36]
	str	r1, [ip, #40]
	str	r5, [ip, #44]
.L33:
	add	r1, r3, r3, lsr #31
	bic	r1, r1, #1
	ldrb	r5, [r4, r1]	@ zero_extendqisi2
	ldrb	r8, [sp, #56]	@ zero_extendqisi2
	add	r3, r3, #240
	orr	r5, r5, r8, lsl #8
	cmp	r3, lr
	strh	r5, [r4, r1]	@ movhi
	bne	.L23
.L21:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L45:
	asr	r1, r7, #1
	add	r0, r0, r2
	add	r10, r2, r2, lsr #31
	orr	r1, r1, #-2130706432
	sub	r0, r0, #1
	asr	r10, r10, #1
	str	r1, [sp, #4]
	and	r0, r0, #1
	orr	r10, r10, #-2130706432
	add	r9, sp, #14
.L27:
	add	r1, r7, r3
	add	r1, r1, r1, lsr #31
	cmp	r6, #0
	bic	r1, r1, #1
	beq	.L41
	cmp	r2, #1
	ble	.L28
	add	r5, r3, r3, lsr #31
	bic	r5, r5, #1
	add	r5, r4, r5
	str	fp, [ip, #44]
	str	r9, [ip, #36]
	str	r5, [ip, #40]
	ldr	r5, [sp, #4]
	str	r5, [ip, #44]
.L28:
	ldrh	r8, [r4, r1]
	ldrb	r5, [sp, #56]	@ zero_extendqisi2
	cmp	r0, #0
	and	r5, r5, #255
	andne	r8, r8, #255
	andeq	r8, r8, #65280
	add	r3, r3, #240
	orrne	r5, r8, r5, lsl #8
	orreq	r5, r5, r8
	cmp	r3, lr
	strh	r5, [r4, r1]	@ movhi
	bne	.L27
	b	.L21
.L41:
	add	r2, r3, r3, lsr #31
	bic	r2, r2, #1
	add	r3, r3, #240
	add	r2, r4, r2
	cmp	r3, lr
	str	r6, [ip, #44]
	str	r9, [ip, #36]
	str	r2, [ip, #40]
	str	r10, [ip, #44]
	bne	.L41
	b	.L21
.L46:
	add	r0, r0, r2
	sub	r5, r2, #2
	sub	r0, r0, #1
	asr	r5, r5, #1
	and	r0, r0, #1
	orr	r5, r5, #-2130706432
	add	r8, sp, #14
.L32:
	cmp	r2, #2
	ble	.L35
	add	r1, r3, #1
	add	r1, r1, r1, lsr #31
	bic	r1, r1, #1
	add	r1, r4, r1
	str	r6, [ip, #44]
	str	r8, [ip, #36]
	str	r1, [ip, #40]
	str	r5, [ip, #44]
.L35:
	add	r1, r3, r7
	add	r1, r1, r1, lsr #31
	bic	r1, r1, #1
	ldrh	r10, [r4, r1]
	ldrb	r9, [sp, #56]	@ zero_extendqisi2
	cmp	r0, #0
	and	r9, r9, #255
	andne	r10, r10, #255
	andeq	r10, r10, #65280
	orrne	r9, r10, r9, lsl #8
	orreq	r9, r9, r10
	strh	r9, [r4, r1]	@ movhi
	add	r1, r3, r3, lsr #31
	bic	r1, r1, #1
	ldrb	r9, [r4, r1]	@ zero_extendqisi2
	ldrb	r10, [sp, #56]	@ zero_extendqisi2
	add	r3, r3, #240
	orr	r9, r9, r10, lsl #8
	cmp	r3, lr
	strh	r9, [r4, r1]	@ movhi
	bne	.L32
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen3
	.syntax unified
	.arm
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	ldr	r2, .L51
	sub	sp, sp, #12
	ldm	r2, {r1, r3}
	ldr	r2, .L51+4
	add	ip, sp, #6
	strh	r0, [sp, #6]	@ movhi
	str	lr, [r3, #44]
	str	ip, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	sub	sp, sp, #16
	strb	r0, [sp, #7]
	ldr	r2, .L55
	ldr	r3, [r2, #4]
	ldr	ip, [r2]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L55+4
	add	lr, sp, #14
	orr	r2, r2, r0, lsl #8
	strh	r2, [sp, #14]	@ movhi
	str	r4, [r3, #44]
	str	lr, [r3, #36]
	str	ip, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage3
	.syntax unified
	.arm
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r5, .L66
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	add	lr, r1, r2
	ldr	r2, [r5]
	ldr	ip, [sp, #12]
	ldr	r0, [r5, #4]
	add	r1, r2, r1, lsl #1
	add	r2, r2, lr, lsl #1
	orr	lr, r3, #-2147483648
	lsl	r3, r3, #1
.L59:
	str	r4, [r0, #44]
	str	ip, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #2
	cmp	r1, r2
	str	lr, [r0, #44]
	add	ip, ip, r3
	bne	.L59
	pop	{r4, r5, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r4, .L76
	add	lr, r3, r3, lsr #31
	add	r2, r1, r2
	asr	lr, lr, #1
	rsb	r1, r1, r1, lsl #4
	rsb	r2, r2, r2, lsl #4
	ldr	ip, [sp, #16]
	add	r3, r0, r1, lsl #4
	ldr	r5, [r4]
	ldr	r1, [r4, #4]
	add	r0, r0, r2, lsl #4
	orr	r4, lr, #-2147483648
	lsl	lr, lr, #1
.L70:
	add	r2, r3, r3, lsr #31
	bic	r2, r2, #1
	add	r3, r3, #240
	add	r2, r5, r2
	cmp	r3, r0
	str	r6, [r1, #44]
	str	ip, [r1, #36]
	str	r2, [r1, #40]
	add	ip, ip, lr
	str	r4, [r1, #44]
	bne	.L70
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage3
	.syntax unified
	.arm
	.type	drawFullscreenImage3, %function
drawFullscreenImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L79
	ldm	r2, {r1, r3}
	ldr	r2, .L79+4
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	bx	lr
.L80:
	.align	2
.L79:
	.word	.LANCHOR0
	.word	-2147445248
	.size	drawFullscreenImage3, .-drawFullscreenImage3
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L82
	ldm	r2, {r1, r3}
	ldr	r2, .L82+4
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	bx	lr
.L83:
	.align	2
.L82:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L85:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L85
	mov	r2, #67108864
.L86:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L86
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	ldrh	r3, [r1]
	tst	r3, #16
	ldr	r2, .L93
	moveq	r2, #100663296
	ldr	r0, .L93+4
	eor	r3, r3, #16
	str	r2, [r0]
	strh	r3, [r1]	@ movhi
	bx	lr
.L94:
	.align	2
.L93:
	.word	100704256
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L97
	ldr	lr, [ip, #4]
	add	r0, r0, r0, lsl #1
	add	ip, lr, r0, lsl #2
	orr	r3, r3, #-2147483648
	lsl	r0, r0, #2
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L98:
	.align	2
.L97:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	collision
	.syntax unified
	.arm
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r1
	ble	.L103
	add	r1, r1, r3
	sub	r1, r1, #1
	cmp	r1, lr
	bgt	.L105
.L103:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L105:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	sub	r3, r3, #1
	cmp	r3, r0
	ble	.L103
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	hideSprites
	.syntax unified
	.arm
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #512
	ldr	r3, .L110
	add	r2, r3, #1024
.L107:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L107
	bx	lr
.L111:
	.align	2
.L110:
	.word	.LANCHOR1
	.size	hideSprites, .-hideSprites
	.global	shadowOAM
	.global	dma
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	shadowOAM, %object
	.size	shadowOAM, 1024
shadowOAM:
	.space	1024
	.ident	"GCC: (devkitARM release 61) 13.1.0"
