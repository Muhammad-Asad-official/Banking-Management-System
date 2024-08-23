-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 12:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `password` varchar(6) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `account_type` enum('Current','Saving') NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `address` varchar(200) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `balance` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `account_no`, `password`, `phone_no`, `account_type`, `gender`, `address`, `nationality`, `date_of_birth`, `balance`) VALUES
(1, 'al', '161891', '1271', 'al', 'Current', 'Male', 'ak', 'al', '2024-07-03 00:00:00', '980.0'),
(2, 'Ali', '904001', '1921', 'pap', 'Current', 'Male', 'apkcklasc nmasnmc ', 'Pakistan', '2024-07-01 00:00:00', '241.0'),
(3, 'test', '723141', '5391', '2346uio', 'Current', 'Male', 'ertyuk', 'sdgm', '2024-07-04 00:00:00', '10'),
(4, 'Muhammad Asad', '679061', '7921', '12344', 'Current', 'Male', '123 streat', 'Pakistan', '2024-10-11 00:00:00', '85.0'),
(5, 'Umer', '852011', '7101', '1234567890', 'Saving', 'Male', 'streat 4 , Punjab, Pakistan', 'Pakistani', '2000-08-01 00:00:00', '900.0');

-- --------------------------------------------------------

--
-- Table structure for table `users_transactions`
--

CREATE TABLE `users_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `to_name` varchar(100) NOT NULL,
  `to_ac` varchar(30) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `from_ac` varchar(30) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `ammount` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_transactions`
--

