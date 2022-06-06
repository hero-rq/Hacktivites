        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     DWORD PTR [rbp-48], 11
        mov     DWORD PTR [rbp-44], 22
        mov     DWORD PTR [rbp-40], 33
        mov     DWORD PTR [rbp-36], 44
        mov     DWORD PTR [rbp-32], 55
        lea     rax, [rbp-48]
        mov     QWORD PTR [rbp-8], rax
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 4
        mov     QWORD PTR [rbp-16], rax
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 8
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-16]
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
