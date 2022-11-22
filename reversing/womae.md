
---Type <return> to continue, or q <return> to quit---
   0x0000000000400a6f <+108>:   jmp    0x400a99 <main+150>
   0x0000000000400a71 <+110>:   mov    $0x0,%eax
   0x0000000000400a76 <+115>:   callq  0x4009b7 <help>
   0x0000000000400a7b <+120>:   jmp    0x400a99 <main+150>
   0x0000000000400a7d <+122>:   mov    $0x400da8,%edi
   0x0000000000400a82 <+127>:   callq  0x400670 <puts@plt>
   0x0000000000400a87 <+132>:   mov    $0x0,%eax
   0x0000000000400a8c <+137>:   leaveq
   0x0000000000400a8d <+138>:   retq
   0x0000000000400a8e <+139>:   mov    $0x400dac,%edi
   0x0000000000400a93 <+144>:   callq  0x400670 <puts@plt>
   0x0000000000400a98 <+149>:   nop
   0x0000000000400a99 <+150>:   jmpq   0x400a12 <main+15>
End of assembler dump.
(gdb) set disassembly-flavor intel
(gdb) disas main
Dump of assembler code for function main:
   0x0000000000400a03 <+0>:     push   rbp
   0x0000000000400a04 <+1>:     mov    rbp,rsp
   0x0000000000400a07 <+4>:     sub    rsp,0x20
   0x0000000000400a0b <+8>:     mov    DWORD PTR [rbp-0x14],edi
   0x0000000000400a0e <+11>:    mov    QWORD PTR [rbp-0x20],rsi
   0x0000000000400a12 <+15>:    mov    edi,0x400d77
   0x0000000000400a17 <+20>:    call   0x400670 <puts@plt>
   0x0000000000400a1c <+25>:    mov    edi,0x400d87
   0x0000000000400a21 <+30>:    call   0x400670 <puts@plt>
   0x0000000000400a26 <+35>:    mov    edi,0x400d95
   0x0000000000400a2b <+40>:    call   0x400670 <puts@plt>
   0x0000000000400a30 <+45>:    mov    edi,0x400d9d
   0x0000000000400a35 <+50>:    call   0x400670 <puts@plt>
   0x0000000000400a3a <+55>:    mov    eax,0x400da5
   0x0000000000400a3f <+60>:    lea    rdx,[rbp-0x4]
   0x0000000000400a43 <+64>:    mov    rsi,rdx
   0x0000000000400a46 <+67>:    mov    rdi,rax
   0x0000000000400a49 <+70>:    mov    eax,0x0
   0x0000000000400a4e <+75>:    call   0x400700 <__isoc99_scanf@plt>
   0x0000000000400a53 <+80>:    mov    eax,DWORD PTR [rbp-0x4]
   0x0000000000400a56 <+83>:    cmp    eax,0x2
   0x0000000000400a59 <+86>:    je     0x400a71 <main+110>
   0x0000000000400a5b <+88>:    cmp    eax,0x3
   0x0000000000400a5e <+91>:    je     0x400a7d <main+122>
   0x0000000000400a60 <+93>:    cmp    eax,0x1
   0x0000000000400a63 <+96>:    jne    0x400a8e <main+139>
   0x0000000000400a65 <+98>:    mov    eax,0x0
   0x0000000000400a6a <+103>:   call   0x400804 <play>
---Type <return> to continue, or q <return> to quit---
   0x0000000000400a6f <+108>:   jmp    0x400a99 <main+150>
   0x0000000000400a71 <+110>:   mov    eax,0x0
   0x0000000000400a76 <+115>:   call   0x4009b7 <help>
   0x0000000000400a7b <+120>:   jmp    0x400a99 <main+150>
   0x0000000000400a7d <+122>:   mov    edi,0x400da8
   0x0000000000400a82 <+127>:   call   0x400670 <puts@plt>
   0x0000000000400a87 <+132>:   mov    eax,0x0
   0x0000000000400a8c <+137>:   leave
   0x0000000000400a8d <+138>:   ret
   0x0000000000400a8e <+139>:   mov    edi,0x400dac
   0x0000000000400a93 <+144>:   call   0x400670 <puts@plt>
   0x0000000000400a98 <+149>:   nop
   0x0000000000400a99 <+150>:   jmp    0x400a12 <main+15>
