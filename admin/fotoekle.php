<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   
<form method="post" enctype="multipart/form-data">
<input type="file" name="foto" >
<input type="text" name="baslik" placeholder="foto başlık">
<button type="submit">Kaydet</button>
</form>

<?php 
if($_POST){
    
//dosya ismini yakalama
$foto = $_FILES['foto']['name'];
echo $foto;
echo '<br><br><br><br>';

//geçici dosya ismi yakalama

$foto_tmp = $_FILES['foto']['tmp_name'];
echo $foto_tmp;
echo '<br><br><br><br>';

//dosya boyutu yakalama

$foto_size =$_FILES['foto']['size'];
echo $foto_size;

if(18650 <= $foto_size){
    echo 'uygun';
}else{
    echo 'uygun değil';
}
echo '<br><br><br><br>';

// dosya türünü yakalama

$foto_tur= $_FILES['foto']['type'];
echo $foto_tur;

// dosyayı kök dizine gönderme

$dizin = '../img/';
$yuklenecekfoto = $dizin.$_FILES['foto']['name'];

// $yuklenecefoto = "../img/".$_FILES['foto']['name']; bu şekildede yazılabilir

if(move_uploaded_file($_FILES['foto']['tmp_name'],$yuklenecekfoto)){
    echo'<img src="'.$yuklenecekfoto.'">';
}else{
    echo'böyle bir işlem yok';
}

}

?>


</body>
</html>


