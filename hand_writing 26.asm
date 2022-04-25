   0x0000000000000a6c <+0>:     push   rbp
   0x0000000000000a6d <+1>:     mov    rbp,rsp
   0x0000000000000a70 <+4>:     sub    rsp,0x420
   0x0000000000000a77 <+11>:    mov    rax,QWORD PTR fs:0x28
   0x0000000000000a80 <+20>:    mov    QWORD PTR [rbp-0x8],rax
   0x0000000000000a84 <+24>:    xor    eax,eax
   0x0000000000000a86 <+26>:    mov    eax,0x0
   0x0000000000000a8b <+31>:    call   0x998 <init>
   0x0000000000000a90 <+36>:    mov    eax,0x0
   0x0000000000000a95 <+41>:    call   0x9f6 <read_file>
   0x0000000000000a9a <+46>:    mov    rax,QWORD PTR [rip+0x20156f]        # 0x202010 <stdout@@GLIBC_2.2.5>
   0x0000000000000aa1 <+53>:    mov    rsi,rax
   0x0000000000000aa4 <+56>:    lea    rdi,[rip+0x135]        # 0xbe0
   0x0000000000000aab <+63>:    mov    eax,0x0
   0x0000000000000ab0 <+68>:    call   0x7e0 <printf@plt>
   0x0000000000000ab5 <+73>:    lea    rdi,[rip+0x130]        # 0xbec
   0x0000000000000abc <+80>:    mov    eax,0x0
   0x0000000000000ac1 <+85>:    call   0x7e0 <printf@plt>
   0x0000000000000ac6 <+90>:    lea    rax,[rbp-0x41c]
   0x0000000000000acd <+97>:    mov    rsi,rax
   0x0000000000000ad0 <+100>:   lea    rdi,[rip+0x118]        # 0xbef
   0x0000000000000ad7 <+107>:   mov    eax,0x0
   0x0000000000000adc <+112>:   call   0x850 <__isoc99_scanf@plt>
   0x0000000000000ae1 <+117>:   mov    eax,DWORD PTR [rbp-0x41c]
   0x0000000000000ae7 <+123>:   cmp    eax,0x1
   0x0000000000000aea <+126>:   je     0xaee <main+130>
   0x0000000000000aec <+128>:   jmp    0xb36 <main+202>
   0x0000000000000aee <+130>:   lea    rdi,[rip+0xfd]        # 0xbf2
   0x0000000000000af5 <+137>:   mov    eax,0x0
   0x0000000000000afa <+142>:   call   0x7e0 <printf@plt>
   0x0000000000000aff <+147>:   lea    rax,[rbp-0x418]
   0x0000000000000b06 <+154>:   mov    rsi,rax
   0x0000000000000b09 <+157>:   lea    rdi,[rip+0xe9]        # 0xbf9
   0x0000000000000b10 <+164>:   mov    eax,0x0
   0x0000000000000b15 <+169>:   call   0x850 <__isoc99_scanf@plt>
   0x0000000000000b1a <+174>:   mov    rax,QWORD PTR [rbp-0x418]
   0x0000000000000b21 <+181>:   mov    rsi,rax
   0x0000000000000b24 <+184>:   lea    rdi,[rip+0xd2]        # 0xbfd
   0x0000000000000b2b <+191>:   mov    eax,0x0
   0x0000000000000b30 <+196>:   call   0x7e0 <printf@plt>
   0x0000000000000b35 <+201>:   nop
   0x0000000000000b36 <+202>:   jmp    0xab5 <main+73>
