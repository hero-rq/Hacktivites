IDA를 통해 검증하는 함수를 보면

​

__int64 __fastcall sub_140001000(__int64 a1)

{

int i; // [rsp+0h] [rbp-18h]

​

for ( i = 0; (unsigned __int64)i < 0x18; ++i )

{

if ( *(unsigned __int8 *)(a1 + i + 1) + *(unsigned __int8 *)(a1 + i) != byte_140003000[i] )

return 0i64;

}

return 1i64;

}

사용자 입력값을 a 라고 했을 때, a[n] 과 a[n+1] 을 더한 값이 byte_140003000 값과 같아야 한다고 한다.

​

byte_140003000 의 모습은 아래와 같은데, 이전 코드와의 모습을 볼 때 이것도 하나의 배열이고, 결국 배열끼리의 

연산임을 알 수 있었다.

​

.data:0000000140003000 byte_140003000 db 0ADh, 0D8h, 2 dup(0CBh), 9Dh, 97h, 0CBh, 0C4h, 92h

.data:0000000140003000 ; DATA XREF: sub_140001000+48↑o

.data:0000000140003000 db 0A1h, 0D2h, 0D7h, 0D2h, 0D6h, 0A8h, 0A5h, 0DCh, 0C7h

.data:0000000140003000 db 0ADh, 0A3h, 0A1h, 98h, 4Ch, 9 dup(0)

0xAD, 0xD8, 0xCB, 0xCB, 0x9D, 0x97, 0xCB, 0xC4, 0x92, 0xA1, 0xD2, 0xD7, 0xD2, 0xD6, 0xA8, 0xA5, 0xDC, 0xC7, 0xAD, 0xA3, 0xA1, 0x98, 0x4C, 0x0

​

여기서 한 가지 값을 알면 나머지 값도 순서대로 유추해낼 수 있다 

첫 번째 값을 처음부터 아는 것은 어려운 일이지만, 마지막을 더해서 0이므로 마지막 값이 0인 것을 바로 알아챌 수 있다. 여기서부터 역으로 추론해서 전체 값을 알면 된다  

​

역산식을 세울 수 있는 원리를 발견하였으므로, 이 작업을 뒤에서부터 해 줄 코드를 작성했다. 따라서 뒤에서부터 거꾸로 역산을 해 주면 된다. 사용자의 입력값이 조건을 통과하면 그것이 바로 flag가 된다.

origin = 'AD D8 CB CB 9D 97 CB C4 92 A1 D2 D7 D2 D6 A8 A5 DC C7 AD A3 A1 98 4C 00'

origin = hehehehehe

panda = aflijaljeflja

​

for init in range(0, 128):

error 

nop

try:

result = chr(init)

before = init

​

for i in origin:

result +=~!@~!#@!#~#

before = ~~~~

​

print(result)

except Exception as e:

# print(e)

continue
