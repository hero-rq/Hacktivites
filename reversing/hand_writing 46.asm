        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     BYTE PTR [rbp-1], -125
        mov     BYTE PTR [rbp-2], -125
        movzx   eax, BYTE PTR [rbp-1]
        shr     al, 5
        mov     BYTE PTR [rbp-3], al
        movzx   eax, BYTE PTR [rbp-2]
        sar     al, 5
        mov     BYTE PTR [rbp-4], al
        movzx   eax, BYTE PTR [rbp-3]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        movsx   eax, BYTE PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
