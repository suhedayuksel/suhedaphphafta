<?php require_once('header.php'); ?>
<?php 
$sorgu_banner = $db -> prepare('select * from ayarlar order by id desc limit 1');
$sorgu_banner -> execute();
$satir_banner = $sorgu_banner -> fetch();

?>
<!-- banner section start -->
<section id="blogbanner" class="py-15" style="background-image: url('<?php echo substr($satir_banner['blogbanner'],3);?>');">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center" >
                <small><a href="index.php">Anasayfa</a>/ Blog</small>
                <h1 class="display-4 text-white">Blog</h1>
            </div>
        </div>
    </div>
</section>
<!-- banner section end -->

<!-- search section start -->
<section id="search" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="" method="post" class="form-row">
                    <div class="col-10">
                        <div class="form-group">
                            <input type="search" name="arama" id="" placeholder="Blog Yazısı ara" class="form-control">
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="form-group">
                            <button type="submit" class="btn btn-mor w-100 form-control">ara</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- search section end -->

<!-- blog list section start -->
<section id="bloglist" class="pb-5">
    <div class="container">
        <div class="row">
            <?php 
            $sorgu_bloglist = $db -> prepare('select * from yazilar order by id desc');
            $sorgu_bloglist -> execute();
            if($sorgu_bloglist -> rowCount()){
                foreach($sorgu_bloglist as $satir_bloglist){
                ?>
                    <div class="col-md-4 mt-2">
                    <div class="card shadow">
                    <a href="sample.php?id=<?php echo $satir_bloglist['id'];?>"> <img src=" <?php echo substr($satir_bloglist['foto'],3); ?> " alt="<?php echo $satir_bloglist['fotoalt'];?>" class="card-img-top"></a>
                    <div class="card-body">
                   <a href="sample.php?id=<?php echo $satir_bloglist['id'];?>" class="text-dark text-decoration-none"> <h2 style="font-size:16px;"><?php echo $satir_bloglist ['baslik'];?></h2>
                    <small>Yayınlanma Tarihi : <?php echo $satir_bloglist['tarih'];?> </small></a>
                    </div>
                             </div>
                            </div>
                    <?php
                }
            }
            ?>
            
            
        </div>
    </div>
</section>
<!-- blog list section end -->

<?php require_once('footer.php'); ?>