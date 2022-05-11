<?php
require_once('header.php');

$sorgu_anabanner = $db->prepare('select * from anabanner order by id desc limit 1');
$sorgu_anabanner->execute();
$satir_anabanner = $sorgu_anabanner->fetch();

?>

<!-- banner section start -->
<section id="anabanner" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6 my-auto">
                <h1 class="display-4"><?php echo $satir_anabanner['baslik']; ?></h1>
                <?php echo $satir_anabanner['aciklama']; ?>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-mor" data-toggle="modal" data-target="#exampleModal">
                    <span style="font-size: 20px;"> tanıtımı izle</span> <i class="bi bi-play" style="font-size: 20px;"></i>
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tanıtım videosu</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <?php echo $satir_anabanner['link']; ?>
                                <!-- <video src="img/Eminem - Mockingbird (Official Music Video).mp4" controls width="100%"></video> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 text-center">
                <img src="<?php echo substr($satir_anabanner['foto'], 3); ?>" class="img-fluid">
            </div>
        </div>
    </div>
</section>
<!-- banner section end -->

<!-- hizmet section start -->
<section id="anahizmetler" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2>Hizmetler</h2>
            </div>
        </div>
        <div class="row">
            <?php
            $sorgu_hizmetler = $db->prepare('select * from sayfalar where sayfaturu = "Alt sayfa" order by baslik desc ');
            $sorgu_hizmetler->execute();
            if ($sorgu_hizmetler->rowCount()) {
                foreach ($sorgu_hizmetler as $satir_hizmetler) {
            ?>
                    <div class="col-4">
                        <div class="card text-center">
                            <img src="<?php echo substr($satir_hizmetler['foto'], 3); ?>" class="img-fluid">
                            <h2 style="font-size: 24px;" class="mt-3"><?php echo $satir_hizmetler['baslik']; ?></h2>
                            <?php echo substr($satir_hizmetler['icerik'], 0, 150); ?>
                            <br> <a href="samplepage.php?id=<?php echo $satir_hizmetler['id']; ?>"><button class="btn btn-mor mt-4">Devamını Oku</button></a>
                        </div>
                    </div>
            <?php
                }
            }
            ?>

        </div>
    </div>
</section>
<!-- hizmet section end -->

<!-- hakkımda section start -->
<?php
$sorgu_hakkimda = $db->prepare('select * from sayfalar where baslik = "Hakkımda"');
$sorgu_hakkimda->execute();
$satir_hakkimda = $sorgu_hakkimda->fetch();

?>

<section id="anahakkimda" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-6 text-center">
                <h3><?php echo $satir_hakkimda['baslik']; ?></h3>
                <?php echo substr($satir_hakkimda['icerik'], 0, 800); ?>
                <br><a href="hakkimda.php"><button class="btn btn-mor mt-4">Devamını Oku</button></a>
            </div>
            <div class="col-6 my-auto">
                <img src="img/hakkimda.png" alt="hakkımda" class="img-fluid">
            </div>
        </div>
    </div>
</section>
<!-- hakkımda section end -->

<!--özellikler section start  -->
<section id="anaozellikler">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3>Özelliklerimiz</h3>
                <h2>Alt Başlık</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                ikon gelecek <br>
                başlık gelecek <br>
                kısa yazı gelecek
            </div>
        </div>
    </div>
</section>
<!-- özellikler section end -->

<!-- seo başvuru section start -->
<section id="anaseobasvuru" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2>Ücretsiz Seo Analizi</h2>
            </div>
        </div>
       <div class="col-7 mx-auto">
       <form method="post" class="form-row">
            <div class="col-md-5">
                <div class="form-group">
                    <input type="text" name="web" placeholder="web site adresinizi girin" class="form-control">
                </div>
            </div>
            <div class="col-md-5">
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="e posta adresinizi girin">
                </div>
            </div>
            <div class="col-md-2">
                <button type="submit" name="analiz" class="btn btn-warning w-100">Gönder</button>
            </div>
    </div>
    </form>
    <?php 
    if(isset($_POST['analiz'])){
        $web = $_POST['web'];
        $email = $_POST['email'];
        $puan= "-";
        $sorgu_analiz = $db -> prepare('insert into seoanaliz(web,email,puan) values(?,?,?)');
        $sorgu_analiz -> execute(array($web,$email,$puan));
        if($sorgu_analiz -> rowCount()){
            echo '<div class="text-white text-center">'.$web.'adresi için ücretsiz Seo Analizi talebiniz alınmıştır.</div>';
        }else{
            echo'hata oluştu lütfen tekrar deneyin';
        }
    }
    
    
    ?>
       </div>
