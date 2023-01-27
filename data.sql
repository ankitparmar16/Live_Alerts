-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 01:23 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `beach_alerts`
--

CREATE TABLE `beach_alerts` (
  `alert_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `latitude` varchar(16) NOT NULL,
  `longitude` varchar(16) NOT NULL,
  `isRescued` varchar(10) NOT NULL DEFAULT 'No',
  `remarks` varchar(150) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beach_alerts`
--

INSERT INTO `beach_alerts` (`alert_id`, `user_id`, `timestamp`, `latitude`, `longitude`, `isRescued`, `remarks`, `ip`) VALUES
(1, 0, '2023-01-26 08:59:44', '77.45325', '22.45341', 'No', 'Emergency required!', '43.241.144.103'),
(2, 1, '2023-01-09 21:51:26', '34.46564', '56.5756', 'No', 'Need help!', '67.212.93.111'),
(3, 56, '2023-01-11 06:56:14', '56.4545', '98.1223', 'No', 'Help needed, fast', '78.220.99.122'),
(4, 23, '2023-01-11 23:04:07', '67.645', '89.4343', 'No', 'Help needed, fast', '56.134.56.210'),
(5, 1, '2023-01-10 21:51:26', '78.34343', '52.1243', 'No', 'Emergency!', '67.212.93.111'),
(6, 13, '2023-01-13 02:40:15', '89.5634', '23.2546', 'No', 'Need an emergency!', '78.220.99.122'),
(7, 21, '2023-01-20 08:59:44', '89.452', '23.567', 'No', 'Emergency required!', '43.245.21.101');

-- --------------------------------------------------------

--
-- Table structure for table `beach_users`
--

CREATE TABLE `beach_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `weight` int(11) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beach_alerts`
--
ALTER TABLE `beach_alerts`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `beach_users`
--
ALTER TABLE `beach_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beach_alerts`
--
ALTER TABLE `beach_alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `beach_users`
--
ALTER TABLE `beach_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
