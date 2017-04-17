-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2017 at 12:42 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uts2dci`
--

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE IF NOT EXISTS `klub` (
`id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`id`, `nama`, `logo`) VALUES
(1, 'polinema', 'FORKOMIF.png'),
(2, 'testes', 'images_(1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemain`
--

CREATE TABLE IF NOT EXISTS `pemain` (
`id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `fk_klub` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pemain`
--

INSERT INTO `pemain` (`id`, `nama`, `posisi`, `tanggal_lahir`, `fk_klub`) VALUES
(1, 'Hilmy Setya', 'Ketua', '0000-00-00', 1),
(2, 'hahaha', 'kiper', '0000-00-00', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_klub_pemain` (`fk_klub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pemain`
--
ALTER TABLE `pemain`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemain`
--
ALTER TABLE `pemain`
ADD CONSTRAINT `fk_klub_pemain` FOREIGN KEY (`fk_klub`) REFERENCES `klub` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
