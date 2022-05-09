        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        movss   xmm0, DWORD PTR .LC0[rip]
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm0, DWORD PTR .LC1[rip]
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR [rbp-4]
        movss   xmm1, DWORD PTR .LC2[rip]
        divss   xmm0, xmm1
        movss   DWORD PTR [rbp-4], xmm0
        movss   xmm1, DWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR .LC3[rip]
        mulss   xmm0, xmm1
        movss   DWORD PTR [rbp-8], xmm0
        cvtss2sd        xmm1, DWORD PTR [rbp-8]
        cvtss2sd        xmm0, DWORD PTR [rbp-4]
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 2
        call    printf
        mov     eax, 0
        leave
        ret
