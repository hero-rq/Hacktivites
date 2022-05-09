from pwn import *
import base64

r = remote('123.25.26.27', 5639)

r.recvuntil('injection: ')
data = base64.b64decode(r.recvuntil('\n').decode().strip())
iv, data = data[:16], data[16:]

iv = bytearray(iv)

iv[1] ^= ord('f') ^ ord('l')
iv[2] ^= ord('a') ^ ord('g')

r.recvuntil('Write your answer: ')
r.sendline(base64.b64encode(iv + data))

r.interactive()
