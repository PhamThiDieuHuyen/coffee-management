-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for coffee_management
CREATE DATABASE IF NOT EXISTS `coffee_management` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `coffee_management`;

-- Dumping structure for table coffee_management.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `menuId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menuCategoryId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffee_management.menu: ~5 rows (approximately)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`menuId`, `menuCategoryId`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 'CAPUCHINO', 'images/CAPUCHINO-COFFEE.jpg', 20000, '2019-06-22 19:23:04', '2019-06-26 16:17:57'),
	(2, 1, 'ESPRESSO', 'images/ESPRESSO.jpg', 20000, '2019-06-22 19:23:04', '2019-06-26 23:19:02'),
	(3, 1, 'MATCHA LATTE', 'images/matcha-latte.png', 20000, '2019-06-22 19:23:04', '2019-06-26 23:19:03'),
	(4, 1, 'AMERICANO', 'images/AMERICANO.jpg', 20000, '2019-06-22 19:23:04', '2019-06-26 23:19:05'),
	(5, 2, 'CLASSIC', 'images/CLASSIC-MILK-TEA.jpg', 26000, '2019-06-22 19:23:04', '2019-06-26 23:19:07'),
	(6, 2, 'THAI', 'images/thai-milk-tea.jpg', 30000, '2019-06-22 19:23:04', '2019-06-26 23:19:18'),
	(7, 2, 'PEARL', 'images/PEARL-MILK-TEA.jpg', 35000, '2019-06-22 19:23:04', '2019-06-26 23:19:35'),
	(8, 2, 'MATCHA', 'images/MATCHA-MILK-TEA.jpg', 30000, '2019-06-22 19:23:04', '2019-06-26 23:19:40'),
	(9, 2, 'CHEESE CREAM CHOCOLATE', 'images/CHEESE-CREAM-CHOCOLATE-MILK-TEA.jpg', 30000, '2019-06-22 19:23:04', '2019-06-26 23:19:48'),
	(10, 3, 'PEACH MOUSSE', 'images/MOUSSE-DAO.png', 15000, '2019-06-22 19:23:04', '2019-06-26 23:19:50'),
	(11, 3, 'CHEESE CARAMEL', 'images/CARAMEL-PHOMAI.jpg', 15000, '2019-06-22 19:23:04', '2019-06-26 23:19:54'),
	(12, 3, 'COFFEE CHEESE', 'images/PHO-MAI-CA-PHE.jpg', 15000, '2019-06-22 19:23:04', '2019-06-26 23:19:56'),
	(13, 3, 'GREEN TEA CHEESE', 'images/PHO-MAI-TRA-XANH.jpg', 29000, '2019-06-22 19:23:04', '2019-06-26 23:19:59'),
	(14, 3, 'TIRAMISU', 'images/TIRAMISU.jpg', 19000, '2019-06-22 19:23:04', '2019-06-26 23:20:01'),
	(15, 4, 'FRAPPUCHINO CARAMEL', 'images/Frappuccino-Caramel.jpg', 49000, '2019-06-22 19:23:04', '2019-06-26 23:20:04'),
	(16, 4, 'MATCHA', 'images/MATCHA-FREEZE.jpg', 49000, '2019-06-22 19:23:04', '2019-06-26 23:20:06'),
	(17, 4, 'CHOCOLATE', 'images/SO-CO-LA-FREEZE.jpg', 49000, '2019-06-22 19:23:04', '2019-06-26 23:20:08'),
	(18, 4, 'OREO COOKIES', 'images/oreo-cookie-ice-blanded.jpg', 49000, '2019-06-22 19:23:04', '2019-06-26 23:20:12'),
	(19, 5, 'CHEESE CREAM OOLONG ', 'images/TRA-O-LONG-KEM-CHEESE.jpg', 36000, '2019-06-22 19:23:04', '2019-06-26 23:20:17'),
	(20, 5, 'BLUEBERRY', 'images/TRA-VIET-QUAT.jpg', 36000, '2019-06-22 19:23:04', '2019-06-26 23:20:19'),
	(21, 5, 'DAO CAM SA', 'images/TRA-DAO-CAM-SA.jpg', 36000, '2019-06-22 19:23:04', '2019-06-26 23:20:22'),
	(22, 5, 'MILK FOAM PEACH', 'images/Milk-foam-peach-tea.jpg', 39000, '2019-06-22 19:23:04', '2019-06-26 23:20:24'),
	(23, 6, 'XIU MAI', 'images/BM-XIU-MAI.png', 19000, '2019-06-22 19:23:04', '2019-06-26 23:20:27'),
	(24, 6, 'CHA LUA XA XIU', 'images/BM-CHA-LUA-XA-XIU.png', 19000, '2019-06-22 19:23:04', '2019-06-26 23:20:32'),
	(25, 6, 'GRILL', 'images/BM-THIT-NUONG.png', 19000, '2019-06-22 19:23:04', '2019-06-26 23:20:35'),
	(26, 7, 'STRABERRY', 'images/SMOOTHIE-DAU-TAY.jpg', 59000, '2019-06-22 19:23:04', '2019-06-26 23:20:39'),
	(27, 7, 'CHOCOLATE MINT', 'images/socola-bac-ha.jpg', 45000, '2019-06-22 19:23:04', '2019-06-26 23:20:42'),
	(28, 7, 'BLUEBERRY', 'images/BLUEBERRY-SMOOTHIE.jpg', 40000, '2019-06-22 19:23:04', '2019-06-26 23:20:46'),
	(29, 8, 'PEARL', 'images/tran chau den.jpg', 5000, '2019-06-22 19:23:04', '2019-06-26 23:20:49'),
	(30, 8, 'CHEESE', 'images/CHEESE.jpg', 5000, '2019-06-22 19:23:04', '2019-06-26 23:20:59'),
	(31, 8, 'GLASS BEADS', 'images/THUY-TINH.jpg', 5000, '2019-06-22 19:23:04', '2019-06-26 23:21:02'),
	(32, 8, 'PUDDING JELLY', 'images/thach_pudding.png', 5000, '2019-06-22 19:23:04', '2019-06-26 23:21:05');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table coffee_management.menu_category
CREATE TABLE IF NOT EXISTS `menu_category` (
  `menuCategoryId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menuCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffee_management.menu_category: ~8 rows (approximately)
