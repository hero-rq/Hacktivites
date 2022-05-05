   0x00000000004007c6 <+0>:     push   rbp
   0x00000000004007c7 <+1>:     mov    rbp,rsp
   0x00000000004007ca <+4>:     sub    rsp,0xa0
   0x00000000004007d1 <+11>:    mov    rax,QWORD PTR fs:0x28
   0x00000000004007da <+20>:    mov    QWORD PTR [rbp-0x8],rax
   0x00000000004007de <+24>:    xor    eax,eax
   0x00000000004007e0 <+26>:    lea    rdx,[rbp-0x90]
   0x00000000004007e7 <+33>:    mov    eax,0x0
   0x00000000004007ec <+38>:    mov    ecx,0x10
   0x00000000004007f1 <+43>:    mov    rdi,rdx
   0x00000000004007f4 <+46>:    rep stos QWORD PTR es:[rdi],rax
   0x00000000004007f7 <+49>:    mov    QWORD PTR [rbp-0xa0],0x0
   0x0000000000400802 <+60>:    mov    edi,0x400974
   0x0000000000400807 <+65>:    call   0x400620 <puts@plt>
   0x000000000040080c <+70>:    mov    esi,0x400992
   0x0000000000400811 <+75>:    mov    edi,0x400994
   0x0000000000400816 <+80>:    call   0x4006a0 <fopen@plt>
   0x000000000040081b <+85>:    mov    QWORD PTR [rbp-0x98],rax
   0x0000000000400822 <+92>:    mov    rax,QWORD PTR [rbp-0x98]
   0x0000000000400829 <+99>:    mov    edx,0x2
   0x000000000040082e <+104>:   mov    esi,0x0
   0x0000000000400833 <+109>:   mov    rdi,rax
   0x0000000000400836 <+112>:   call   0x400690 <fseek@plt>
   0x000000000040083b <+117>:   mov    rax,QWORD PTR [rbp-0x98]
   0x0000000000400842 <+124>:   mov    rdi,rax
   0x0000000000400845 <+127>:   call   0x400680 <ftell@plt>
   0x000000000040084a <+132>:   mov    QWORD PTR [rbp-0xa0],rax
   0x0000000000400851 <+139>:   mov    rax,QWORD PTR [rbp-0x98]
   0x0000000000400858 <+146>:   mov    edx,0x0
   0x000000000040085d <+151>:   mov    esi,0x0
   0x0000000000400862 <+156>:   mov    rdi,rax
   0x0000000000400865 <+159>:   call   0x400690 <fseek@plt>
   0x000000000040086a <+164>:   mov    rcx,QWORD PTR [rbp-0x98]
   0x0000000000400871 <+171>:   mov    rdx,QWORD PTR [rbp-0xa0]
   0x0000000000400878 <+178>:   lea    rax,[rbp-0x90]
   0x000000000040087f <+185>:   mov    esi,0x1
   0x0000000000400884 <+190>:   mov    rdi,rax
   0x0000000000400887 <+193>:   call   0x400630 <fread@plt>
   0x000000000040088c <+198>:   mov    rax,QWORD PTR [rbp-0x98]
   0x0000000000400893 <+205>:   mov    rdi,rax
   0x0000000000400896 <+208>:   call   0x400640 <fclose@plt>
   0x000000000040089b <+213>:   mov    edi,0x40099a
   0x00000000004008a0 <+218>:   mov    eax,0x0
   0x00000000004008a5 <+223>:   call   0x400660 <printf@plt>
   0x00000000004008aa <+228>:   mov    rcx,QWORD PTR [rip+0x2007c7]        # 0x601078 <stdout@@GLIBC_2.2.5>
   0x00000000004008b1 <+235>:   mov    rdx,QWORD PTR [rbp-0xa0]
   0x00000000004008b8 <+242>:   lea    rax,[rbp-0x90]
   0x00000000004008bf <+249>:   mov    esi,0x1
   0x00000000004008c4 <+254>:   mov    rdi,rax
   0x00000000004008c7 <+257>:   call   0x4006b0 <fwrite@plt>
   0x00000000004008cc <+262>:   mov    eax,0x0
   0x00000000004008d1 <+267>:   mov    rsi,QWORD PTR [rbp-0x8]
   0x00000000004008d5 <+271>:   xor    rsi,QWORD PTR fs:0x28
   0x00000000004008de <+280>:   je     0x4008e5 <main+287>
   0x00000000004008e0 <+282>:   call   0x400650 <__stack_chk_fail@plt>
   0x00000000004008e5 <+287>:   leave
   0x00000000004008e6 <+288>:   ret
