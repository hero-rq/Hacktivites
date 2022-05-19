import hashlib
from pwn import *
from Crypto.Cipher import AES

p = remote("host1.dreamhack.games", 18387)

p.sendlineafter('>> ', '1')
p.sendlineafter('>> ', '1')

aes_key = hashlib.md5("1").digest()
c = AES.new(aes_key, AES.MODE_ECB)

p.recvline()
a = c.decrypt(p.recvline().split(' ')[-1][:-1].decode("hex"))
b = c.decrypt(p.recvline().split(' ')[-1][:-1].decode("hex"))

print a
print b
