        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     DWORD PTR [rbp-32], 30
        mov     DWORD PTR [rbp-28], 20
        mov     DWORD PTR [rbp-48], 60
        mov     DWORD PTR [rbp-44], 50
        mov     edx, DWORD PTR [rbp-48]
        mov     eax, DWORD PTR [rbp-32]
        sub     edx, eax
        mov     eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-44]
        mov     eax, DWORD PTR [rbp-28]
        sub     edx, eax
        mov     eax, edx
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, DWORD PTR [rbp-4]
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-8]
        imul    eax, DWORD PTR [rbp-8]
        add     eax, edx
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, eax
        call    sqrt
        movq    rax, xmm0
        mov     QWORD PTR [rbp-16], rax
        mov     rax, QWORD PTR [rbp-16]
        mov     QWORD PTR [rbp-56], rax
        movsd   xmm0, QWORD PTR [rbp-56]
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 1
        call    printf
        mov     eax, 0
        leave
        ret
