<?php
require_once('baglan.php');
session_start();

$id=$_GET['id'];

$sorgu_katsil= $db -> prepare('delete from kategoriler where id=?');
$sorgu_katsil -> execute(array($id));

if($sorgu_katsil -> rowCount()){
    echo 'kategori silinmiştir  <meta http-equiv="refresh" content="1; url=kategori.php"> ';
}else{
    echo 'hata oluştu';
}



?>


