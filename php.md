답을 알고보면 정말 쉬운 문제이지만
정말 하나씩 공격한다고 생각해보면 의외로 갈팡질팡할 수도 있는 문제이다

맨 처음에는 …/…/…/ 등을 통해서 공격했으나
별다른 결과값이 나오지 않았다

그 후 wrapper함수가 생각나서 그걸로 페이로드를 구축했다
/?page=php://filter/convert.base64-encode/resource=/var/www/uploads/flag.php
대충 이거랑 비슷하게 쳤던 거 같은데
이렇게 쳐도 별 반응이 없었다
나중에 보니 뒤에 php를 무의식적으로 붙여놓았길래 그거 빼고 다시 치니
PD9waHAKCSRmbGFnID0gJ0RIe2JiOWRiMWYzMDNjYWNmMGYzYzkxZTBhYmNhMTIyMWZmfSc7Cj8+CmNhbiB5b3Ugc2VlICRmbGFnPw==
요런 값이 나온다 누가 봐도 base64가 떠올라서
그걸 디코딩 해주면 플래그가 나온다
(문제가 엄청 깔끔하다)

http://host1.dreamhack.games:24045/?page=php://filter/convert.base64-encode/resource=/var/www/uploads/flag
여기서 얻은 값을 base64 decode하면 플래그를 얻을 수 있다 
역시나 간단한 웹해킹 문제였다 
이 문제에서 원하는 것은  /var/www/uploads/flag.php 에 도달하는 것이었다 
문제에도 거기에 도달하면 플래그 값을 얻을 수 있다고 아주 친절하게 쓰여있다 
그러나 문제점이 하나 있는데 필터되는 과정이 하나 있다는 것이다 
이 필터링을 지나쳐서 저 위에 나와 있는 값에 도달하라는 것이 이 문제가 원하는 바였다 
웹해킹 기본적인 워게임들은 거의 다 이와 비슷한 것 같다 
원하는 값이 있고 그 원하는 값에 도달하면 플래그 값을 얻을 수 있다 
그러나 기본적으로 막아내는 필터링이 존재한다 
따라서 그 필터링을 피해서 원하는 값에 도달하는 것이 문제의 주 요지가 된다. 
