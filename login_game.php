Th1s_1s_Adm1n_P@SS 맨 처음 답은 이것이다 
공격자가 탈취한 패스워드라는 것을 보면 access파일 안에 답이 있음을 알 수 있다 
그 파일 을 잘 읽어보면 공격자가 브루트 포싱을 시전했는데 
해당 flag값에 한해서 다른 결과값이 도출된다 
이 값을 추출해서 아스키코드로 변환시키면 패스워드가 짜란 등장한다 


php://filter/convert.base64-encode/resource=../config.php 
다행스럽게도 두 번째 내용은 더 쉽게 풀렸다 
문제에 나와있는 그대로 쳐보니 순식간에 값을 얻을 수 있었다 


/var/lib/php/sessions/sess_ag4l8a5tbv8bkgqe9b9ull5732 
가장 많이 헤맸다고 하는 이 내용도 돌파할 수 있었다  
그 위에 나오는 php 코드가 매우 독특한 코드였다 그 내용 중 일부를 구글에 치니 
one compiler가 떴는데 그 내용을 기반으로 날짜를 입력해주자 신기한 값들이 나왔다 
아무튼 그래서 var/lib과 관련이 있다는 추리를 할 수 있었고 정답을 맞출 수 있었다 

/var/www/html/uploads/images.php 
그 다음 이 내용은 훨씬 더 쉽게 돌파할 수 있었다 
위에도 말했듯이 php 코드 중 일부를 구글에 쳐서 직접 컴파일 했기 때문에 
원하는 값을 바로 얻을 수 있었다 

whoami