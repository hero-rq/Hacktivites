pwndbg> nearpc 0x400611
   0x4005fe <main+25>            lea    rax, [rbp - 0x30]
   0x400602 <main+29>            mov    rsi, rax
   0x400605 <main+32>            lea    rdi, [rip + 0xa8] #0x4006b4
   0x40060c <main+39>            mov    eax, 0
 ► 0x400611 <main+44>            call   __isoc99_scanf@plt <__isoc99_scanf@plt>
   
pwndbg> x/s 0x4006b4
0x4006b4:       "%s"
