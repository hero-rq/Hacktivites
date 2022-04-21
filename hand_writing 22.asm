        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-4], 0
        mov     DWORD PTR [rbp-4], 1
        jmp     .L2
.L3:
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        lea     rax, [rbp-12]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-12]
        mov     DWORD PTR [rbp-20], eax
        movss   xmm0, DWORD PTR [rbp-20]
        call    funArea
        movd    eax, xmm0
        mov     DWORD PTR [rbp-8], eax
        cvtss2sd        xmm0, DWORD PTR [rbp-8]
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 1
        call    printf
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 10
        jle     .L3
        mov     eax, 0
        leave
        ret
funArea:
        push    rbp
        mov     rbp, rsp
        movss   DWORD PTR [rbp-20], xmm0
        cvtss2sd        xmm0, DWORD PTR [rbp-20]
        movsd   xmm1, QWORD PTR .LC3[rip]
        mulsd   xmm1, xmm0
        cvtss2sd        xmm0, DWORD PTR [rbp-20]
        mulsd   xmm0, xmm1
        cvtsd2ss        xmm2, xmm0
        movss   DWORD PTR [rbp-4], xmm2
        movss   xmm0, DWORD PTR [rbp-4]
        pop     rbp
        ret
