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
	@ PROLOG
	push {r3, r4, r5, r6, lr}			
	
	mov r3, r0	@counter
	mov r4, #0	@r4=0
	sub r4, r4, #1	@previous,  r4 = r4-1
	mov r5, #0
	add r5, r5, #1	@result, r5 = r5+1 	
	
	
.LOOP:
	sub r3, r3, #1	@r3 = r3 - 1 
	add r6, r4, r5	@r6 = r4 + r5
	mov r4, r5
	mov r5, r6	
	cmp r3, #-2
		bgt .LOOP
	
	mov r0, r4
	pop {r3, r4, r5, r6, pc}	@EPILOG
	
	@ END CODE MODIFICATION
	.size fibonacci, .-fibonacci
	.end
