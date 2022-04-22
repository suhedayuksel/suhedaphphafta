<?php 
require_once('header.php'); 

$sorgu_banner = $db -> prepare('select * from hakkimdabanner order by id desc limit 1');
$sorgu_banner -> execute();
$satir_banner= $sorgu_banner -> fetch();


$sorgu_icerik = $db -> prepare('select * from hakkimdaicerik order by id desc limit 1');
$sorgu_icerik -> execute();
$satir_icerik = $sorgu_icerik -> fetch();
?>




<!-- hakkimda banner section start -->
<section id="hakkimda" 

style="
background-image:url('<?php echo substr($satir_banner['foto'],3);?>');
<?php echo $satir_banner['size'];?>
<?php echo $satir_banner['tekrar'];?>
<?php echo $satir_banner['konum'];?>" 

class="py-15">
    <div class="container">
        <div class="row">
        <div class="col-12 text-center text-white">
    <h1 class="display-4"><?php echo $satir_banner['baslik'];?></h1>
        </div>
        </div>
    </div>
</section>
<!-- hakkimda banner section end -->

<!-- hakkımda içerik section start -->
<section id="icerik">
    <div class="container">
        <div class="row">
            <div class="col-md-6 my-auto">
                <img src="<?php echo substr($satir_icerik['foto'],3);?>">
            </div>
            <div class="col-md-6">
           <div class="row">
               <div class="col-12">
               <h2><?php echo $satir_icerik['altbaslik'];?></h2>
                <?php echo $satir_icerik['icerik'];?>
               </div>
           </div>
           <div class="row">
               <div class="col-12">
                   <h2></h2>
                   <p>progress barlar eklenecek</p>
               </div>
           </div>
            </div>
        </div>
    </div>
</section>
<!-- hakkımda içerik section end -->

<!-- cta section start -->
<?php require_once('cta.php');?>
<!-- cta section en -->
<?php require_once('footer.php'); ?>
