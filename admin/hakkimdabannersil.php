<?php 
require_once('header.php');

$id = $_GET['id'];
$sorgu_hakbansil = $db -> prepare('delete from hakkimdabanner where id=?');
$sorgu_hakbansil -> execute(array($id));
if($sorgu_hakbansil -> rowCount()){
    echo '<div class="alert alert-success">kayıt silindi</div>
    <meta http-equiv="refresh" content="2; url=hakkimdabannersil.php">';
}else{
    echo '<div class="alert alert-danger">hata oluştu</div>';
}





require_once('footer.php'); 
?>


