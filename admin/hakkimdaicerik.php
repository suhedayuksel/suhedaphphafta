<?php require_once('header.php'); ?>

<!-- HAKKIMDA İÇERİK SECTİON START -->
    <section id="hakkimdaicerik" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Hakkımda İçerik Alanı</h2>
                </div>
                <div class="col-12">
                    <form method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for=""><small>yan görsel ekle</small></label>
                            <input type="file" name="foto">
                        </div>
                        <div class="form-group">
                            <label><small>alt başlık ekle</small></label>
                            <input type="text" name="altbaslik"  class="form-control">
                        </div>
                        <div class="form-group">
                        <textarea name="icerik"></textarea>
                        <script>
                            CKEDITOR.replace('icerik');
                        </script>
                        </div>
                        <div class="form-group">
                            <label><small>Alt Başlık 2 Ekle</small></label>
                            <input type="text" name="altbaslik2" class="form-control">
                        </div>
                        <div class="form-group">
                           <div class="row">
                           <div class="col-md-4">
                            <label ><small>Nitelik 1</small></label>
                            <input type="number" name="nit1" class="form-control">
                            </div>
                            <div class="col-md-4"><label ><small>Nitelik 2</small></label>
                            <input type="number" name="nit2" class="form-control"></div>
                            <div class="col-md-4"><label ><small>Nitelik 3</small></label>
                            <input type="number" name="nit3" class="form-control"></div>
                           </div>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="gönder" class="btn btn-dark w-100">
                        </div>
                    </form>
                    <?php 
                    if($_POST){
                        $yuklenecekfoto = "../img/".$_FILES['foto']['name'];
                        $altbaslik = $_POST['altbaslik'];
                        $icerik = $_POST['icerik'];
                        
                        if(move_uploaded_file($_FILES['foto']['tmp_name'],$yuklenecekfoto)){
                            $sorgu_hakkimdaicerik = $db -> prepare('insert into hakkimdaicerik(foto,altbaslik,icerik,altbaslik2,nit1,nit2,nit3) values(?,?,?,?,?,?,?)');
                            
                            $sorgu_hakkimdaicerik -> execute(array($yuklenecekfoto,$altbaslik,$icerik,$_POST['altbaslik2'],$_POST['nit1'],$_POST['nit2'],$_POST['nit3']));

                            if($sorgu_hakkimdaicerik -> rowCount()){
                                echo'<div class="alert alert-success">içerik eklendi</div>';
                            }else{
                                echo '<div class="alert alert-danger">hata oluştu</div>';
                            }
                        }
                    }
                    
                    
                    ?>
                </div>
            </div>
            
        </div>
    </section>
<!-- HAKKIMDA SECTİON END -->


<?php require_once('footer.php'); ?>
