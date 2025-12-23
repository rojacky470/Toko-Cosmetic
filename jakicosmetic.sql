-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2025 at 06:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jakicosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_transactions`
--

CREATE TABLE `booking_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_trx_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `post_code` bigint(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `sub_total_amount` bigint(20) UNSIGNED NOT NULL,
  `total_amount` bigint(20) UNSIGNED NOT NULL,
  `total_tax_amount` bigint(20) UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_transactions`
--

INSERT INTO `booking_transactions` (`id`, `booking_trx_id`, `name`, `phone`, `email`, `proof`, `post_code`, `city`, `address`, `sub_total_amount`, `total_amount`, `total_tax_amount`, `is_paid`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1222', 'rojacky', '087666', 'jk@gmail.com', '1222', NULL, 'cirebon', 'cirebon 43', 1, 1, 1, 1, '2025-12-15 03:37:35', '2025-12-14 08:04:40', '2025-12-15 03:37:35'),
(2, '78QWS', 'okem', '0868', 'ok@gmail.com', '433', NULL, 'brebes', 'brebes', 144, 144, 1333, 1, '2025-12-15 03:37:35', '2025-12-14 08:16:50', '2025-12-15 03:37:35'),
(3, 'TRX-20251215-MVASUX', 'ojK', '08998897', 'OJK@GMAIL.COM', 'payment-proofs/01KCGS9NPPT4632R7HDC91YK1Q.png', 43443, 'cirebon', 'Cikarang', 200, 220, 20, 0, '2025-12-15 04:30:19', '2025-12-15 03:36:01', '2025-12-15 04:30:19'),
(4, 'TRX-20251215-GAZ0CK', 'n', '008', 'a@gmai.com', 'payment-proofs/01KCGV2F992C6G71RSJ714GKPM.jpg', 536, 'bandung', 'banten', 100, 110, 10, 0, '2025-12-15 04:30:19', '2025-12-15 04:07:02', '2025-12-15 04:30:19'),
(5, 'TRX-20251215-ZDTM7J', 'dfb', '74444', 'este@gmail.com', 'payment-proofs/01KCH04RR3VSR4YWSZDKGBGAHN.png', 17530, 'Bekasi', 'Mutiara Gading Bekasi timur', 150000, 165000, 15000, 1, NULL, '2025-12-15 05:35:40', '2025-12-15 11:08:03'),
(6, 'TRX-20251216-JC9KK5', 'Rojacky', '089671871489', 'rojacky470@gmail.com', 'payment-proofs/01KCK98XY06AN1CD3A3ASXN7M0.jpeg', 1234, 'Bekasi', 'Mutiara Gading Bekasi timur', 100, 110, 10, 1, NULL, '2025-12-16 02:53:42', '2025-12-16 03:30:59'),
(7, 'TRX-20251216-CWVWI4', 'Rojacky', '089671871489', 'jk@gmail.com', 'payment-proofs/01KCKD9W09WKNR27AD1872C4XV.jpeg', 1111, 'bandung', 'Cikarang', 50200, 55220, 5020, 1, NULL, '2025-12-16 04:04:07', '2025-12-16 04:34:19'),
(8, 'TRX-20251216-MOHY8A', 'Rojacky', '089671871489', 'rojacky470@gmail.com', 'payment-proofs/01KCKE4A54F722KV38AYJZNKFH.png', 17530, 'bandung', 'Mutiara Gading Bekasi timur', 200, 220, 20, 1, NULL, '2025-12-16 04:18:34', '2025-12-16 04:18:34'),
(9, 'TRX-20251216-VSWQR5', 'rojacky', '089671871489', 'rojacky470@gmail.com', 'proofs/2dO4NbmucheHuKr2AeZuqxL9oh2Q0uJZLsDJ8bH5.jpg', 17530, 'Bekasi', 'Mutiara gading', 120000, 132000, 12000, 0, NULL, '2025-12-16 16:51:26', '2025-12-16 16:51:26'),
(10, 'TRX-20251216-DYGVH6', 'rojacky', '089671871489', 'rojacky470@gmail.com', 'proofs/Py3Rx9akEVSI45up9QLmqxz6QJ9ZFlEJr5XkYtK4.jpg', 17530, 'Bekasi', 'Mutiara gading', 120000, 132000, 12000, 0, NULL, '2025-12-16 16:52:12', '2025-12-16 16:52:12'),
(11, 'TRX-20251217-F3HPFX', 'Eka', '089671871489', 'eka@gmail.com', 'proofs/zn6ed9cSE1ZeQfYULS43izh1kl3U5jnswkEbWMDR.jpg', 17530, 'Bekasi', 'Mutiara gading', 40000, 44000, 4000, 0, NULL, '2025-12-16 17:32:35', '2025-12-16 17:32:35'),
(12, 'TRX-20251220-XVNYCB', 'rojacky', '089671871489', 'jk@gmail.com', 'proofs/bY6TMFJxQwhZRcQqOt0Yh2TRZRVjjL5ezKCYVqPT.jpg', 12222, 'bandung', 'kebon kopi', 220000, 242000, 22000, 1, NULL, '2025-12-20 05:25:30', '2025-12-20 05:34:29'),
(13, 'TRX-20251220-7R5IM5', 'Dafa', '0880080', 'dafa@gmail.com', 'proofs/TrTOFQqHgdcBX8oDHBjlUO3MOT6JzR91JbKQTReu.png', 5743, 'Tangerang', 'Batu Bumi', 110000, 121000, 11000, 1, NULL, '2025-12-20 05:38:14', '2025-12-23 05:09:01'),
(14, 'TRX-20251220-FOUHW5', 'Arfi', '186767', 'arfi@gmail.com', 'proofs/BjjB9I0jVrIx21cRhAjBx1S6FfGmR906yj3LElmz.png', 1234, 'Bogor', 'sentul', 50000, 55000, 5000, 0, NULL, '2025-12-20 05:46:30', '2025-12-20 05:46:30'),
(15, 'TRX-20251220-FXJDXZ', 'Dita', '08887655', 'Dita@gmail.com', 'proofs/re84il2Tl6xFuELSX2NK2Xut6B4o20wOk2uMkCiK.jpg', 12222, 'Cirebon', 'Kesambi', 90000, 99000, 9000, 0, '2025-12-20 06:01:16', '2025-12-20 05:55:02', '2025-12-20 06:01:16'),
(16, 'TRX-20251220-AJTTCA', 'Yanti', '0809788', 'Bogor@gmail.ccom', 'proofs/odACtqAnAPj3ZO0WoEh7ikvcRU4Xsvkb4O1ThtXA.jpg', 13323, 'Bogor', 'gunung putri', 180000, 198000, 18000, 0, '2025-12-23 05:42:49', '2025-12-20 06:08:25', '2025-12-23 05:42:49'),
(17, 'TRX-20251220-ZOHKOO', 'deva', '090898', 'deva@gmail.com', 'proofs/fZpKDxnJXiPVQ4s1PGaQr6LQ6yfTGSQ1kmlWFOoN.jpg', 123, 'jakarta', 'jaksel', 130000, 143000, 13000, 0, '2025-12-23 05:42:49', '2025-12-20 06:21:04', '2025-12-23 05:42:49'),
(18, 'TRX-20251220-BHX1YF', 'rizka', '1222', 'R@gmail.com', 'proofs/pP921qrsDWo2Pt5SCPZ7VJMCl4iPTVADn2IDJ0Q2.png', 123, 'Cirebon', 'Sumber', 40000, 44000, 4000, 0, '2025-12-23 05:42:49', '2025-12-20 08:41:37', '2025-12-23 05:42:49'),
(19, 'TRX-20251220-CM9AVB', 'Jeni', '1233', 'jeni@gmail.com', 'proofs/2kdS4wDANFUQYrYLXD437V2PLqphf6bFyiUtegyS.png', 231, 'surabaya', 'surabaya', 30000, 33000, 3000, 0, '2025-12-23 05:42:49', '2025-12-20 08:53:52', '2025-12-23 05:42:49'),
(20, 'TRX-20251220-SETWTW', 'Tania', '0007878', 'tania@gmail.com', 'proofs/NHiyGlbcXVzYi7woBV2YHSYzIlhhgUcp3kCOp18U.jpg', 123344, 'Medan', 'medan', 30000, 33000, 3000, 0, '2025-12-23 05:42:49', '2025-12-20 08:57:51', '2025-12-23 05:42:49'),
(21, 'TRX-20251222-HTDIG3', 'Vera', '0896666', 'Vera@xample.com', 'proofs/n0mgV1JuGdlAZanz9l4ePldwUwr8UqxWwr8xDUv8.jpg', 45156, 'Cirebon', 'Jemaraaslor', 60000, 66000, 6000, 0, '2025-12-23 05:42:49', '2025-12-22 08:54:28', '2025-12-23 05:42:49'),
(22, 'TRX-20251222-5AL4KF', 'sari', '325325', 'sari@xample.com', 'proofs/1tmguPw5uApdqmtX8XuFIIirptYduMDgpYyFEByM.jpg', 4133, 'bekasi', 'bekasi', 50000, 55000, 5000, 0, '2025-12-23 05:42:49', '2025-12-22 10:06:00', '2025-12-23 05:42:49'),
(23, 'TRX-20251222-NU9VZL', 'aavv', '676', 'az@xample.com', 'proofs/unLaL4YmKBMcI21HvyiEOauCwRPY4zOhBW8TaKif.png', 1234, 'bekasi', 'hmv', 50000, 55000, 5000, 0, '2025-12-23 05:42:49', '2025-12-22 10:24:08', '2025-12-23 05:42:49'),
(24, 'TRX-20251223-PRIDAP', 'Windi', '0866756445', 'windi@xample.com', 'proofs/e5GkQEXrpxuUCecLda80b9dmjh6wzrRsH80FYFSE.jpg', 12442, 'Purwakarta', 'Wanayasa', 220000, 242000, 22000, 1, NULL, '2025-12-23 05:33:08', '2025-12-23 05:35:07'),
(25, 'TRX-20251223-NJWZYZ', 'delan', '12133', 'delan@gmail.com', 'proofs/VZI2hlNp16zabX5DcCCLxnmRKHWyzNsCR6aASJqc.png', 1234, 'Cirebon', 'jemaras', 50000, 55000, 5000, 1, NULL, '2025-12-23 08:27:45', '2025-12-23 08:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `slug`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1ww1', 'KAZ', '01KCC1JVNF8RTPN26447T4WMM6.png', '2025-12-15 05:08:15', '2025-12-13 07:24:38', '2025-12-15 05:08:15'),
(2, 'RZK-W1', 'Wardah', '01KCGZ24ADBSQCP5S9TY3K1E09.png', NULL, '2025-12-15 05:16:45', '2025-12-15 05:16:45'),
(3, 'RZK-W2', 'Make Over', '01KCGZ3WCBE65KM8QHPEM835HB.jpeg', NULL, '2025-12-15 05:17:42', '2025-12-15 05:17:42'),
(4, 'RZK-W3', 'Pixy', '01KCGZ5MJ0W0ZNX3P9Q81B0D6A.jpeg', NULL, '2025-12-15 05:18:40', '2025-12-15 05:18:40'),
(5, 'RZK-W4', 'SOMETHINC', '01KCGZ79E3XV1QBFGFFR4Q29AA.jpg', NULL, '2025-12-15 05:19:34', '2025-12-15 05:19:34'),
(6, 'RZK-W5', 'Emina', '01KCGZ8S6N4CDB54PNWBTACGZK.png', NULL, '2025-12-15 05:20:23', '2025-12-15 05:20:23'),
(7, 'RZK-W6', 'ESQA Cosmetics', '01KCGZABJFHP0K351C3VG40PZ4.jpeg', NULL, '2025-12-15 05:21:14', '2025-12-15 05:21:14'),
(8, 'RZK-W7', 'Azarine', '01KCGZC12ETHA3XXQ1AVYA0XZS.jpeg', NULL, '2025-12-15 05:22:09', '2025-12-15 05:22:09'),
(9, 'RZK-W8', 'Rollover Reaction', '01KCGZDKGYHG60HR9DYJVSMGRW.png', NULL, '2025-12-15 05:23:01', '2025-12-15 05:23:01'),
(10, 'RZK-W8', 'May Bellina', '01KCP1HX4Q4VTKBGZGW3YGNXR7.png', NULL, '2025-12-17 04:36:31', '2025-12-17 04:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1766507020),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1766507020;', 1766507020),
('livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1766235710),
('livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1766235710;', 1766235710);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ABC', 'qwe', '01KC9T46VWTTXTR666T4PZ2DYV.jpeg', '2025-12-13 02:33:16', '2025-12-12 10:35:49', '2025-12-13 02:33:16'),
(2, '1x', 'bedak', '01KCBHG24HZF9MZB8DEW385KYQ.jpg', '2025-12-13 03:02:44', '2025-12-13 02:43:29', '2025-12-13 03:02:44'),
(3, '1Wq', 'Skincare', '01KCBJZZFYXWEJA45M7929ZY9K.png', '2025-12-17 04:28:50', '2025-12-13 03:09:39', '2025-12-17 04:28:50'),
(4, 'zza123', 'Lipsti pro', '01KCEMMFDWY1TR6KRZDWW9NAP5.png', '2025-12-17 04:28:50', '2025-12-14 07:36:03', '2025-12-17 04:28:50'),
(5, 'Serum', 'Serum', 'kategori/01KCPD9FM5DZ99QJSB1EMFC59S.png', NULL, '2025-12-17 04:25:43', '2025-12-18 03:29:16'),
(6, 'Mascaras', 'Mascaras', 'kategori/01KCPK9WQPBF3CXDC3TKD3G1CD.png', NULL, '2025-12-17 04:27:07', '2025-12-18 03:29:41'),
(7, 'lipsticks', 'Lipsticks', 'kategori/01KCPKFKCR0BNM2F0VJT1Q5FCZ.png', NULL, '2025-12-17 04:28:19', '2025-12-18 03:30:17'),
(8, 'brushes', 'Brushes', 'kategori/01KCPKHTMATEPHHNG3HJ7R7JS4.png', NULL, '2025-12-17 04:30:03', '2025-12-18 03:30:49'),
(9, 'face mask', 'Face Mask', 'kategori/01KCPKKDCP3BNEKPZXAW9GWJ28.png', NULL, '2025-12-17 04:30:53', '2025-12-18 03:31:13'),
(10, 'foundation', 'Foundation', 'kategori/01KCPKNTEKDSDJA4ATPJ6CJ7H5.png', NULL, '2025-12-17 04:32:45', '2025-12-18 03:31:37'),
(11, 'RZK-W10', 'Rojacky', '01KCPBEJ24F7WGC87V6TB8ET07.jpg', '2025-12-17 08:27:33', '2025-12-17 07:29:27', '2025-12-17 08:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetics`
--

CREATE TABLE `cosmetics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `stock` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetics`
--

INSERT INTO `cosmetics` (`id`, `slug`, `name`, `photo`, `about`, `stock`, `price`, `is_popular`, `category_id`, `brand_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'bedak-lipstik-combo', 'Bedak Lipstik combo', 'photos/01KCE9HSNC80ENAD982MMC30Z8.jpeg', 'Sehat', 12, 8000, 0, 3, 1, '2025-12-14 04:27:05', '2025-12-14 04:22:21', '2025-12-14 04:27:05'),
(4, 'cream-sore-dan-pagi', 'Cream sore dan Pagi', 'photos/01KCEMCDXZB7C39SR6BH96Z5H7.png', 'Buat sore dan pah', 100, 70000, 1, 3, 1, '2025-12-14 07:41:13', '2025-12-14 04:28:59', '2025-12-14 07:41:13'),
(5, 'lipsti-dinamis', 'Lipsti Dinamis', '01KCEMWQZDTR02V9W3SVS2Z8B1.png', 'tenang', 12, 100, 1, 4, 1, '2025-12-16 09:36:16', '2025-12-14 07:40:34', '2025-12-16 09:36:16'),
(6, 'coverblur-powder-foundation-natural', 'CoverBlur Powder Foundation Natural', 'thumbnail/01KCPNSXQWSEEASA8TQ5WMYY67.png', 'memberikan medium-to-full coverage dengan hasil akhir halus, menyamarkan pori, dan tampak natural (seamless) tanpa efek cakey atau cracky, terasa ringan dan breathable, serta non-comedogenic, cocok untuk semua jenis kulit, dengan daya tahan hingga 24 jam, menjadikannya praktis untuk daily makeup yang flawless', 8, 50000, 1, 10, 10, NULL, '2025-12-15 05:26:33', '2025-12-23 05:46:40'),
(7, 'wardah-crystal-secret-bright-activating-night-cream-30-gr', 'Wardah Crystal Secret Bright Activating Night Cream 30 gr', 'thumbnail/01KCPP9QT06ETTZWAQ9SQH1P1W.jpeg', 'Wardah Crystal Secret mampu melindungi dan menenangkan kulit berkat kandungan ekstrak actinidia polygama dan leontopodium alpinum. Selain itu, krim malam ini juga diperkaya dengan alpha-arbutin, oligopeptide-68, dan niacinamide, untuk mencerahkan kulit dan memudarkan noda hitam.', 10, 60000, 1, 5, 2, NULL, '2025-12-16 09:39:59', '2025-12-17 10:39:04'),
(8, 'suncream', 'SunCream', 'thumbnail/01KCR5VNSR2HASYVVZG94HT2CQ.jpeg', 'cocok buat pria dan wani', 2, 40000, 1, 5, 4, NULL, '2025-12-16 16:33:02', '2025-12-18 00:30:15'),
(9, 'calm-down-100-mineral-soothing', 'Calm Down 100% Mineral  Soothing', 'thumbnail/01KCPPRC9YAQQ0BJG7DP89FGN8.jpeg', 'Sangat cocok dalam segala kondisi ', 12, 30000, 1, 5, 5, NULL, '2025-12-17 04:43:45', '2025-12-17 10:47:03'),
(10, 'bedak', 'Bedak ', 'thumbnail/01KCS9ZTGS0YQG6S2ESREBG9S3.jpeg', 'Mencerahkan wajah dan Halus di kulit', 12, 30000, 0, 8, 4, NULL, '2025-12-18 11:01:39', '2025-12-18 11:01:39'),
(11, 'maybelline-official-sky-high-cosmic-black-easy-wash-mascara-6ml', 'MAYBELLINE OFFICIAL Sky High Cosmic Black Easy Wash Mascara 6ml', 'thumbnail/01KD5Z568NH28SNS4RT3SY0HJY.jpeg', 'MAYBELLINE OFFICIAL Sky High Cosmic Black Easy Wash Mascara 6ml - Maskara Eye Make up Black Bulu Mata Panjang Tebal Tahan 24 Jam Smudgeproof', 10, 122000, 1, 6, 10, NULL, '2025-12-23 09:02:28', '2025-12-23 09:02:28'),
(12, 'wardah-lipstick', 'Wardah Lipstick', 'thumbnail/01KD5ZWG4ZHWAZPZAFNDQM584Q.jpeg', 'Dapatkan Tampilan Make Up Lebih Natural dengan Wardah Official\n\nBagi para wanita, menggunakan make up sudah pasti kegiatan sehari-hari yang wajib jadi rutinitas apabila termasuk salah satu yang aktif pergi ke kantor maupun ikut meeting. ', 20, 90000, 1, 7, 2, NULL, '2025-12-23 09:15:12', '2025-12-23 09:15:12'),
(13, 'wardah-lipstick', 'Wardah Lipstick', 'thumbnail/01KD6086ARABD422NCQCQ26SNF.jpeg', 'Bagi para wanita, menggunakan make up sudah pasti kegiatan sehari-hari yang wajib jadi rutinitas apabila termasuk salah satu yang aktif pergi ke kantor maupun ikut meeting.', 9, 90000, 1, 7, 2, NULL, '2025-12-23 09:21:35', '2025-12-23 09:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_additionals`
--

CREATE TABLE `cosmetic_additionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cosmetic_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetic_additionals`
--

INSERT INTO `cosmetic_additionals` (`id`, `cosmetic_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 7, 'thumbnail/01KCVPPJ83VD7P0RJCTY94PGGE.jpeg', '2025-12-19 09:22:16', '2025-12-19 09:22:16'),
(2, 6, 'thumbnail/01KD5T446SADV0T2ERN40PXRMC.jpeg', '2025-12-23 07:34:31', '2025-12-23 07:34:31'),
(3, 11, 'thumbnail/01KD5Z568Z18KVW0EDVA0PM27V.jpeg', '2025-12-23 09:02:28', '2025-12-23 09:02:28'),
(4, 11, 'thumbnail/01KD5Z5694P9W2E2AF742YPN2S.jpeg', '2025-12-23 09:02:28', '2025-12-23 09:02:28'),
(5, 13, 'thumbnail/01KD6086B3AYTYJ2JJGX6D0107.jpeg', '2025-12-23 09:21:35', '2025-12-23 09:21:35'),
(6, 13, 'thumbnail/01KD6086B8M9ES6FQRCPDHDSDM.jpeg', '2025-12-23 09:21:35', '2025-12-23 09:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_benefits`
--

CREATE TABLE `cosmetic_benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cosmetic_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetic_benefits`
--

INSERT INTO `cosmetic_benefits` (`id`, `name`, `cosmetic_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Melindungi wajah', 3, NULL, '2025-12-14 04:22:21', '2025-12-14 04:22:21'),
(3, 'Sangat re', 4, NULL, '2025-12-14 04:28:59', '2025-12-14 04:28:59'),
(4, 'menang', 5, NULL, '2025-12-14 07:40:34', '2025-12-14 07:40:34'),
(5, 'Tidak hanya melindungi dan mencerahkan, Wardah Crystal Secret juga diperkaya dengan gliserin dan sodium hyaluronate yang dapat menjaga kelembapan kulit semalaman. Krim ini cocok untuk kulit normal, berminyak, dan kombinasi.', 7, NULL, '2025-12-16 09:39:59', '2025-12-16 09:39:59'),
(6, 'sangat nyaman di pake dalam segala kondisi cuaca', 10, NULL, '2025-12-18 11:55:52', '2025-12-18 11:55:52'),
(7, 'Memberikan kenyamanan pada saat di outdoor', 10, NULL, '2025-12-18 12:07:31', '2025-12-18 12:07:31'),
(8, 'Semakin percaya diri', 10, NULL, '2025-12-18 12:07:31', '2025-12-18 12:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_photos`
--

CREATE TABLE `cosmetic_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `cosmetic_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic_testimonials`
--

CREATE TABLE `cosmetic_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `cosmetic_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cosmetic_testimonials`
--

INSERT INTO `cosmetic_testimonials` (`id`, `rating`, `name`, `photo`, `message`, `cosmetic_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '3', 'Deri', '01KCF2X00YZST92GHHF9JBS5CM.png', 'terimakasih', 5, NULL, '2025-12-14 11:45:22', '2025-12-14 11:45:22'),
(2, '4', 'Selvi', 'testimonial/01KCTKVC0DDHGPXNHY9GCPC6EM.jpeg', 'Harga terjangkau kualitas top \nadem di kulit', 7, NULL, '2025-12-17 10:41:17', '2025-12-18 23:14:36'),
(3, '4', 'Arfi', '01KCSHKRQ6YMKQWCCQEE3QV0F4.jpeg', 'product nya Bagus, sesuai Harga', 10, '2025-12-18 14:00:24', '2025-12-18 13:14:53', '2025-12-18 14:00:24'),
(4, '5', 'Arfi', 'testimonial/01KCSM8JXBQN37NHE8BJ6F5GH9.jpeg', 'Kualitas terbaik dan terjangkau untuk kalangan umum', 10, NULL, '2025-12-18 14:01:12', '2025-12-18 23:08:08'),
(5, '4', 'Dita', 'testimonial/01KCTJ618AFXH5FQMNQB2GGK5W.jpeg', 'Harganya terjangkau cocok buat anak kost', 10, NULL, '2025-12-18 14:02:04', '2025-12-18 22:44:06'),
(6, '5', 'Yanti', 'testimonial/01KCTKME9WNVA0JKK4AAWJ12R6.jpg', 'pengiriman cepat admin gercep sangat berkualitas produk nya', 10, NULL, '2025-12-18 23:09:26', '2025-12-18 23:09:26'),
(7, '5', 'Windi', 'testimonial/01KD5KYC4TG434M6JKS05FDQFW.jpeg', 'Sangat cocok Untuk Kulit', 6, NULL, '2025-12-23 05:46:31', '2025-12-23 05:46:31'),
(8, '5', 'Dea', 'testimonial/01KD5Z7XKPP95QHQ0JR8B6HF1V.jpeg', 'hasil nya bagus Tebal dan tidak gatel .', 11, NULL, '2025-12-23 09:03:58', '2025-12-23 09:03:58'),
(9, '5', 'Silvi', 'testimonial/01KD5Z9XNV9KQ9ZM1KA7X27FWJ.jpeg', 'Sangat Indah dan Tebal', 11, NULL, '2025-12-23 09:05:03', '2025-12-23 09:05:03'),
(10, '4', 'Risfa', 'testimonial/01KD60ASNZMZPSCZRR0RZHKGSH.jpeg', 'Sangat memukau bikin percaya diri', 13, NULL, '2025-12-23 09:23:01', '2025-12-23 09:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_12_152844_create_categories_table', 2),
(5, '2025_12_12_152845_create_brands_table', 2),
(6, '2025_12_12_152846_create_cosmetics_table', 2),
(7, '2025_12_12_152848_create_cosmetic_benefits_table', 2),
(8, '2025_12_12_152849_create_cosmetic_photos_table', 2),
(9, '2025_12_12_152850_create_cosmetic_testimonials_table', 2),
(10, '2025_12_12_152852_create_booking_transactions_table', 2),
(11, '2025_12_12_152853_create_transaction_details_table', 2),
(13, '2025_12_16_013824_create_personal_access_tokens_table', 3),
(14, '2025_12_19_161414_create_cosmetic_additionals_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fiSlBpTpUcm6i0VYxZV87EoVqyBuRZNCJhGREi95', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0xrWTJmRFREMUhTRmtQSHQ5SFN6UUZ4S0tMazhuY3AzczdRdE9EciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1766500872),
('FQA0c4HgZ2fXlcrKB34l5uZi1zyUpyscCfl9hMhd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWpBNXJka0FkUXg5RGtaNlVtdERNVmJSbGNBaDBNZkU0SFdEQ1RGYiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Nvc21ldGljcyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vY29zbWV0aWNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766500870),
('QVPyLy8vK1Uw9QkivKQKDqnYV10Or1ODXLXkrLB7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRTRCUGpJbEZnQU9oTFpnak5PaFlGWGE1enFDNjg1QWVPdzg0TGhjSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb3NtZXRpY3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkd0NxZWZIblBDNXhXZUFIZ3dDaEJDLks1TllpSmVZVnFTU1pXTDFvcWRldDdWR1o5VzVNRTYiO3M6NjoidGFibGVzIjthOjU6e3M6NDA6IjcwMmM1NzIxYWU4ZmE2ODgxZTdiMTBlODg0NjU1MDc5X2NvbHVtbnMiO2E6MTQ6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNDoiYm9va2luZ190cnhfaWQiO3M6NToibGFiZWwiO3M6MTY6IlRyYW5zYWN0aW9uIENvZGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToicGhvbmUiO3M6NToibGFiZWwiO3M6NToiUGhvbmUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImVtYWlsIjtzOjU6ImxhYmVsIjtzOjEzOiJFbWFpbCBhZGRyZXNzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJwcm9vZiI7czo1OiJsYWJlbCI7czoxNDoiQnVrdGkgVHJhbnNmZXIiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InBvc3RfY29kZSI7czo1OiJsYWJlbCI7czo4OiJLb2RlIFBvcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjY7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoiY2l0eSI7czo1OiJsYWJlbCI7czo0OiJDaXR5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNjoic3ViX3RvdGFsX2Ftb3VudCI7czo1OiJsYWJlbCI7czoxNjoiU3ViIHRvdGFsIGFtb3VudCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjg7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6InRvdGFsX2Ftb3VudCI7czo1OiJsYWJlbCI7czoxMjoiVG90YWwgYW1vdW50IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6OTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNjoidG90YWxfdGF4X2Ftb3VudCI7czo1OiJsYWJlbCI7czoxNjoiVG90YWwgdGF4IGFtb3VudCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjEwO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjc6ImlzX3BhaWQiO3M6NToibGFiZWwiO3M6NzoiSXMgcGFpZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjExO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJkZWxldGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJEZWxldGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToxMjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6MTM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiOTVhYzRjYTJkMDM0ZmYzNmExYzA3YjFlYTQzNDgwYzhfY29sdW1ucyI7YTo2OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoic2x1ZyI7czo1OiJsYWJlbCI7czo0OiJTbHVnIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InBob3RvIjtzOjU6ImxhYmVsIjtzOjU6IlBob3RvIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiZGVsZXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiRGVsZXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJkZGMxZDA4ZWJlZmE2NTIyOTAzYWIxZjM3YzNjYjhhY19jb2x1bW5zIjthOjM6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJzbHVnIjtzOjU6ImxhYmVsIjtzOjQ6IlNsdWciO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToicGhvdG8iO3M6NToibGFiZWwiO3M6NToiUGhvdG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDA6IjE3ZjhjYjQ0ZjQ5YzliNjk0ODAzMjc2NzFmMGFlMzc5X2NvbHVtbnMiO2E6MTE6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJzbHVnIjtzOjU6ImxhYmVsIjtzOjQ6IlNsdWciO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToicGhvdG8iO3M6NToibGFiZWwiO3M6NToiUGhvdG8iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InN0b2NrIjtzOjU6ImxhYmVsIjtzOjU6IlN0b2NrIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJwcmljZSI7czo1OiJsYWJlbCI7czo1OiJQcmljZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImlzX3BvcHVsYXIiO3M6NToibGFiZWwiO3M6NzoiUG9wdWxhciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjY7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6ImNhdGVnb3J5Lm5hbWUiO3M6NToibGFiZWwiO3M6ODoiQ2F0ZWdvcnkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJicmFuZC5uYW1lIjtzOjU6ImxhYmVsIjtzOjU6IkJyYW5kIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6ODthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiZGVsZXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiRGVsZXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6OTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6MTA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiZDZjMmEzODcwNWM1N2M0ZGMwMDkwNzc2MWQ3YThlNWVfY29sdW1ucyI7YTo0OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo0OiJOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJwaG90byI7czo1OiJsYWJlbCI7czo1OiJQaG90byI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NzoibWVzc2FnZSI7czo1OiJsYWJlbCI7czo3OiJNZXNzYWdlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJyYXRpbmciO3M6NToibGFiZWwiO3M6NjoiUmF0aW5nIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX19czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1766507002),
('sZuYWuGWquo9q8eqi4uKuCk6gb0RkAljYh8DhDmb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVlQeWVoSnpyeURHb3BFWjhjbmU3U3kyWDhPM29qcTdrVEpmZTN0dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1766500256);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `booking_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `cosmetic_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `quantity`, `price`, `booking_transaction_id`, `cosmetic_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 3, 5, NULL, '2025-12-15 03:36:01', '2025-12-15 03:36:01'),
(2, 2, 200, 4, 5, NULL, '2025-12-15 04:07:02', '2025-12-15 04:07:02'),
(3, 2, 100000, 5, 6, NULL, '2025-12-15 05:35:40', '2025-12-15 05:35:40'),
(4, 2, 200, 6, 5, NULL, '2025-12-16 02:53:42', '2025-12-16 03:30:37'),
(5, 2, 200, 8, 5, NULL, '2025-12-16 04:18:34', '2025-12-16 04:18:34'),
(6, 2, 60000, 9, 7, NULL, '2025-12-16 16:51:26', '2025-12-16 16:51:26'),
(7, 2, 60000, 10, 7, NULL, '2025-12-16 16:52:12', '2025-12-16 16:52:12'),
(8, 1, 40000, 11, 8, NULL, '2025-12-16 17:32:35', '2025-12-16 17:32:35'),
(9, 2, 50000, 12, 6, NULL, '2025-12-20 05:25:30', '2025-12-20 05:25:30'),
(10, 2, 60000, 12, 7, NULL, '2025-12-20 05:25:30', '2025-12-20 05:25:30'),
(11, 2, 40000, 13, 8, NULL, '2025-12-20 05:38:14', '2025-12-20 05:38:14'),
(12, 1, 30000, 13, 9, NULL, '2025-12-20 05:38:14', '2025-12-20 05:38:14'),
(13, 1, 50000, 14, 6, NULL, '2025-12-20 05:46:30', '2025-12-20 05:46:30'),
(14, 3, 30000, 15, 9, NULL, '2025-12-20 05:55:02', '2025-12-20 05:55:02'),
(15, 2, 60000, 16, 7, NULL, '2025-12-20 06:08:25', '2025-12-20 06:08:25'),
(16, 2, 30000, 16, 9, NULL, '2025-12-20 06:08:25', '2025-12-20 06:08:25'),
(17, 1, 50000, 17, 6, NULL, '2025-12-20 06:21:04', '2025-12-20 06:21:04'),
(18, 2, 40000, 17, 8, NULL, '2025-12-20 06:21:04', '2025-12-20 06:21:04'),
(19, 1, 40000, 18, 8, NULL, '2025-12-20 08:41:37', '2025-12-20 08:41:37'),
(20, 1, 30000, 19, 9, NULL, '2025-12-20 08:53:52', '2025-12-20 08:53:52'),
(21, 1, 30000, 20, 10, NULL, '2025-12-20 08:57:51', '2025-12-20 08:57:51'),
(22, 1, 60000, 21, 7, NULL, '2025-12-22 08:54:28', '2025-12-22 08:54:28'),
(23, 1, 50000, 22, 6, NULL, '2025-12-22 10:06:00', '2025-12-22 10:06:00'),
(24, 1, 50000, 23, 6, NULL, '2025-12-22 10:24:08', '2025-12-22 10:24:08'),
(25, 2, 50000, 24, 6, NULL, '2025-12-23 05:33:08', '2025-12-23 05:33:08'),
(26, 3, 30000, 24, 10, NULL, '2025-12-23 05:33:08', '2025-12-23 05:33:08'),
(27, 1, 30000, 24, 9, NULL, '2025-12-23 05:33:08', '2025-12-23 05:33:08'),
(28, 1, 50000, 25, 6, NULL, '2025-12-23 08:27:45', '2025-12-23 08:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jaki', 'jaki@gmail.com', NULL, '$2y$12$wCqefHnPC5xWeAHgwChBC.K5NYiJeYVqSSZWL1oqdet7VGZ9W5ME6', 'GCao355Ls03P73DX0Q4T0qxLvG2nHHBayHpcUIck7MkAoIjeG02KsUvWuevn', '2025-12-12 08:24:56', '2025-12-12 08:24:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_transactions`
--
ALTER TABLE `booking_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cosmetics`
--
ALTER TABLE `cosmetics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cosmetics_category_id_foreign` (`category_id`),
  ADD KEY `cosmetics_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `cosmetic_additionals`
--
ALTER TABLE `cosmetic_additionals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cosmetic_additionals_cosmetic_id_foreign` (`cosmetic_id`);

--
-- Indexes for table `cosmetic_benefits`
--
ALTER TABLE `cosmetic_benefits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cosmetic_benefits_cosmetic_id_foreign` (`cosmetic_id`);

--
-- Indexes for table `cosmetic_photos`
--
ALTER TABLE `cosmetic_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cosmetic_photos_cosmetic_id_foreign` (`cosmetic_id`);

--
-- Indexes for table `cosmetic_testimonials`
--
ALTER TABLE `cosmetic_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cosmetic_testimonials_cosmetic_id_foreign` (`cosmetic_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_booking_transaction_id_foreign` (`booking_transaction_id`),
  ADD KEY `transaction_details_cosmetic_id_foreign` (`cosmetic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_transactions`
--
ALTER TABLE `booking_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cosmetics`
--
ALTER TABLE `cosmetics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cosmetic_additionals`
--
ALTER TABLE `cosmetic_additionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cosmetic_benefits`
--
ALTER TABLE `cosmetic_benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cosmetic_photos`
--
ALTER TABLE `cosmetic_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cosmetic_testimonials`
--
ALTER TABLE `cosmetic_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cosmetics`
--
ALTER TABLE `cosmetics`
  ADD CONSTRAINT `cosmetics_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cosmetics_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cosmetic_additionals`
--
ALTER TABLE `cosmetic_additionals`
  ADD CONSTRAINT `cosmetic_additionals_cosmetic_id_foreign` FOREIGN KEY (`cosmetic_id`) REFERENCES `cosmetics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cosmetic_benefits`
--
ALTER TABLE `cosmetic_benefits`
  ADD CONSTRAINT `cosmetic_benefits_cosmetic_id_foreign` FOREIGN KEY (`cosmetic_id`) REFERENCES `cosmetics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cosmetic_photos`
--
ALTER TABLE `cosmetic_photos`
  ADD CONSTRAINT `cosmetic_photos_cosmetic_id_foreign` FOREIGN KEY (`cosmetic_id`) REFERENCES `cosmetics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cosmetic_testimonials`
--
ALTER TABLE `cosmetic_testimonials`
  ADD CONSTRAINT `cosmetic_testimonials_cosmetic_id_foreign` FOREIGN KEY (`cosmetic_id`) REFERENCES `cosmetics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_booking_transaction_id_foreign` FOREIGN KEY (`booking_transaction_id`) REFERENCES `booking_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_cosmetic_id_foreign` FOREIGN KEY (`cosmetic_id`) REFERENCES `cosmetics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
