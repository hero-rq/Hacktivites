_int64 __fastcall sub_140001000(__int64 a1)
{
  int i; // [rsp+0h] [rbp-18h]

  for ( i = 0; (unsigned __int64)i < 0x15; ++i )
  {
    if ( (unsigned __int8)(-5 * *(_BYTE *)(a1 + i)) != byte_140003000[i] )
      return 0i64;
  }
  return 1i64;
}

import string
raw = (0xAC,0xF3,0xC,0x25,0xA3,0x10,0xB7,0x25,0x16,0xC6,0xB7,0xBC,0x7,0x25,0x2,0xD5,0xC6,0x11,0x7,0xC5,0)
for ch in raw:
   for i in string.printable:
	if (-5 * ord(i)) = ch:
		print(i, end='')
                         break       //기본적인 얼개 
그러니까 위의 함수검증방식부터 분석해보면 
-5와 입력값을 먼저 곱한다  
아무튼 그 2개의 값을 곱한 이후에 
다시 기존에 저장되어 있는 byte_140003000[i]와 비교하기 위해 
상위 3바이트를 날리고 1바이트만 남긴다 

그래서 나는 입력값을 ord(i)로 표현하고 
-5를 곱한이후에 3바이트를 날리고 바이트 값과 비교하려 했다 

import string
raw = (0xAC,0xF3,0xC,0x25,0xA3,0x10,0xB7,0x25,0x16,0xC6,0xB7,0xBC,0x7,0x25,0x2,0xD5,0xC6,0x11,0x7,0xC5,0)
for ch in raw:
  for i in string.printable:
    if ((251 * ord(i) % 256)) == ch:
      print(i, end='')
      break

-5를 곱하는 것은 251를 곱하는 것으로 치환될 수 있고 
상위 바이트를 날리는 것은 256으로 %연산을 하는 것으로 치환될 수 있다 
(나 스스로에게만 묻는 거지만 왜? 왜 이런 식으로 치환될 수 있는 걸까?)
