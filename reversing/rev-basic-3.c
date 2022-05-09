  __int64 __fastcall sub_140001000(__int64 a1)

{

int i; // [rsp+0h] [rbp-18h]


for ( i = 0; (unsigned __int64)i < 0x18; ++i )

{

if ( byte_140003000[i] != (i ^ *(unsigned __int8 *)(a1 + i)) + 2 * i )

return 0i64;

}

return 1i64;

}

기본적인 분석방법에 의거해 위와 같은 함수가 나왔다 

당연히 byte 부분이 핵심이 되는 부분이라는 것을 알 수 있었고 더블 클릭해서 



.data:0000000140003000 byte_140003000 db 49h, 60h, 67h, 74h, 63h, 67h, 42h, 66h, 80h, 78h, 2 dup(69h)

.data:0000000140003000 ; DATA XREF: sub_140001000+28↑o

.data:0000000140003000 db 7Bh, 99h, 6Dh, 88h, 68h, 94h, 9Fh, 8Dh, 4Dh, 0A5h, 9Dh

.data:0000000140003000 db 45h, 8 dup(0)



위에 해당하는 dump값도 얻을 수 있었다 

if문의 핵심은 A=B+C이면 B는 A-C임을 이용하거나 A XOR B = C 이면 C XOR B = A 임을 보여주는 것이다 

이런 식으로 구성하거나 
arr = [0x49, 0x60, 0x67, 0x74, 0x63, 0x67, 0x42, 0x66, 0x80, 0x78, 0x69, 0x69, 0x7B, 0x99, 0x6D, 0x88, 0x68, 0x94, 0x9F, 0x8D, 0x4D, 0xA5, 0x9D, 0x45]

for x in range(24) :
    arr[x] = arr[x] - x * 2
    arr[x] = arr[x] ^ x
    print(chr(arr[x]), end='')

혹은 이런 식으로 구성해서 FLAG를 얻을 수 있다 
target = b'\x49\x60\x67\x74\x63\x67\x42\x66\x80\x78\x69\x69\x7B\x99\x6D\x88\x68\x94\x9F\x8D\x4D\xA5\x9D\x45'
string = ''
for i in range(0, 24):
    string += (chr((target[i] - i * 2)^i))
print(string) 
