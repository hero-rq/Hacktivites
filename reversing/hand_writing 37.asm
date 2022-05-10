main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        lea     rax, [rbp-8]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    scanf_s
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        lea     rax, [rbp-13]
        mov     edx, 1
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    scanf_s
        mov     edi, OFFSET FLAT:.LC4
        mov     eax, 0
        call    printf
        lea     rax, [rbp-12]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    scanf_s
        movzx   eax, BYTE PTR [rbp-13]
        cmp     al, 43
        jne     .L2
        mov     edx, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-12]
        add     eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC5
        mov     eax, 0
        call    printf
.L2:
        movzx   eax, BYTE PTR [rbp-13]
        cmp     al, 45
        jne     .L3
        mov     edx, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-12]
        sub     edx, eax
        mov     eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC6
        mov     eax, 0
        call    printf
.L3:
        movzx   eax, BYTE PTR [rbp-13]
        cmp     al, 42
        jne     .L4
        mov     edx, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-12]
        imul    eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC7
        mov     eax, 0
        call    printf
.L4:
        movzx   eax, BYTE PTR [rbp-13]
        cmp     al, 47
        jne     .L5
        mov     eax, DWORD PTR [rbp-12]
        test    eax, eax
        je      .L6
        mov     eax, DWORD PTR [rbp-8]
        mov     esi, DWORD PTR [rbp-12]
        cdq
        idiv    esi
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC8
        mov     eax, 0
        call    printf
        jmp     .L5
.L6:
        mov     edi, OFFSET FLAT:.LC9
        call    puts
.L5:
        movzx   eax, BYTE PTR [rbp-13]
        cmp     al, 37
        jne     .L7
        mov     eax, DWORD PTR [rbp-12]
        test    eax, eax
        je      .L8
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     DWORD PTR [rbp-4], edx
        mov     edx, DWORD PTR [rbp-12]
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC10
        mov     eax, 0
        call    printf
        jmp     .L7
.L8:
        mov     edi, OFFSET FLAT:.LC11
        call    puts
.L7:
        mov     eax, 0
        leave
        ret
