아마 꾸준히 푸셨으면 지금쯤 푸셨을 거 같기는 한데,
위의 답변이 오히려 초보자 분들께는 혼동을 줄 수 있을 것 같아
짧은 답변만 남기고 갑니다. (해답을 드리지는 않고… 힌트만 남기고 갈게요)

flag.py 맞아요.
대신 app을 파이썬으로 찾아보시면 알겠지만, 중요한 점은 … 을 upload를 피해서 갈 수 있느냐 인 거 거든요
(이 부분은 각자 다르게 풀 수도 있겠네요) 왜냐하면 …을 upload 하면 bad characters가 나오도록
프로그래밍 되어 있기 때문입니다.
그것만 피해가시면 정확히 배우신대로 입력하시면 바로 flag를 얻으실 수 있습니다.

@APP.route('/')
def index():
    files = os.listdir(UPLOAD_DIR)
    return render_template('index.html', files=files)


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
