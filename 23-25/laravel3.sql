-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2025 at 04:54 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel3`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int UNSIGNED NOT NULL,
  `anggota_id` int UNSIGNED NOT NULL,
  `hadiah_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
