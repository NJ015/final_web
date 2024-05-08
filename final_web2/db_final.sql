-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2024 at 08:53 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(1000) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `SUBJECT` varchar(1000) NOT NULL,
  `MESSAGE` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`ID`, `NAME`, `EMAIL`, `SUBJECT`, `MESSAGE`) VALUES
(2, 'nour', 'nour.jalloul01@lau.edu', 'gj', 'cgnfvmbhn,'),
(1, 'fatima', 'fatima@gmail.com', 'ddfxncm', 'esdfcgm'),
(3, 'farah', 'fncgv@ddfg.com', 'xdfngm', 'dfvg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jewelry`
--

DROP TABLE IF EXISTS `tbl_jewelry`;
CREATE TABLE IF NOT EXISTS `tbl_jewelry` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `TYPE` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PRICE` int NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_jewelry`
--

INSERT INTO `tbl_jewelry` (`ID`, `NAME`, `TYPE`, `PRICE`, `IS_ACTIVE`) VALUES
(1, 'jewel', 'earrings', 54, 0),
(2, 'jewe1', 'earrings', 500, 1),
(3, 'jwww', 'earrings', 800, 0),
(4, 'jwww', 'bracelet', 800, 1),
(5, 'bracelet', 'bracelet', 94, 1),
(6, 'brac', 'necklace', 56, 1),
(7, 'b', 'necklace', 4, 1),
(16, 'jewel16', 'bracelet', 10, 1),
(15, 'jewel15', 'earrings', 9, 1),
(14, 'sunny', 'bracelet', 5, 1),
(13, 'jewel13', 'ring', 67, 1),
(17, 'jewel17', 'earrings', 40, 1),
(18, 'houwaida', 'necklace', 1500, 1),
(8, 'jewel8', 'bracelet', 45, 1),
(9, 'jewel9', 'necklace', 463, 1),
(10, 'jewel10', 'bracelet', 3, 1),
(11, 'jewel11', 'ring', 2222, 1),
(12, 'jewel12', 'earrings', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(1, 'nour', 'pass'),
(2, 'farah', 'pass'),
(3, 'houwaida', 'pass70'),
(4, 'tasneem', 'tito'),
(5, 'nour2', '8f434346648f6b96df89dda901c5176b10a6d83961dd3c1ac88b59b2dc327aa4'),
(7, 'admin', 'admin'),
(8, 'root', 'root');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
