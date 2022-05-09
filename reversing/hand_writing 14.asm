        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     BYTE PTR [rbp-1], 1
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        lea     rax, [rbp-48]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        lea     rax, [rbp-48]
        mov     rdi, rax
        call    strlen
        mov     DWORD PTR [rbp-12], eax
        mov     DWORD PTR [rbp-8], 0
        jmp     .L2
.L5:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        movzx   edx, BYTE PTR [rbp-48+rax]
        mov     eax, DWORD PTR [rbp-12]
        sub     eax, 1
        sub     eax, DWORD PTR [rbp-8]
        cdqe
        movzx   eax, BYTE PTR [rbp-48+rax]
        cmp     dl, al
        je      .L3
        mov     BYTE PTR [rbp-1], 0
        jmp     .L4
.L3:
        add     DWORD PTR [rbp-8], 1
.L2:
        mov     eax, DWORD PTR [rbp-12]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        cmp     eax, DWORD PTR [rbp-8]
        jg      .L5
.L4:
        movzx   eax, BYTE PTR [rbp-1]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
