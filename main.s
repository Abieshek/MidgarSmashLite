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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r5, .L4
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+12
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+16
	str	r6, [r5, #1024]
	mov	lr, pc
	bx	r4
	mov	r3, #12992
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r1, .L4+32
	ldr	r0, .L4+36
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	str	r6, [r5, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	titlePal
	.word	titleTiles
	.word	100720640
	.word	titleMap
	.word	1346400
	.word	openingmusic
	.word	playSoundA
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #56320
	mov	r1, #4352
	push	{r4, lr}
	ldr	r2, .L8
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+8
	mov	r2, #117440512
	ldr	r1, .L8+12
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	.LANCHOR0
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L12
	ldr	r5, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+12
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #13760
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L12+24
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r3, [r5, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	hideSprites
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	instructionsPal
	.word	instructionsTiles
	.word	100720640
	.word	instructionsMap
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L21
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	ldrh	r2, [r3, #8]
	tst	r2, #8
	beq	.L14
	ldrh	r2, [r3, #10]
	ands	r2, r2, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r1, .L21+8
	ldr	r0, .L21+12
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	waitForVBlank
	.word	.LANCHOR0+1024
	.word	11747
	.word	startsound
	.word	playSoundB
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L27
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+4
	mov	lr, pc
	bx	r3
	mov	r5, #4352
	mov	ip, #67108864
	mov	lr, #23552
	ldr	r4, .L27+8
	strh	r5, [ip]	@ movhi
	strh	lr, [ip, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L27+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L27+16
	ldr	r1, .L27+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L27+24
	ldr	r1, .L27+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L27+32
	ldr	r1, .L27+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L27+40
	ldr	r1, .L27+44
	mov	lr, pc
	bx	r4
	ldr	r4, .L27+48
	ldr	r3, [r4, #1024]
	cmp	r3, #0
	beq	.L26
	mov	r3, #1
	str	r3, [r4, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L26:
	ldr	r3, .L27+52
	mov	r2, #1
	ldr	r1, .L27+56
	ldr	r0, .L27+60
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	backgroundPal
	.word	16656
	.word	backgroundTiles
	.word	100720640
	.word	backgroundMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	.LANCHOR0
	.word	playSoundA
	.word	1427904
	.word	battlemusic
	.size	goToGame, .-goToGame
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L36
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	add	r3, r4, #1024
	ldrh	r2, [r3, #8]
	tst	r2, #8
	beq	.L29
	ldrh	r2, [r3, #10]
	ands	r2, r2, #8
	beq	.L35
.L29:
	pop	{r4, lr}
	bx	lr
.L35:
	ldr	r1, .L36+8
	ldr	r3, .L36+12
	ldr	r0, .L36+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+20
	ldr	r0, [r4, #1036]
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	11747
	.word	playSoundB
	.word	startsound
	.word	srand
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L40
	ldr	r5, .L40+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L40+12
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L40+20
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L40+28
	ldr	r1, .L40+32
	mov	lr, pc
	bx	r4
	mov	r3, #4
	str	r3, [r5, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	hideSprites
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	winPal
	.word	16448
	.word	winTiles
	.word	100720640
	.word	winMap
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L49
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+4
	ldrh	r2, [r3, #8]
	tst	r2, #8
	beq	.L42
	ldrh	r3, [r3, #10]
	tst	r3, #8
	beq	.L48
.L42:
	pop	{r4, lr}
	bx	lr
.L48:
	pop	{r4, lr}
	b	goToStart
.L50:
	.align	2
.L49:
	.word	waitForVBlank
	.word	.LANCHOR0+1024
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L53
	ldr	r5, .L53+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+12
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+16
	mov	lr, pc
	bx	r4
	mov	r3, #7872
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L53+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L53+24
	ldr	r1, .L53+28
	mov	lr, pc
	bx	r4
	mov	r3, #5
	str	r3, [r5, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	hideSprites
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L62
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+4
	ldrh	r2, [r3, #8]
	tst	r2, #8
	beq	.L55
	ldrh	r3, [r3, #10]
	tst	r3, #8
	beq	.L61
.L55:
	pop	{r4, lr}
	bx	lr
.L61:
	pop	{r4, lr}
	b	goToStart
.L63:
	.align	2
.L62:
	.word	waitForVBlank
	.word	.LANCHOR0+1024
	.size	lose, .-lose
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L66
	mov	lr, pc
	bx	r3
	ldr	r3, .L66+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L66+8
	ldr	r3, .L66+12
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L66+16
	ldr	r3, .L66+20
	ldr	r0, .L66+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L66+28
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L66+32
	mov	lr, pc
	bx	r4
	mov	r3, #8064
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L66+40
	ldr	r1, .L66+44
	mov	lr, pc
	bx	r4
	mov	r3, #3
	str	r3, [r5, #1028]
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	pauseSound
	.word	hideSprites
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	11747
	.word	playSoundB
	.word	startsound
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.size	goToPause, .-goToPause
	.align	2
	.global	game
	.syntax unified
	.arm
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L79
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+12
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L76
.L69:
	ldr	r3, .L79+16
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L77
.L70:
	ldr	r3, .L79+20
	ldrh	r2, [r3, #8]
	tst	r2, #8
	beq	.L68
	ldrh	r3, [r3, #10]
	ands	r3, r3, #8
	beq	.L78
.L68:
	pop	{r4, lr}
	bx	lr
.L77:
	mov	r2, #1
	ldr	r1, .L79+24
	ldr	r3, .L79+28
	ldr	r0, .L79+32
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #56320
	mov	r1, #4352
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bl	goToLose
	b	.L70
.L76:
	mov	r2, #1
	ldr	r1, .L79+36
	ldr	r3, .L79+28
	ldr	r0, .L79+40
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #56320
	mov	r1, #4352
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bl	goToWin
	b	.L69
.L78:
	mov	r2, #67108864
	mov	r0, #56320
	mov	r1, #4352
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	b	goToPause
.L80:
	.align	2
.L79:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	enemyHealth
	.word	playerHealth
	.word	.LANCHOR0+1024
	.word	4843584
	.word	playSoundA
	.word	defeatmusic
	.word	596736
	.word	victorymusic
	.size	game, .-game
	.align	2
	.global	pause
	.syntax unified
	.arm
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L88
	ldr	r3, .L88+4
	mov	lr, pc
	bx	r3
	add	r3, r4, #1024
	ldrh	r2, [r3, #8]
	tst	r2, #8
	beq	.L81
	ldrh	r2, [r3, #10]
	ands	r5, r2, #8
	beq	.L87
.L81:
	pop	{r4, r5, r6, lr}
	bx	lr
.L87:
	ldr	r3, .L88+8
	mov	lr, pc
	bx	r3
	mov	r2, r5
	ldr	r3, .L88+12
	ldr	r1, .L88+16
	ldr	r0, .L88+20
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #1024]
	pop	{r4, r5, r6, lr}
	b	goToGame
.L89:
	.align	2
.L88:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	unpauseSound
	.word	playSoundB
	.word	11747
	.word	startsound
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r4, .L108
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r6, .L108+8
	ldrh	r1, [r4, #10]
	ldr	r9, .L108+12
	ldr	r8, .L108+16
	ldr	r7, .L108+20
	ldr	r10, .L108+24
	ldr	r5, .L108+28
	sub	fp, r4, #1024
.L91:
	strh	r1, [r4, #8]	@ movhi
	ldr	r3, [fp, #1028]
	ldrh	r2, [r5, #48]
	strh	r2, [r4, #10]	@ movhi
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L104
.L94:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L93
	.word	.L93
.L93:
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4, #8]
	tst	r3, #8
	beq	.L100
	ldrh	r1, [r4, #10]
	tst	r1, #8
	bne	.L91
	mov	lr, pc
	bx	r10
	ldrh	r1, [r4, #10]
	b	.L91
.L96:
	mov	lr, pc
	bx	r7
	ldrh	r1, [r4, #10]
	b	.L91
.L97:
	mov	lr, pc
	bx	r8
	ldrh	r1, [r4, #10]
	b	.L91
.L98:
	mov	lr, pc
	bx	r9
	ldrh	r1, [r4, #10]
	b	.L91
.L99:
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4, #8]
	tst	r3, #8
	beq	.L100
	ldrh	r1, [r4, #10]
	ands	r2, r1, #8
	bne	.L91
	ldr	r1, .L108+32
	ldr	r3, .L108+36
	ldr	r0, .L108+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+44
	mov	lr, pc
	bx	r3
	ldrh	r1, [r4, #10]
	b	.L91
.L100:
	ldrh	r1, [r4, #10]
	b	.L91
.L104:
	ldr	r3, .L108+28
.L92:
	ldrh	r1, [r3, #48]
	strh	r2, [r4, #8]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	mov	r2, r1
	b	.L92
.L109:
	.align	2
.L108:
	.word	.LANCHOR0+1024
	.word	initialize
	.word	waitForVBlank
	.word	game
	.word	instructions
	.word	pause
	.word	goToStart
	.word	67109120
	.word	11747
	.word	playSoundB
	.word	startsound
	.word	goToInstructions
	.size	main, .-main
	.global	state
	.global	pauseVar
	.global	soundB
	.global	soundA
	.global	vOff
	.global	hOff
	.global	shadowOAM
	.global	seed
	.global	oldButtons
	.global	buttons
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shadowOAM, %object
	.size	shadowOAM, 1024
shadowOAM:
	.space	1024
	.type	pauseVar, %object
	.size	pauseVar, 4
pauseVar:
	.space	4
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.type	oldButtons, %object
	.size	oldButtons, 2
oldButtons:
	.space	2
	.type	buttons, %object
	.size	buttons, 2
buttons:
	.space	2
	.type	seed, %object
	.size	seed, 4
seed:
	.space	4
	.type	soundB, %object
	.size	soundB, 32
soundB:
	.space	32
	.type	soundA, %object
	.size	soundA, 32
soundA:
	.space	32
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 61) 13.1.0"
