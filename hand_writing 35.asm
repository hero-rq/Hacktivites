        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        movabs  rax, 3256999926192812082
        mov     QWORD PTR [rbp-48], rax
        movabs  rax, 3761132643238031409
        mov     QWORD PTR [rbp-40], rax
        mov     QWORD PTR [rbp-32], 3552570
        mov     DWORD PTR [rbp-24], 0
        mov     WORD PTR [rbp-20], 0
        lea     rax, [rbp-48]
        mov     esi, OFFSET FLAT:.LC0
        mov     rdi, rax
        call    strtok
        mov     QWORD PTR [rbp-8], rax
        jmp     .L2
.L3:
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    puts
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, 0
        call    strtok
        mov     QWORD PTR [rbp-8], rax
.L2:
        cmp     QWORD PTR [rbp-8], 0
        jne     .L3
        mov     eax, 0
        leave
        ret
