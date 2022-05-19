from pwn import *
from Crypto.Util.number import bytes_to_long, inverse, long_to_bytes

context.log_level="DEBUG"

p = remote('host1.dreamhack.games', 9403)

p.sendlineafter('info\n', "3")

p.recvuntil("N: ")
n = int(p.recvline()[:-1])

p.recvuntil("e: ")
e = int(p.recvline()[:-1])

p.recvuntil("FLAG: ")
flag_enc = int(p.recvline()[:-1])

# log.info("N: " + str(n))
# log.info("e: " + str(e))
# log.info("FLAG: " + str(flag_enc))

exploit_flag = (pow(2, e) * flag_enc) % n

log.info("Exploit flag: " + str(exploit_flag))

p.sendlineafter("info\n", "2")
p.sendlineafter("(hex): ", hex(exploit_flag)[2:])

double_flag = int(p.recvline()[:-1])
log.info("Flag * 2 = "+str(double_flag))
