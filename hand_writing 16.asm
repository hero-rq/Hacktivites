        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        lea     rax, [rbp-4]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, 1
        je      .L10
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, 2
        jne     .L11
        jmp     .L9
.L10:
        nop
        mov     edi, OFFSET FLAT:.LC1
        call    puts
        jmp     .L6
.L9:
        mov     edi, OFFSET FLAT:.LC2
        call    puts
        jmp     .L6
.L11:
        nop
.L6:
        mov     eax, 0
        leave
        ret
