-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Jan 2022 pada 13.21
-- Versi server: 8.0.27-0ubuntu0.20.04.1
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kisimoto', 'Shonen Jump', 'naruto_shippuden.jpg', NULL, '2022-01-08 14:41:27'),
(16, 'Dragonball Super', 'dragonball-super', 'Akira Toriyama', 'Shonen Jump', 'dragonball_super_3.jpg', '2022-01-08 14:44:18', '2022-01-08 14:44:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Mahasiswa`
--

CREATE TABLE `Mahasiswa` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(3, '2022-01-09-034844', 'App\\Database\\Migrations\\Mahasiswa', 'default', 'App', 1641701536, 1),
(4, '2022-01-09-041248', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1641701645, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Orang`
--

CREATE TABLE `Orang` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `Orang`
--

INSERT INTO `Orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Wasis Rama Simbolon', 'Ds. Bakaru No. 844, Bitung 86984, KalTeng', '1976-10-09 18:08:53', '2022-01-09 12:08:03'),
(2, 'Jarwadi Bancar Mustofa S.Sos', 'Gg. Sugiyopranoto No. 677, Gunungsitoli 55430, KepR', '1976-12-13 19:42:01', '2022-01-09 12:08:03'),
(3, 'Slamet Hutapea', 'Jln. Radio No. 618, Solok 14373, SumSel', '1978-12-08 22:31:02', '2022-01-09 12:08:03'),
(4, 'Cecep Simbolon', 'Kpg. Babadan No. 692, Subulussalam 22860, Bali', '1999-07-27 05:29:37', '2022-01-09 12:08:03'),
(5, 'Winda Sari Hassanah', 'Kpg. BKR No. 727, Medan 73033, NTB', '1998-07-27 10:29:42', '2022-01-09 12:08:03'),
(6, 'Vega Firmansyah S.Ked', 'Dk. M.T. Haryono No. 466, Jambi 88686, SumSel', '2007-06-22 00:20:03', '2022-01-09 12:08:03'),
(7, 'Sakti Anggriawan', 'Dk. Dr. Junjunan No. 373, Pekanbaru 21779, KalUt', '2008-03-04 19:20:17', '2022-01-09 12:08:03'),
(8, 'Vicky Tiara Pudjiastuti', 'Ki. Suharso No. 379, Langsa 29481, MalUt', '1974-07-23 18:19:30', '2022-01-09 12:08:03'),
(9, 'Daryani Erik Mahendra', 'Gg. Barasak No. 660, Lubuklinggau 39118, JaTim', '1976-03-20 09:46:42', '2022-01-09 12:08:03'),
(10, 'Cinthia Yuniar M.Farm', 'Dk. Ciumbuleuit No. 506, Denpasar 10029, SulUt', '2009-04-13 19:50:01', '2022-01-09 12:08:03'),
(11, 'Widya Laila Hasanah M.Farm', 'Jr. Abdul. Muis No. 369, Tasikmalaya 93925, KalUt', '1993-07-05 23:44:59', '2022-01-09 12:08:03'),
(12, 'Adhiarja Purwa Hutasoit', 'Jr. Bata Putih No. 485, Mataram 19534, JaTim', '2020-10-18 07:21:32', '2022-01-09 12:08:03'),
(13, 'Paris Genta Agustina', 'Jr. Monginsidi No. 990, Yogyakarta 59916, Lampung', '2002-08-24 09:39:28', '2022-01-09 12:08:03'),
(14, 'Kairav Napitupulu', 'Jr. Tubagus Ismail No. 942, Banjarbaru 42839, SumUt', '1989-05-10 04:52:36', '2022-01-09 12:08:03'),
(15, 'Radika Siregar', 'Kpg. Banda No. 900, Batu 77630, KalSel', '1995-08-02 14:37:09', '2022-01-09 12:08:03'),
(16, 'Ajimat Asirwanda Hakim', 'Psr. Banal No. 719, Banda Aceh 83796, Riau', '1988-03-21 11:43:37', '2022-01-09 12:08:03'),
(17, 'Hendri Simbolon', 'Ki. Suryo No. 748, Sukabumi 28919, Bali', '1970-08-15 04:28:31', '2022-01-09 12:08:03'),
(18, 'Amalia Ayu Mardhiyah', 'Kpg. Bahagia  No. 585, Tegal 77434, DKI', '2010-10-15 20:57:42', '2022-01-09 12:08:03'),
(19, 'Prayoga Kusumo', 'Dk. R.M. Said No. 652, Administrasi Jakarta Pusat 61222, SumBar', '1985-02-08 23:48:49', '2022-01-09 12:08:03'),
(20, 'Yessi Anggraini', 'Jln. Cikapayang No. 344, Tebing Tinggi 68434, KepR', '1970-11-19 01:58:58', '2022-01-09 12:08:03'),
(21, 'Malik Niyaga Haryanto M.Kom.', 'Jr. Wahidin Sudirohusodo No. 712, Sibolga 22683, Lampung', '2000-07-11 09:11:40', '2022-01-09 12:08:03'),
(22, 'Hamima Vivi Prastuti', 'Kpg. Bakau No. 46, Padangsidempuan 85484, JaTeng', '2007-07-04 09:03:07', '2022-01-09 12:08:03'),
(23, 'Eka Agnes Rahayu', 'Dk. Sugiyopranoto No. 566, Solok 56795, DIY', '2021-06-22 21:12:16', '2022-01-09 12:08:03'),
(24, 'Julia Haryanti', 'Jln. Laksamana No. 162, Sungai Penuh 85749, SumBar', '1995-09-11 14:08:57', '2022-01-09 12:08:03'),
(25, 'Leo Bakiono Prayoga S.Psi', 'Ds. Bagas Pati No. 147, Subulussalam 84256, Riau', '2008-03-24 19:19:51', '2022-01-09 12:08:03'),
(26, 'Saka Mulyono Pangestu', 'Dk. Sutoyo No. 637, Tarakan 38945, Lampung', '1987-06-02 20:10:22', '2022-01-09 12:08:03'),
(27, 'Wirda Hana Agustina S.Pd', 'Jr. Jambu No. 297, Makassar 76783, SumUt', '2015-02-06 08:46:52', '2022-01-09 12:08:03'),
(28, 'Kuncara Danu Pranowo M.TI.', 'Ds. Cokroaminoto No. 593, Medan 69908, Bengkulu', '1975-02-09 08:38:43', '2022-01-09 12:08:03'),
(29, 'Endah Oktaviani', 'Kpg. Bata Putih No. 33, Gunungsitoli 13259, KalTim', '2012-02-19 00:37:22', '2022-01-09 12:08:03'),
(30, 'Kanda Latupono', 'Ds. Bakin No. 199, Magelang 91760, KalBar', '1991-12-06 10:21:21', '2022-01-09 12:08:03'),
(31, 'Lanang Damanik', 'Ki. Pelajar Pejuang 45 No. 137, Jayapura 84321, PapBar', '1999-05-26 13:36:35', '2022-01-09 12:08:03'),
(32, 'Maida Nasyiah M.M.', 'Kpg. Bahagia No. 123, Singkawang 27971, Jambi', '1973-09-06 03:34:41', '2022-01-09 12:08:03'),
(33, 'Dian Palastri', 'Jr. Bahagia No. 39, Lubuklinggau 43240, SumUt', '1993-04-11 19:01:29', '2022-01-09 12:08:03'),
(34, 'Cagak Firgantoro', 'Ki. Bawal No. 367, Jambi 46185, Papua', '1977-02-19 18:17:31', '2022-01-09 12:08:03'),
(35, 'Hani Laksmiwati', 'Ds. Zamrud No. 241, Jayapura 51292, KalBar', '1973-07-22 00:33:45', '2022-01-09 12:08:03'),
(36, 'Oni Nuraini', 'Ki. Urip Sumoharjo No. 44, Bontang 21415, JaTeng', '1979-10-05 03:23:34', '2022-01-09 12:08:03'),
(37, 'Julia Halimah', 'Kpg. Padang No. 85, Metro 43163, JaTeng', '1972-06-18 03:59:24', '2022-01-09 12:08:03'),
(38, 'Icha Maida Mulyani', 'Psr. Bahagia No. 854, Tual 14157, Jambi', '2006-12-20 07:27:49', '2022-01-09 12:08:03'),
(39, 'Cici Utami', 'Ds. Cemara No. 233, Bontang 19564, SulBar', '1991-05-28 09:13:54', '2022-01-09 12:08:03'),
(40, 'Ellis Najwa Yuliarti S.T.', 'Psr. Suharso No. 280, Bukittinggi 15302, DKI', '1976-05-02 04:50:48', '2022-01-09 12:08:03'),
(41, 'Karen Elisa Mardhiyah M.Pd', 'Dk. Cemara No. 262, Malang 64678, JaTeng', '1971-02-05 13:17:04', '2022-01-09 12:08:03'),
(42, 'Kania Vanya Safitri', 'Ki. Adisumarmo No. 834, Payakumbuh 57250, BaBel', '1980-10-04 22:34:34', '2022-01-09 12:08:03'),
(43, 'Natalia Elisa Nuraini S.I.Kom', 'Ki. Bara Tambar No. 25, Batu 75034, NTB', '1974-03-14 06:45:09', '2022-01-09 12:08:03'),
(44, 'Betania Hasanah', 'Psr. Casablanca No. 11, Bima 60145, KalTeng', '2003-02-26 20:45:33', '2022-01-09 12:08:03'),
(45, 'Latika Patricia Hariyah M.Pd', 'Gg. Abdul. Muis No. 743, Bau-Bau 20999, SulSel', '2000-03-02 22:01:33', '2022-01-09 12:08:03'),
(46, 'Virman Setiawan', 'Ds. Dipatiukur No. 892, Ambon 70285, Riau', '1988-08-03 04:55:22', '2022-01-09 12:08:03'),
(47, 'Bakidin Luwes Hidayat M.TI.', 'Dk. Basoka Raya No. 430, Parepare 73423, NTT', '1997-07-02 05:24:08', '2022-01-09 12:08:03'),
(48, 'Oliva Namaga', 'Dk. Kali No. 639, Batu 22376, PapBar', '2013-02-12 18:09:03', '2022-01-09 12:08:03'),
(49, 'Nrima Kemba Pratama', 'Ki. Bappenas No. 959, Lubuklinggau 53033, Gorontalo', '1980-12-29 10:11:14', '2022-01-09 12:08:03'),
(50, 'Wirda Ifa Aryani S.I.Kom', 'Psr. Abang No. 267, Administrasi Jakarta Pusat 49283, SulSel', '2014-11-21 07:18:32', '2022-01-09 12:08:03'),
(51, 'Zelda Astuti', 'Psr. Kusmanto No. 510, Bandung 46684, Papua', '2006-11-06 04:36:11', '2022-01-09 12:08:03'),
(52, 'Daryani Anggriawan', 'Gg. Supono No. 355, Jayapura 12757, Aceh', '1981-01-25 11:51:34', '2022-01-09 12:08:03'),
(53, 'Hamima Kuswandari', 'Gg. Bakin No. 707, Salatiga 99534, SulTeng', '1992-02-23 20:36:32', '2022-01-09 12:08:03'),
(54, 'Lasmono Ridwan Halim M.Kom.', 'Dk. Supono No. 9, Bandar Lampung 76929, Papua', '1981-11-03 11:38:53', '2022-01-09 12:08:03'),
(55, 'Zalindra Palastri', 'Gg. Basoka No. 868, Sorong 41846, JaTeng', '1973-06-25 07:06:59', '2022-01-09 12:08:03'),
(56, 'Luis Karsa Mansur', 'Ds. Basoka No. 976, Tarakan 33980, DIY', '1999-07-12 17:05:37', '2022-01-09 12:08:03'),
(57, 'Vega Prayoga', 'Psr. Arifin No. 566, Cirebon 17770, SulTra', '2013-05-01 22:42:07', '2022-01-09 12:08:03'),
(58, 'Mahfud Tedi Ardianto', 'Ds. Jaksa No. 697, Balikpapan 60100, JaTim', '2015-01-02 06:37:35', '2022-01-09 12:08:03'),
(59, 'Septi Yolanda', 'Dk. Raya Ujungberung No. 25, Bekasi 85943, KalUt', '2019-11-26 11:41:28', '2022-01-09 12:08:03'),
(60, 'Lintang Permata', 'Psr. Honggowongso No. 531, Serang 44860, KalSel', '1981-01-15 03:58:39', '2022-01-09 12:08:03'),
(61, 'Oliva Gabriella Puspasari', 'Kpg. Basmol Raya No. 518, Pasuruan 76507, Bali', '1991-07-12 23:57:20', '2022-01-09 12:08:03'),
(62, 'Umay Winarno S.E.', 'Jr. Kalimantan No. 827, Palembang 49320, NTB', '1972-07-12 08:41:57', '2022-01-09 12:08:03'),
(63, 'Asman Tampubolon', 'Ds. Raden No. 936, Manado 33472, Bengkulu', '1999-05-19 09:34:53', '2022-01-09 12:08:03'),
(64, 'Jelita Rahayu', 'Gg. Gedebage Selatan No. 248, Solok 30960, SulTra', '1981-06-03 05:31:33', '2022-01-09 12:08:03'),
(65, 'Darsirah Budiyanto', 'Jln. Kartini No. 68, Pariaman 90951, SulSel', '2012-11-26 06:23:00', '2022-01-09 12:08:03'),
(66, 'Adika Jumadi Pangestu', 'Kpg. Sutan Syahrir No. 603, Binjai 52070, JaTeng', '1970-12-29 14:20:14', '2022-01-09 12:08:03'),
(67, 'Ellis Palastri', 'Ds. Pelajar Pejuang 45 No. 661, Palu 32774, Aceh', '2007-09-12 15:00:09', '2022-01-09 12:08:03'),
(68, 'Mariadi Budiyanto', 'Dk. Baiduri No. 473, Palangka Raya 32406, Aceh', '1977-01-09 19:51:25', '2022-01-09 12:08:03'),
(69, 'Raisa Andriani', 'Ds. Bakau No. 189, Surabaya 35408, KalBar', '1974-08-27 06:34:09', '2022-01-09 12:08:03'),
(70, 'Wulan Usamah', 'Ki. Casablanca No. 933, Binjai 19609, Gorontalo', '2004-10-08 05:06:54', '2022-01-09 12:08:03'),
(71, 'Kamidin Firmansyah', 'Dk. Basuki No. 82, Pekanbaru 16333, SumBar', '1984-12-14 21:47:48', '2022-01-09 12:08:03'),
(72, 'Winda Pratiwi', 'Kpg. Bhayangkara No. 759, Bitung 71569, MalUt', '2004-01-22 03:36:05', '2022-01-09 12:08:03'),
(73, 'Kiandra Nuraini', 'Ds. Kartini No. 968, Samarinda 55728, KalBar', '1996-10-25 14:20:24', '2022-01-09 12:08:03'),
(74, 'Kanda Sitompul M.M.', 'Ki. Jambu No. 433, Sawahlunto 75558, JaTeng', '2007-01-08 07:35:56', '2022-01-09 12:08:03'),
(75, 'Yance Mandasari', 'Ki. Ki Hajar Dewantara No. 641, Pematangsiantar 82637, DKI', '2004-08-21 02:26:23', '2022-01-09 12:08:03'),
(76, 'Tania Rahmi Padmasari', 'Gg. Bakit  No. 756, Palu 76641, Papua', '1989-01-23 05:36:25', '2022-01-09 12:08:03'),
(77, 'Pranawa Banara Nainggolan', 'Jln. Bhayangkara No. 383, Tangerang 35149, SulBar', '1990-07-17 08:57:46', '2022-01-09 12:08:03'),
(78, 'Cinthia Purwanti S.Psi', 'Jr. Samanhudi No. 340, Samarinda 36186, DIY', '1984-03-28 04:06:18', '2022-01-09 12:08:03'),
(79, 'Zelaya Laksmiwati S.H.', 'Ds. Suharso No. 136, Tebing Tinggi 18452, Bali', '1980-03-26 15:59:49', '2022-01-09 12:08:03'),
(80, 'Calista Rahmi Aryani', 'Dk. Ciwastra No. 680, Tanjung Pinang 33733, Papua', '2000-02-07 13:08:45', '2022-01-09 12:08:03'),
(81, 'Cindy Kusmawati S.IP', 'Gg. Sunaryo No. 236, Pekanbaru 98089, Bali', '1991-08-04 13:00:45', '2022-01-09 12:08:03'),
(82, 'Cornelia Laksita', 'Jln. Ahmad Dahlan No. 717, Prabumulih 85978, SumSel', '1989-12-19 07:15:20', '2022-01-09 12:08:03'),
(83, 'Maman Uwais M.Kom.', 'Dk. Baranangsiang No. 756, Tegal 30350, KalUt', '2014-10-02 20:58:20', '2022-01-09 12:08:03'),
(84, 'Ajimin Jindra Wasita S.Sos', 'Jr. M.T. Haryono No. 740, Pagar Alam 50918, Riau', '2003-05-04 01:16:19', '2022-01-09 12:08:03'),
(85, 'Olivia Hastuti', 'Gg. Lumban Tobing No. 731, Tasikmalaya 61577, MalUt', '2012-05-05 12:50:53', '2022-01-09 12:08:04'),
(86, 'Cindy Melinda Nurdiyanti S.E.I', 'Jln. Peta No. 412, Tebing Tinggi 40231, SumUt', '2009-09-11 09:04:23', '2022-01-09 12:08:04'),
(87, 'Darmanto Megantara', 'Dk. Peta No. 700, Sibolga 34926, KalSel', '2005-12-04 14:19:57', '2022-01-09 12:08:04'),
(88, 'Uli Pertiwi S.T.', 'Ds. Suharso No. 920, Banjarmasin 34286, KalTim', '2001-12-11 08:07:34', '2022-01-09 12:08:04'),
(89, 'Nadine Oktaviani S.Ked', 'Ki. Cikapayang No. 956, Padangsidempuan 91718, Papua', '1987-01-06 13:19:07', '2022-01-09 12:08:04'),
(90, 'Darimin Maulana', 'Dk. Wahid Hasyim No. 70, Gunungsitoli 72891, Riau', '2016-06-10 02:24:09', '2022-01-09 12:08:04'),
(91, 'Anastasia Nasyidah S.Kom', 'Jln. Bakhita No. 400, Tomohon 52659, Lampung', '1980-12-21 11:36:13', '2022-01-09 12:08:04'),
(92, 'Cahyadi Adhiarja Tarihoran M.Ak', 'Jr. Sutan Syahrir No. 80, Pariaman 89924, NTB', '2004-02-12 04:15:56', '2022-01-09 12:08:04'),
(93, 'Jelita Nova Oktaviani', 'Dk. Bazuka Raya No. 261, Sukabumi 98218, SulSel', '2016-06-09 13:04:05', '2022-01-09 12:08:04'),
(94, 'Ratih Ida Sudiati S.Psi', 'Ki. Sugiyopranoto No. 576, Tangerang 86631, SumSel', '2021-10-17 02:30:25', '2022-01-09 12:08:04'),
(95, 'Sadina Kiandra Padmasari S.Sos', 'Ds. Pasir Koja No. 581, Bandar Lampung 61231, BaBel', '2020-01-16 19:14:16', '2022-01-09 12:08:04'),
(96, 'Lasmono Rahmat Mandala S.H.', 'Dk. Rumah Sakit No. 543, Makassar 52979, MalUt', '1987-04-24 15:11:46', '2022-01-09 12:08:04'),
(97, 'Azalea Tiara Nasyiah S.I.Kom', 'Gg. Mulyadi No. 20, Surakarta 28555, Riau', '1987-05-11 00:28:24', '2022-01-09 12:08:04'),
(98, 'Atmaja Iswahyudi S.E.', 'Psr. Sentot Alibasa No. 812, Palangka Raya 74101, Gorontalo', '1981-07-13 13:49:15', '2022-01-09 12:08:04'),
(99, 'Kardi Saefullah S.Gz', 'Psr. Dahlia No. 970, Parepare 49310, DIY', '1976-09-18 20:02:52', '2022-01-09 12:08:04'),
(100, 'Maria Puspita', 'Jr. Mulyadi No. 457, Pekanbaru 21380, KalSel', '1979-05-15 10:45:24', '2022-01-09 12:08:04'),
(101, 'Maria Pertiwi', 'Jr. Salatiga No. 651, Bukittinggi 58333, DKI', '1992-01-05 04:28:09', '2022-01-09 12:08:04'),
(102, 'Nasrullah Cahyono Dabukke', 'Jln. Jamika No. 799, Blitar 44327, SulTeng', '2001-10-20 13:38:08', '2022-01-09 12:08:04'),
(103, 'Bakiadi Karya Tampubolon', 'Kpg. Sugiono No. 566, Bandung 33203, NTB', '2006-01-23 19:25:43', '2022-01-09 12:08:04'),
(104, 'Saka Pangestu Hidayat S.T.', 'Dk. Basmol Raya No. 948, Bukittinggi 28928, KalTim', '1975-01-31 08:40:19', '2022-01-09 12:08:04'),
(105, 'Hafshah Ghaliyati Anggraini M.Ak', 'Kpg. Eka No. 601, Tangerang 96891, JaTeng', '2003-10-20 01:45:26', '2022-01-09 12:08:04'),
(106, 'Murti Hardiansyah', 'Ds. Bakin No. 265, Langsa 48238, DKI', '2000-03-31 05:46:25', '2022-01-09 12:08:04'),
(107, 'Cakrabuana Saefullah', 'Kpg. Bakin No. 97, Palangka Raya 27016, Papua', '2015-10-21 11:11:27', '2022-01-09 12:08:04'),
(108, 'Jessica Kuswandari M.M.', 'Gg. Padang No. 560, Bima 84206, SumSel', '2014-11-24 07:53:35', '2022-01-09 12:08:04'),
(109, 'Niyaga Prayoga S.IP', 'Gg. Sutan Syahrir No. 207, Tomohon 71772, Jambi', '2020-04-01 06:56:51', '2022-01-09 12:08:04'),
(110, 'Iriana Yunita Permata S.Psi', 'Ki. Camar No. 100, Salatiga 86748, DKI', '1974-11-02 13:49:18', '2022-01-09 12:08:04'),
(111, 'Upik Putra', 'Dk. B.Agam 1 No. 498, Yogyakarta 41222, KalSel', '2014-02-11 17:52:32', '2022-01-09 12:08:04'),
(112, 'Gamblang Dabukke', 'Gg. Radio No. 980, Depok 13799, SulBar', '2009-07-29 15:37:11', '2022-01-09 12:08:04'),
(113, 'Raharja Simanjuntak', 'Kpg. Baan No. 337, Magelang 67276, SulTeng', '1990-01-15 01:40:59', '2022-01-09 12:08:04'),
(114, 'Bakidin Eja Maheswara S.E.', 'Gg. Wahidin No. 211, Palu 24544, JaTeng', '2001-12-12 00:33:59', '2022-01-09 12:08:04'),
(115, 'Halim Ramadan', 'Kpg. Suprapto No. 81, Sibolga 57977, Lampung', '1987-09-20 15:09:34', '2022-01-09 12:08:04'),
(116, 'Tasdik Maulana S.Psi', 'Gg. Barat No. 881, Tomohon 98291, SulUt', '2007-09-12 18:36:00', '2022-01-09 12:08:04'),
(117, 'Raihan Elon Saptono S.E.I', 'Ds. Tambun No. 96, Administrasi Jakarta Barat 29439, Jambi', '2002-09-25 22:22:29', '2022-01-09 12:08:04'),
(118, 'Siti Ophelia Wulandari', 'Psr. Pasir Koja No. 957, Bengkulu 57697, JaTim', '1988-04-02 23:28:25', '2022-01-09 12:08:04'),
(119, 'Ina Uyainah', 'Jr. Padma No. 144, Kupang 38348, SulUt', '1980-10-15 02:40:27', '2022-01-09 12:08:04'),
(120, 'Elisa Winarsih', 'Jln. Abang No. 503, Banjar 73123, Papua', '2011-07-14 13:18:01', '2022-01-09 12:08:04'),
(121, 'Septi Kasiyah Winarsih S.E.I', 'Jr. Yogyakarta No. 683, Kediri 30144, DKI', '2018-09-01 21:20:40', '2022-01-09 12:08:04'),
(122, 'Hani Padmi Nurdiyanti', 'Jln. Abdul. Muis No. 162, Tasikmalaya 67294, MalUt', '1976-11-24 22:34:13', '2022-01-09 12:08:04'),
(123, 'Umaya Kambali Maheswara', 'Kpg. Sudiarto No. 642, Ambon 73100, SulTra', '1976-04-03 03:29:13', '2022-01-09 12:08:04'),
(124, 'Rosman Wibowo M.Kom.', 'Gg. Dipatiukur No. 925, Serang 61156, Papua', '1982-02-10 11:50:34', '2022-01-09 12:08:04'),
(125, 'Wani Melinda Astuti S.Farm', 'Dk. Umalas No. 584, Tegal 83023, SulSel', '1978-04-25 18:37:59', '2022-01-09 12:08:04'),
(126, 'Hani Suartini', 'Ki. Flora No. 577, Medan 74963, Lampung', '2004-02-09 13:04:40', '2022-01-09 12:08:04'),
(127, 'Halima Riyanti', 'Psr. Aceh No. 79, Bogor 98820, Papua', '1980-08-20 17:41:13', '2022-01-09 12:08:04'),
(128, 'Salwa Farida S.Pd', 'Ds. Baranang No. 692, Madiun 69479, SumUt', '1970-07-13 05:28:54', '2022-01-09 12:08:04'),
(129, 'Ajiono Siregar', 'Dk. B.Agam 1 No. 367, Sungai Penuh 79514, KalTim', '2010-03-14 04:04:24', '2022-01-09 12:08:04'),
(130, 'Jasmin Astuti', 'Jln. S. Parman No. 371, Tarakan 94405, KalBar', '1998-09-22 23:25:24', '2022-01-09 12:08:04'),
(131, 'Martani Prasetya S.Gz', 'Ds. Pattimura No. 547, Pariaman 84735, Papua', '1994-02-20 09:52:12', '2022-01-09 12:08:04'),
(132, 'Olivia Mardhiyah', 'Jln. Monginsidi No. 720, Bontang 88306, SulUt', '1970-09-04 01:54:16', '2022-01-09 12:08:04'),
(133, 'Zelaya Rini Maryati', 'Ds. Sudirman No. 781, Subulussalam 54179, BaBel', '2021-07-13 08:37:32', '2022-01-09 12:08:04'),
(134, 'Atmaja Budiyanto', 'Gg. Kalimantan No. 130, Kotamobagu 67239, Gorontalo', '1995-09-19 04:40:41', '2022-01-09 12:08:04'),
(135, 'Padmi Wulandari S.Kom', 'Dk. Bara Tambar No. 139, Sibolga 38090, KalSel', '1987-11-11 21:13:02', '2022-01-09 12:08:04'),
(136, 'Nadine Aisyah Winarsih M.TI.', 'Kpg. Gading No. 267, Yogyakarta 32056, DIY', '2015-05-09 04:07:45', '2022-01-09 12:08:04'),
(137, 'Prima Jarwadi Sihotang S.I.Kom', 'Dk. Sutoyo No. 529, Bontang 20706, SulBar', '1981-11-02 14:05:58', '2022-01-09 12:08:04'),
(138, 'Ganjaran Haryanto S.E.I', 'Jr. Dewi Sartika No. 249, Solok 22387, BaBel', '2021-09-25 21:19:00', '2022-01-09 12:08:04'),
(139, 'Ami Melani', 'Jr. Bayam No. 934, Jayapura 36291, PapBar', '1992-02-15 20:28:16', '2022-01-09 12:08:04'),
(140, 'Kala Tri Prayoga S.I.Kom', 'Jr. Sam Ratulangi No. 321, Medan 90790, Banten', '1996-01-14 21:32:55', '2022-01-09 12:08:04'),
(141, 'Rahmi Laksmiwati M.Ak', 'Psr. Salam No. 366, Metro 38462, SumBar', '2021-08-17 10:38:17', '2022-01-09 12:08:04'),
(142, 'Jono Salahudin', 'Ki. Gremet No. 416, Sorong 78826, Gorontalo', '1975-04-19 13:20:01', '2022-01-09 12:08:04'),
(143, 'Lukita Praba Gunarto', 'Psr. Basket No. 386, Palu 77995, JaBar', '1983-09-06 23:10:12', '2022-01-09 12:08:04'),
(144, 'Eko Mahendra M.Kom.', 'Gg. Bambu No. 975, Sukabumi 76464, KalTeng', '2013-12-05 10:14:52', '2022-01-09 12:08:04'),
(145, 'Devi Nuraini', 'Psr. Siliwangi No. 44, Parepare 87028, KalTim', '1993-06-22 09:48:43', '2022-01-09 12:08:04'),
(146, 'Fitriani Mayasari S.Psi', 'Psr. Fajar No. 583, Tual 86265, SulBar', '1980-09-09 10:35:04', '2022-01-09 12:08:04'),
(147, 'Gadang Marpaung', 'Dk. Abdul Rahmat No. 381, Kotamobagu 24205, SulBar', '1999-09-02 13:47:14', '2022-01-09 12:08:04'),
(148, 'Legawa Tarihoran S.E.', 'Dk. Taman No. 557, Cimahi 65470, KalTim', '1988-11-01 19:49:20', '2022-01-09 12:08:04'),
(149, 'Cici Yulianti', 'Ki. Kalimantan No. 751, Pekalongan 63858, DIY', '2010-10-30 19:28:58', '2022-01-09 12:08:04'),
(150, 'Padmi Hilda Permata', 'Ki. Sugiyopranoto No. 665, Sibolga 66389, KalBar', '1988-09-21 05:32:27', '2022-01-09 12:08:04'),
(151, 'Alika Nurdiyanti', 'Ki. Pelajar Pejuang 45 No. 560, Batam 34605, JaTim', '2002-10-27 16:45:35', '2022-01-09 12:08:04'),
(152, 'Kajen Siregar', 'Kpg. Wahidin Sudirohusodo No. 547, Jayapura 83299, KalSel', '2021-03-07 18:26:22', '2022-01-09 12:08:04'),
(153, 'Sari Gilda Novitasari', 'Gg. Rajawali Barat No. 464, Pematangsiantar 59881, Maluku', '2021-05-03 06:51:35', '2022-01-09 12:08:04'),
(154, 'Tami Palastri', 'Psr. Gajah No. 679, Bitung 80403, Papua', '2000-06-21 12:12:26', '2022-01-09 12:08:04'),
(155, 'Icha Lestari S.E.', 'Dk. Imam No. 815, Administrasi Jakarta Barat 51301, DIY', '1971-06-09 07:18:43', '2022-01-09 12:08:04'),
(156, 'Asirwanda Saputra S.Ked', 'Jr. Baing No. 414, Probolinggo 90137, Bengkulu', '1988-01-31 06:03:36', '2022-01-09 12:08:04'),
(157, 'Soleh Wibisono S.Kom', 'Kpg. Supono No. 387, Sungai Penuh 86908, KalSel', '1992-01-05 11:47:32', '2022-01-09 12:08:04'),
(158, 'Kasiran Suryono', 'Ki. Suprapto No. 589, Kotamobagu 17639, KepR', '1998-03-02 11:28:52', '2022-01-09 12:08:04'),
(159, 'Gawati Hastuti', 'Jln. Baja No. 425, Dumai 58056, Aceh', '2014-10-10 21:03:23', '2022-01-09 12:08:04'),
(160, 'Galih Habibi S.E.', 'Jln. Bambu No. 57, Malang 77323, KalUt', '2018-05-09 19:59:24', '2022-01-09 12:08:04'),
(161, 'Farah Mardhiyah M.Ak', 'Dk. Nanas No. 894, Cimahi 69233, KalSel', '2003-09-06 13:50:13', '2022-01-09 12:08:04'),
(162, 'Niyaga Dimas Tarihoran', 'Jln. BKR No. 126, Administrasi Jakarta Barat 58327, JaTim', '2001-07-09 00:56:54', '2022-01-09 12:08:04'),
(163, 'Endah Yulia Hariyah', 'Kpg. Suryo No. 865, Blitar 16432, Riau', '2008-01-17 01:43:41', '2022-01-09 12:08:04'),
(164, 'Nasrullah Erik Waluyo', 'Ds. Basmol Raya No. 629, Pontianak 45845, DIY', '2011-11-12 07:55:59', '2022-01-09 12:08:04'),
(165, 'Paiman Damanik', 'Psr. Basuki No. 681, Metro 56812, DIY', '1983-06-13 10:03:08', '2022-01-09 12:08:04'),
(166, 'Karya Salahudin M.Ak', 'Kpg. Suryo No. 898, Surabaya 51358, DIY', '1994-04-22 02:55:11', '2022-01-09 12:08:04'),
(167, 'Maras Dongoran', 'Kpg. Ciwastra No. 318, Batu 60390, KalUt', '1983-06-04 18:18:50', '2022-01-09 12:08:04'),
(168, 'Irsad Januar', 'Gg. Bakau Griya Utama No. 945, Salatiga 15932, SulUt', '2021-05-13 00:29:25', '2022-01-09 12:08:04'),
(169, 'Silvia Ika Mardhiyah', 'Psr. Banal No. 215, Metro 24188, Bali', '2016-05-07 00:58:45', '2022-01-09 12:08:04'),
(170, 'Mutia Purwanti', 'Psr. Jagakarsa No. 247, Banda Aceh 87478, DIY', '2016-07-03 10:30:00', '2022-01-09 12:08:04'),
(171, 'Putri Andriani', 'Gg. Camar No. 231, Administrasi Jakarta Pusat 90511, KalTim', '2010-02-22 02:32:27', '2022-01-09 12:08:04'),
(172, 'Estiawan Habibi', 'Gg. Achmad Yani No. 514, Palembang 86768, NTB', '1972-08-04 07:50:42', '2022-01-09 12:08:05'),
(173, 'Cakrabuana Wisnu Waskita S.Farm', 'Ki. Diponegoro No. 610, Pekanbaru 16440, KepR', '1983-06-25 02:45:04', '2022-01-09 12:08:05'),
(174, 'Zizi Kuswandari', 'Gg. Uluwatu No. 425, Kediri 84602, NTB', '1993-05-26 17:36:18', '2022-01-09 12:08:05'),
(175, 'Cakrabuana Habibi S.Sos', 'Jr. Gambang No. 909, Madiun 68619, SumUt', '1971-11-24 23:34:35', '2022-01-09 12:08:05'),
(176, 'Bakiadi Manullang M.Farm', 'Gg. Yosodipuro No. 198, Sawahlunto 51132, KalTeng', '1972-02-09 06:07:41', '2022-01-09 12:08:05'),
(177, 'Salsabila Rahmi Handayani S.T.', 'Psr. Surapati No. 246, Pontianak 29132, Banten', '1984-06-03 02:56:13', '2022-01-09 12:08:05'),
(178, 'Yoga Mustofa', 'Jln. Gajah No. 49, Manado 25972, MalUt', '1991-10-29 16:23:18', '2022-01-09 12:08:05'),
(179, 'Raina Nasyidah', 'Kpg. Bakit  No. 437, Lubuklinggau 59526, Lampung', '2017-01-04 08:54:10', '2022-01-09 12:08:05'),
(180, 'Slamet Pangestu', 'Ki. Flora No. 762, Langsa 56700, Aceh', '2021-02-10 08:27:41', '2022-01-09 12:08:05'),
(181, 'Nyoman Samosir', 'Ds. Hang No. 523, Subulussalam 30991, Bengkulu', '1985-08-27 11:25:07', '2022-01-09 12:08:05'),
(182, 'Darmanto Prakasa', 'Ds. Moch. Ramdan No. 966, Padang 17870, JaTim', '1989-05-20 00:52:41', '2022-01-09 12:08:05'),
(183, 'Tari Sudiati', 'Jln. Padma No. 754, Singkawang 36585, SulUt', '1974-03-26 21:09:10', '2022-01-09 12:08:05'),
(184, 'Vivi Paris Hartati S.Farm', 'Ds. Bakau No. 377, Tebing Tinggi 13878, NTB', '1984-04-01 13:24:52', '2022-01-09 12:08:05'),
(185, 'Ira Zamira Usada S.Ked', 'Kpg. Raya Setiabudhi No. 334, Ambon 74313, KalTeng', '2017-10-20 08:00:33', '2022-01-09 12:08:05'),
(186, 'Farhunnisa Tari Maryati S.Pt', 'Psr. Bakin No. 168, Gorontalo 21680, SulSel', '1981-12-05 09:08:34', '2022-01-09 12:08:05'),
(187, 'Kamaria Mardhiyah S.T.', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 35, Lhokseumawe 80639, KepR', '1990-09-05 19:47:29', '2022-01-09 12:08:05'),
(188, 'Uli Maryati', 'Dk. Diponegoro No. 415, Ternate 66381, PapBar', '1993-11-21 16:38:03', '2022-01-09 12:08:05'),
(189, 'Jamal Kusumo M.Pd', 'Ki. Monginsidi No. 110, Administrasi Jakarta Utara 21386, Jambi', '2002-12-23 06:19:54', '2022-01-09 12:08:05'),
(190, 'Nabila Maria Rahayu M.Pd', 'Psr. Industri No. 616, Tidore Kepulauan 30158, JaBar', '1997-10-13 01:04:17', '2022-01-09 12:08:05'),
(191, 'Amalia Almira Winarsih', 'Ds. Gajah Mada No. 911, Kendari 36549, Riau', '1990-11-15 16:55:19', '2022-01-09 12:08:05'),
(192, 'Luwes Hutasoit', 'Jr. Yohanes No. 120, Tebing Tinggi 33583, Jambi', '1995-07-05 04:49:07', '2022-01-09 12:08:05'),
(193, 'Harjo Teddy Wibisono S.E.I', 'Kpg. Daan No. 416, Medan 99296, NTB', '2011-10-15 22:59:29', '2022-01-09 12:08:05'),
(194, 'Ophelia Purwanti', 'Psr. M.T. Haryono No. 852, Metro 29800, SulBar', '1977-03-03 20:07:21', '2022-01-09 12:08:05'),
(195, 'Dipa Mitra Anggriawan S.Kom', 'Ki. Ciwastra No. 548, Padangsidempuan 41873, KalUt', '1977-01-06 18:22:36', '2022-01-09 12:08:05'),
(196, 'Hartana Winarno', 'Psr. Basmol Raya No. 656, Samarinda 29474, Bali', '1994-09-26 05:46:00', '2022-01-09 12:08:05'),
(197, 'Emin Tarihoran', 'Dk. Suryo No. 73, Cilegon 81504, Bengkulu', '1977-08-21 05:07:46', '2022-01-09 12:08:05'),
(198, 'Keisha Handayani', 'Jln. Adisumarmo No. 723, Magelang 38889, NTT', '2015-08-02 15:41:59', '2022-01-09 12:08:05'),
(199, 'Icha Oktaviani', 'Jr. Cemara No. 933, Makassar 43847, SulTeng', '1979-04-03 17:04:30', '2022-01-09 12:08:05'),
(200, 'Belinda Ira Lailasari S.Psi', 'Psr. Kalimalang No. 130, Sabang 93126, MalUt', '2001-06-14 10:46:35', '2022-01-09 12:08:05'),
(201, 'Tania Oktaviani S.I.Kom', 'Gg. Cikutra Barat No. 277, Yogyakarta 42727, KalSel', '2001-03-12 06:01:18', '2022-01-09 12:08:05'),
(202, 'Tina Laksmiwati', 'Ds. Bakti No. 917, Madiun 75986, MalUt', '1991-06-29 05:26:39', '2022-01-09 12:08:05'),
(203, 'Najwa Putri Usamah S.Pt', 'Gg. Laksamana No. 384, Kendari 61869, Gorontalo', '2000-07-21 08:28:17', '2022-01-09 12:08:05'),
(204, 'Paulin Permata', 'Ds. Bak Air No. 625, Ternate 88506, KalSel', '1990-11-12 18:36:16', '2022-01-09 12:08:05'),
(205, 'Kasiran Tampubolon', 'Kpg. Acordion No. 217, Administrasi Jakarta Utara 89493, KalUt', '1985-02-03 15:30:06', '2022-01-09 12:08:05'),
(206, 'Tina Purnawati S.Psi', 'Psr. Kusmanto No. 209, Medan 51539, Gorontalo', '1973-05-03 01:58:30', '2022-01-09 12:08:05'),
(207, 'Raisa Puput Usada S.E.I', 'Gg. Achmad No. 640, Tangerang 53047, Bali', '1988-05-24 15:35:12', '2022-01-09 12:08:05'),
(208, 'Danang Dasa Setiawan S.H.', 'Jr. Flores No. 29, Langsa 50486, Maluku', '2003-02-18 16:32:20', '2022-01-09 12:08:05'),
(209, 'Karimah Hartati', 'Jln. Sudirman No. 651, Mataram 77585, Maluku', '1972-11-07 22:59:37', '2022-01-09 12:08:05'),
(210, 'Gasti Indah Yuniar M.M.', 'Jr. Adisumarmo No. 821, Administrasi Jakarta Barat 55011, BaBel', '2009-11-24 03:19:44', '2022-01-09 12:08:05'),
(211, 'Lembah Hidayat', 'Gg. Pacuan Kuda No. 40, Banjar 96417, SulSel', '1978-02-08 06:04:34', '2022-01-09 12:08:05'),
(212, 'Tami Wastuti', 'Ki. Bass No. 828, Bandung 32881, Papua', '1995-05-26 21:12:38', '2022-01-09 12:08:05'),
(213, 'Ani Fujiati', 'Ki. Tambak No. 916, Tasikmalaya 40070, MalUt', '1971-07-15 14:29:19', '2022-01-09 12:08:05'),
(214, 'Siska Queen Pratiwi', 'Gg. Yosodipuro No. 252, Palu 81420, NTB', '1977-04-12 18:10:12', '2022-01-09 12:08:05'),
(215, 'Samiah Hastuti S.I.Kom', 'Ki. Lada No. 113, Tanjungbalai 39706, JaBar', '2015-07-16 14:36:02', '2022-01-09 12:08:05'),
(216, 'Zizi Wulandari', 'Jr. Abang No. 520, Solok 71013, Jambi', '2011-10-13 04:15:54', '2022-01-09 12:08:05'),
(217, 'Zaenab Puti Pratiwi M.Farm', 'Ki. Wahid No. 600, Madiun 36051, Bali', '1989-01-17 04:57:23', '2022-01-09 12:08:05'),
(218, 'Wawan Najmudin M.Farm', 'Ds. Jend. A. Yani No. 992, Blitar 76370, Lampung', '1970-04-16 14:56:14', '2022-01-09 12:08:05'),
(219, 'Mila Fujiati', 'Psr. Bank Dagang Negara No. 387, Pasuruan 84250, JaTim', '1995-03-15 20:38:30', '2022-01-09 12:08:05'),
(220, 'Olivia Rini Hasanah S.Pt', 'Ki. Halim No. 451, Tarakan 46381, SulBar', '1982-05-16 19:59:24', '2022-01-09 12:08:05'),
(221, 'Silvia Betania Suryatmi S.Pt', 'Psr. Gremet No. 451, Pariaman 87140, Banten', '1974-09-08 15:48:01', '2022-01-09 12:08:05'),
(222, 'Lurhur Najmudin', 'Kpg. Acordion No. 509, Bandar Lampung 46864, MalUt', '1997-09-04 05:07:50', '2022-01-09 12:08:05'),
(223, 'Harjaya Soleh Mandala', 'Ki. Cikutra Timur No. 476, Serang 89533, SumSel', '2001-03-07 10:43:20', '2022-01-09 12:08:05'),
(224, 'Rusman Salahudin', 'Ki. Babadan No. 508, Ambon 25156, Gorontalo', '1992-05-29 17:05:13', '2022-01-09 12:08:05'),
(225, 'Prabawa Kurniawan', 'Psr. Muwardi No. 257, Tarakan 61538, SumBar', '1973-10-30 23:41:22', '2022-01-09 12:08:05'),
(226, 'Nalar Adhiarja Sirait', 'Jln. K.H. Maskur No. 654, Bogor 28879, Papua', '1996-10-22 05:57:48', '2022-01-09 12:08:05'),
(227, 'Kamaria Suci Yolanda S.IP', 'Jr. Umalas No. 165, Ternate 40306, SulTeng', '2004-06-17 19:03:35', '2022-01-09 12:08:05'),
(228, 'Rika Azalea Usamah', 'Jln. Yap Tjwan Bing No. 300, Tarakan 60593, Jambi', '1990-08-03 21:37:19', '2022-01-09 12:08:05'),
(229, 'Lala Nabila Farida', 'Ds. K.H. Maskur No. 73, Pariaman 60776, Papua', '1990-04-10 03:13:41', '2022-01-09 12:08:05'),
(230, 'Ellis Tania Handayani M.M.', 'Ki. Baung No. 447, Tidore Kepulauan 12235, SumBar', '2019-09-29 23:54:04', '2022-01-09 12:08:05'),
(231, 'Lamar Edward Wacana', 'Ds. Bakti No. 383, Sawahlunto 33611, Aceh', '2004-02-26 01:28:51', '2022-01-09 12:08:05'),
(232, 'Argono Natsir', 'Jln. Teuku Umar No. 359, Pematangsiantar 78873, DKI', '2001-04-15 17:00:20', '2022-01-09 12:08:05'),
(233, 'Indah Puspasari', 'Psr. Baja Raya No. 813, Balikpapan 40221, Bengkulu', '1996-04-18 19:25:31', '2022-01-09 12:08:05'),
(234, 'Hasta Siregar', 'Ds. Lumban Tobing No. 382, Jayapura 92274, SumUt', '1977-08-16 10:24:27', '2022-01-09 12:08:05'),
(235, 'Citra Puti Winarsih', 'Psr. Salam No. 190, Banjarbaru 83669, Banten', '1972-04-27 20:26:39', '2022-01-09 12:08:05'),
(236, 'Okta Mahdi Prabowo', 'Ds. Gedebage Selatan No. 784, Tangerang 75749, Papua', '2017-12-03 19:46:08', '2022-01-09 12:08:05'),
(237, 'Diah Hastuti', 'Kpg. Pasirkoja No. 356, Denpasar 38050, Gorontalo', '2005-03-07 12:49:36', '2022-01-09 12:08:05'),
(238, 'Ana Hastuti S.H.', 'Jr. Yoga No. 544, Gorontalo 37690, SulTra', '1995-10-08 14:41:12', '2022-01-09 12:08:05'),
(239, 'Paramita Hastuti S.Pd', 'Jln. Kiaracondong No. 827, Prabumulih 97803, JaTim', '2020-06-18 15:59:58', '2022-01-09 12:08:05'),
(240, 'Cici Jasmin Mardhiyah', 'Dk. Sam Ratulangi No. 203, Mojokerto 42020, Lampung', '2018-05-08 12:22:30', '2022-01-09 12:08:05'),
(241, 'Maida Rahmi Wijayanti M.M.', 'Jr. Padang No. 57, Surakarta 70698, SulUt', '2013-12-27 07:13:39', '2022-01-09 12:08:05'),
(242, 'Farah Yolanda S.H.', 'Ki. Yos No. 3, Banjarmasin 36254, SumBar', '2000-06-07 20:09:57', '2022-01-09 12:08:05'),
(243, 'Nadia Nasyiah S.Pt', 'Jr. Perintis Kemerdekaan No. 123, Sungai Penuh 41155, Bali', '2011-12-19 07:17:14', '2022-01-09 12:08:05'),
(244, 'Hamima Ina Widiastuti M.Pd', 'Gg. Batako No. 573, Kendari 14359, Bengkulu', '1975-01-26 23:00:08', '2022-01-09 12:08:05'),
(245, 'Vicky Citra Novitasari', 'Kpg. Ujung No. 738, Bandar Lampung 84822, KalTim', '1978-04-29 01:53:16', '2022-01-09 12:08:05'),
(246, 'Lukita Danu Prayoga S.I.Kom', 'Psr. Yos No. 901, Balikpapan 66181, NTT', '1984-04-25 09:01:55', '2022-01-09 12:08:05'),
(247, 'Nasim Manullang', 'Jln. Sutan Syahrir No. 505, Kediri 48721, NTB', '1981-10-04 10:22:58', '2022-01-09 12:08:05'),
(248, 'Zelaya Jamalia Fujiati', 'Ds. Jakarta No. 662, Depok 68721, SulBar', '1971-01-22 09:14:30', '2022-01-09 12:08:05'),
(249, 'Utama Siregar', 'Dk. Abdullah No. 390, Bau-Bau 36180, SulBar', '2008-05-04 17:27:21', '2022-01-09 12:08:05'),
(250, 'Gilda Handayani S.Ked', 'Psr. Bara Tambar No. 34, Depok 27747, Banten', '1998-10-20 19:17:07', '2022-01-09 12:08:05'),
(251, 'Julia Riyanti', 'Jln. Pattimura No. 96, Banjarbaru 52414, JaBar', '1979-10-28 10:28:30', '2022-01-09 12:08:05'),
(252, 'Chelsea Usada', 'Jln. Baranang No. 761, Bandung 17979, DKI', '1981-10-28 03:57:35', '2022-01-09 12:08:05'),
(253, 'Diana Pudjiastuti', 'Ds. Basmol Raya No. 900, Parepare 94636, Maluku', '2004-03-06 00:30:20', '2022-01-09 12:08:05'),
(254, 'Jumadi Sitorus S.E.I', 'Kpg. Bambon No. 617, Pematangsiantar 61576, KalBar', '1971-03-10 02:51:54', '2022-01-09 12:08:05'),
(255, 'Paulin Nuraini', 'Jr. Supomo No. 69, Pagar Alam 85175, KepR', '2000-03-10 11:47:47', '2022-01-09 12:08:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `Orang`
--
ALTER TABLE `Orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `Orang`
--
ALTER TABLE `Orang`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
