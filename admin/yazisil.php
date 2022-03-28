<?php require_once('header.php'); 

$id =$_GET['id'];

$sorgu_yazisil = $db-> prepare('delete from yazilar where id =?');
$sorgu_yazisil -> execute(array($id));

if($sorgu_yazisil -> rowCount()){
    echo'<div class="alert alert-success">kayıt silindi</div> <meta http-equiv="refresh" content="1; url=yazilar.php">';
}else{
    echo'<div class="alert alert-danger">hata oluştu</div> <meta http-equiv="refresh" content="1; url=yazilar.php">';
}

require_once('footer.php'); ?>
