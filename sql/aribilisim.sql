-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 30 Mar 2022, 18:46:23
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aribilisim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(25) NOT NULL,
  `katturu` varchar(15) NOT NULL,
  `ustkat` varchar(30) NOT NULL,
  `meta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori`, `katturu`, `ustkat`, `meta`) VALUES
(12, 'web tasarım', 'Ana Kategori', '-', 'web tasarım'),
(13, 'dijital pazarlama', 'Ana Kategori', '-', 'dijital pazarlama'),
(14, 'grafik tasarım', 'Ana Kategori', '-', 'grafik tasarımı'),
(15, 'html', 'Alt Kategori', 'web tasarım', 'html ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ornek`
--

DROP TABLE IF EXISTS `ornek`;
CREATE TABLE IF NOT EXISTS `ornek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(20) NOT NULL,
  `yas` int(3) NOT NULL,
  `il` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ornek`
--

INSERT INTO `ornek` (`id`, `ad`, `yas`, `il`) VALUES
(6, 'Kaan', 40, 'İstanbul'),
(8, 'Hayko', 40, 'İstanbul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

DROP TABLE IF EXISTS `sayfalar`;
CREATE TABLE IF NOT EXISTS `sayfalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `meta` varchar(160) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `fotoalt` varchar(90) NOT NULL,
  `seotitle` varchar(70) NOT NULL,
  `durum` varchar(10) NOT NULL,
  `sayfaturu` varchar(10) NOT NULL,
  `tarih` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `icerik`, `meta`, `foto`, `fotoalt`, `seotitle`, `durum`, `sayfaturu`, `tarih`) VALUES
(1, 'hakkımda', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit, voluptatibus error corporis labore aperiam doloremque, neque, delectus beatae velit enim eos! Mollitia quisquam incidunt aspernatur maxime vero in, recusandae ex libero autem voluptas officiis suscipit eum, ullam explicabo sed officia. Voluptatem ex ipsum amet eius in repudiandae molestias quas sunt quidem unde dicta accusamus omnis temporibus, laboriosam veniam deleniti possimus sequi dolorum dignissimos non! Pariatur adipisci nisi ex cupiditate porro officiis cumque ab accusantium! Tempora iusto error minus optio ullam hic nostrum, qui repellat molestias minima? Animi quaerat dolorem delectus, excepturi, quo iure, iste consequuntur neque quod dolores hic ullam.</p>\r\n', 'excepturi, quo iure, iste consequuntur neque quod dolores hic ullam.', '../img/foto (5).jpg', 'hakkımda', 'hakkımda', 'Yayınlandı', 'Üst Sayfa', '1994-12-25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilar`
--

DROP TABLE IF EXISTS `yazilar`;
CREATE TABLE IF NOT EXISTS `yazilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `meta` varchar(160) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `fotoalt` varchar(100) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `tarih` varchar(11) NOT NULL,
  `durum` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazilar`
--

INSERT INTO `yazilar` (`id`, `baslik`, `icerik`, `meta`, `foto`, `fotoalt`, `kategori`, `tarih`, `durum`) VALUES
(2, 'web tasarımda dikkat edilmesi gerekenler', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ad minus nam animi culpa quaerat quae laboriosam asperiores possimus quidem reiciendis dicta totam, eaque sapiente nesciunt ab, facere cum similique neque! Quibusdam quo dolores, obcaecati, a suscipit porro facere iste soluta rem ducimus distinctio hic animi veniam. Fuga possimus a dolores omnis fugiat maxime, distinctio error iste consequuntur eum! Autem ducimus repellendus quis ipsam? Unde, animi. Eaque, corrupti!', 'web tasarımı için dikkat edilecek kurallar ', '../img/hakkimda-banner-600x600.jpg', 'web tasarım ', 'web tasarım', '1994-12-25', 'yayinlandi'),
(3, 'seo\'nun web siteleri için önemi', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium deleniti quas cupiditate. Ipsam qui sint autem pariatur iusto modi ipsa quasi delectus blanditiis. Provident animi eos ullam quaerat perspiciatis vitae eum quidem, autem iure unde itaque. Eum nam odio saepe distinctio deserunt, reiciendis suscipit exercitationem eos explicabo! Possimus excepturi provident optio id deleniti alias minima ducimus dolorem aperiam consequuntur, architecto unde corrupti quisquam cupiditate! Repellat, ipsa soluta ad dolores quo cumque atque rem, nostrum nulla error necessitatibus exercitationem, minima voluptatum nesciunt. Asperiores esse atque corrupti numquam ipsam similique dolor repudiandae, quisquam deleniti laboriosam vitae qui facilis blanditiis eos impedit. Adipisci.</p>\r\n\r\n<h2>seo i&ccedil;in yapılacaklar listesi</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium deleniti quas cupiditate. Ipsam qui sint autem pariatur iusto modi ipsa quasi delectus blanditiis. Provident animi eos ullam quaerat perspiciatis vitae eum quidem, autem iure unde itaque. Eum nam odio saepe distinctio deserunt, reiciendis suscipit exercitationem eos explicabo! Possimus excepturi provident optio id deleniti alias minima ducimus dolorem aperiam consequuntur, architecto unde corrupti quisquam cupiditate! Repellat, ipsa soluta ad dolores quo cumque atque rem, nostrum nulla error necessitatibus exercitationem, minima voluptatum nesciunt. Asperiores esse atque corrupti numquam ipsam similique dolor repudiandae, quisquam deleniti laboriosam vitae qui facilis blanditiis eos impedit. Adipisci.</p>\r\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '../img/grafik-tasarim-hizmeti-330x150px.jpg', 'seo\'nun önemi', 'dijital pazarlama', '1996-07-20', 'Yayınlandı'),
(4, 'blog yazısı 3', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi harum architecto, maxime laborum suscipit possimus beatae esse! Nemo, dolor nisi aperiam distinctio commodi sequi repellat facilis accusantium perspiciatis quas similique quibusdam, voluptatibus consequatur! Praesentium dicta amet laborum consequatur? Assumenda libero neque ad suscipit quo eaque modi omnis quaerat dolorem voluptas id similique harum nisi, pariatur cum quibusdam mollitia veritatis rem laudantium. Consectetur, corrupti facilis. Quas minima voluptatum at debitis sapiente? Nisi accusamus, officiis necessitatibus fugit recusandae voluptatibus corporis obcaecati. Cumque non eum iure deserunt sapiente commodi accusamus ipsam, neque libero explicabo porro, sunt totam maiores nisi natus ea numquam. Quidem.</p>\r\n', 'unt sapiente commodi accusamus ipsam, neque libero explicabo porro,', '../img/blog-foto-190x190px.jpg', 'unt sapiente commodi accusamus ipsam, neque libero explicabo porro,', 'dijital pazarlama', '1994-12-22', 'Yayınlandı'),
(6, 'blog yazısı5 ', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse, tempora, laboriosam modi velit iste quisquam suscipit magni obcaecati pariatur dolorum molestiae dolor unde delectus non eius, quo perspiciatis aspernatur sint accusantium? Est et dolores rerum dolore libero soluta iure, numquam unde dolorum. Aut at cum saepe expedita, eum quidem magnam veritatis quas. Neque deleniti distinctio quae quod fuga. Ratione veritatis numquam itaque est, qui ullam distinctio aperiam quasi accusantium nobis accusamus non quam sequi esse, atque at, obcaecati voluptate voluptas voluptates corporis quisquam nulla nam quae inventore. Tempore, laborum itaque sit blanditiis ipsam, reiciendis enim iste molestias debitis inventore eveniet.</p>\r\n', 'ipsam, reiciendis enim iste molestias debitis inventore eveniet.', '../img/foto (4).jpg', 'ipsam, reiciendis enim iste molestias debitis inventore eveniet.', 'dijital pazarlama', '1994-10-12', 'Yayınlandı'),
(7, 'blog yazısı 6', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse, tempora, laboriosam modi velit iste quisquam suscipit magni obcaecati pariatur dolorum molestiae dolor unde delectus non eius, quo perspiciatis aspernatur sint accusantium? Est et dolores rerum dolore libero soluta iure, numquam unde dolorum. Aut at cum saepe expedita, eum quidem magnam veritatis quas. Neque deleniti distinctio quae quod fuga. Ratione veritatis numquam itaque est, qui ullam distinctio aperiam quasi accusantium nobis accusamus non quam sequi esse, atque at, obcaecati voluptate voluptas voluptates corporis quisquam nulla nam quae inventore. Tempore, laborum itaque sit blanditiis ipsam, reiciendis enim iste molestias debitis inventore eveniet.</p>\r\n', 'voluptate voluptas voluptates corporis quisquam nulla nam quae inventore', '../img/foto (9).jpg', 'web tasarım ', 'dijital pazarlama', '2020-03-03', 'Yayınlandı'),
(8, 'sosyal medya takipçi kazanma', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse, tempora, laboriosam modi velit iste quisquam suscipit magni obcaecati pariatur dolorum molestiae dolor unde delectus non eius, quo perspiciatis aspernatur sint accusantium? Est et dolores rerum dolore libero soluta iure, numquam unde dolorum. Aut at cum saepe expedita, eum quidem magnam veritatis quas. Neque deleniti distinctio quae quod fuga. Ratione veritatis numquam itaque est, qui ullam distinctio aperiam quasi accusantium nobis accusamus non quam sequi esse, atque at, obcaecati voluptate voluptas voluptates corporis quisquam nulla nam quae inventore. Tempore, laborum itaque sit blanditiis ipsam, reiciendis enim iste molestias debitis inventore eveniet.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&gt;</p>\r\n', 'ipsam, reiciendis enim iste molestias debitis inventore eveniet.', '../img/foto (2).jpg', 'sosyal medya takipçi kazanma', 'web tasarım', '1995-04-15', 'Yayınlandı');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
