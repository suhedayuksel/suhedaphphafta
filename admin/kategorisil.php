
<?php

require_once('baglan.php');
session_start();

$id=$_GET['id'];
$sorgu_katsil=$db-> prepare('delete from kategoriler where id=?');
$sorgu_katsil -> execute(array($id));

if($sorgu_katsil -> rowCount()){
    echo'silme işlemi gerçekleşti <meta http-equiv="refresh" content="1; url=kategori.php">';
}else{
    echo'silme işlemi gerçekleşemedi';
}
/* Ben Şüheda Yüksel. PHP Benim İçin Çok Basit. */

?>






