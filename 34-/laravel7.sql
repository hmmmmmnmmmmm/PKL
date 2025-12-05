-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2025 at 02:44 AM
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
-- Database: `laravel7`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:8:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.41.1\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.4\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.3.4\";s:6:\"\0*\0dev\";b:1;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.26.0\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.50.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.1\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PEST\";s:14:\"\0*\0packageName\";s:12:\"pestphp/pest\";s:10:\"\0*\0version\";s:5:\"4.1.6\";s:6:\"\0*\0dev\";b:1;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"12.4.4\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:6:\"12.4.4\";s:6:\"\0*\0dev\";b:1;}i:7;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:41:\"Laravel\\Roster\\Enums\\Packages:TAILWINDCSS\";s:14:\"\0*\0packageName\";s:11:\"tailwindcss\";s:10:\"\0*\0version\";s:6:\"4.1.17\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1764900258;}', 1764986658);

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
(4, '2025_12_05_012634_create_pegawais_table', 2);

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
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `email`, `alamat`, `telepon`, `pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Kariman Karna Nababan S.E.', 'emahendra@gmail.com', 'Ki. Batako No. 987, Kediri 82623, Sumbar', '0941 8927 430', 'karyawan', NULL, NULL),
(2, 'Zulaikha Haryanti', 'gunawan.kamidin@yahoo.co.id', 'Psr. Nangka No. 816, Kotamobagu 90264, Sumsel', '(+62) 928 7567 9588', 'karyawan', NULL, NULL),
(3, 'Nalar Tri Wibisono S.E.', 'uyainah.galuh@yahoo.co.id', 'Ds. Baranang No. 139, Bontang 25825, Gorontalo', '(+62) 260 6874 3773', 'karyawan', NULL, NULL),
(4, 'Koko Kusumo', 'asmuni10@mansur.mil.id', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 826, Tebing Tinggi 15098, Sulbar', '(+62) 405 7326 086', 'karyawan', NULL, NULL),
(5, 'Dinda Kusmawati', 'ysamosir@lestari.co.id', 'Jr. Ekonomi No. 138, Pagar Alam 75835, Papua', '(+62) 874 827 292', 'karyawan', NULL, NULL),
(6, 'Kunthara Siregar', 'kartika.mandasari@gmail.co.id', 'Psr. Raya Ujungberung No. 661, Kupang 37569, Sumbar', '(+62) 332 8366 1685', 'karyawan', NULL, NULL),
(7, 'Kasusra Kardi Suryono', 'usalahudin@yahoo.com', 'Kpg. Basoka Raya No. 147, Bandung 24565, Maluku', '0450 4501 3261', 'karyawan', NULL, NULL),
(8, 'Ida Handayani', 'harjaya03@farida.org', 'Ki. Bara No. 140, Payakumbuh 91889, Sulut', '0472 2537 7979', 'karyawan', NULL, NULL),
(9, 'Safina Usamah', 'cornelia.safitri@yahoo.co.id', 'Gg. Zamrud No. 364, Dumai 62085, NTT', '0466 8900 2453', 'karyawan', NULL, NULL),
(10, 'Puji Wijayanti', 'wibisono.hana@budiyanto.in', 'Psr. Lada No. 908, Medan 59020, Aceh', '(+62) 934 0987 905', 'karyawan', NULL, NULL),
(11, 'Intan Tami Mayasari', 'maimunah.zulkarnain@gmail.co.id', 'Jln. Baiduri No. 66, Pangkal Pinang 36103, Lampung', '(+62) 20 7601 7378', 'karyawan', NULL, NULL),
(12, 'Bajragin Pandu Thamrin', 'kpadmasari@gmail.com', 'Jr. Rajiman No. 524, Balikpapan 57238, Jateng', '0997 7406 276', 'karyawan', NULL, NULL),
(13, 'Harja Dono Mahendra', 'hasanah.karja@marbun.or.id', 'Gg. Ciwastra No. 988, Lubuklinggau 62517, NTB', '(+62) 363 1582 2349', 'karyawan', NULL, NULL),
(14, 'Halima Yulia Andriani S.Sos', 'yuliana.haryanti@gmail.com', 'Kpg. Diponegoro No. 438, Blitar 66482, Bengkulu', '029 8878 8040', 'karyawan', NULL, NULL),
(15, 'Mila Puput Maryati', 'ilyas12@gmail.com', 'Psr. Jamika No. 365, Kupang 35832, Sumbar', '021 5584 1592', 'karyawan', NULL, NULL),
(16, 'Syahrini Widiastuti', 'marbun.cager@yahoo.co.id', 'Jln. Dr. Junjunan No. 137, Semarang 48579, Sultra', '0889 4862 071', 'karyawan', NULL, NULL),
(17, 'Nasab Nyana Pratama S.Ked', 'putri.pradipta@rahayu.asia', 'Ki. Baladewa No. 131, Bukittinggi 29552, NTB', '029 7248 5629', 'karyawan', NULL, NULL),
(18, 'Syahrini Laksita', 'ahalimah@gmail.com', 'Dk. Baja Raya No. 280, Semarang 57838, Sulsel', '(+62) 709 0805 079', 'karyawan', NULL, NULL),
(19, 'Oliva Rahimah', 'kuswandari.oliva@prabowo.ac.id', 'Ds. Balikpapan No. 594, Prabumulih 46892, Jabar', '(+62) 486 7115 221', 'karyawan', NULL, NULL),
(20, 'Silvia Fujiati S.IP', 'bbudiman@yahoo.co.id', 'Gg. Dahlia No. 635, Yogyakarta 76940, NTB', '(+62) 26 8635 3645', 'karyawan', NULL, NULL);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AvzXAPPjy7D7xD6KB649VhhLtYwXbLepxSdG1fsc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieW44b21RT2NEc2JlMUhRbUdoQjhjTVFJQnQwd2lEdnRLUFoyNzZWRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oYWxvIjtzOjU6InJvdXRlIjtzOjEyOiJoYWxvLnBhbmdnaWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1764902554),
('XoelEVIyxVOhPyvnCEDxJUxDzqUNtqGIdoFtOLVR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUFhUmlkT2haYURnUWtwS0xqSVIxTEZkVjBqOU9BTlpFTFEyeFZPeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9raXJpbWVtYWlsIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1764841039);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Malas Noding', 123456, 'Kpg. Otto No. 157, Salatiga 34190, KepR', NULL, NULL),
(2, 'Diki Alfarabi hadi', 123457, 'Psr. Wahid No. 119, Langsa 17291, JaTim', NULL, NULL),
(3, 'Bagas Santoso', 123458, 'Jr. Monginsidi No. 569, Padangsidempuan 24306, SulBar', NULL, NULL),
(4, 'Genta Haryanti', 123459, 'Psr. Gajah Mada No. 696, Mataram 90223, BaBel', NULL, NULL),
(5, 'Laravel Excel', 123460, 'Kpg. Suryo Pranoto No. 291, Pekanbaru 76772, Maluku', NULL, NULL),
(6, 'Wasis Bakianto Rajasa', 123461, 'Dk. Sadang Serang No. 367, Semarang 32762, SulTra', NULL, NULL),
(7, 'Excel Laravel', 123462, 'Ki. Abdul Rahmat No. 1, Banjarbaru 58914, NTB', NULL, NULL),
(8, 'Zaenab Winarsih', 123463, 'Dk. Padang No. 638, Bitung 46505, Aceh', NULL, NULL),
(9, 'Malika Tina Hasanah', 123464, 'Jln. W.R. Supratman No. 392, Bitung 66104, JaTim', NULL, NULL),
(10, 'PHPExcel Laravel', 123465, 'Dk. Imam No. 224, Banjar 37365, PapBar', NULL, NULL),
(11, 'Paramita Rahimah', 123466, 'Dk. Qrisdoren No. 548, Surabaya 30826, KalTeng', NULL, NULL),
(12, 'Paris Padmasari', 123467, 'Ki. Bacang No. 93, Pariaman 82570, DIY', NULL, NULL),
(13, 'Bakijan Mahendra S.H.', 123468, 'Ki. Tambak No. 692, Mataram 65862, Aceh', NULL, NULL),
(14, 'Damar Tamba', 123469, 'Dk. Lada No. 238, Bandar Lampung 65062, MalUt', NULL, NULL),
(15, 'Bajragin Atmaja Kurniawan', 123470, 'Dk. Karel S. Tubun No. 988, Jayapura 18450, Bali', NULL, NULL),
(16, 'Cakrawangsa Sihombing', 123471, 'Jr. Babah No. 536, Bekasi 20996, Aceh', NULL, NULL),
(17, 'Najwa Rahimah', 123472, 'Gg. K.H. Maskur No. 475, Cimahi 25535, KalSel', NULL, NULL),
(18, 'Jaswadi Hardana Maryadi', 123473, 'Jln. Abang No. 590, Tegal 31208, Lampung', NULL, NULL),
(19, 'Shakila Nurdiyanti', 123474, 'Jr. Tangkuban Perahu No. 553, Bitung 27727, SumBar', NULL, NULL),
(20, 'Caraka Nardi Permadi', 123475, 'Kpg. Daan No. 258, Bandar Lampung 97410, SulBar', NULL, NULL);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
