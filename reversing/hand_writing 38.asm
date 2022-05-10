main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        lea     rax, [rbp-20]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-20]
        cdqe
        sal     rax, 2
        mov     rdi, rax
        call    malloc
        mov     QWORD PTR [rbp-16], rax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-16]
        add     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rdx], eax
        add     DWORD PTR [rbp-4], 1
.L2:
        mov     eax, DWORD PTR [rbp-20]
        cmp     DWORD PTR [rbp-4], eax
        jl      .L3
        mov     DWORD PTR [rbp-8], 0
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-8]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        add     DWORD PTR [rbp-8], 1
.L4:
        mov     eax, DWORD PTR [rbp-20]
        cmp     DWORD PTR [rbp-8], eax
        jl      .L5
        mov     rax, QWORD PTR [rbp-16]
        mov     rdi, rax
        call    free
        mov     eax, 0
        leave
        ret
