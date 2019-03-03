-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2018 lúc 07:04 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_bantrasua`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_binhluans`
--

CREATE TABLE `tb_binhluans` (
  `mabl` int(11) NOT NULL,
  `noidung` longtext COLLATE utf8_unicode_520_ci NOT NULL,
  `makh` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_binhluans`
--

INSERT INTO `tb_binhluans` (`mabl`, `noidung`, `makh`, `mahh`, `ngaytao`) VALUES
(1, 'Trà thơm ngon lắm cảm ơn KIMOCHI :)', 3, 1, '2018-05-30 11:32:30'),
(2, 'Quả thật không sai khi mua trà sữa ở KIMOCHI . Bá vãi', 5, 1, '2018-05-30 11:32:30'),
(3, 'Trà gì mà ngon thế. Xin thưa rằng kimochi nhá.', 5, 2, '2018-05-30 11:45:04'),
(5, 'Chiếm lấy em đi', 3, 1, '2018-05-30 16:11:31'),
(6, 'Thiệt là bá cháy', 7, 1, '2018-05-30 16:13:41'),
(7, 'rất ngon mà không sợ nóng', 7, 1, '2018-05-30 16:34:53'),
(8, 'Giết em đi :)', 7, 1, '2018-05-30 17:04:01'),
(9, 'Rất ngon đó ', 6, 8, '2018-05-30 17:24:36'),
(10, 'quá tuyệt vời', 7, 15, '2018-06-02 10:59:59'),
(11, 'Trà sữa gì kì cục vậy. Uống cứ bị ghiền :))', 8, 3, '2018-06-06 07:39:03'),
(12, 'Hài vãi', 8, 3, '2018-06-06 16:16:44'),
(13, 'Sang đi comment lung tung quá nha :))', 19, 1, '2018-06-06 16:20:20'),
(14, 'ngon lắm', 7, 15, '2018-06-24 12:58:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_chitiethds`
--

CREATE TABLE `tb_chitiethds` (
  `mahh` int(11) NOT NULL,
  `mahd` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_chitiethds`
--

INSERT INTO `tb_chitiethds` (`mahh`, `mahd`, `soluong`, `tongtien`) VALUES
(1, 1, 1, 52000),
(2, 1, 1, 52000),
(1, 2, 2, 104000),
(3, 18, 3, 150000),
(7, 18, 2, 104000),
(3, 19, 5, 250000),
(4, 19, 1, 55000),
(5, 19, 1, 58000),
(15, 19, 10, 520000),
(1, 20, 3, 156000),
(2, 21, 5, 260000),
(3, 21, 1, 50000),
(4, 21, 1, 55000),
(1, 22, 1, 52000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_giohang_tmp`
--

CREATE TABLE `tb_giohang_tmp` (
  `makh` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `soluonghh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_giohang_tmp`
--

INSERT INTO `tb_giohang_tmp` (`makh`, `mahh`, `soluonghh`) VALUES
(21, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_hoadons`
--

CREATE TABLE `tb_hoadons` (
  `mahd` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaytaohd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trangthai` tinyint(1) DEFAULT '0',
  `tennguoinhan` text COLLATE utf8_unicode_520_ci NOT NULL,
  `diachi_nhan` text COLLATE utf8_unicode_520_ci NOT NULL,
  `sdt_nhan` text COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_hoadons`
--

INSERT INTO `tb_hoadons` (`mahd`, `makh`, `ngaytaohd`, `trangthai`, `tennguoinhan`, `diachi_nhan`, `sdt_nhan`) VALUES
(1, 5, '2018-06-23 13:53:21', 1, '', 'TPTDM Bình Dương', '132164656'),
(2, 20, '2018-06-22 06:28:34', 1, '', 'Khu 2 Ấp Mỹ Hảo I , Phường Chánh Mỹ ', '0971890712'),
(18, 5, '2018-06-23 13:51:56', 0, 'Phạm Minh Dũng', '1223123', 'Bình Dương'),
(19, 7, '2018-06-24 12:55:21', 1, 'sang', '1234124', 'Bình Định'),
(20, 8, '2018-06-23 14:26:58', 0, 'Trần Thuận Thiên', '12412414', 'TPHCM'),
(21, 14, '2018-06-24 07:40:43', 0, 'Trần Quốc Tuấn', '124141', 'Hà Nội'),
(22, 7, '2018-06-26 06:58:47', 1, 'Nguyễn Thanh Sang', 'Tp. Thủ Dầu Một', '11345464564'),
(23, 7, '2018-06-26 06:57:05', 0, 'Nguyễn Thanh Sang', 'Tp. Thủ Dầu Một', '11345464564'),
(24, 7, '2018-06-26 06:58:00', 0, 'Nguyễn Thanh Sang', 'Tp. Thủ Dầu Một', '11345464564'),
(25, 7, '2018-06-26 06:58:20', 0, 'Nguyễn Thanh Sang', 'Tp. Thủ Dầu Một', '11345464564');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_khachhangs`
--

CREATE TABLE `tb_khachhangs` (
  `makh` int(11) NOT NULL,
  `tenkh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` text COLLATE utf8_unicode_520_ci NOT NULL,
  `password` text COLLATE utf8_unicode_520_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_520_ci NOT NULL,
  `sdt` text COLLATE utf8_unicode_520_ci NOT NULL,
  `avatar` text COLLATE utf8_unicode_520_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activate` tinyint(1) DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_khachhangs`
--

INSERT INTO `tb_khachhangs` (`makh`, `tenkh`, `email`, `password`, `diachi`, `sdt`, `avatar`, `ngaytao`, `activate`, `active`) VALUES
(3, 'Nguyễn Thành Long', 'longnguyen@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '', '', '', '2018-06-22 05:42:01', 0, 0),
(5, 'Phạm Minh Dũng', 'pmdung@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Bình Dương', '1223123', 'avatar2.jpg', '2018-06-22 05:39:28', 1, 0),
(6, 'Võ Trọng Phụng', 'phungvt@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Cái Bè , Kiên Giang', '1214124124', 'avatar3.jpg', '2018-06-22 05:39:28', 1, 0),
(7, 'Nguyễn Thanh Sang', 'sanglun2254@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Tp. Thủ Dầu Một', '11345464564', 'dmk.jpg', '2018-06-26 06:53:36', 1, 1),
(8, 'Trần Thuận Thiên', 'thientt111@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'TPHCM', '12312312312312312', 'avatar5.jpg', '2018-06-24 12:46:06', 1, 0),
(13, 'Nguyễn Thanh Tùng', 'nttung@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '', '', '', '2018-06-22 05:53:32', 1, 0),
(14, 'Trần Quốc Tuấn', 'tuantran@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '', '', '', '2018-06-22 05:39:28', 1, 0),
(15, 'Cao Đức Minh', 'minhcd@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Bình Thạnh , TPHCM', '1212551241', 'avatar4.jpg', '2018-06-22 05:39:28', 1, 0),
(16, 'Nguyễn Thị Hào Hoa', 'haohoa@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Bình Dương', '123123321', 'avatar1.jpg', '2018-06-22 05:39:28', 1, 0),
(18, 'Trần Thuận Thiên', 'thientt@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Thành phố Hồ Chí Minh', '123123321', 'user.jpg', '2018-06-22 05:39:28', 1, 0),
(19, 'Chị Tú Ơi', 'tunup@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Rừng Xà Nu', '124121525', 'download.png', '2018-06-22 05:39:28', 1, 0),
(20, 'Hồng Thủy', 'pinkwater98@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Tp. Thủ Dầu Một', '124142144', 'backg.jpg', '2018-06-22 05:55:59', 1, 0),
(21, 'Thuận Thiên', 'ttthien111@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'TPHCM', '12312442', 'khachang.png', '2018-06-22 06:24:37', 1, 0),
(22, 'Lê Chí Bảo', 'lyvekien9x@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Chánh Lộc, Bình Dương', '1241515215', 'bgd.jpg', '2018-06-22 06:30:52', 1, 0),
(23, 'Lê Đức Long', 'longdc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'TPHCM', '1232412414', 'anhbg.jpg', '2018-06-26 06:27:02', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_phanhois`
--

CREATE TABLE `tb_phanhois` (
  `id` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read_msg` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_phanhois`
--

INSERT INTO `tb_phanhois` (`id`, `makh`, `noidung`, `ngaytao`, `read_msg`) VALUES
(1, 7, 'ngon đó', '2018-06-22 05:52:23', 1),
(2, 7, 'trân châu hơi chua', '2018-06-24 12:58:48', 0),
(3, 7, 'tuyệt', '2018-06-24 13:02:25', 0),
(4, 21, '', '2018-06-26 05:48:10', 0),
(5, 21, '', '2018-06-26 05:52:17', 0),
(6, 21, '', '2018-06-26 05:52:21', 0),
(7, 21, 'Ngon bổ rẻ', '2018-06-26 05:55:27', 0),
(8, 21, 'Ngon bổ rẻ', '2018-06-26 05:57:04', 0),
(9, 21, 'Ngon bổ rẻ', '2018-06-26 05:57:10', 0),
(10, 21, 'Tuyệt hảo', '2018-06-26 05:57:16', 0),
(11, 21, 'Haha', '2018-06-26 05:58:36', 0),
(12, 21, 'Haha', '2018-06-26 05:58:55', 0),
(13, 21, 'Haha', '2018-06-26 05:59:34', 0),
(14, 21, 'OK', '2018-06-26 05:59:45', 0),
(15, 7, 'Tốt', '2018-06-26 06:00:48', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_products`
--

CREATE TABLE `tb_products` (
  `mahh` int(11) NOT NULL,
  `tenhh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` text COLLATE utf8_unicode_520_ci NOT NULL,
  `tomtat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_products`
--

INSERT INTO `tb_products` (`mahh`, `tenhh`, `hinh`, `tomtat`, `giatien`) VALUES
(1, 'Trà Bí Đao Kem Sữa', 'trabidaokemsua.png', 'Trà bí đao kem sữa là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà Trà sữa Alisan mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa bí đao kem sữa của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(2, 'Trà sữa Alisan', 'traalisan.png', 'Trà sữa Alisan là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà Trà sữa Alisan mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa Alisan của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(3, 'Trà Đậu Đỏ', 'tradaudo.png', 'Trà đậu đỏ là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà Trà sữa Alisan mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa đậu đỏ của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 50000),
(4, 'Trà Đen Kem Sữa ', 'tradenkemsua.png', 'Trà đen kem sữa là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà Trà sữa Alisan mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa đen kem sữa của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 55000),
(5, 'Trà Earl Grey Kem Sữa', 'traearlgreykemsua.png', 'Trà earl grey kem sữa là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà Trà earl grey kem sữa mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa đen kem sữa của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 58000),
(6, 'Trà Ô lông', 'traolong.png', 'Trà Ô lông là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà Trà Ô lông mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa đen kem sữa của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 58000),
(7, 'Trà Sữa Cà Phê', 'trasuacaphe.png', 'Trà sữa cà phê là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích.Hương thơm mà trà sữa cà phê mang lại là một sự quyến rũ kỳ diệu khi được đưa vào chế biến. Thêm vào đó, vị sữa ngọt ngào đã giúp Trà sữa đen kem sữa của bạn có một hương vị tuyệt vời mà ít loại thức uống nào có thể sánh bằng.Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(8, 'Trà Sữa Caramel', 'trasuacaramel.png', 'Trà sữa caramel là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(9, 'Trà Sữa Chocolate', 'trasuachocolate.png', 'Trà sữa Chocolate là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 60000),
(10, 'Trà Sữa Kem Cheese', 'trasuakemcheese.png', 'Trà sữa kem cheese là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 55000),
(11, 'Trà Sữa Pudding Đậu Đỏ', 'trasuapuddingdaudo.png', 'Trà sữa Pudding đậu đỏ là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(12, 'Trà Sữa Sương Sáo', 'trasuasuongsao.png', 'Trà sữa sương sáo là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(13, 'Trà Sữa Trân Châu Đen', 'trasuatranchauden.png', 'Trà sữa trân châu đen là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000),
(14, 'Trà Sữa Tươi Matcha', 'trasuatuoimatcha.jpg', 'Trà sữa tươi matcha là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 50000),
(15, 'Sữa Tươi Trân Châu', 'suatuoitranchauduongden.jpg', 'Sữa tươi trân châu đường đen là thức uống khoái khẩu không chỉ đối với các em nhỏ mà người lớn cũng vô cùng yêu thích. Còn chần chờ gì nữa mà không nhấc máy đặt mua ngay sản phẩm này của Kimochi.', 52000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_quantriviens`
--

CREATE TABLE `tb_quantriviens` (
  `maqtv` int(11) NOT NULL,
  `tenqtv` text COLLATE utf8_unicode_520_ci NOT NULL,
  `taikhoan_qtv` text COLLATE utf8_unicode_520_ci NOT NULL,
  `matkhau_qtv` text COLLATE utf8_unicode_520_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_quantriviens`
--

INSERT INTO `tb_quantriviens` (`maqtv`, `tenqtv`, `taikhoan_qtv`, `matkhau_qtv`, `ngaytao`) VALUES
(1, 'Admin', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '2018-06-01 03:23:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_binhluans`
--
ALTER TABLE `tb_binhluans`
  ADD PRIMARY KEY (`mabl`,`makh`,`mahh`),
  ADD KEY `fk_binhluans_khachhangs` (`makh`),
  ADD KEY `fk_binhluans_products` (`mahh`);

--
-- Chỉ mục cho bảng `tb_chitiethds`
--
ALTER TABLE `tb_chitiethds`
  ADD PRIMARY KEY (`mahd`,`mahh`),
  ADD KEY `fk_chitiethds_products` (`mahh`);

--
-- Chỉ mục cho bảng `tb_giohang_tmp`
--
ALTER TABLE `tb_giohang_tmp`
  ADD PRIMARY KEY (`makh`,`mahh`),
  ADD KEY `fk_giohangs_products` (`mahh`);

--
-- Chỉ mục cho bảng `tb_hoadons`
--
ALTER TABLE `tb_hoadons`
  ADD PRIMARY KEY (`mahd`,`makh`),
  ADD KEY `fk_hoadons_khachhangs` (`makh`);

--
-- Chỉ mục cho bảng `tb_khachhangs`
--
ALTER TABLE `tb_khachhangs`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `tb_phanhois`
--
ALTER TABLE `tb_phanhois`
  ADD PRIMARY KEY (`id`,`makh`),
  ADD KEY `fk_phanhois_khachhangs` (`makh`);

--
-- Chỉ mục cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`mahh`);

--
-- Chỉ mục cho bảng `tb_quantriviens`
--
ALTER TABLE `tb_quantriviens`
  ADD PRIMARY KEY (`maqtv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_binhluans`
--
ALTER TABLE `tb_binhluans`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `tb_hoadons`
--
ALTER TABLE `tb_hoadons`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT cho bảng `tb_khachhangs`
--
ALTER TABLE `tb_khachhangs`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `tb_phanhois`
--
ALTER TABLE `tb_phanhois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `mahh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `tb_quantriviens`
--
ALTER TABLE `tb_quantriviens`
  MODIFY `maqtv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_binhluans`
--
ALTER TABLE `tb_binhluans`
  ADD CONSTRAINT `fk_binhluans_khachhangs` FOREIGN KEY (`makh`) REFERENCES `tb_khachhangs` (`makh`),
  ADD CONSTRAINT `fk_binhluans_products` FOREIGN KEY (`mahh`) REFERENCES `tb_products` (`mahh`);

--
-- Các ràng buộc cho bảng `tb_chitiethds`
--
ALTER TABLE `tb_chitiethds`
  ADD CONSTRAINT `fk_chitiethds_hoadons` FOREIGN KEY (`mahd`) REFERENCES `tb_hoadons` (`mahd`),
  ADD CONSTRAINT `fk_chitiethds_products` FOREIGN KEY (`mahh`) REFERENCES `tb_products` (`mahh`);

--
-- Các ràng buộc cho bảng `tb_giohang_tmp`
--
ALTER TABLE `tb_giohang_tmp`
  ADD CONSTRAINT `fk_giohangs_khachhangs` FOREIGN KEY (`makh`) REFERENCES `tb_khachhangs` (`makh`),
  ADD CONSTRAINT `fk_giohangs_products` FOREIGN KEY (`mahh`) REFERENCES `tb_products` (`mahh`);

--
-- Các ràng buộc cho bảng `tb_hoadons`
--
ALTER TABLE `tb_hoadons`
  ADD CONSTRAINT `fk_hoadons_khachhangs` FOREIGN KEY (`makh`) REFERENCES `tb_khachhangs` (`makh`);

--
-- Các ràng buộc cho bảng `tb_phanhois`
--
ALTER TABLE `tb_phanhois`
  ADD CONSTRAINT `fk_phanhois_khachhangs` FOREIGN KEY (`makh`) REFERENCES `tb_khachhangs` (`makh`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
