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
	(1, 'COFFEE', 'Việt Nam tự hào sở hữu một di sản văn hóa cà phê giàu có, và \'Phin\' chính là linh hồn, là nét văn hóa thưởng thức cà phê đã ăn sâu vào tiềm thức biết bao người Việt. Cà phê rang xay được chiết xuất chậm rãi từng giọt một thông qua dụng cụ lọc bằng kim loại có tên là \'Phin\', cũng giống như thể hiện sự sâu sắc trong từng suy nghĩ và chân thành trong những mối quan hệ hiện hữu. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá, có hoặc không có sữa đặc.', '2019-06-22 19:25:54', '2019-06-24 11:25:01'),
	(2, 'MILK TEA', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(3, 'CAKE', 'Còn gì tuyệt vời hơn khi kết hợp thưởng thức đồ uống của bạn cùng với những chiếc bánh ngọt ngon tinh tế được làm thủ công. Những chiếc bánh của chúng tôi mang hương vị đặc trưng của ẩm thực Việt và còn là sự Tận Tâm, gửi gắm mà chúng tôi dành cho Quý khách hàng.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(4, 'FREEZE', 'Nếu bạn là người yêu thích những gì mới mẻ và sành điệu để khơi nguồn cảm hứng. Hãy thưởng thức ngay các món nước đá xay độc đáo mang hương vị tự nhiên tại Highlands Coffee để đánh thức mọi giác quan của bạn, giúp bạn luôn căng tràn sức sống.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(5, 'TEA', 'Hương vị tự nhiên, thơm ngon của Trà Việt với phong cách hiện đại tại Highlands Coffee sẽ giúp bạn gợi mở vị giác của bản thân và tận hưởng một cảm giác thật khoan khoái, tươi mới.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(6, 'BREAD', 'Bạn đã quá quen thuộc với Bánh mì Việt Nam. Hãy nếm thử một miếng Bánh mì ngon, giòn, nóng hổi tại Highlands Coffee. Một kết hợp hoàn hảo giữa lớp nhân chua, cay, mặn, ngọt quyện với lớp vỏ bánh mì giòn tan, mịn màng tạo ra tầng tầng lớp lớp dư vị cho thực khách. ', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(7, 'SMOOTHIE', 'Sinh tố là một loại đồ uống đặc và kem được làm từ trái cây, rau củ và đôi khi là các sản phẩm từ sữa... Một ly sinh tố có chứa các sản phẩm sữa tương tự như một loại sữa, mặc dù sau này thường chứa ít trái cây và thường sử dụng kem hoặc sữa chua đông lạnh.', '2019-06-22 19:25:54', '2019-06-22 19:25:54'),
	(8, 'TOPPINGS', 'Topping là từ dùng để chỉ những loại thức ăn được đặt phía trên một loại thức ăn khác. Với trà sữa, Topping là từ dùng để gọi các loại thạch ăn kèm như trân châu đen, trân châu trắng, thạch trái cây, hạt thủy tinh, thạch Pudding…', '2019-06-22 19:25:54', '2019-06-22 19:25:54');
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
