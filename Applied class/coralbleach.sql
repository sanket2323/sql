SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coralbleach`
--

-- --------------------------------------------------------

--
-- Table structure for table `coral`
--

/*CREATE DATABASE Coralbleach;*/

CREATE TABLE IF NOT EXISTS `coral` (
  `coralcode` int(11) NOT NULL,
  `coralname` tinytext,
  `thermalthreshold` int(11) DEFAULT NULL,
  PRIMARY KEY (`coralcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coral`
--

INSERT INTO `coral` (`coralcode`, `coralname`, `thermalthreshold`) VALUES
(1, 'Mushroom (Actinodiscus) Corals', 20),
(2, 'Mushroom and Leather (Cladiella) Corals', 21),
(3, 'Star Polyps, Green Star Polyps and Daisy Polyps (Pachyclavularia)', 24),
(4, 'Sea Mat and Button Polyps (Palythoa)', 21),
(5, 'Finger Leather and Colt (Cladiella) Corals', 20),
(6, 'Sea Mat and Button Polyp (Protopalythoa) Corals', 21),
(7, 'Toadstool, Leather and Mushroom (Sarcophyton) Corals', 21),
(8, 'Zoanthid, Sea Mat and Button Polyps (Zoanthus)', 16),
(9, 'Lobed, Flat, and Open Brain (Lobophyllia) Corals', 20),
(10, 'Velvet (Montipora) Corals', 21),
(11, 'Sea Mat and Button Polyps (Palythoa)', 20),
(12, 'Finger Leather and Colt (Cladiella) Corals', 19);

-- --------------------------------------------------------

--
-- Table structure for table `coralsampling`
--

CREATE TABLE IF NOT EXISTS `coralsampling` (
  `sampleno` int(11) NOT NULL DEFAULT '0',
  `reefname` varchar(30) DEFAULT NULL,
  `coralcode` int(11) DEFAULT NULL,
  `bleachpercent` int(11) DEFAULT NULL,
  `dateofsampling` date DEFAULT NULL,
  PRIMARY KEY (`sampleno`),
  KEY `coralcode` (`coralcode`),
  KEY `reefname` (`reefname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coralsampling`
--

INSERT INTO `coralsampling` (`sampleno`, `reefname`, `coralcode`, `bleachpercent`, `dateofsampling`) VALUES
(26, 'Keppel-Halfway Is.', 1, 21, '2008-07-29'),
(27, 'Keppel-Halfway Is.', 1, 23, '2008-06-17'),
(28, 'Keppel-Halfway Is.', 1, 13, '2008-02-12'),
(29, 'Wreck Is.', 1, 14, '2008-08-13'),
(30, 'Wreck Is.', 1, 11, '2008-04-08'),
(31, 'Wreck Is.', 1, 1, '2007-11-06'),
(32, 'Heron Is. (south)', 1, 22, '2008-08-05'),
(33, 'Heron Is. (south)', 1, 11, '2007-10-09'),
(34, 'Heron Is. (south)', 1, 22, '2008-08-11'),
(35, 'Martin', 1, 21, '2008-06-11'),
(36, 'Martin', 1, 11, '2008-04-08'),
(37, 'Keppel-Halfway Is.', 2, 21, '2008-08-13'),
(38, 'Keppel-Halfway Is.', 2, 20, '2008-07-08'),
(39, 'Keppel-Halfway Is.', 2, 11, '2008-08-11'),
(40, 'Wreck Is.', 2, 23, '2008-05-13'),
(41, 'Wreck Is.', 2, 34, '2008-02-05'),
(42, 'Wreck Is.', 2, 21, '2008-02-06'),
(43, 'Heron Is. (south)', 2, 21, '2007-10-02'),
(44, 'Heron Is. (south)', 2, 21, '2008-08-13'),
(45, 'Heron Is. (south)', 2, 32, '2008-06-10'),
(46, 'Martin', 2, 56, '2008-07-31'),
(47, 'Martin', 2, 11, '2008-06-03'),
(48, 'Keppel-Halfway Is.', 3, 21, '2008-08-06'),
(49, 'Keppel-Halfway Is.', 3, 11, '2008-06-11'),
(51, 'Wreck Is.', 3, 34, '2008-08-07'),
(53, 'Wreck Is.', 3, 21, '2008-05-21'),
(54, 'Heron Is. (south)', 3, 44, '2008-08-13'),
(55, 'Heron Is. (south)', 3, 11, '2008-06-10'),
(57, 'Martin', 3, 32, '2008-08-11'),
(58, 'Martin', 3, 1, '2008-06-11'),
(64, 'Linnet', 3, 44, '2008-06-19'),
(65, 'Linnet', 3, 22, '2008-06-10'),
(66, 'Keppel-Halfway Is.', 4, 41, '2008-08-06'),
(67, 'Keppel-Halfway Is.', 4, 31, '2008-06-11'),
(68, 'Wreck Is.', 4, 33, '2008-08-07'),
(69, 'Wreck Is.', 4, 55, '2008-05-21'),
(70, 'Heron Is. (south)', 4, 45, '2008-08-13'),
(71, 'Heron Is. (south)', 4, 21, '2008-06-10'),
(72, 'Martin', 4, 78, '2008-08-11'),
(73, 'Martin', 4, 11, '2008-06-11'),
(74, 'Linnet', 4, 78, '2008-06-19'),
(75, 'Linnet', 4, 56, '2008-06-10'),
(76, 'Keppel-Halfway Is.', 5, 31, '2008-07-29'),
(77, 'Keppel-Halfway Is.', 5, 33, '2008-06-17'),
(78, 'Keppel-Halfway Is.', 5, 1, '2008-02-12'),
(79, 'Wreck Is.', 5, 45, '2008-08-13'),
(80, 'Wreck Is.', 5, 23, '2008-04-08'),
(81, 'Wreck Is.', 5, 14, '2007-11-06'),
(82, 'Heron Is. (south)', 5, 24, '2008-08-05'),
(83, 'Heron Is. (south)', 5, 56, '2007-10-09'),
(84, 'Heron Is. (south)', 5, 22, '2008-08-11'),
(85, 'Martin', 5, 11, '2008-06-11'),
(86, 'Martin', 5, 22, '2008-04-08'),
(87, 'Keppel-Halfway Is.', 6, 33, '2008-07-29'),
(88, 'Keppel-Halfway Is.', 6, 11, '2008-06-17'),
(89, 'Keppel-Halfway Is.', 6, 1, '2008-02-12'),
(90, 'Wreck Is.', 6, 45, '2008-08-13'),
(91, 'Wreck Is.', 6, 11, '2008-04-08'),
(92, 'Wreck Is.', 6, 1, '2007-11-06'),
(93, 'Heron Is. (south)', 6, 44, '2008-08-05'),
(94, 'Heron Is. (south)', 6, 22, '2007-10-09'),
(95, 'Heron Is. (south)', 6, 11, '2008-08-11'),
(96, 'Martin', 6, 67, '2008-06-11'),
(97, 'Martin', 6, 13, '2008-04-08'),
(98, 'Keppel-Halfway Is.', 7, 45, '2008-07-29'),
(99, 'Keppel-Halfway Is.', 7, 33, '2008-06-17'),
(100, 'Keppel-Halfway Is.', 7, 12, '2008-02-12'),
(101, 'Wreck Is.', 7, 56, '2008-08-13'),
(102, 'Wreck Is.', 7, 34, '2008-04-08'),
(103, 'Wreck Is.', 7, 13, '2007-11-06'),
(104, 'Heron Is. (south)', 7, 34, '2008-08-05'),
(105, 'Heron Is. (south)', 7, 67, '2007-10-09'),
(106, 'Heron Is. (south)', 7, 33, '2008-08-11'),
(107, 'Martin', 7, 21, '2008-06-11'),
(108, 'Martin', 7, 11, '2008-04-08'),
(109, 'Keppel-Halfway Is.', 8, 55, '2008-07-29'),
(110, 'Keppel-Halfway Is.', 8, 43, '2008-06-17'),
(111, 'Keppel-Halfway Is.', 8, 32, '2008-02-12'),
(112, 'Wreck Is.', 8, 13, '2008-08-13'),
(113, 'Wreck Is.', 8, 45, '2008-04-08'),
(114, 'Wreck Is.', 8, 24, '2007-11-06'),
(115, 'Heron Is. (south)', 8, 13, '2008-08-05'),
(116, 'Heron Is. (south)', 8, 67, '2007-10-09'),
(117, 'Heron Is. (south)', 8, 34, '2008-08-11'),
(118, 'Martin', 8, 12, '2008-06-11'),
(119, 'Martin', 8, 34, '2008-04-08'),
(120, 'Keppel-Halfway Is.', 9, 45, '2008-07-29'),
(121, 'Keppel-Halfway Is.', 9, 67, '2008-06-17'),
(122, 'Keppel-Halfway Is.', 9, 23, '2008-02-12'),
(123, 'Wreck Is.', 9, 32, '2008-08-13'),
(124, 'Wreck Is.', 9, 1, '2008-04-08'),
(125, 'Wreck Is.', 9, 45, '2007-11-06'),
(126, 'Heron Is. (south)', 9, 32, '2008-08-05'),
(127, 'Heron Is. (south)', 9, 11, '2007-10-09'),
(128, 'Heron Is. (south)', 9, 11, '2008-08-11'),
(129, 'Martin', 9, 34, '2008-06-11'),
(130, 'Martin', 9, 22, '2008-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `reef`
--

CREATE TABLE IF NOT EXISTS `reef` (
  `reefname` varchar(20) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `2006_bleachedarea` int(11) DEFAULT NULL,
  `summer_maximum_monthly_mean_temperature` int(11) DEFAULT NULL,
  PRIMARY KEY (`reefname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reef`
--

INSERT INTO `reef` (`reefname`, `latitude`, `longitude`, `2006_bleachedarea`, `summer_maximum_monthly_mean_temperature`) VALUES
('21-529 Reef', -21.87, 152.19, 21, 19),
('Carter', -14.53, 145.59, 1, 28),
('Chinaman Reef', -22, 152.67, 32, 21),
('Decapolis', -14.85, 145.27, 1, 20),
('Gannet Cay', -21.98, 152.48, 27, 24),
('Heron Is. (north)', -23.43, 151.95, 5, 21),
('Heron Is. (south)', -23.46, 151.93, 12, 24),
('Keppel-Halfway Is.', -23.22, 150.96, 95, 21),
('Keppel-Middle Is.', -23.16, 150.92, 81, 21),
('Keppel-North Is.', -23.09, 150.91, 77, 23),
('Linnet', -14.79, 145.35, 1, 19),
('Lizard Is.', -14.69, 145.47, 3, 21),
('Low Islets', -16.39, 145.57, 5, 22),
('Macgillivray', -14.65, 145.49, 1, 18),
('Martin', -14.76, 145.38, 5, 23),
('North Direction', -14.75, 145.52, 1, 17),
('One Tree Is.', -23.49, 152.09, 14, 20),
('Rib', -18.47, 146.88, 1, 25),
('Wreck Is.', -23.32, 151.98, 16, 21);

-- --------------------------------------------------------

--
-- Table structure for table `reeftemp`
--

CREATE TABLE IF NOT EXISTS `reeftemp` (
  `reefname` varchar(20) NOT NULL,
  `temperaturereading` int(11) DEFAULT NULL,
  `dateofreading` date NOT NULL DEFAULT '0000/00/00',
  PRIMARY KEY (`reefname`,`dateofreading`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reeftemp`
