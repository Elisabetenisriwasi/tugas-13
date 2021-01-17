-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 04:07 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertemuan_11`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama_produk`, `foto`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(25, 7, 'nasi ayam', 'app/images/produk/25-1610804385-0QWd3.png', 15000, 10, '<p>sedap<br></p>', 900, '2021-01-16 06:39:45', '2021-01-16 06:39:45'),
(26, 7, 'ayam goreng', 'app/images/produk/26-1610805361-9qRqZ.png', 20000, 2, '<p>yammi<br></p>', 400, '2021-01-16 06:56:01', '2021-01-16 06:56:02'),
(27, 7, 'masakan padang', 'app/images/produk/27-1610805412-dnDWw.png', 25000, 1, '<p>cobain<br></p>', 300, '2021-01-16 06:56:52', '2021-01-16 06:56:52'),
(28, 7, 'nasi lengkap', 'app/images/produk/28-1610805458-qhPFR.png', 12000, 5, '<p>enak<br></p>', 500, '2021-01-16 06:57:38', '2021-01-16 06:57:38'),
(29, 7, 'ayam', 'app/images/produk/29-1610805496-PxjJI.png', 12000, 8, '<p>enak<br></p>', 900, '2021-01-16 06:58:16', '2021-01-16 06:58:16'),
(30, 7, 'nasi komplit ayam', 'app/images/produk/30-1610805658-vWLvT.png', 20000, 5, '<p>cobain<br></p>', 300, '2021-01-16 07:00:58', '2021-01-16 07:00:58'),
(31, 7, 'nasi lengkap', 'app/images/produk/31-1610805719-IpjeQ.png', 12000, 3, '<p>enak<br></p>', 200, '2021-01-16 07:01:59', '2021-01-16 07:01:59'),
(32, 7, 'ayam bakar', 'app/images/produk/32-1610805754-LL4NZ.png', 30000, 1, '<p>sedap<br></p>', 100, '2021-01-16 07:02:34', '2021-01-16 07:02:34'),
(33, 7, 'nasi', 'app/images/produk/33-1610805790-vznrc.png', 10, 2, '<p>sedap<br></p>', 100, '2021-01-16 07:03:10', '2021-01-16 07:03:10'),
(34, 7, 'nasi uduk', 'app/images/produk/34-1610805870-inG0A.png', 12000, 1, '<p>enak<br></p>', 500, '2021-01-16 07:04:29', '2021-01-16 07:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'eni', 'eni', 'eni@gmail.com', '$2y$10$SpQitvz.uXOiLRE5glKgauD04hdzgMD0uQUH.6nqxUtLieBCZvZym', NULL, '2020-11-24 14:33:34', '2020-11-24 07:33:34'),
(5, 'cining', 'cining', 'eni@gmail.com', '$2y$10$wn2c2edmwdPL8.3idmULPeJ1VoN286dXsHhIvyFj0U7HkVCc7Aphy', NULL, '2020-11-23 12:20:13', '2020-11-23 05:20:13'),
(6, 'sriwasi', 'sriwasi', 'eni@gmail.com', '$2y$10$8/lXtHY5CnIzz1tTZ/OBV.W9mPcDVFWlRMMfxS04gaTmtuMV5AuQe', NULL, '2020-11-24 07:01:38', '2020-11-24 07:01:38'),
(7, 'metilamitasari', 'meti', 'metilamitasari@gmail.com', '$2y$10$44mW/lZkIbP/LR36HZaWjOw6duksO/HWULK7UK7aaI9ztNUZdxFmu', NULL, '2021-01-16 06:09:20', '2021-01-16 06:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `update_at`) VALUES
(3, 3, '+622311262329', '2020-11-15 21:09:13', '2020-11-24 14:23:57'),
(5, 5, '+62250659998', '2020-11-15 21:09:13', '2020-11-15 17:00:00'),
(6, 6, '+622506588999', '2020-11-20 17:00:00', '2020-11-23 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
