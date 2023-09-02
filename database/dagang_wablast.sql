-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dagang_wablast
CREATE DATABASE IF NOT EXISTS `dagang_wablast` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `dagang_wablast`;

-- Dumping structure for table dagang_wablast.api_responses
CREATE TABLE IF NOT EXISTS `api_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dagang_wablast.api_responses: ~0 rows (approximately)

-- Dumping structure for table dagang_wablast.nasabah_hp
CREATE TABLE IF NOT EXISTS `nasabah_hp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cif` varchar(50) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `nama_identitas` varchar(150) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dagang_wablast.nasabah_hp: ~0 rows (approximately)

-- Dumping structure for table dagang_wablast.send_image
CREATE TABLE IF NOT EXISTS `send_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) DEFAULT NULL,
  `file` varchar(5000) DEFAULT NULL,
  `caption` varchar(5000) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `terkirim` int(11) DEFAULT NULL,
  `callback` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dagang_wablast.send_image: ~0 rows (approximately)

-- Dumping structure for table dagang_wablast.send_link
CREATE TABLE IF NOT EXISTS `send_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) DEFAULT NULL,
  `link` varchar(5000) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `terkirim` int(11) DEFAULT NULL,
  `callback` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dagang_wablast.send_link: ~0 rows (approximately)

-- Dumping structure for table dagang_wablast.send_message
CREATE TABLE IF NOT EXISTS `send_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) DEFAULT NULL,
  `pesan` varchar(5000) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `terkirim` int(11) DEFAULT NULL,
  `callback` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dagang_wablast.send_message: ~3 rows (approximately)
INSERT INTO `send_message` (`id`, `nomor`, `pesan`, `waktu`, `terkirim`, `callback`) VALUES
	(1, '085860565852', 'A', '2023-09-02 17:17:05', 1, '{"result": "true", "number": "085860565852", "message": "Kirim pesan sukses!", "status": "pending"}'),
	(2, '085860565852', 'B', '2023-09-02 17:17:06', 1, '{"result": "true", "number": "085860565852", "message": "Kirim pesan sukses!", "status": "pending"}'),
	(3, '085860565852', 'C', '2023-09-02 17:17:07', 1, '{"result": "true", "number": "085860565852", "message": "Kirim pesan sukses!", "status": "pending"}');

-- Dumping structure for table dagang_wablast.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dagang_wablast.status: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
