sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=
이 값을 스크립트에 허용한다? ??? 
script-src 'self' 'sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8='
[https://code.jquery.com/jquery-3.4.1.slim.min.js](https://code.jquery.com/jquery-3.4.1.slim.min.js)

script-src 'self' 'sha256-l10SK0DPRVBa1/91J7WfPisrJ6WCxCRnKFzXa0kpsY4='
[https://code.jquery.com/jquery-3.4.1.slim.min.js](https://code.jquery.com/jquery-3.4.1.slim.min.js)

script-src 'self 'sha256-l1OSKODPRVBa1/91J7WfPisrJ6WCxCRnKFzXaOkpsY4='
[https://code.jquery.com/jquery-3.4.1.slim.min.js](https://code.jquery.com/jquery-3.4.1.slim.min.js)

 if a == 'error' and b == 'error' and c == 'c' and d != 'error':
                return FLAG

이게 핵심이 된다는 것을 안다 
결국에 오늘 c 값도 구할 수 있었다 
a, b 모두 error 값을 return 하고 c 역시 값을 구해서 원하는 값을 넣음으로써 
남은 것은 d 하나밖에 없다는 것을 알 수 있었다
그리고 d의 핵심 본문은 https://code.jquery.com/jquery-3.4.1.slim.min.js 이것이다  
따라서 주요한 부분은 위의 핵심 값을 어떤 식으로 넣어야 d값이 맞구나 인식할 수 있느냐는 점인데 
일단 지금은 bot이 맛탱이가 간 거 같아서 먼저 기다리기로 했다 

역시 위의 방식으로 쳐서는 값이 안 나오더라 
script-src 'sha256-l1OSKODPRVBa1/91J7WfPisrJ6WCxCRnKFzXaOkpsY4='  https://code.jquery.com/jquery-3.4.1.slim.min.js
그냥 논리적으로 알고 있는 그대로 payload 값을 다시 구성시켰다 
script-src ' ' 가 기본형식이라는 건 알고 있었고 
a랑 b는 어차피 error가 떠도 되는 거니까 그 값은 그리 중요하지 않았다 
결국엔 c 랑 d 값일 일치해야하는 것이 이 문제에서 요구하는 논리적인 사항인데 
c는 위의 해시 값이고 d는 옆에 있는 jquery 사이트 값이니까 
그걸 순차적으로 쳐 넣어서 조건을 맞추어 주었다 
결국엔 self 이런 식으로 어렵게 구성할 거 없이 간단하게 플래그에 도달할 수 있었다 

script-src default-src easy
