<?php 
require_once('header.php');

$sorgu_anabanner = $db -> prepare('select * from anabanner order by id desc limit 1');
$sorgu_anabanner -> execute();
$satir_anabanner = $sorgu_anabanner -> fetch();

?>

<!-- banner section start -->
<section id="anabanner" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6 my-auto">
        <h1 class="display-4"><?php echo $satir_anabanner['baslik'];?></h1>
        <?php echo $satir_anabanner['aciklama'];?>
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
        <?php echo $satir_anabanner['link'];?>
        <!-- <video src="img/Eminem - Mockingbird (Official Music Video).mp4" controls width="100%"></video> -->
      </div>
    </div>
  </div>
</div>
            </div>
            <div class="col-md-6 text-center">
            <img src="<?php echo substr($satir_anabanner ['foto'],3);?>" class="img-fluid">
            </div>
        </div>
    </div>
</section>
<!-- banner section end -->

<!-- hizmet section start -->
<section id="anahizmetler">
    <div class="container">
        <div class="row">
            <!-- burası tekrarlanacak döngü ile -->
            <div class="col-4">
                <div class="card">
                    foto gelecek
                    <h2>başlık gelecek</h2>
                    <p>kısa açıklama p kalkacak</p>
                    <a href="#"><button class="btn btn-mor">Devamını Oku</button></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- hizmet section end -->

<!-- hakkımda section start -->
<section id="anahakkimda">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h3>hakkımda</h3>
                <h2>Alt Başlık 2</h2>
                <p>Kısa Açıklama p kalkacak</p>
                <a href="hakkimda.php"><button class="btn btn-mor">Devamını Oku</button></a>
            </div>
            <div class="col-6">
                sabit görsel gelecek
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
<section id="anasoebasvuru">
    <div class="container">
    <div class="row">
        <div class="col-12">
            <h2>Ücretsiz Seo Analizi</h2>
        </div>
    </div>
    <form method="post" class="form-row">
<div class="col-md-4">
    <div class="form-group">
        <input type="text" name="web" placeholder="web site adresinizi girin" class="form-control">
    </div>
</div>
<div class="col-md-4">
    <div class="form-group">
        <input type="email" name="email" class="form-control" placeholder="e posta adresinizi girin">
    </div>
</div>
<div class="col-md-4">
    <button type="submit" class="btn btn-mor">Gönder</button>
</div>
    </div>
    </form>
</section>
<!-- seo başvuru section end -->
<!-- hizmet icerikleri section start -->
<section id="princing">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3>Hizmet İçerikleri</h3>
                <h2>Hizmetlerimizin ayrıntıları</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <div class="card">
               <div class="card-header text-center bg-transparent">
                    <h4>temel paket</h4>
                    <span style="font-size: 40px;">4500</span>
                    <p>aylık</p>
                </div>
                <div class="card-body text-center">
            <ul>
              <li>Hizmet içerik 1</li>
              <li>Hizmet içerik 2</li>
              <li>Hizmet içerik 3</li>
              <li>Hizmet içerik 4</li>
              <li>Hizmet içerik 5</li>
            </ul>
                </div>
                <div class="card-footer bg-transparent">
                    <a href="iletsim.php" class="btn btn-mor w-100">teklif alın</a>
                </div>
               </div>
            </div>
        </div>
    </div>
</section>
<!-- hizmet icerikleri section end -->
<!-- hizmet tanıtım section start -->
<section id="hizmettanitim" class="py-mor">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-white">
                <h2>Başlık gelecek</h2>
                <p>kısa açıklama gelecek</p>
            </div>
            <div class="col-md-6">
                görsel gelecek
            </div>
        </div>
    </div>
</section>
<!-- hizmet tanıtım end -->

<!-- güncel blog section start -->
<section id="blogozet">
    <div class="container">
        <div class="row">
     <div class="col-12 text-center">
         <h4>blog yazıları</h4>
         <h3>en güncel blog yazıları</h3>
     </div>
        </div>
        <div class="row">
            <div class="col-md-4">
               <a href="" class="text-decoration-none">
               <div class="card shadow">
                <img src="" alt="" class="card-img-top">
                <h3>blog başlık gelecek</h3>
                <small>yayınlanma tarihi :aaaa</small>
                </div>
               </a>
            </div>
        </div>
        <div class="row"></div>
    </div>
</section>
<!-- güncel blog section end -->

<?php require_once('footer.php'); ?>