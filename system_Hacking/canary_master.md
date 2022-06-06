RSI: 0x7fffffffe0e0 --> 0x7fffff0a696e
RDI: 0x0
RBP: 0x7fffffffe0f0 --> 0x555555554700 (<__libc_csu_init>:      push   r15)
RSP: 0x7fffffffe0e0 --> 0x7fffff0a696e
RIP: 0x5555555546e0 (<main+54>: xor    rcx,QWORD PTR fs:0x28)
R8 : 0x7ffff7dced80 --> 0x0
R9 : 0x7ffff7dced80 --> 0x0
R10: 0x2
R11: 0x246
R12: 0x5555555545a0 (<_start>:  xor    ebp,ebp)
R13: 0x7fffffffe1d0 --> 0x1
R14: 0x0
R15: 0x0
EFLAGS: 0x207 (CARRY PARITY adjust zero sign trap INTERRUPT direction overflow)
[-------------------------------------code-------------------------------------]
   0x5555555546d2 <main+40>:    call   0x555555554580 <read@plt>
   0x5555555546d7 <main+45>:    mov    eax,0x0
   0x5555555546dc <main+50>:    mov    rcx,QWORD PTR [rbp-0x8]
=> 0x5555555546e0 <main+54>:    xor    rcx,QWORD PTR fs:0x28
   0x5555555546e9 <main+63>:    je     0x5555555546f0 <main+70>
   0x5555555546eb <main+65>:    call   0x555555554570 <__stack_chk_fail@plt>
   0x5555555546f0 <main+70>:    leave
   0x5555555546f1 <main+71>:    ret
[------------------------------------stack-------------------------------------]
0000| 0x7fffffffe0e0 --> 0x7fffff0a696e
0008| 0x7fffffffe0e8 --> 0xb5fec496402e9a00
0016| 0x7fffffffe0f0 --> 0x555555554700 (<__libc_csu_init>:     push   r15)
0024| 0x7fffffffe0f8 --> 0x7ffff7a03c87 (<__libc_start_main+231>:       mov    edi,eax)
0032| 0x7fffffffe100 --> 0x1
0040| 0x7fffffffe108 --> 0x7fffffffe1d8 --> 0x7fffffffe410 ("/mnt/c/files/canary")
0048| 0x7fffffffe110 --> 0x100008000
0056| 0x7fffffffe118 --> 0x5555555546aa (<main>:        push   rbp)
[------------------------------------------------------------------------------]
Legend: code, data, rodata, value
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
0x00005555555546e0 in main ()
gdb-peda$ quit
hero-rq@LAPTOP-RU2HPB6J:/mnt/c/files$ gdb -q ./canary
Traceback (most recent call last):
  File "/mnt/c/Users/samsung/pwndbg/gdbinit.py", line 24, in <module>
    import pwndbg # isort:skip
  File "/mnt/c/Users/samsung/pwndbg/pwndbg/__init__.py", line 14, in <module>
    import pwndbg.commands.aslr
  File "/mnt/c/Users/samsung/pwndbg/pwndbg/commands/aslr.py", line 21, in <module>
    def aslr(state=None):
  File "/mnt/c/Users/samsung/pwndbg/pwndbg/commands/__init__.py", line 322, in __call__
    return _ArgparsedCommand(self.parser, function)
  File "/mnt/c/Users/samsung/pwndbg/pwndbg/commands/__init__.py", line 291, in __init__
    super(_ArgparsedCommand, self).__init__(function, command_name=command_name, *a, **kw)
  File "/mnt/c/Users/samsung/pwndbg/pwndbg/commands/__init__.py", line 56, in __init__
    raise Exception('Cannot override non-whitelisted built-in command "%s"' % command_name)
Exception: Cannot override non-whitelisted built-in command "aslr"
Reading symbols from ./canary...(no debugging symbols found)...done.
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
gdb-peda$ catch syscall arch_prctl
Catchpoint 1 (syscall 'arch_prctl' [158])
gdb-peda$ run
Starting program: /mnt/c/files/canary
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
[----------------------------------registers-----------------------------------]
RAX: 0xffffffffffffffda
RBX: 0x1
RCX: 0x7ffff7dd4024 (<init_tls+276>:    test   eax,eax)
RDX: 0x7ffff7feee10 --> 0xf
RSI: 0x7ffff7fee4c0 (0x00007ffff7fee4c0)
RDI: 0x1002
RBP: 0x7fffffffe0b0 --> 0x555555554040 --> 0x400000006
RSP: 0x7fffffffdec0 --> 0x0
RIP: 0x7ffff7dd4024 (<init_tls+276>:    test   eax,eax)
R8 : 0x90
R9 : 0x40 ('@')
R10: 0x7ffff7fed998 --> 0x0
R11: 0x206
R12: 0x26fd92aba05
R13: 0x0
R14: 0x7ffff7ffe170 --> 0x555555554000 --> 0x10102464c457f
R15: 0x0
EFLAGS: 0x206 (carry PARITY adjust zero sign trap INTERRUPT direction overflow)
[-------------------------------------code-------------------------------------]
   0x7ffff7dd4019 <init_tls+265>:       mov    eax,0x9e
   0x7ffff7dd401e <init_tls+270>:       mov    QWORD PTR [rsi+0x10],rsi
   0x7ffff7dd4022 <init_tls+274>:       syscall
