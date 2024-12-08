-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 10:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `create_acc`
--

CREATE TABLE `create_acc` (
  `acc_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `account_no` bigint(100) NOT NULL,
  `account_pin` int(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `amount_deposit` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `create_acc`
--

INSERT INTO `create_acc` (`acc_id`, `name`, `dob`, `nationality`, `gender`, `address`, `account_no`, `account_pin`, `account_type`, `amount_deposit`) VALUES
(1, 'layla', '2005-11-10', 'visaya', 'MALE', 'koronadal', 9898989898, 1123, 'NRI Account', 17048),
(2, 'naruto', '2004-11-18', 'uzumaki clan', 'MALE', 'konoha', 9008769876, 9871, 'Savings Account', 14111),
(3, 'yuko', '2005-11-23', 'filipino', 'MALE', 'koronadal', 9887655443, 2345, 'NRI Account', 6000),
(4, 'rey mark lego', '2004-02-11', 'Filipino', 'Male', 'antog, sultan codarat', 998765432, 1234, 'NRI Account', 10000),
(5, 'john breave caras', '2004-12-08', 'Filipino', 'Male', 'antong, sultan', 970913637, 2231, 'NRI Account', 10600),
(6, 'mark catabay', '2004-09-15', 'Filipino', 'Male', 'baryo 2, korondal city', 9988776655, 4321, 'NRI Account', 5000),
(7, 'rock lee', '2004-12-07', 'ambot', 'Male', 'kunoha', 97091363773455, 1122, 'Joint Account', 120000),
(8, 'lego', '2004-12-07', 'filipino', 'Male', 'koronadal', 909989887, 2231, 'NRI Account', 12000),
(9, 'naruto', '2024-12-06', 'wdfce', 'MALE', 'dc3dc', 1234567898, 1124, 'Savings Account', 12000),
(10, 'francs', '2024-12-04', 'filipino', 'Male', 'efegrrtg', 8888888888, 1234, 'Salary Account', 700),
(11, 'Franis', '2024-12-06', 'ad', 'Male', 'asdsad', 6767676767, 7777, 'Joint Account', 500),
(12, 'sdvwd', '2024-12-12', 'sdvs', 'Male', 'sdv', 1111111111, 8877, 'Savings Account', 77788);

-- --------------------------------------------------------

--
-- Table structure for table `deposit_histo`
--

CREATE TABLE `deposit_histo` (
  `depo_id` int(11) NOT NULL,
  `account_no` bigint(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount_depo` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit_histo`
--

INSERT INTO `deposit_histo` (`depo_id`, `account_no`, `date`, `time`, `amount_depo`) VALUES
(1, 9898989898, '2024-11-27', '00:00:00', 500),
(3, 9887655443, '2024-11-27', '00:00:00', 1000),
(4, 9898989898, '2024-11-28', '00:00:00', 111),
(5, 9898989898, '2024-11-28', '00:00:00', 3000),
(6, 9898989898, '2024-11-30', '00:00:00', 5000),
(7, 9898989898, '2024-12-02', '00:00:00', 300),
(8, 9898989898, '2024-12-02', '00:00:00', 10000),
(9, 9898989898, '2024-12-02', '00:00:00', 1123),
(10, 9898989898, '2024-12-02', '22:35:00', 222),
(11, 9898989898, '2024-12-03', '21:02:47', 5000),
(12, 9898989898, '2024-12-03', '21:08:50', 1123),
(13, 9898989898, '2024-12-03', '21:08:50', 1123),
(14, 9898989898, '2024-12-03', '21:12:59', 1123),
(15, 9898989898, '2024-12-03', '21:13:46', 500),
(16, 9898989898, '2024-12-03', '22:48:26', 2000),
(17, 9898989898, '2024-12-04', '08:25:53', 1111),
(18, 9898989898, '2024-12-04', '08:50:56', 5000),
(19, 9898989898, '2024-12-04', '08:56:39', 1222),
(20, 9898989898, '2024-12-04', '09:16:18', 777),
(21, 9898989898, '2024-12-04', '11:14:30', 333),
(22, 9898989898, '2024-12-04', '11:38:11', 222),
(23, 9898989898, '2024-12-04', '12:17:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_histo`
--

CREATE TABLE `transfer_histo` (
  `trans_id` int(11) NOT NULL,
  `account_no` bigint(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount_trans` bigint(100) NOT NULL,
  `credit_amount` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_histo`
--

INSERT INTO `transfer_histo` (`trans_id`, `account_no`, `date`, `time`, `amount_trans`, `credit_amount`) VALUES
(2, 9887655443, '2024-11-27', '00:00:00', 5000, 9898989898),
(3, 9008769876, '2024-11-27', '00:00:00', 5000, 9887655443),
(4, 9898989898, '2024-11-28', '00:00:00', 500, 9008769876),
(5, 9008769876, '2024-11-30', '00:00:00', 1000, 9898989898),
(6, 9898989898, '2024-12-02', '00:00:00', 5000, 9008769876),
(7, 9008769876, '2024-12-02', '23:36:47', 500, 9898989898),
(8, 9898989898, '2024-12-03', '22:45:23', 1000, 9887655443),
(9, 9898989898, '2024-12-03', '22:49:23', 5000, 9008769876),
(10, 9898989898, '2024-12-04', '08:47:23', 600, 970913637),
(11, 9898989898, '2024-12-04', '11:16:45', 111, 9008769876),
(12, 9898989898, '2024-12-04', '12:25:01', 500, 8888888888);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_histo`
--

CREATE TABLE `withdraw_histo` (
  `withdraw_id` int(11) NOT NULL,
  `account_no` bigint(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount_withdraw` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_histo`
--

INSERT INTO `withdraw_histo` (`withdraw_id`, `account_no`, `date`, `time`, `amount_withdraw`) VALUES
(1, 9898989898, '2024-11-27', '00:00:00', 399),
(3, 9887655443, '2024-11-27', '00:00:00', 5000),
(4, 9898989898, '2024-11-28', '00:00:00', 500),
(5, 9898989898, '2024-11-30', '00:00:00', 5000),
(6, 9898989898, '2024-12-02', '00:00:00', 2000),
(7, 9898989898, '2024-12-02', '23:34:49', 913),
(8, 9898989898, '2024-12-03', '21:08:50', 1123),
(9, 9898989898, '2024-12-03', '21:16:17', 1123),
(10, 9898989898, '2024-12-03', '21:17:07', 1123),
(11, 9898989898, '2024-12-03', '22:42:34', 1232),
(12, 9898989898, '2024-12-03', '22:48:50', 5768),
(13, 9898989898, '2024-12-04', '07:25:12', 50),
(14, 9898989898, '2024-12-04', '07:25:12', 11),
(15, 9898989898, '2024-12-04', '08:49:08', 4000),
(16, 9898989898, '2024-12-04', '11:16:21', 222),
(17, 9898989898, '2024-12-04', '11:16:21', 1123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_acc`
--
ALTER TABLE `create_acc`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `deposit_histo`
--
ALTER TABLE `deposit_histo`
  ADD PRIMARY KEY (`depo_id`);

--
-- Indexes for table `transfer_histo`
--
ALTER TABLE `transfer_histo`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `withdraw_histo`
--
ALTER TABLE `withdraw_histo`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_acc`
--
ALTER TABLE `create_acc`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deposit_histo`
--
ALTER TABLE `deposit_histo`
  MODIFY `depo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transfer_histo`
--
ALTER TABLE `transfer_histo`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `withdraw_histo`
--
ALTER TABLE `withdraw_histo`
  MODIFY `withdraw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
