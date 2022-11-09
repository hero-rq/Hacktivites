import sys
import socket


ip = '10.10.197.227' 
ports = []

for i in range(1, 65535):
        try:
                s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
                s.connect((ip, i))
                print("{} ports is open".format(i))
        except:
                pass
