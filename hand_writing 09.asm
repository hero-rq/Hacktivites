0x00000000004006f7 <+0>:     push   rbp
   0x00000000004006f8 <+1>:     mov    rbp,rsp
   0x00000000004006fb <+4>:     sub    rsp,0x40
   0x00000000004006ff <+8>:     mov    rax,QWORD PTR fs:0x28
   0x0000000000400708 <+17>:    mov    QWORD PTR [rbp-0x8],rax
   0x000000000040070c <+21>:    xor    eax,eax
   0x000000000040070e <+23>:    mov    rax,QWORD PTR [rip+0x20095b]      
   0x0000000000400715 <+30>:    mov    ecx,0x0
   0x000000000040071a <+35>:    mov    edx,0x2
   0x000000000040071f <+40>:    mov    esi,0x0
   0x0000000000400724 <+45>:    mov    rdi,rax
   0x0000000000400727 <+48>:    call   0x400600 <setvbuf@plt>
   0x000000000040072c <+53>:    mov    rax,QWORD PTR [rip+0x20092d]    
   0x0000000000400733 <+60>:    mov    ecx,0x0
   0x0000000000400738 <+65>:    mov    edx,0x2
   0x000000000040073d <+70>:    mov    esi,0x0
   0x0000000000400742 <+75>:    mov    rdi,rax
   0x0000000000400745 <+78>:    call   0x400600 <setvbuf@plt>
   0x000000000040074a <+83>:    mov    edi,0x40087c
   0x000000000040074f <+88>:    mov    eax,0x0
   0x0000000000400754 <+93>:    call   0x4005d0 <system@plt>
   0x0000000000400759 <+98>:    mov    edi,0x40088d
   0x000000000040075e <+103>:   call   0x4005b0 <puts@plt>
   0x0000000000400763 <+108>:   mov    edi,0x40089d
   0x0000000000400768 <+113>:   mov    eax,0x0
   0x000000000040076d <+118>:   call   0x4005e0 <printf@plt>
   0x0000000000400772 <+123>:   lea    rax,[rbp-0x40]
   0x0000000000400776 <+127>:   mov    edx,0x100
   0x000000000040077b <+132>:   mov    rsi,rax
   0x000000000040077e <+135>:   mov    edi,0x0
   0x0000000000400783 <+140>:   call   0x4005f0 <read@plt>
   0x0000000000400788 <+145>:   lea    rax,[rbp-0x40]
   0x000000000040078c <+149>:   mov    rsi,rax
   0x000000000040078f <+152>:   mov    edi,0x4008a3
   0x0000000000400794 <+157>:   mov    eax,0x0
   0x0000000000400799 <+162>:   call   0x4005e0 <printf@plt>
   0x000000000040079e <+167>:   mov    edi,0x4008ac
   0x00000000004007a3 <+172>:   call   0x4005b0 <puts@plt>
   0x00000000004007a8 <+177>:   mov    edi,0x40089d
   0x00000000004007ad <+182>:   mov    eax,0x0
   0x00000000004007b2 <+187>:   call   0x4005e0 <printf@plt>
   0x00000000004007b7 <+192>:   lea    rax,[rbp-0x40]
   0x00000000004007bb <+196>:   mov    edx,0x100
   0x00000000004007c0 <+201>:   mov    rsi,rax
   0x00000000004007c3 <+204>:   mov    edi,0x0
   0x00000000004007c8 <+209>:   call   0x4005f0 <read@plt>
   0x00000000004007cd <+214>:   mov    eax,0x0
   0x00000000004007d2 <+219>:   mov    rcx,QWORD PTR [rbp-0x8]
   0x00000000004007d6 <+223>:   xor    rcx,QWORD PTR fs:0x28
   0x00000000004007df <+232>:   je     0x4007e6 <main+239>
   0x00000000004007e1 <+234>:   call   0x4005c0 <__stack_chk_fail@plt>
   0x00000000004007e6 <+239>:   leave
   0x00000000004007e7 <+240>:   ret
