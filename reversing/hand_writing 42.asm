main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, 0
        call    time
        mov     edi, eax
        call    srand
        mov     DWORD PTR [rbp-4], 0
.L2:
        call    rand
        mov     ecx, eax
        mov     edx, 1717986919
        mov     eax, ecx
        imul    edx
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        add     eax, eax
        sub     ecx, eax
        mov     eax, ecx
        mov     DWORD PTR [rbp-4], eax
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        cmp     DWORD PTR [rbp-4], 3
        jne     .L2
        mov     eax, 0
        leave
        ret