INSERT INTO `users_transactions` (`id`, `user_id`, `to_name`, `to_ac`, `payment_type`, `from_ac`, `from_name`, `date`, `ammount`) VALUES
(1, 161891, 'al', '161891', 'Account Creation time', 'System', 'System', '2024-07-07 13:07:53', '30'),
(2, 161891, '161891', 'ai', 'db', 'db', 'db', '2024-07-07 15:31:07', '100'),
(3, 161891, '161891', 'ai', 'db', 'db', 'db', '2024-07-07 15:31:07', '100'),
(4, 161891, 'al', '161891', 'Deposit', '', '', '2024-07-07 21:10:47', '10'),
(5, 161891, 'al', '161891', 'Deposit', '', '', '2024-07-07 21:14:39', '100'),
(6, 161891, 'al', '161891', 'Deposit', '', '', '2024-07-07 21:17:00', '50'),
(7, 161891, 'al', '161891', 'Deposit', '', '', '2024-07-15 19:01:53', '20'),
(8, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-15 20:34:27', '50'),
(9, 904001, 'Ali', '904001', 'Account Creation time', 'System', 'System', '2024-07-15 21:33:45', '0'),
(10, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-16 18:34:20', '20'),
(11, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-16 18:36:28', '20'),
(12, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-16 18:37:52', '20'),
(13, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-16 18:40:03', '20'),
(14, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-16 18:43:01', '20'),
(15, 161891, 'Ali', '904001', 'Withdraw', '161891', 'al', '2024-07-16 18:46:12', '20'),
(16, 161891, 'Ali', '904001', 'Withdraw', '161891', 'al', '2024-07-16 18:47:52', '22'),
(17, 161891, 'al', '161891', 'Deposit', '', '', '2024-07-16 18:54:49', '100'),
(18, 161891, 'al', '161891', 'Withdraw', '', '', '2024-07-16 18:55:53', '8'),
(19, 161891, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 18:57:37', '10'),
(20, 161891, '', '', 'Withdraw', '161891', 'al', '2024-07-16 19:07:52', '10'),
(21, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 19:08:10', '2'),
(22, 161891, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:08:28', '10'),
(23, 161891, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:12:23', '8'),
(24, 161891, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:15:40', '10'),
(25, 904001, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:15:40', '10'),
(26, 161891, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:16:37', '5'),
(27, 904001, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:16:37', '5'),
(28, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 19:17:08', '100'),
(29, 161891, '', '', 'Withdraw', '161891', 'al', '2024-07-16 19:17:46', '5'),
(30, 161891, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:22:54', '2'),
(31, 904001, 'Ali', '904001', 'Transffer', '161891', 'al', '2024-07-16 19:22:54', '2'),
(32, 161891, 'Ali', '904001', 'Transfer', '161891', 'al', '2024-07-16 19:27:09', '1'),
(33, 904001, 'Ali', '904001', 'Received', '161891', 'al', '2024-07-16 19:27:09', '1'),
(34, 904001, 'Ali', '904001', 'Received', '161891', 'al', '2024-07-16 19:30:35', '1'),
(35, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 19:49:30', '1000'),
(36, 161891, '', '', 'Withdraw', '161891', 'al', '2024-07-16 19:50:04', '1'),
(37, 161891, 'Ali', '904001', 'Transfer', '161891', 'al', '2024-07-16 19:50:19', '10'),
(38, 904001, 'Ali', '904001', 'Received', '161891', 'al', '2024-07-16 19:50:19', '10'),
(39, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 19:52:25', '1000'),
(40, 161891, '', '', 'Withdraw', '161891', 'al', '2024-07-16 19:52:49', '1'),
(41, 161891, 'Ali', '904001', 'Transfer', '161891', 'al', '2024-07-16 19:53:19', '10'),
(42, 904001, 'Ali', '904001', 'Received', '161891', 'al', '2024-07-16 19:53:19', '10'),
(43, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 19:54:21', '1'),
(44, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 19:54:38', '100'),
(45, 161891, 'Ali', '904001', 'Transfer', '161891', 'al', '2024-07-16 19:55:01', '1'),
(46, 904001, 'Ali', '904001', 'Received', '161891', 'al', '2024-07-16 19:55:01', '1'),
(47, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-16 20:01:27', '1000'),
(48, 723141, 'test', '723141', 'Account Creation time', 'System', 'System', '2024-07-16 20:09:04', '10'),
(49, 679061, 'Asad', '679061', 'Account Creation time', 'System', 'System', '2024-07-28 08:54:42', '100'),
(50, 679061, 'Muhammad Asad', '679061', 'Deposit', 'System', 'System', '2024-07-28 09:03:22', '10'),
(51, 679061, '', '', 'Withdraw', '679061', 'Muhammad Asad', '2024-07-28 09:03:40', '5'),
(52, 679061, '', '', 'Withdraw', '679061', 'Muhammad Asad', '2024-07-28 09:04:11', '5'),
(53, 679061, 'Ali', '904001', 'Transfer', '679061', 'Muhammad Asad', '2024-07-28 09:04:58', '5'),
(54, 904001, 'Ali', '904001', 'Received', '679061', 'Muhammad Asad', '2024-07-28 09:04:58', '5'),
(55, 679061, 'Ali', '904001', 'Transfer', '679061', 'Muhammad Asad', '2024-07-28 09:06:14', '5'),
(56, 904001, 'Ali', '904001', 'Received', '679061', 'Muhammad Asad', '2024-07-28 09:06:14', '5'),
(57, 679061, '', '', 'Withdraw', '679061', 'Muhammad Asad', '2024-07-28 09:07:37', '5'),
(58, 679061, 'Muhammad Asad', '679061', 'Deposit', 'System', 'System', '2024-07-28 09:07:49', '20'),
(59, 679061, 'Ali', '904001', 'Transfer', '679061', 'Muhammad Asad', '2024-07-28 09:08:08', '10'),
(60, 904001, 'Ali', '904001', 'Received', '679061', 'Muhammad Asad', '2024-07-28 09:08:08', '10'),
(61, 904001, 'Muhammad Asad', '679061', 'Transfer', '904001', 'Ali', '2024-07-28 09:14:59', '5'),
(62, 679061, 'Muhammad Asad', '679061', 'Received', '904001', 'Ali', '2024-07-28 09:14:59', '5'),
(63, 904001, 'Ali', '904001', 'Deposit', 'System', 'System', '2024-07-28 09:15:28', '15'),
(64, 904001, '', '', 'Withdraw', '904001', 'Ali', '2024-07-28 09:15:37', '5'),
(65, 904001, 'Muhammad Asad', '679061', 'Transfer', '904001', 'Ali', '2024-07-28 09:16:03', '5'),
(66, 679061, 'Muhammad Asad', '679061', 'Received', '904001', 'Ali', '2024-07-28 09:16:03', '5'),
(67, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-28 14:09:21', '1'),
(68, 161891, '', '', 'Withdraw', '161891', 'al', '2024-07-28 14:09:28', '1'),
(69, 161891, 'Ali', '904001', 'Transfer', '161891', 'al', '2024-07-28 14:09:45', '1'),
(70, 904001, 'Ali', '904001', 'Received', '161891', 'al', '2024-07-28 14:09:45', '1'),
(71, 161891, 'al', '161891', 'Deposit', 'System', 'System', '2024-07-28 14:13:46', '1'),
(72, 852011, 'Umer', '852011', 'Account Creation time', 'System', 'System', '2024-08-23 14:38:26', '1000'),
(73, 852011, 'Umer', '852011', 'Deposit', 'System', 'System', '2024-08-23 14:39:02', '10'),
(74, 852011, '', '', 'Withdraw', '852011', 'Umer', '2024-08-23 14:39:08', '10'),
(75, 852011, 'Ali', '904001', 'Transfer', '852011', 'Umer', '2024-08-23 14:40:11', '100'),
(76, 904001, 'Ali', '904001', 'Received', '852011', 'Umer', '2024-08-23 14:40:11', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD UNIQUE KEY `phone_no` (`phone_no`);

--
-- Indexes for table `users_transactions`
--
ALTER TABLE `users_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_transactions`
--
ALTER TABLE `users_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
