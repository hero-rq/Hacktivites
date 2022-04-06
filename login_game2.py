admin admin 11
panda panda123 58 

93  88   81

@app.route('/user/<int:useridx>')
def users(useridx):
    conn = get_db()
    cur = conn.cursor()
    user = cur.execute('SELECT * FROM user WHERE idx = ?;', [str(useridx)]).fetchone()
    
    if user:
        return render_template('user.html', user=user)

    return "<script>alert('User Not Found.');history.back(-1);</script>";
=> user/숫자 입력하면 해당 user의 정보가 나온다

개인적으로 웹 중에 가장 쉽게 풀었다 ;; 5분~10분 정도 걸렸다
guest 아이디 하나 만들어보고 바꿔보고 하면서
backcode가 존재한다는 점을 바로 파악할 수 있었다
그리고 peach라는 아이디가 존재한다는 것을 알게 되었고
그렇다면 어떻게 접근할 수 있을지 잠깐 생각해봤는데
backcode만 알면 패스워드를 내가 원하는대로 바꿀 수 있다는 것이 떠올랐다
그 순간 코드에서 본 0~100 숫자와 브루트포싱이 동시에 떠올랐다
여기까지 떠오르는데 문제 받고 나서 약 5분 정도 걸렸다
바로 프루트포싱을 시도해보니 곧바로 peach에 접속할 수 있었다
접속한 이후에 /admin에 들어가보니 바로 플래그 나옴;;

정확히 논리적인 단계를 하나하나 차근차근 밟지는 않았지만 
기본적인 정보에 의거해서 예전에 풀었던 능력을 바탕으로 
브루트포싱을 생각해내는데 대략 5분 정도 걸렸다 
그 이후에는 브루트 포싱을 직접 했고 
/admin으로 곧바로 플래그를 얻을 수 있었다 ㅎㅎㅎ 

다시 천천히 풀 때 역시 느꼈지만 그리 어려운 문제는 아니었다 
지금은 왜 이 문제가 레이스 컨디션과 관련이 있는지 연구해보고 있다 
