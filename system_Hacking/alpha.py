from pwn import *
p = process('./test')
p.send('A') # ./test에 'A'를 입력
p.sendline('A') # ./test에 'A'+'\n'을 입력
p.sendafter('hello','A') # ./test가 'hello'를 출력하면, 'A'를 입력
p.sendlineafter('hello','A') # ./test가 'hello'를 출력하면, 'A' + '\n'을 입력
