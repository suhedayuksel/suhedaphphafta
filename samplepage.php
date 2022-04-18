<?php
require_once('header.php');

$id = $_GET['id'];
$sorgu_hizmet = $db-> prepare('select * from sayfalar where id=? ');
$sorgu_hizmet-> execute(array($id));
$satir_hizmet = $sorgu_hizmet -> fetch();


?>
<!-- hizmetler banner section start -->
<section id="hizmetbanner" class="py-15" style="background-image: url('<?php echo substr($satir_hizmet['foto'],3);?>');">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
               <h1 class="display-4 text-white"> <?php  echo $satir_hizmet['baslik'];?></h1>
            </div>
        </div>
    </div>
</section>
<!-- hizmetler banner section end -->
<!-- içerik section start -->
<section id="hizmetcontent" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <main>
                <?php echo $satir_hizmet['icerik'];?>


                </main>
            </div>
            <?php require_once('sidebar.php') ?>
        </div>
    </div>
</section>
<!-- içerik section en -->

<?php require_once('footer.php'); ?>