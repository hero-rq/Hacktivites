   0x00000000004011b6 <+0>:     endbr64
   0x00000000004011ba <+4>:     push   rbp
   0x00000000004011bb <+5>:     mov    rbp,rsp
   0x00000000004011be <+8>:     sub    rsp,0x70
   0x00000000004011c2 <+12>:    mov    DWORD PTR [rbp-0x64],edi
   0x00000000004011c5 <+15>:    mov    QWORD PTR [rbp-0x70],rsi
   0x00000000004011c9 <+19>:    mov    rax,QWORD PTR fs:0x28
   0x00000000004011d2 <+28>:    mov    QWORD PTR [rbp-0x8],rax
   0x00000000004011d6 <+32>:    xor    eax,eax
   0x00000000004011d8 <+34>:    cmp    DWORD PTR [rbp-0x64],0x1
   0x00000000004011dc <+38>:    jne    0x4011f4 <main+62>
   0x00000000004011de <+40>:    lea    rsi,[rip+0xe23]        # 0x402008
   0x00000000004011e5 <+47>:    mov    edi,0x1
   0x00000000004011ea <+52>:    mov    eax,0x0
   0x00000000004011ef <+57>:    call   0x4010b0 <errx@plt>
   0x00000000004011f4 <+62>:    mov    DWORD PTR [rbp-0x54],0x0
   0x00000000004011fb <+69>:    mov    rax,QWORD PTR [rbp-0x70]
   0x00000000004011ff <+73>:    add    rax,0x8
   0x0000000000401203 <+77>:    mov    rdx,QWORD PTR [rax]
   0x0000000000401206 <+80>:    lea    rax,[rbp-0x50]
   0x000000000040120a <+84>:    mov    rsi,rdx
   0x000000000040120d <+87>:    mov    rdi,rax
   0x0000000000401210 <+90>:    call   0x401080 <strcpy@plt>
   0x0000000000401215 <+95>:    mov    eax,DWORD PTR [rbp-0x54]
=> 0x0000000000401218 <+98>:    cmp    eax,0x61626364
   0x000000000040121d <+103>:   jne    0x40122d <main+119>
   0x000000000040121f <+105>:   lea    rdi,[rip+0xe02]        # 0x402028
   0x0000000000401226 <+112>:   call   0x401090 <puts@plt>
---Type <return> to continue, or q <return> to quit---
   0x000000000040122b <+117>:   jmp    0x401243 <main+141>
   0x000000000040122d <+119>:   mov    eax,DWORD PTR [rbp-0x54]
   0x0000000000401230 <+122>:   mov    esi,eax
   0x0000000000401232 <+124>:   lea    rdi,[rip+0xe26]        # 0x40205f
   0x0000000000401239 <+131>:   mov    eax,0x0
   0x000000000040123e <+136>:   call   0x4010c0 <printf@plt>
   0x0000000000401243 <+141>:   mov    eax,0x0
   0x0000000000401248 <+146>:   mov    rcx,QWORD PTR [rbp-0x8]
   0x000000000040124c <+150>:   xor    rcx,QWORD PTR fs:0x28
   0x0000000000401255 <+159>:   je     0x40125c <main+166>
   0x0000000000401257 <+161>:   call   0x4010a0 <__stack_chk_fail@plt>
   0x000000000040125c <+166>:   leave
   0x000000000040125d <+167>:   ret
