sql 구문을 알면 크게 어렵지 않다고 생각했다 
해당 내용의 뜻을 대략적으로 파악해보고 
버프 프록시를 꺼내서 공격 지점을 잡았다 
User-Agent값을 변경해서 
맨 처음에는 70회라는 숫자를 생각해서 
intruder로 70회만 넘기면 플래그 값을 얻을 수 있지 않을까라고 생각해서 
접근했지만, 70회를 넘자마자 처음으로 다시 숫자가 초기화되었다 

penguin', '1', 'admin'), ('guest

"insert into chall8(agent,ip,id) values('{$agent}','{$ip}','guest')")
이걸 보고 맞추는 것이었다 
아이디를 넣었을 때 그 값이 없으면 새로 insert하기 때문에 (그러나 값은 guest로 고정된다)
위에나오는 페이로드처럼 넣어주면 새로운 값을 insert할 수 있게 된다 (즉 나만의 admin 테이블을 만드는 것이다)
그 다음에 Penguin으로 다시 값을 넣어주면 원하는 admin 권한을 획득할 수 있게 된다 
