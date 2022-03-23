#include <stdio.h>
 
int main()
{
    unsigned char num1 = 250;    // 250
    unsigned char num2 = 11;     //  11
 
    unsigned char num3, num4;
 
    num3 = num1 << 2;    // num1의 비트 값을 왼쪽으로 2번 이동
    num4 = num2 >> 2;    // num2의 비트 값을 오른쪽으로 2번 이동
 
    printf("%u\n", num3);    // 232
    printf("%u\n", num4);    //   2
 
    return 0;
}

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
