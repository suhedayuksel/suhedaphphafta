<?php require_once('header.php'); ?>
<!-- cta ekle section start -->
<section id="ctaekle"class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>Cta Ayarları</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-gorup">
                        <label><small>CTA GÖRSEL EKLE</small></label>
                        <input type="file" name="foto" id="">
                    </div>
                    <div class="form-group">
                        <label for=""><small>Slogon Ekle</small></label>
                        <input type="text" name="slogan" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for=""><small>Tel No Ekle</small></label>
                        <input type="tel" name="tel" class="form-control">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-dark w-100">Kaydet</button>
                    </div>
                </form>
                <?php 

                if($_POST){
                    $dizin ="../img/";
                    $yuklenecekfoto =$dizin. $_FILES['foto']['name'];
                    $slogan = $_POST['slogan'];
                    $tel = $_POST['tel'];
    
                   if(move_uploaded_file($_FILES['foto']['tmp_name'],$yuklenecekfoto)){
                       $sorgu_cta = $db -> prepare('insert into cta (foto,slogan,tel) values(?,?,?)');
                       $sorgu_cta -> execute(array($yuklenecekfoto,$slogan,$tel));
                       if($sorgu_cta -> rowCount()){
                           echo '<div class="alert alert-success">kayıt başarlı</div>';
                       }else{
                        echo '<div class="alert alert-danger">hata oluştu </div>';
                       }
                   }

                }
               


                
                ?>
            </div>
        </div>
    </div>
</section>
<!-- ct5a ekle section end -->

<?php require_once('footer.php'); ?>