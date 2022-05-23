main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        lea     rdx, [rbp-8]
        lea     rax, [rbp-4]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-4]
        test    eax, eax
        jle     .L2
        mov     eax, DWORD PTR [rbp-8]
        test    eax, eax
        jle     .L2
        mov     edi, 49
        call    putchar
.L2:
        mov     eax, DWORD PTR [rbp-4]
        test    eax, eax
        jns     .L3
        mov     eax, DWORD PTR [rbp-8]
        test    eax, eax
        jle     .L3
        mov     edi, 50
        call    putchar
.L3:
        mov     eax, DWORD PTR [rbp-4]
        test    eax, eax
        jns     .L4
        mov     eax, DWORD PTR [rbp-8]
        test    eax, eax
        jns     .L4
        mov     edi, 51
        call    putchar
.L4:
        mov     eax, DWORD PTR [rbp-4]
        test    eax, eax
        jle     .L5
        mov     eax, DWORD PTR [rbp-8]
        test    eax, eax
        jns     .L5
        mov     edi, 52
        call    putchar
.L5:
        mov     eax, 0
        leave
        ret
