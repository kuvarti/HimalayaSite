-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 01:43 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deneme3`
--

-- --------------------------------------------------------

--
-- Table structure for table `durum`
--

CREATE TABLE `durum` (
  `id` int(2) NOT NULL,
  `durum` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `durum`
--

INSERT INTO `durum` (`id`, `durum`) VALUES
(1, 'tamamlandi'),
(2, 'siparis verildi'),
(3, 'hazirlaniyor'),
(4, 'teslim edildi'),
(5, 'Iptal');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `k_id` int(11) NOT NULL,
  `k_ad` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`k_id`, `k_ad`) VALUES
(1, 'gida'),
(2, 'Elektronik'),
(3, 'Tekstil');

-- --------------------------------------------------------

--
-- Table structure for table `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `sifre` varchar(16) NOT NULL,
  `isim` varchar(10) DEFAULT NULL,
  `yas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kullanici`
--

INSERT INTO `kullanici` (`id`, `eposta`, `sifre`, `isim`, `yas`) VALUES
(1, 'x@xx.x', 'xx', 'xisim', 18),
(2, 'y@yy.y', 'yy', 'yisim', 20),
(3, 'z@zz.z', 'zz', 'zisim', 50),
(4, 'eposta', 'sifre', 'isim', 15),
(5, 'eposta1', 'sifre', 'isim', 15);

-- --------------------------------------------------------

--
-- Table structure for table `magaza`
--

