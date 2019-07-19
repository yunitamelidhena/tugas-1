-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2019 at 09:14 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pustakac45`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `noanggota` int(2) NOT NULL,
  `namaanggota` varchar(50) NOT NULL,
  PRIMARY KEY (`noanggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`noanggota`, `namaanggota`) VALUES
(3, 'ovi'),
(4, 'santiya');

-- --------------------------------------------------------

--
-- Table structure for table `kelompokpustaka`
--

CREATE TABLE IF NOT EXISTS `kelompokpustaka` (
  `idkelompok` int(2) NOT NULL,
  `namakelompok` varchar(50) NOT NULL,
  PRIMARY KEY (`idkelompok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompokpustaka`
--

INSERT INTO `kelompokpustaka` (`idkelompok`, `namakelompok`) VALUES
(3, 'simdatamining'),
(4, 'algoritma');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `idpengguna` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`idpengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `username`, `password`) VALUES
(99, 'ronaldo', 'ronaldo'),
(132, 'benny', 'benny'),
(1231, 'fiqri', 'fiqri'),
(12345, 'udin', 'udin');

-- --------------------------------------------------------

--
-- Table structure for table `pustaka`
--

CREATE TABLE IF NOT EXISTS `pustaka` (
  `idpustaka` int(2) NOT NULL,
  `idkelompok` int(2) NOT NULL,
  `judulpustaka` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahunterbit` int(4) NOT NULL,
  PRIMARY KEY (`idpustaka`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pustaka`
--

INSERT INTO `pustaka` (`idpustaka`, `idkelompok`, `judulpustaka`, `pengarang`, `tahunterbit`) VALUES
(1, 1, 'algoritma', 'ovisantiya', 2016),
(2, 2, 'mitode', 'santiya', 2017);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
