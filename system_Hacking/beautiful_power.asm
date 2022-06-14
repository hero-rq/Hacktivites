.text:0000000000401530 push    rbp
.text:0000000000401531 mov     rbp, rsp
.text:0000000000401534 sub     rsp, 50h
.text:0000000000401538 call    __main
.text:000000000040153D lea     rcx, Format     ; "input 2 data:"
.text:0000000000401544 call    printf
.text:0000000000401549 lea     rdx, [rbp+var_1C]
.text:000000000040154D lea     rax, [rbp+var_18]
.text:0000000000401551 mov     r8, rdx
.text:0000000000401554 mov     rdx, rax
.text:0000000000401557 lea     rcx, aDD        ; "%d %d"
.text:000000000040155E call    scanf
.text:0000000000401563 mov     edx, [rbp+var_18]
.text:0000000000401566 mov     eax, [rbp+var_1C]
.text:0000000000401569 add     eax, edx
.text:000000000040156B mov     [rbp+var_8], eax
.text:000000000040156E mov     edx, [rbp+var_18]
.text:0000000000401571 mov     eax, [rbp+var_1C]
.text:0000000000401574 sub     edx, eax
.text:0000000000401576 mov     eax, edx
.text:0000000000401578 mov     [rbp+var_C], eax
.text:000000000040157B mov     edx, [rbp+var_18]
.text:000000000040157E mov     eax, [rbp+var_1C]
.text:0000000000401581 imul    eax, edx
.text:0000000000401584 mov     [rbp+var_10], eax
.text:0000000000401587 mov     eax, [rbp+var_18]
.text:000000000040158A pxor    xmm0, xmm0
.text:000000000040158E cvtsi2ss xmm0, eax
.text:0000000000401592 mov     eax, [rbp+var_1C]
.text:0000000000401595 pxor    xmm1, xmm1
.text:0000000000401599 cvtsi2ss xmm1, eax
.text:000000000040159D divss   xmm0, xmm1
.text:00000000004015A1 movd    eax, xmm0
.text:00000000004015A5 mov     [rbp+var_14], eax
.text:00000000004015A8 mov     edx, [rbp+var_1C]
.text:00000000004015AB mov     eax, [rbp+var_18]
.text:00000000004015AE cmp     edx, eax
.text:00000000004015B0 jge     short loc_4015BA
