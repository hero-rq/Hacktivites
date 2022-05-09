import hashlib, csv

chall4 = ""
f = open('rainbow.csv', 'a', newline='')
writer = csv.writer(f)

for i in range(10000000, 20000000):
  chall4 = str(i) + "salt_for_you"
  hash = chall4

  for j in range(0, 500):
    hash = hashlib.sha1(hash.encode('utf-8')).hexdigest()
    
  writer.writerow([chall4, hash])
  print(chall4 + " : " + hash)

f.close()

# 8be704a7e6f4f30c3a40ef4eb1dd59591b096567

import hashlib, csv

f = open('rainbow.csv', 'r', newline='')
reader = csv.reader(f)
hash = "8be704a7e6f4f30c3a40ef4eb1dd59591b096567" # 문제 페이지의 hash값을 여기에 입력한다.

for line in reader:
  if line[1] == hash:
    print("I found the key! : " + line[0])

f.close()

확정적으로 싸이코같은 문제라 할 수 있다 
주어진 소스코드를 보았을 때 
결국 chall4와 일치하는 원문을 찾으라는 것이 핵심인데 
chall4를 천만? 아무튼 에서 1억? 사이의 랜덤값에 솔트를 더해서 
500번 해싱한 거라 거기에서 부터 찾아내려면 
레인보우테이블 외에는 방법이 없다 
그렇게 할려면 최소 5~10기가는 이 테이블만 채워야 한다는 건데 
솔직히 고작 이 한 문제를 풀기 위해서 그 정도의 메모리와 cpu를 소모시키고 싶지는 않았다 
