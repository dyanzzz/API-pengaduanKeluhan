-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb15.awardspace.net
-- Generation Time: Feb 17, 2019 at 07:00 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2474767_jadwalkajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `kajian`
--

CREATE TABLE `kajian` (
  `kdKajian` int(11) NOT NULL,
  `kdMasjid` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kajian`
--

INSERT INTO `kajian` (`kdKajian`, `kdMasjid`, `tanggal`, `keterangan`, `image`, `statusDelete`) VALUES
(21, 21, '2017-09-27', 'Pemateri: Ustadz Abu Nida Fattahullah\nTema: Mengupas Buku Misteri Takdir\nWaktu: 08.30 - selesai', '', 0),
(22, 22, '2017-09-06', 'Pemateri: Ustadz Muhtarom\nTema: Tafsir Ibnu Katsir - QS Al Baqoroh\nWaktu: 10.00 - selesai', '', 0),
(23, 22, '2017-09-06', 'Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai', '', 0),
(24, 22, '2017-09-13', 'Pemateri: Ustadz Ahmad Ferry Nasution, Lc\nTema: Prinsip Dasar Islam dan Bulughul Maram\nWaktu: 09.30 â€“ Dhuhur', '', 0),
(25, 22, '2017-09-13', 'Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai', '', 0),
(26, 22, '2017-09-20', 'Pemateri: Ustadz Ahmad Bazher\nTema: DELAPAN Amalan Yang Berpahala Haji\nWaktu: 09.30 â€“ 11.30', '', 0),
(27, 22, '2017-09-20', 'Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai', '', 0),
(28, 22, '2017-09-27', 'Pemateri: Ustadz DR. Erwandi Tarmizi, MA\nTema: Harta Haram Muamalat Kontemporer\nWaktu: 09.00 â€“ 11.00', '', 0),
(29, 22, '2017-09-27', 'Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai', '', 0),
(30, 23, '2017-09-27', 'Pemateri: Ustadz Abdullah Sya\'roni\nTema: Kitab Fiqih Dzikir dan Do\'a\nWaktu: 09.30 - 11.30', '', 0),
(31, 24, '2017-09-27', 'Pemateri: Ustadz Abu Yahya Badrusalam, Lc\nTema: Pintu-Pintu Kebaikan\nWaktu: 11.45 â€“ 13.30', '', 0),
(32, 25, '2017-09-27', 'Pemateri: Ustadz Abdul Barr Kaisenda\nTema: Hadits Arbaâ€™in\nWaktu: Baâ€™da Sholat Zhuhur â€“ 13.00', '', 0),
(33, 26, '2017-09-27', 'Pemateri: Habib Salim Muchdhor, MA\nTema: Ada Apa Dengan Syiâ€™ah ?\nWaktu: Baâ€™da Sholat Zhuhur â€“ selesai', '', 0),
(34, 27, '2017-09-06', 'Pemateri : Ustadz Fachruddin Numan, Lc\nTema : Kitab Bulughul Maram (Karya Al Imam Al Hafidz Ibnu Hajar Al Asqolaniy)\nWaktu : Bada Dhuhur - Selesai', '', 0),
(35, 27, '2017-09-27', 'Pemateri : Ustadz Djazuli, Lc\nTema : Kitab Al Kabaair\nWaktu : Bada Dhuhur - Selesai', '', 0),
(36, 27, '2017-09-13', 'Pemateri : Ustadz Dr. Firanda Andirja, MA\nTema : KItab Hadits Al Arbain Al-Nawawi\nWaktu : Bada Dhuhur - Selesai', '', 0),
(37, 27, '2017-09-20', 'Pemateri : Ustadz Dr. Khalid Basalamah, MA\nTema : Kitab Minhajul Muslim\nWaktu : Bada Dhuhur - Selesai', '', 0),
(38, 28, '2017-09-27', 'Pemateri: Ustadz Fachruddin Nuâ€™man, Lc\nTema: Bab Al Janazah hal: 327 â€“ Kitab Fiqih Al Wajiz\nWaktu: 13.00 â€“ selesai', '', 0),
(39, 29, '2017-09-06', 'Pemateri: Ustadz Ahmad Bazher, MA\nTema: Tazkiyatun Nufus (Khusus Muslimah)\nWaktu: 13.00 â€“ selesai', '', 0),
(40, 29, '2017-09-06', 'Pemateri: Ustadz Ali Hasan Bawazier, MA\nTema: Al Aqidah Al Wasitiyyah\nWaktu: Baâ€™da Maghrib â€“ selesai', '', 0),
(41, 29, '2017-09-13', 'Pemateri: Ustadz Najmi Umar Bakkar\nTema: Al Kabaâ€™ir (Khusus MUSLIMAH)\nWaktu: 13.30 â€“ selesai', '', 0),
(42, 29, '2017-09-13', 'Pemateri: Ustadz Azhar Khalid bin Seff, MA\nTema: Syarah Umdatul Ahkam\nWaktu: Baâ€™da Maghrib â€“ selesai', '', 0),
(43, 29, '2017-09-20', 'Pemateri : Ustadz Nizar Saad Jabal, Lc. Mpd\nTema : Tafsir Al Quran\nWaktu : 13.30 â€“ selesai', '', 0),
(44, 29, '2017-09-20', 'Pemateri : Ustadz Yusuf Utsman Baisa, MA\nTema : Tazkiyatun Nafs\nWaktu : Ba\'da Maghrib - Selesai', '', 0),
(45, 29, '2017-10-11', 'Pemateri: Ustadz Azhar Khalid bin Seff, MA\nTema: Hadits Arbain An Nawawi (Khusus MUSLIMAH)\nWaktu: 13.30 â€“ selesai', '51.jpg', 0),
(46, 29, '2017-09-27', 'Pemateri: Ustadz Azhar Khalid bin Seff, MA\nTema: Syarah Umdatul Ahkam\nWaktu: Baâ€™da Maghrib â€“ selesai', '', 0),
(47, 30, '2017-09-06', 'Pemateri: Ustadz Abu Fahd Ega Arya, Lc\nTema: Syarhussunnah Imam Barbahari\nWaktu: Baâ€™da Maghrib â€“ Selesai', '', 0),
(48, 30, '2017-09-20', 'Pemateri: Ustadz Abu Fahd Ega Arya, Lc\nTema: Syarhussunnah Imam Barbahari\nWaktu: Baâ€™da Maghrib â€“ Selesai', '', 0),
(49, 30, '2017-09-13', 'Pemateri : Ustadz Muhammad Chalid Syar\'i, Lc\nTema : Kitab Sittu Duror Karya Syaikh Abdul Malik Al Jazairi\nWaktu : Baâ€™da Maghrib â€“ Selesai', '', 0),
(50, 30, '2017-09-27', 'Pemateri : Ustadz Muhammad Chalid Syar\'i, Lc\nTema : Kitab Sittu Duror Karya Syaikh Abdul Malik Al Jazairi\nWaktu : Ba\'da Maghrib - Selesai', '', 0),
(56, 37, '2017-10-12', 'Pemateri: Ust Subhan Bawazier\nTema: Akhlak yang mulia\nKet. Yang membawa anak" mohon untuk di perhatikan agar tidak membuat gaduh', '', 0),
(60, 40, '2017-10-12', 'wakwaw', '', 0),
(61, 40, '2017-10-20', 'mantap', '', 0),
(62, 41, '2017-10-18', 'yes', '', 0),
(63, 41, '2017-10-20', 'jos', '', 0),
(64, 41, '2017-10-31', 'ow', '', 0),
(65, 30, '2017-12-02', 'Tema. Berbakti kepada orang tua', '66.jpg', 0),
(66, 43, '2017-12-03', 'Pemateri:Â Ustadz Ali Hasan Bawazier, MA\nTema: Antara Rizki dan Ajal\nWaktu:Â Baâ€™da Sholat Shubuh â€“ selesai', '', 0),
(67, 44, '2017-12-03', 'Pemateri:Â Ustadz DR. Erwandi Tarmizi, MA\nTema: Tanya â€“ Jawab Harta Haram Muamalat Kontemporer\nWaktu:Â Baâ€™da Sholat Shubuh â€“ Selesai', '', 0),
(68, 45, '2017-12-03', 'Pemateri :Â Ustadz Abu Qotadah\nTema : Tafsir As Saâ€™di â€“ QS Al Baqoroh\nWaktu :Â Baâ€™da Sholat Shubuh â€“ selesai', '', 0),
(69, 45, '2018-02-15', 'Pemateri: ustadz muhtarom\nTema: tafsir ibnu katsir\nWaktu: 09.30 - 11.00\nInformasi: 087771019857 (i) / 087771019889 (a)', '', 0),
(70, 47, '2018-08-11', 'Pemateri: Ustadz Aep Saepullah Ibnu Ahmad, Lc\nTema: Kitab Tauhid - Termasuk Syirik Bernadzar Bukan Karena Allah (Rutin Sabtu ke 2 dan 4)\nWaktu: Bada Sholat Maghrib - selesai', '', 0),
(71, 48, '2018-12-18', 'Kajian Kitab Riyadhu Shalihin\nUst Aldi Ferdian\nBada Magrib', '72.png', 0),
(72, 49, '2019-02-17', 'Pemateri : Ustadz Fachrurozi Ibn Muallim Ø­ÙØ¸Ù‡ Ø§Ù„Ù„Ù‡ ØªØ¹Ø§Ù„Ù‰ \nTema : Kitab Shirah Nabawiyah\nWaktu : Baâ€™da Sholat Maghrib â€“ selesai\nInformasi : 0812-9869-9869 (i) / 0813-1757-0068 (a)', '', 1),
(73, 48, '2019-02-17', 'Pemateri : Ustadz Fachrurozi Ibn Muallim Ø­ÙØ¸Ù‡ Ø§Ù„Ù„Ù‡ ØªØ¹Ø§Ù„Ù‰ \nTema : Kitab Shirah Nabawiyah\nWaktu : Baâ€™da Sholat Maghrib â€“ selesai\nInformasi : 0812-9869-9869 (i) / 0813-1757-0068 (a)', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `masjid`
--

CREATE TABLE `masjid` (
  `kdMasjid` int(11) NOT NULL,
  `kdWilayah` int(11) NOT NULL,
  `namaMasjid` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `informasi` varchar(50) NOT NULL,
  `linkMaps` varchar(50) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masjid`
--

INSERT INTO `masjid` (`kdMasjid`, `kdWilayah`, `namaMasjid`, `alamat`, `informasi`, `linkMaps`, `statusDelete`) VALUES
(21, 1, 'Masjid At Taufiq', 'Jl. Cempaka Putih Timur 6, Cempaka Putih, Jakarta Pusat', '0811-939-798 / 0813-8035-1173', 'https://goo.gl/maps/mjTbEscagt52', 0),
(22, 12, 'Masjid Salman Al Farisi', 'Jl. H. Ten, Komp. BULOG Kampung Ambon, Jakarta Timur', '0811 133397 (i) / 0812 96850019 (a)', 'https://goo.gl/maps/sCHvdSEFFAq', 0),
(23, 12, 'Soepomo Office Park 143 Blok PQ (Bekam Assabil)', 'Jl. Prof. Dr. Soepomo SH No.143, Tebet, Jakarta Selatan, Lantai 3 ( A ) & Lantai 4 ( I )', '085213764836 (i) / 085719768504 (a)', 'https://goo.gl/maps/AWFhCZCSMdT2', 0),
(24, 11, 'Menara Bank Mega', 'Jl. Kapten Tendean 12-14 A, Jakarta Selatan, Ruang VIP Lantai 3 (Dekat lift)', '0819-0819-9703', 'https://goo.gl/maps/M51V7P3y8cn', 0),
(25, 11, 'Pondok Indah Office Tower 1', 'Jl. Sultan Iskandar Muda, Jakarta Selatan, Ruang Kartika 1, Basement 2', '0813-2865-7665', 'https://goo.gl/maps/sSaEMoVFfxv', 0),
(26, 1, 'Masjid Jendral Sudirman WTC', 'Jl. Jendral Sudirman Kav.29-31 Karet Setia Budi (Komplek World Trade Centre), Jakarta Pusat', '0819-1111-1954 / 0878-8133-1958 (a)', 'https://goo.gl/maps/5DaKKzCYfkt', 0),
(27, 11, 'Masjid Nurul Iman', 'Perkantoran Gedung Antam Jl. TB Simatupang No.1 Jakarta Selatan', '0812-8987-0690 & 0856-9509-0181 (I) / 0857-1868-89', 'https://goo.gl/maps/N9ZqPyc4cgy', 0),
(28, 11, 'Masjid Raya Al Insan', 'Jl. Patal Senayan I no. 6, Jakarta Selatan', '0821-2242-3191 (i) / 0813-2008-9862 (WA)', 'https://goo.gl/maps/V7fEnWsmhHz', 0),
(29, 12, 'Masjid Al Fattah', 'Jl. Raya Jatinegara Timur No. 48-50 Jakarta Timur (Depan Tunas Toyota & Sebelum RS Premier Jatinegara)', '0811944456/0811-944-4562 / 0856-718-7271', 'https://goo.gl/maps/nGsRmvzBK9B2', 0),
(30, 9, 'Masjid Al Mubarak', 'Jl. Kebahagiaan 7-A Krukut Taman Sari Jakarta Barat (Belakang Kantor Redaksi POS KOTA)', '081290031615 / 083873183195', 'http://www.google.com', 0),
(37, 17, 'Masjid Al Muhajirin', 'Perum Graha Cisait', '087771019888', 'http://www.google.com', 0),
(40, 10, '0', '9', '@', 'yuju', 1),
(41, 10, 'ups', 'tambun', 'ok', 'eh', 1),
(42, 10, 'mak', 'yuhu', 'ups', 'ok', 1),
(43, 3, 'Masjid Baiturrahman', 'Jl. Chrysan VI, Mediterania Regency Cikunir, Ratna, Jakamulya, Bekasi', '0811-196-568 / 0878-8101-2535', 'http://google.com', 0),
(44, 18, 'Masjid Muâ€™adz Bin Jabal', 'Jl. Pojong Iping RT 03/01 Kav. Bulog Blok B No.10 Desa Bojong Kulur, Kec. Gunung Putri, Kab. Bogor', '0812 9605 0383 (i) / 0813 1114 8158 (a)', 'http://google.com', 0),
(45, 3, 'Masjid Al Aqsho', 'Prima Lingkar Asri, Jatibening, Bekasi', '0812-9858-5533 / 0813-8022-9281', 'http://google.com', 0),
(46, 4, 'Raudhatul jannah', 'jl raya cipulir estate', '087771019854', 'http://google.com', 0),
(47, 4, 'Masjid Subulussalam', 'Jl. Deposito Komplek BI, Rt. 10 /17, Kedaung Pamulang, Tangerang', '0812-8279-3700 (i) / 0822-1039-0736 (a)', 'https://goo.gl/maps/7qSwpRpGx6D2', 0),
(48, 2, 'Masjid Al Ihsan Puribeta 1', 'Masjid Al Ihsan Puri Beta, Perum Puri Beta 1, Jl. Puri Beta Utara Raya, Larangan Utara, Ciledug, Tangerang', '0812-9869-9869 (i) / 0813-1757-0068 (a)', 'https://goo.gl/maps/3fjhQTtiEEk', 0),
(49, 19, 'Masjid Nurul Iman KS', 'Jl Raya Krakatau Steel No 100', '087771019890', 'http://www.google.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `kdUsers` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`kdUsers`, `nama`, `password`, `statusDelete`) VALUES
(1, 'Admin', 'bismillah', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `kdWilayah` int(11) NOT NULL,
  `namaWilayah` varchar(50) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`kdWilayah`, `namaWilayah`, `statusDelete`) VALUES
(1, 'Jakarta Pusat', 0),
(2, 'Tangerang', 0),
(3, 'Bekasi', 0),
(4, 'Tangerang Selatan', 0),
(9, 'Jakarta Barat', 0),
(10, 'Tambun', 0),
(11, 'Jakarta Selatan', 0),
(12, 'Jakarta Timur', 0),
(17, 'Serang', 0),
(18, 'Bogor', 0),
(19, 'Merak', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kajian`
--
ALTER TABLE `kajian`
  ADD PRIMARY KEY (`kdKajian`);

--
-- Indexes for table `masjid`
--
ALTER TABLE `masjid`
  ADD PRIMARY KEY (`kdMasjid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`kdUsers`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`kdWilayah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kajian`
--
ALTER TABLE `kajian`
  MODIFY `kdKajian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `masjid`
--
ALTER TABLE `masjid`
  MODIFY `kdMasjid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `kdUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `kdWilayah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
