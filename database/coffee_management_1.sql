-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2019 at 06:18 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuId` int(11) NOT NULL,
  `menuCategoryId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Menu';

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuId`, `menuCategoryId`, `name`, `price`) VALUES
(1, 1, 'CAPUCHINO COFFEE', 20000),
(2, 1, 'ESPRESSO', 20000),
(3, 1, 'LATTE', 20000),
(4, 1, 'AMERINO', 20000),
(5, 2, 'CLASSIC MILK TEA', 25000),
(6, 2, 'THAI MILK TEA', 30000),
(7, 2, 'PEARL MILK TEA', 35000),
(8, 2, 'MATCHA MILK TEA', 30000),
(9, 2, 'ROYAL MILK TEA', 30000),
(10, 3, 'PURE CHEESE', 15000),
(11, 3, 'MANIA', 15000),
(12, 3, 'CHOCOLATE', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `menuCategoryId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `describe` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Menu category';

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`menuCategoryId`, `name`, `describe`) VALUES
(1, 'COFFEE', 'CAPUCHINO COFFEE, ESPRESSO, LATTE, AMERINO'),
(2, 'MILK TEA', 'CLASSIC MILK TEA, THAI MILK TEA,  PEARL MILK TEA, MATCHA MILK TEA, ROYAL MILK TEA'),
(3, 'CAKE', 'PURE CHEESE, MANIA, CHOCOLATE, ...');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `orderId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order detail';

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`orderId`, `menuId`, `quantity`) VALUES
(1, 2, 1),
(1, 3, 2),
(1, 12, 3),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1),
(3, 6, 2),
(4, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_trs`
--

CREATE TABLE `order_trs` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order';

--
-- Dumping data for table `order_trs`
--

INSERT INTO `order_trs` (`orderId`, `userId`, `date`) VALUES
(1, 1, '2019-04-05 20:26:51'),
(2, 1, '2019-04-17 09:21:59'),
(3, 1, '2019-04-04 20:29:25'),
(4, 2, '2019-04-22 14:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `permission` int(11) NOT NULL DEFAULT '2' COMMENT '1: admin, 2: staff',
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `permission`, `password`, `address`, `phone`, `avatar`) VALUES
(1, 'Hoàng Anh', 0, '123', 'DONG HOA, DI AN, BINH DUONG', '0343567890', 'http://thuthuat123.com/uploads/2018/01/27/Avatar-dep-nhat-83_112148.jpg'),
(2, 'Diệu Huyền', 1, '123', 'HIEP BINH PHUOC, THU DUC, HCM', '0978667554', 'http://thuthuatphanmem.vn/uploads/2018/04/10/avatar-doi-dep-1_015655450.jpg'),
(3, 'Phụng', 2, '123', 'DONG HOA, DI AN, BINH DUONG', '0987867543', 'http://thuthuatphanmem.vn/uploads/2018/09/11/avartar-de-thuong-8_043644997.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuId`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`menuCategoryId`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderId`,`menuId`);

--
-- Indexes for table `order_trs`
--
ALTER TABLE `order_trs`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `menuCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_trs`
--
ALTER TABLE `order_trs`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
