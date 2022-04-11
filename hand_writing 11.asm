        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        movabs  rax, 478560413000
        mov     QWORD PTR [rbp-48], rax
        mov     QWORD PTR [rbp-40], 0
        mov     QWORD PTR [rbp-32], 0
        mov     DWORD PTR [rbp-24], 0
        mov     WORD PTR [rbp-20], 0
        lea     rax, [rbp-48]
        mov     rdi, rax
        call    strlen
        mov     DWORD PTR [rbp-8], eax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-4]
        add     eax, 1
        cdqe
        movzx   eax, BYTE PTR [rbp-48+rax]
        movsx   edx, al
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movzx   eax, BYTE PTR [rbp-48+rax]
        movsx   eax, al
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-4], 1
.L2:
        mov     eax, DWORD PTR [rbp-8]
        sub     eax, 1
        cmp     eax, DWORD PTR [rbp-4]
        jg      .L3
        mov     eax, 0
        leave
        ret
