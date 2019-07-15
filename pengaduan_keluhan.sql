/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.16-MariaDB : Database - 2493388_pengaduankeluhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`2493388_pengaduankeluhan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `2493388_pengaduankeluhan`;

/*Table structure for table `kamar` */

DROP TABLE IF EXISTS `kamar`;

CREATE TABLE `kamar` (
  `kdKamar` int(11) NOT NULL AUTO_INCREMENT,
  `tglInput` date NOT NULL,
  `kdUsers` int(11) NOT NULL,
  `blokKamar` varchar(3) NOT NULL,
  `noKamar` int(3) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `jenisKelamin` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdKamar`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `kamar` */

insert  into `kamar`(`kdKamar`,`tglInput`,`kdUsers`,`blokKamar`,`noKamar`,`tanggalLahir`,`jenisKelamin`,`alamat`,`statusDelete`) values 
(1,'2019-03-16',1,'A',1,'2019-03-16','Laki-laki','jl raya',0),
(2,'2019-03-16',2,'U',1,'2019-03-01','Laki-laki','kp sawah',0),
(3,'2019-03-16',4,'APP',37,'2010-03-16','Laki-laki','jl kapuk raya',0),
(4,'2019-03-16',5,'C',3,'2019-03-16','Laki-laki','jl mantap',0),
(5,'2019-03-16',11,'TU',2,'2019-03-16','Laki-laki','jl kopi',0),
(6,'2019-03-16',12,'ZER',36,'2019-03-02','Laki-laki','jl raya hankam raya',0),
(7,'2019-03-16',13,'KO',125,'2019-03-16','Laki-laki','jl kampung sa',0),
(8,'2019-03-17',14,'T',369,'2019-03-01','Perempuan','tempat rumah',0);

/*Table structure for table `keluhan` */

DROP TABLE IF EXISTS `keluhan`;

CREATE TABLE `keluhan` (
  `kdKeluhan` int(11) NOT NULL AUTO_INCREMENT,
  `tanggalKeluhan` date NOT NULL,
  `kdUsers` int(11) NOT NULL,
  `kdKamar` int(11) NOT NULL,
  `keluhan` varchar(200) NOT NULL,
  `statusKeluhan` varchar(50) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdKeluhan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `keluhan` */

insert  into `keluhan`(`kdKeluhan`,`tanggalKeluhan`,`kdUsers`,`kdKamar`,`keluhan`,`statusKeluhan`,`statusDelete`) values 
(1,'2019-03-01',2,1,'AC tidak dingin pak','Selesai',0),
(2,'2019-03-05',2,1,'Sampah Belum dibuang pak','Selesai',0),
(3,'2019-03-10',2,1,'Pintu Susah di tutup','Menunggu',0),
(4,'2019-03-17',2,1,'qa','Menunggu',1),
(5,'2019-03-17',2,1,'tes','Menunggu',1),
(6,'2019-03-17',2,1,'tes aja','Menunggu',1),
(7,'2019-03-17',14,8,'tes','Proses',0),
(8,'2019-03-17',14,8,'tessy','Selesai',0),
(9,'2019-03-17',14,8,'ret','Selesai',0);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `kdUsers` int(11) NOT NULL AUTO_INCREMENT,
  `tglInput` date NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` int(1) NOT NULL,
  `statusDelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kdUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`kdUsers`,`tglInput`,`nama`,`username`,`password`,`level`,`statusDelete`) values 
(1,'2019-03-16','Admin','admin','1',1,0),
(2,'2019-03-16','Budi','budi','1',2,0),
(3,'2019-03-16','joko','2','1',2,1),
(4,'2019-03-16','bubudo','3','12345',2,0),
(5,'2019-03-16','hindun','4','1',2,1),
(6,'2019-03-16','dodo','5','1',2,0),
(7,'2019-03-16','halop','6','12',2,0),
(8,'2019-03-16','foki','1','1256',2,0),
(9,'2019-03-16','budi ampun','36','12345',2,0),
(10,'2019-03-16','dodo','3','1256',2,0),
(11,'2019-03-16','hanu','2','0852',2,1),
(12,'2019-03-16','maetyu','36','123456',2,1),
(13,'2019-03-16','koko pop','kokop','123',2,0),
(14,'2019-03-17','tata janeta aja','tata','5',2,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
