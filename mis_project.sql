-- phpMyAdmin SQL Dump
-- version 5.2.1-dev+20220523.cbdfd05372
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2024 at 03:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mis_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`, `photo`) VALUES
(11, 'Bracelet', '/MIS Project/admin/category_images/about-img.png'),
(12, 'Ring', '/MIS Project/admin/category_images/i-2.png'),
(13, 'Anklet', '/MIS Project/admin/category_images/23.1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

CREATE TABLE `contact_page` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`id`, `firstname`, `lastname`, `email`, `message`) VALUES
(2, 'Bibek', 'thapa', 'balika@gmail.com', 'good'),
(3, 'roshani', 'magar', 'dikshita.subedi.bca076@kathford.edu.np', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Delivery` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Fullname`, `Email`, `Phone`, `address`, `Delivery`, `status`) VALUES
(28, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(29, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(30, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(31, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(32, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(33, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(34, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(35, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(36, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(37, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9869133160', 'Kathmandu', 'Pay with Khalti', 0),
(38, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 0),
(39, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 0),
(40, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 0),
(41, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 0),
(42, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 0),
(43, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 0),
(44, 'Dikshita Subedi', 'dikshita2057@gmail.com', '9812345678', 'Kathmandu', 'Pay with Khalti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `item_name`, `price`, `quantity`) VALUES
(0, '', 0, 0),
(44, 'InterLock Ring', 2000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `enterdate` date NOT NULL,
  `photo` varchar(500) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unit` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product`, `price`, `quantity`, `discount`, `enterdate`, `photo`, `category`, `unit`) VALUES
(29, 'Diamond Ring', '100000', 50, '0%', '2023-01-03', '/MIS Project/admin/product_images/th (3).jfif', 'Ring', 'piece'),
(30, 'Gold Bracelet', '30000', 50, '0%', '2023-01-03', '/MIS Project/admin/product_images/th (1).jfif', 'Bracelet', 'piece'),
(31, 'Silver Anklet', '1000', 50, '0%', '2023-01-03', '/MIS Project/admin/product_images/th.jfif', 'Anklet', 'piece'),
(32, 'InterLock Ring', '2000', 49, '0%', '2023-01-03', '/MIS Project/admin/product_images/th (2).jfif', 'Ring', 'piece'),
(33, 'Gold Anklet', '4000', 50, '0%', '2023-01-03', '/MIS Project/admin/product_images/23.1.jpg', 'Anklet', 'piece'),
(34, 'Diamond Crystal Ring', '50000', 50, '0%', '2023-01-03', '/MIS Project/admin/product_images/th (5).jfif', 'Ring', 'piece'),
(35, 'Gold Plated Diamond Crystal  Ring', '80000', 50, '0%', '2023-01-03', '/MIS Project/admin/product_images/p-1.png', 'Ring', 'piece');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phonenumber` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `address`, `phonenumber`, `password`) VALUES
(1, 'Dikshita Subedi', 'dikshita2057@gmail.com', 'manthali', '9844136970', 'Dikshita@123'),
(2, 'diksjjknv', 'dikshita2057@gmail.com', 'fff', '9844136970', 'Dik@12345'),
(3, 'Dishita', 'dikshita2057@gmail.com', 'manthali', '9844136970', 'Dik@12345'),
(4, 'dikshita', 'dikshita2057@gmail.com', 'manthali', '9844136970', 'Dik@1234'),
(5, 'balika', 'sss@gmail.com', 'Imadole', '9844136970', 'Dikshita@123'),
(6, 'balika', 'arya@gmail.com', 'Imadole', '9844136970', 'Dikshita@12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_page`
--
ALTER TABLE `contact_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_page`
--
ALTER TABLE `contact_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