=> 0x7ffff7dd4024 <init_tls+276>:       test   eax,eax
   0x7ffff7dd4026 <init_tls+278>:       je     0x7ffff7dd4051 <init_tls+321>
   0x7ffff7dd4028 <init_tls+280>:       lea    rbx,[rip+0x22701]        # 0x7ffff7df6730
   0x7ffff7dd402f <init_tls+287>:       lea    rsi,[rip+0x22732]        # 0x7ffff7df6768
   0x7ffff7dd4036 <init_tls+294>:       mov    rdx,rbx
[------------------------------------stack-------------------------------------]
0000| 0x7fffffffdec0 --> 0x0
0008| 0x7fffffffdec8 --> 0x7ffff7dd701f (<dl_main+6591>:        mov    QWORD PTR [rbp-0x1b0],rax)
0016| 0x7fffffffded0 --> 0x0
0024| 0x7fffffffded8 --> 0x0
0032| 0x7fffffffdee0 --> 0x1
0040| 0x7fffffffdee8 --> 0x7ffff7ffe728 --> 0x7ffff7fed000 --> 0x7ffff79e2000 (jg     0x7ffff79e2047)
0048| 0x7fffffffdef0 --> 0x7ffff7ffe100 --> 0x0
0056| 0x7fffffffdef8 --> 0x1
[------------------------------------------------------------------------------]
Legend: code, data, rodata, value
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':

Catchpoint 1 (call to syscall arch_prctl), 0x00007ffff7dd4024 in init_tls () at rtld.c:740
740     rtld.c: No such file or directory.
gdb-peda$ info register $rsi
rsi            0x7ffff7fee4c0   0x7ffff7fee4c0
gdb-peda$ x/gx 0x7ffff7fee4c0+0x28
0x7ffff7fee4e8: 0x0000000000000000
gdb-peda$ watch *(0x7ffff7fee4c0+0x28)
Hardware watchpoint 2: *(0x7ffff7fee4c0+0x28)
gdb-peda$ continue
Continuing.
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':
[----------------------------------registers-----------------------------------]
RAX: 0x0
RBX: 0x1
RCX: 0x7ffff7dd4024 (<init_tls+276>:    test   eax,eax)
RDX: 0x7ffff7feee10 --> 0xf
RSI: 0x7ffff7fee4c0 (0x00007ffff7fee4c0)
RDI: 0x1002
RBP: 0x7fffffffe0b0 --> 0x555555554040 --> 0x400000006
RSP: 0x7fffffffdec0 --> 0x0
RIP: 0x7ffff7dd4024 (<init_tls+276>:    test   eax,eax)
R8 : 0x90
R9 : 0x40 ('@')
R10: 0x7ffff7fed998 --> 0x0
R11: 0x206
R12: 0x26fd92aba05
R13: 0x0
R14: 0x7ffff7ffe170 --> 0x555555554000 --> 0x10102464c457f
R15: 0x0
EFLAGS: 0x206 (carry PARITY adjust zero sign trap INTERRUPT direction overflow)
[-------------------------------------code-------------------------------------]
   0x7ffff7dd4019 <init_tls+265>:       mov    eax,0x9e
   0x7ffff7dd401e <init_tls+270>:       mov    QWORD PTR [rsi+0x10],rsi
   0x7ffff7dd4022 <init_tls+274>:       syscall
=> 0x7ffff7dd4024 <init_tls+276>:       test   eax,eax
   0x7ffff7dd4026 <init_tls+278>:       je     0x7ffff7dd4051 <init_tls+321>
   0x7ffff7dd4028 <init_tls+280>:       lea    rbx,[rip+0x22701]        # 0x7ffff7df6730
   0x7ffff7dd402f <init_tls+287>:       lea    rsi,[rip+0x22732]        # 0x7ffff7df6768
   0x7ffff7dd4036 <init_tls+294>:       mov    rdx,rbx
[------------------------------------stack-------------------------------------]
0000| 0x7fffffffdec0 --> 0x0
0008| 0x7fffffffdec8 --> 0x7ffff7dd701f (<dl_main+6591>:        mov    QWORD PTR [rbp-0x1b0],rax)
0016| 0x7fffffffded0 --> 0x0
0024| 0x7fffffffded8 --> 0x0
0032| 0x7fffffffdee0 --> 0x1
0040| 0x7fffffffdee8 --> 0x7ffff7ffe728 --> 0x7ffff7fed000 --> 0x7ffff79e2000 (jg     0x7ffff79e2047)
0048| 0x7fffffffdef0 --> 0x7ffff7ffe100 --> 0x0
0056| 0x7fffffffdef8 --> 0x1
[------------------------------------------------------------------------------]
Legend: code, data, rodata, value
Python Exception <class 'AttributeError'> module 'pwndbg' has no attribute 'commands':

Catchpoint 1 (returned from syscall arch_prctl), 0x00007ffff7dd4024 in init_tls () at rtld.c:740
740     in rtld.c