DELETE FROM `menu_category`;
/*!40000 ALTER TABLE `menu_category` DISABLE KEYS */;
INSERT INTO `menu_category` (`menuCategoryId`, `name`, `describe`, `created_at`, `updated_at`) VALUES
	(1, 'COFFEE', 'Vi???t Nam t??? h??o s??? h???u m???t di s???n v??n h??a c?? ph?? gi??u c??, v?? \'Phin\' ch??nh l?? linh h???n, l?? n??t v??n h??a th?????ng th???c c?? ph?? ???? ??n s??u v??o ti???m th???c bi???t bao ng?????i Vi???t. C?? ph?? rang xay ???????c chi???t xu???t ch???m r??i t???ng gi???t m???t th??ng qua d???ng c??? l???c b???ng kim lo???i c?? t??n l?? \'Phin\', c??ng gi???ng nh?? th??? hi???n s??? s??u s???c trong t???ng suy ngh?? v?? ch??n th??nh trong nh???ng m???i quan h??? hi???n h???u. B???n c?? th??? t??y th??ch l???a ch???n u???ng n??ng ho???c d??ng chung v???i ????, c?? ho???c kh??ng c?? s???a ?????c.', '2019-06-22 19:25:54', '2019-06-24 11:25:01'),
	(2, 'MILK TEA', 'Tr?? s???a l?? lo???i th???c u???ng ??a d???ng ???????c t??m th???y ??? nhi???u n???n v??n h??a, bao g???m m???t v??i c??ch k???t h???p gi???a tr?? v?? s???a. C??c lo???i th???c u???ng kh??c nhau t??y thu???c v??o l?????ng th??nh ph???n ch??nh c???a m???i lo???i, ph????ng ph??p pha ch???, v?? c??c th??nh ph???n kh??c ???????c th??m v??o.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(3, 'CAKE', 'C??n g?? tuy???t v???i h??n khi k???t h???p th?????ng th???c ????? u???ng c???a b???n c??ng v???i nh???ng chi???c b??nh ng???t ngon tinh t??? ???????c l??m th??? c??ng. Nh???ng chi???c b??nh c???a ch??ng t??i mang h????ng v??? ?????c tr??ng c???a ???m th???c Vi???t v?? c??n l?? s??? T???n T??m, g???i g???m m?? ch??ng t??i d??nh cho Qu?? kh??ch h??ng.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(4, 'FREEZE', 'N???u b???n l?? ng?????i y??u th??ch nh???ng g?? m???i m??? v?? s??nh ??i???u ????? kh??i ngu???n c???m h???ng. H??y th?????ng th???c ngay c??c m??n n?????c ???? xay ?????c ????o mang h????ng v??? t??? nhi??n t???i Highlands Coffee ????? ????nh th???c m???i gi??c quan c???a b???n, gi??p b???n lu??n c??ng tr??n s???c s???ng.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(5, 'TEA', 'H????ng v??? t??? nhi??n, th??m ngon c???a Tr?? Vi???t v???i phong c??ch hi???n ?????i t???i Highlands Coffee s??? gi??p b???n g???i m??? v??? gi??c c???a b???n th??n v?? t???n h?????ng m???t c???m gi??c th???t khoan kho??i, t????i m???i.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(6, 'BREAD', 'B???n ???? qu?? quen thu???c v???i B??nh m?? Vi???t Nam. H??y n???m th??? m???t mi???ng B??nh m?? ngon, gi??n, n??ng h???i t???i Highlands Coffee. M???t k???t h???p ho??n h???o gi???a l???p nh??n chua, cay, m???n, ng???t quy???n v???i l???p v??? b??nh m?? gi??n tan, m???n m??ng t???o ra t???ng t???ng l???p l???p d?? v??? cho th???c kh??ch. ', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(7, 'SMOOTHIE', 'Sinh t??? l?? m???t lo???i ????? u???ng ?????c v?? kem ???????c l??m t??? tr??i c??y, rau c??? v?? ????i khi l?? c??c s???n ph???m t??? s???a... M???t ly sinh t??? c?? ch???a c??c s???n ph???m s???a t????ng t??? nh?? m???t lo???i s???a, m???c d?? sau n??y th?????ng ch???a ??t tr??i c??y v?? th?????ng s??? d???ng kem ho???c s???a chua ????ng l???nh.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(8, 'TOPPINGS', 'Topping l?? t??? d??ng ????? ch??? nh???ng lo???i th???c ??n ???????c ?????t ph??a tr??n m???t lo???i th???c ??n kh??c. V???i tr?? s???a, Topping l?? t??? d??ng ????? g???i c??c lo???i th???ch ??n k??m nh?? tr??n ch??u ??en, tr??n ch??u tr???ng, th???ch tr??i c??y, h???t th???y tinh, th???ch Pudding???', '2019-06-22 19:25:54', '2019-06-22 19:25:54');
/*!40000 ALTER TABLE `menu_category` ENABLE KEYS */;

-- Dumping structure for table coffee_management.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffee_management.migrations: ~5 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(11, '2019_06_15_145456_create_order_table', 1),
	(12, '2019_06_15_145531_create_user_table', 1),
	(13, '2019_06_15_145548_create_order_detail_table', 1),
	(14, '2019_06_15_145605_create_menu_table', 1),
	(15, '2019_06_15_145621_create_menu_category_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table coffee_management.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `orderId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffee_management.order_detail: ~36 rows (approximately)
DELETE FROM `order_detail`;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`orderId`, `menuId`, `quantity`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(1, 3, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(1, 4, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(1, 10, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(1, 12, 3, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(2, 2, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(2, 3, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(2, 4, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(2, 5, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(2, 17, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(2, 18, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(3, 6, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(3, 25, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(4, 4, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(4, 5, 4, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(4, 30, 3, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(5, 6, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(5, 22, 3, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(5, 32, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(6, 10, 5, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(6, 21, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(6, 24, 3, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(7, 1, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(7, 15, 4, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(7, 29, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(8, 4, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(9, 7, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(9, 12, 3, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(9, 31, 3, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(10, 1, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(10, 11, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(10, 28, 5, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(24, 1, 2, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(24, 2, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(24, 3, 4, '2019-06-22 20:56:47', '2019-06-22 20:56:47'),
	(24, 4, 1, '2019-06-22 20:56:47', '2019-06-22 20:56:47');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Dumping structure for table coffee_management.order_trs
CREATE TABLE IF NOT EXISTS `order_trs` (
  `orderId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffee_management.order_trs: ~11 rows (approximately)
DELETE FROM `order_trs`;
/*!40000 ALTER TABLE `order_trs` DISABLE KEYS */;
INSERT INTO `order_trs` (`orderId`, `userId`, `datetime`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-04-17 09:21:59', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(2, 1, '2019-04-17 09:26:49', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(3, 1, '2019-04-04 20:29:25', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(4, 2, '2019-04-22 14:06:53', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(5, 3, '2019-05-09 11:12:26', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(6, 4, '2019-05-18 13:05:32', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(7, 3, '2019-05-22 07:16:12', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(8, 5, '2019-05-22 07:32:45', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(9, 5, '2019-05-28 04:19:46', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(10, 4, '2019-05-30 17:17:21', '2019-06-22 20:57:50', '2019-06-22 20:57:50'),
	(24, 1, '2019-06-21 17:55:13', '2019-06-22 20:57:50', '2019-06-22 20:57:50');
/*!40000 ALTER TABLE `order_trs` ENABLE KEYS */;

-- Dumping structure for table coffee_management.user
CREATE TABLE IF NOT EXISTS `user` (
  `userId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` int(11) NOT NULL COMMENT '1: admin, 2: staff',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffee_management.user: ~2 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userId`, `username`, `permission`, `password`, `address`, `phone`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 1, '$2y$10$A0Wy7CTJV9emh6VHiehnJuA4//dVtf8BV5kcsE8Mw7UwVxZ6NmM.e', 'TP.HCM', '0987654321', 'images/avatar-admin.jpg', NULL, '2019-06-22 19:29:40', '2019-06-25 18:00:22'),
	(2, 'staff', 2, '$2y$10$N.ajhBncYuvw/nwwdPjozuru0Bc0Myd5Qo9fyNsh4B5Pi4Oi7TPHe', 'TP.HCM', '0987654321', 'images/avatar-staff-4.jpg', NULL, '2019-06-22 19:29:40', '2019-06-22 21:41:30');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
