<?php require_once('header.php'); ?>

<?php

$id=$_GET['id'];
$sorgu_sayfalar =$db-> prepare('delete from sayfalar where id=?');
$sorgu_sayfalar -> execute(array($id));

if($sorgu_sayfalar -> rowCount()){
    echo'silme işlemi gerçekleşti 
    <div class="alert alert-success">silme işlemi gerçekleşti</div>
    <meta http-equiv="refresh" content="1; url=sayfalar.php">';
}else{
    echo'<div class="alert alert-danger">Hata Oluştu</div>';
}


// üstteki satır yerine bu yapı da kullanılabilir
// $sorgu_sayfasil = $db -> prepare('delete from sayfalar where id=?');
// $sorgu_sayfasil -> execute(array($_GET['id']));



?>





<?php require_once('footer.php'); ?>