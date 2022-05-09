session 문제이다
쿠키랑 session으로 사용자 값을 검증해서
admin을 확보한 사용자에게 flag 값을 제공하는 문제이다
dev-tool에 비해서는 확실히 조금 더 난이도가 있는 문제이다
제공한 코드를 확인해보니 여러 아이디와 비밀번호가 제공되고 있었다
제공된 것을 직접 쳐서 들어가보니(guest, user) 그게 맞는 session id가 나왔고
session_id = os.urandom(4).hex() 이런 식으로 랜덤 8자리가 나오는 것을 알 수 있었다
그런데 나와있는 코드 아래쪽에 보니
session_storage[os.urandom(1).hex()] = ‘admin’ admin 의 session id는 총 2자리로만
되어있다는 것을 알 수 있었다 이 시점에서 브루트 포싱 공격을 떠올렸다
버프스위트를 이용해서 브루트 포싱 공격을 할 수 있다는 것이 기억나서
어택 벡터가 되어있는 것을 sent to intruder해서 payload설정을 한 이후에 (2자리에 영어와 숫자 조합- 16진수)
브루트 포싱공격을 하고 간단히 플래그를 얻을 수 있었다
