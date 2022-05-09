        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     BYTE PTR [rbp-1], 98
        mov     BYTE PTR [rbp-2], 98
        movzx   eax, BYTE PTR [rbp-1]
        add     eax, 1
        mov     BYTE PTR [rbp-1], al
        movzx   eax, BYTE PTR [rbp-2]
        sub     eax, 1
        mov     BYTE PTR [rbp-2], al
        movsx   edx, BYTE PTR [rbp-2]
        movsx   eax, BYTE PTR [rbp-1]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
