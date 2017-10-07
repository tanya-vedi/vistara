-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2017 at 01:36 PM
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
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `name` varchar(19) NOT NULL,
  `min_time` varchar(100) NOT NULL,
  `max_time` varchar(100) NOT NULL,
  `nearest_gate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`name`, `min_time`, `max_time`, `nearest_gate`) VALUES
('escape lounge', '60', '360 ', 5),
('prayer room', '30', '45', 4),
('cash machine', '10', '15', 8),
('currency exchange', '30', '60', 2),
('family facility', '10', '360', 7),
('info desk', '10', '60', 1),
('meeting room', '20', '60', 12);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_table`
--

CREATE TABLE `passenger_table` (
  `flight` varchar(10) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `flight_time` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gate_number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger_table`
--

INSERT INTO `passenger_table` (`flight`, `check_in`, `flight_time`, `name`, `gate_number`) VALUES
('1100876', '09:00, 09-10-17', '10:00', 'Anushka', 10),
('1100987', '07:00, 08-10-17 ', '09:00', 'Tanya', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passenger_table`
--
ALTER TABLE `passenger_table`
  ADD PRIMARY KEY (`flight`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
