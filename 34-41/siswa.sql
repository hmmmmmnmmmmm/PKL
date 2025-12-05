-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2019 at 07:49 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
 
--
-- Database: `malasngoding_laravel`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `siswa`
--
 
CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;