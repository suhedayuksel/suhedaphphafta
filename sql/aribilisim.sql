-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 27 Nis 2022, 18:26:15
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
-- Tablo için tablo yapısı `anabanner`
--

DROP TABLE IF EXISTS `anabanner`;
CREATE TABLE IF NOT EXISTS `anabanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(150) NOT NULL,
  `aciklama` varchar(300) NOT NULL,
  `link` varchar(500) NOT NULL,
  `foto` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `anabanner`
--

INSERT INTO `anabanner` (`id`, `baslik`, `aciklama`, `link`, `foto`) VALUES
(1, 'arı bilişim dijital hizmetler', '<p><strong>dijital reklamcılık,</strong> <strong>web tasarımı </strong>ve <strong>seo hizmetleri</strong> i&ccedil;in hızlı g&uuml;venilir ve kaliteli sonu&ccedil; alma i&ccedil;in hemen arayın</p>\r\n', '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/hcF4VKXe5d0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '../img/ari-bilisim-dijitalhizmetler-500x500.gif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE IF NOT EXISTS `ayarlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adres` varchar(100) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `harita` text NOT NULL,
  `tanitim` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `blogbanner` varchar(100) NOT NULL,
  `iletisimbanner` varchar(100) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `analitik` text NOT NULL,
  `konsol` text NOT NULL,
  `piksel` text NOT NULL,
  `copy` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `adres`, `telefon`, `email`, `harita`, `tanitim`, `logo`, `blogbanner`, `iletisimbanner`, `facebook`, `instagram`, `twitter`, `whatsapp`, `analitik`, `konsol`, `piksel`, `copy`) VALUES
(1, 'Lorem Ipsum Dolor Sit Amet', '05555555555', 'kaan@kaan.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3011.6504900450736!2d29.021533914711632!3d40.9891335285528!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab8679bfb3d31%3A0x7d75715e081dfa5c!2sAr%C4%B1%20Bilgi%20Bili%C5%9Fim%20Teknolojileri%20Akademisi%20(Kad%C4%B1k%C3%B6y%20%C5%9Eube)!5e0!3m2!1str!2str!4v1649097246432!5m2!1str!2str\" width=\"100%\" height=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pharetra egestas leo non eleifend. ', '../img/logo.webp', '../img/blog-banner.jpg', '../img/iletisim-banner.jpeg', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://wa.me/05555555555', 'wefwewdcwdcwfewverwfv', 'verveveververververververver', 'verververververveververververver', 'Her hakkı Saklıdır &copy; Arı Bilişim.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cta`
--

DROP TABLE IF EXISTS `cta`;
CREATE TABLE IF NOT EXISTS `cta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `slogan` varchar(100) NOT NULL,
  `tel` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `cta`
--

INSERT INTO `cta` (`id`, `foto`, `slogan`, `tel`) VALUES
(1, '../img/hakkimda-banner-1500x600px.jpg', 'Kaliteli Hizmet İçin Bizi Hemen Arayın', '05447894323');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimdabanner`
--

DROP TABLE IF EXISTS `hakkimdabanner`;
CREATE TABLE IF NOT EXISTS `hakkimdabanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(150) NOT NULL,
  `baslik` varchar(150) NOT NULL,
  `konum` varchar(50) NOT NULL,
  `tekrar` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hakkimdabanner`
--

