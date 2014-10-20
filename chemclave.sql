-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2014 at 01:16 PM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chemclave`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `college` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `college`, `email`, `phone_number`, `city`) VALUES
(2, 'aqel', 'aqel', 'Aqel Ahammad', 'aqel12a3@gmail.com', '9633229144', ''),
(5, 'asil', 'asil', 'asil', 'asil3@gmail.com', '2147483647', ''),
(11, 'events_core', 'a', 'My Name is Khan', 'aqel123sfd@gmail.com', '9176285068', ''),
(12, 'aqel', 'aqel', 'iit mad', 'aqel123@gmail.com', '34', 'adf'),
(13, 'aqel', 'aqel', 'iit mad', 'aqel123@gmail.com', '34', 'adf');

-- --------------------------------------------------------

--
-- Table structure for table `users_temp`
--

CREATE TABLE IF NOT EXISTS `users_temp` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `college` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `city` varchar(30) NOT NULL,
  `user_key` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `users_temp`
--

INSERT INTO `users_temp` (`id`, `name`, `password`, `college`, `email`, `phone_number`, `city`, `user_key`) VALUES
(2, 'aqel', 'aqel', 'Aqel Ahammad', 'aqel123@gmail.com', '9633229144', '', ''),
(5, 'asil', 'asil', 'asil', 'asil3@gmail.com', '2147483647', '', ''),
(11, 'events_core', 'a', 'My Name is Khan', 'aqel123@gmail.com', '9176285068', '', ''),
(12, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'fa', ''),
(13, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'fa', ''),
(14, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'fa', ''),
(15, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'fa', ''),
(16, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'fa', ''),
(17, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(18, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(19, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(20, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(21, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(22, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(23, 'aqel', 'aqel', 'ad', 'aqel123@gmail.com', '34', 'd', ''),
(24, 'aqel', 'aqel', 'iit', 'aqel123@gmail.com', '34', 'adf', ''),
(25, 'aqel', 'aqel', 'iit', 'aqel123@gmail.com', '34', 'adf', 'arDsz2ZO4y'),
(26, 'aqel', 'aqel', 'iit mad', 'aqel123@gmail.com', '34', 'adf', 'vzCEieYcqO'),
(27, 'aqel', 'aqel', 'iit mad', 'aqel123@gmail.com', '34', 'adf', 'E0ozUO4Pgv');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
