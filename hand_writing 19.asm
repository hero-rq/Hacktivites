        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     esi, 8
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        lea     rax, [rbp-16]
        mov     DWORD PTR [rax], 1918985570
        mov     BYTE PTR [rax+4], 0
        movzx   eax, WORD PTR [rbp-16]
        cwde
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        movss   xmm0, DWORD PTR [rbp-16]
        cvtss2sd        xmm0, xmm0
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 1
        call    printf
        lea     rax, [rbp-16]
        mov     rdi, rax
        call    puts
        mov     eax, 0
        leave
        ret
