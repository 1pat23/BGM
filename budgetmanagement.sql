-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2018 at 04:42 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budgetmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `product_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
  `price` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `image`, `product_name`, `description`, `price`) VALUES
(21, 'img/2018-06-03_15_28_04Junk-Food.jpg', '6/3/2018(hamburger)', 'Food', '50000'),
(22, 'img/2018-06-02_08_27_34driving.jpg', '6/6/2018', 'Driving', '100000'),
(23, 'img/2018-06-03_15_28_20stack_of_books.jpg', '6/8/2018(English book + note)', 'Books', '80000'),
(24, 'img/20180602070423shoes.jpg', '6/9/2018', 'Shoes', '300000'),
(25, 'img/2018-06-02_07_10_41backpack.png', '6/12/2018', 'backpack', '200000'),
(26, 'img/201806031526482018-06-02_06_57_56Clothing.jpg', '6/8/2018', 'Clothing', '200000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
