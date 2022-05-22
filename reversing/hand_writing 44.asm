main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        lea     rcx, [rbp-12]
        lea     rdx, [rbp-8]
        lea     rax, [rbp-4]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    __isoc99_scanf
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-8]
        add     eax, edx
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     eax, edx
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     esi, edx
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     eax, edx
        add     eax, esi
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     eax, edx
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-8]
        imul    eax, edx
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     eax, edx
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     esi, edx
        mov     eax, DWORD PTR [rbp-8]
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     eax, edx
        imul    eax, esi
        mov     ecx, DWORD PTR [rbp-12]
        cdq
        idiv    ecx
        mov     eax, edx
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
