from pwn import *

d = 1384538333
n = 4271010253

fp = open('out.bin', 'rb').read()
datas = unpack_many(fp, word_size=64)

flag = b''
for data in datas:
    dec = pow(data, d, n)
    flag += p32(dec)

print(flag)
