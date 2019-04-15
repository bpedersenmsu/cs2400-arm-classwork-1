main
		sub		sp, sp, #408
		movs		r3, #0
		str		r3, [sp, #404]
		b		L4
L3
		ldr		r3, [sp, #404]
		cmp		r3, #99
		ble		L3
		movs		r3, #0
		str		r3, [sp, #400]
		b		L4
L2
		ldr		r3, [sp, #404]
		lsls		r1, r3, #7
		mov		r3, sp
		ldr		r2, [sp, #404]
		str		r1, [r3, r2, lsl #2]
		ldr		r3, [sp, #404]
		adds		r3, r3, #1
		str		r3, [sp, #404]
L5
        ldr     r3, [sp, #400]
        rsb     r3, r3, #99
        mov     r2, sp
        ldr     r1, [sp, #400]
        ldr     r2, [r2, r1, lsl #2]
        ldr     r1, L7
        str     r2, [r1, r3, lsl #2]
        ldr     r3, [sp, #400]
        adds    r3, r3, #1
        str     r3, [sp, #400]
L4
        ldr     r3, [sp, #400]
        cmp     r3, #99
        ble     L5
        movs    r3, #0
        mov     r0, r3
        add     sp, sp, #408
        bx      lr
L7
        word   result
