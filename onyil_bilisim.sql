-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Şub 2021, 11:39:21
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `onyil_bilisim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_ID` int(11) NOT NULL,
  `Kullanici_Ad` varchar(255) NOT NULL,
  `Kullanici_Sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_ID`, `Kullanici_Ad`, `Kullanici_Sifre`) VALUES
(1, 'ferhatdemir', '123dm123123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfa`
--

CREATE TABLE `sayfa` (
  `SayfaID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Keywords` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `H1` varchar(255) NOT NULL,
  `Icerik` text NOT NULL,
  `Tarih` int(11) NOT NULL,
  `Menu` varchar(255) NOT NULL,
  `Kullanici_ID` int(11) NOT NULL,
  `SayfaTipi_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sayfa`
--

INSERT INTO `sayfa` (`SayfaID`, `Title`, `Keywords`, `Description`, `H1`, `Icerik`, `Tarih`, `Menu`, `Kullanici_ID`, `SayfaTipi_ID`) VALUES
(1, 'Bu bir sayfa adıdır', 'sayfa,deneme,onyil', 'Bu bir sayfa adıdır', 'Bu bir sayfa adıdır', 'Bu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdırBu bir sayfa adıdır', 0, '', 1, 1),
(2, 'deneme 2.deneme sayfa', 'keywords', 'askldhasldkşlasjdşas', 'deneme sayfası', 'sadasd asd asd asdasd asdasd asdasd asd sadasd sa dasdas das dsa dsaasdas d', 1402, '', 1, 1),
(3, 'deneme sayfası', 'keywords', 'askldhasldkşlasjdşas', 'deneme sayfası', '<p>asdasdasdasd asdasdasd</p><p>asdasd</p><p>asdasd</p><p>asdas</p><p><br></p>', 1402, '', 1, 1),
(4, 'öylesine bir deneme sayfasıdır.', 'keywords', 'des', 'deneme sayfası', '<p>sadasdasdas</p><p>dasd</p><p>asdasdasdasdsa</p><p><br></p>', 1402, '', 1, 1),
(5, 'bu bir ', '12321', 'sdfjpsd', '-9-', '<p>qasfkdasd</p><p><span style=\"background-color: rgb(255, 255, 0);\">asd</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">asdasdasdasdas</span></p><p><br></p>', 214, '', 1, 1),
(6, 'deneme sayfasıasd asdasdasdas', 'keywords', 'askldhasldkşlasjdşas', 'deneme sayfası', '<p>asd<span style=\"background-color: rgb(255, 255, 0);\">asdas</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">das</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">d</span></p><p>asdas</p><p>das</p><p>d</p>', 0, '', 1, 1),
(7, '6.id ye ait title', 'keywords', 'askldhasldkşlasjdşas', 'deneme sayfası', '<p>asdasdasdas</p><p>dasdasdasdasdasdasd</p><p>as<span style=\"background-color: rgb(255, 255, 0);\">dasd</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">asdasdasdas</span></p><p><br></p>', 214, '', 1, 6),
(8, '2.id ye ait alt sayfa', '2.id ye ait alt sayfa', '2.id ye ait alt sayfa', '2.id ye ait alt sayfa', '<p>2.id ye<b> ait alt sayfa2.id ye ait alt sayfa2.id ye ait alt sayfa2.id ye ait alt sayfa2.id ye ait alt sayfa</b></p><p><b>2.id ye ait alt sayf</b>a</p><p><span style=\"background-color: rgb(255, 255, 0);\">2.id ye ait alt sayfa</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">2.id ye ait alt sayfa</span></p><p>2.id <span style=\"font-family: &quot;Arial Black&quot;;\">ye ait alt sayfa2.id ye ait alt sayfa2.id ye</span> ait alt sayfa</p><p><br></p><p> </p>', 214, '', 1, 2),
(9, '1.id ye ait alt sayfa', '1.id ye ait alt sayfa', '1.id ye ait alt sayfa', '1.id ye ait alt sayfa', '1.id ye ait alt sayfa ', 214, '', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfa_tipi`
--

CREATE TABLE `sayfa_tipi` (
  `Sayfa_TipiID` int(11) NOT NULL,
  `Sayfa_Ad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sayfa_tipi`
--

INSERT INTO `sayfa_tipi` (`Sayfa_TipiID`, `Sayfa_Ad`) VALUES
(1, 'Sayfa'),
(2, 'Kategori'),
(3, 'Blog');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_ID`);

--
-- Tablo için indeksler `sayfa`
--
ALTER TABLE `sayfa`
  ADD PRIMARY KEY (`SayfaID`);

--
-- Tablo için indeksler `sayfa_tipi`
--
ALTER TABLE `sayfa_tipi`
  ADD PRIMARY KEY (`Sayfa_TipiID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sayfa`
--
ALTER TABLE `sayfa`
  MODIFY `SayfaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `sayfa_tipi`
--
ALTER TABLE `sayfa_tipi`
  MODIFY `Sayfa_TipiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
