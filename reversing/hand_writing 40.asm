main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 5
        cmp     DWORD PTR [rbp-4], 0
        je      .L2
        mov     eax, 100
        jmp     .L3
.L2:
        mov     eax, 200
.L3:
        mov     DWORD PTR [rbp-8], eax
        mov     eax, DWORD PTR [rbp-8]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
        
        
                
#include <stdio.h> 

int main()
{
    int num1 = 25;
    int num2;
 
    num2 = num1 ? 100 : 200;   
 
    printf("%d\n", num2);    
 
    return 0;
}        
