        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], OFFSET FLAT:.LC0
        mov     rax, QWORD PTR [rbp-8]
        mov     edx, 16
        mov     esi, 0
        mov     rdi, rax
        call    strtol
        mov     DWORD PTR [rbp-12], eax
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-12]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
