#encrypt = lambda pt: AES.new(key, AES.MODE_CBC, key).encrypt(pad(pt, BLOCK_SIZE))
#decrypt = lambda ct: unpad(AES.new(key, AES.MODE_CBC, key).decrypt(ct), BLOCK_SIZE)
#!/usr/bin/python3
from pwn import *

from Crypto.Util.Padding import pad, unpad
from Crypto.Cipher import AES

r = remote('host1.dreamhack.games', 19019)
p1, p2, p3 = b'A'*16, b'B'*16, b'C'*16
r.sendline('1')
r.sendlineafter('Input plaintext (hex): ', (p1+p2+p3).hex() )
ct = bytes.fromhex(r.recvline().decode())
c1, c2, c3 = ct[:16], ct[16:32], ct[32:]
r.sendline('2')
r.sendlineafter('Input ciphertext (hex): ', (c2+c2+c3).hex() )
ct = bytes.fromhex(r.recvline().decode())
x = ct[:16]
key = bytes([ x[i]^c1[i]^p2[i] for i in range(16)]) # nonce = initial vector(iv) = key
r.sendline('3')
r.recvuntil('flag = ')
ct = bytes.fromhex(r.recvline().decode())

BLOCK_SIZE = 16

encrypt = lambda pt: AES.new(key, AES.MODE_CBC, key).encrypt(pad(pt, BLOCK_SIZE))
decrypt = lambda ct: unpad(AES.new(key, AES.MODE_CBC, key).decrypt(ct), BLOCK_SIZE)
print(decrypt(ct))
