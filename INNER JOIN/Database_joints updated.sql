-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2017 at 08:02 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Database_joints`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE IF NOT EXISTS `Customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `phone` int(11) NOT NULL,
  `id_Supplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_Supplier` (`id_Supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id`, `firstname`, `lastname`, `city`, `country`, `phone`, `id_Supplier`) VALUES
(1, 'Michel', 'Goben', 'Japan', 'NS', 877447, NULL),
(2, 'Komi', 'Otami', 'Busen', 'JK', 944444, NULL),
(3, 'Bob', 'Garden', 'Canada', 'TY', 111447, 1),
(4, 'Komi', 'Bori', 'Kini', 'NK', 988871, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE IF NOT EXISTS `Supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` text NOT NULL,
  `contactname` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `phone` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`id`, `companyname`, `contactname`, `city`, `country`, `phone`, `fax`) VALUES
(1, 'Apple', 'Ringo', 'Japan', 'Kimi', 89999994, 89999994),
(2, 'Samsung', 'Bunski', 'Canada', 'LS', 113531, 1583),
(3, 'Samsung', 'Rumski', 'Canada', 'VS', 877877, 122574);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`id_Supplier`) REFERENCES `Supplier` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
