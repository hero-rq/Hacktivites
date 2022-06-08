main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     BYTE PTR [rbp-1], 0
        or      BYTE PTR [rbp-1], 1
        or      BYTE PTR [rbp-1], 2
        or      BYTE PTR [rbp-1], 4
        movzx   eax, BYTE PTR [rbp-1]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        movzx   eax, BYTE PTR [rbp-1]
        and     eax, 1
        test    eax, eax
        je      .L2
        mov     edi, OFFSET FLAT:.LC1
        call    puts
        jmp     .L3
.L2:
        mov     edi, OFFSET FLAT:.LC2
        call    puts
.L3:
        movzx   eax, BYTE PTR [rbp-1]
        and     eax, 2
        test    eax, eax
        je      .L4
        mov     edi, OFFSET FLAT:.LC3
        call    puts
        jmp     .L5
.L4:
        mov     edi, OFFSET FLAT:.LC4
        call    puts
.L5:
        movzx   eax, BYTE PTR [rbp-1]
        and     eax, 4
        test    eax, eax
        je      .L6
        mov     edi, OFFSET FLAT:.LC5
        call    puts
        jmp     .L7
.L6:
        mov     edi, OFFSET FLAT:.LC6
        call    puts
.L7:
        mov     eax, 0
        leave
        ret
