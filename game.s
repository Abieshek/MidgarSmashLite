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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	mov	r3, #9
	ldr	ip, .L6
	push	{r4, r5, r6, r7, r8, lr}
	mov	r0, #10
	mov	r4, #120
	mov	r5, #40
	str	r1, [ip, #8]
	str	r1, [ip, #12]
	str	r3, [ip, #68]
	mov	r1, #28
	str	r3, [ip, #72]
	mov	r3, #1024
	mov	lr, #0
	mov	r2, #100
	str	r4, [ip, #112]
	str	r5, [ip, #116]
	str	r0, [ip, #4]
	mov	r4, #0
	mov	r5, #0
	str	r1, [ip, #84]
	str	r3, [ip, #104]
	mov	r0, #32
	mov	r3, #2
	mov	r1, #32
	mov	r6, #4
	mov	r7, #0
	str	r4, [ip, #144]
	str	r5, [ip, #148]
	str	r2, [ip, #60]
	str	r2, [ip, #64]
	str	r3, [ip, #128]
	mov	r2, #3
	str	r0, [ip, #120]
	str	r1, [ip, #124]
	str	lr, [ip]
	str	lr, [ip, #16]
	str	lr, [ip, #20]
	str	lr, [ip, #24]
	str	lr, [ip, #28]
	str	lr, [ip, #32]
	str	lr, [ip, #36]
	str	lr, [ip, #40]
	str	lr, [ip, #44]
	str	lr, [ip, #48]
	str	lr, [ip, #52]
	str	lr, [ip, #56]
	str	lr, [ip, #76]
	str	lr, [ip, #80]
	str	lr, [ip, #88]
	str	lr, [ip, #92]
	str	lr, [ip, #96]
	str	lr, [ip, #100]
	str	r6, [ip, #136]
	str	r7, [ip, #140]
	str	r4, [ip, #152]
	str	r5, [ip, #156]
	mov	r4, #1
	mov	r5, #1
	mov	r8, r2
	str	r4, [ip, #160]
	str	r5, [ip, #164]
	mov	r4, #4
	mov	r5, #5
	str	lr, [ip, #168]
	add	r3, ip, #176
.L2:
	str	r2, [r3, #20]
	add	r2, r2, #8
	cmp	r2, #83
	stm	r3, {r0-r1}
	str	r4, [r3, #8]
	str	r5, [r3, #12]
	str	r8, [r3, #16]
	add	r3, r3, #24
	bne	.L2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	initGame, .-initGame
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #0
	mov	r7, #7
	mov	r0, #1
	mov	r2, #940
	ldr	r5, .L14
	mov	r1, #32
	mov	r4, #7
	str	r6, [r5, #432]
	str	r7, [r5, #436]
	mov	r6, #120
	mov	r3, #0
	str	r2, [r5, #420]
	str	r0, [r5, #456]
	str	r0, [r5, #460]
	mov	r2, #157
	mov	lr, #4
	mov	ip, #5
	mov	r0, #3
	str	r1, [r5, #428]
	str	r1, [r5, #424]
	str	r6, [r5, #416]
	str	r4, [r5, #444]
	str	r3, [r5, #448]
	str	r3, [r5, #452]
	str	r3, [r5, #464]
	str	r3, [r5, #468]
	add	r3, r5, #472
.L9:
	str	r2, [r3, #20]
	add	r2, r2, #8
	cmp	r2, #237
	stmib	r3, {r1, lr}
	str	r1, [r3]
	str	ip, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #24
	bne	.L9
	mov	r3, #0
	ldr	r4, .L14+4
	ldr	r7, .L14+8
	str	r3, [r5, #712]
	add	r6, r4, #40
.L10:
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	str	r0, [r4, #4]!
	cmp	r6, r4
	bne	.L10
	mov	r3, #1
	str	r3, [r5, #56]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	.LANCHOR0+712
	.word	rand
	.size	initEnemy, .-initEnemy
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L318
	ldr	r1, [r4]
	ldr	r2, [r4, #156]
	ldr	r3, [r4, #432]
	ldr	r0, [r4, #116]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r0, #900
	str	r1, [r4]
	str	r2, [r4, #156]
	str	r3, [r4, #432]
	sub	sp, sp, #20
	blt	.L17
	ldr	r2, [r4, #56]
	cmp	r2, #0
	beq	.L292
.L17:
	ldr	r2, [r4, #76]
	cmp	r2, #256
	ble	.L18
	ldr	r0, [r4, #84]
	cmp	r0, #30
	addle	r0, r0, #1
	suble	r2, r2, #256
	ble	.L287
.L108:
	ldr	r0, .L318+4
	ldrh	r2, [r0, #48]
	ands	r2, r2, #16
	beq	.L20
	ldrh	r2, [r0, #48]
	ands	r2, r2, #32
	bne	.L293
.L20:
	ldr	lr, [r4, #756]
	cmp	lr, #0
	moveq	ip, #1
	movne	ip, #0
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	streq	lr, [r4, #48]
	streq	lr, [r4, #44]
	tst	r5, #16
	str	r2, [r4, #160]
	str	ip, [r4, #456]
	bne	.L22
	ldrh	r0, [r0, #48]
	tst	r0, #32
	bne	.L22
.L23:
	mov	r2, #1
	str	r2, [r4, #160]
.L32:
	mov	r2, #0
	ldr	r0, [r4, #4]
	ldr	r5, [r4, #156]
	cmp	r5, r0
	str	r2, [r4, #28]
	str	r2, [r4, #32]
	str	r2, [r4, #36]
	str	r2, [r4, #40]
	beq	.L34
.L36:
	cmp	r3, #10
	mov	r2, #1
	beq	.L294
.L37:
	ldr	r5, .L318+8
	smull	r3, r5, r1, r5
	asr	r3, r1, #31
	rsb	r3, r3, r5, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r1, r3, lsl #3
	orrs	r3, r3, lr
	beq	.L295
.L39:
	ldr	r1, [r4, #460]
	cmp	r1, #1
	ble	.L43
	mvn	r3, #0
	ldr	lr, [r4, #432]
	cmp	lr, #10
	str	r3, [r4, #756]
	beq	.L44
.L288:
	add	r1, r1, r3
.L45:
	str	r1, [r4, #460]
	ldr	r1, [r4, #420]
	sub	r3, r1, r3
	ldr	r1, .L318+4
	str	r3, [r4, #420]
	ldrh	r3, [r1, #48]
	tst	r3, #32
	bne	.L50
	ldrh	r3, [r1, #48]
	tst	r3, #2
	beq	.L50
	ldrh	r3, [r1, #48]
	tst	r3, #256
	beq	.L50
	ldr	r3, [r4, #168]
	cmp	r3, #0
	bne	.L50
	ldr	ip, [r4, #156]
	eor	r1, r2, #1
	cmp	ip, r0
	movne	r1, #0
	andeq	r1, r1, #1
	cmp	r1, #0
	str	r3, [r4, #164]
	bne	.L296
.L52:
	ldr	r3, [r4, #116]
	cmp	r3, #0
	ble	.L54
	ldr	r1, [r4, #52]
	cmp	r1, #0
	beq	.L289
	ldr	ip, .L318+12
	cmp	r3, ip
	ble	.L54
	cmp	r1, #1
	bne	.L54
.L289:
	ldr	r1, [r4, #8]
	sub	r3, r3, r1
	str	r3, [r4, #116]
.L54:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	ble	.L50
	ldr	r1, [r4, #140]
	cmp	r1, #119
	bgt	.L50
	ldr	r1, [r4, #52]
	cmp	r1, #0
	bne	.L50
	sub	r3, r3, #1
	ldr	r1, [r4, #88]
	str	r3, [r4, #76]
	ldr	r3, [r4, #96]
	sub	r1, r1, #1
	sub	r3, r3, #1
	str	r1, [r4, #88]
	str	r3, [r4, #96]
.L50:
	ldr	r3, .L318+4
	ldrh	r1, [r3, #48]
	tst	r1, #16
	bne	.L57
	ldrh	r1, [r3, #48]
	tst	r1, #2
	beq	.L57
	ldrh	r3, [r3, #48]
	tst	r3, #256
	bne	.L297
.L57:
	ldr	r3, .L318+4
	ldrh	r2, [r3, #48]
	tst	r2, #16
	beq	.L62
	ldrh	r3, [r3, #48]
	tst	r3, #32
	movne	r3, #0
	strne	r3, [r4, #28]
.L62:
	ldr	r5, .L318+16
	ldrh	r3, [r5]
	tst	r3, #1
	ldr	r2, [r4, #112]
	beq	.L63
	ldr	r1, .L318+20
	ldrh	r1, [r1]
	ands	r0, r1, #1
	bne	.L63
	cmp	r2, #120
	bgt	.L64
	ldr	r0, .L318+4
	ldrh	ip, [r0, #48]
	tst	ip, #2
	beq	.L63
	ldrh	r0, [r0, #48]
	tst	r0, #256
	bne	.L298
.L63:
	cmp	r2, #119
	movgt	r1, #0
	strgt	r1, [r4, #168]
	bgt	.L106
.L70:
	ldr	r1, [r4, #168]
	cmp	r1, #0
	beq	.L72
	ldr	r0, [r4, #156]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	beq	.L299
.L73:
	cmp	r2, #79
	bgt	.L69
.L105:
	mov	r0, #1
	str	r0, [r4, #168]
.L104:
	add	r2, r2, r0
	str	r2, [r4, #112]
	ldr	r2, .L318+4
	ldrh	r1, [r2, #48]
	tst	r1, #2
	bne	.L75
	ldrh	r1, [r2, #48]
	tst	r1, #256
	beq	.L75
	ldrh	r1, [r2, #48]
	tst	r1, #32
	bne	.L300
.L75:
	ldr	r2, .L318+4
	ldrh	r2, [r2, #48]
	tst	r2, #2
	movne	r2, #0
	strne	r2, [r4, #32]
	ldr	r2, .L318+4
	ldrh	r1, [r2, #48]
	tst	r1, #256
	bne	.L82
	ldrh	r1, [r2, #48]
	tst	r1, #2
	beq	.L82
	ldrh	r1, [r2, #48]
	tst	r1, #32
	bne	.L301
.L82:
	ldr	r1, [r4, #128]
	ldr	r2, [r4, #136]
.L81:
	cmp	r1, #2
	beq	.L302
	cmp	r2, #1
	beq	.L86
	mov	r2, #0
.L290:
	str	r2, [r4, #148]
.L86:
	ldr	r2, .L318+4
	ldrh	r2, [r2, #48]
	tst	r2, #256
	movne	r2, #0
	strne	r2, [r4, #40]
	tst	r3, #256
	beq	.L88
	ldr	r2, .L318+20
	ldrh	r2, [r2]
	ands	r2, r2, #256
	beq	.L303
.L88:
	tst	r3, #2
	beq	.L89
	ldr	r2, .L318+20
	ldrh	r2, [r2]
	ands	r2, r2, #2
	beq	.L304
.L89:
	tst	r3, #32
	beq	.L90
	ldr	r2, .L318+20
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L305
.L90:
	tst	r3, #16
	beq	.L91
	ldr	r3, .L318+20
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L306
.L91:
	ldr	r2, [r4, #428]
	ldr	r3, [r4, #424]
	add	r2, r2, #2
	add	r3, r3, #2
	ldr	r1, [r4, #416]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r3, [r4, #420]
	str	r1, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #120
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #112]
	ldr	r0, [r4, #116]
	ldr	r6, .L318+24
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L92
	ldr	r3, [r4, #152]
	cmp	r3, #1
	beq	.L307
.L92:
	ldr	r2, [r4, #428]
	ldr	r3, [r4, #424]
	add	r2, r2, #2
	add	r3, r3, #2
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r4, #416
	ldm	r2, {r2, r3}
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #120
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #112]
	ldr	r0, [r4, #116]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L96
	ldr	r3, [r4, #756]
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r4, #148]
	cmp	r3, #0
	beq	.L308
.L96:
	ldrh	r3, [r5]
	tst	r3, #512
	beq	.L100
	ldr	r3, .L318+20
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L100
	ldr	r3, [r4, #56]
	cmp	r3, #1
	beq	.L309
.L100:
	ldr	r3, [r4, #8]
	cmp	r3, #2
	beq	.L101
.L102:
	ldr	r0, [r4, #100]
	ldr	r2, [r4, #96]
	ldr	r3, [r4, #416]
	ldr	r1, [r4, #420]
	sub	r3, r3, r0
	sub	r1, r1, r2
	ldr	r0, [r4, #92]
	ldr	r2, [r4, #112]
	str	r3, [r4, #448]
	sub	r2, r2, r0
	ldr	r3, [r4, #116]
	ldr	r0, [r4, #88]
	sub	r3, r3, r0
	str	r1, [r4, #452]
	str	r2, [r4, #144]
	str	r3, [r4, #140]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L22:
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	tst	r5, #16
	bne	.L24
	ldrh	r0, [r0, #48]
	tst	r0, #256
	beq	.L23
.L24:
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	tst	r5, #16
	beq	.L310
.L25:
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	tst	r5, #32
	bne	.L26
	ldrh	r0, [r0, #48]
	tst	r0, #256
	beq	.L23
.L26:
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	tst	r5, #32
	bne	.L27
	ldrh	r0, [r0, #48]
	tst	r0, #2
	beq	.L23
.L27:
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	tst	r5, #2
	beq	.L311
.L28:
	ldr	r0, .L318+4
	ldrh	r5, [r0, #48]
	tst	r5, #16
	bne	.L29
	ldr	r5, [r4, #168]
	cmp	r5, #0
	bne	.L23
	ldrh	r0, [r0, #48]
.L31:
	cmp	r2, #1
	ldr	r0, [r4, #4]
	beq	.L32
	cmp	r3, #10
	bne	.L37
.L294:
	cmp	ip, #1
	bne	.L37
	ldr	r3, [r4, #20]
	ldr	r5, .L318+28
	cmp	r3, #7
	add	r5, r5, r3, lsl #2
	moveq	r3, #0
	addne	r3, r3, #1
	str	r3, [r4, #20]
	mov	r3, #0
	ldr	r6, [r5, #80]
	ldr	r5, [r5, #112]
	str	r6, [r4, #436]
	str	r5, [r4, #444]
	str	r3, [r4, #432]
	b	.L37
.L18:
	cmp	r2, #0
	bgt	.L108
	ldr	r0, [r4, #84]
	cmp	r0, #28
	ble	.L108
	sub	r0, r0, #1
	add	r2, r2, #256
.L287:
	str	r2, [r4, #76]
	mov	r2, #67108864
	str	r0, [r4, #84]
	lsl	r0, r0, #24
	orr	r0, r0, #1073741824
	lsr	r0, r0, #16
	strh	r0, [r2, #8]	@ movhi
	b	.L108
.L310:
	ldrh	r0, [r0, #48]
	tst	r0, #2
	beq	.L23
	b	.L25
.L293:
	ldrh	r2, [r0, #48]
	ands	r2, r2, #2
	beq	.L20
	ldrh	r2, [r0, #48]
	ands	r2, r2, #256
	beq	.L20
	ldr	r2, [r4, #168]
	rsbs	r2, r2, #1
	movcc	r2, #0
	b	.L20
.L64:
	str	r0, [r4, #168]
.L106:
	mov	r1, #0
	ldr	r0, [r4, #168]
	str	r1, [r4, #36]
	b	.L104
.L43:
	ldr	r3, [r4, #756]
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r4, #432]
	cmp	r3, #10
	beq	.L312
.L46:
	cmp	r1, #1
	bne	.L313
	mov	r3, #0
	str	r1, [r4, #456]
	str	r3, [r4, #756]
	str	r3, [r4, #464]
	str	r3, [r4, #468]
	b	.L45
.L302:
	cmp	r2, #1
	bne	.L86
	b	.L290
.L309:
	ldr	r3, [r4, #160]
	cmp	r3, #1
	bne	.L100
	ldr	r3, [r4, #168]
	cmp	r3, #0
	bne	.L100
	ldr	r2, .L318+4
	ldrh	r1, [r2, #48]
	tst	r1, #32
	beq	.L100
	ldrh	r1, [r2, #48]
	tst	r1, #16
	beq	.L100
	ldrh	r1, [r2, #48]
	tst	r1, #256
	beq	.L100
	ldrh	r2, [r2, #48]
	tst	r2, #2
	beq	.L100
	mov	r2, #2
	mov	r1, #8
	stmib	r4, {r1, r2}
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	str	r3, [r4, #156]
	str	r2, [r4, #12]
.L101:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L102
	mov	r2, #1
	ldr	r1, .L318+32
	ldr	r3, .L318+36
	ldr	r0, .L318+40
	str	r2, [r4, #16]
	mov	lr, pc
	bx	r3
	b	.L102
.L295:
	ldr	r3, [r4, #712]
	add	r1, r4, r3, lsl #2
	ldr	r1, [r1, #716]
	cmp	r1, #0
	beq	.L314
.L40:
	mov	r1, #0
	str	r1, [r4, #468]
.L41:
	cmp	r3, #9
	movgt	r3, #0
	addle	r3, r3, #1
	str	r3, [r4, #712]
	b	.L39
.L292:
	mov	r3, #1
	str	r3, [r4, #52]
	bl	initEnemy
	ldr	r3, [r4, #432]
	ldr	r1, [r4]
	b	.L17
.L314:
	ldr	lr, [r4, #460]
	cmp	lr, #1
	bne	.L40
	str	r1, [r4, #756]
	mov	r1, #51
	str	r1, [r4, #460]
	ldr	r1, [r4, #420]
	sub	r1, r1, #50
	str	lr, [r4, #468]
	str	r1, [r4, #420]
	b	.L41
.L308:
	ldr	r3, [r4, #464]
	cmp	r3, #1
	beq	.L97
	ldr	r3, [r4, #468]
	cmp	r3, #1
	bne	.L96
.L97:
	ldr	r3, .L318+44
	mov	r2, #0
	ldr	r1, .L318+48
	ldr	r0, .L318+52
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #464]
	cmp	r3, #1
	beq	.L98
	ldr	r3, [r4, #468]
	cmp	r3, #1
	beq	.L98
.L99:
	mov	r0, #0
	ldr	r1, [r4, #64]
	ldr	r3, [r4, #68]
	sub	r1, r1, #10
	ldr	r2, .L318+56
	str	r1, [r4, #64]
	add	r1, r3, r3, lsl #1
	add	r2, r2, r1, lsl #3
	str	r0, [r4, #464]
	mov	r1, #1
	str	r0, [r4, #468]
	mov	r0, #0
	sub	r3, r3, #1
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	str	r3, [r4, #68]
	b	.L96
.L301:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L82
	ldr	r1, [r4, #156]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bne	.L82
	ldr	r2, [r4, #160]
	orrs	r2, r0, r2
	bne	.L82
	ldr	r0, [r4, #40]
	ldr	r2, .L318+28
	cmp	r0, #6
	add	r2, r2, r0, lsl #2
	moveq	r0, #1
	addne	r0, r0, #1
	streq	r0, [r4, #160]
	strne	r0, [r4, #40]
	mov	r0, #0
	ldr	r1, [r2, #336]
	ldr	r2, [r2, #364]
	str	r1, [r4, #128]
	str	r2, [r4, #136]
	str	r0, [r4, #156]
	b	.L81
.L297:
	ldr	r3, [r4, #168]
	cmp	r3, #0
	bne	.L57
	ldr	ip, [r4, #156]
	eor	r2, r2, #1
	cmp	ip, r0
	movne	r2, #0
	andeq	r2, r2, #1
	mov	r1, #1
	cmp	r2, #0
	str	r1, [r4, #164]
	bne	.L315
.L59:
	add	r1, r4, #116
	ldm	r1, {r1, r2}
	ldr	r3, [r4, #104]
	add	ip, r1, r2
	sub	r0, r3, #31
	cmp	ip, r0
	ldrlt	r0, [r4, #8]
	addlt	r1, r0, r1
	strlt	r1, [r4, #116]
	ldr	r1, [r4, #140]
	cmp	r1, #120
	ble	.L57
	ldr	r1, [r4, #88]
	sub	r3, r3, #240
	add	r2, r2, r1
	cmp	r2, r3
	bge	.L57
	ldr	r2, [r4, #76]
	ldr	r3, [r4, #96]
	add	r2, r2, #1
	add	r1, r1, #1
	add	r3, r3, #1
	str	r2, [r4, #76]
	str	r1, [r4, #88]
	str	r3, [r4, #96]
	b	.L57
.L300:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L75
	ldr	r1, [r4, #156]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bne	.L75
	ldr	r2, [r4, #160]
	orrs	r2, r0, r2
	bne	.L75
	ldr	r1, [r4, #32]
	cmp	r1, #4
	moveq	r2, #1
	ldr	ip, .L318+28
	add	ip, ip, r1, lsl #2
	ldr	lr, [ip, #288]
	ldr	ip, [ip, #312]
	str	lr, [r4, #128]
	str	ip, [r4, #136]
	streq	r2, [r4, #152]
	beq	.L77
	cmp	r1, #5
	str	r2, [r4, #152]
	bne	.L77
	mov	r2, #1
	str	r2, [r4, #160]
.L78:
	mov	r2, #0
	str	r2, [r4, #156]
	b	.L75
.L311:
	ldrh	r0, [r0, #48]
	tst	r0, #256
	beq	.L23
	b	.L28
.L34:
	ldr	r5, [r4, #24]
	cmp	r5, #9
	addne	r2, r5, #1
	str	r2, [r4, #24]
	mov	r2, #0
	ldr	r6, .L318+28
	add	r7, r6, r5, lsl #2
	ldr	r6, [r6, r5, lsl #2]
	str	r6, [r4, #128]
	ldr	r6, [r7, #40]
	str	r2, [r4, #156]
	str	r6, [r4, #136]
	b	.L36
.L312:
	cmp	ip, #0
	bne	.L46
.L107:
	ldr	r3, [r4, #48]
	ldr	ip, .L318+28
	cmp	r3, #2
	add	ip, ip, r3, lsl #2
	moveq	r3, #0
	addne	r3, r3, #1
	str	r3, [r4, #48]
	mov	r3, #0
	ldr	lr, [ip, #144]
	ldr	ip, [ip, #156]
	str	lr, [r4, #436]
	str	ip, [r4, #444]
	str	r3, [r4, #432]
	b	.L46
.L299:
	ldr	r1, [r4, #160]
	cmp	r1, #0
	bne	.L73
.L109:
	ldr	r1, [r4, #36]
	ldr	r0, .L318+28
	cmp	r1, #4
	add	r0, r0, r1, lsl #2
	moveq	r1, #0
	addne	r1, r1, #1
	str	r1, [r4, #36]
	mov	r1, #0
	ldr	ip, [r0, #248]
	ldr	r0, [r0, #268]
	str	ip, [r4, #128]
	str	r0, [r4, #136]
	str	r1, [r4, #156]
	b	.L73
.L306:
	mov	r2, #1
	ldr	r1, .L318+60
	ldr	r3, .L318+44
	ldr	r0, .L318+64
	mov	lr, pc
	bx	r3
	b	.L91
.L305:
	ldr	r3, .L318+44
	mov	r2, #1
	ldr	r1, .L318+60
	ldr	r0, .L318+64
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L90
.L304:
	ldr	r3, .L318+44
	ldr	r1, .L318+68
	ldr	r0, .L318+72
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L89
.L303:
	ldr	r3, .L318+44
	ldr	r1, .L318+76
	ldr	r0, .L318+80
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L88
.L307:
	mov	r2, #0
	ldr	r3, .L318+44
	ldr	r1, .L318+48
	ldr	r0, .L318+52
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #152]
	cmp	r3, #1
	moveq	r2, #6
	moveq	r3, #5
	ldr	r0, [r4, #12]
	streq	r2, [r4, #436]
	streq	r3, [r4, #444]
	cmp	r0, #2
	ldr	r2, [r4, #60]
	ldr	r3, [r4, #72]
	beq	.L316
	mov	lr, #1
	mov	ip, #0
	add	r1, r3, r3, lsl lr
	add	r1, r4, r1, lsl #3
	str	lr, [r1, #484]
	str	ip, [r1, #480]
	sub	r2, r2, #10
.L95:
	sub	r3, r3, r0
	str	r3, [r4, #72]
	mov	r3, #0
	str	r2, [r4, #60]
	str	r3, [r4, #152]
	b	.L92
.L44:
	cmp	ip, #0
	subne	r1, r1, #1
	bne	.L45
	b	.L107
.L29:
	ldrh	r0, [r0, #48]
	tst	r0, #32
	bne	.L31
	ldr	r0, [r4, #168]
	cmp	r0, #0
	bne	.L23
	b	.L31
.L313:
	ldr	r3, [r4, #756]
	b	.L288
.L298:
	tst	r3, #32
	beq	.L65
	tst	r1, #32
	beq	.L63
.L65:
	tst	r3, #16
	beq	.L66
	tst	r1, #16
	beq	.L63
.L66:
	mov	r2, #0
	ldr	r3, .L318+44
	ldr	r1, .L318+84
	ldr	r0, .L318+88
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #112]
	cmp	r2, #120
	ldrhne	r3, [r5]
	bne	.L70
	mvn	r1, #1
	ldr	ip, [r4, #4]
	ldr	r0, [r4, #156]
	cmp	ip, r0
	ldrh	r3, [r5]
	str	r1, [r4, #168]
	beq	.L317
.L69:
	ldr	r0, [r4, #168]
	b	.L104
.L98:
	ldr	r3, .L318+4
	ldrh	r2, [r3, #48]
	tst	r2, #16
	beq	.L99
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L99
	ldrh	r2, [r3, #48]
	tst	r2, #2
	beq	.L99
	ldrh	r3, [r3, #48]
	tst	r3, #256
	beq	.L99
	ldr	r3, [r4, #168]
	cmp	r3, #0
	moveq	r2, #3
	streq	r3, [r4, #136]
	streq	r2, [r4, #128]
	b	.L99
.L316:
	mov	r7, #1
	mov	lr, #0
	sub	r1, r3, #1
	add	r1, r1, r1, lsl r7
	add	ip, r3, r3, lsl r7
	add	r1, r4, r1, lsl #3
	add	ip, r4, ip, lsl #3
	str	r7, [ip, #484]
	str	lr, [ip, #480]
	str	r7, [r1, #484]
	str	lr, [r1, #480]
	sub	r2, r2, #20
	b	.L95
.L296:
	ldr	ip, [r4, #28]
	ldr	r1, .L318+28
	add	r1, r1, ip, lsl #2
	ldr	lr, [r1, #168]
	ldr	r1, [r1, #208]
	str	r1, [r4, #136]
	mov	r1, #0
	cmp	ip, #9
	addne	r3, ip, #1
	str	lr, [r4, #128]
	str	r3, [r4, #28]
	str	r1, [r4, #156]
	b	.L52
.L315:
	ldr	r1, [r4, #28]
	ldr	r2, .L318+28
	add	r2, r2, r1, lsl #2
	ldr	r0, [r2, #168]
	ldr	r2, [r2, #208]
	str	r2, [r4, #136]
	mov	r2, #0
	cmp	r1, #9
	addne	r3, r1, #1
	str	r0, [r4, #128]
	str	r3, [r4, #28]
	str	r2, [r4, #156]
	b	.L59
.L72:
	cmp	r2, #79
	ble	.L105
	b	.L106
.L77:
	add	r1, r1, #1
	str	r1, [r4, #32]
	b	.L78
.L317:
	ldr	r1, [r4, #160]
	cmp	r1, #0
	beq	.L109
	b	.L69
.L319:
	.align	2
.L318:
	.word	.LANCHOR0
	.word	67109120
	.word	1374389535
	.word	754
	.word	oldButtons
	.word	buttons
	.word	collision
	.word	.LANCHOR1
	.word	3289248
	.word	playSoundA
	.word	battlemusic2
	.word	playSoundB
	.word	6132
	.word	damagesound
	.word	.LANCHOR0+176
	.word	24705
	.word	runsound
	.word	9428
	.word	swordsound
	.word	2829
	.word	blocksound
	.word	8470
	.word	jumpsound
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L334
	ldr	r6, [r5, #52]
	cmp	r6, #1
	beq	.L331
	ldr	r0, .L334+4
.L321:
	ldrb	r3, [r5, #144]	@ zero_extendqisi2
	ldr	r2, [r5, #164]
	strh	r3, [r0, #168]	@ movhi
	ldrsh	r3, [r5, #140]
	cmp	r2, #1
	lsleq	r3, r3, #23
	orrne	r3, r3, #36864
	lsreq	r3, r3, #23
	lslne	r3, r3, #16
	orreq	r3, r3, #32768
	lsrne	r3, r3, #16
	ldr	r2, [r5, #136]
	strh	r3, [r0, #170]	@ movhi
	ldr	r3, [r5, #124]
	mul	r3, r2, r3
	cmp	r3, #0
	add	ip, r3, #7
	ldr	r7, [r5, #128]
	movge	ip, r3
	ldr	r3, [r5, #120]
	mul	r7, r3, r7
	cmp	r7, #0
	add	r3, r7, #7
	movge	r3, r7
	ldr	lr, .L334+4
	mov	r1, lr
	asr	ip, ip, #3
	asr	r3, r3, #3
	add	r3, r3, ip, lsl #5
	ldr	r2, .L334+8
	strh	r3, [r0, #172]	@ movhi
	add	r4, lr, #80
.L324:
	ldmib	r2, {r9, ip}
	ldr	r7, [r2, #12]
	add	r0, r2, #16
	ldr	r8, [r2], #24
	mul	r7, r9, r7
	mul	ip, r8, ip
	ldm	r0, {r0, r3}
	cmp	r7, #0
	strh	r0, [r1]	@ movhi
	add	r0, r7, #7
	movge	r0, r7
	cmp	ip, #0
	strh	r3, [r1, #2]	@ movhi
	add	r3, ip, #7
	movge	r3, ip
	add	r1, r1, #8
	asr	r0, r0, #3
	asr	r3, r3, #3
	add	r3, r3, r0, lsl #5
	cmp	r1, r4
	strh	r3, [r1, #-4]	@ movhi
	bne	.L324
	cmp	r6, #1
	beq	.L325
.L327:
	mov	r3, #67108864
	ldrh	r0, [r5, #76]
	ldrh	r1, [r5, #80]
	ldr	r2, .L334+12
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L334+16
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L334+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L331:
	ldr	r3, [r5, #452]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r5, #428]
	ldr	ip, [r5, #444]
	ldr	r1, [r5, #436]
	mul	ip, r2, ip
	ldr	r2, [r5, #424]
	mul	r1, r2, r1
	ldr	r0, .L334+4
	ldrb	r2, [r5, #448]	@ zero_extendqisi2
	cmp	ip, #0
	strh	r2, [r0, #224]	@ movhi
	add	r2, ip, #7
	movge	r2, ip
	cmp	r1, #0
	strh	r3, [r0, #226]	@ movhi
	add	r3, r1, #7
	movge	r3, r1
	asr	r2, r2, #3
	asr	r3, r3, #3
	add	r3, r3, r2, lsl #5
	strh	r3, [r0, #228]	@ movhi
	b	.L321
.L325:
	ldr	r2, .L334+20
.L326:
	ldr	ip, [r2, #12]
	ldr	r7, [r2, #4]
	ldr	r0, [r2, #8]
	add	r1, r2, #16
	ldr	r6, [r2], #24
	mul	ip, r7, ip
	mul	r0, r6, r0
	ldm	r1, {r1, r3}
	cmp	ip, #0
	strh	r1, [lr, #80]	@ movhi
	add	r1, ip, #7
	movge	r1, ip
	cmp	r0, #0
	strh	r3, [lr, #82]	@ movhi
	add	r3, r0, #7
	movge	r3, r0
	add	lr, lr, #8
	asr	r1, r1, #3
	asr	r3, r3, #3
	add	r3, r3, r1, lsl #5
	cmp	r4, lr
	strh	r3, [lr, #76]	@ movhi
	bne	.L326
	b	.L327
.L335:
	.align	2
.L334:
	.word	.LANCHOR0
	.word	shadowOAM
	.word	.LANCHOR0+176
	.word	waitForVBlank
	.word	DMANow
	.word	.LANCHOR0+472
	.size	drawGame, .-drawGame
	.global	enemyMoveNum
	.global	enemyMove
	.global	eHealthBarIndex
	.global	pHealthBarIndex
	.global	enemyHealth
	.global	playerHealth
	.global	playerHurtCurFrames
	.global	playerHurtAniStates
	.global	playerBlockingCurFrames
	.global	playerBlockingAniStates
	.global	playerJumpingCurFrames
	.global	playerJumpingAniStates
	.global	playerAttackCurFrames
	.global	playerAttackAniStates
	.global	playerRunningCurFrames
	.global	playerRunningAniStates
	.global	playerStandCurFrames
	.global	playerStandAniStates
	.global	enemyHurtCurFrames
	.global	enemyHurtAniStates
	.global	enemyHandGrabCurFrames
	.global	enemyHandGrabAniStates
	.global	enemyHandPunchCurFrames
	.global	enemyHandPunchAniStates
	.global	enemyStandCurFrames
	.global	enemyStandAniStates
	.global	enemyAttack2
	.global	enemyAttack1
	.global	spawned
	.global	spawn
	.global	changedMusic
	.global	damage
	.global	speed
	.global	animationSpeed
	.global	attackDirection
	.global	jumpDirection
	.global	gameTimer
	.global	worldWidth
	.global	enemyvOff
	.global	playervOff
	.global	enemyhOff
	.global	playerhOff
	.global	screenBlock
	.global	vOff
	.global	hOff
	.global	count8
	.global	count7
	.global	count6
	.global	count5
	.global	count4
	.global	count3
	.global	count2
	.global	count
	.global	soundB
	.global	soundA
	.global	enemy
	.global	player
	.global	playerHealthBar
	.global	enemyHealthBar
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	playerStandAniStates, %object
	.size	playerStandAniStates, 40
playerStandAniStates:
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	0
	.word	1
	.word	2
	.word	3
	.type	playerStandCurFrames, %object
	.size	playerStandCurFrames, 40
playerStandCurFrames:
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	4
	.word	5
	.word	5
	.word	5
	.word	5
	.type	enemyStandAniStates, %object
	.size	enemyStandAniStates, 32
enemyStandAniStates:
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.type	enemyStandCurFrames, %object
	.size	enemyStandCurFrames, 32
enemyStandCurFrames:
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.type	enemyHandPunchAniStates, %object
	.size	enemyHandPunchAniStates, 12
enemyHandPunchAniStates:
	.word	7
	.word	1
	.word	0
	.type	enemyHandPunchCurFrames, %object
	.size	enemyHandPunchCurFrames, 12
enemyHandPunchCurFrames:
	.word	5
	.word	6
	.word	6
	.type	playerRunningAniStates, %object
	.size	playerRunningAniStates, 40
playerRunningAniStates:
	.word	6
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	0
	.word	1
	.type	playerRunningCurFrames, %object
	.size	playerRunningCurFrames, 40
playerRunningCurFrames:
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	4
	.word	4
	.type	playerJumpingAniStates, %object
	.size	playerJumpingAniStates, 20
playerJumpingAniStates:
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.type	playerJumpingCurFrames, %object
	.size	playerJumpingCurFrames, 20
playerJumpingCurFrames:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.type	playerAttackAniStates, %object
	.size	playerAttackAniStates, 24
playerAttackAniStates:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.type	playerAttackCurFrames, %object
	.size	playerAttackCurFrames, 24
playerAttackCurFrames:
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.type	playerBlockingAniStates, %object
	.size	playerBlockingAniStates, 28
playerBlockingAniStates:
	.word	4
	.word	5
	.word	6
	.word	7
	.word	0
	.word	1
	.word	2
	.type	playerBlockingCurFrames, %object
	.size	playerBlockingCurFrames, 28
playerBlockingCurFrames:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.type	playerHurtAniStates, %object
	.size	playerHurtAniStates, 16
playerHurtAniStates:
	.word	0
	.word	1
	.word	2
	.word	3
	.type	enemyHurtCurFrames, %object
	.size	enemyHurtCurFrames, 8
enemyHurtCurFrames:
	.word	5
	.word	5
	.type	enemyHurtAniStates, %object
	.size	enemyHurtAniStates, 8
enemyHurtAniStates:
	.word	5
	.word	6
	.type	enemyHandGrabCurFrames, %object
	.size	enemyHandGrabCurFrames, 20
enemyHandGrabCurFrames:
	.word	6
	.word	6
	.word	6
	.word	6
	.word	6
	.type	enemyHandGrabAniStates, %object
	.size	enemyHandGrabAniStates, 20
enemyHandGrabAniStates:
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	gameTimer, %object
	.size	gameTimer, 4
gameTimer:
	.space	4
	.type	animationSpeed, %object
	.size	animationSpeed, 4
animationSpeed:
	.space	4
	.type	speed, %object
	.size	speed, 4
speed:
	.space	4
	.type	damage, %object
	.size	damage, 4
damage:
	.space	4
	.type	changedMusic, %object
	.size	changedMusic, 4
changedMusic:
	.space	4
	.type	count, %object
	.size	count, 4
count:
	.space	4
	.type	count2, %object
	.size	count2, 4
count2:
	.space	4
	.type	count3, %object
	.size	count3, 4
count3:
	.space	4
	.type	count4, %object
	.size	count4, 4
count4:
	.space	4
	.type	count5, %object
	.size	count5, 4
count5:
	.space	4
	.type	count6, %object
	.size	count6, 4
count6:
	.space	4
	.type	count7, %object
	.size	count7, 4
count7:
	.space	4
	.type	count8, %object
	.size	count8, 4
count8:
	.space	4
	.type	spawn, %object
	.size	spawn, 4
spawn:
	.space	4
	.type	spawned, %object
	.size	spawned, 4
spawned:
	.space	4
	.type	enemyHealth, %object
	.size	enemyHealth, 4
enemyHealth:
	.space	4
	.type	playerHealth, %object
	.size	playerHealth, 4
playerHealth:
	.space	4
	.type	pHealthBarIndex, %object
	.size	pHealthBarIndex, 4
pHealthBarIndex:
	.space	4
	.type	eHealthBarIndex, %object
	.size	eHealthBarIndex, 4
eHealthBarIndex:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	screenBlock, %object
	.size	screenBlock, 4
screenBlock:
	.space	4
	.type	playerhOff, %object
	.size	playerhOff, 4
playerhOff:
	.space	4
	.type	playervOff, %object
	.size	playervOff, 4
playervOff:
	.space	4
	.type	enemyhOff, %object
	.size	enemyhOff, 4
enemyhOff:
	.space	4
	.type	enemyvOff, %object
	.size	enemyvOff, 4
enemyvOff:
	.space	4
	.type	worldWidth, %object
	.size	worldWidth, 4
worldWidth:
	.space	4
	.space	4
	.type	player, %object
	.size	player, 56
player:
	.space	56
	.type	jumpDirection, %object
	.size	jumpDirection, 4
jumpDirection:
	.space	4
	.space	4
	.type	playerHealthBar, %object
	.size	playerHealthBar, 240
playerHealthBar:
	.space	240
	.type	enemy, %object
	.size	enemy, 48
enemy:
	.space	48
	.type	enemyAttack1, %object
	.size	enemyAttack1, 4
enemyAttack1:
	.space	4
	.type	enemyAttack2, %object
	.size	enemyAttack2, 4
enemyAttack2:
	.space	4
	.type	enemyHealthBar, %object
	.size	enemyHealthBar, 240
enemyHealthBar:
	.space	240
	.type	enemyMoveNum, %object
	.size	enemyMoveNum, 4
enemyMoveNum:
	.space	4
	.type	enemyMove, %object
	.size	enemyMove, 40
enemyMove:
	.space	40
	.type	attackDirection, %object
	.size	attackDirection, 4
attackDirection:
	.space	4
	.type	playerHurtCurFrames, %object
	.size	playerHurtCurFrames, 16
playerHurtCurFrames:
	.space	16
	.type	soundB, %object
	.size	soundB, 32
soundB:
	.space	32
	.type	soundA, %object
	.size	soundA, 32
soundA:
	.space	32
	.ident	"GCC: (devkitARM release 61) 13.1.0"
