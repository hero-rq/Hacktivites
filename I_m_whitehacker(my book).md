-웹 http/https 기본

웹에서는 약속이 가장 중요합니다. 왜냐하면, 웹이라는 것 자체가 ‘소통’이기 때문입니다. 이전에는 모든 소통이 대면으로 진행되어야 하던 시절이 있었습니다. 
그게 조금 더 발전해서 문자를 글로 써서 그걸로 소통하던 시절도 있었고 대면과 문자도 넘어서 비대면 상태에서 컴퓨터와 웹 등을 사용해서 활발하게 소통하던 시대까지 왔습니다. 
웹은 그런 발전이 현대까지 왔을 때 나타나게 된 가장 효율적인 소통 형태라고 말할 수 있습니다. 웹과 인터넷 속에서 전 세계에 있는 사람들이 실시간으로 서로 연결되고 소통할 
수 있기 때문입니다. 소통이라는 것은 약속을 전제로 합니다.(컴퓨터 용어로 프로토콜이라고 불러도 좋습니다) 한 번 상상해볼까요? 만약에 어떠한 약속조차도 전제되어 있지 
않고 서로 공통된 것이 아무것도 없는 상태에서 양자가 소통하려고 하면 어떻게 될까요? 이는 열대 밀림 속 식인종에게 소통을 시도하는 것 혹은 동물원 속에 있는 
여러 동물들과 소통을 시도하는 것과 비슷한 일일 것입니다. 아니면 적어도 전혀 말이 통하지 않는 외국인과 대화를 하려고 하는 것과 비슷하겠죠. 
그나마 사람은 유연하고 융통성이 있기 때문에 빠르게 적응해나갈 수 있습니다. 예를 들어, 아예 말이 안 통하는 외국인과 대화를 할 때, 말이 너무 안 통하면 
바디랭귀지를 시도해볼 수 있습니다. <그리스인 조르바>에 보면 그런 스토리가 나오죠. 하지만, 우리가 지금 웹 소통에 이용하는 것은 사람이 아닌 일반 컴퓨터입니다. 
컴퓨터는 말 그대로 기계이기 때문에 아주 기계적으로 처리합니다. 사람과 같은 융통성이 존재하지 않죠. 
웹은 프레젠테이션 계층, 트랜잭션 계층, 데이터 계층라는 3계층 구조로 나눌 수 있습니다. 프레젠테이션 계층은 말 그대로 웹의 사용자가 지켜보는 부분입니다. 
html, css, 자바스크립트 등 우리가 일상적으로 보는 웹 화면이 여기에 포함됩니다. 트랜잭션 계층은 양쪽 중간에서 데이터들을 관리하고 다루는 일을 주로 합니다. 
사용자들의 입력이 트랜잭션 계층을 거쳐서 데이터 계층까지 가는 것이죠. 데이터 계층은 좀 더 간추려서 말하면 데이터베이스와 그 관리입니다. 해당 웹에 필요한 
모든 내용들을 정리해놓고 필요한 정보들을 뽑아서 그 때 그 때 사용할 수 있도록 구성한 것입니다.     
HTTP는 Hyper Text Transfer Protocol의 약자입니다. 이 약자만 보아도 알 수 있다시피 데이터 교환 프로토콜이라고 보시면 됩니다. 
조금 더 실전적인 의미로 말해서 요청(Request)과 응답(Response)의 데이터 교환을 어떤 방식으로 구성한 것인지 정한 프로토콜이라고 말할 수 있습니다. 
이는 다르게 표현한다면, HTTP 자체가 클라이언트 측의 요청과 서버 측의 응답 방식을 약속했다고 볼 수 있는데요. ‘클라이언트 측의 요청 그리고 서버 측의 응답’ 이는 
웹의 핵심을 정확히 꿰뚫은 표현이라고 할 수 있습니다. 

간단한 예시를 볼까요? 

요청 예시 
POST/index.html HTTP/12.1
Host: navaasgda.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/25.162
Accept: text/html,application/xhtml+xml,application/xml;q=0.9
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Referer: http://243.12.47.3463/noll/dskjsf


응답 예시 
HTTP/1.1 200 OK
Server: Apache/2.4.29 (Ubuntu)
Content-Length: 123
Connection: Keep-Alive
Content-Type: text/html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>answers</title>
</head>
<body>
    <h1 id=“hi”>Git on</h1>
    <script src="script.js"></script>
</body>
</html>

이러한 요청/응답을 자세히 보면 형식적으로 헤더 + 바디로 구성되어 있는 것을 알 수 있습니다. 요청/응답 첫 줄을 자세히 보면, 
상태를 표시해주는 것을 알 수 있습니다. 예를 들어 상태번호 200은 잘 응답되었음을 표시해주는 것입니다. (상태번호에 대한 조금 더 구체적인 설명은 밑에 나옵니다)
다음에 헤더 부분을 보면 누구에게 보내는 내용인지, 어떤 언어를 사용했는지 등 통신에 아주 기본이 되는 정보들이 들어갑니다. 그리고 응답의 바디 부분을 보면
<!DOCTYPE html>로 서버가 해당 내용을 응답response 해주었음을 명확히 확인할 수 있습니다. (여기에 나오는 구체적인 값 중 일부는 일부러 아무 값들이나 적었습니다. 
왜냐하면 구체적인 데이터 값보다 데이터 형식이 더 중요하기 때문입니다.)

Title : Basic Lectures for White Hackers

a publishing house : Bookk Publisher

isbn : 9791137283008

Author : ME
