-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 31, 2022 lúc 08:44 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wshopxuk_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `automomo`
--

CREATE TABLE `automomo` (
  `id` bigint(20) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `sotien` bigint(200) NOT NULL,
  `time` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` bigint(20) NOT NULL,
  `baiviet` varchar(1000) NOT NULL,
  `nguoidang` varchar(1000) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `anh` varchar(1000) NOT NULL,
  `time` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `mota`, `thumbnail`) VALUES
(2, 'SHOP BÁN ACC FREE FIRE ', 'SHOP BÁN ACC FREE FIRE', 'https://i.upanh.org/2021/06/09/image63c74d0fef4aed39.png'),
(4, 'Web cltx mm có auto bank , có auto trả giao dịch 100% , hỗ trợ setup 30 phút có web', 'GIAO DIỆN ĐẸP ', 'https://i.imgur.com/aKTRvKe.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc1`
--

CREATE TABLE `danhmuc1` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachcode`
--

CREATE TABLE `danhsachcode` (
  `id` bigint(20) NOT NULL,
  `id_danhmuc` bigint(20) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `gia` bigint(20) NOT NULL,
  `demo` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachcode`
--

INSERT INTO `danhsachcode` (`id`, `id_danhmuc`, `ten`, `mota`, `thumbnail`, `gia`, `demo`) VALUES
(1, 2, 'SHOP BÁN ACC FREE FIRE RẺ', 'TÊN MIỀN. TK', 'https://i.imgur.com/Ef3O026_d.webp?maxwidth=640&shape=thumb&fidelity=medium', 47000, 'shopducxathu.tk'),
(2, 2, 'SHOP GIAO DIỆN TRẮNG ', 'TÊN MIỀN. TK', 'https://i.imgur.com/Cv5sTnq.png', 50000, 'https://i.imgur.com/Cv5sTnq.png'),
(3, 2, 'SHOP GIAO DIỆN TẾT ', 'TÊN MIỀN. TK', 'https://i.imgur.com/jDoFGRu.jpg', 70000, 'https://i.imgur.com/jDoFGRu.jpg'),
(4, 4, 'WEBSITE CLTX MOMO', 'TÊN MIỀN .CLUB HOẶC. XYZ', 'https://i.imgur.com/aKTRvKe.png', 100000, 'https://i.imgur.com/aKTRvKe.png'),
(5, 2, 'Scam thẻ caod', 'Tạo web chẵn lẻ momo auto', 'https://i.imgur.com/kSJZPrU.png', 100000, 'https://i.imgur.com/Cv5sTnq.png'),
(6, 2, 'Tạo Shop  Buss Gaming', 'Miền .com ib Zalo admin', 'https://upanh.cf/g22906iu1d.jpg', 100000, 'https://shopbussgamingff.com'),
(7, 2, 'Tạo. Shop giống hà mon tv', 'Miền .com ib Zalo admin', 'https://i.imgur.com/04Hf99i.jpg', 100000, 'https://shopas.vn'),
(9, 2, 'Tạo shop giống đức mõm tv', 'Miền .com ib Zalo admin', 'https://i.imgur.com/A0FhoZz.jpg', 100000, 'https://kiemmomo.com'),
(10, 2, 'Mẫu v12', 'Miền .com ib Zalo admin', 'https://i.imgur.com/4Mvchht.jpg', 100000, 'https://chachgaming.tk'),
(13, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/rzpsju8dm0.png', 100000, 'shoplaogio.com'),
(14, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/if10kut0ta.jpg', 100000, 'Https://shopbacgau.com'),
(15, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/fqjcjrV.png', 100000, 'Https://shopbacgau.com'),
(16, 2, ' ', 'Tao wweb dvfb', 'https://i.imgur.com/cUfBtn0.png', 100000, 'Https://shopbacgau.com'),
(17, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/az579fy71t.png', 100000, 'Https://shopbacgau.com'),
(18, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/ber4ng4f49.jpg', 100000, 'Https://shopbacgau.com'),
(19, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/bs2esz8bv6.jpg', 100000, 'Https://shopbacgau.com'),
(20, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/2mq1kvozxf.jpg', 100000, 'Https://shopbacgau.com'),
(22, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/If8XR6R.jpg', 100000, 'Https://shopbacgau.com'),
(25, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/nGnDjK8.jpg', 100000, 'Https://shopbacgau.com'),
(27, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/wiwfzcyuok.png', 100000, 'Https://shopbacgau.com'),
(28, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/vzuesi4rtj.jpg', 100000, 'Https://shopbacgau.com'),
(29, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/ac7frqj.png', 100000, 'Https://shopbacgau.com'),
(30, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/Ef3O026.jpg', 100000, 'Https://shopbacgau.com'),
(31, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/z3vh77ol6l.jpg', 100000, 'Https://shopbacgau.com'),
(32, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/jb2vb1vvk0.jpg', 100000, 'shoplaogio.com'),
(33, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/MvAG0ER.jpg', 100000, 'https://chachgaming.tk'),
(34, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/AP9BqDr.jpg', 100000, 'https://chachff.tk'),
(35, 2, 'Tạo shop giống các youtube nổi tiếng', 'TẠO SHOP FREE FIRE GIAO DIỆN TẾT 2022', 'https://i.imgur.com/I2NY50i_d.webp?maxwidth=640&shape=thumb&fidelity=medium', 100000, 'https://ff-membersship-garrena.com'),
(36, 2, 'TẠO SHOP FREE FIRE GIAO DIỆN TẾT 2022', 'TẠO SHOP FREE FIRE GIAO DIỆN TẾT 2022', 'https://i.imgur.com/3llDmwV_d.webp?maxwidth=640&shape=thumb&fidelity=medium', 100000, 'https://chachgaming.tk'),
(37, 2, 'TẠO SHOP FREE FIRE GIAO DIỆN TẾT 2022', 'TẠO SHOP FREE FIRE GIAO DIỆN TẾT 2022', 'https://i.imgur.com/hqrMaJD_d.webp?maxwidth=640&shape=thumb&fidelity=medium', 100000, 'Https://shopbacgau.com'),
(38, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/AbXqBkw_d.webp?maxwidth=640&shape=thumb&fidelity=medium', 100000, 'Https://shopbacgau.com'),
(39, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://upanh.cf/b17ny21oj7.jpg', 100000, 'Https://shopbacgau.com'),
(40, 2, 'Tạo shop giống các youtube nổi tiếng', 'Miền .com ib Zalo admin', 'https://i.imgur.com/mg4i75s_d.webp?maxwidth=640&shape=thumb&fidelity=medium', 100000, 'Https://shopbacgau.com'),
(41, 2, 'Tạo website gạch thẻ caod', 'Miền .com ib Zalo admin', 'https://upanh.cf/et3fmwzx3k.png', 100000, 'https://kiemmomo.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giahan_web`
--

CREATE TABLE `giahan_web` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `giahan` bigint(20) NOT NULL,
  `trangthai` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoatdong`
--

CREATE TABLE `hoatdong` (
  `id` bigint(20) NOT NULL,
  `taikhoan` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `hoatdong` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `time` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoatdong`
--

INSERT INTO `hoatdong` (`id`, `taikhoan`, `hoatdong`, `time`) VALUES
(1, 'AUTOFB15', 'Đăng Ký Thành Công!', '25/06/2021 - 17:17:49'),
(2, 'DatCoderCode', 'Tạo Web Thành Công: ', '25/06/2021 - 18:50:34'),
(3, 'nickgamevn', 'Đăng Ký Thành Công!', '25/06/2021 - 19:49:18'),
(4, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 09:25:10'),
(5, 'tai123', 'Đăng Ký Thành Công!', '23/03/2022 - 09:53:20'),
(6, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 09:55:57'),
(7, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 11:19:33'),
(8, 'tantai', 'Tạo Web Thành Công: tantai.vnvn', '23/03/2022 - 11:20:08'),
(9, 'tantai', 'Tạo Web Thành Công: fbff.vn', '23/03/2022 - 11:22:00'),
(10, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 12:33:34'),
(11, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 15:06:13'),
(12, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 16:20:50'),
(13, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 19:37:42'),
(14, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 20:20:57'),
(15, 'tantai', 'Đăng Nhập Thành Công!', '23/03/2022 - 21:22:16'),
(16, 'tantai', 'Đăng Nhập Thành Công!', '24/03/2022 - 07:43:27'),
(17, 'anuniteit', 'Đăng Ký Thành Công!', '24/03/2022 - 10:24:25'),
(18, 'tantai', 'Đăng Nhập Thành Công!', '24/03/2022 - 10:34:36'),
(19, 'anuniteit', 'Đăng Nhập Thành Công!', '24/03/2022 - 14:50:49'),
(20, 'anuniteit', 'Đăng Nhập Thành Công!', '24/03/2022 - 17:37:27'),
(21, 'anuniteit', 'Đăng Nhập Thành Công!', '25/03/2022 - 07:32:01'),
(22, 'bentancoder', 'Đăng Ký Thành Công!', '26/03/2022 - 09:09:54'),
(23, 'haicoder@gmail.com', 'Đăng Ký Thành Công!', '26/03/2022 - 09:58:01'),
(24, 'haicoder@gmail.com', 'Đăng Nhập Thành Công!', '26/03/2022 - 15:15:17'),
(25, 'Zuncoder', 'Đăng Ký Thành Công!', '27/03/2022 - 20:02:22'),
(26, 'Zuncoder', 'Đăng Nhập Thành Công!', '27/03/2022 - 20:30:21'),
(27, 'Zuncoder', 'Tạo Web Thành Công: shopgarenaff.tk', '27/03/2022 - 20:31:30'),
(28, 'Zuncoder', 'Đăng Nhập Thành Công!', '27/03/2022 - 22:37:14'),
(29, 'haicoder208@1', 'Đăng Ký Thành Công!', '28/03/2022 - 08:29:46'),
(30, 'Zuncoder', 'Đăng Nhập Thành Công!', '28/03/2022 - 09:46:39'),
(31, 'Luongphi2008', 'Đăng Ký Thành Công Và Đã Được Tặng 20K!', '28/03/2022 - 22:04:33'),
(32, 'Chachgaming', 'Đăng Ký Thành Công!', '29/03/2022 - 09:44:19'),
(33, 'Chachgaming', 'Đăng Nhập Thành Công!', '29/03/2022 - 09:48:32'),
(34, 'Chachgaming', 'Đăng Nhập Thành Công!', '29/03/2022 - 12:11:36'),
(35, 'Chachgaming', 'Đăng Nhập Thành Công!', '29/03/2022 - 13:00:01'),
(36, 'Chachgaming', 'Đăng Nhập Thành Công!', '29/03/2022 - 13:23:21'),
(37, 'Chachgaming', 'Đăng Nhập Thành Công!', '29/03/2022 - 13:56:36'),
(38, 'baoktm', 'Đăng Ký Thành Công!', '29/03/2022 - 14:00:02'),
(39, 'Chachgaming', 'Đăng Nhập Thành Công!', '29/03/2022 - 17:01:16'),
(40, 'Chachgaming', 'Đăng Nhập Thành Công!', '31/03/2022 - 20:06:20'),
(41, 'hxukakkdex', 'Đăng Nhập Thành Công!', '31/03/2022 - 20:43:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` bigint(20) NOT NULL,
  `magiamgia` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `phantram_giamgia` bigint(20) NOT NULL,
  `loai` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `luotdung` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `magiamgia`, `phantram_giamgia`, `loai`, `trangthai`, `luotdung`) VALUES
(1, 'bae6dec3254863c9ba25782d06464b09', 50, 'taoweb', 'true', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `napthe`
--

CREATE TABLE `napthe` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `loaithe` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `menhgia` bigint(20) NOT NULL,
  `serial` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mathe` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` bigint(20) NOT NULL,
  `time` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `napthe`
--

INSERT INTO `napthe` (`id`, `uid`, `loaithe`, `menhgia`, `serial`, `mathe`, `trangthai`, `time`) VALUES
(1, 233, 'VIETTEL', 20000, '10005555555555', '555555555522222', 0, '25/06/2021 - 19:12:49'),
(2, 1, 'MOBIFONE', 50000, '095012000017795', '816545523059', 0, '27/03/2022 - 20:54:34'),
(3, 4, 'VIETTEL', 100000, '10006366828', '7294728382824', 0, '29/03/2022 - 17:03:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taoweb`
--

CREATE TABLE `taoweb` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `domain` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_code` bigint(20) NOT NULL,
  `gia` bigint(20) NOT NULL,
  `time1` bigint(20) NOT NULL,
  `time2` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thanhtoan` bigint(20) NOT NULL,
  `taikhoanadmin` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `matkhauadmin` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `taoweb`
--

INSERT INTO `taoweb` (`id`, `uid`, `domain`, `id_code`, `gia`, `time1`, `time2`, `thanhtoan`, `taikhoanadmin`, `matkhauadmin`, `trangthai`) VALUES
(1, 99, 'tantai.vnvn', 1, 0, 1648009208, '23/03/2022 - 11:20:08', 1, 'admin', 'admin', 2),
(2, 99, 'fbff.vn', 1, 0, 1648009320, '23/03/2022 - 11:22:00', 12, 'admin', 'admin', 2),
(3, 1, 'shopgarenaff.tk', 3, 0, 1648387890, '27/03/2022 - 20:31:30', 1, 'duynguyen', '01021985', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin`
--

CREATE TABLE `thongtin` (
  `id` bigint(20) NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `noidung` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `admin` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `banner` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `banner2` varchar(1000) NOT NULL,
  `facebook` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `zalo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` varchar(1000) NOT NULL,
  `logo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `danhmuc1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `danhmuc2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `danhmuc3` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thongtin`
--

INSERT INTO `thongtin` (`id`, `title`, `noidung`, `admin`, `banner`, `banner2`, `facebook`, `zalo`, `sdt`, `logo`, `danhmuc1`, `danhmuc2`, `danhmuc3`) VALUES
(1, 'Dịch Vụ Tạo Website Hàng Đầu VN', 'Chuyên thiết kế website Bán Acc Game, chuẩn SEO, chuyên nghiệp, tích hợp công nghệ CHỐNG CLICK TẶC ADWORD ✅. Đội ngũ hỗ trợ nhiệt tình nhất', 'Zun Coder', 'https://hoangvanlinh.vn//assets/img/slide2.jpg?v2', 'https://hoangvanlinh.vn/assets/img/slide1.jpg?v1', 'https://facebook.com/100079383302478 ', 'https://zalo.me/0972958757', '0347182656', 'J', '/images/taotrangweb.png', '/images/thumbnail-sourcecode.f316729f.svg', 'https://i.upanh.org/2021/05/25/thumbnail-mien.d3285a9d.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `tien` bigint(20) NOT NULL,
  `chucvu` bigint(20) NOT NULL,
  `email` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `avatar` varchar(1000) COLLATE utf8_vietnamese_ci NOT NULL,
  `time` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `band` int(11) NOT NULL,
  `reset_pass_code` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `reset_pass_expire` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `taikhoan`, `matkhau`, `tien`, `chucvu`, `email`, `avatar`, `time`, `band`, `reset_pass_code`, `reset_pass_expire`) VALUES
(4, 'hxukakkdex', 'hxukakkdex', 500, 9, 'C23121312@gmail.com', '/public/images/avatar.png', '29/03/2022 - 09:44:19', 0, '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `automomo`
--
ALTER TABLE `automomo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc1`
--
ALTER TABLE `danhmuc1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhsachcode`
--
ALTER TABLE `danhsachcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giahan_web`
--
ALTER TABLE `giahan_web`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `napthe`
--
ALTER TABLE `napthe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taoweb`
--
ALTER TABLE `taoweb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `automomo`
--
ALTER TABLE `automomo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `danhmuc1`
--
ALTER TABLE `danhmuc1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhsachcode`
--
ALTER TABLE `danhsachcode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `giahan_web`
--
ALTER TABLE `giahan_web`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `napthe`
--
ALTER TABLE `napthe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `taoweb`
--
ALTER TABLE `taoweb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
