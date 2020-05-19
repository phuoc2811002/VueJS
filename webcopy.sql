-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2020 at 04:16 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcopy`
--

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap`
--

DROP TABLE IF EXISTS `dangnhap`;
CREATE TABLE IF NOT EXISTS `dangnhap` (
  `id` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tendangnhap` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `dangnhap`
--

INSERT INTO `dangnhap` (`id`, `tendangnhap`, `matkhau`) VALUES
('002', 'phuoc', '123456'),
('001', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `idpd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `namepd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `linkpd` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cost` float NOT NULL,
  `imagepd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `sessionID` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`idpd`,`sessionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_27_013855_create_flights_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `idpd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `namepd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `linkpd` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cost` float NOT NULL,
  `imagepd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`idpd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`idpd`, `namepd`, `linkpd`, `cost`, `imagepd`, `quantity`) VALUES
('pd1', 'Art Work 1', 'linkaw1.php', 49, 'shop/nt1.jpg', 1),
('pd2', 'Art Work 2', 'linkaw2.php', 59, 'shop/nt2.jpg', 1),
('pd3', 'Art Work 3', 'linkaw3.php', 59, 'shop/nt3.jpg', 1),
('pd4', 'Art Work 4', 'linkaw4.php', 59, 'shop/nt4.jpg', 1),
('pd5', 'Art Work 5', 'linkaw5.php', 59, 'shop/nt5.jpg', 1),
('pd6', 'Art Work 6', 'linkaw6.php', 59, 'shop/nt6.jpg', 1),
('pd7', 'Art Work 7', 'linkaw7.php', 59, 'shop/nt7.jpg', 1),
('pd8', 'Art Work 8', 'linkaw8.php', 59, 'shop/nt8.jpg', 1),
('pd9', 'Art Work 9', 'linkaw9.php', 59, 'shop/nt9.jpg', 1),
('pd10', 'Art Work 10', 'linkaw10.php', 59, 'shop/nt10.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testmodel`
--

DROP TABLE IF EXISTS `testmodel`;
CREATE TABLE IF NOT EXISTS `testmodel` (
  `maspmd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tenspmd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `soluongmd` int(11) NOT NULL,
  `thanhtienpd` int(11) NOT NULL,
  PRIMARY KEY (`maspmd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `testmodel`
--

INSERT INTO `testmodel` (`maspmd`, `tenspmd`, `soluongmd`, `thanhtienpd`) VALUES
('sp3', 'llklk', 5919, 989889),
('sp4', 'Sản phẩm thứ 4', 2235, 223399),
('sp2', 'sản phẩm 2', 980, 999521),
('sp1', 'daiugw', 6508, 15602);

-- --------------------------------------------------------

--
-- Table structure for table `thongtinsp`
--

DROP TABLE IF EXISTS `thongtinsp`;
CREATE TABLE IF NOT EXISTS `thongtinsp` (
  `idproduct` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nameadd` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `link` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`idproduct`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `thongtinsp`
--

INSERT INTO `thongtinsp` (`idproduct`, `price`, `quantity`, `image`, `category`, `name`, `nameadd`, `link`) VALUES
('id1', 21, 49098, 'image_database/test10.jpg', 'Branding', 'Sofisticada', '', 'sofisticada.php'),
('id2', 1, 50660, 'image_database/test90.jpg', 'Illustration', 'Base Visual', 'Identity', 'basevisualidentity.php'),
('id3', 31, 5400, 'image_database/test50.jpg', 'Logo', 'Raw', '', 'raw.php'),
('id4', 3, 6800, 'image_database/test60.jpg', 'Packagingdesign', 'Bloc Brands', '', 'blocbrand.php'),
('id5', 5, 494566, 'image_database/test80.jpg', 'Branding', 'Hikeshi', '', 'hikeshi.php'),
('id6', 121, 5132414, 'image_database/test40.jpg', 'Logo', 'Red Room', '', 'redroom.php'),
('id7', 12, 516416, 'image_database/test30.jpg', 'Packagingdesign', 'Alfonza', 'Woolwear', 'alfonzawoolwear.php'),
('id8', 61, 1232124, 'image_database/test100.jpg', 'Illustration', 'Branch', 'Creative', 'brancreative.php'),
('id9', 6, 165498, 'image_database/test110.jpg', 'Logo', 'Asis', 'Logos', 'asislogos.php');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admindas@gmail.com', NULL, '$2y$10$H5EtHQqOgqvmrpykNgc7XOhZGalksZ.fXtgsCxTDwPkQR6LJOL1GW', 'admin', NULL, NULL),
(2, 'phuoc', 'phuocds@gmail.com', NULL, '$2y$10$dtZ2wsUWM3Ft9s1yyN4d3us8tesccvUP42//J9meMNKiEy/ElYCyK', '123456', NULL, NULL),
(8, 'fsadf2fe2', 'faasdf123@fkodsn', NULL, '$2y$10$HTSRDs7DME1T6opPloJkh.pfdhSdotywcOcWFSE/BgmKfG9Bap.b.', 'jfpodsaifd0909', NULL, NULL),
(3, 'fadsfe2', 'da32424a11s@gmail.com', NULL, '$2y$10$dCof7OASrIw7aG59iIkW1eOUQXwSB2Oet1D.hOkitrTv5m4uHMn5q', 'agdsgdsasdg', NULL, NULL),
(4, 'asdfasdf', 'asdfdsaf@asfsa', NULL, '$2y$10$3BhBz8pZHW4rrrZyW7qzwuNJEWl5z/s6d0Y9mtXzbBSGYIsbiJi2S', 'fafaf', NULL, NULL),
(6, 'dfasdf', 'ads134134@gmail.com', NULL, '$2y$10$VYDzefFSHJmFbnonyTZt7.G8NWAB46v1OMTLXY2x.v2V7rEvN4Ptu', 'afwe2af', NULL, NULL),
(5, 'dsasdaa', 'dafasfd11a11s@gmail.com', NULL, '$2y$10$UWOWpYuNSDH76IDkx1C00ONVZQXTIWg7XqjsyOhQUjrdHjZKspw26', 'foishiugfds', NULL, NULL),
(7, 'fsadf212fe2', 'fa11asdf123@fkodsn', NULL, '$2y$10$90EiYMzoAZi1evnSKefZauRNd3i.O9NYF3C3ONo3W1czdglMKJW6m', 'asdads122', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
