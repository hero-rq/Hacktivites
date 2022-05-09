        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:.LC1
        call    fopen
        mov     QWORD PTR [rbp-8], rax
        mov     rax, QWORD PTR [rbp-8]
        mov     edx, 2
        mov     esi, 0
        mov     rdi, rax
        call    fseek
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    ftell
        mov     DWORD PTR [rbp-12], eax
        mov     eax, DWORD PTR [rbp-12]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    fclose
        mov     eax, 0
        leave
        ret
