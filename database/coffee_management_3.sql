-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for coffee_management
DROP DATABASE IF EXISTS `coffee_management`;
CREATE DATABASE IF NOT EXISTS `coffee_management` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `coffee_management`;

-- Dumping structure for table coffee_management.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `image` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Menu';

-- Dumping data for table coffee_management.menu: ~32 rows (approximately)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`menuId`, `menuCategoryId`, `name`, `price`, `image`) VALUES
	(1, 1, 'CAPUCHINO COFFEE', 20000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(2, 1, 'ESPRESSO', 20000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(3, 1, 'LATTE', 20000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(4, 1, 'AMERICANO', 20000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(5, 2, 'CLASSIC MILK TEA', 26000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(6, 2, 'THAI MILK TEA', 30000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(7, 2, 'PEARL MILK TEA', 35000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(8, 2, 'MATCHA MILK TEA', 30000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(9, 2, 'ROYAL MILK TEA', 30000, 'https://trasuapizza.com/wp-content/uploads/2018/04/TRA-SAU-3-LOAI-TRAN-CHAU.jpg'),
	(10, 3, 'PURE CHEESE', 15000, 'https://cdn.shopify.com/s/files/1/1009/8498/produc'),
	(11, 3, 'MANIA', 15000, 'https://images.happycow.net/venues/1024/14/48/hcmp'),
	(12, 3, 'CHOCOLATE', 15000, 'http://www.cornerbakeryandsweets.com/wp-content/up'),
	(13, 3, 'MOUSSE CACAO', 29000, 'http://www.savourschool.com.au/blog/wp-content/upl'),
	(14, 3, 'TIRAMISU', 19000, 'https://pbs.twimg.com/media/DE7p9p1XkAECGtO.jpg'),
	(15, 4, 'CARAMEL PHIN', 49000, 'https://sanhanggiamgia.top/hinh-anh/1556935241__2c'),
	(16, 4, 'TRÀ XANH', 49000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(17, 4, 'SÔ-CÔ-LA', 49000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(18, 4, 'COOKIES & CREAM', 49000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(19, 5, 'OOLONG', 36000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(20, 5, 'EARL GREY', 36000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(21, 5, 'ALISAN', 36000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(22, 5, 'SEN VÀNG', 39000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(23, 6, 'XÍU MẠI', 19000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(24, 6, 'CHẢ LỤA XÁ XÍU', 19000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(25, 6, 'THỊT NƯỚNG', 19000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(26, 7, 'STRABERRY OREO', 59000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(27, 7, 'SÔ-CÔ-LA BẠC HÀ', 45000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(28, 7, 'CAM BẠC HÀ', 40000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(29, 8, 'TRÂN CHÂU', 5000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(30, 8, 'PHÔ MAI', 5000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(31, 8, 'HẠT THỦY TINH', 5000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff'),
	(32, 8, 'THẠCH PUDDING', 5000, 'https://i.pinimg.com/736x/a0/d4/61/a0d461a8d1682ff');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table coffee_management.menu_category
DROP TABLE IF EXISTS `menu_category`;
CREATE TABLE IF NOT EXISTS `menu_category` (
  `menuCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `describe` text,
  PRIMARY KEY (`menuCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Menu category';

-- Dumping data for table coffee_management.menu_category: ~8 rows (approximately)
DELETE FROM `menu_category`;
/*!40000 ALTER TABLE `menu_category` DISABLE KEYS */;
INSERT INTO `menu_category` (`menuCategoryId`, `name`, `describe`) VALUES
	(1, 'COFFEE', 'Việt Nam tự hào sở hữu một di sản văn hóa cà phê giàu có, và \'Phin\' chính là linh hồn, là nét văn hóa thưởng thức cà phê đã ăn sâu vào tiềm thức biết bao người Việt. Cà phê rang xay được chiết xuất chậm rãi từng giọt một thông qua dụng cụ lọc bằng kim loại có tên là \'Phin\', cũng giống như thể hiện sự sâu sắc trong từng suy nghĩ và chân thành trong những mối quan hệ hiện hữu. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá, có hoặc không có sữa đặc.'),
	(2, 'MILK TEA', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.'),
	(3, 'CAKE', 'Còn gì tuyệt vời hơn khi kết hợp thưởng thức đồ uống của bạn cùng với những chiếc bánh ngọt ngon tinh tế được làm thủ công. Những chiếc bánh của chúng tôi mang hương vị đặc trưng của ẩm thực Việt và còn là sự Tận Tâm, gửi gắm mà chúng tôi dành cho Quý khách hàng.'),
	(4, 'FREEZE', 'Nếu bạn là người yêu thích những gì mới mẻ và sành điệu để khơi nguồn cảm hứng. Hãy thưởng thức ngay các món nước đá xay độc đáo mang hương vị tự nhiên tại Highlands Coffee để đánh thức mọi giác quan của bạn, giúp bạn luôn căng tràn sức sống.'),
	(5, 'TEA', 'Hương vị tự nhiên, thơm ngon của Trà Việt với phong cách hiện đại tại Highlands Coffee sẽ giúp bạn gợi mở vị giác của bản thân và tận hưởng một cảm giác thật khoan khoái, tươi mới.'),
	(6, 'BREAD', 'Bạn đã quá quen thuộc với Bánh mì Việt Nam. Hãy nếm thử một miếng Bánh mì ngon, giòn, nóng hổi tại Highlands Coffee. Một kết hợp hoàn hảo giữa lớp nhân chua, cay, mặn, ngọt quyện với lớp vỏ bánh mì giòn tan, mịn màng tạo ra tầng tầng lớp lớp dư vị cho thực khách. '),
	(7, 'SMOOTHIE', 'Sinh tố là một loại đồ uống đặc và kem được làm từ trái cây, rau củ và đôi khi là các sản phẩm từ sữa... Một ly sinh tố có chứa các sản phẩm sữa tương tự như một loại sữa, mặc dù sau này thường chứa ít trái cây và thường sử dụng kem hoặc sữa chua đông lạnh.'),
	(8, 'TOPPINGS', 'Topping là từ dùng để chỉ những loại thức ăn được đặt phía trên một loại thức ăn khác. Với trà sữa, Topping là từ dùng để gọi các loại thạch ăn kèm như trân châu đen, trân châu trắng, thạch trái cây, hạt thủy tinh, thạch Pudding…');
/*!40000 ALTER TABLE `menu_category` ENABLE KEYS */;

-- Dumping structure for table coffee_management.order_detail
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `orderId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderId`,`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order detail';

-- Dumping data for table coffee_management.order_detail: ~32 rows (approximately)
DELETE FROM `order_detail`;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`orderId`, `menuId`, `quantity`) VALUES
	(1, 2, 1),
	(1, 3, 2),
	(1, 4, 2),
	(1, 10, 1),
	(1, 12, 3),
	(2, 2, 1),
	(2, 3, 1),
	(2, 4, 1),
	(2, 5, 1),
	(2, 17, 1),
	(2, 18, 1),
	(3, 6, 2),
	(3, 25, 1),
	(4, 4, 1),
	(4, 5, 4),
	(4, 30, 3),
	(5, 6, 2),
	(5, 22, 3),
	(5, 32, 1),
	(6, 10, 5),
	(6, 21, 1),
	(6, 24, 3),
	(7, 1, 2),
	(7, 15, 4),
	(7, 29, 2),
	(8, 4, 1),
	(9, 7, 1),
	(9, 12, 3),
	(9, 31, 3),
	(10, 1, 2),
	(10, 11, 2),
	(10, 28, 5);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Dumping structure for table coffee_management.order_trs
DROP TABLE IF EXISTS `order_trs`;
CREATE TABLE IF NOT EXISTS `order_trs` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Order';

-- Dumping data for table coffee_management.order_trs: ~10 rows (approximately)
DELETE FROM `order_trs`;
/*!40000 ALTER TABLE `order_trs` DISABLE KEYS */;
INSERT INTO `order_trs` (`orderId`, `userId`, `date`) VALUES
	(1, 1, '2019-04-17 09:21:59'),
	(2, 1, '2019-04-17 09:21:59'),
	(3, 1, '2019-04-04 20:29:25'),
	(4, 2, '2019-04-22 14:06:53'),
	(5, 3, '2019-05-09 11:12:26'),
	(6, 4, '2019-05-18 13:05:32'),
	(7, 3, '2019-05-22 07:16:12'),
	(8, 5, '2019-05-22 07:32:45'),
	(9, 5, '2019-05-28 04:19:46'),
	(10, 4, '2019-05-30 17:17:21');
/*!40000 ALTER TABLE `order_trs` ENABLE KEYS */;

-- Dumping structure for table coffee_management.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `permission` varchar(50) NOT NULL DEFAULT '2' COMMENT '1: admin, 2: staff',
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `avatar` text NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='User';

-- Dumping data for table coffee_management.user: ~4 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userId`, `username`, `permission`, `password`, `address`, `phone`, `avatar`) VALUES
	(1, 'Hoàng Anh', 'admin', '123', 'DONG HOA, DI AN, BINH DUONG', '0343567891', 'http://thuthuat123.com/uploads/2018/01/27/Avatar-dep-nhat-83_112148.jpg'),
	(2, 'Diệu Huyền', 'staff', '123', 'HIEP BINH PHUOC, THU DUC, HCM', '0978667554', 'http://thuthuatphanmem.vn/uploads/2018/04/10/avatar-doi-dep-1_015655450.jpg'),
	(3, 'Phụng', 'staff', '123', 'DONG HOA, DI AN, BINH DUONG', '0987867543', 'http://thuthuatphanmem.vn/uploads/2018/09/11/avartar-de-thuong-8_043644997.jpg'),
	(4, 'HIỀN', 'staff', '123ASD', 'KÍ TÚC XÁ KHU B', '0357638945', 'https://www.veldblomcoffeeshop.co.za/wp-content/uploads/2019/03/Espresso-Double.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
