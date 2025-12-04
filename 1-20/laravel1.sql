-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2025 at 03:36 AM
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
-- Database: `laravel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` int NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_03_030314_create_mahasiswa_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pegawai_umur` int NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Mulyono', 'Pembuat Kursi', 99999, 'Solo'),
(2, 'Asep', 'Antek Asing', 100, 'Bumi'),
(4, 'tes', 'tes', 222, 'tes'),
(5, 'Balijan Tamba', 'Sopir', 36, 'Ds. Abdul. Muis No. 101, Bandung 90992, Gorontalo'),
(6, 'Irnanto Habibi', 'Wakil Presiden', 37, 'Kpg. Banal No. 368, Ternate 44043, Bali'),
(7, 'Violet Rahmawati', 'Mekanik', 36, 'Ki. Nanas No. 415, Surabaya 34744, NTT'),
(8, 'Ajeng Hasanah S.Pd', 'Pembantu Rumah Tangga', 39, 'Kpg. Adisumarmo No. 578, Probolinggo 25764, Papua'),
(9, 'Ami Vicky Safitri S.T.', 'Pilot', 40, 'Psr. Babah No. 492, Bengkulu 85845, Maluku'),
(10, 'Paulin Rina Hassanah M.Pd', 'Notaris', 38, 'Gg. Bawal No. 198, Banjarbaru 55729, Jabar'),
(11, 'Kani Nasyidah', 'Sopir', 33, 'Ds. Ir. H. Juanda No. 371, Administrasi Jakarta Barat 14295, Kaltara'),
(12, 'Cawuk Sinaga', 'Tentara Nasional Indonesia (TNI)', 28, 'Ds. Abdul Muis No. 665, Singkawang 69650, DKI'),
(13, 'Uli Puti Purwanti S.Farm', 'Jaksa', 39, 'Psr. Salam No. 840, Kediri 71794, Jambi'),
(14, 'Ilyas Narpati S.Farm', 'Programmer', 27, 'Psr. Radio No. 542, Banjar 36587, Aceh'),
(15, 'Salwa Haryanti', 'Ustaz / Mubaligh', 37, 'Dk. Bakau No. 906, Bandung 73376, DKI'),
(16, 'Narji Raden Haryanto S.Kom', 'Montir', 40, 'Psr. Kiaracondong No. 121, Kediri 59946, Sumbar'),
(17, 'Sakura Pudjiastuti', 'Tukang Cukur', 31, 'Kpg. Jend. A. Yani No. 935, Bogor 90313, DIY'),
(18, 'Ganep Siregar M.Pd', 'Peneliti', 35, 'Jln. Eka No. 188, Palangka Raya 95377, Bengkulu'),
(19, 'Warji Gunarto S.Ked', 'Kondektur', 35, 'Jln. Moch. Ramdan No. 773, Pekanbaru 72627, DKI'),
(20, 'Shakila Kuswandari', 'Penerjemah', 30, 'Jr. Barasak No. 939, Jambi 65182, Sumut'),
(21, 'Raihan Siregar', 'Konstruksi', 29, 'Ds. Abdul Muis No. 949, Serang 99358, Bengkulu'),
(22, 'Laras Vanesa Nurdiyanti', 'Kepala Desa', 31, 'Gg. Ronggowarsito No. 548, Surakarta 14890, Malut'),
(23, 'Karma Hutapea', 'Pramusaji', 30, 'Dk. S. Parman No. 315, Palangka Raya 24966, Lampung'),
(24, 'Galuh Among Dabukke', 'Pedagang', 25, 'Gg. B.Agam Dlm No. 453, Jayapura 68680, Banten'),
(25, 'Aswani Wacana', 'Pensiunan', 28, 'Jln. Adisucipto No. 995, Banda Aceh 59345, Malut'),
(26, 'Endra Santoso', 'Pilot', 34, 'Dk. Jambu No. 649, Jambi 86302, Bali'),
(27, 'Bagiya Wijaya', 'Tukang Gigi', 31, 'Dk. Baja Raya No. 197, Tegal 78695, Lampung'),
(28, 'Darijan Napitupulu', 'Tukang Batu', 30, 'Ds. Pasir Koja No. 912, Ambon 38754, Kaltara'),
(29, 'Jati Dono Simbolon', 'Karyawan BUMD', 36, 'Jr. Banda No. 226, Palu 14574, Papua'),
(30, 'Kenzie Hakim', 'Pelaut', 40, 'Jr. Baya Kali Bungur No. 360, Mataram 68624, Banten'),
(31, 'Luthfi Suryono', 'Tabib', 33, 'Psr. Untung Suropati No. 324, Jayapura 78795, Maluku'),
(32, 'Cici Zulaika', 'Kepala Desa', 32, 'Kpg. Halim No. 169, Blitar 99837, NTT'),
(33, 'Cahyo Baktianto Pangestu', 'Notaris', 29, 'Gg. Agus Salim No. 417, Tomohon 16633, Kalsel'),
(34, 'Laksana Kardi Salahudin S.Farm', 'Promotor Acara', 35, 'Dk. Agus Salim No. 264, Bogor 34506, NTB'),
(35, 'Vivi Halimah', 'Kepala Desa', 39, 'Ds. Suharso No. 91, Tarakan 44198, Lampung'),
(36, 'Endah Zamira Purwanti', 'Penata Rias', 27, 'Gg. B.Agam Dlm No. 690, Palangka Raya 16693, Jabar'),
(37, 'Ibrani Maryadi Marpaung', 'Pegawai Negeri Sipil (PNS)', 37, 'Dk. Otto No. 653, Jayapura 37837, Kepri'),
(38, 'Eli Samiah Yuliarti', 'Bidan', 31, 'Ki. Ki Hajar Dewantara No. 912, Mojokerto 32851, Gorontalo'),
(39, 'Tirtayasa Najam Anggriawan S.T.', 'Karyawan Swasta', 25, 'Ds. Baranangsiang No. 232, Bau-Bau 59875, Sulut'),
(40, 'Budi Balangga Mustofa', 'Montir', 27, 'Jln. Pasir Koja No. 174, Bontang 99317, Kalbar'),
(41, 'Rachel Halimah', 'Penata Busana', 27, 'Jln. Rajawali Timur No. 232, Balikpapan 70075, Riau'),
(42, 'Candrakanta Wahyudin', 'Tukang Gigi', 30, 'Ds. Kyai Mojo No. 585, Administrasi Jakarta Utara 15455, Sulut'),
(43, 'Zizi Victoria Melani', 'Penyiar Televisi', 39, 'Jr. Sukajadi No. 505, Banjarmasin 10784, Maluku'),
(44, 'Kamila Oktaviani S.Pt', 'Belum / Tidak Bekerja', 36, 'Jln. Wahid Hasyim No. 884, Batu 64471, Babel'),
(45, 'Himawan Cawisono Hardiansyah S.H.', 'Penata Rias', 39, 'Jln. Salatiga No. 601, Prabumulih 60027, Bali'),
(46, 'Silvia Yolanda', 'Hakim', 26, 'Jr. Casablanca No. 763, Kendari 27799, Jateng'),
(47, 'Cemplunk Luis Widodo M.Kom.', 'Seniman', 35, 'Kpg. Teuku Umar No. 190, Manado 32423, Jatim'),
(48, 'Ganda Adinata Mangunsong', 'Pramugari', 25, 'Dk. Bagonwoto  No. 900, Sabang 73820, Pabar'),
(49, 'Raisa Haryanti', 'Pastor', 25, 'Jr. Rajiman No. 376, Ternate 37831, Babel'),
(50, 'Lili Puji Nasyiah', 'Tukang Listrik', 30, 'Jr. Monginsidi No. 890, Jambi 69982, NTB'),
(51, 'Marwata Dabukke S.Sos', 'Tukang Jahit', 28, 'Kpg. Baan No. 909, Bogor 66230, Maluku'),
(52, 'Azalea Mayasari', 'Tukang Gigi', 31, 'Dk. Jakarta No. 554, Ambon 76787, Kepri'),
(53, 'Indah Maryati', 'Sopir', 36, 'Gg. Ters. Kiaracondong No. 750, Bau-Bau 80727, Sumbar'),
(54, 'Joko Wasita S.Psi', 'Pemandu Wisata', 31, 'Jr. Labu No. 491, Denpasar 44235, Jateng'),
(55, 'Bagus Kuncara Suryono', 'Perancang Busana', 25, 'Jr. Banda No. 298, Bukittinggi 17684, Papua'),
(56, 'Zulfa Purwanti', 'Pialang', 26, 'Ds. Agus Salim No. 829, Prabumulih 20413, Kalteng'),
(57, 'Intan Uyainah', 'Tukang Gigi', 31, 'Jln. Baung No. 603, Bandung 59001, Bali');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
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
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
