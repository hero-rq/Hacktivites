@APP.route('/upload', methods=['GET', 'POST'])
def upload_memo():
    if request.method == 'POST':
        filename = request.form.get('filename')
        content = request.form.get('content').encode('utf-8')

        if filename.find('..') != -1:
            return render_template('upload_result.html', data='bad characters,,')

        with open(f'{UPLOAD_DIR}/{filename}', 'wb') as f:
            f.write(content)

        return redirect('/')

    return render_template('upload.html')


@APP.route('/read')
def read_memo():
    error = False
    data = b''

    filename = request.args.get('name', '')
    
문제의 구성 자체는 매우 간단했다. 
upload도 있고 read도 있는데 upload에 자세히 보면 ..을 필터링해서 상위 디렉토리로 가는 것을 못하게 방지해두었다. 
그러나 read 상에는 별다른 필터링이 없었으므로 
/read?name=/../../../../../app/flag.py
이렇게만 해주어도 원하는 플래그를 얻을 수 있다. 
