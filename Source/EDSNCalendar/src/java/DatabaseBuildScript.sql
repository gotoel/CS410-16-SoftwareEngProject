-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2016 at 10:54 PM
-- Server version: 5.5.49-0+deb8u1
-- PHP Version: 5.6.27-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs410`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
`id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `summary` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `location` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `colorId` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `isPublished` tinyint(1) NOT NULL,
  `Category` varchar(100) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `start_date`, `start_time`, `end_date`, `end_time`, `summary`, `description`, `location`, `colorId`, `isPublished`, `Category`) VALUES
(1, '2016-11-10', '10:00:00', '2016-11-10', '12:00:00', 'Pool Party', 'It''s a Pool Party', '999 Swimming Ave, Farmington CT 02352', 'Blue?', 0, 'party'),
(2, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1, 'ahh'),
(3, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'DGASDGASDG', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1, NULL),
(4, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'sdgsagds', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1, NULL),
(5, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'agasgd', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0, NULL),
(6, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Ggdag', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0, NULL),
(7, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Goodasdgasdghed', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0, NULL),
(8, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enoasdgpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0, NULL),
(9, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enouasdgasdgasdpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1, NULL),
(10, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0, NULL),
(11, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Gooasdgasdgablished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `access_level` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `access_level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
