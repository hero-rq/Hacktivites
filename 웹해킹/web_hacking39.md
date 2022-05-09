상당히 흥미로운 문제였다 

 if($_POST['id']){
    $_POST['id'] = str_replace("\\","",$_POST['id']);
    $_POST['id'] = str_replace("'","''",$_POST['id']);
    $_POST['id'] = substr($_POST['id'],0,15);
    $result = mysqli_fetch_array(mysqli_query($db,"select 1 from member where length(id)<14 and id='{$_POST['id']}"));
    if($result[0] == 1){
      solve(39);

주어진 코드에 대한 정확한 해석이 관건인 문제였다 

소스를 보면 기존 webhacking.kr에서 약간 달라진 부분이 length(id)<14라는 부분이 추가되었다.
sql 쿼리에서 where 구문이 true가 되어서 1이 리턴되면 문제가 풀린다.
그런데 쿼리를 잘 보면 where구문에서 id=' 부분에 여는 싱글 쿼터는 있는데, 닫는 싱글 쿼터가 없다.
그리고 싱글 쿼터를 입력값으로 주면, 2개의 싱글쿼터로 치환되게 되는데, 
substr 함수에서 앞의 15개만 잘라내는 부분이있다.
이 내용을 보고 딱 2초만에 직관력으로 맞추었다 
주어진 코드만 정확히 파악하면 곧바로 풀리는 쉬운 문제였다. 
