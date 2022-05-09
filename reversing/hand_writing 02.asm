.LC0:
        .string "%u\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     BYTE PTR [rbp-1], -6
        mov     BYTE PTR [rbp-2], 11
        movzx   eax, BYTE PTR [rbp-1]
        sal     eax, 2
        mov     BYTE PTR [rbp-3], al
        movzx   eax, BYTE PTR [rbp-2]
        shr     al, 2
        mov     BYTE PTR [rbp-4], al
        movzx   eax, BYTE PTR [rbp-3]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        movzx   eax, BYTE PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
