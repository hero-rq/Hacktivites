
target = bytearray(b'bu\xbd\xce7s^:\xbb\xc49\xc2\x953\xb4\x89\x85\xd2\x95:\x80\x9fxg\xd2u\xbe\x92M\xb8\x9e\x85s\xd7y\xbb\x9cwt\xc1\x85\x97\x9c9\xbf\x953g\xc3>\xb3\x92Hw\xc1xj')

n = len(target)

d2 = bytearray(n)
for i in range(n):
    j = i % 3
    if j == 0:
        d2[i] = (target[i] + 39) % 256
    elif j == 1:
        d2[i] = (target[i] + 240) % 256
    else:
        d2[i] = (target[i] + 141) % 256

d1 = bytearray(n)
for i in range(n):
    h = i % 3
    if h == 0:
        d1[i] = d2[i] ^ 39
    elif h == 1:
        d1[i] = d2[i] ^ 240
    else:
        d1[i] = d2[i] ^ 141

d0 = bytearray(n)
for i in range(n):
    f = i % 3
    if f == 0:
        d0[i] = (d1[i] - 107) % 256
    elif f == 1:
        d0[i] = (d1[i] - 101) % 256
    else:
        d0[i] = (d1[i] - 89) % 256

print(d0.decode())
# this is the input you found
