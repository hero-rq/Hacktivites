n = int(input())

def calculate_prize(k_list):
    prize = 0
    cnt = [0]*6
    for i in range(4):
        cnt[k_list[i]-1] += 1
    if 4 in cnt:
        prize = 50000 + (cnt.index(4)+1)*5000
    elif 3 in cnt and 1 in cnt:
        prize = 10000 + (cnt.index(3)+1)*1000
    elif 2 in cnt and cnt.count(2) == 2:
        prize = 2000 + (cnt.index(2)+1)*500 + (cnt.index(2,cnt.index(2)+1)+1)*500
    elif 2 in cnt:
        prize = 1000 + (cnt.index(2)+1)*100
    else:
        prize = max(k_list)*100
    return prize


a_list = []
for i in range(n):
  k_list = [int(x) for x in input().split()]
  a_list.append(calculate_prize(k_list))

print(max(a_list))
