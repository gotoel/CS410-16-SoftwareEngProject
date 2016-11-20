/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  gotoel
 * Created: Nov 5, 2016
 */

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `start_date`, `start_time`, `end_date`, `end_time`, `summary`, `description`, `location`, `colorId`, `isPublished`) VALUES
(1, '2016-11-10', '10:00:00', '2016-11-10', '12:00:00', 'Pool Party', 'It''s a Pool Party', '999 Swimming Ave, Farmington CT 02352', 'Blue?', 0),
(2, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(3, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'DGASDGASDG', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(4, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'sdgsagds', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(5, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'agasgd', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(6, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Ggdag', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(7, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Goodasdgasdghed', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(8, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enoasdgpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(9, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enouasdgasdgasdpublished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1),
(10, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Good Enough to be published', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 0),
(11, '2016-11-02', '07:00:00', '2016-11-02', '11:00:00', 'A Published Event', 'Gooasdgasdgablished', '3 Publication St, New Britain Ct, 06053', 'Still No Idea', 1);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `access_level` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `access_level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 4); /* default administrator account w/ username: admin, password: admin */

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;