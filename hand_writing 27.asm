        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        lea     rdx, [rbp-80]
        mov     eax, 0
        mov     ecx, 10
        mov     rdi, rdx
        rep stosq
        mov     DWORD PTR [rbp-80], 91
        mov     DWORD PTR [rbp-76], 89
        mov     DWORD PTR [rbp-72], 64
        mov     DWORD PTR [rbp-68], 453
        mov     DWORD PTR [rbp-60], 37
        mov     DWORD PTR [rbp-56], 23
        mov     DWORD PTR [rbp-52], 25
        mov     DWORD PTR [rbp-48], 74
        mov     DWORD PTR [rbp-40], 23
        mov     DWORD PTR [rbp-36], 110
        mov     DWORD PTR [rbp-32], 23
        mov     DWORD PTR [rbp-28], 132
        mov     DWORD PTR [rbp-20], 21
        mov     DWORD PTR [rbp-16], 38
        mov     DWORD PTR [rbp-12], 105
        mov     DWORD PTR [rbp-8], 201
        mov     eax, DWORD PTR [rbp-80]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-56]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-48]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-36]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
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
    int numArr[4][5] = {    // 세로 크기 3, 가로 크기 4인 int형 2차원 배열 선언
        { 91, 89, 64, 453 },
        { 37, 23, 25, 74 },
        { 23, 110, 23, 132 },
        { 21, 38,  105, 201}
    };
                       
    printf("%d\n", numArr[0][0]);    
    printf("%d\n", numArr[1][1]);   
    printf("%d\n", numArr[1][3]);    
    printf("%d\n", numArr[2][1]);    
    printf("%d\n", numArr[3][4]); 

    return 0;
}       
