	.cpu arm7tdmi
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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #32
	mov	r2, #0
	mov	r9, #4
	ldr	r0, .L6
	mov	r1, r6
	str	r6, [r0, #8]
	str	r6, [r0, #12]
	ldr	r6, .L6+4
	str	r2, [r6]
	ldr	r6, .L6+8
	str	r2, [r6]
	ldr	r6, .L6+12
	str	r9, [r0, #24]
	str	r2, [r6]
	mov	r4, r9
	ldr	r6, .L6+16
	mov	r9, #10
	str	r2, [r6]
	mov	r5, #1
	ldr	r6, .L6+20
	str	r2, [r6]
	ldr	r6, .L6+24
	mov	r8, #100
	str	r2, [r6]
	ldr	r6, .L6+28
	str	r2, [r6]
	ldr	r6, .L6+32
	mov	r7, #9
	str	r2, [r6]
	ldr	r6, .L6+36
	str	r2, [r6]
	ldr	r6, .L6+40
	str	r2, [r6]
	ldr	r6, .L6+44
	str	r2, [r6]
	ldr	r6, .L6+48
	str	r2, [r6]
	ldr	r6, .L6+52
	str	r2, [r6]
	ldr	r6, .L6+56
	str	r2, [r6]
	ldr	r6, .L6+60
	str	r2, [r6]
	ldr	r6, .L6+64
	str	r2, [r6]
	ldr	r6, .L6+68
	str	r2, [r6]
	ldr	r6, .L6+72
	str	r2, [r6]
	ldr	r6, .L6+76
	str	r9, [r6]
	ldr	r6, .L6+80
	str	r5, [r6]
	ldr	r6, .L6+84
	str	r5, [r6]
	ldr	r6, .L6+88
	str	r8, [r6]
	ldr	r6, .L6+92
	str	r8, [r6]
	ldr	r6, .L6+96
	str	r7, [r6]
	ldr	r6, .L6+100
	str	r7, [r6]
	mov	r7, #28
	ldr	r6, .L6+104
	mov	fp, #40
	str	r7, [r6]
	mov	r10, #120
	mov	r7, #1024
	mov	r3, #3
	ldr	r6, .L6+108
	stm	r0, {r10, fp}
	str	r7, [r6]
	mov	r6, #2
	mov	lr, r3
	mov	ip, #5
	str	r6, [r0, #16]
	ldr	r6, .L6+112
	str	r2, [r0, #32]
	str	r2, [r0, #28]
	str	r2, [r0, #36]
	str	r2, [r0, #40]
	str	r2, [r0, #44]
	str	r2, [r6]
	str	r5, [r0, #48]
	str	r5, [r0, #52]
	ldr	r2, .L6+116
.L2:
	str	r3, [r2, #20]
	add	r3, r3, #8
	cmp	r3, #83
	stmib	r2, {r1, r4, ip, lr}
	str	r1, [r2]
	add	r2, r2, #24
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	player
	.word	gameTimer
	.word	changedMusic
	.word	count
	.word	count2
	.word	count3
	.word	count4
	.word	count5
	.word	count6
	.word	count7
	.word	count8
	.word	spawn
	.word	spawned
	.word	hOff
	.word	vOff
	.word	playerhOff
	.word	playervOff
	.word	enemyhOff
	.word	enemyvOff
	.word	animationSpeed
	.word	speed
	.word	damage
	.word	enemyHealth
	.word	playerHealth
	.word	pHealthBarIndex
	.word	eHealthBarIndex
	.word	screenBlock
	.word	worldWidth
	.word	jumpDirection
	.word	playerHealthBar
	.size	initGame, .-initGame
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #32
	mov	r4, #0
	mov	r7, #7
	mov	r6, #1
	mov	r9, #940
	mov	r8, #120
	mov	r2, #157
	mov	lr, #4
	mov	ip, #5
	mov	r0, #3
	ldr	r3, .L14
	mov	r1, r5
	str	r5, [r3, #12]
	str	r5, [r3, #8]
	ldr	r5, .L14+4
	str	r4, [r5]
	ldr	r5, .L14+8
	stm	r3, {r8, r9}
	str	r4, [r3, #16]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r7, [r3, #28]
	str	r7, [r3, #20]
	str	r6, [r3, #40]
	str	r6, [r3, #44]
	str	r4, [r5]
	ldr	r3, .L14+12
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
	mov	r2, #0
	ldr	r3, .L14+16
	ldr	r4, .L14+20
	str	r2, [r3]
	ldr	r6, .L14+24
	add	r5, r4, #40
.L10:
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	str	r0, [r4, #4]!
	cmp	r4, r5
	bne	.L10
	mov	r2, #1
	ldr	r3, .L14+28
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L15:
	.align	2
.L14:
	.word	enemy
	.word	enemyAttack1
	.word	enemyAttack2
	.word	enemyHealthBar
	.word	enemyMoveNum
	.word	enemyMove-4
	.word	rand
	.word	spawned
	.size	initEnemy, .-initEnemy
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L332
	ldr	r6, .L332+4
	ldr	r5, .L332+8
	ldr	r2, [r6]
	ldr	r3, [r4, #44]
	ldr	r1, [r5, #16]
	ldr	r0, [r4, #4]
	add	r2, r2, #1
	add	r3, r3, #1
	add	r1, r1, #1
	cmp	r0, #900
	str	r2, [r6]
	str	r3, [r4, #44]
	str	r1, [r5, #16]
	sub	sp, sp, #28
	blt	.L17
	ldr	r3, .L332+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L307
.L17:
	ldr	r0, .L332+16
	ldr	r3, [r0]
	cmp	r3, #256
	ble	.L18
	ldr	r6, .L332+20
	ldr	ip, [r6]
	cmp	ip, #30
	ble	.L308
.L112:
	ldr	ip, .L332+24
	ldrh	r3, [ip, #48]
	ands	r3, r3, #16
	beq	.L116
	ldrh	r3, [ip, #48]
	ands	r3, r3, #32
	bne	.L309
.L116:
	ldr	r8, .L332+28
.L20:
	ldr	r6, .L332+32
	ldr	lr, [r6]
	cmp	lr, #0
	moveq	ip, #1
	movne	ip, #0
	streq	ip, [r5, #40]
	ldreq	ip, .L332+36
	ldreq	r7, .L332+40
	streq	lr, [ip]
	strne	ip, [r5, #40]
	ldr	ip, .L332+24
	streq	lr, [r7]
	ldrh	r7, [ip, #48]
	tst	r7, #16
	str	r3, [r4, #48]
	bne	.L23
	ldrh	ip, [ip, #48]
	tst	ip, #32
	bne	.L23
.L24:
	mov	r3, #1
	str	r3, [r4, #48]
.L33:
	mov	r3, #0
	ldr	ip, .L332+44
	ldr	r7, [r4, #44]
	ldr	ip, [ip]
	cmp	r7, ip
	ldr	r7, .L332+48
	ldr	ip, .L332+52
	str	r3, [r7]
	str	r3, [ip]
	ldr	r7, .L332+56
	ldr	ip, .L332+60
	str	r3, [r7]
	str	r3, [ip]
	beq	.L310
.L34:
	cmp	r1, #10
	beq	.L311
.L37:
	ldr	r3, .L332+64
	ldr	r1, .L332+68
	mla	r2, r3, r2, r1
	ldr	r3, .L332+72
	cmp	r3, r2, ror #3
	bcc	.L39
	cmp	lr, #0
	bne	.L40
	ldr	r2, .L332+76
	ldr	r1, .L332+80
	ldr	r3, [r2]
	ldr	r1, [r1, r3, lsl #2]
	cmp	r1, #0
	beq	.L312
.L41:
	mov	r1, #0
	ldr	r9, .L332+84
	str	r1, [r9]
.L42:
	cmp	r3, #9
	movgt	r3, #0
	addle	r3, r3, #1
	str	r3, [r2]
.L39:
	ldr	ip, [r5, #44]
	cmp	ip, #1
	ble	.L44
.L110:
	mvn	r3, #0
	ldr	r2, [r5, #16]
	cmp	r2, #10
	str	r3, [r6]
	beq	.L45
.L46:
	ldr	r1, [r6]
	add	ip, ip, r1
.L50:
	ldr	r3, [r5, #4]
	ldr	r2, .L332+24
	sub	r3, r3, r1
	ldrh	r1, [r2, #48]
	tst	r1, #32
	str	ip, [r5, #44]
	str	r3, [r5, #4]
	bne	.L304
	ldrh	r3, [r2, #48]
	tst	r3, #2
	beq	.L304
	ldrh	r3, [r2, #48]
	tst	r3, #256
	bne	.L289
.L304:
	ldr	r3, .L332+88
	ldr	fp, .L332+92
	ldr	r10, .L332+96
	str	r3, [sp, #20]
.L52:
	ldr	r3, .L332+24
	ldrh	r2, [r3, #48]
	tst	r2, #16
	bne	.L59
	ldrh	r2, [r3, #48]
	tst	r2, #2
	beq	.L59
	ldrh	r3, [r3, #48]
	tst	r3, #256
	bne	.L313
.L59:
	ldr	r3, .L332+24
	ldrh	r2, [r3, #48]
	tst	r2, #16
	beq	.L64
	ldrh	r3, [r3, #48]
	tst	r3, #32
	movne	r2, #0
	ldrne	r3, .L332+48
	strne	r2, [r3]
.L64:
	ldr	r7, .L332+100
	ldrh	r3, [r7]
	tst	r3, #1
	ldr	r1, [r4]
	beq	.L65
	ldr	r2, .L332+104
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L65
	cmp	r1, #120
	ble	.L314
.L66:
	mov	r2, #0
	str	r2, [r8]
.L73:
	mov	r0, #0
	ldr	r2, .L332+56
	str	r0, [r2]
	ldr	r2, [r8]
.L107:
	add	r1, r2, r1
	str	r1, [r4]
	ldr	r1, .L332+24
	ldrh	r0, [r1, #48]
	tst	r0, #2
	bne	.L77
	ldrh	r0, [r1, #48]
	tst	r0, #256
	beq	.L77
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L315
.L77:
	ldr	r1, .L332+24
	ldrh	r1, [r1, #48]
	tst	r1, #2
	movne	r0, #0
	ldrne	r1, .L332+52
	strne	r0, [r1]
	ldr	r1, .L332+24
	ldrh	r0, [r1, #48]
	tst	r0, #256
	bne	.L84
	ldrh	r0, [r1, #48]
	tst	r0, #2
	beq	.L84
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L316
.L84:
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #24]
.L83:
	cmp	r1, #2
	beq	.L317
	cmp	r2, #1
	movne	r2, #0
	beq	.L88
.L305:
	str	r2, [r4, #36]
.L88:
	ldr	r2, .L332+24
	ldrh	r2, [r2, #48]
	tst	r2, #256
	movne	r1, #0
	ldrne	r2, .L332+60
	strne	r1, [r2]
	tst	r3, #256
	beq	.L90
	ldr	r2, .L332+104
	ldrh	r2, [r2]
	ands	r2, r2, #256
	beq	.L318
.L90:
	tst	r3, #2
	beq	.L91
	ldr	r2, .L332+104
	ldrh	r2, [r2]
	ands	r2, r2, #2
	beq	.L319
.L91:
	tst	r3, #32
	beq	.L92
	ldr	r2, .L332+104
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L320
.L92:
	tst	r3, #16
	beq	.L93
	ldr	r3, .L332+104
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L321
.L93:
	ldm	r5, {r0, r1, r3}
	ldr	r2, [r5, #12]
	add	r3, r3, #2
	stmib	sp, {r0, r3}
	add	r2, r2, #2
	str	r2, [sp, #12]
	str	r1, [sp]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r9, .L332+108
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L94
	ldr	r3, [r4, #40]
	cmp	r3, #1
	beq	.L322
.L94:
	ldm	r5, {r0, r1, r3}
	ldr	r2, [r5, #12]
	add	r3, r3, #2
	stmib	sp, {r0, r3}
	add	r2, r2, #2
	str	r2, [sp, #12]
	str	r1, [sp]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L98
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L323
.L98:
	ldrh	r3, [r7]
	tst	r3, #512
	beq	.L102
	ldr	r3, .L332+104
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L102
	ldr	r3, .L332+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L324
.L102:
	ldr	r3, [fp]
	cmp	r3, #2
	beq	.L103
.L104:
	ldr	r2, [sp, #20]
	ldr	r0, [r5, #4]
	ldr	r1, [r2]
	ldr	r3, .L332+112
	ldr	r2, [r10]
	sub	r0, r0, r1
	ldr	r1, [r4, #4]
	ldr	r3, [r3]
	sub	r1, r1, r2
	ldr	ip, .L332+116
	ldr	r2, [r5]
	ldr	ip, [ip]
	sub	r2, r2, r3
	ldr	r3, [r4]
	sub	r3, r3, ip
	str	r0, [r5, #36]
	str	r1, [r4, #28]
	str	r2, [r5, #32]
	str	r3, [r4, #32]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	ldr	ip, .L332+24
	ldrh	r7, [ip, #48]
	tst	r7, #16
	bne	.L25
	ldrh	ip, [ip, #48]
	tst	ip, #256
	beq	.L24
.L25:
	ldr	ip, .L332+24
	ldrh	r7, [ip, #48]
	tst	r7, #16
	beq	.L325
.L26:
	ldr	ip, .L332+24
	ldrh	r7, [ip, #48]
	tst	r7, #32
	bne	.L27
	ldrh	ip, [ip, #48]
	tst	ip, #256
	beq	.L24
.L27:
	ldr	ip, .L332+24
	ldrh	r7, [ip, #48]
	tst	r7, #32
	bne	.L28
	ldrh	ip, [ip, #48]
	tst	ip, #2
	beq	.L24
.L28:
	ldr	ip, .L332+24
	ldrh	r7, [ip, #48]
	tst	r7, #2
	beq	.L326
.L29:
	ldr	ip, .L332+24
	ldrh	r7, [ip, #48]
	tst	r7, #16
	bne	.L30
	ldr	r7, [r8]
	cmp	r7, #0
	bne	.L24
	ldrh	ip, [ip, #48]
.L32:
	cmp	r3, #1
	beq	.L33
	cmp	r1, #10
	bne	.L37
.L311:
	ldr	r3, [r5, #40]
	cmp	r3, #1
	bne	.L37
	ldr	ip, .L332+120
	ldr	r1, .L332+124
	ldr	r3, [ip]
	add	r1, r1, r3, lsl #2
	ldr	r7, [r1, #80]
	ldr	r1, [r1, #112]
	cmp	r3, #7
	moveq	r3, #0
	str	r1, [r5, #28]
	mov	r1, #0
	addne	r3, r3, #1
	str	r7, [r5, #20]
	str	r3, [ip]
	str	r1, [r5, #16]
	b	.L37
.L44:
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L111
.L47:
	cmp	ip, #1
	bne	.L46
	mov	r3, #0
	ldr	r2, .L332+128
	ldr	r9, .L332+84
	mov	r1, r3
	str	ip, [r5, #40]
	str	r3, [r6]
	str	r3, [r2]
	str	r3, [r9]
	b	.L50
.L325:
	ldrh	ip, [ip, #48]
	tst	ip, #2
	beq	.L24
	b	.L26
.L40:
	ldr	ip, [r5, #44]
	cmp	ip, #1
	bgt	.L110
.L111:
	ldr	r3, [r5, #16]
	cmp	r3, #10
	bne	.L47
.L45:
	ldr	r3, [r5, #40]
	cmp	r3, #0
	bne	.L47
	ldr	lr, .L332+40
	ldr	r2, .L332+124
	ldr	r1, [lr]
	add	r2, r2, r1, lsl #2
	ldr	r7, [r2, #144]
	ldr	r2, [r2, #156]
	str	r2, [r5, #28]
	mov	r2, #0
	cmp	r1, #2
	addne	r3, r1, #1
	str	r7, [r5, #20]
	str	r3, [lr]
	str	r2, [r5, #16]
	b	.L47
.L309:
	ldrh	r3, [ip, #48]
	ands	r3, r3, #2
	beq	.L116
	ldrh	r3, [ip, #48]
	ands	r3, r3, #256
	ldr	r8, .L332+28
	beq	.L20
	ldr	r3, [r8]
	rsbs	r3, r3, #1
	movcc	r3, #0
	b	.L20
.L308:
	mov	r7, #67108864
	add	ip, ip, #1
	lsl	lr, ip, #24
	orr	lr, lr, #1073741824
	lsr	lr, lr, #16
	sub	r3, r3, #256
	str	ip, [r6]
	str	r3, [r0]
	strh	lr, [r7, #8]	@ movhi
	b	.L112
.L314:
	ldr	r0, .L332+24
	ldrh	ip, [r0, #48]
	tst	ip, #2
	beq	.L65
	ldrh	r0, [r0, #48]
	tst	r0, #256
	bne	.L327
.L65:
	cmp	r1, #119
	bgt	.L66
.L72:
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L74
	ldr	r2, .L332+44
	ldr	r0, [r4, #44]
	ldr	r2, [r2]
	cmp	r0, r2
	beq	.L328
.L75:
	cmp	r1, #79
	bgt	.L71
.L108:
	mov	r0, #1
	mov	r2, r0
	str	r0, [r8]
	b	.L107
.L18:
	cmp	r3, #0
	bgt	.L112
	ldr	r6, .L332+20
	ldr	ip, [r6]
	cmp	ip, #28
	ble	.L112
	mov	r7, #67108864
	sub	ip, ip, #1
	lsl	lr, ip, #24
	orr	lr, lr, #1073741824
	lsr	lr, lr, #16
	add	r3, r3, #256
	str	ip, [r6]
	str	r3, [r0]
	strh	lr, [r7, #8]	@ movhi
	b	.L112
.L317:
	cmp	r2, #1
	bne	.L88
	b	.L305
.L324:
	ldr	r3, [r4, #48]
	cmp	r3, #1
	bne	.L102
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L102
	ldr	r2, .L332+24
	ldrh	r1, [r2, #48]
	tst	r1, #32
	beq	.L102
	ldrh	r1, [r2, #48]
	tst	r1, #16
	beq	.L102
	ldrh	r1, [r2, #48]
	tst	r1, #256
	beq	.L102
	ldrh	r2, [r2, #48]
	tst	r2, #2
	beq	.L102
	mov	r2, #2
	mov	r0, #8
	ldr	r1, .L332+44
	ldr	ip, .L332+132
	str	r0, [r1]
	str	r2, [ip]
	ldr	r0, .L332+136
	ldr	r1, .L332+48
	str	r2, [fp]
	ldr	r2, .L332+52
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	ldr	ip, .L332+56
	ldr	r0, .L332+60
	ldr	r1, .L332+36
	ldr	r2, .L332+40
	str	r3, [r4, #44]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
.L103:
	ldr	r3, .L332+140
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L104
	mov	r2, #1
	ldr	r1, .L332+144
	str	r2, [r3]
	ldr	r0, .L332+148
	ldr	r3, .L332+152
	mov	lr, pc
	bx	r3
	b	.L104
.L307:
	mov	r2, #1
	ldr	r3, .L332+156
	str	r2, [r3]
	bl	initEnemy
	ldr	r2, [r6]
	ldr	r1, [r5, #16]
	b	.L17
.L323:
	ldr	r6, .L332+128
	ldr	r3, [r6]
	cmp	r3, #1
	ldr	r9, .L332+84
	beq	.L99
	ldr	r3, [r9]
	cmp	r3, #1
	bne	.L98
.L99:
	ldr	r3, .L332+160
	mov	r2, #0
	ldr	r1, .L332+164
	ldr	r0, .L332+168
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	cmp	r3, #1
	beq	.L100
	ldr	r3, [r9]
	cmp	r3, #1
	beq	.L100
.L101:
	mov	lr, #1
	mov	r2, #0
	ldr	r0, .L332+172
	ldr	r3, [r0]
	sub	ip, r3, #1
	ldr	r1, .L332+176
	str	ip, [r0]
	ldr	r0, .L332+180
	add	r3, r3, r3, lsl lr
	add	r3, r0, r3, lsl #3
	ldr	r0, [r1]
	sub	r0, r0, #10
	str	lr, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r6]
	str	r2, [r9]
	str	r0, [r1]
	b	.L98
.L312:
	ldr	r1, [r5, #44]
	cmp	r1, #1
	bne	.L41
	mov	r7, #51
	ldr	ip, [r5, #4]
	ldr	r9, .L332+84
	sub	ip, ip, #50
	str	lr, [r6]
	str	ip, [r5, #4]
	str	r7, [r5, #44]
	str	r1, [r9]
	b	.L42
.L313:
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L59
	mov	r3, #1
	ldr	r2, .L332+44
	ldr	r1, [r4, #44]
	ldr	r2, [r2]
	cmp	r1, r2
	str	r3, [r4, #52]
	beq	.L329
.L61:
	ldr	r3, .L332+184
	ldr	r1, [r4, #4]
	ldr	r3, [r3]
	ldr	r2, [r4, #8]
	sub	ip, r3, #31
	add	lr, r1, r2
	cmp	lr, ip
	ldrlt	ip, [fp]
	addlt	r1, ip, r1
	strlt	r1, [r4, #4]
	ldr	r1, [r4, #28]
	cmp	r1, #120
	ble	.L59
	ldr	r1, [r10]
	sub	r3, r3, #240
	add	r2, r2, r1
	cmp	r2, r3
	bge	.L59
	ldr	ip, [sp, #20]
	ldr	r2, [r0]
	ldr	r3, [ip]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r1, [r10]
	str	r2, [r0]
	str	r3, [ip]
	b	.L59
.L315:
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L77
	ldr	r1, .L332+44
	ldr	r0, [r4, #44]
	ldr	r1, [r1]
	cmp	r0, r1
	bne	.L77
	ldr	r1, [r4, #48]
	orrs	r1, r2, r1
	bne	.L77
	ldr	lr, .L332+52
	ldr	r0, [lr]
	cmp	r0, #4
	moveq	r1, #1
	ldr	ip, .L332+124
	add	ip, ip, r0, lsl #2
	ldr	r9, [ip, #288]
	ldr	ip, [ip, #312]
	str	r9, [r4, #16]
	str	ip, [r4, #24]
	streq	r1, [r4, #40]
	beq	.L79
	cmp	r0, #5
	str	r1, [r4, #40]
	moveq	r1, #1
	streq	r1, [r4, #48]
	beq	.L80
.L79:
	add	r0, r0, #1
	str	r0, [lr]
.L80:
	mov	r1, #0
	str	r1, [r4, #44]
	b	.L77
.L289:
	ldr	r3, [r8]
	cmp	r3, #0
	bne	.L304
	ldr	r2, .L332+44
	ldr	r1, [r4, #44]
	ldr	r2, [r2]
	cmp	r1, r2
	str	r3, [r4, #52]
	beq	.L330
.L54:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L300
	ldr	r2, .L332+156
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L57
	ldr	fp, .L332+92
	ldr	r2, [fp]
	sub	r3, r3, r2
	str	r3, [r4, #4]
.L56:
	ldr	r3, [r0]
	cmp	r3, #0
	ble	.L303
	ldr	r2, [r4, #28]
	cmp	r2, #119
	bgt	.L303
	ldr	r2, .L332+156
	ldr	r2, [r2]
	cmp	r2, #0
	ldr	r10, .L332+96
	beq	.L296
	ldr	r3, .L332+88
	str	r3, [sp, #20]
	b	.L52
.L316:
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L84
	ldr	r1, .L332+44
	ldr	r0, [r4, #44]
	ldr	r1, [r1]
	cmp	r0, r1
	bne	.L84
	ldr	r1, [r4, #48]
	orrs	r2, r2, r1
	bne	.L84
	ldr	ip, .L332+60
	ldr	r0, [ip]
	ldr	r2, .L332+124
	cmp	r0, #6
	add	r2, r2, r0, lsl #2
	moveq	r0, #1
	addne	r0, r0, #1
	streq	r0, [r4, #48]
	strne	r0, [ip]
	mov	r0, #0
	ldr	r1, [r2, #336]
	ldr	r2, [r2, #364]
	str	r1, [r4, #16]
	str	r2, [r4, #24]
	str	r0, [r4, #44]
	b	.L83
.L326:
	ldrh	ip, [ip, #48]
	tst	ip, #256
	beq	.L24
	b	.L29
.L310:
	ldr	r7, .L332+136
	ldr	ip, [r7]
	ldr	r9, .L332+124
	cmp	ip, #9
	add	r10, r9, ip, lsl #2
	addne	r3, ip, #1
	ldr	r9, [r9, ip, lsl #2]
	mov	ip, #0
	ldr	r10, [r10, #40]
	str	r9, [r4, #16]
	str	r10, [r4, #24]
	str	r3, [r7]
	str	ip, [r4, #44]
	b	.L34
.L321:
	mov	r2, #1
	ldr	r1, .L332+188
	ldr	r3, .L332+160
	ldr	r0, .L332+192
	mov	lr, pc
	bx	r3
	b	.L93
.L318:
	ldr	r3, .L332+160
	ldr	r1, .L332+196
	ldr	r0, .L332+200
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	b	.L90
.L320:
	ldr	r3, .L332+160
	mov	r2, #1
	ldr	r1, .L332+188
	ldr	r0, .L332+192
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	b	.L92
.L319:
	ldr	r3, .L332+160
	ldr	r1, .L332+204
	ldr	r0, .L332+208
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	b	.L91
.L328:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L75
.L113:
	ldr	ip, .L332+56
	ldr	r0, .L332+124
	ldr	r2, [ip]
	add	r0, r0, r2, lsl #2
	ldr	lr, [r0, #248]
	ldr	r0, [r0, #268]
	cmp	r2, #4
	moveq	r2, #0
	str	r0, [r4, #24]
	mov	r0, #0
	addne	r2, r2, #1
	str	lr, [r4, #16]
	str	r2, [ip]
	str	r0, [r4, #44]
	b	.L75
.L322:
	mov	r2, #0
	ldr	r1, .L332+164
	ldr	r3, .L332+160
	ldr	r0, .L332+168
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #40]
	cmp	r3, #1
	moveq	r3, #5
	moveq	r2, #6
	streq	r3, [r5, #28]
	ldr	r3, .L332+132
	ldr	r1, [r3]
	ldr	r0, .L332+212
	ldr	lr, .L332+216
	streq	r2, [r5, #20]
	cmp	r1, #2
	ldr	r2, [r0]
	ldr	r3, [lr]
	beq	.L331
	sub	r2, r2, #10
	str	r2, [r0]
	ldr	r2, .L332+220
	add	r0, r3, r3, lsl #1
	add	r2, r2, r0, lsl #3
	mov	ip, #0
	mov	r0, #1
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	ip, [r4, #40]
.L97:
	sub	r3, r3, r1
	str	r3, [lr]
	b	.L94
.L30:
	ldrh	ip, [ip, #48]
	tst	ip, #32
	bne	.L32
	ldr	ip, [r8]
	cmp	ip, #0
	bne	.L24
	b	.L32
.L327:
	tst	r3, #32
	beq	.L67
	tst	r2, #32
	beq	.L65
.L67:
	tst	r3, #16
	beq	.L68
	tst	r2, #16
	beq	.L65
.L68:
	ldr	r1, .L332+224
	ldr	r3, .L332+160
	mov	r2, #0
	ldr	r0, .L332+228
	mov	lr, pc
	bx	r3
	ldr	r1, [r4]
	cmp	r1, #120
	ldrhne	r3, [r7]
	bne	.L72
	mvn	r3, #1
	ldr	r0, .L332+44
	ldr	r2, [r4, #44]
	ldr	r0, [r0]
	cmp	r0, r2
	str	r3, [r8]
	ldrh	r3, [r7]
	bne	.L71
	ldr	r2, [r4, #48]
	cmp	r2, #0
	beq	.L113
.L71:
	ldr	r2, [r8]
	b	.L107
.L300:
	ldr	fp, .L332+92
	b	.L56
.L330:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L54
	ldr	r3, .L332+48
	ldr	r1, .L332+124
	ldr	ip, [r3]
	add	r1, r1, ip, lsl #2
	ldr	lr, [r1, #168]
	ldr	r1, [r1, #208]
	str	r1, [r4, #24]
	mov	r1, #0
	cmp	ip, #9
	addne	r2, ip, #1
	str	lr, [r4, #16]
	str	r2, [r3]
	str	r1, [r4, #44]
	b	.L54
.L329:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L61
	ldr	r3, .L332+48
	ldr	r1, .L332+124
	ldr	ip, [r3]
	add	r1, r1, ip, lsl #2
	ldr	lr, [r1, #168]
	ldr	r1, [r1, #208]
	str	r1, [r4, #24]
	mov	r1, #0
	cmp	ip, #9
	addne	r2, ip, #1
	str	lr, [r4, #16]
	str	r2, [r3]
	str	r1, [r4, #44]
	b	.L61
.L100:
	ldr	r3, .L332+24
	ldrh	r2, [r3, #48]
	tst	r2, #16
	beq	.L101
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L101
	ldrh	r2, [r3, #48]
	tst	r2, #2
	beq	.L101
	ldrh	r3, [r3, #48]
	tst	r3, #256
	beq	.L101
	ldr	r3, [r8]
	cmp	r3, #0
	moveq	r2, #3
	streq	r3, [r4, #24]
	streq	r2, [r4, #16]
	b	.L101
.L303:
	ldr	r3, .L332+88
	ldr	r10, .L332+96
	str	r3, [sp, #20]
	b	.L52
.L331:
	sub	r2, r2, #20
	ldr	ip, .L332+220
	str	r2, [r0]
	sub	r0, r3, #1
	add	r0, r0, r0, lsl #1
	add	r2, r3, r3, lsl #1
	add	r2, ip, r2, lsl #3
	add	ip, ip, r0, lsl #3
	mov	r0, #1
	str	r0, [r2, #12]
	mov	r0, #0
	str	r0, [r2, #8]
	mov	r2, #1
	str	r0, [ip, #8]
	str	r2, [ip, #12]
	str	r0, [r4, #40]
	b	.L97
.L57:
	ldr	r1, .L332+232
	cmp	r3, r1
	ble	.L300
	ldr	fp, .L332+92
	cmp	r2, #1
	ldreq	r2, [fp]
	subeq	r3, r3, r2
	streq	r3, [r4, #4]
	b	.L56
.L296:
	ldr	ip, .L332+88
	ldr	r1, [r10]
	ldr	r2, [ip]
	sub	r3, r3, #1
	sub	r1, r1, #1
	sub	r2, r2, #1
	str	ip, [sp, #20]
	str	r3, [r0]
	str	r1, [r10]
	str	r2, [ip]
	b	.L52
.L74:
	cmp	r1, #79
	bgt	.L73
	b	.L108
.L333:
	.align	2
.L332:
	.word	player
	.word	gameTimer
	.word	enemy
	.word	spawned
	.word	hOff
	.word	screenBlock
	.word	67109120
	.word	jumpDirection
	.word	attackDirection
	.word	count7
	.word	count8
	.word	animationSpeed
	.word	count3
	.word	count4
	.word	count5
	.word	count6
	.word	-1030792151
	.word	85899344
	.word	21474836
	.word	enemyMoveNum
	.word	enemyMove
	.word	enemyAttack2
	.word	enemyhOff
	.word	speed
	.word	playerhOff
	.word	oldButtons
	.word	buttons
	.word	collision
	.word	enemyvOff
	.word	playervOff
	.word	count
	.word	.LANCHOR0
	.word	enemyAttack1
	.word	damage
	.word	count2
	.word	changedMusic
	.word	3289248
	.word	battlemusic2
	.word	playSoundA
	.word	spawn
	.word	playSoundB
	.word	6132
	.word	damagesound
	.word	pHealthBarIndex
	.word	playerHealth
	.word	playerHealthBar
	.word	worldWidth
	.word	24705
	.word	runsound
	.word	2829
	.word	blocksound
	.word	9428
	.word	swordsound
	.word	enemyHealth
	.word	eHealthBarIndex
	.word	enemyHealthBar
	.word	8470
	.word	jumpsound
	.word	754
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L348
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, [r3]
	cmp	r6, #1
	beq	.L345
	ldr	ip, .L348+4
.L335:
	ldr	r0, .L348+8
	ldr	r2, [r0, #52]
	ldrb	r3, [r0, #32]	@ zero_extendqisi2
	cmp	r2, #1
	strh	r3, [ip, #168]	@ movhi
	ldr	r2, [r0, #24]
	ldr	r3, [r0, #12]
	ldrsh	r1, [r0, #28]
	mul	r2, r3, r2
	ldr	r3, [r0, #16]
	ldr	r0, [r0, #8]
	mul	r3, r0, r3
	lsleq	r1, r1, #23
	orrne	r1, r1, #36864
	lsreq	r1, r1, #23
	lslne	r1, r1, #16
	orreq	r1, r1, #32768
	lsrne	r1, r1, #16
	add	r0, r2, #7
	cmp	r2, #0
	movlt	r2, r0
	add	r0, r3, #7
	cmp	r3, #0
	movlt	r3, r0
	ldr	r4, .L348+4
	mov	r0, r4
	asr	r2, r2, #3
	asr	r3, r3, #3
	strh	r1, [ip, #170]	@ movhi
	add	r3, r3, r2, lsl #5
	ldr	r1, .L348+12
	strh	r3, [ip, #172]	@ movhi
	add	r5, r1, #240
.L338:
	ldr	r8, [r1, #4]
	ldr	r2, [r1, #12]
	ldr	lr, [r1, #16]
	ldr	ip, [r1, #20]
	ldr	r3, [r1, #8]
	ldr	r7, [r1], #24
	mul	r2, r8, r2
	mul	r3, r7, r3
	cmp	r2, #0
	add	r8, r2, #7
	movlt	r2, r8
	add	r7, r3, #7
	cmp	r3, #0
	movlt	r3, r7
	asr	r2, r2, #3
	asr	r3, r3, #3
	add	r3, r3, r2, lsl #5
	cmp	r5, r1
	strh	lr, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	add	r0, r0, #8
	bne	.L338
	cmp	r6, #1
	beq	.L339
.L341:
	mov	r3, #67108864
	ldr	r2, .L348+16
	ldrh	r1, [r2]
	ldr	r2, .L348+20
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L348+24
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L348+28
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L348+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L345:
	ldr	r0, .L348+32
	ldr	r2, [r0, #36]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	ldr	ip, [r0, #12]
	ldr	r1, [r0, #28]
	ldr	r3, [r0, #20]
	mul	r1, ip, r1
	ldr	ip, [r0, #8]
	mul	r3, ip, r3
	cmp	r1, #0
	add	ip, r1, #7
	movlt	r1, ip
	add	ip, r3, #7
	cmp	r3, #0
	movlt	r3, ip
	mvn	r2, r2, lsr #17
	ldrb	r0, [r0, #32]	@ zero_extendqisi2
	ldr	ip, .L348+4
	asr	r1, r1, #3
	asr	r3, r3, #3
	add	r3, r3, r1, lsl #5
	strh	r3, [ip, #228]	@ movhi
	strh	r0, [ip, #224]	@ movhi
	strh	r2, [ip, #226]	@ movhi
	b	.L335
.L339:
	ldr	r1, .L348+36
	add	lr, r1, #240
.L340:
	ldr	r6, [r1, #4]
	ldr	r2, [r1, #12]
	ldr	ip, [r1, #16]
	ldr	r0, [r1, #20]
	ldr	r3, [r1, #8]
	ldr	r5, [r1], #24
	mul	r2, r6, r2
	mul	r3, r5, r3
	cmp	r2, #0
	add	r6, r2, #7
	movlt	r2, r6
	add	r5, r3, #7
	cmp	r3, #0
	movlt	r3, r5
	asr	r2, r2, #3
	asr	r3, r3, #3
	add	r3, r3, r2, lsl #5
	cmp	lr, r1
	strh	ip, [r4, #80]	@ movhi
	strh	r0, [r4, #82]	@ movhi
	strh	r3, [r4, #84]	@ movhi
	add	r4, r4, #8
	bne	.L340
	b	.L341
.L349:
	.align	2
.L348:
	.word	spawn
	.word	shadowOAM
	.word	player
	.word	playerHealthBar
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	DMANow
	.word	enemy
	.word	enemyHealthBar
	.size	drawGame, .-drawGame
	.comm	enemyMoveNum,4,4
	.comm	enemyMove,40,4
	.comm	eHealthBarIndex,4,4
	.comm	pHealthBarIndex,4,4
	.comm	enemyHealth,4,4
	.comm	playerHealth,4,4
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
	.comm	enemyAttack2,4,4
	.comm	enemyAttack1,4,4
	.comm	spawned,4,4
	.comm	spawn,4,4
	.comm	changedMusic,4,4
	.comm	damage,4,4
	.comm	speed,4,4
	.comm	animationSpeed,4,4
	.comm	attackDirection,4,4
	.comm	jumpDirection,4,4
	.comm	gameTimer,4,4
	.comm	worldWidth,4,4
	.comm	enemyvOff,4,4
	.comm	playervOff,4,4
	.comm	enemyhOff,4,4
	.comm	playerhOff,4,4
	.comm	screenBlock,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	count8,4,4
	.comm	count7,4,4
	.comm	count6,4,4
	.comm	count5,4,4
	.comm	count4,4,4
	.comm	count3,4,4
	.comm	count2,4,4
	.comm	count,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	enemy,48,4
	.comm	player,56,4
	.comm	playerHealthBar,240,4
	.comm	enemyHealthBar,240,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
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
	.align	2
	.type	playerHurtCurFrames, %object
	.size	playerHurtCurFrames, 16
playerHurtCurFrames:
	.space	16
	.ident	"GCC: (devkitARM release 53) 9.1.0"