--

INSERT INTO `reeftemp` (`reefname`, `temperaturereading`, `dateofreading`) VALUES
('21-529 Reef', 23, '2008-07-09'),
('21-529 Reef', 22, '2008-07-19'),
('21-529 Reef', 21, '2008-08-05'),
('21-529 Reef', 21, '2008-08-14'),
('21-529 Reef', 21, '2008-08-19'),
('21-529 Reef', 24, '2008-08-27'),
('Carter', 22, '2008-07-15'),
('Carter', 25, '2008-08-13'),
('Carter', 24, '2008-08-20'),
('Chinaman Reef', 21, '2008-08-21'),
('Chinaman Reef', 31, '2008-08-28'),
('Chinaman Reef', 25, '2008-08-29'),
('Decapolis', 17, '2008-06-05'),
('Decapolis', 21, '2008-08-21'),
('Gannet Cay', 22, '2008-04-30'),
('Gannet Cay', 21, '2008-08-07'),
('Heron Is. (north)', 23, '2008-08-12'),
('Heron Is. (north)', 21, '2008-08-14'),
('Heron Is. (south)', 21, '2008-07-15'),
('Heron Is. (south)', 24, '2008-08-05'),
('Keppel-Halfway Is.', 16, '2008-06-04'),
('Keppel-Halfway Is.', 21, '2008-08-07'),
('Keppel-Middle Is.', 24, '2008-08-12'),
('Keppel-Middle Is.', 21, '2008-08-30'),
('Keppel-North Is.', 31, '2008-07-15'),
('Keppel-North Is.', 21, '2008-08-12'),
('Linnet', 21, '2008-06-03'),
('Linnet', 23, '2008-06-22'),
('Lizard Is.', 21, '2008-08-14'),
('Lizard Is.', 23, '2008-08-27'),
('Low Islets', 23, '2008-07-08'),
('Low Islets', 21, '2008-08-20'),
('Macgillivray', 19, '2008-06-12'),
('Macgillivray', 16, '2008-07-09'),
('Martin', 22, '2008-08-12'),
('Martin', 21, '2008-08-13');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coralsampling`
--
ALTER TABLE `coralsampling`
  ADD CONSTRAINT `coralsampling_ibfk_2` FOREIGN KEY (`reefname`) REFERENCES `reef` (`reefname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coralsampling_ibfk_1` FOREIGN KEY (`coralcode`) REFERENCES `coral` (`coralcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reeftemp`
--
ALTER TABLE `reeftemp`
  ADD CONSTRAINT `reeftemp_ibfk_1` FOREIGN KEY (`reefname`) REFERENCES `reef` (`reefname`) ON DELETE CASCADE ON UPDATE CASCADE;
