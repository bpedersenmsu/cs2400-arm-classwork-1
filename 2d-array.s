main
        sub     sp, sp, #8
        movs    r3, #0
        str     r3, [sp, #4]
        b       L2
L5
        movs    r3, #0
        str     r3, [sp]
        b       L3
L4
        ldr     r2, [sp, #4]
        ldr     r3, [sp]
        adds    r1, r2, r3
        ldr     r0, L7
        ldr     r2, [sp, #4]
        mov     r3, r2
        lsls    r3, r3, #2
        add     r3, r3, r2
        ldr     r2, [sp]
        add     r3, r3, r2
        str     r1, [r0, r3, lsl #2]
        ldr     r3, [sp]
        adds    r3, r3, #1
        str     r3, [sp]
L3
        ldr     r3, [sp]
        cmp     r3, #4
        ble     L4
        ldr     r3, [sp, #4]
        adds    r3, r3, #1
        str     r3, [sp, #4]
L2
        ldr     r3, [sp, #4]
        cmp     r3, #9
        ble     L5
        movs    r3, #0
        mov     r0, r3
        add     sp, sp, #8
        bx      lr
L7
        .word   iarr