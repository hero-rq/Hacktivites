해당 조건에 맞게 c언어를 작성해 준 후
gcc main.c -o main
objdump -d main
입력
<func>:
401120: 8d 57 ff lea -0x1(%rdi),%edx
401123: 49 89 f0 mov %rsi,%r8
401126: 83 fa 01 cmp $0x1,%edx
401129: 7e 6d jle 401198 <func+0x78>
40112b: 85 ff test %edi,%edi
40112d: 74 69 je 401198 <func+0x78>
40112f: 31 c0 xor %eax,%eax
401131: 0f 1f 80 00 00 00 00 nopl 0x0(%rax)
401138: 48 63 ca movslq %edx,%rcx
40113b: 49 8b 0c c8 mov (%r8,%rcx,8),%rcx
40113f: 0f be 31 movsbl (%rcx),%esi
401142: 0f be 49 01 movsbl 0x1(%rcx),%ecx
401146: 8d 34 b6 lea (%rsi,%rsi,4),%esi
401149: 8d b4 71 f0 fd ff ff lea -0x210(%rcx,%rsi,2),%esi
401150: 69 ce ab aa aa aa imul $0xaaaaaaab,%esi,%ecx
401156: 8d 3c 30 lea (%rax,%rsi,1),%edi
401159: 8d 04 70 lea (%rax,%rsi,2),%eax
40115c: 81 c1 aa aa aa 2a add $0x2aaaaaaa,%ecx
401162: 81 f9 54 55 55 55 cmp $0x55555554,%ecx
401168: 0f 46 c7 cmovbe %edi,%eax
40116b: 83 ea 01 sub $0x1,%edx
40116e: 83 fa 01 cmp $0x1,%edx
401171: 7f c5 jg 401138 <func+0x18>
401173: 4c 63 c0 movslq %eax,%r8 … (너무 길어서 생략)
대략 이런 식으로 값이 나온다
여기서 8d57ff4989f083fa017e6d85ff…(생략) 쉘코드를 추출해주고 값을 넣는다
