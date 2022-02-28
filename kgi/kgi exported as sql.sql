-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 05:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kgi_client`
--
CREATE DATABASE IF NOT EXISTS `kgi_client` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kgi_client`;

-- --------------------------------------------------------

--
-- Table structure for table `client_order_history`
--

CREATE TABLE `client_order_history` (
  `symbol` varchar(11) NOT NULL,
  `acc_no` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `settlement_currency` varchar(45) NOT NULL,
  `exchange` varchar(45) DEFAULT NULL,
  `rejection_message` varchar(45) DEFAULT NULL,
  `stage` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `placed_at` date DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `filled_qty` int(11) DEFAULT NULL,
  `average_price` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `exchange_order_id` int(11) NOT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `validity` varchar(45) NOT NULL,
  `order_action` varchar(45) DEFAULT NULL,
  `fis_order_no` int(11) DEFAULT NULL,
  `fis_exch_order_no` int(11) DEFAULT NULL,
  `tran_type` varchar(45) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `order_source` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `build` varchar(45) DEFAULT NULL,
  `primary_id` int(20) NOT NULL,
  `msg_seq_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_order_history`
--

INSERT INTO `client_order_history` (`symbol`, `acc_no`, `price`, `settlement_currency`, `exchange`, `rejection_message`, `stage`, `status`, `placed_at`, `qty`, `filled_qty`, `average_price`, `order_id`, `exchange_order_id`, `order_type`, `expiry_date`, `validity`, `order_action`, `fis_order_no`, `fis_exch_order_no`, `tran_type`, `updated_at`, `order_source`, `user_id`, `user_type`, `build`, `primary_id`, `msg_seq_no`) VALUES
('', '0', 0, '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0),
('ABC', '1234567', 999, '1000', 'exch1', 'reject1', 'open', 'stat1', '2021-07-01', 1, 1, 800, 12345, 1234, 'cash on delivery', '2022-07-01', '20221-02-20 ', 'ordr', 23456, 34567, 'upi', '2021-02-15', 'mnop', 12456, 'user1', 'build1', 20211129, 20211129),
('def', '80216', 899, '900', 'exch2', 'reject2', 'open', 'stat2', '2021-10-01', 1, 1, 800, 12367, 1235, 'cash on delivery', '2021-07-12', '2022-02-13', 'order2', 24689, 45678, 'upi', '2021-07-11', 'mnuo', 12459, 'user2', 'build2', 363163001, 80217),
('efg', '0080217', 890, '900', 'exch3', 'reject3', 'open', 'stat3', '2021-11-30', 2, 1, 500, 12398, 5676, 'cash on delivery', '2022-01-01', '2022-02-08', 'order3', 23451, 45678, 'upi', '2021-07-19', 'mnuuf', 12423, 'user3', 'build3', 363163001, 80219),
('ety', '5678', 459, '460', 'exch4', 'reject4', 'open', 'stat4', '2021-02-07', 2, 1, 600, 45679, 32567, 'cash on delivery', '2022-07-08', '2022-02-23', 'order4', 23450, 8767, 'upi', '2021-02-11', 'rtij', 8765, 'user4', 'build4', 20211120, 80219),
('sfse', '80217', 999, '900', 'exch5', 'reject5', 'open', 'stat5', '2021-05-07', 2, 1, 800, 67897, 86765, 'cash on delivery', '2022-07-08', '2022-02-13', 'order5', 45566, 34567, 'upi', '2021-07-01', 'fhgh', 56789, 'user5', 'build5', 20211129, 80219),
('new', '1500', 1500, 'exch5', 'reject5', 'open', 'stat6', '2021,03,14', '0000-00-00', 1, 1300, 23456, 76231, 0, '2021,05,05', '2021-09-09', 'order6', '56124', 9864, 0, '2021,09,17', '0000-00-00', 'order6', 45678, 'user6', 'build6', 23456, 23443);

-- --------------------------------------------------------

--
-- Table structure for table `client_order_log_history`
--

CREATE TABLE `client_order_log_history` (
  `symbol` varchar(11) NOT NULL,
  `acc_no` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `settlement_currency` varchar(45) NOT NULL,
  `exchange` varchar(45) DEFAULT NULL,
  `rejection_message` varchar(45) DEFAULT NULL,
  `stage` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `placed_at` date DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `filled_qty` int(11) DEFAULT NULL,
  `average_price` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `exchange_order_id` int(11) NOT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `validity` varchar(45) NOT NULL,
  `order_action` varchar(45) DEFAULT NULL,
  `fis_order_no` int(11) DEFAULT NULL,
  `fis_exch_order_no` int(11) DEFAULT NULL,
  `tran_type` varchar(45) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `order_source` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `build` varchar(45) DEFAULT NULL,
  `primary_id` int(20) NOT NULL,
  `msg_seq_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_order_log_history`
--

INSERT INTO `client_order_log_history` (`symbol`, `acc_no`, `price`, `settlement_currency`, `exchange`, `rejection_message`, `stage`, `status`, `placed_at`, `qty`, `filled_qty`, `average_price`, `order_id`, `exchange_order_id`, `order_type`, `expiry_date`, `validity`, `order_action`, `fis_order_no`, `fis_exch_order_no`, `tran_type`, `updated_at`, `order_source`, `user_id`, `user_type`, `build`, `primary_id`, `msg_seq_no`) VALUES
('efg', '0080217', 890, '900', 'exch3', 'reject3', 'open', 'stat3', '2021-11-30', 2, 1, 500, 12398, 5676, 'cash on delivery', '2022-01-01', '2022-02-08', 'order3', 23451, 45678, 'upi', '2021-07-19', 'mnuuf', 12423, 'user3', 'build3', 363163001, 80219);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_order_history`
--
ALTER TABLE `client_order_history`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
