-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 24, 2019 lúc 10:12 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `coffee_management_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menuId` int(11) NOT NULL,
  `menuCategoryId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Menu';

--
-- Đang đổ dữ liệu cho bảng `menu`
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
(12, 3, 'CHOCOLATE', 15000),
(13, 3, 'MOUSSE CACAO', 29000),
(14, 3, 'TIRAMISU', 19000),
(15, 4, 'CARAMEL PHIN', 49000),
(16, 4, 'TRÀ XANH', 49000),
(17, 4, 'SÔ-CÔ-LA', 49000),
(18, 4, 'COOKIES & CREAM', 49000),
(19, 5, 'OOLONG', 36000),
(20, 5, 'EARL GREY', 36000),
(21, 5, 'ALISAN', 36000),
(22, 5, 'SEN VÀNG', 39000),
(23, 6, 'XÍU MẠI', 19000),
(24, 6, 'CHẢ LỤA XÁ XÍU', 19000),
(25, 6, 'THỊT NƯỚNG', 19000),
(26, 7, 'STRABERRY OREO', 59000),
(27, 7, 'SÔ-CÔ-LA BẠC HÀ', 45000),
(28, 7, 'CAM BẠC HÀ', 40000),
(29, 8, 'TRÂN CHÂU', 5000),
(30, 8, 'PHÔ MAI', 5000),
(31, 8, 'HẠT THỦY TINH', 5000),
(32, 8, 'THẠCH PUDDING', 5000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_category`
--

CREATE TABLE `menu_category` (
  `menuCategoryId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `describe` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Menu category';

--
-- Đang đổ dữ liệu cho bảng `menu_category`
--

INSERT INTO `menu_category` (`menuCategoryId`, `name`, `describe`) VALUES
(1, 'COFFEE', 'Việt Nam tự hào sở hữu một di sản văn hóa cà phê giàu có, và \'Phin\' chính là linh hồn, là nét văn hóa thưởng thức cà phê đã ăn sâu vào tiềm thức biết bao người Việt. Cà phê rang xay được chiết xuất chậm rãi từng giọt một thông qua dụng cụ lọc bằng kim loại có tên là \'Phin\', cũng giống như thể hiện sự sâu sắc trong từng suy nghĩ và chân thành trong những mối quan hệ hiện hữu. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá, có hoặc không có sữa đặc.'),
(2, 'MILK TEA', 'Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào.'),
(3, 'CAKE', 'Còn gì tuyệt vời hơn khi kết hợp thưởng thức đồ uống của bạn cùng với những chiếc bánh ngọt ngon tinh tế được làm thủ công. Những chiếc bánh của chúng tôi mang hương vị đặc trưng của ẩm thực Việt và còn là sự Tận Tâm, gửi gắm mà chúng tôi dành cho Quý khách hàng.'),
(4, 'FREEZE', 'Nếu bạn là người yêu thích những gì mới mẻ và sành điệu để khơi nguồn cảm hứng. Hãy thưởng thức ngay các món nước đá xay độc đáo mang hương vị tự nhiên tại Highlands Coffee để đánh thức mọi giác quan của bạn, giúp bạn luôn căng tràn sức sống.'),
(5, 'TEA', 'Hương vị tự nhiên, thơm ngon của Trà Việt với phong cách hiện đại tại Highlands Coffee sẽ giúp bạn gợi mở vị giác của bản thân và tận hưởng một cảm giác thật khoan khoái, tươi mới.'),
(6, 'BREAD', 'Bạn đã quá quen thuộc với Bánh mì Việt Nam. Hãy nếm thử một miếng Bánh mì ngon, giòn, nóng hổi tại Highlands Coffee. Một kết hợp hoàn hảo giữa lớp nhân chua, cay, mặn, ngọt quyện với lớp vỏ bánh mì giòn tan, mịn màng tạo ra tầng tầng lớp lớp dư vị cho thực khách. '),
(7, 'SMOOTHIE', 'Sinh tố là một loại đồ uống đặc và kem được làm từ trái cây, rau củ và đôi khi là các sản phẩm từ sữa... Một ly sinh tố có chứa các sản phẩm sữa tương tự như một loại sữa, mặc dù sau này thường chứa ít trái cây và thường sử dụng kem hoặc sữa chua đông lạnh.'),
(8, 'TOPPINGS', 'Topping là từ dùng để chỉ những loại thức ăn được đặt phía trên một loại thức ăn khác. Với trà sữa, Topping là từ dùng để gọi các loại thạch ăn kèm như trân châu đen, trân châu trắng, thạch trái cây, hạt thủy tinh, thạch Pudding…');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `orderId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order detail';

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`orderId`, `menuId`, `quantity`) VALUES
(1, 2, 1),
(1, 3, 2),
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_trs`
--

CREATE TABLE `order_trs` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order';

--
-- Đang đổ dữ liệu cho bảng `order_trs`
--

INSERT INTO `order_trs` (`orderId`, `userId`, `date`) VALUES
(1, 1, '2019-04-05 20:26:51'),
(2, 1, '2019-04-17 09:21:59'),
(3, 1, '2019-04-04 20:29:25'),
(4, 2, '2019-04-22 14:06:53'),
(5, 3, '2019-05-09 11:12:26'),
(6, 4, '2019-05-18 13:05:32'),
(7, 3, '2019-05-22 07:16:12'),
(8, 5, '2019-05-22 07:32:45'),
(9, 5, '2019-05-28 04:19:46'),
(10, 4, '2019-05-30 17:17:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
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
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userId`, `username`, `permission`, `password`, `address`, `phone`, `avatar`) VALUES
(1, 'Hoàng Anh', 1, '123', 'DONG HOA, DI AN, BINH DUONG', '0343567890', 'http://thuthuat123.com/uploads/2018/01/27/Avatar-dep-nhat-83_112148.jpg'),
(2, 'Diệu Huyền', 1, '123', 'HIEP BINH PHUOC, THU DUC, HCM', '0978667554', 'http://thuthuatphanmem.vn/uploads/2018/04/10/avatar-doi-dep-1_015655450.jpg'),
(3, 'Phụng', 2, '123', 'DONG HOA, DI AN, BINH DUONG', '0987867543', 'http://thuthuatphanmem.vn/uploads/2018/09/11/avartar-de-thuong-8_043644997.jpg'),
(4, 'HIỀN', 2, '123ASD', 'KÍ TÚC XÁ KHU B', '0357638945', 'https://www.huongnghiepaau.com/topping-la-gi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuId`);

--
-- Chỉ mục cho bảng `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`menuCategoryId`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderId`,`menuId`);

--
-- Chỉ mục cho bảng `order_trs`
--
ALTER TABLE `order_trs`
  ADD PRIMARY KEY (`orderId`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `menuCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order_trs`
--
ALTER TABLE `order_trs`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
