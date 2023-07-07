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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	ldr	ip, .L4+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+20
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #12992
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+36
	mov	r2, #1
	ldr	r1, .L4+40
	ldr	r0, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	.LANCHOR0
	.word	titlePal
	.word	titleTiles
	.word	100720640
	.word	titleMap
	.word	playSoundA
	.word	1346400
	.word	openingmusic
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #56320
	mov	r2, #4352
	mov	r3, #67108864
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
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
	.word	shadowOAM
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+12
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
	ldr	r2, .L12+24
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L12+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	instructionsPal
	.word	instructionsTiles
	.word	100720640
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
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
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r1, .L21+12
	ldr	r0, .L21+16
	ldr	r3, .L21+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11747
	.word	startsound
	.word	playSoundB
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L27
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	ldr	r4, .L27+8
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
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
	ldr	r3, .L27+48
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L26
.L24:
	mov	r2, #1
	ldr	r3, .L27+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	mov	r2, #1
	ldr	r1, .L27+56
	ldr	r3, .L27+60
	ldr	r0, .L27+64
	mov	lr, pc
	bx	r3
	b	.L24
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
	.word	state
	.word	1427904
	.word	playSoundA
	.word	battlemusic
	.size	goToGame, .-goToGame
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L36
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L29
	ldr	r3, .L36+8
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L35
.L29:
	pop	{r4, lr}
	bx	lr
.L35:
	ldr	r1, .L36+12
	ldr	r3, .L36+16
	ldr	r0, .L36+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L36+24
	ldr	r3, .L36+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L37:
	.align	2
.L36:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	11747
	.word	playSoundB
	.word	startsound
	.word	seed
	.word	srand
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L40+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L40+12
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
	ldr	r2, .L40+28
	mov	r0, #3
	ldr	r1, .L40+32
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L40+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	winPal
	.word	16448
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
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
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
	ldr	r3, .L49+8
	ldrh	r3, [r3]
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
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L53
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+12
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
	ldr	r2, .L53+24
	mov	r0, #3
	ldr	r1, .L53+28
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L53+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L58+12
	ldr	r3, .L58+16
	ldr	r0, .L58+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L58+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L58+32
	mov	lr, pc
	bx	r4
	mov	r3, #8064
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L58+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L58+40
	mov	r0, #3
	ldr	r1, .L58+44
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L58+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	pauseSound
	.word	hideSprites
	.word	waitForVBlank
	.word	11747
	.word	playSoundB
	.word	startsound
	.word	DMANow
	.word	shadowOAM
	.word	pausePal
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+12
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L68
.L61:
	ldr	r3, .L71+16
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L69
.L62:
	ldr	r3, .L71+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
	ldr	r3, .L71+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L70
.L60:
	pop	{r4, lr}
	bx	lr
.L69:
	mov	r2, #1
	ldr	r1, .L71+28
	ldr	r3, .L71+32
	ldr	r0, .L71+36
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
	b	.L62
.L68:
	mov	r2, #1
	ldr	r1, .L71+40
	ldr	r3, .L71+32
	ldr	r0, .L71+44
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
	b	.L61
.L70:
	mov	r2, #67108864
	mov	r0, #56320
	mov	r1, #4352
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	b	goToPause
.L72:
	.align	2
.L71:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	enemyHealth
	.word	playerHealth
	.word	oldButtons
	.word	buttons
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
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L80
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L73
	ldr	r3, .L80+8
	ldrh	r2, [r3]
	ands	r4, r2, #8
	beq	.L79
.L73:
	pop	{r4, lr}
	bx	lr
.L79:
	ldr	r3, .L80+12
	mov	lr, pc
	bx	r3
	mov	r2, r4
	ldr	r3, .L80+16
	ldr	r1, .L80+20
	ldr	r0, .L80+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L80+28
	pop	{r4, lr}
	str	r2, [r3]
	b	goToGame
.L81:
	.align	2
.L80:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	playSoundB
	.word	11747
	.word	startsound
	.word	.LANCHOR0
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L94
	mov	lr, pc
	bx	r3
	ldr	r6, .L94+4
	ldr	r8, .L94+8
	ldr	r5, .L94+12
	ldr	fp, .L94+16
	ldr	r10, .L94+20
	ldr	r9, .L94+24
	ldr	r7, .L94+28
	ldr	r4, .L94+32
.L83:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L84:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L84
.L86:
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L85
	.word	.L85
.L85:
	mov	lr, pc
	bx	r7
	b	.L83
.L87:
	ldr	r3, .L94+36
	mov	lr, pc
	bx	r3
	b	.L83
.L88:
	mov	lr, pc
	bx	r9
	b	.L83
.L89:
	mov	lr, pc
	bx	r10
	b	.L83
.L90:
	mov	lr, pc
	bx	fp
	b	.L83
.L95:
	.align	2
.L94:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	instructions
	.word	win
	.word	67109120
	.word	pause
	.size	main, .-main
	.comm	state,4,4
	.global	pauseVar
	.comm	soundB,32,4
	.comm	soundA,32,4
	.global	vOff
	.global	hOff
	.comm	shadowOAM,1024,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pauseVar, %object
	.size	pauseVar, 4
pauseVar:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
