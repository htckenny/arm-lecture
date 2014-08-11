	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	
	push {r3, r4, r5, lr}		@ PROLOG	
	mov r3, #-1
	mov r5, #1
	ble LOOP	

	
	
	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
LOOP:
	add r4, r5, r3
	mov r3, r5 
	mov r5, r4


	.size fibonacci, .-fibonacci
	.end
