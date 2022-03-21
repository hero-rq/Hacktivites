#include <stdio.h>

unsigned long long factorial(unsigned int n) {
  unsigned long long res = 1;
  for (int i = 1; i <= n; i++) {
    res *= i;
  }
  return res;
}

int main() {
  unsigned int n;
  unsigned int res;
  printf("Input integer n: ");
  scanf("%d", &n);
  if (n >= 50) {
    fprintf(stderr, "Input is too large");
    return -1;
  }
  res = factorial(n);
  printf("Factorial of N: %u\n", res);
}

//handalay
factorial:
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        mov     QWORD PTR [rbp-8], 1
        mov     DWORD PTR [rbp-12], 1
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-12]
        cdqe
        mov     rdx, QWORD PTR [rbp-8]
        imul    rax, rdx
        mov     QWORD PTR [rbp-8], rax
        add     DWORD PTR [rbp-12], 1
.L2:
        mov     eax, DWORD PTR [rbp-12]
        cmp     eax, DWORD PTR [rbp-20]
        jbe     .L3
        mov     rax, QWORD PTR [rbp-8]
        pop     rbp
        ret
.LC0:
        .string "Input integer n: "
.LC1:
        .string "%d"
.LC2:
        .string "Input is too large"
.LC3:
        .string "Factorial of N: %u\n"
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
        call    __isoc99_scanf
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, 49
        jbe     .L6
        mov     rax, QWORD PTR stderr[rip]
        mov     rcx, rax
        mov     edx, 18
        mov     esi, 1
        mov     edi, OFFSET FLAT:.LC2
        call    fwrite
        mov     eax, -1
        jmp     .L7
.L6:
        mov     eax, DWORD PTR [rbp-8]
        mov     edi, eax
        call    factorial
        mov     DWORD PTR [rbp-4], eax
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 0
        call    printf
        mov     eax, 0
.L7:
        leave
        ret