INSERT INTO `hakkimdabanner` (`id`, `foto`, `baslik`, `konum`, `tekrar`, `size`) VALUES
(4, '../img/dijital-pazarlama-banner-1500x600px.jpg', 'hakkımda', 'background-position:center center;', 'background-repeat:no-repeat;', 'background-size:cover;'),
(5, '../img/dijital-pazarlama-banner-1500x600px.jpg', 'HAKKIMDA', 'background-position:center center;', 'background-repeat:no-repeat;', 'background-size:cover;');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimdaicerik`
--

DROP TABLE IF EXISTS `hakkimdaicerik`;
CREATE TABLE IF NOT EXISTS `hakkimdaicerik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(150) NOT NULL,
  `altbaslik` varchar(100) NOT NULL,
  `icerik` text NOT NULL,
  `altbaslik2` varchar(50) NOT NULL,
  `nit1` varchar(3) NOT NULL,
  `nit2` varchar(3) NOT NULL,
  `nit3` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hakkimdaicerik`
--

INSERT INTO `hakkimdaicerik` (`id`, `foto`, `altbaslik`, `icerik`, `altbaslik2`, `nit1`, `nit2`, `nit3`) VALUES
(1, '../img/ari-bilisim-logo-512x97px.png', 'hakkımda', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis reprehenderit molestias enim, eos asperiores quasi rem explicabo voluptas voluptates exercitationem et commodi numquam vitae nostrum veritatis natus cumque alias iure placeat. Tempore quisquam incidunt iure unde? Explicabo sed fuga tempore placeat expedita illo ipsum quidem velit! Dignissimos culpa possimus esse iste aspernatur repellat ullam dolor pariatur? Repellat cupiditate autem modi vero placeat reprehenderit quibusdam, ad quas, veritatis qui inventore repudiandae nisi perferendis unde accusantium quaerat voluptate consectetur maxime provident ipsam quia id? Dicta, dignissimos laboriosam sint voluptate sit consequuntur repellendus autem quo mollitia ab! Fuga obcaecati at vel eligendi sequi.</p>\r\n', '', '', '', ''),
(2, '../img/dijital-pazarlama-hizmeti-330x150px.jpg', 'icerik', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis reprehenderit molestias enim, eos asperiores quasi rem explicabo voluptas voluptates exercitationem et commodi numquam vitae nostrum veritatis natus cumque alias iure placeat. Tempore quisquam incidunt iure unde? Explicabo sed fuga tempore placeat expedita illo ipsum quidem velit! Dignissimos culpa possimus esse iste aspernatur repellat ullam dolor pariatur? Repellat cupiditate autem modi vero placeat reprehenderit quibusdam, ad quas, veritatis qui inventore repudiandae nisi perferendis unde accusantium quaerat voluptate consectetur maxime provident ipsam quia id? Dicta, dignissimos laboriosam sint voluptate sit consequuntur repellendus autem quo mollitia ab! Fuga obcaecati at vel eligendi sequi.</p>\r\n', '', '', '', ''),
(3, '../img/hakkimda.png', 'İçerik', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia minus fuga quod laborum dolorem possimus, mollitia quisquam provident at voluptatibus debitis quaerat reiciendis, obcaecati aperiam ea aliquam. Quidem, nam saepe.</p>\r\n', '', '', '', ''),
(4, '../img/hakkimda.png', 'HAKKIMDA', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsa deserunt tenetur iure modi esse eveniet eum natus, facilis dolores iste cum delectus consequuntur fugit suscipit veniam. Ipsa saepe rem aut non sunt, ea tenetur cum odio enim a repellendus assumenda inventore sed modi quos? Repellendus doloremque id expedita quibusdam magnam quaerat aperiam dignissimos fuga quas minus blanditiis asperiores, ipsam deserunt ut optio in repellat dolorum animi similique veniam facilis cupiditate reprehenderit. Nesciunt quisquam fugit eos assumenda praesentium? Aliquam voluptatum dolore qui dolores. Consequuntur exercitationem alias nisi non facere eius adipisci cum, laboriosam blanditiis autem error iste? Magnam, quibusdam aut ab, consectetur voluptatem quasi suscipit minima ex dolores fuga quo quisquam totam placeat hic qui cum ut aperiam nostrum adipisci vitae! Ipsa ab sapiente laborum. Pariatur ad tempora laborum magnam nam earum laboriosam minima atque optio dolor maiores neque, officiis iste, veritatis, beatae voluptatum natus cupiditate. Laborum vero ex veritatis ea possimus! Tempore natus cupiditate incidunt ipsa consequatur. Nisi eaque quam, quae debitis earum dolorem expedita magni eligendi laboriosam quis rem sequi non porro consectetur error excepturi neque vitae a at molestiae praesentium tempore esse necessitatibus omnis! Delectus eum recusandae aliquid quisquam suscipit voluptas facere itaque facilis! Ipsa odio labore nostrum.</p>\r\n', '', '', '', ''),
(5, '../img/grafik-tasarim-icerik-500x500px.jpg', 'hakkımda', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsa deserunt tenetur iure modi esse eveniet eum natus, facilis dolores iste cum delectus consequuntur fugit suscipit veniam. Ipsa saepe rem aut non sunt, ea tenetur cum odio enim a repellendus assumenda inventore sed modi quos? Repellendus doloremque id expedita quibusdam magnam quaerat aperiam dignissimos fuga quas minus blanditiis asperiores, ipsam deserunt ut optio in repellat dolorum animi similique veniam facilis cupiditate reprehenderit. Nesciunt quisquam fugit eos assumenda praesentium? Aliquam voluptatum dolore qui dolores. Consequuntur exercitationem alias nisi non facere eius adipisci cum, laboriosam blanditiis autem error iste? Magnam, quibusdam aut ab, consectetur voluptatem quasi suscipit minima ex dolores fuga quo quisquam totam placeat hic qui cum ut aperiam nostrum adipisci vitae! Ipsa ab sapiente laborum. Pariatur ad tempora laborum magnam nam earum laboriosam minima atque optio dolor maiores neque, officiis iste, veritatis, beatae voluptatum natus&nbsp;</p>\r\n', 'Yetkinliklerim', '85', '92', '89');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori`, `katturu`, `ustkat`, `meta`) VALUES
(2, 'Web Tasarım', 'Ana Kategori', '-', 'Web Tasarım ve kodlama üzerine bilgiler'),
(3, 'Grafik Tasarım', 'Ana Kategori', '-', 'Grafik Tasarım ve Prensipleri Hakkında Bilgiler'),
(4, 'Dijital Pazarlama', 'Ana Kategori', '-', 'Sosyal Medya ve Google Süreçleri Hakkında Bilgiler'),
(5, 'Html', 'Alt Kategori', 'Web Tasarım', 'Html, Bir Web Sitesinin Temel Kod Yapısıdır'),
(7, 'Css', 'Alt Kategori', 'Web Tasarım', 'Web Sitelerinin stillendirilmesi için kullanılan yapı'),
(8, 'Reackt', 'Ana Kategori', '-', 'Javascript Kütüphanesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

DROP TABLE IF EXISTS `mesajlar`;
CREATE TABLE IF NOT EXISTS `mesajlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `konu` varchar(13) NOT NULL,
  `mesaj` text NOT NULL,
  `durum` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `ad`, `email`, `konu`, `mesaj`, `durum`) VALUES
(1, 'Hayko Cepkin', 'hayko@hayko.com', 'Şikayet', 'Sevgili Kaan, sana o kadar para ödedim hala web sitemi yapmadın.', 'Okunmadı'),
(2, 'Müzeyyen Senar', 'muzo@muzo.com', 'Teknik Destek', 'Kaancım, siteye mesajlar mail olarak bana gelmiyor. Bi zahmet kontrol eder misin?', 'Okundu'),
(4, 'asfdasdfasd', 'kaan@kaan.com', 'Öneri', 'asdasdasdasdasda', 'Okunmadı');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `icerik`, `meta`, `foto`, `fotoalt`, `seotitle`, `durum`, `sayfaturu`, `tarih`) VALUES
(1, 'Hakkımda', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, eius quisquam assumenda, atque exercitationem optio in magni error, alias illum tempore reprehenderit cum a dignissimos praesentium quae veniam. Libero soluta iure similique, explicabo inventore porro voluptatum impedit consectetur, assumenda ab eaque nam aperiam id nostrum ipsum animi pariatur, beatae reprehenderit repellat sequi laudantium recusandae. Perferendis nesciunt cumque error, cum hic tempora repellat? Iusto dolor recusandae, molestias magni ex qui quae tempora atque deserunt.</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, eius quisquam assumenda, atque exercitationem optio in magni error, alias illum tempore reprehenderit cum a dignissimos praesentium quae veniam. Libero soluta iure similique, explicabo inventore porro voluptatum impedit consectetur, assumenda ab eaque nam aperiam id nostrum ipsum animi pariatur, beatae reprehenderit repellat sequi laudantium recusandae. Perferendis nesciunt cumque error, cum hic tempora repellat? Iusto dolor recusandae, molestias magni ex qui quae tempora atque deserunt.</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, eius quisquam assumenda, atque exercitationem optio in magni error, alias illum tempore reprehenderit cum a dignissimos praesentium quae veniam. Libero soluta iure similique, explicabo inventore porro voluptatum impedit consectetur, assumenda ab eaque nam aperiam id nostrum ipsum animi pariatur, beatae reprehenderit repellat sequi laudantium recusandae. Perferendis nesciunt cumque error, cum hic tempora repellat? Iusto dolor recusandae, molestias magni ex qui quae tempora atque deserunt.</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, eius quisquam assumenda, atque exercitationem optio in magni error, alias illum tempore reprehenderit cum a dignissimos praesentium quae veniam. Libero soluta iure similique, explicabo inventore porro voluptatum impedit consectetur, assumenda ab eaque nam aperiam id nostrum ipsum animi pariatur, beatae reprehenderit repellat sequi laudantium recusandae. Perferendis nesciunt cumque error, cum hic tempora repellat? Iusto dolor recusandae, molestias magni ex qui quae tempora atque deserunt.</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed, eius quisquam assumenda, atque exercitationem optio in magni error, alias illum tempore reprehenderit cum a dignissimos praesentium quae veniam. Libero soluta iure similique, explicabo inventore porro voluptatum impedit consectetur, assumenda ab eaque nam aperiam id nostrum ipsum animi pariatur, beatae reprehenderit repellat sequi laudantium recusandae. Perferendis nesciunt cumque error, cum hic tempora repellat? Iusto dolor recusandae, molestias magni ex qui quae tempora atque deserunt.</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/hakkimda-banner-1500x600px.jpg', 'Hakkımda', 'Hakkımda | Arı Bilişim', 'Yayınlandı', 'Üst Sayfa', '2022-03-30'),
(2, 'Web Tasarım Hizmeti', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/web-tasarim-hizmeti-500x334px.jpg', 'Web Tasarım Hizmeti', 'Web Tasarım Hizmeti | Arı Bilişim', 'Yayınlandı', 'Alt Sayfa', '2022-03-30'),
(3, 'Grafik Tasarım Hizmeti', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/grafik-tasarim-hizmeti-330x150px.jpg', 'Grafik Tasarım Hizmeti', 'Grafik Tasarım Hizmeti | Arı Bilişim', 'Yayınlandı', 'Alt Sayfa', '2022-03-30'),
(4, 'Dijital Pazarlama Hizmeti', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore neque mollitia quod sed. Deleniti cupiditate delectus sequi, qui, repellendus nobis tempore ullam optio magni eligendi ratione voluptatibus, sint illum possimus temporibus nesciunt dicta iusto voluptate! Maxime excepturi aperiam, officiis illo sit sequi fugit. Laborum, blanditiis? Reiciendis sequi earum obcaecati consequatur quam officia reprehenderit nihil quas soluta. Id quam cupiditate nisi nostrum aliquid consequuntur incidunt illum, fugit doloremque culpa ullam atque quo dolores cum libero expedita.</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/dijital-pazarlama-banner-1500x600px.jpg', 'Dijital Pazarlama Hizmeti', 'Dijital Pazarlama Hizmeti', 'Yayınlandı', 'Alt Sayfa', '2022-03-30');

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
(1, 'Web Tasarımda Dikkat Edilmesi Gerekenler', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta in voluptatum ullam cumque accusamus repudiandae magni eius possimus reprehenderit animi, consequatur aliquam, quas alias esse veniam sunt omnis quod. Pariatur excepturi labore adipisci dolore sed qui eaque molestias, consectetur, odit laboriosam nobis distinctio sunt accusamus! Animi iure quam illum asperiores accusamus vel porro laborum eum numquam distinctio officiis recusandae, hic ad, facilis reprehenderit, quia fuga facere quis architecto maxime consectetur labore. Laudantium vitae incidunt molestias?', 'Web Tasarımı için Dikkat Edilecek Kurallar ve Standartlar', '../img/web-tasarim-hizmeti-500x334px.jpg', 'Web Tasarım Standartları', 'Web Tasarım', '2022-03-25', 'Yayınlandı'),
(2, 'Seonun Web Siteleri için Önemi', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto corporis sit quos commodi expedita id praesentium, molestiae, deserunt tenetur quisquam inventore doloribus aliquid? Iste, sunt amet illo eum quod debitis deleniti voluptas consequuntur cum dolor, at pariatur. Minus tempora ipsa consequuntur excepturi facilis in sapiente iusto tempore a voluptatum commodi eius, est placeat. Non veritatis nam quisquam molestiae, dolore natus, voluptatem optio eos aspernatur odio rem asperiores dicta culpa quidem animi fugit, hic est ea dolor commodi tempora! Provident tempora qui impedit nam eveniet nisi, ad inventore voluptatum, soluta vero ut sit autem. Quaerat sed non tempore quisquam illo quis?</p>\n\n<h2>Seo i&ccedil;in Yapılacaklar Listesi</h2>\n\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto corporis sit quos commodi expedita id praesentium, molestiae, deserunt tenetur quisquam inventore doloribus aliquid? Iste, sunt amet illo eum quod debitis deleniti voluptas consequuntur cum dolor, at pariatur. Minus tempora ipsa consequuntur excepturi facilis in sapiente iusto tempore a voluptatum commodi eius, est placeat. Non veritatis nam quisquam molestiae, dolore natus, voluptatem optio eos aspernatur odio rem asperiores dicta culpa quidem animi fugit, hic est ea dolor commodi tempora! Provident tempora qui impedit nam eveniet nisi, ad inventore voluptatum, soluta vero ut sit autem. Quaerat sed non tempore quisquam illo quis?</p>\n', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '../img/dijital-pazarlama-hizmeti-330x150px.jpg', 'Seonun Önemi', 'Dijital Pazarlama', '2022-03-10', 'Yayınlandı'),
(3, 'Blog Yazısı 3', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/dijital-pazarlama-banner-1500x600px.jpg', 'Blog Yazısı 3', 'Reackt', '2022-03-28', 'Yayınlandı'),
(4, 'Blog Yazısı 4', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/foto (5).jpg', 'Blog Yazısı 4', 'Css', '2022-03-28', 'Yayınlandı'),
(5, 'Blog Yazısı 5', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/foto (6).jpg', 'Blog Yazısı 5', 'Grafik Tasarım', '2022-03-28', 'Yayınlandı'),
(6, 'Blog Yazısı 6', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/hakkimda-banner-1500x600px.jpg', 'Blog Yazısı 6', 'Html', '2022-03-28', 'Yayınlandı'),
(7, 'Sosyal Medyada Takipçi Kazanma', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n\r\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Debitis ratione facere soluta reprehenderit quam ullam ducimus. Sequi fuga nostrum commodi iure corrupti, officia cum pariatur libero voluptatem molestias enim minus mollitia laudantium earum autem ducimus eum accusantium eaque inventore quisquam aspernatur asperiores. Magni dolor expedita nesciunt recusandae fugit. Quia, dolor eveniet doloribus molestias cupiditate expedita debitis ipsam dignissimos officia ut temporibus soluta ullam nulla neque facere placeat dolorem tenetur qui est harum. Earum exercitationem laudantium vitae placeat aspernatur alias eaque autem adipisci deleniti. Quasi explicabo rerum eligendi. Impedit magni obcaecati quibusdam culpa ipsum quis dolorem harum illum. Modi, nesciunt? Ipsa!</p>\r\n', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '../img/aaaa3.webp', 'Sosyal Medyada Takipçi Kazanma', 'Dijital Pazarlama', '2022-03-06', 'Yayınlandı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazilara`
--

DROP TABLE IF EXISTS `yazilara`;
CREATE TABLE IF NOT EXISTS `yazilara` (
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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adiniz` varchar(50) NOT NULL,
  `soyadiniz` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `yorum` text NOT NULL,
  `baslik` varchar(150) NOT NULL,
  `durum` varchar(15) NOT NULL,
  `tarih` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `adiniz`, `soyadiniz`, `email`, `yorum`, `baslik`, `durum`, `tarih`) VALUES
(1, 'şüheda', 'yüksel', 'suheda_yuksel_28@hotmail.com', 'çok tatlı bir yazı', 'Sosyal Medyada Takipçi Kazanma', 'onaylandı', '16,042022'),
(4, 'büşra', 'kegaki', 'busra_kegaki@hotmail.com', 'dfjksdhjfgdfg', 'Blog Yazısı 6', 'onaylanmadı', '25,12,2022'),
(5, 'mahmut', 'tuncer', 'mahmut_tuncer@hotmail.com', 'jfdhjkeghtr', 'Blog Yazısı 6', 'onaylanmadı', '10,12,2022'),
(6, 'sena', 'yüksel', 'sena@hotmail.com', 'harika bir yazı', 'Sosyal Medyada Takipçi Kazanma', 'onaylandı', '18.04.2022');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
