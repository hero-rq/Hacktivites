-파일 업로드 공격 

파일 업로드 공격이 일어나는 가장 큰 원인은 공격자/이용자가 업로드하는 파일을 사전에 검사하지 않는다는 것입니다. 세상에 좋은 이용자들만 있다면 좋겠지만, 세상에는 의외로 악의적인 의도를 가진 공격자들이 생각보다 많습니다. 

파일 업로드 공격의 기본적인 예시는 webshell입니다.  

예를 들어, 
if (isset($_GET[‘cmd’])) {
  system($_GET[‘cmd’]);
}
이러한 php 파일을 업로드할 수 있으면, system() 함수를 이용하여 공격자는 원하는 명령어를 실행할 수 있습니다. 위에서 말했던 것처럼 커맨드 인젝션 공격을 실행할 수 있는 환경을 스스로 구축하게끔 만드는 것이죠. 
그 이후는 커맨드 인젝션 공격과 동일합니다. cat /etc/passwd 등 원하는 명령어를 입력만 해주면 되죠. 

그리고 실무에서는 일어나기 어려운 일이지만, ../../ 등을 이용하면 상위 디렉토리를 탐색하는 공격도 종종 발생합니다. 공격자는 ../../ 등을 주입하여 자신들이 원하는 상위 디렉토리로 이동합니다. 

파일 업로드 공격에 대한 대응은 아주 간단합니다. 이미 우리는 그 원인을 살펴보았습니다. 가장 좋은 해결방안은 사전에 대응하는 것입니다. 공격자/이용자가 업로드하는 파일을 사전에 필터링하는 것이 필요합니다. 그렇다면 구체적으로 어떻게 할 수 있을까요? 
1) 확장자를 검사할 수도 있겠죠. 예를 들어, 음악 파일만 올리라고 했는데 php 파일 등 소스코드를 넣어 웹쉘을 노리는 유저가 있을 수도 있습니다. 그런 경우에 특정 확장자를 잘 확인하고 필터링하는 것이 필요하겠죠.  
2) 업로드되는 경로의 실행권한 자체를 제거할 수도 있습니다. 사전에 미리 권한을 없애버려서 특정 소스코드가 실행되지 않도록 방지하는 것이죠. 
3) 특정 확장자만을 허용하거나 (화이트리스트 필터링) 특정 내용을 허가하지 않는 식으로 방어할 수도 있을 것입니다. (블랙리스트 필터링) 
4) 그리고 ../ 등을 이용하여 상위 디렉토리를 탐색할 수 있는 것을 사전에 방지할 수 있어야 합니다. 예를 들어, 업로드 상으로는 ../ 자체를 필터링 하였지만, 파일을 검색하거나 찾을 수 있을 때 ../ 등을 허용한다면 사실 애초에 그 필터링 자체의 의미가 사라집니다. 왜냐하면, 공격자는 ../ 등을 이용하여 핵심 디렉토리를 검색하고 찾을 수 있기 때문입니다. 

Title : Basic Lectures for White Hackers

a publishing house : Bookk Publisher

isbn : 9791137283008

Author : ME