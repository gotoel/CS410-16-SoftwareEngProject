-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2016 at 02:01 PM
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
  `isPublished` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `start_date`, `start_time`, `end_date`, `end_time`, `summary`, `description`, `location`, `colorId`, `isPublished`) VALUES
(1, '2016-11-10', '10:00:00', '2016-11-10', '12:00:00', 'Pool Party', 'It''s a Pool Party', '999 Swimming Ave, Farmington CT 02352', 'Blue?', 1),
(2, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(3, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'DGASDGASDG', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(4, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'sdgsagds', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(5, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'agasgd', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(6, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Ggdag', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(7, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Goodasdgasdghed', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(8, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enoasdgpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(9, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enouasdgasdgasdpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(10, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(11, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Gooasdgasdgablished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(12, '2016-11-10', '10:00:00', '2016-11-10', '12:00:00', 'Pool Party', 'It''s a Pool Party', '999 Swimming Ave, Farmington CT 02352', 'Blue?', 0),
(13, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(14, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'DGASDGASDG', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(15, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'sdgsagds', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(16, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'agasgd', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(17, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Ggdag', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(18, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Goodasdgasdghed', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(19, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enoasdgpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(20, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enouasdgasdgasdpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(21, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(22, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Gooasdgasdgablished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(24, '2016-11-07', '10:00:00', '2016-11-07', '21:00:00', 'Testing Insert', 'Testing insert to DB from front UI', '123 Testing St, Testie TS, 12345', 'idk', 1),
(23, '2016-11-15', '07:00:00', '2016-11-15', '19:00:00', 'Test', 'Description', '829 Main St, City ST, 01011', 'idk', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
