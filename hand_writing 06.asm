#include <stdio.h>

int main()
{
    int num1, num2, num3;   

    num1 = 100;    // 변수에 값 넣기
    num2 = 200;
    num3 = 300;

    printf("%d %d %d\n", num1, num2, num3);    // 변수에 저장된 값을 출력

    return 0;
}

.LC0:
        .string "%d %d %d\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 100
        mov     DWORD PTR [rbp-8], 200
        mov     DWORD PTR [rbp-12], 300
        mov     ecx, DWORD PTR [rbp-12]
        mov     edx, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
