<?php require_once('header.php');
$id=$_GET['id'];
$sorgu_ctaduzenle= $db -> prepare('select * from maincta where id=?');
$sorgu_ctaduzenle -> execute(array($id));
$satir_ctaduzenle = $sorgu_ctaduzenle -> fetch();
?>
<!-- main cta section start -->
<section id="maincta" class="py-3">
    <div class="container">
        <div class="row">
            <h2>ana sayfa cta ayarları</h2>
        </div>
            <form  method="post" class="form-row">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" name="baslik" value="<?php echo $satir_ctaduzenle['baslik'];?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="kisayazi" value="<?php echo $satir_ctaduzenle['kisayazi'];?>" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="color" name="background" value="<?php echo $satir_ctaduzenle['background'];?>" class="form-control w-25" > <small>Arka Plan Renk Seçiniz</small>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-3">
                            
                        <input type="number" name="font" class="form-control" value="<?php echo $satir_ctaduzenle['font'];?>">
                            </div>
                            <div class="col-9 my-auto">
                            <small>Slogan Yazı Boyutu Girin</small>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-3">
                                <input type="number" name="font2" class="form-control" value="<?php echo $satir_ctaduzenle['font2'];?>">
                            </div>
                            <div class="col-9 my-auto">
                                <small>Kısa Açıklama Yazı Boyutunu Girin</small>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="kaydet" class="btn btn-dark">
                    </div>
                </div>
            </form>
    </div>
</section>
<!--  data güncelleme strat -->
<section id="duzenle">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <?php 
                if($_POST){
                    $baslik= $_POST['baslik'];
                    $kisayazi = $_POST['kisayazi'];
                    $background = $_POST['background'];
                    $font = $_POST['font'];
                    $font2 = $_POST['font2'];
                    $sorgu_duzenle = $db -> prepare('update maincta set baslik=?, kisayazi=?, background=?, font=?, font2=? where id=?');
                    $sorgu_duzenle -> execute(array($baslik,$kisayazi,$background,$font,$font2,$id));

                    if($sorgu_duzenle -> rowCount()){
                        echo '<div class="alert alert-success">kayıt güncellendi</div>
                        <meta http-equiv="refresh" content="1; url=maincta.php">';
                    }else{
                        echo '<div class="alert alert-danger">hatalı</div>
                        <meta http-equiv="refresh" content="1; url=maincta.php">';
                    }
                }
                
                ?>
            </div>
        </div>
    </div>
</section>




<?php require_once('footer.php'); ?>

