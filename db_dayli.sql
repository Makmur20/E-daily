-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2023 at 09:08 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezscodec_daily-report`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor_hp` varchar(13) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `email`, `nomor_hp`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADMIN', 'P', '1989-05-30', 'admin@gmail.com', '085232077932', 'profile_admin.png', '2021-10-28 19:27:37', '2023-08-01 13:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_ekstrakulikuler`
--

CREATE TABLE `anggota_ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `ekstrakulikuler_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anggota_kelas`
--

CREATE TABLE `anggota_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran` enum('1','2','3','4','5') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_kelas`
--

INSERT INTO `anggota_kelas` (`id`, `siswa_id`, `kelas_id`, `pendaftaran`, `created_at`, `updated_at`) VALUES
(1, 86, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(2, 89, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(3, 90, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(4, 91, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(5, 92, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(6, 94, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(7, 95, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(8, 96, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(9, 97, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(10, 98, 8, '3', '2023-08-05 07:36:28', '2023-08-05 07:36:28'),
(11, 86, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(12, 89, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(13, 90, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(14, 91, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(15, 92, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(16, 94, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(17, 95, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(18, 96, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(19, 97, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30'),
(20, 98, 8, '3', '2023-08-05 07:36:30', '2023-08-05 07:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `catatan_pelanggaran`
--

CREATE TABLE `catatan_pelanggaran` (
  `id` int(11) NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `id_tapel` bigint(20) UNSIGNED DEFAULT NULL,
  `kejadian` varchar(225) NOT NULL,
  `solusi` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catatan_pelanggaran`
--

