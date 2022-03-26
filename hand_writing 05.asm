#include <stdio.h>
 
int main()
{
    int num1 = 23;
 
    printf("%d\n", num1 == 22);    
    printf("%d\n", num1 != 78);     
    printf("%d\n", num1 >= 21);    
    printf("%d\n", num1 <= 12);    
 
    return 0;
}

.LC0:
        .string "%d\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 23
        cmp     DWORD PTR [rbp-4], 22
        sete    al
        movzx   eax, al
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        cmp     DWORD PTR [rbp-4], 78
        setne   al
        movzx   eax, al
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        cmp     DWORD PTR [rbp-4], 20
        setg    al
        movzx   eax, al
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        cmp     DWORD PTR [rbp-4], 12
        setle   al
        movzx   eax, al
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
