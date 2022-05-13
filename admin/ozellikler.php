<?php require_once('header.php'); ?>
<!-- özellik ekle start -->
<section id="ozellik" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>Ana Sayfa Özellik Ekle</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form method="post">
                    <div class="form-group">
                        <select name="ikon" class="form-control">
                            <option value="">İkon Seçiniz</option>
                            <option value='<i class="bi bi-apple"></i>'>Appel ıcon</option>
                            <option value='<i class="bi bi-arrow-through-heart-fill"></i>'>kalp</option>
                            <option value='<i class="bi bi-balloon-heart-fill"></i>'>balon kalp</option>
                            <option value='<i class="bi bi-bandaid-fill"></i>'>bant</option>
                            <option value='<i class="bi bi-brightness-low"></i>'>güneş </option>
                            <option value='<i class="bi bi-bug-fill"></i>'>uğur böceği</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozbaslik" placeholder="özellik adı girin" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="ozacıklama" placeholder="özellik kısa açıklması girin" class="form-control">
                    </div>
                    <div class="form-group">
                        <button type="submit" name="ozekle" class="btn btn-dark w-100">Gönder</button>
                    </div>
                </form>
                <?php
        if (isset($_POST['ozekle'])) {
            $ikon = $_POST['ikon'];
            $ozbaslik = $_POST['ozbaslik'];
            $ozacıklama = $_POST['ozacıklama'];

            $sorgu_ozekle = $db->prepare('insert into ozellikler (ikon,ozbaslik,ozacıklama) values (?,?,?)');
            $sorgu_ozekle->execute(array($ikon, $ozbaslik, $ozacıklama));

            if ($sorgu_ozekle->rowCount()) {
                echo '<div class="alert alert-success text-center">kayıt başarılı</div>
                 <meta http-equiv="refresh" content="1; url=ozellikler.php">';
            } else {
                echo '<div class="alert alert-danger text-center">hatalı</div>
                 <meta http-equiv="refresh" content="1; url=ozellikler.php">';
            }
        }

        ?>
            </div>
            <div class="col-md-6">
                <form method="post">
                    <div class="form-group">
                        <input type="text" name="baslik" placeholder="alan başlığı girin" class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="text" name="altbaslik" placeholder="kısa açıklama" class="form-control">
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                            <input type="color" name="renk" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <button type="submit" name="baslikekle" class="btn btn-dark w-100">kaydet</button>
                            </div>
                        </div>
                    </div>
                </form>
                <?php 
               if(isset($_POST['baslikekle'])){
                $sorgu_ozekle2 = $db ->prepare('insert into ozellikler2 (baslik,altbaslik,renk) values (?,?,?)');
                $sorgu_ozekle2 -> execute(array($_POST['baslik'],$_POST['altbaslik'],$_POST['renk']));
                if($sorgu_ozekle2 -> rowCount()){
                    echo '<div class="alert alert-success text-center">kayıt başarılı</div>
                 <meta http-equiv="refresh" content="1; url=ozellikler.php">';
                }else{
                    echo '<div class="alert alert-danger text-center">hata oluştu</div>
                 <meta http-equiv="refresh" content="1; url=ozellikler.php">';
                }
               }
                
                ?>
            </div>
        </div>

       
    </div>
</section>
<!-- özellik ekle end -->

<?php require_once('footer.php'); ?>
<!-- başlik -->