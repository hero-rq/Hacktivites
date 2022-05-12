main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     edi, 16
        call    malloc
        mov     QWORD PTR [rbp-16], rax
        mov     edi, 16
        call    malloc
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-16]
        mov     rdx, QWORD PTR [rbp-24]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+8], 10
        mov     edi, 16
        call    malloc
        mov     QWORD PTR [rbp-32], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rbp-32]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-32]
        mov     DWORD PTR [rax+8], 20
        mov     rax, QWORD PTR [rbp-32]
        mov     QWORD PTR [rax], 0
        mov     rax, QWORD PTR [rbp-16]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-8], rax
        jmp     .L2
.L3:
        mov     rax, QWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rax+8]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-8], rax
.L2:
        cmp     QWORD PTR [rbp-8], 0
        jne     .L3
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    free
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    free
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    free
        mov     eax, 0
        leave
        ret