End of assembler dump.
(gdb) disas play
Dump of assembler code for function play:
   0x0000000000400804 <+0>:     push   rbp
   0x0000000000400805 <+1>:     mov    rbp,rsp
   0x0000000000400808 <+4>:     sub    rsp,0x30
   0x000000000040080c <+8>:     mov    rax,QWORD PTR fs:0x28
   0x0000000000400815 <+17>:    mov    QWORD PTR [rbp-0x8],rax
   0x0000000000400819 <+21>:    xor    eax,eax
   0x000000000040081b <+23>:    mov    eax,0x400b90
   0x0000000000400820 <+28>:    mov    rdi,rax
   0x0000000000400823 <+31>:    mov    eax,0x0
   0x0000000000400828 <+36>:    call   0x4006a0 <printf@plt>
   0x000000000040082d <+41>:    mov    rax,QWORD PTR [rip+0x20183c]        # 0x602070 <stdout@@GLIBC_2.2.5>
   0x0000000000400834 <+48>:    mov    rdi,rax
   0x0000000000400837 <+51>:    call   0x4006e0 <fflush@plt>
   0x000000000040083c <+56>:    mov    edx,0x6
   0x0000000000400841 <+61>:    mov    esi,0x602088
   0x0000000000400846 <+66>:    mov    edi,0x0
   0x000000000040084b <+71>:    mov    eax,0x0
   0x0000000000400850 <+76>:    call   0x4006c0 <read@plt>
   0x0000000000400855 <+81>:    mov    DWORD PTR [rbp-0x18],eax
   0x0000000000400858 <+84>:    mov    edi,0x400bad
   0x000000000040085d <+89>:    call   0x400670 <puts@plt>
   0x0000000000400862 <+94>:    mov    esi,0x0
   0x0000000000400867 <+99>:    mov    edi,0x400bba
   0x000000000040086c <+104>:   mov    eax,0x0
   0x0000000000400871 <+109>:   call   0x4006f0 <open@plt>
   0x0000000000400876 <+114>:   mov    DWORD PTR [rbp-0x14],eax
   0x0000000000400879 <+117>:   cmp    DWORD PTR [rbp-0x14],0xffffffff
   0x000000000040087d <+121>:   jne    0x400893 <play+143>
---Type <return> to continue, or q <return> to quit---
   0x000000000040087f <+123>:   mov    edi,0x400bc7
   0x0000000000400884 <+128>:   call   0x400670 <puts@plt>
   0x0000000000400889 <+133>:   mov    edi,0xffffffff
   0x000000000040088e <+138>:   call   0x400710 <exit@plt>
   0x0000000000400893 <+143>:   lea    rcx,[rbp-0x10]
   0x0000000000400897 <+147>:   mov    eax,DWORD PTR [rbp-0x14]
   0x000000000040089a <+150>:   mov    edx,0x6
   0x000000000040089f <+155>:   mov    rsi,rcx
   0x00000000004008a2 <+158>:   mov    edi,eax
   0x00000000004008a4 <+160>:   mov    eax,0x0
   0x00000000004008a9 <+165>:   call   0x4006c0 <read@plt>
   0x00000000004008ae <+170>:   cmp    eax,0x6
   0x00000000004008b1 <+173>:   je     0x4008c7 <play+195>
   0x00000000004008b3 <+175>:   mov    edi,0x400bd9
   0x00000000004008b8 <+180>:   call   0x400670 <puts@plt>
