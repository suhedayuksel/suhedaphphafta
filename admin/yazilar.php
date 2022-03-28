<?php require_once('header.php'); ?>


<!-- yazı listesi  section start -->
<section id="yazilist" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-2">
                <h3 class="display-4 lead">Yazılar</h3>
            </div>
            <div class="col-3 my-auto">
                <a href="yaziekle.php"><button class="btn btn-dark">Yazı Ekle</button></a>
            </div>
        </div>
        <div class="row">
<div class="col-12">
    <table class="table tabel-striped">
        <thead>
            <tr>
                <th>Foto</th>
                <th>Başlık</th>
                <th>Özet</th>
                <th>Kategori</th>
                <th>Tarih</th>
                <th>Durum</th>
                <th>Düzenle</th>
                <th>Sil</th>
            </tr>
        </thead>
        <tbody>


        <?php
        $sorgu_yazilar = $db -> prepare('select * from yazilar order by id desc');
        $sorgu_yazilar -> execute();
        if($sorgu_yazilar -> rowCount()){
            foreach($sorgu_yazilar as $satir_yazilar){
                ?>
            
            <tr>
                <td><img src="<?php echo $satir_yazilar['foto']; ?>" class="img-fluid"></td>
                <td> <?php  echo $satir_yazilar['baslik']; ?></td>
                <td> <?php  echo substr($satir_yazilar ['icerik'],0,83); ?> ...</td>
                <td> <?php  echo $satir_yazilar['kategori']; ?></td>
                <td> <?php  echo $satir_yazilar['tarih'];?></td>
                <td> <?php  echo $satir_yazilar['durum'];?></td>
                <td> <a href="yazidüzenle.php?id=<?php echo $satir_yazilar['id'];?>"><button class="btn btn-warning">Düzenle</button></a></td>
                <td> <a href="yazisil.php?id=<?php echo $satir_yazilar['id'];?> "><button class="btn btn-danger">Sil</button></a></td>
            </tr>


                <?php
            }
        }

        ?>


         
        </tbody>
    </table>
</div>
        </div>
    </div>
</section>
<!-- yazı listesi section end -->

<?php require_once('footer.php'); ?>