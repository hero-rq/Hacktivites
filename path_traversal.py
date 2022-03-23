취약점 
@app.route('/get_info', methods=['GET', 'POST'])
def get_info():
    if request.method == 'GET':
        return render_template('get_info.html')
    elif request.method == 'POST':
        userid = request.form.get('userid', '')
        info = requests.get(f'{API_HOST}/api/user/{userid}').text
        return render_template('get_info.html', info=info)

FLAG를 가져오는 부분 
@app.route('/api/user/<uid>')
@internal_api
def get_flag(uid):
    try:
        info = users[uid]
    except:
        info = {}
    return json.dumps(info)

@app.route('/api/flag')
@internal_api
def flag():
    return FLAG

이걸 바탕으로 burp 를 써서 
path travel의 핵심적인 내용을 적용하면 풀린다.
requests.get(f'{API_HOST}/api/user/{userid}')
../../~~를 하면 우회해서 원하는 부분에 도달할 수 있다(핵심)  
get(f'{API_HOST}/api/user/{userid}') 이렇게 뒤에 붙이는 
구조이기때문에 ../../flag이런 식으로 쓰게 되면 
url이 가서 붙는 식으로 되어서 원하는 결과가 나온다. 
