	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1
	.equ unlocked, 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
        @ INSERT CODE BELOW

	ldr r1, =locked		@load locked value into a temp register
.L1:
	ldrex r2, [r0] 		@LDREX from [r0] 
	cmp r2, #0     		@compare to unlocked value(0)0
	

	strexeq r2, r1, [r0] 	@if r2 unlocked, store r1 into [r0] 
	cmpeq r2, #0		
	bne .L1

        @ END CODE INSERT
	bx lr

	.size lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	@ INSERT CODE BELOW
        ldr r1, = unlocked
	str r1, [r0]
        @ END CODE INSERT
	bx lr
	.size unlock_mutex, .-unlock_mutex

	.end