</section>
<!-- seo başvuru section end -->
<!-- hizmet icerikleri section start -->
<section id="princing" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h3>Hizmet İçerikleri</h3>
                <h2>Hizmetlerimizin ayrıntıları</h2>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card shadow">
                    <?php  
                    
                    $sorgu_paket1 = $db ->prepare('select * from paket1 order by id desc limit 1');
                    $sorgu_paket1 -> execute();
                    $satir_paket1 = $sorgu_paket1 -> fetch();
                    ?>
                    <div class="card-header text-center bg-transparent">
                        <h4><?php echo $satir_paket1['baslik1'];?></h4>
                        <span style="font-size: 40px;"><?php echo $satir_paket1['fiyat1'];?>tl</span>
                        <p>aylık</p>
                    </div>
                    <div class="card-body text-center">
                        <ul>
                            <li><?php echo$satir_paket1['ozellik1a']; ?></li>
                            <li><?php echo $satir_paket1['ozellik1b']; ?></li>
                            <li><?php echo $satir_paket1['ozellik1c']; ?></li>
                            <li><?php echo $satir_paket1['ozellik1d']; ?></li>
                            <li><?php echo $satir_paket1['ozellik1e']; ?></li>
                        </ul>
                    </div>
                    <div class="card-footer bg-transparent">
                        <a href="iletsim.php" class="btn btn-warning w-100">teklif alın</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow">
                    <?php  
                    
                    $sorgu_paket2 = $db ->prepare('select * from paket2 order by id desc limit 1');
                    $sorgu_paket2 -> execute();
                    $satir_paket2 = $sorgu_paket2 -> fetch();
                    ?>
                    <div class="card-header text-center bg-transparent">
                        <h4><?php echo $satir_paket2['baslik2'];?></h4>
                        <span style="font-size: 40px;"><?php echo $satir_paket2['fiyat2'];?>tl</span>
                        <p>aylık</p>
                    </div>
                    <div class="card-body text-center">
                        <ul>
                            <li><?php echo $satir_paket2['ozellik2a']; ?></li>
                            <li><?php echo $satir_paket2['ozellik2b']; ?></li>
                            <li><?php echo $satir_paket2['ozellik2c']; ?></li>
                            <li><?php echo $satir_paket2['ozellik2d']; ?></li>
                            <li><?php echo $satir_paket2['ozellik2e']; ?></li>
                        </ul>
                    </div>
                    <div class="card-footer bg-transparent">
                        <a href="iletsim.php" class="btn btn-warning w-100">teklif alın</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow">
                    <?php  
                    
                    $sorgu_paket3 = $db ->prepare('select * from paket3 order by id desc limit 1');
                    $sorgu_paket3 -> execute();
                    $satir_paket3 = $sorgu_paket3 -> fetch();
                    ?>
                    <div class="card-header text-center bg-transparent">
                        <h4><?php echo $satir_paket3['baslik3'];?></h4>
                        <span style="font-size: 40px;"><?php echo $satir_paket3['fiyat3'];?>tl</span>
                        <p>aylık</p>
                    </div>
                    <div class="card-body text-center">
                        <ul>
                            <li><?php echo $satir_paket3['ozellik3a']; ?></li>
                            <li><?php echo $satir_paket3['ozellik3b']; ?></li>
                            <li><?php echo $satir_paket3['ozellik3c']; ?></li>
                            <li><?php echo $satir_paket3['ozellik3d']; ?></li>
                            <li><?php echo $satir_paket3['ozellik3e']; ?></li>
                        </ul>
                    </div>
                    <div class="card-footer bg-transparent">
                        <a href="iletsim.php" class="btn btn-warning w-100">teklif alın</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- hizmet icerikleri section end -->

<!-- Hizmet Tanıtım Section Start -->
<?php
$sorgu_ctamain = $db -> prepare('select * from maincta order by id desc limit 1');
$sorgu_ctamain -> execute();
$satir_ctamain = $sorgu_ctamain -> fetch();
?>

<section id="hizmetTanitim" class="py-5" style="background-color:<?php echo $satir_ctamain['background']; ?> ;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-white">
                <h2 style="font-size:<?php echo $satir_ctamain['font']; ?>px;"><?php echo $satir_ctamain['baslik']; ?></h2>
                <p style="font-size:<?php echo $satir_ctamain['font2']; ?>px;" ><?php echo $satir_ctamain['kisayazi']; ?></p>
            </div>
            <div class="col-md-6 my-auto text-center">
                <a href="tel:+905555555555"><button class="btn btn-warning">Hemen Arayın</button></a>
            </div>
        </div>
    </div>
</section>
<!-- Hizmet Tanıtım Section End -->

<!-- güncel blog section start -->
<section id="blogozet" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h4>blog yazıları</h4>
                <h3>en güncel blog yazıları</h3>
            </div>
        </div>
        <div class="row my-4">
            <?php
            $sorgu_blog = $db->prepare('select * from yazilar order by id desc limit 3');
            $sorgu_blog->execute();
            if ($sorgu_blog->rowCount()) {
                foreach ($sorgu_blog as $satir_blog) {
            ?>
                    <div class="col-md-4">
                        <a href="sample.php?id=<?php echo $satir_blog['id']; ?>" class="text-decoration-none text-dark">
                            <div class="card shadow">
                                <img src="<?php echo substr($satir_blog['foto'], 3); ?>" alt="<?php echo $satir_blog['fotoalt']; ?>" class="card-img-top mb-3">
                                <div class="card-body">
                                <h3 style="font-size: 24px;"><?php echo $satir_blog['baslik']; ?></h3>
                                <small class="mb-3">yayınlanma tarihi : <?php echo $satir_blog['tarih'];?></small>
                                </div>
                            </div>
                        </a>
                    </div>
            <?php
                }
            }

            ?>

        </div>
        <div class="row">
            <div class="col-12 text-center">
                <a href="blog.php" class="btn btn-mor">Tümünü Okuyun</a>
            </div>
        </div>
    </div>
</section>
<!-- güncel blog section end -->

<?php require_once('footer.php'); ?>