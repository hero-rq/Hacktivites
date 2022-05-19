Setup.py 객체
__init__(self): rand_key, admin_pw, salt라는 랜덤파일을 os.urandom(size)함수로 만듦

GuestBook.py 객체
멤버변수: articles:list, _salt:salt파일의 내용, _accounts:{“guest”:“guest”, “admin”:admin_pw파일의 내용}
getFileContents(self, file_name, mode, size): 파일 읽어옴.
isValidSig(self, author, sig): "{author}_{self._salt}"를 sha1한 것과 sig가 같은지 여부를 리턴.
saveGuestBook(self, author, title, content): articles라는 리스트에 {“idx”, “author”, “title”, “enc_data”, “sig”}의 키를 가진 딕셔너리를 삽입. enc_data는 content를 AES로 암호화한 것임. 특이한 점은 content를bytes로 받고, 암호화할 때 latin-1로 encode를 한 결과를 암호화함.
getAllGuestBookList(self): articles에 있는 내용중 idx, author, title만 가져옴.
getGuestBook(self, idx): idx가 일치하는 article를 리턴.
getAccounts(self): _accounts를 리턴

#!/usr/bin/python3
#hack.py
from requests import get
from base64 import b64decode, b64encode

game_site = 'http://host1.dreamhack.games:12781'
data = get(game_site + '/gb/1', params={"id":"guest","pw":"guest"}).json()
enc_data_b64 = data["result"]["article"]["enc_data"]
e_data = b64decode(enc_data_b64) # len(e_data) = 64
sig = data["result"]["article"]["sig"]
guest_token = get(game_site + '/login', params={"id":"guest","pw":"guest"}).json()["result"]["token"]
