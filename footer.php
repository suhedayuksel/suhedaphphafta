<!-- footer Section start -->
<section id="footer" class="pt-5 pb-1 text-white">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    Logo Gelecek <br> Kısa Açıklama Gelecek <br> Sos.Med İkonları Gelecek
                </div>
                <div class="col-md-3">
                    <h5>Hızlı Menü</h5>
                    Menü Elemanları Gelecek
                </div>
                <div class="col-md-3">
                    <h5>İletişim</h5>
                    Adres gelecek <br> Telefon Gelecek <br> Email Gelecek
                </div>
                <div class="col-md-3">
                    <h5>E-Bülten Üyelik</h5>
                    <small>Güncel Blog Yazıları ve Yeni Teknolojiler Hakkında Bilgi Almak için Lütfen Üye Olun.</small>
                    <form method="post" class="mt-2">
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="E-Posta Adresiniz">
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Gönder" class="btn btn-success w-100">
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                  <?php
                  $sorgu_bottom = $db -> prepare('select * from ayarlar order by id desc limit 1');
                  $sorgu_bottom -> execute();
                  $satir_bottom = $sorgu_bottom -> fetch();
                  echo $satir_bottom['copy'].' '.date('Y');
                  
                  ?>
                </div>
                <div class="col-md-6 text-right">
                    Web Sitesi <a href="#">ŞÜHEDA YÜKSEL</a> Tarafından Yapılmıştır.
                </div>
            </div>
        </div>
    </section>
    <!-- footer Section end -->



    <script src="js/jquery.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
