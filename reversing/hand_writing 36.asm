sum:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        cmp     DWORD PTR [rbp-4], 100
        jne     .L2
        mov     eax, 100
        jmp     .L3
.L2:
        mov     eax, DWORD PTR [rbp-4]
        add     eax, 1
        mov     edi, eax
        call    sum
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
.L3:
        leave
        ret
.LC0:
        .string "%d\n"
main:
        push    rbp
        mov     rbp, rsp
        mov     edi, 1
        call    sum
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        pop     rbp
        ret
