def get_random_u8():
    return struct.unpack("<B", os.urandom(1))[0]
def encrypt(s, k): # string, key
    res = ""
    if k <= len(s):
        _print("[!] key shold be larger then len(pt) for safty!!")
        return ""
    for i, c in enumerate(s):
        enc = (get_random_u8() + key * i) % 0xff
        enc = ord(c) ^ enc
        res += hex(enc)[2:].rjust(2, "0")
    return res

def decrypt(s, k): # string, key
    _print("[*] Give me the paper about predicting urandom")
    _print("[*] ...Then i'll decrypt your input ;)")
    return ""
# 진짜 난수 

f = open("data.dat", "r") # 쉽구먼 
res = [[0]*256 for _ in range(44)]
cnt = 0
while True:
    x = bytes.fromhex(f.readline())
    if not x:
        break
    for _i in range(44):
        res[_i][x[_i]] += 1
    cnt+=1

ans = ""
for i in range(44):
    m = max(res[i])
    for j in range(256):
        if m==res[i][j]:
            ans += chr(j)
            break
print(ans)
