        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        movabs  rax, 478560413000
        mov     QWORD PTR [rbp-32], rax
        mov     WORD PTR [rbp-24], 0
        mov     QWORD PTR [rbp-8], OFFSET FLAT:.LC0
        mov     rdx, QWORD PTR [rbp-8]
        lea     rax, [rbp-32]
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        mov     DWORD PTR [rbp-12], eax
        mov     eax, DWORD PTR [rbp-12]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
