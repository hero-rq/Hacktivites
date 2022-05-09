        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, 40
        call    malloc
        mov     QWORD PTR [rbp-8], rax
        mov     rax, QWORD PTR [rbp-8]
        mov     DWORD PTR [rax], 10
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 36
        mov     DWORD PTR [rax], 20
        mov     rax, QWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 36
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    free
        mov     eax, 0
        leave
        ret
