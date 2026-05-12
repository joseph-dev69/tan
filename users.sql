-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2026 at 04:27 PM
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
-- Database: `rmmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('student','teacher','cashier','records','finance','dean','admin') DEFAULT 'student',
  `course` varchar(50) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `course`, `college`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin', NULL, NULL, 'approved'),
(2, 'jhonlloyd guerrero', 'jhonlloyd466@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'student', 'BSIT', 'College of Information Technology', 'disapproved'),
(3, 'Allan Vynce V. Guerrero', 'allanvynceguerrero@gmail.com', '202cb962ac59075b964b07152d234b70', 'student', 'BSIT', 'College of Information Technology', 'disapproved'),
(4, 'joseph tan', 'jtan78498@gmail.com', '202cb962ac59075b964b07152d234b70', 'student', 'BSIT', 'College of Information Technology', 'approved'),
(5, 'Finance Officer', 'finance@gmail.com', 'b9c9b331a8a5007cb2b766c6cd293372', 'finance', NULL, NULL, 'approved'),
(6, 'Cashier Officer', 'cashier@gmail.com', 'dbb8c54ee649f8af049357a5f99cede6', 'cashier', NULL, NULL, 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