CREATE TABLE `magaza` (
  `magazaid` int(11) NOT NULL,
  `magazaisim` varchar(10) NOT NULL,
  `magazasifre` varchar(10) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `telefon` varchar(13) DEFAULT NULL,
  `adres` varchar(50) DEFAULT NULL,
  `resim` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `magaza`
--

INSERT INTO `magaza` (`magazaid`, `magazaisim`, `magazasifre`, `rating`, `telefon`, `adres`, `resim`) VALUES
(1, 'a magaza  ', 'amag', 4, '5454545', 'a deposu', 'NULL'),
(2, 'b magaza  ', 'bmag', 5, '7878787', 'b deposu', NULL),
(3, 'c magaza', 'cmag', 3, '41545454', 'c deposu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `myorum`
--

CREATE TABLE `myorum` (
  `myid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `kid` int(11) DEFAULT NULL,
  `puan` int(11) DEFAULT NULL,
  `yorum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myorum`
--

INSERT INTO `myorum` (`myid`, `mid`, `kid`, `puan`, `yorum`) VALUES
(1, 1, 1, 3, 'kargo paketlemesi çok kötüydü'),
(2, 1, 3, 5, 'kargoya çok geç verildi'),
(3, 2, 1, 8, 'müsteri hizmetleri çok yardımcı oldu'),
(4, 2, 2, 10, 'mükemmel hizmet'),
(5, 3, 2, 6, 'ortalama hizmet');

-- --------------------------------------------------------

--
-- Table structure for table `satis`
--

CREATE TABLE `satis` (
  `satisid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `fiyat` int(11) DEFAULT NULL,
  `garanti` int(11) DEFAULT NULL,
  `indirim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satis`
--

INSERT INTO `satis` (`satisid`, `mid`, `uid`, `fiyat`, `garanti`, `indirim`) VALUES
(1, 1, 2, 50, 2, NULL),
(2, 1, 1, 100, 4, NULL),
(3, 3, 3, 5, 0, NULL),
(4, 3, 4, 5, 0, NULL),
(5, 2, 5, 20, 0, NULL),
(6, 2, 6, 21, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siparis`
--

CREATE TABLE `siparis` (
  `siprarisid` int(11) NOT NULL,
  `kid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `tarih` varchar(10) DEFAULT NULL,
  `durum` int(2) DEFAULT NULL,
  `adet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siparis`
--

INSERT INTO `siparis` (`siprarisid`, `kid`, `sid`, `tarih`, `durum`, `adet`) VALUES
(1, 3, 2, '11/02/2001', 1, 1),
(2, 1, 2, '12/03/2002', 1, 1),
(3, 3, 5, '25/10/2010', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `urun`
--

CREATE TABLE `urun` (
  `uid` int(11) NOT NULL,
  `uisim` varchar(25) DEFAULT NULL,
  `umarka` varchar(16) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `hakkinda` varchar(255) DEFAULT NULL,
  `resim` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `urun`
--

INSERT INTO `urun` (`uid`, `uisim`, `umarka`, `kategori_id`, `hakkinda`, `resim`) VALUES
(1, 'telefon', 'apple', 2, 'apple telefon', NULL),
(2, 'bilgisayar', 'msi', 2, 'windows pc', NULL),
(3, 'elma', 'lipton', 1, 'doğal elma', NULL),
(4, 'armut', 'hacışakir', 1, 'doğal armut', NULL),
(5, 'gömlek', 'todoks', 3, 'keten gomlek', NULL),
(6, 'pantalon', 'lc wcc', 3, 'kot pantalon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `urunyorumlari`
--

CREATE TABLE `urunyorumlari` (
  `yorumid` int(11) NOT NULL,
  `kullaniciid` int(11) DEFAULT NULL,
  `urunid` int(11) DEFAULT NULL,
  `puan` int(11) DEFAULT NULL,
  `yorum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `urunyorumlari`
--

INSERT INTO `urunyorumlari` (`yorumid`, `kullaniciid`, `urunid`, `puan`, `yorum`) VALUES
(1, 2, 2, 5, 'bok gibi pc'),
(2, 1, 2, 10, 'çok iyi pc'),
(3, 3, 5, 7, 'kumaşı kötü'),
(4, 3, 6, 7, 'kötü kumaş'),
(5, 2, 3, 10, 'çok tatlı'),
(6, 1, 1, 1, 'cok kasıyor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `durum`
--
ALTER TABLE `durum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`k_id`);

--
-- Indexes for table `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magaza`
--
ALTER TABLE `magaza`
  ADD PRIMARY KEY (`magazaid`);

--
-- Indexes for table `myorum`
--
ALTER TABLE `myorum`
  ADD PRIMARY KEY (`myid`),
  ADD KEY `mid` (`mid`,`kid`),
  ADD KEY `kid` (`kid`);

--
-- Indexes for table `satis`
--
ALTER TABLE `satis`
  ADD PRIMARY KEY (`satisid`),
  ADD KEY `mid` (`mid`,`uid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siprarisid`),
  ADD KEY `kid` (`kid`,`sid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `durum` (`durum`),
  ADD KEY `durum_2` (`durum`);

--
-- Indexes for table `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `urunyorumlari`
--
ALTER TABLE `urunyorumlari`
  ADD PRIMARY KEY (`yorumid`),
  ADD KEY `kullaniciid` (`kullaniciid`,`urunid`),
  ADD KEY `urunid` (`urunid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `durum`
--
ALTER TABLE `durum`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `magaza`
--
ALTER TABLE `magaza`
  MODIFY `magazaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myorum`
--
ALTER TABLE `myorum`
  MODIFY `myid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `satis`
--
ALTER TABLE `satis`
  MODIFY `satisid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siprarisid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `urun`
--
ALTER TABLE `urun`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `urunyorumlari`
--
ALTER TABLE `urunyorumlari`
  MODIFY `yorumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `myorum`
--
ALTER TABLE `myorum`
  ADD CONSTRAINT `myorum_ibfk_1` FOREIGN KEY (`kid`) REFERENCES `kullanici` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `myorum_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `magaza` (`magazaid`);

--
-- Constraints for table `satis`
--
ALTER TABLE `satis`
  ADD CONSTRAINT `satis_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `magaza` (`magazaid`),
  ADD CONSTRAINT `satis_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `urun` (`uid`);

--
-- Constraints for table `siparis`
--
ALTER TABLE `siparis`
  ADD CONSTRAINT `siparis_ibfk_1` FOREIGN KEY (`kid`) REFERENCES `kullanici` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `siparis_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `satis` (`satisid`),
  ADD CONSTRAINT `siparis_ibfk_3` FOREIGN KEY (`durum`) REFERENCES `durum` (`id`);

--
-- Constraints for table `urun`
--
ALTER TABLE `urun`
  ADD CONSTRAINT `urun_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`k_id`) ON DELETE CASCADE;

--
-- Constraints for table `urunyorumlari`
--
ALTER TABLE `urunyorumlari`
  ADD CONSTRAINT `urunyorumlari_ibfk_1` FOREIGN KEY (`kullaniciid`) REFERENCES `kullanici` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `urunyorumlari_ibfk_2` FOREIGN KEY (`urunid`) REFERENCES `urun` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
