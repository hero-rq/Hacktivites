fIn = open("secretMessage.enc", "rb")
fOut = open("secretMessage.raw", "wb")
nowChar = prevChar = None
while True:
    nowChar = fIn.read(1)
    if nowChar == b"":
        break
    fOut.write(nowChar)
    if nowChar == prevChar:
        _count = fIn.read(1)
        if _count == b"":
            break
        count = ord(_count)
        for _ in range(count):
            fOut.write(nowChar)
    prevChar = nowChar
    
    
#########################################


enc = open("secretMessage.enc", "rb")
dec = open("secretMessage.raw", "wb")

prev = b""
while True:
    data = enc.read(1)
    if not data:
        break
    dec.write(data)

    if data == prev:
        rep = enc.read(1)
        for i in range(int(ord(rep))):
            dec.write(data)
    else:
        prev = data
