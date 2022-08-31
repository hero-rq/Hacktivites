push   rbp
mov    rbp,rsp
mov    rax,QWORD PTR [rip+0x2009ab]        # 0x201010 <data>
mov    rsi,rax
mov    edi,0x4005a1
lea    rdi,[rip+0xa2]        # 0x711
mov    eax,0x0
call   0x530 <printf@plt>
mov    eax,0x0
pop    rbp
ret
