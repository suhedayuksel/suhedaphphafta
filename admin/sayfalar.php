<?php require_once('header.php'); ?>

<!--  sayfalar list section start -->
<section id="sayfalarlist">
    <div class="container">
        <div class="row">
            <div class="col-12">
               <span style="font-size: 32px; font-weight:500;">Sayfalar</span>
                <a href="sayfaekle.php"><button class="btn btn-dark">Sayfa Ekle</button></a>
            </div>
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Görsel</th>
                            <th>Başlık</th>
                            <th>Sayfa Başlığı</th>
                            <th>Durum</th>
                            <th>Sayfa Türü</th>
                            <th>Düzenle</th>
                            <th>Sil</th>
                        </tr>
                    </thead>
                    <tbody>
<?php 

$sorgu_sayfalar = $db -> prepare('select * from sayfalar order by id desc');
$sorgu_sayfalar -> execute();

if($sorgu_sayfalar -> rowCount ()){
    foreach($sorgu_sayfalar as $satir_sayfalar){
        ?>

                        <tr>
                            <td><img src="<?php echo $satir_sayfalar['foto']; ?>" class="w-50"> </td>
                            <td style="vertical-align: middle;"> <?php echo $satir_sayfalar['baslik'];?></td>
                            <td style="vertical-align: middle;"> <?php echo $satir_sayfalar['seotitle'];?></td>
                            <td style="vertical-align: middle;"><?php echo $satir_sayfalar['durum'];?></td>
                            <td style="vertical-align: middle;"> <?php echo $satir_sayfalar['sayfaturu'];?></td>
                            <td style="vertical-align: middle;"><a href="sayfadüzenle.php?id=<?php echo $satir_sayfalar['id'];?>"><button class="btn btn-dark">Düzenle</button></a></td>
                            <td style="vertical-align: middle;"><a href="sayfasil.php?id=<?php echo $satir_sayfalar['id'];?>"><button class="btn btn-dark">Sil</button></a></td>
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
<!--  sayfalar list section end -->


<?php require_once('footer.php'); ?>


Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta laborum ipsa, odio blanditiis minima officiis inventore asperiores facilis sunt qui ipsam rerum atque quasi quam corrupti repellendus mollitia nam cumque facere accusantium quia eos beatae harum. Debitis vel ducimus laboriosam rerum impedit dolore odit? Ratione deleniti ducimus nemo odit nisi tenetur consequatur expedita? Sint illum et a, voluptatum dolorum pariatur id, voluptate exercitationem perferendis praesentium nobis eveniet corporis tempora nemo blanditiis eos ipsa laudantium molestias facere quia nesciunt facilis. Est libero accusantium nam obcaecati ea quasi aliquid, vel voluptas consequatur quisquam voluptatem corrupti harum quas ducimus totam? Eos, harum aliquid!