INSERT INTO `catatan_pelanggaran` (`id`, `anggota_kelas_id`, `id_guru`, `id_tapel`, `kejadian`, `solusi`, `created_at`, `updated_at`) VALUES
(5, 1, NULL, NULL, 'Rambut panjang dan diwarnai', 'Memotong rambut , sampai yang berwarna tidak terlihat lagi', '2023-08-16 01:44:22', '2023-08-16 01:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `catatan_wali_kelas`
--

CREATE TABLE `catatan_wali_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `catatan` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakulikuler`
--

CREATE TABLE `ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `pembina_id` bigint(20) UNSIGNED NOT NULL,
  `nama_ekstrakulikuler` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `gelar` varchar(10) NOT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nuptk` varchar(16) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `user_id`, `nama_lengkap`, `gelar`, `nip`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nuptk`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 2, 'LISMAWATI', 'S.Pd.I', NULL, 'P', 'Pulau Duit', '1988-10-10', NULL, 'Pulau Duit, Tambang', 'default.png', '2023-07-16 13:22:50', '2023-07-31 10:17:53'),
(2, 17, 'DEWI MUSPITA', 'S.Pd', NULL, 'P', 'Pulau Duit', '1988-10-19', NULL, 'Dusun II Pulau Duit, Kemang Indah, Tambang', 'default.png', '2023-07-31 10:07:45', '2023-07-31 10:07:45'),
(3, 18, 'WIDYA YETRI', 'S.Pd', NULL, 'P', 'Palung Raya', '1980-02-01', NULL, 'Palung Raya', 'default.png', '2023-08-01 13:09:07', '2023-08-01 13:09:07'),
(4, 19, 'SRIYANTI', 'S.Pd', NULL, 'P', 'Kampa', '1996-10-05', NULL, 'Kampa', 'default.png', '2023-08-01 13:10:52', '2023-08-01 13:10:52'),
(5, 20, 'DAWANIR', 'S.Pd', NULL, 'L', 'Kampa', '1972-08-15', NULL, 'Kampa', 'default.png', '2023-08-01 13:11:31', '2023-08-01 13:11:31'),
(6, 21, 'ASNAWATI', 'S.Pd', NULL, 'P', 'Pulau Duit', '1980-03-12', NULL, 'Pulau Duit', 'default.png', '2023-08-01 13:12:55', '2023-08-01 13:12:55'),
(7, 29, 'UMMI RODHIA', 'S. Pd. I', NULL, 'P', 'Pekanbaru', '1990-03-02', NULL, 'Jalan Bunga Ros', 'default.png', '2023-08-02 05:12:47', '2023-08-02 05:12:47'),
(8, 30, 'AMZAR, AMA', 'Pd. OR', NULL, 'L', 'Pekanbaru', '1989-07-02', NULL, 'Jalan Bunga Raya', 'default.png', '2023-08-02 05:14:14', '2023-08-02 05:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `k13_butir_sikap`
--

CREATE TABLE `k13_butir_sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kompetensi` enum('1','2') NOT NULL,
  `kode` varchar(10) NOT NULL,
  `butir_sikap` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_butir_sikap`
--

INSERT INTO `k13_butir_sikap` (`id`, `jenis_kompetensi`, `kode`, `butir_sikap`, `created_at`, `updated_at`) VALUES
(1, '1', '01', 'Keagamaan', '2023-08-15 07:35:07', '2023-08-15 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `k13_deskripsi_nilai_siswa`
--

CREATE TABLE `k13_deskripsi_nilai_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_nilai_akhir_raport_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi_pengetahuan` varchar(200) NOT NULL,
  `deskripsi_keterampilan` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_deskripsi_sikap_siswa`
--

CREATE TABLE `k13_deskripsi_sikap_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_spiritual` enum('1','2','3','4') NOT NULL,
  `deskripsi_spiritual` varchar(255) NOT NULL,
  `nilai_sosial` enum('1','2','3','4') NOT NULL,
  `deskripsi_sosial` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_kd_mapel`
--

CREATE TABLE `k13_kd_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `tingkatan_kelas` varchar(2) NOT NULL,
  `jenis_kompetensi` enum('1','2','3','4') NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `kode_kd` varchar(10) NOT NULL,
  `kompetensi_dasar` varchar(255) NOT NULL,
  `ringkasan_kompetensi` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_kd_mapel`
--

INSERT INTO `k13_kd_mapel` (`id`, `mapel_id`, `tingkatan_kelas`, `jenis_kompetensi`, `semester`, `kode_kd`, `kompetensi_dasar`, `ringkasan_kompetensi`, `created_at`, `updated_at`) VALUES
(1, 4, '5', '1', '1', '01', 'Menjunjung tinggi nilai keagamaan', 'Selalu berdoa sebelum dan sesudah pembelajaran', '2023-08-15 07:37:25', '2023-08-15 07:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `k13_kkm_mapel`
--

CREATE TABLE `k13_kkm_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_mapping_mapel`
--

CREATE TABLE `k13_mapping_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelompok` enum('A','B') NOT NULL,
  `nomor_urut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_akhir_raport`
--

CREATE TABLE `k13_nilai_akhir_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `nilai_pengetahuan` int(11) NOT NULL,
  `predikat_pengetahuan` enum('A','B','C','D') NOT NULL,
  `nilai_keterampilan` int(11) NOT NULL,
  `predikat_keterampilan` enum('A','B','C','D') NOT NULL,
  `nilai_spiritual` enum('1','2','3','4') NOT NULL,
  `nilai_sosial` enum('1','2','3','4') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_keterampilan`
--

CREATE TABLE `k13_nilai_keterampilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_keterampilan_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_pengetahuan`
--

CREATE TABLE `k13_nilai_pengetahuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_pengetahuan_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_pts_pas`
--

CREATE TABLE `k13_nilai_pts_pas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_pts` int(11) NOT NULL,
  `nilai_pas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_sosial`
--

CREATE TABLE `k13_nilai_sosial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_sosial_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` enum('1','2','3','4') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_spiritual`
--

CREATE TABLE `k13_nilai_spiritual` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_spiritual_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` enum('1','2','3','4') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_bobot_penilaian`
--

CREATE TABLE `k13_rencana_bobot_penilaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `bobot_ph` int(11) NOT NULL,
  `bobot_pts` int(11) NOT NULL,
  `bobot_pas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_keterampilan`
--

CREATE TABLE `k13_rencana_nilai_keterampilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_kd_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kode_penilaian` varchar(4) NOT NULL,
  `teknik_penilaian` enum('1','2','3','4','5') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_pengetahuan`
--

CREATE TABLE `k13_rencana_nilai_pengetahuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_kd_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kode_penilaian` varchar(4) NOT NULL,
  `teknik_penilaian` enum('1','2','3') NOT NULL,
  `bobot_teknik_penilaian` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_sosial`
--

CREATE TABLE `k13_rencana_nilai_sosial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_butir_sikap_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_spiritual`
--

CREATE TABLE `k13_rencana_nilai_spiritual` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_butir_sikap_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k13_tgl_raport`
--

CREATE TABLE `k13_tgl_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_penerbitan` varchar(50) NOT NULL,
  `tanggal_pembagian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_siswa`
--

CREATE TABLE `kehadiran_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `tanpa_keterangan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kehadiran_siswa`
--

INSERT INTO `kehadiran_siswa` (`id`, `anggota_kelas_id`, `sakit`, `izin`, `tanpa_keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 10, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(2, 11, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(3, 12, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(4, 2, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(5, 13, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(6, 3, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(7, 4, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(8, 14, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(9, 5, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(10, 15, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(11, 6, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(12, 16, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(13, 7, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(14, 17, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(15, 8, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(16, 18, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(17, 9, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(18, 19, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(19, 10, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05'),
(20, 20, 0, 0, 0, '2023-08-05 08:08:05', '2023-08-05 08:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `tingkatan_kelas` varchar(2) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `tapel_id`, `guru_id`, `tingkatan_kelas`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '1', 'kelas 5', '2021-11-13 07:22:20', '2023-07-31 10:13:16'),
(3, 2, 6, '1', 'Kelas 1', '2023-08-01 13:14:27', '2023-08-01 13:14:27'),
(4, 2, 5, '2', 'Kelas 2', '2023-08-01 13:14:48', '2023-08-01 13:14:48'),
(6, 2, 4, '3', 'Kelas 3', '2023-08-01 13:15:16', '2023-08-01 13:15:16'),
(7, 2, 3, '4', 'Kelas 4', '2023-08-01 13:15:50', '2023-08-01 13:15:50'),
(8, 2, 2, '5', 'kelas 5', '2023-08-01 13:16:04', '2023-08-01 13:16:04'),
(9, 2, 1, '6', 'Kelas 6', '2023-08-01 13:16:22', '2023-08-01 13:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `kenaikan_kelas`
--

CREATE TABLE `kenaikan_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `keputusan` enum('1','2','3','4') NOT NULL,
  `kelas_tujuan` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_bobot_penilaian`
--

CREATE TABLE `ktsp_bobot_penilaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `bobot_tugas` int(11) NOT NULL,
  `bobot_uh` int(11) NOT NULL,
  `bobot_uts` int(11) NOT NULL,
  `bobot_uas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_deskripsi_nilai_siswa`
--

CREATE TABLE `ktsp_deskripsi_nilai_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `ktsp_nilai_akhir_raport_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_kkm_mapel`
--

CREATE TABLE `ktsp_kkm_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_mapping_mapel`
--

CREATE TABLE `ktsp_mapping_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelompok` enum('1','2','3') NOT NULL,
  `nomor_urut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_akhir_raport`
--

CREATE TABLE `ktsp_nilai_akhir_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `nilai_akhir` int(11) NOT NULL,
  `predikat` enum('A','B','C','D') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_tugas`
--

CREATE TABLE `ktsp_nilai_tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_uh`
--

CREATE TABLE `ktsp_nilai_uh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_uts_uas`
--

CREATE TABLE `ktsp_nilai_uts_uas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_uts` int(11) NOT NULL,
  `nilai_uas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_tgl_raport`
--

CREATE TABLE `ktsp_tgl_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_penerbitan` varchar(50) NOT NULL,
  `tanggal_pembagian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `ringkasan_mapel` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `tapel_id`, `nama_mapel`, `ringkasan_mapel`, `created_at`, `updated_at`) VALUES
(1, 1, 'Matematika', 'MTK', '2023-07-16 03:02:41', '2023-07-16 03:02:41'),
(2, 2, 'Pendidikan Agama dan Budi Pekerti', 'PAI', '2023-08-01 12:57:13', '2023-08-01 12:57:13'),
(3, 2, 'Pendidikan Pancasila dan Kewarganegaraan', 'PKN', '2023-08-01 12:58:05', '2023-08-01 12:58:05'),
(4, 2, 'Bahasa Indonesia', 'B.INDO', '2023-08-01 12:58:34', '2023-08-01 12:58:34'),
(5, 2, 'Matematika', 'MTK', '2023-08-01 12:58:50', '2023-08-01 12:58:50'),
(7, 2, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'PJOK', '2023-08-01 13:00:30', '2023-08-01 13:00:30'),
(8, 2, 'Muatan Lokal', 'MULOK', '2023-08-01 13:00:47', '2023-08-01 13:00:47'),
(9, 2, 'Ilmu Pengetahuan Alam', 'IPA', '2023-08-01 13:02:57', '2023-08-01 13:02:57'),
(10, 2, 'Ilmu Pengetahuan Sosial', 'IPS', '2023-08-01 13:03:18', '2023-08-01 13:03:18'),
(11, 2, 'Seni Budaya dan Prakarya', 'SBDP', '2023-08-01 13:04:06', '2023-08-01 13:04:06'),
(12, 2, 'Seni Budaya dan Prakarya', 'SBDP', '2023-08-01 13:04:07', '2023-08-01 13:04:07');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_10_29_091435_create_admins_table', 1),
(3, '2021_10_29_092124_create_riwayat_logins_table', 1),
(4, '2021_10_31_172054_create_sekolahs_table', 1),
(5, '2021_11_01_221101_create_gurus_table', 1),
(6, '2021_11_03_201640_create_tapels_table', 1),
(7, '2021_11_03_214835_create_kelas_table', 1),
(8, '2021_11_03_224912_create_siswas_table', 1),
(9, '2021_11_04_161114_create_anggota_kelas_table', 1),
(10, '2021_11_07_002948_create_siswa_keluars_table', 1),
(11, '2021_11_07_144659_create_mapels_table', 1),
(12, '2021_11_07_182449_create_pembelajarans_table', 1),
(13, '2021_11_14_004515_create_ekstrakulikulers_table', 1),
(14, '2021_11_15_201349_create_anggota_ekstrakulikulers_table', 1),
(15, '2021_11_16_192257_create_k13_mapping_mapels_table', 1),
(16, '2021_11_17_203756_create_k13_kkm_mapels_table', 1),
(17, '2021_11_24_220603_create_k13_butir_sikaps_table', 1),
(18, '2021_11_25_103930_create_k13_kd_mapels_table', 1),
(19, '2021_11_26_191840_create_k13_tgl_raports_table', 1),
(20, '2021_11_29_173200_create_k13_rencana_nilai_pengetahuans_table', 1),
(21, '2021_12_03_213422_create_k13_rencana_nilai_keterampilans_table', 1),
(22, '2021_12_04_215127_create_k13_rencana_nilai_spirituals_table', 1),
(23, '2021_12_04_233904_create_k13_rencana_nilai_sosials_table', 1),
(24, '2021_12_05_001248_create_k13_rencana_bobot_penilaians_table', 1),
(25, '2021_12_05_093648_create_k13_nilai_pengetahuans_table', 1),
(26, '2021_12_15_170021_create_k13_nilai_keterampilans_table', 1),
(27, '2021_12_15_203751_create_k13_nilai_spirituals_table', 1),
(28, '2021_12_15_224616_create_k13_nilai_sosials_table', 1),
(29, '2021_12_16_124730_create_k13_nilai_pts_pas_table', 1),
(30, '2021_12_20_203638_create_k13_nilai_akhir_raports_table', 1),
(31, '2021_12_20_234314_create_k13_deskripsi_nilai_siswas_table', 1),
(32, '2021_12_21_184803_create_nilai_ekstrakulikulers_table', 1),
(33, '2021_12_22_013547_create_kehadiran_siswas_table', 1),
(34, '2021_12_22_015626_create_prestasi_siswas_table', 1),
(35, '2021_12_22_124942_create_catatan_wali_kelas_table', 1),
(36, '2021_12_30_200405_create_k13_deskripsi_sikap_siswas_table', 1),
(37, '2022_01_02_185835_create_ktsp_mapping_mapels_table', 1),
(38, '2022_01_02_194411_create_ktsp_kkm_mapels_table', 1),
(39, '2022_01_02_201458_create_ktsp_tgl_raports_table', 1),
(40, '2022_01_03_190838_create_ktsp_bobot_penilaians_table', 1),
(41, '2022_01_03_195440_create_ktsp_nilai_tugas_table', 1),
(42, '2022_01_03_203404_create_ktsp_nilai_uhs_table', 1),
(43, '2022_01_03_210334_create_ktsp_nilai_uts_uas_table', 1),
(44, '2022_01_03_225023_create_ktsp_nilai_akhir_raports_table', 1),
(45, '2022_01_03_232637_create_ktsp_deskripsi_nilai_siswas_table', 1),
(46, '2022_01_07_101419_create_pengumumen_table', 1),
(47, '2022_01_08_220617_create_kenaikan_kelas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ekstrakulikuler`
--

CREATE TABLE `nilai_ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ekstrakulikuler_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_ekstrakulikuler_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` enum('4','3','2','1') NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelajaran`
--

CREATE TABLE `pembelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelajaran`
--

INSERT INTO `pembelajaran` (`id`, `kelas_id`, `mapel_id`, `guru_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2023-07-16 03:23:09', '2023-07-16 03:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `user_id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Memperingati Kemederkaan NKRI', 'Kepada seleuruh orangtua agar dapat ikut serta mendampingi anak anak dalam pelaksanaan upacara 17 Agustus nanti yang dilaksanakan di lapangan kantor camat Tambang.', '2023-08-15 07:27:48', '2023-08-15 07:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_siswa`
--

CREATE TABLE `prestasi_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_prestasi` enum('1','2') NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_login`
--

CREATE TABLE `riwayat_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_login` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_login`
--

INSERT INTO `riwayat_login` (`id`, `user_id`, `status_login`, `created_at`, `updated_at`) VALUES
(7, 1, 0, '2023-08-01 13:45:02', '2023-08-19 02:19:16'),
(8, 17, 1, '2023-08-01 13:47:38', '2023-08-19 02:20:17'),
(9, 21, 0, '2023-08-02 05:54:18', '2023-08-07 03:30:30'),
(12, 157, 0, '2023-08-05 07:23:40', '2023-08-16 01:47:09'),
(13, 30, 0, '2023-08-07 02:28:41', '2023-08-07 03:22:23'),
(14, 20, 0, '2023-08-07 02:29:45', '2023-08-07 04:07:10'),
(15, 29, 0, '2023-08-07 03:49:28', '2023-08-07 03:57:18'),
(16, 18, 0, '2023-08-07 03:53:44', '2023-08-07 04:00:36'),
(17, 19, 0, '2023-08-07 03:56:14', '2023-08-07 03:59:21'),
(18, 142, 1, '2023-08-07 09:30:10', '2023-08-07 09:30:10'),
(19, 163, 0, '2023-08-16 01:50:03', '2023-08-18 09:51:17'),
(20, 107, 1, '2023-08-18 08:40:46', '2023-08-18 08:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `nss` varchar(15) DEFAULT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `nomor_telpon` varchar(13) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `kepala_sekolah` varchar(100) NOT NULL,
  `nip_kepala_sekolah` varchar(18) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `npsn`, `nss`, `kode_pos`, `nomor_telpon`, `alamat`, `website`, `email`, `logo`, `kepala_sekolah`, `nip_kepala_sekolah`, `created_at`, `updated_at`) VALUES
(1, 'SEKOLAH DASAR NEGERI 015 PALUNG RAYA', '10400585', '420201012661982', '28462', '081275341997', 'Dusun III Koto Jaya Desa Palung Raya, Kecamatan Tambang, Kabupaten Kampar, Riau', 'Uptsdn015palungraya', 'novellarismawati29@gmail.com', 'logo.png', 'DARWIS B, S.PD.SD', '196812011997081001', '2021-10-31 03:33:30', '2023-07-31 09:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jenis_pendaftaran` enum('1','2') NOT NULL,
  `nis` varchar(10) NOT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` enum('1','2','3','4','5','6','7') NOT NULL,
  `status_dalam_keluarga` enum('1','2','3') NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_hp` varchar(13) DEFAULT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `kelas_id`, `jenis_pendaftaran`, `nis`, `nisn`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `status_dalam_keluarga`, `anak_ke`, `alamat`, `nomor_hp`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `pekerjaan_wali`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(13, 86, NULL, '1', '65419', NULL, 'ANISA SAF PITRI', 'PEKANBARU', '2008-08-08', 'P', '1', '1', '1', 'ABCD', '88128071315', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(14, 87, NULL, '1', '65420', NULL, 'ARKAN FIRMANSYAH', 'PEKANBARU', '2008-08-09', 'L', '1', '1', '1', 'ABCD', '83016317764', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(15, 88, NULL, '1', '65421', NULL, 'M. GHIFARI ABIDZAR', 'PEKANBARU', '2008-08-10', 'L', '1', '1', '1', 'ABCD', '84687673325', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(16, 89, NULL, '1', '65422', NULL, 'AQILA NIVISA PUTRI', 'PEKANBARU', '2008-08-11', 'P', '1', '1', '1', 'ABCD', '86206660861', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(17, 90, NULL, '1', '65423', NULL, 'NAURA ZIKA EFFENDI', 'PEKANBARU', '2008-08-12', 'P', '1', '1', '1', 'ABCD', '85813985047', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(18, 91, NULL, '1', '65424', NULL, 'MIKAILA NURHIDAYATUL', 'PEKANBARU', '2008-08-13', 'P', '1', '1', '1', 'ABCD', '87602180189', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(19, 92, NULL, '1', '65425', NULL, 'MUHAMMAD RAKIB ALKAUFI', 'PEKANBARU', '2008-08-14', 'L', '1', '1', '1', 'ABCD', '80090766789', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(20, 93, NULL, '1', '65426', NULL, 'HABIL JEFRIANSYAH', 'PEKANBARU', '2008-08-15', 'L', '1', '1', '1', 'ABCD', '80935298384', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(21, 94, NULL, '1', '65427', NULL, 'HAZIEL JEFRIANSYAH', 'PEKANBARU', '2008-08-16', 'L', '1', '1', '1', 'ABCD', '87267045786', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(22, 95, NULL, '1', '65428', NULL, 'ARSYLA PUTRI RIZA', 'PEKANBARU', '2008-08-17', 'P', '1', '1', '1', 'ABCD', '86805968815', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(23, 96, NULL, '1', '65429', NULL, 'GHALIE ZAFRAN MULIADI', 'PEKANBARU', '2008-08-18', 'L', '1', '1', '1', 'ABCD', '84055429747', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(24, 97, NULL, '1', '65430', NULL, 'ZAKIA ANISA', 'PEKANBARU', '2008-08-19', 'P', '1', '1', '1', 'ABCD', '80389463784', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(25, 98, NULL, '1', '65431', NULL, 'MARSHA ANJANI', 'PEKANBARU', '2008-08-20', 'P', '1', '1', '1', 'ABCD', '87110504164', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(26, 99, NULL, '1', '65432', NULL, 'KUNTUM IZZATI AZZARA', 'PEKANBARU', '2008-08-21', 'P', '1', '1', '1', 'ABCD', '82430214189', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(27, 100, NULL, '1', '65433', NULL, 'FARAZ DIRGA PUTRA', 'PEKANBARU', '2008-08-22', 'L', '1', '1', '1', 'ABCD', '83677406277', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(28, 101, NULL, '1', '65434', NULL, 'ALFIRA OCTAVIA', 'PEKANBARU', '2008-08-23', 'P', '1', '1', '1', 'ABCD', '82063800458', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(29, 102, NULL, '1', '65435', NULL, 'MARSYA RIPY OKTARY', 'PEKANBARU', '2008-08-24', 'P', '1', '1', '1', 'ABCD', '86891613527', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(30, 103, NULL, '1', '65436', NULL, 'MEISA SYIFANI', 'PEKANBARU', '2008-08-25', 'P', '1', '1', '1', 'ABCD', '83225812121', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(31, 104, NULL, '1', '65437', NULL, 'SAHIRA TOMMY AFFIFA', 'PEKANBARU', '2008-08-26', 'P', '1', '1', '1', 'ABCD', '88718969935', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(32, 105, NULL, '1', '65438', NULL, 'CHALISTA SALSABILA', 'PEKANBARU', '2008-08-27', 'P', '1', '1', '1', 'ABCD', '83526981245', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(33, 106, NULL, '1', '65439', NULL, 'NAHWA AZZAHRA PUTRI', 'PEKANBARU', '2008-08-28', 'P', '1', '1', '1', 'ABCD', '87792475904', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(34, 107, NULL, '1', '65440', NULL, 'ANDINI NUR ASSYFA', 'PEKANBARU', '2008-08-29', 'P', '1', '1', '1', 'ABCD', '87259276388', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(35, 108, NULL, '1', '65441', NULL, 'DZIBRAN RAKA BUMI', 'PEKANBARU', '2008-08-30', 'L', '1', '1', '1', 'ABCD', '87123621568', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(36, 109, NULL, '1', '65442', NULL, 'RAJAS', 'PEKANBARU', '2007-08-01', 'L', '1', '1', '1', 'ABCD', '85269671260', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(37, 110, NULL, '1', '65443', NULL, 'JIHAN NAGITA', 'PEKANBARU', '2007-08-02', 'P', '1', '1', '1', 'ABCD', '84061808116', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(38, 111, NULL, '1', '65444', NULL, 'FAUZAN FIRMANSYAH', 'PEKANBARU', '2007-08-03', 'L', '1', '1', '1', 'ABCD', '81743983297', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(39, 112, NULL, '1', '65445', NULL, 'M. RESTU ALFARISI', 'PEKANBARU', '2007-08-04', 'L', '1', '1', '1', 'ABCD', '86882570854', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(40, 113, NULL, '1', '65446', NULL, 'RIJAL ALBASYIR', 'PEKANBARU', '2007-08-05', 'L', '1', '1', '1', 'ABCD', '89172949832', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(41, 114, NULL, '1', '65447', NULL, 'AFDAL ALFARIZI', 'PEKANBARU', '2007-08-06', 'L', '1', '1', '1', 'ABCD', '88307113221', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(42, 115, NULL, '1', '65448', NULL, 'SALSA NURUL JANNAH', 'PEKANBARU', '2007-08-07', 'P', '1', '1', '1', 'ABCD', '82577993807', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(43, 116, NULL, '1', '65449', NULL, 'ARKAN PUTRA RADITA', 'PEKANBARU', '2007-08-08', 'L', '1', '1', '1', 'ABCD', '88161184388', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(44, 117, NULL, '1', '65450', NULL, 'KAHIRUNNISA AZZAHRA', 'PEKANBARU', '2007-08-09', 'P', '1', '1', '1', 'ABCD', '81704869930', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(45, 118, NULL, '1', '65451', NULL, 'SAFIAH WAHIDAH A', 'PEKANBARU', '2007-08-10', 'P', '1', '1', '1', 'ABCD', '80857033557', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(46, 119, NULL, '1', '65452', NULL, 'AFRILIA SAKIRA', 'PEKANBARU', '2007-08-11', 'P', '1', '1', '1', 'ABCD', '85137781270', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(47, 120, NULL, '1', '65453', NULL, 'ANISA SHIFA AZZAHRA', 'PEKANBARU', '2007-08-12', 'P', '1', '1', '1', 'ABCD', '85784090299', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(48, 121, NULL, '1', '65454', NULL, 'AQILA FATHIYYATURAHMAH', 'PEKANBARU', '2007-08-13', 'P', '1', '1', '1', 'ABCD', '89789380048', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(49, 122, NULL, '1', '65455', NULL, 'SILVA MUTMAINA A', 'PEKANBARU', '2007-08-14', 'P', '1', '1', '1', 'ABCD', '87531259028', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(50, 123, NULL, '1', '65456', NULL, 'MUHAMMAD ALIF', 'PEKANBARU', '2007-08-15', 'L', '1', '1', '1', 'ABCD', '82016860996', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(51, 124, NULL, '1', '65457', NULL, 'AHRATUL ALDIANSYAH', 'PEKANBARU', '2006-08-01', 'L', '1', '1', '1', 'ABCD', '83496638247', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(52, 125, NULL, '1', '65458', NULL, 'WILDA ANISA', 'PEKANBARU', '2006-08-02', 'P', '1', '1', '1', 'ABCD', '81074811297', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(53, 126, NULL, '1', '65459', NULL, 'ANDIKA PRATAMA P', 'PEKANBARU', '2006-08-03', 'L', '1', '1', '1', 'ABCD', '89618076015', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(54, 127, NULL, '1', '65460', NULL, 'AQILA MAHERA', 'PEKANBARU', '2006-08-04', 'P', '1', '1', '1', 'ABCD', '87864336330', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(55, 128, NULL, '1', '65461', NULL, 'ATIQO FAIRUZ', 'PEKANBARU', '2006-08-05', 'L', '1', '1', '1', 'ABCD', '87584938890', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(56, 129, NULL, '1', '65462', NULL, 'SYABIL ZAHRAN', 'PEKANBARU', '2006-08-06', 'L', '1', '1', '1', 'ABCD', '80935909287', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(57, 130, NULL, '1', '65463', NULL, 'RANGGA RAVAEL', 'PEKANBARU', '2006-08-07', 'L', '1', '1', '1', 'ABCD', '87847460786', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(58, 131, NULL, '1', '65464', NULL, 'M. RASYDIN', 'PEKANBARU', '2006-08-08', 'L', '1', '1', '1', 'ABCD', '89070222024', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(59, 132, NULL, '1', '65465', NULL, 'AZIKA PUTRI AYUDIA', 'PEKANBARU', '2006-08-09', 'P', '1', '1', '1', 'ABCD', '84280399193', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(60, 133, NULL, '1', '65466', NULL, 'M. ZAHDAN ABDILLAH', 'PEKANBARU', '2006-08-10', 'L', '1', '1', '1', 'ABCD', '85978068610', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(61, 134, NULL, '1', '65467', NULL, 'M. ZIYAD ALFHARIZY', 'PEKANBARU', '2006-08-11', 'L', '1', '1', '1', 'ABCD', '88714100181', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(62, 135, NULL, '1', '65468', NULL, 'M. ALIF ALFAJAR', 'PEKANBARU', '2006-08-12', 'L', '1', '1', '1', 'ABCD', '88430883033', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(63, 136, NULL, '1', '65469', NULL, 'FIKRI FATHAN SARIF', 'PEKANBARU', '2006-08-13', 'L', '1', '1', '1', 'ABCD', '83562203571', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(64, 137, NULL, '1', '65470', NULL, 'M. ZAFRAN A', 'PEKANBARU', '2006-08-14', 'L', '1', '1', '1', 'ABCD', '88909319012', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(65, 138, NULL, '1', '65471', NULL, 'RAFA HAFIZ S', 'PEKANBARU', '2006-08-15', 'L', '1', '1', '1', 'ABCD', '86964380463', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(66, 139, NULL, '1', '65472', NULL, 'FIRZA ADITIA PRATAMA', 'PEKANBARU', '2006-08-16', 'L', '1', '1', '1', 'ABCD', '82643265032', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(67, 140, NULL, '1', '65473', NULL, 'NUR AULIA', 'PEKANBARU', '2006-08-17', 'P', '1', '1', '1', 'ABCD', '89956885066', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(68, 141, NULL, '1', '65474', NULL, 'DIGO RAMADHAN', 'PEKANBARU', '2006-08-18', 'L', '1', '1', '1', 'ABCD', '88755167398', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(69, 142, NULL, '1', '65475', NULL, 'ADZKA ZAFRAN', 'PEKANBARU', '2006-08-19', 'L', '1', '1', '1', 'ABCD', '81384086367', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(70, 143, NULL, '1', '65476', NULL, 'M. GHOFUR', 'PEKANBARU', '2005-08-01', 'L', '1', '1', '1', 'ABCD', '83030437360', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(71, 144, NULL, '1', '65477', NULL, 'RONALDO', 'PEKANBARU', '2005-08-02', 'L', '1', '1', '1', 'ABCD', '82648745968', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(72, 145, NULL, '1', '65478', NULL, 'NADYA SAFWA SALSABILA', 'PEKANBARU', '2005-08-03', 'P', '1', '1', '1', 'ABCD', '84456019585', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(73, 146, NULL, '1', '65479', NULL, 'KINARA AURELIA', 'PEKANBARU', '2005-08-04', 'P', '1', '1', '1', 'ABCD', '88366381631', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(74, 147, NULL, '1', '65480', NULL, 'AISYAH RUBBAMA', 'PEKANBARU', '2005-08-05', 'P', '1', '1', '1', 'ABCD', '83310361394', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(75, 148, NULL, '1', '65481', NULL, 'ANDRE BEKTI RAMNA', 'PEKANBARU', '2005-08-06', 'L', '1', '1', '1', 'ABCD', '80320714908', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(76, 149, NULL, '1', '65482', NULL, 'VANEZA RAMADANI', 'PEKANBARU', '2005-08-07', 'P', '1', '1', '1', 'ABCD', '89399052511', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(77, 150, NULL, '1', '65483', NULL, 'NAZZWA HELMI FAIRA', 'PEKANBARU', '2005-08-08', 'P', '1', '1', '1', 'ABCD', '87801758428', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(78, 151, NULL, '1', '65484', NULL, 'NAGA BONAR', 'PEKANBARU', '2005-08-09', 'L', '1', '1', '1', 'ABCD', '86944551230', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(79, 152, NULL, '1', '65485', NULL, 'ANDRA RAINI', 'PEKANBARU', '2005-08-10', 'P', '1', '1', '1', 'ABCD', '86564888301', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(80, 153, NULL, '1', '65486', NULL, 'RAGISYA GUTCHI VIONA', 'PEKANBARU', '2005-08-11', 'P', '1', '1', '1', 'ABCD', '86888686717', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(81, 154, NULL, '1', '65487', NULL, 'SYAHRI NURFITRIANI', 'PEKANBARU', '2005-08-12', 'P', '1', '1', '1', 'ABCD', '81380845470', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(82, 155, NULL, '1', '65488', NULL, 'MAHADIR RAMADAHAN', 'PEKANBARU', '2005-08-13', 'L', '1', '1', '1', 'ABCD', '88299286269', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(83, 156, NULL, '1', '65489', NULL, 'M. ARIF', 'PEKANBARU', '2005-08-14', 'L', '1', '1', '1', 'ABCD', '85810068677', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(84, 157, NULL, '1', '65490', NULL, 'ABDAL AFRIZAL', 'Palung Raya', '2010-08-16', 'L', '1', '1', '1', 'Palung Raya', '82774309780', 'Yusri', 'Mulyani', 'Swasta', 'Swasta', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-05 07:26:29'),
(85, 158, NULL, '1', '65491', NULL, 'ADZRA NADIRA', 'PEKANBARU', '2004-08-02', 'P', '1', '1', '1', 'ABCD', '87700042294', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(86, 159, 8, '1', '65492', NULL, 'ANDRA SAPUTRA', 'PEKANBARU', '2004-08-03', 'L', '1', '1', '1', 'ABCD', '84947074454', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-05 07:36:30'),
(87, 160, NULL, '1', '65493', NULL, 'APRILIA NAHLA EFENDI', 'PEKANBARU', '2004-08-04', 'P', '1', '1', '1', 'ABCD', '86532628275', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(88, 161, NULL, '1', '65494', NULL, 'ARINI PURI CANTIKA', 'PEKANBARU', '2004-08-05', 'P', '1', '1', '1', 'ABCD', '80344728898', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(89, 162, 8, '1', '65495', NULL, 'DAFFA SEPTIANO', 'PEKANBARU', '2004-08-06', 'L', '1', '1', '1', 'ABCD', '82535065167', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(90, 163, 8, '1', '65496', NULL, 'FASTABIKUL KHAIRO', 'PEKANBARU', '2004-08-07', 'L', '1', '1', '1', 'ABCD', '87947109245', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(91, 164, 8, '1', '65497', NULL, 'HERLITA', 'PEKANBARU', '2004-08-08', 'P', '1', '1', '1', 'ABCD', '85055313907', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(92, 165, 8, '1', '65498', NULL, 'IBRAHIM ALRIADI', 'PEKANBARU', '2004-08-09', 'L', '1', '1', '1', 'ABCD', '89396720515', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(93, 166, NULL, '1', '65499', NULL, 'IKHSAN NELRIFALDI', 'PEKANBARU', '2004-08-10', 'L', '1', '1', '1', 'ABCD', '84548626058', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(94, 167, 8, '1', '65500', NULL, 'M. MIKO PRATAMA', 'PEKANBARU', '2004-08-11', 'L', '1', '1', '1', 'ABCD', '82226633236', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(95, 168, 8, '1', '65501', NULL, 'MUHAMMAD FAHRI', 'PEKANBARU', '2004-08-12', 'L', '1', '1', '1', 'ABCD', '85813098143', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(96, 169, 8, '1', '65502', NULL, 'MUHAMMAD FIRDAUS', 'PEKANBARU', '2004-08-13', 'L', '1', '1', '1', 'ABCD', '89209743746', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(97, 170, 8, '1', '65503', NULL, 'MUHAMMAD GILANG', 'PEKANBARU', '2004-08-14', 'L', '1', '1', '1', 'ABCD', '83076162259', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(98, 171, 8, '1', '65504', NULL, 'MUHAMMAD HELMI', 'PEKANBARU', '2004-08-15', 'L', '1', '1', '1', 'ABCD', '83172594699', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-05 07:36:30'),
(99, 172, NULL, '1', '65505', NULL, 'MUHAMMAD REFAN', 'PEKANBARU', '2004-08-16', 'L', '1', '1', '1', 'ABCD', '81787488480', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(100, 173, NULL, '1', '65506', NULL, 'NADIA AISYA PUTRI', 'PEKANBARU', '2004-08-17', 'P', '1', '1', '1', 'ABCD', '83534778830', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(101, 174, NULL, '1', '65507', NULL, 'NURMA SANTIKA', 'PEKANBARU', '2004-08-18', 'P', '1', '1', '1', 'ABCD', '89156634249', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(102, 175, NULL, '1', '65508', NULL, 'QORY NAURA', 'PEKANBARU', '2004-08-19', 'P', '1', '1', '1', 'ABCD', '82952118693', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(103, 176, NULL, '1', '65509', NULL, 'RAISYA NADHIRA', 'PEKANBARU', '2004-08-20', 'P', '1', '1', '1', 'ABCD', '81669412670', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(104, 177, NULL, '1', '65510', NULL, 'RIZKY SAPUTA', 'PEKANBARU', '2004-08-21', 'L', '1', '1', '1', 'ABCD', '80985276231', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(105, 178, NULL, '1', '65511', NULL, 'SYAIFUL BAHRI', 'PEKANBARU', '2004-08-22', 'L', '1', '1', '1', 'ABCD', '82134500054', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(106, 179, NULL, '1', '65512', NULL, 'SYAKIRA ADELIA', 'PEKANBARU', '2004-08-23', 'P', '1', '1', '1', 'ABCD', '85107417963', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(107, 180, NULL, '1', '65513', NULL, 'VIRJINIA ADELIA', 'PEKANBARU', '2004-08-24', 'P', '1', '1', '1', 'ABCD', '83108118127', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(108, 181, NULL, '1', '65514', NULL, 'YUSMAR HASAN', 'PEKANBARU', '2004-08-25', 'L', '1', '1', '1', 'ABCD', '86457068611', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(109, 182, NULL, '1', '65515', NULL, 'NATASYA ADELLINA PUTRI', 'PEKANBARU', '2004-08-26', 'P', '1', '1', '1', 'ABCD', '80475444045', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(110, 183, NULL, '1', '65516', NULL, 'ARJUNA MUDLIANTO', 'PEKANBARU', '2003-05-01', 'L', '1', '1', '1', 'ABCD', '86174471585', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(111, 184, NULL, '1', '65517', NULL, 'M. FARHAN BASRI', 'PEKANBARU', '2003-05-02', 'L', '1', '1', '1', 'ABCD', '85069710642', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(112, 185, NULL, '1', '65518', NULL, 'SALSABILA', 'PEKANBARU', '2003-05-03', 'P', '1', '1', '1', 'ABCD', '84969165178', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(113, 186, NULL, '1', '65519', NULL, 'ZAHIRA JESIKA R.', 'PEKANBARU', '2003-05-04', 'P', '1', '1', '1', 'ABCD', '87553640506', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(114, 187, NULL, '1', '65520', NULL, 'MICHELE PUTRI P', 'PEKANBARU', '2003-05-05', 'P', '1', '1', '1', 'ABCD', '86653165631', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(115, 188, NULL, '1', '65521', NULL, 'ALESYA CAHAYA.F', 'PEKANBARU', '2003-05-06', 'P', '1', '1', '1', 'ABCD', '88610848053', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(116, 189, NULL, '1', '65522', NULL, 'RAFFI RAFFAEL', 'PEKANBARU', '2003-05-07', 'L', '1', '1', '1', 'ABCD', '80680556363', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(117, 190, NULL, '1', '65523', NULL, 'M. ARSYIL AZIMI', 'PEKANBARU', '2003-05-08', 'L', '1', '1', '1', 'ABCD', '88495760795', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(118, 191, NULL, '1', '65524', NULL, 'M.ZACKI SAFANDI', 'PEKANBARU', '2003-05-09', 'L', '1', '1', '1', 'ABCD', '85139693901', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(119, 192, NULL, '1', '65525', NULL, 'FATHR ANUGRAH.R', 'PEKANBARU', '2003-05-10', 'L', '1', '1', '1', 'ABCD', '85843597501', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(120, 193, NULL, '1', '65526', NULL, 'ZAHWA AZZAHRA.M', 'PEKANBARU', '2003-05-11', 'P', '1', '1', '1', 'ABCD', '89394261802', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(121, 194, NULL, '1', '65527', NULL, 'GITARI AMELIA', 'PEKANBARU', '2003-05-12', 'P', '1', '1', '1', 'ABCD', '88700551492', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(122, 195, NULL, '1', '65528', NULL, 'FADIRA OKTAVIONA', 'PEKANBARU', '2003-05-13', 'P', '1', '1', '1', 'ABCD', '86814847153', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(123, 196, NULL, '1', '65529', NULL, 'SHIREN NOVICA.F', 'PEKANBARU', '2003-05-14', 'P', '1', '1', '1', 'ABCD', '81446121863', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(124, 197, NULL, '1', '65530', NULL, 'NAUFAL AZZAM ILHAM', 'PEKANBARU', '2003-05-15', 'L', '1', '1', '1', 'ABCD', '84880493057', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(125, 198, NULL, '1', '65531', NULL, 'BELVA AURELIA', 'PEKANBARU', '2003-05-16', 'P', '1', '1', '1', 'ABCD', '89964037295', 'BASAR', 'RIWAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2023-08-03 23:14:14', '2023-08-03 23:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_keluar`
--

CREATE TABLE `siswa_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `keluar_karena` varchar(30) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `alasan_keluar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tapel`
--

CREATE TABLE `tapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran` varchar(9) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tapel`
--

INSERT INTO `tapel` (`id`, `tahun_pelajaran`, `semester`, `created_at`, `updated_at`) VALUES
(1, '2022/2023', '1', '2021-11-03 06:33:39', '2021-11-03 06:33:39'),
(2, '2023/2024', '1', '2023-07-31 10:15:12', '2023-07-31 10:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2','3') NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$LxLtowUzFJLPeH1pPSCbCOOQJI7Rfsn7Z27FgBPTfkxJ171bLK7JS', '1', 1, NULL, '2021-10-28 19:27:37', '2022-01-06 00:44:14'),
(2, 'lismawati', '$2y$10$WE6.FQj6SvKyZigoJ6H7/eT2NFT/NpTcb7g0OncdwrlF/Dd0RB1aW', '2', 1, NULL, '2021-11-06 06:50:01', '2023-07-31 10:34:28'),
(17, 'dewimuspita', '$2y$10$w5jefO4b2brwDudFpFUcv.PpEVQZ4reKudnNGMdd6aNkDxXYTDugG', '2', 1, NULL, '2023-07-31 10:07:45', '2023-07-31 10:34:06'),
(18, 'widyayetri', '$2y$10$s7D4MPZyEz.ifWw6H.D1Cu/dhVL2WnlThTz8B.R/2vSi5KsMiM5ky', '2', 1, NULL, '2023-08-01 13:09:07', '2023-08-01 13:09:07'),
(19, 'sriyanti', '$2y$10$BWZ9MbA99DaRUjl7nb8qbelLI9b2qWeXTOktYxSa7CwS.3Tw9fCz6', '2', 1, NULL, '2023-08-01 13:10:52', '2023-08-01 13:10:52'),
(20, 'dawanir', '$2y$10$JKSt7a0sIdHdM0Ki47CgTuvqx40KfNrUOubg6wS2Js3.AJlCkyY1q', '2', 1, NULL, '2023-08-01 13:11:31', '2023-08-01 13:11:31'),
(21, 'asnawati', '$2y$10$muO.UEO3ByOGRdkMUe2vV.2L7NmUFgVPU9cQkl3eo9u7fHZfUjT/.', '2', 1, NULL, '2023-08-01 13:12:55', '2023-08-01 13:12:55'),
(29, 'ummirodhia', '$2y$10$SWvWGYXEoF65n4ukhC3EiOOQEbMfc/NtH6LrquucPsbZAjv8zG6S2', '2', 1, NULL, '2023-08-02 05:12:47', '2023-08-02 05:12:47'),
(30, 'amzar,ama', '$2y$10$fKaxFWcfc7zwguvIF3ilhOI8OeuauF.QfXQSnvAdQCdm8mBkeWluO', '2', 1, NULL, '2023-08-02 05:14:14', '2023-08-02 05:14:14'),
(86, 'anisasafpitri65419', '$2y$10$yFRddzNpG9G36MzgK3m23ecFjUPmV09NtATYE6eKcqXOS2lopVkF2', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(87, 'arkanfirmansyah65420', '$2y$10$XrsGmLv7bbahYsI/rOP3Ye25j0d1tjnOmEmGP8jenaGYDn2ppC.iS', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(88, 'm.ghifariabidzar65421', '$2y$10$4r9NEDBbIRcYKt1HUZEwY.8qkQ0YggXbfXHwXtY9IZo/HhbarT8xG', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(89, 'aqilanivisaputri65422', '$2y$10$7vpPMGI1.ym7W3190wLhLOXoXOH.m62n6dhazCfn9pUraedYfwcHW', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(90, 'naurazikaeffendi65423', '$2y$10$2CttKcKHbPIQgvh.FhbISODp1bcNHXJLVooBuITHGMH4zGlzUCA3y', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(91, 'mikailanurhidayatul65424', '$2y$10$mYUVOUs0IVFg4AS4zNgNIeF9sJpndqXo6dvUPR4YfrGg4YX4j2cQa', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(92, 'muhammadrakibalkaufi65425', '$2y$10$yWtrmDtJe9oTWP2Wbm0qzeuiuCqXEbIBytvq09poItGPkMDr6xs.K', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(93, 'habiljefriansyah65426', '$2y$10$lnhM1Umj30UvQszpE34EXun0piJ8rwuP5m1lfPfDwWkH6Ggw55p3u', '3', 1, NULL, '2023-08-03 23:14:06', '2023-08-03 23:14:06'),
(94, 'hazieljefriansyah65427', '$2y$10$BMQmuoVu.MJvMu0jvsbkMObhbXfwpxdE1SlsDZHaPndemoWliGJu6', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(95, 'arsylaputririza65428', '$2y$10$3lw61bDwoX/AxDXQUNT64eP3f1PD27Q74fH.Il4Mt1BwSx1KQX6C.', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(96, 'ghaliezafranmuliadi65429', '$2y$10$PFpbig.9tkAaROgDPcGB.e.CEN/n38EDgSS3KzSkzm/svekYgaWuK', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(97, 'zakiaanisa65430', '$2y$10$cizP1H.pT959uCeH5atOy.VABoufSucCKJKyDM9LGjEw8JUKtAcQC', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(98, 'marshaanjani65431', '$2y$10$pbVeRI47Oguo9J2Lzo4Fp.oI6RXY6YRAxpJ11agE4nqVlM5slJlpK', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(99, 'kuntumizzatiazzara65432', '$2y$10$wgOnMRlk6il.vlBuf6kYYOLg/VBc0K1iiQhp9.XLgnjAJIxjpK1gW', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(100, 'farazdirgaputra65433', '$2y$10$AW9iS1wIkGxwD9U/NxX9cu03QqGs2UQr/qnGPZqX.axQp8CFpBb8e', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(101, 'alfiraoctavia65434', '$2y$10$GFesyHMBK0T4m77WfqWt9ez7dFx6gM43Yfka21nVnSU5S1.oqtDFq', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(102, 'marsyaripyoktary65435', '$2y$10$5DH.4Y23eujRx5XODaHOqOLhJSsBOIkTGfzYDjDHeaxe76yXfkzw6', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(103, 'meisasyifani65436', '$2y$10$WuJKDSVLDiOC./576tqBreqFjrSREa4MlpjmDdRCGOeYDQK4j2KnG', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(104, 'sahiratommyaffifa65437', '$2y$10$yMdGCwOFmJdkTBqgfyjk7e4IHozZP4j50QdNef/apRPBzcc5XbPva', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(105, 'chalistasalsabila65438', '$2y$10$DvPQt6DPbpdVbaboQmaghe0Vn.ss9AJslF3qhweF3AfLYYMg7iF6e', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(106, 'nahwaazzahraputri65439', '$2y$10$avSse5cx1zekS.gmoFoB4OdpvHvbGate0hQ7P5AJ/9JnHUg38n.CO', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(107, 'andininurassyfa65440', '$2y$10$ny7tzPslOjvOrv2LGl/nBOjAFuNfm8giypBqadK5F1mTSNFdgkeVa', '3', 1, NULL, '2023-08-03 23:14:07', '2023-08-03 23:14:07'),
(108, 'dzibranrakabumi65441', '$2y$10$2EFj5YzDgKnncuf1f65vX.f/yNl9amMMEpW8enXgAVEVLpEdP3.W.', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(109, 'rajas65442', '$2y$10$EDawQXgWfEKOPyg2CGJa7uJb8Bnt7mfutQJYRzC4F/DmOowiJn9RG', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(110, 'jihannagita65443', '$2y$10$FziE6uQfVb/kGaZnICLAhuRm3bihr72QpEnghF38VgQY6/uZWYW2K', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(111, 'fauzanfirmansyah65444', '$2y$10$nAjdu22Aux4lhqXTD2W8xeypfBfEnZm9Khr3tqkSj.UjY53H0x9xG', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(112, 'm.restualfarisi65445', '$2y$10$vdsQ0Ze/EDQreKjTHwFlbeYS9wRn6hI2HWqUqnkSZxGBn/KovVCLW', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(113, 'rijalalbasyir65446', '$2y$10$UPdxVsQs7mh748gQIKNc/.CZL2/7HsHE146FFKOwPTJtQ6BQwzAQy', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(114, 'afdalalfarizi65447', '$2y$10$gd8jAEZ0gkWuDtcTr4KXoeTqeNLsc7CQ2dpQBumh48e0N313VZCk.', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(115, 'salsanuruljannah65448', '$2y$10$9Jg6XCZPQJCPX2Qqh8QOK.ozBFEHTZ1S/pQbJaihUdkpsIMVRA4pC', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(116, 'arkanputraradita65449', '$2y$10$K1anvX0pcBHY1pYFlSWmF.mU5PK9nFJStJOEEwxuylt8KfXmKjar6', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(117, 'kahirunnisaazzahra65450', '$2y$10$r76hf6pvPPCAM1NSSTVJ..5um7Ccnpye/O9geLTQvv9vnU61YtD6C', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(118, 'safiahwahidaha65451', '$2y$10$BdfJVUS4Nwlnea56wwtiM.upPEclDEdRXLX7RXnW/787UaYDZyUMu', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(119, 'afriliasakira65452', '$2y$10$pPS5uEYZhjnEWWWHBPur6OE1j70bqGMMFZWNG9Tv09l1TWrJNIaA.', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(120, 'anisashifaazzahra65453', '$2y$10$h4.ErQVYDRo.YzyQCsOYluiTPbFPjrqkwl0iuWPzipr1AOJwfsM.C', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(121, 'aqilafathiyyaturahmah65454', '$2y$10$0lw3/gKitD6PZfAPIyFYUOtFXCTO3CHmkM0EIDOUtOvgC/1VRiXg2', '3', 1, NULL, '2023-08-03 23:14:08', '2023-08-03 23:14:08'),
(122, 'silvamutmainaa65455', '$2y$10$Bgal.pGCQpifxM/DB1Dz.OIdyJxncwHn0SLlhLbioLz0CATFKxRq2', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(123, 'muhammadalif65456', '$2y$10$ke4XaBmPZTpjGB0UJFLV7eDhGNSPNbDCgtMyqjJ2sZFQuOkc4Q1vC', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(124, 'ahratulaldiansyah65457', '$2y$10$Z4.uOfnKZnaFfPrVJB8EC.DtDm3qD4clztR7unRBxeKh5S/ZggiDy', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(125, 'wildaanisa65458', '$2y$10$SiPnXiRqnP2qNm.M2T/dI.8bceYgTdGQaWZcJMSRlcf7DsWxrofhC', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(126, 'andikapratamap65459', '$2y$10$cLg6jJ1Zw4I0wp9RmN254ucaMi.fX/51BY2RU6LXNJboEttReIrSO', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(127, 'aqilamahera65460', '$2y$10$XOg.K6ryobH/K5t3fyP73u8PNLRgoTMfGvXIrk.AdnOpsWoUamhSK', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(128, 'atiqofairuz65461', '$2y$10$50Y0WRDKCPQLgHjA6OyJju0Vzn.yUPQv6vHdCs2tf7iOOmBB1RO.6', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(129, 'syabilzahran65462', '$2y$10$vZFWU2eWO68hRqP78fOcKefRf6WudjWpRJH2vCdkqgxoU2kbTZ1DS', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(130, 'ranggaravael65463', '$2y$10$ToPjiyGDzWxa7d0OPl4Nb.TCtMtZZnVj1dEaexuqc3/LR4JJQud9e', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(131, 'm.rasydin65464', '$2y$10$d.WVWCtYNxbR3EBmQBuGC.cuBORUEmh9qLrAhASBeKhMsGy18qZPW', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(132, 'azikaputriayudia65465', '$2y$10$J6M1/9Aa.0XCbdKyUkYCuepCaetKjxE.ZVkZ29Dkum31w86x4bCIa', '3', 1, NULL, '2023-08-03 23:14:09', '2023-08-03 23:14:09'),
(133, 'm.zahdanabdillah65466', '$2y$10$eVUe8.kNGj47leKzVrhHmuC1B.4cuIZmbjEMKryMX3V.u57TOdqcW', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(134, 'm.ziyadalfharizy65467', '$2y$10$9DoXLEJlQRkKGynnGshl3.zXFFgATyj3ui3riatRtf8dT2kGALc0i', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(135, 'm.alifalfajar65468', '$2y$10$ULXxcEBM3oHXhPjlwGo53OWPx1a5YTejc5mX6XePr8pA/rqgFqSbK', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(136, 'fikrifathansarif65469', '$2y$10$ZOq1GTC1a1Zw4HbZrnVpB.WNF5nRVshXSeaDMa4g8eKiqXI8Ci3ha', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(137, 'm.zafrana65470', '$2y$10$nVeqZeZxKRTgl5A02N7aiOpZNWj8dLRCop437q2OtV8Wk6bgha0dW', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(138, 'rafahafizs65471', '$2y$10$eVBxzr7mfy2wgudp/h0/nON7NFb5hiswOLX4jRPBrGR7yv9yzOWr.', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(139, 'firzaaditiapratama65472', '$2y$10$zdWmIhIzSq8vhNd/HU161eK/5uZ3wf0rQYIGNeSHhiqcaSW3S79t.', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(140, 'nuraulia65473', '$2y$10$0X/s7QlyOJ1X7CkyWdlX6ONrRk5Ac4SWcdeHMHTdLAAegkRDiqhRq', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(141, 'digoramadhan65474', '$2y$10$licd7v1PjmbgP4E3OFpwXeXg.YJWAesqiLstr9laS9GyaGyiJbWxS', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(142, 'adzkazafran65475', '$2y$10$4VzF7CFo6sdRNpyWcCDzYOm2gpJzu4fi94iHwrp.QESJ7A1hFtcCy', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(143, 'm.ghofur65476', '$2y$10$Cy7jDoexoRGk3TrRnNnOPug6myt8U59rZ/H.43JeK3iTCprfVjG9m', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(144, 'ronaldo65477', '$2y$10$EN7ddY5sdPtnDKUMuasMLuh8CKW7u0SPd.ek5FhdfOfrbrZBT6Gm6', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(145, 'nadyasafwasalsabila65478', '$2y$10$0I259KMpZp8/bkWKElLS8uun4aSC5wIzZnjfounUtYr2pyzkVp4Wi', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(146, 'kinaraaurelia65479', '$2y$10$GwNgOn25.Q7y8mRFfGWFY.tpug8hNdcB83CpP39bnKlGABmkl32I6', '3', 1, NULL, '2023-08-03 23:14:10', '2023-08-03 23:14:10'),
(147, 'aisyahrubbama65480', '$2y$10$SyXJUvTJRFTYWE.Xf3/reOfJU.TuFDrzUvc3kYTvr1meNdogO94aS', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(148, 'andrebektiramna65481', '$2y$10$wYMgmX5QB3c7VeBU26OSguoD0eY9iA4IAG4O4.Li41Qoxurm4YLiG', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(149, 'vanezaramadani65482', '$2y$10$agVYGDV8tIL7XwwQOsAclOVfImP//qnixejIpfZpv63v0/XP/PJdm', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(150, 'nazzwahelmifaira65483', '$2y$10$TIFhr77ESZ6/hrLOiQKnteo1FuaC2zjvGt5DndK.LBEn4n8sJqxtm', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(151, 'nagabonar65484', '$2y$10$CSW2ooHA3zz4Q8bFFXapiuRGbRRU6mpVL9RInxnIWWU4mpbNpkt9G', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(152, 'andraraini65485', '$2y$10$JkEiqof1aJrwae13P0lPT.a4claqzeRMHicWU7MVg8G/Ba559G4Iy', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(153, 'ragisyagutchiviona65486', '$2y$10$6bfxPNrEasMyAM9Hukrut.LBzbfKsI9kzy6d7PjvAIl3oC54POX4K', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(154, 'syahrinurfitriani65487', '$2y$10$oL0PatgTFj7rKfksDs3x5.xKD4bx7KOfHMb5PEpBEkalx3rhwqS2a', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(155, 'mahadirramadahan65488', '$2y$10$l6EMr814.Uc3ZbWJNfjJ8.vl8TktSpDyt8A6aC8TM.hyvA66Fgcsq', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(156, 'm.arif65489', '$2y$10$zEnFdq5H/yOablEOgLlU/O6TeZGnGEBJ8/ihzONXIjGOhHI7pz2kG', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(157, 'abdalafrizal65490', '$2y$10$CrbtZ2PAHbb9UveBsBfJG.j32G8Njg6hAbn/Ltzt.9RkyA0TEA7G.', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(158, 'adzranadira65491', '$2y$10$H73nBtVIDef6G2Ucks7fJecIafOrlQiJ/UpsE74GbIHIAQVoheO/G', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(159, 'andrasaputra65492', '$2y$10$i4EEgIpGhXv18v5iJLtbheRzxMb4G2j8ETw5jlI/2I0PedMIGZDTS', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(160, 'aprilianahlaefendi65493', '$2y$10$osAc8u2RvfciTpcK6Z2eDe9t6OjGbZQcI1tpyP/dN.AQBS5sixgs6', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(161, 'arinipuricantika65494', '$2y$10$mnwIwtZZm..iyE9fZfC0S.RpH8QqvtvktPHSYadHnkECaL909FC0O', '3', 1, NULL, '2023-08-03 23:14:11', '2023-08-03 23:14:11'),
(162, 'daffaseptiano65495', '$2y$10$IndaNAcuAyxj38R2T9jh2eB7C4ivSotumJi4BybMurhi.Yo03I2GO', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(163, 'fastabikulkhairo65496', '$2y$10$SZROpLQGMJKMk..GDClHvuxN6c4bomT/hbvcLY6ffymXbDvCB0ZCq', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(164, 'herlita65497', '$2y$10$Y7YpO1d9Kn8gvLCaLwkxKO5DeqZ1Rwb12X4w9XiuzzKoanlQgdgJO', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(165, 'ibrahimalriadi65498', '$2y$10$bMwi8wEDcf..Lfcpg4Gx1ef81bO6gvhGPyW0YDHtcTQuwSWOkOai6', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(166, 'ikhsannelrifaldi65499', '$2y$10$lYtkCxTPA8VUxHWPZmPycO63VCQ4ejGr67vskcFV7uCr8pud3CXJe', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(167, 'm.mikopratama65500', '$2y$10$n.7KIgtEfuUuo0vo0P9O6uRYtCPDSTvyPmtrINU49n/w/01IqczUO', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(168, 'muhammadfahri65501', '$2y$10$k0aQkERnDIk.L0ZqmO3nP.nmKy/nmDpHlFS9m4LWtjBo7kZXv80.u', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(169, 'muhammadfirdaus65502', '$2y$10$.s42zK.Lzf6NTEZujXSQ7uDopPIsQ/OgjZ85d5IvALAFd9q4om466', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(170, 'muhammadgilang65503', '$2y$10$rWed6brZ3Qlg5NNVRCl3M.j8eEUwdi5IjEDuoLvk1QO3SBxfGj3g.', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(171, 'muhammadhelmi65504', '$2y$10$iyxHczukssLuCBegyr6ywum/fI/3y/pwR/duDcRB4cWt1aC12F6Oa', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(172, 'muhammadrefan65505', '$2y$10$YJNn7VjEIicySJv8zSGh5.JS5CC6hassdk6mR2mwqFUiwoJlLQ4M6', '3', 1, NULL, '2023-08-03 23:14:12', '2023-08-03 23:14:12'),
(173, 'nadiaaisyaputri65506', '$2y$10$Se.qZH4SKy/iwb3wieggrupVEImymxlesERrbq1aW46xjspP.D.hi', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(174, 'nurmasantika65507', '$2y$10$ZhoXrGIQXYnKZq2d83J5S.VGmNi3BTmq6mTz5vb.yxjpQMza/w3Zi', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(175, 'qorynaura65508', '$2y$10$VKY6MySQBLEfhiMNlyICgefR9O3DrXoC6F/T7Bx47BH/bLqEK.KPm', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(176, 'raisyanadhira65509', '$2y$10$88.iSWlElV9diw4pdf9H/.KK2KolvPglOkhiRKKEmtGpVGmQHhXru', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(177, 'rizkysaputa65510', '$2y$10$p5oMAM.pcFT8FjrjyWs0neyMbD/NyXPr57ucj11TE1qJPkw4HUKhq', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(178, 'syaifulbahri65511', '$2y$10$MqmrocF7TLYoJyX6pouQIerY8L7IxnKfvMLeUrIOq80WmOZjUhAeG', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(179, 'syakiraadelia65512', '$2y$10$LJqh90q/lw69I0fEbbYO1eF/Dlt5lxU9B/nh/1UPpRTAR7q7bqo3e', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(180, 'virjiniaadelia65513', '$2y$10$pizyyHn7ewehTMnO7OXeNuOsdb/8wm463RGe9aBudp1Z4oKjoBiw.', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(181, 'yusmarhasan65514', '$2y$10$BSwRmSLsX5sOFwVyLcisnuOrxUAw7Y7qgkgt2AyRQDRhYHeo9TACu', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(182, 'natasyaadellinaputri65515', '$2y$10$5FDI83VELVchnYgO.fbCJ.q8pHbfMdTHkBvjIHljSX2tiQbw8dKNm', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(183, 'arjunamudlianto65516', '$2y$10$ONQd/ABBqr84Mq3yUzQ66.f7xcsuLWrIOqNr1/zcRVzXf7TGL.fge', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(184, 'm.farhanbasri65517', '$2y$10$R6W4cAOAmNZ3HRazFaOdt.dAQE.AEVarfYbBovXH.YB4AEtKY/dHe', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(185, 'salsabila65518', '$2y$10$2ouMQ/pEM4M56Bzbmsc.JeNRVKcWuBp5.OCztex8p5UBNwf5aZFqy', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(186, 'zahirajesikar.65519', '$2y$10$.J26iBhwhCqLunX5SuJYSueBhV/xU1.ohmK18W9ZZA5kJ.8Adiyz2', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(187, 'micheleputrip65520', '$2y$10$wrl2vNsrPE/ei1AiJLqfPuvQaYvy9Ak/ArpQAU0iQO3gVpx8AwcjG', '3', 1, NULL, '2023-08-03 23:14:13', '2023-08-03 23:14:13'),
(188, 'alesyacahaya.f65521', '$2y$10$81E51tRwmmM1EpoTlSUUa.i501/Ek75OUd5D.rnhJxIU9mzn9uxmK', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(189, 'raffiraffael65522', '$2y$10$YEdEhVfk6HZnWfN.75yVKuezqcV5PV/stbjZutgfbxu.y2TMOxqom', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(190, 'm.arsyilazimi65523', '$2y$10$XOjY7jlGuVjwONdf.6/QK.ZC1NkvR.rFQrjwC4dScz/8Rg3J0MYQm', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(191, 'm.zackisafandi65524', '$2y$10$zOFCU.JSV2vT7VIe0ZPpNumty/Dhm5EhPYlWAQBn2IEtZXgBo/6Na', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(192, 'fathranugrah.r65525', '$2y$10$dzU.lvKGGUHcycfMNrJeZ.HGqS8TvIsZwdOb2s6Zt6v.FY7G4cfSW', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(193, 'zahwaazzahra.m65526', '$2y$10$AANz3jehb6CZisml3t7w5.8BS3iVzEh8eHOKTuAiK8wE9t0QhRcHG', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(194, 'gitariamelia65527', '$2y$10$VPqztVXY84b3Cuqmd4ZDu.fUqjoNs3AWH3yfyOKMpQcbgYBL62B3K', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(195, 'fadiraoktaviona65528', '$2y$10$DY6l6SV19/QUHlryCAlK..x9L24vOd7uCJP5m.T5sBS2tk1lqfcAi', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(196, 'shirennovica.f65529', '$2y$10$M6HnMa5ghAWIPIiIEjSHw.2z3tzJ19m8oseR/ob0ouC9AtU81GAJ.', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(197, 'naufalazzamilham65530', '$2y$10$FWdlSbiRUbF3q6BstYabIOMzakG8eLXG6KDfQYuahZWuZUKVxjxcm', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14'),
(198, 'belvaaurelia65531', '$2y$10$DUVnGeS2tRQMHnGwGAeYxOMpwvxYQMaoxOf.QqzbaCNfQuzilUXPe', '3', 1, NULL, '2023-08-03 23:14:14', '2023-08-03 23:14:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`),
  ADD UNIQUE KEY `admin_nomor_hp_unique` (`nomor_hp`);

--
-- Indexes for table `anggota_ekstrakulikuler`
--
ALTER TABLE `anggota_ekstrakulikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_ekstrakulikuler_anggota_kelas_id_foreign` (`anggota_kelas_id`),
  ADD KEY `anggota_ekstrakulikuler_ekstrakulikuler_id_foreign` (`ekstrakulikuler_id`);

--
-- Indexes for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_kelas_siswa_id_foreign` (`siswa_id`),
  ADD KEY `anggota_kelas_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `catatan_pelanggaran`
--
ALTER TABLE `catatan_pelanggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`anggota_kelas_id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_guru_2` (`id_guru`),
  ADD KEY `tapel` (`id_tapel`);

--
-- Indexes for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catatan_wali_kelas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ekstrakulikuler_tapel_id_foreign` (`tapel_id`),
  ADD KEY `ekstrakulikuler_pembina_id_foreign` (`pembina_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guru_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `guru_nip_unique` (`nip`),
  ADD UNIQUE KEY `guru_nuptk_unique` (`nuptk`);

--
-- Indexes for table `k13_butir_sikap`
--
ALTER TABLE `k13_butir_sikap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `k13_butir_sikap_kode_unique` (`kode`);

--
-- Indexes for table `k13_deskripsi_nilai_siswa`
--
ALTER TABLE `k13_deskripsi_nilai_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_deskripsi_nilai_siswa_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_deskripsi_nilai_siswa_k13_nilai_akhir_raport_id_foreign` (`k13_nilai_akhir_raport_id`);

--
-- Indexes for table `k13_deskripsi_sikap_siswa`
--
ALTER TABLE `k13_deskripsi_sikap_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_deskripsi_sikap_siswa_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_kd_mapel`
--
ALTER TABLE `k13_kd_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_kd_mapel_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `k13_kkm_mapel`
--
ALTER TABLE `k13_kkm_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_kkm_mapel_mapel_id_foreign` (`mapel_id`),
  ADD KEY `k13_kkm_mapel_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `k13_mapping_mapel`
--
ALTER TABLE `k13_mapping_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_mapping_mapel_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `k13_nilai_akhir_raport`
--
ALTER TABLE `k13_nilai_akhir_raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_akhir_raport_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_nilai_akhir_raport_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_keterampilan`
--
ALTER TABLE `k13_nilai_keterampilan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_keterampilan_k13_rencana_nilai_keterampilan_id_foreign` (`k13_rencana_nilai_keterampilan_id`),
  ADD KEY `k13_nilai_keterampilan_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_pengetahuan`
--
ALTER TABLE `k13_nilai_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_pengetahuan_k13_rencana_nilai_pengetahuan_id_foreign` (`k13_rencana_nilai_pengetahuan_id`),
  ADD KEY `k13_nilai_pengetahuan_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_pts_pas`
--
ALTER TABLE `k13_nilai_pts_pas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_pts_pas_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_nilai_pts_pas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_sosial`
--
ALTER TABLE `k13_nilai_sosial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_sosial_k13_rencana_nilai_sosial_id_foreign` (`k13_rencana_nilai_sosial_id`),
  ADD KEY `k13_nilai_sosial_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_spiritual`
--
ALTER TABLE `k13_nilai_spiritual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_spiritual_k13_rencana_nilai_spiritual_id_foreign` (`k13_rencana_nilai_spiritual_id`),
  ADD KEY `k13_nilai_spiritual_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_rencana_bobot_penilaian`
--
ALTER TABLE `k13_rencana_bobot_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_bobot_penilaian_pembelajaran_id_foreign` (`pembelajaran_id`);

--
-- Indexes for table `k13_rencana_nilai_keterampilan`
--
ALTER TABLE `k13_rencana_nilai_keterampilan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_keterampilan_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_keterampilan_k13_kd_mapel_id_foreign` (`k13_kd_mapel_id`);

--
-- Indexes for table `k13_rencana_nilai_pengetahuan`
--
ALTER TABLE `k13_rencana_nilai_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_pengetahuan_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_pengetahuan_k13_kd_mapel_id_foreign` (`k13_kd_mapel_id`);

--
-- Indexes for table `k13_rencana_nilai_sosial`
--
ALTER TABLE `k13_rencana_nilai_sosial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_sosial_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_sosial_k13_butir_sikap_id_foreign` (`k13_butir_sikap_id`);

--
-- Indexes for table `k13_rencana_nilai_spiritual`
--
ALTER TABLE `k13_rencana_nilai_spiritual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_spiritual_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_spiritual_k13_butir_sikap_id_foreign` (`k13_butir_sikap_id`);

--
-- Indexes for table `k13_tgl_raport`
--
ALTER TABLE `k13_tgl_raport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `k13_tgl_raport_tapel_id_unique` (`tapel_id`);

--
-- Indexes for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kehadiran_siswa_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_tapel_id_foreign` (`tapel_id`),
  ADD KEY `kelas_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kenaikan_kelas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_bobot_penilaian`
--
ALTER TABLE `ktsp_bobot_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_bobot_penilaian_pembelajaran_id_foreign` (`pembelajaran_id`);

--
-- Indexes for table `ktsp_deskripsi_nilai_siswa`
--
ALTER TABLE `ktsp_deskripsi_nilai_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_deskripsi_nilai_siswa_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_deskripsi_nilai_siswa_ktsp_nilai_akhir_raport_id_foreign` (`ktsp_nilai_akhir_raport_id`);

--
-- Indexes for table `ktsp_kkm_mapel`
--
ALTER TABLE `ktsp_kkm_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_kkm_mapel_mapel_id_foreign` (`mapel_id`),
  ADD KEY `ktsp_kkm_mapel_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `ktsp_mapping_mapel`
--
ALTER TABLE `ktsp_mapping_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_mapping_mapel_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `ktsp_nilai_akhir_raport`
--
ALTER TABLE `ktsp_nilai_akhir_raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_akhir_raport_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_akhir_raport_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_nilai_tugas`
--
ALTER TABLE `ktsp_nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_tugas_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_tugas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_nilai_uh`
--
ALTER TABLE `ktsp_nilai_uh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_uh_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_uh_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_nilai_uts_uas`
--
ALTER TABLE `ktsp_nilai_uts_uas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_uts_uas_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_uts_uas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_tgl_raport`
--
ALTER TABLE `ktsp_tgl_raport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ktsp_tgl_raport_tapel_id_unique` (`tapel_id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_tapel_id_foreign` (`tapel_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_ekstrakulikuler`
--
ALTER TABLE `nilai_ekstrakulikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_ekstrakulikuler_ekstrakulikuler_id_foreign` (`ekstrakulikuler_id`),
  ADD KEY `nilai_ekstrakulikuler_anggota_ekstrakulikuler_id_foreign` (`anggota_ekstrakulikuler_id`);

--
-- Indexes for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelajaran_kelas_id_foreign` (`kelas_id`),
  ADD KEY `pembelajaran_mapel_id_foreign` (`mapel_id`),
  ADD KEY `pembelajaran_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengumuman_user_id_foreign` (`user_id`);

--
-- Indexes for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestasi_siswa_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `riwayat_login`
--
ALTER TABLE `riwayat_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_login_user_id_foreign` (`user_id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`),
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswa_nomor_hp_unique` (`nomor_hp`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `siswa_keluar`
--
ALTER TABLE `siswa_keluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_keluar_siswa_id_unique` (`siswa_id`);

--
-- Indexes for table `tapel`
--
ALTER TABLE `tapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anggota_ekstrakulikuler`
--
ALTER TABLE `anggota_ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `catatan_pelanggaran`
--
ALTER TABLE `catatan_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `k13_butir_sikap`
--
ALTER TABLE `k13_butir_sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `k13_deskripsi_nilai_siswa`
--
ALTER TABLE `k13_deskripsi_nilai_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_deskripsi_sikap_siswa`
--
ALTER TABLE `k13_deskripsi_sikap_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_kd_mapel`
--
ALTER TABLE `k13_kd_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `k13_kkm_mapel`
--
ALTER TABLE `k13_kkm_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `k13_mapping_mapel`
--
ALTER TABLE `k13_mapping_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_nilai_akhir_raport`
--
ALTER TABLE `k13_nilai_akhir_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_nilai_keterampilan`
--
ALTER TABLE `k13_nilai_keterampilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_nilai_pengetahuan`
--
ALTER TABLE `k13_nilai_pengetahuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_nilai_pts_pas`
--
ALTER TABLE `k13_nilai_pts_pas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_nilai_sosial`
--
ALTER TABLE `k13_nilai_sosial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_nilai_spiritual`
--
ALTER TABLE `k13_nilai_spiritual`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_rencana_bobot_penilaian`
--
ALTER TABLE `k13_rencana_bobot_penilaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_keterampilan`
--
ALTER TABLE `k13_rencana_nilai_keterampilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_pengetahuan`
--
ALTER TABLE `k13_rencana_nilai_pengetahuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_sosial`
--
ALTER TABLE `k13_rencana_nilai_sosial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_spiritual`
--
ALTER TABLE `k13_rencana_nilai_spiritual`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `k13_tgl_raport`
--
ALTER TABLE `k13_tgl_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_bobot_penilaian`
--
ALTER TABLE `ktsp_bobot_penilaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_deskripsi_nilai_siswa`
--
ALTER TABLE `ktsp_deskripsi_nilai_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_kkm_mapel`
--
ALTER TABLE `ktsp_kkm_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_mapping_mapel`
--
ALTER TABLE `ktsp_mapping_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_nilai_akhir_raport`
--
ALTER TABLE `ktsp_nilai_akhir_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_nilai_tugas`
--
ALTER TABLE `ktsp_nilai_tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_nilai_uh`
--
ALTER TABLE `ktsp_nilai_uh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_nilai_uts_uas`
--
ALTER TABLE `ktsp_nilai_uts_uas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktsp_tgl_raport`
--
ALTER TABLE `ktsp_tgl_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `nilai_ekstrakulikuler`
--
ALTER TABLE `nilai_ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_login`
--
ALTER TABLE `riwayat_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `siswa_keluar`
--
ALTER TABLE `siswa_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tapel`
--
ALTER TABLE `tapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `anggota_ekstrakulikuler`
--
ALTER TABLE `anggota_ekstrakulikuler`
  ADD CONSTRAINT `anggota_ekstrakulikuler_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `anggota_ekstrakulikuler_ekstrakulikuler_id_foreign` FOREIGN KEY (`ekstrakulikuler_id`) REFERENCES `ekstrakulikuler` (`id`);

--
-- Constraints for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD CONSTRAINT `anggota_kelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `anggota_kelas_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `catatan_pelanggaran`
--
ALTER TABLE `catatan_pelanggaran`
  ADD CONSTRAINT `catatan_pelanggaran_ibfk_1` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catatan_pelanggaran_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catatan_pelanggaran_ibfk_3` FOREIGN KEY (`id_tapel`) REFERENCES `tapel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  ADD CONSTRAINT `catatan_wali_kelas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD CONSTRAINT `ekstrakulikuler_pembina_id_foreign` FOREIGN KEY (`pembina_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `ekstrakulikuler_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `k13_deskripsi_nilai_siswa`
--
ALTER TABLE `k13_deskripsi_nilai_siswa`
  ADD CONSTRAINT `k13_deskripsi_nilai_siswa_k13_nilai_akhir_raport_id_foreign` FOREIGN KEY (`k13_nilai_akhir_raport_id`) REFERENCES `k13_nilai_akhir_raport` (`id`),
  ADD CONSTRAINT `k13_deskripsi_nilai_siswa_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_deskripsi_sikap_siswa`
--
ALTER TABLE `k13_deskripsi_sikap_siswa`
  ADD CONSTRAINT `k13_deskripsi_sikap_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `k13_kd_mapel`
--
ALTER TABLE `k13_kd_mapel`
  ADD CONSTRAINT `k13_kd_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `k13_kkm_mapel`
--
ALTER TABLE `k13_kkm_mapel`
  ADD CONSTRAINT `k13_kkm_mapel_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `k13_kkm_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `k13_mapping_mapel`
--
ALTER TABLE `k13_mapping_mapel`
  ADD CONSTRAINT `k13_mapping_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `k13_nilai_akhir_raport`
--
ALTER TABLE `k13_nilai_akhir_raport`
  ADD CONSTRAINT `k13_nilai_akhir_raport_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_akhir_raport_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_nilai_keterampilan`
--
ALTER TABLE `k13_nilai_keterampilan`
  ADD CONSTRAINT `k13_nilai_keterampilan_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_keterampilan_k13_rencana_nilai_keterampilan_id_foreign` FOREIGN KEY (`k13_rencana_nilai_keterampilan_id`) REFERENCES `k13_rencana_nilai_keterampilan` (`id`);

--
-- Constraints for table `k13_nilai_pengetahuan`
--
ALTER TABLE `k13_nilai_pengetahuan`
  ADD CONSTRAINT `k13_nilai_pengetahuan_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_pengetahuan_k13_rencana_nilai_pengetahuan_id_foreign` FOREIGN KEY (`k13_rencana_nilai_pengetahuan_id`) REFERENCES `k13_rencana_nilai_pengetahuan` (`id`);

--
-- Constraints for table `k13_nilai_pts_pas`
--
ALTER TABLE `k13_nilai_pts_pas`
  ADD CONSTRAINT `k13_nilai_pts_pas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_pts_pas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_nilai_sosial`
--
ALTER TABLE `k13_nilai_sosial`
  ADD CONSTRAINT `k13_nilai_sosial_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_sosial_k13_rencana_nilai_sosial_id_foreign` FOREIGN KEY (`k13_rencana_nilai_sosial_id`) REFERENCES `k13_rencana_nilai_sosial` (`id`);

--
-- Constraints for table `k13_nilai_spiritual`
--
ALTER TABLE `k13_nilai_spiritual`
  ADD CONSTRAINT `k13_nilai_spiritual_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_spiritual_k13_rencana_nilai_spiritual_id_foreign` FOREIGN KEY (`k13_rencana_nilai_spiritual_id`) REFERENCES `k13_rencana_nilai_spiritual` (`id`);

--
-- Constraints for table `k13_rencana_bobot_penilaian`
--
ALTER TABLE `k13_rencana_bobot_penilaian`
  ADD CONSTRAINT `k13_rencana_bobot_penilaian_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_keterampilan`
--
ALTER TABLE `k13_rencana_nilai_keterampilan`
  ADD CONSTRAINT `k13_rencana_nilai_keterampilan_k13_kd_mapel_id_foreign` FOREIGN KEY (`k13_kd_mapel_id`) REFERENCES `k13_kd_mapel` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_keterampilan_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_pengetahuan`
--
ALTER TABLE `k13_rencana_nilai_pengetahuan`
  ADD CONSTRAINT `k13_rencana_nilai_pengetahuan_k13_kd_mapel_id_foreign` FOREIGN KEY (`k13_kd_mapel_id`) REFERENCES `k13_kd_mapel` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_pengetahuan_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_sosial`
--
ALTER TABLE `k13_rencana_nilai_sosial`
  ADD CONSTRAINT `k13_rencana_nilai_sosial_k13_butir_sikap_id_foreign` FOREIGN KEY (`k13_butir_sikap_id`) REFERENCES `k13_butir_sikap` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_sosial_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_spiritual`
--
ALTER TABLE `k13_rencana_nilai_spiritual`
  ADD CONSTRAINT `k13_rencana_nilai_spiritual_k13_butir_sikap_id_foreign` FOREIGN KEY (`k13_butir_sikap_id`) REFERENCES `k13_butir_sikap` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_spiritual_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_tgl_raport`
--
ALTER TABLE `k13_tgl_raport`
  ADD CONSTRAINT `k13_tgl_raport_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  ADD CONSTRAINT `kehadiran_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `kelas_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  ADD CONSTRAINT `kenaikan_kelas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `ktsp_bobot_penilaian`
--
ALTER TABLE `ktsp_bobot_penilaian`
  ADD CONSTRAINT `ktsp_bobot_penilaian_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_deskripsi_nilai_siswa`
--
ALTER TABLE `ktsp_deskripsi_nilai_siswa`
  ADD CONSTRAINT `ktsp_deskripsi_nilai_siswa_ktsp_nilai_akhir_raport_id_foreign` FOREIGN KEY (`ktsp_nilai_akhir_raport_id`) REFERENCES `ktsp_nilai_akhir_raport` (`id`),
  ADD CONSTRAINT `ktsp_deskripsi_nilai_siswa_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_kkm_mapel`
--
ALTER TABLE `ktsp_kkm_mapel`
  ADD CONSTRAINT `ktsp_kkm_mapel_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `ktsp_kkm_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `ktsp_mapping_mapel`
--
ALTER TABLE `ktsp_mapping_mapel`
  ADD CONSTRAINT `ktsp_mapping_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `ktsp_nilai_akhir_raport`
--
ALTER TABLE `ktsp_nilai_akhir_raport`
  ADD CONSTRAINT `ktsp_nilai_akhir_raport_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_akhir_raport_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_nilai_tugas`
--
ALTER TABLE `ktsp_nilai_tugas`
  ADD CONSTRAINT `ktsp_nilai_tugas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_tugas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_nilai_uh`
--
ALTER TABLE `ktsp_nilai_uh`
  ADD CONSTRAINT `ktsp_nilai_uh_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_uh_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_nilai_uts_uas`
--
ALTER TABLE `ktsp_nilai_uts_uas`
  ADD CONSTRAINT `ktsp_nilai_uts_uas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_uts_uas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_tgl_raport`
--
ALTER TABLE `ktsp_tgl_raport`
  ADD CONSTRAINT `ktsp_tgl_raport_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `nilai_ekstrakulikuler`
--
ALTER TABLE `nilai_ekstrakulikuler`
  ADD CONSTRAINT `nilai_ekstrakulikuler_anggota_ekstrakulikuler_id_foreign` FOREIGN KEY (`anggota_ekstrakulikuler_id`) REFERENCES `anggota_ekstrakulikuler` (`id`),
  ADD CONSTRAINT `nilai_ekstrakulikuler_ekstrakulikuler_id_foreign` FOREIGN KEY (`ekstrakulikuler_id`) REFERENCES `ekstrakulikuler` (`id`);

--
-- Constraints for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD CONSTRAINT `pembelajaran_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `pembelajaran_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `pembelajaran_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  ADD CONSTRAINT `prestasi_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `riwayat_login`
--
ALTER TABLE `riwayat_login`
  ADD CONSTRAINT `riwayat_login_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `siswa_keluar`
--
ALTER TABLE `siswa_keluar`
  ADD CONSTRAINT `siswa_keluar_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
