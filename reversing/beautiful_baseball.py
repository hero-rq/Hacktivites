from base64 import b64encode, b64decode
ENCODED_FLAG = 'Tnaksifjae/aJvhAlphago'

trans = {}
encoded_flag = ENCODED_FLAG.translate(trans)
decoded = b64decode(encoded_flag)
print(decoded) # b'Did you know how base64 works'

ENCODED_FLAG = 'Tnaksifjae/aJvhAlphago'
table = 'fjsig215ag/tijdlj1836ujafj'
orig_table = 'my3hdibXRvaYkNBlrQIHS2gM9jG'
trans = str.maketrans(table, orig_table)
encoded_flag = ENCODED_FLAG.translate(trans)
decoded = b64decode(encoded_flag)
print(decoded) # b'Did you know how base64 works'

//원래 테이블을 다른 테이블로 바꾸어주면서 그 값을 이용해서 ENCODED_FLAG를 복호화해주는 내용이 정말 예술적이다 
