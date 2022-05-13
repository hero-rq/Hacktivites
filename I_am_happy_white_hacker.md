-쿠키 & 세션

웹의 정문이라고 할 수 있는 xss를 먼저 설명할까 하다가 xss를 진행하려면 어차피 쿠키 & 세션에 대한 이해가 필수적이라는 당연한 결론을 얻었습니다. 
그래서 먼저 간단히 쿠키 & 세션에 대해서 짚어보고자 합니다. 
웹 페이지의 관점에서 한 번 상상해볼까요? 요새는 수많은 웹 페이지가 존재합니다. 그 중에 당신이 상당히 유명한 웹 페이지라고 상상해보세요. 
하루에도 셀 수 없이 많은 사람들이 들락날락거립니다. 이것 저것을 검색하기도 하고 새로운 값을 변환하기도 합니다. 그런데, 이용자들을 구분하지 못하면 어떻게 될까요? 
일반 사용자인 사람에게 관리자 권한을 넘겨서 그 내용을 바꿀 수 있도록 하면 어떻게 될까요? 블로그 내용을 마음대로 바꿀 수 있는 권한을 아무한테나 부여하고 
돈의 주인이 아닌 사람에게 송금권한을 주게 된다면 어떻게 될까요? 아마 큰일이 나겠죠. 그 자체가 이미 해킹되어서 정신이 헤롱헤롱한 웹 페이지일 것입니다. 
누군가에게 권한을 주고 누군가에게는 권한을 안 준다는 것은 기본적으로 그 사람들을 하나하나 적절히 구분할 수 있는 능력을 필수 전제로 합니다. 그 사람들이 누구인지, 
어느 정도의 권한을 가졌는지 적절히 구분할 수 없다면 그 사람들에게 어느 정도의 권한을 부여할 수 있는지 적절한 판단이 될 수가 없겠죠. 따라서 프로그래머와 
해커들은 웹에서 이 사람들을 구분할 수 있는 쿠키와 세션에 대한 개념을 만들었습니다. 

쿠키 & 세션은 방금도 말했다시피, 각 이용자들을 구분하는데 사용됩니다 
예를 들어, 제가 웹 서버에 

id : 조영웅 
pw : ******
하는 내용을 보냈다고 가정해봅시다. (요청)  
이 때 HTTP에서는 Connectionless, Stateless특성이 유지되기 때문에 만약에 쿠키가 없게 되면 이 요청에 따른 응답만을 반복하게 됩니다. 
다시 말해서, 웹은 제가 조영웅이라는 것은 인지하겠지만, 그 이후의 진행이 되지 않는 것이죠. 혹은 로그인을 무한정 반복해야될 수도 있겠네요. 
그러나, 웹 서버가 쿠키값을 부여한다면 상황은 달라집니다. 웹은 
이 사용자 = 조영웅 라는 것을 인지하고 그런 식으로 쿠키값을 부여합니다. 그러면 저는 그 쿠키만을 제시하고서 저라는 증명을 할 수 있게 되고 로그인을 
무한정 반복할 필요 없이 제 권한을 획득할 수 있는 것이죠. 
쿠키와 세션의 가장 큰 차이점은 쿠키는 이용자가 데이터를 저장하는 반면에 세션은 서버가 저장한다는 것입니다. 세션은 어떤 (무작위로 보이는) 값을 서버가 부여하는 것입니다. 
티켓을 주는 거라고 볼 수도 있겠네요.  이에 대해서 너무 깊이 들어가는 것은 실질적으로 큰 의미가 없으므로 쿠키와 세션으로 이용자들을 구분할 수 있고 해커는 이를 탈취하거나 
변조하는 등 공격기법을 활용해 원하는 것을 얻을 수 있다는 점 정도만 기억하시면 될 거 같습니다. 