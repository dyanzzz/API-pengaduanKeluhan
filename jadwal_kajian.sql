/*
SQLyog Community v12.2.6 (32 bit)
MySQL - 10.1.16-MariaDB : Database - jadwal_kajian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jadwal_kajian` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jadwal_kajian`;

/*Table structure for table `kajian` */

DROP TABLE IF EXISTS `kajian`;

CREATE TABLE `kajian` (
  `kdKajian` int(11) NOT NULL AUTO_INCREMENT,
  `kdMasjid` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdKajian`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `kajian` */

insert  into `kajian`(`kdKajian`,`kdMasjid`,`tanggal`,`keterangan`,`image`,`statusDelete`) values 
(21,21,'2017-09-27','Pemateri: Ustadz Abu Nida Fattahullah\nTema: Mengupas Buku Misteri Takdir\nWaktu: 08.30 - selesai','',0),
(22,22,'2017-09-06','Pemateri: Ustadz Muhtarom\nTema: Tafsir Ibnu Katsir - QS Al Baqoroh\nWaktu: 10.00 - selesai','',0),
(23,22,'2017-09-06','Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai','',0),
(24,22,'2017-09-13','Pemateri: Ustadz Ahmad Ferry Nasution, Lc\nTema: Prinsip Dasar Islam dan Bulughul Maram\nWaktu: 09.30 â€“ Dhuhur','',0),
(25,22,'2017-09-13','Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai','',0),
(26,22,'2017-09-20','Pemateri: Ustadz Ahmad Bazher\nTema: DELAPAN Amalan Yang Berpahala Haji\nWaktu: 09.30 â€“ 11.30','',0),
(27,22,'2017-09-20','Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai','',0),
(28,22,'2017-09-27','Pemateri: Ustadz DR. Erwandi Tarmizi, MA\nTema: Harta Haram Muamalat Kontemporer\nWaktu: 09.00 â€“ 11.00','',0),
(29,22,'2017-09-27','Pemateri : Ustadz Salim bin Yahya Qibas\nTema : Shahih Hadits Qudsi\nWaktu : 13.00 - Selesai','',0),
(30,23,'2017-09-27','Pemateri: Ustadz Abdullah Sya\'roni\nTema: Kitab Fiqih Dzikir dan Do\'a\nWaktu: 09.30 - 11.30','',0),
(31,24,'2017-09-27','Pemateri: Ustadz Abu Yahya Badrusalam, Lc\nTema: Pintu-Pintu Kebaikan\nWaktu: 11.45 â€“ 13.30','',0),
(32,25,'2017-09-27','Pemateri: Ustadz Abdul Barr Kaisenda\nTema: Hadits Arbaâ€™in\nWaktu: Baâ€™da Sholat Zhuhur â€“ 13.00','',0),
(33,26,'2017-09-27','Pemateri: Habib Salim Muchdhor, MA\nTema: Ada Apa Dengan Syiâ€™ah ?\nWaktu: Baâ€™da Sholat Zhuhur â€“ selesai','',0),
(34,27,'2017-09-06','Pemateri : Ustadz Fachruddin Numan, Lc\nTema : Kitab Bulughul Maram (Karya Al Imam Al Hafidz Ibnu Hajar Al Asqolaniy)\nWaktu : Bada Dhuhur - Selesai','',0),
(35,27,'2017-09-27','Pemateri : Ustadz Djazuli, Lc\nTema : Kitab Al Kabaair\nWaktu : Bada Dhuhur - Selesai','',0),
(36,27,'2017-09-13','Pemateri : Ustadz Dr. Firanda Andirja, MA\nTema : KItab Hadits Al Arbain Al-Nawawi\nWaktu : Bada Dhuhur - Selesai','',0),
(37,27,'2017-09-20','Pemateri : Ustadz Dr. Khalid Basalamah, MA\nTema : Kitab Minhajul Muslim\nWaktu : Bada Dhuhur - Selesai','',0),
(38,28,'2017-09-27','Pemateri: Ustadz Fachruddin Nuâ€™man, Lc\nTema: Bab Al Janazah hal: 327 â€“ Kitab Fiqih Al Wajiz\nWaktu: 13.00 â€“ selesai','',0),
(39,29,'2017-09-06','Pemateri: Ustadz Ahmad Bazher, MA\nTema: Tazkiyatun Nufus (Khusus Muslimah)\nWaktu: 13.00 â€“ selesai','',0),
(40,29,'2017-09-06','Pemateri: Ustadz Ali Hasan Bawazier, MA\nTema: Al Aqidah Al Wasitiyyah\nWaktu: Baâ€™da Maghrib â€“ selesai','',0),
(41,29,'2017-09-13','Pemateri: Ustadz Najmi Umar Bakkar\nTema: Al Kabaâ€™ir (Khusus MUSLIMAH)\nWaktu: 13.30 â€“ selesai','',0),
(42,29,'2017-09-13','Pemateri: Ustadz Azhar Khalid bin Seff, MA\nTema: Syarah Umdatul Ahkam\nWaktu: Baâ€™da Maghrib â€“ selesai','',0),
(43,29,'2017-09-20','Pemateri : Ustadz Nizar Saad Jabal, Lc. Mpd\nTema : Tafsir Al Quran\nWaktu : 13.30 â€“ selesai','',0),
(44,29,'2017-09-20','Pemateri : Ustadz Yusuf Utsman Baisa, MA\nTema : Tazkiyatun Nafs\nWaktu : Ba\'da Maghrib - Selesai','',0),
(45,29,'2017-09-27','Pemateri: Ustadz Azhar Khalid bin Seff, MA\nTema: Hadits Arbain An Nawawi (Khusus MUSLIMAH)\nWaktu: 13.30 â€“ selesai','',0),
(46,29,'2017-09-27','Pemateri: Ustadz Azhar Khalid bin Seff, MA\nTema: Syarah Umdatul Ahkam\nWaktu: Baâ€™da Maghrib â€“ selesai','',0),
(47,30,'2017-09-06','Pemateri: Ustadz Abu Fahd Ega Arya, Lc\nTema: Syarhussunnah Imam Barbahari\nWaktu: Baâ€™da Maghrib â€“ Selesai','',0),
(48,30,'2017-09-20','Pemateri: Ustadz Abu Fahd Ega Arya, Lc\nTema: Syarhussunnah Imam Barbahari\nWaktu: Baâ€™da Maghrib â€“ Selesai','',0),
(49,30,'2017-09-13','Pemateri : Ustadz Muhammad Chalid Syar\'i, Lc\nTema : Kitab Sittu Duror Karya Syaikh Abdul Malik Al Jazairi\nWaktu : Baâ€™da Maghrib â€“ Selesai','',0),
(50,30,'2017-09-27','Pemateri : Ustadz Muhammad Chalid Syar\'i, Lc\nTema : Kitab Sittu Duror Karya Syaikh Abdul Malik Al Jazairi\nWaktu : Ba\'da Maghrib - Selesai','',0);

/*Table structure for table `masjid` */

DROP TABLE IF EXISTS `masjid`;

CREATE TABLE `masjid` (
  `kdMasjid` int(11) NOT NULL AUTO_INCREMENT,
  `kdWilayah` int(11) NOT NULL,
  `namaMasjid` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `informasi` varchar(50) NOT NULL,
  `linkMaps` varchar(50) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdMasjid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `masjid` */

insert  into `masjid`(`kdMasjid`,`kdWilayah`,`namaMasjid`,`alamat`,`informasi`,`linkMaps`,`statusDelete`) values 
(21,1,'Masjid At Taufiq','Jl. Cempaka Putih Timur 6, Cempaka Putih, Jakarta Pusat','0811-939-798 / 0813-8035-1173','https://goo.gl/maps/mjTbEscagt52',0),
(22,12,'Masjid Salman Al Farisi','Jl. H. Ten, Komp. BULOG Kampung Ambon, Jakarta Timur','0811 133397 (i) / 0812 96850019 (a)','https://goo.gl/maps/sCHvdSEFFAq',0),
(23,12,'Soepomo Office Park 143 Blok PQ (Bekam Assabil)','Jl. Prof. Dr. Soepomo SH No.143, Tebet, Jakarta Selatan, Lantai 3 ( A ) & Lantai 4 ( I )','085213764836 (i) / 085719768504 (a)','https://goo.gl/maps/AWFhCZCSMdT2',0),
(24,11,'Menara Bank Mega','Jl. Kapten Tendean 12-14 A, Jakarta Selatan, Ruang VIP Lantai 3 (Dekat lift)','0819-0819-9703','https://goo.gl/maps/M51V7P3y8cn',0),
(25,11,'Pondok Indah Office Tower 1','Jl. Sultan Iskandar Muda, Jakarta Selatan, Ruang Kartika 1, Basement 2','0813-2865-7665','https://goo.gl/maps/sSaEMoVFfxv',0),
(26,1,'Masjid Jendral Sudirman WTC','Jl. Jendral Sudirman Kav.29-31 Karet Setia Budi (Komplek World Trade Centre), Jakarta Pusat','0819-1111-1954 / 0878-8133-1958 (a)','https://goo.gl/maps/5DaKKzCYfkt',0),
(27,11,'Masjid Nurul Iman','Perkantoran Gedung Antam Jl. TB Simatupang No.1 Jakarta Selatan','0812-8987-0690 & 0856-9509-0181 (I) / 0857-1868-89','https://goo.gl/maps/N9ZqPyc4cgy',0),
(28,11,'Masjid Raya Al Insan','Jl. Patal Senayan I no. 6, Jakarta Selatan','0821-2242-3191 (i) / 0813-2008-9862 (WA)','https://goo.gl/maps/V7fEnWsmhHz',0),
(29,12,'Masjid Al Fattah','Jl. Raya Jatinegara Timur No. 48-50 Jakarta Timur (Depan Tunas Toyota & Sebelum RS Premier Jatinegara)','0811944456/0811-944-4562 / 0856-718-7271','https://goo.gl/maps/nGsRmvzBK9B2',0),
(30,9,'Masjid Al Mubarak','Jl. Kebahagiaan 7-A Krukut Taman Sari Jakarta Barat (Belakang Kantor Redaksi POS KOTA)','081290031615 / 083873183195','http://www.google.com',0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `kdUsers` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`kdUsers`,`nama`,`password`,`statusDelete`) values 
(1,'Admin','bismillah',0);

/*Table structure for table `wilayah` */

DROP TABLE IF EXISTS `wilayah`;

CREATE TABLE `wilayah` (
  `kdWilayah` int(11) NOT NULL AUTO_INCREMENT,
  `namaWilayah` varchar(50) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdWilayah`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `wilayah` */

insert  into `wilayah`(`kdWilayah`,`namaWilayah`,`statusDelete`) values 
(1,'Jakarta Pusat',0),
(2,'Tangerang',0),
(3,'Bekasi',0),
(4,'Serang',0),
(5,'Cilegon',0),
(6,'Pangedlang',0),
(7,'Rangkas Bitung',0),
(8,'Cikarang',0),
(9,'Jakarta Barat',0),
(10,'Tambun',0),
(11,'Jakarta Selatan',0),
(12,'Jakarta Timur',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
