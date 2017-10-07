-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 02:06 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vistara`
--

-- --------------------------------------------------------

--
-- Table structure for table `provisions`
--

CREATE TABLE `provisions` (
  `facility_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provisions`
--

INSERT INTO `provisions` (`facility_id`, `name`, `parent_id`, `rating`) VALUES
(101, 'Zara', 5, 0),
(102, 'Cafe Coffee Day', 8, 0),
(103, 'Forever 21', 5, 0),
(104, 'Golden Smoke', 1, 0),
(105, 'Tanishq', 5, 0),
(106, 'American Goose', 8, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `provisions`
--
ALTER TABLE `provisions`
  ADD PRIMARY KEY (`facility_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
