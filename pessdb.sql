-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 06:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(10, 'QX1234', '2021-03-17 17:43:13', '2021-05-27 16:21:51', '2021-05-19 14:51:31'),
(11, 'QX1234', '2021-03-17 18:25:44', '2021-05-27 16:21:51', '2021-05-19 14:51:31'),
(12, 'QX1234', '2021-05-19 14:55:32', '2021-05-27 16:21:51', '2021-05-19 15:06:40'),
(12, 'QX2222G', '2014-05-29 10:51:15', '0000-00-00 00:00:00', '2014-05-29 10:53:43'),
(12, 'QX4321R', '2021-05-19 14:55:32', '2021-06-01 22:52:35', '2021-05-27 16:25:56'),
(13, 'QX1234', '2021-05-19 15:09:44', '2021-05-27 16:21:51', '2021-05-20 14:06:17'),
(13, 'QX2222G', '2014-05-29 10:59:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'QX1234', '2021-05-20 14:06:30', '2021-05-27 16:21:51', '2021-05-20 14:59:27'),
(14, 'QX4444P', '2014-05-29 11:10:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'QX1234', '2021-05-20 14:59:42', '2021-05-27 16:21:51', '2021-05-25 15:52:33'),
(16, 'QX1234', '2021-05-27 14:31:48', '2021-05-27 16:21:51', '2021-05-27 14:32:30'),
(17, 'QX1234', '2021-05-27 14:54:38', '2021-05-27 16:21:51', '2021-05-27 15:49:17'),
(18, 'QX4444P', '2021-05-31 04:08:27', '2021-06-01 22:53:40', '2021-06-01 23:06:15'),
(19, 'QX4321R', '2021-05-31 04:08:34', '2021-06-01 22:52:35', '2021-05-31 04:08:42'),
(20, 'QX4321R', '2021-06-01 19:53:12', '2021-06-01 22:52:35', '2021-06-01 22:56:52'),
(21, 'QX1234', '2021-06-01 19:53:24', '2021-06-01 22:53:25', '2021-06-01 22:53:45'),
(22, 'QX4444P', '2021-06-01 23:24:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(6, 'PETER LEOW', '81234567', '010', 'Junction of North Bridge Road and Middle Rd', 'A bus collided with a Taxi 2 injuries', '1', '2021-02-25 15:38:34'),
(8, 'qwerty', '12345678 ', '030', 'cck', 'qwerty', '3', '2021-02-25 15:38:34'),
(9, 'frfsfsf', '8686 8668', '060', 'Singapore', 'bleehhehehh', '1', '2021-03-17 17:41:43'),
(10, 'frfsfsf', '8686 8668', '060', 'Singapore', 'hehh', '2', '2021-03-17 17:43:13'),
(11, 'Ali Baba', '86868668', '010', 'Singapore', 'brrrrrrrr', '3', '2021-03-17 18:25:44'),
(12, 'frfsfsf', '8686 8668', '010', 'Singapore', 'grse', '3', '2021-05-19 14:55:32'),
(13, 'frfsfsf', '8686 8668', '010', 'Singapore', '2e2', '3', '2021-05-19 15:09:44'),
(14, 'frfsfsf', '8686 8668', '010', 'Singapore', '6', '3', '2021-05-20 14:06:30'),
(15, 'frfsfsf', '8686 8668', '040', 'Singapore', 'e', '3', '2021-05-20 14:59:42'),
(16, 'Ali Baba', '86868668', '010', 'Singapore', '5', '3', '2021-05-27 14:31:48'),
(17, 'frfsfsf', '8686 8668', '020', 'Singapore', 'x', '3', '2021-05-27 14:54:38'),
(18, 'frfsfsf', '8686 8668', '010', 'Singapore', 'w', '3', '2021-05-31 04:08:27'),
(19, 'e', 'e', '010', 'e', 'e', '2', '2021-05-31 04:08:34'),
(20, 'Ali Baba', '8686 8668', '010', 'dd', 'wqw', '3', '2021-06-01 19:53:12'),
(21, 'frfsfsf', '86868668', '010', 'e', 'w', '2', '2021-06-01 19:53:24'),
(22, 'Ali Baba', '86868668', '010', 'e', 'w', '2', '2021-06-01 23:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed'),
('4', 'Duplicate');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1234', '5'),
('QX4321R', '3'),
('QX4444P', '2'),
('QX45545', '1'),
('QX9999H', '4');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'On-site'),
('5', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
