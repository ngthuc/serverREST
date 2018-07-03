-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 03, 2018 lúc 04:18 AM
-- Phiên bản máy phục vụ: 8.0.11
-- Phiên bản PHP: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tsv2018_26`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `dob` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `name`, `class`, `dob`) VALUES
(1, 'Phạm Hoài An', 'DI1496A1', '1996-01-01 00:00:00'),
(2, 'Nguyễn Tấn Cường', 'DI1496A1', '1996-03-26 00:00:00'),
(4, 'Lê Minh Luân', 'DI1496A1', '1996-01-01 00:00:00'),
(5, 'Nguyễn Tấn Phát', 'DI1496A1', '1996-01-01 00:00:00'),
(6, 'Trịnh Văn Linh', 'DI1496A1', '1996-01-01 00:00:00'),
(7, 'Huỳnh Hoàng Thơ', 'DI1496A1', '1996-01-01 00:00:00'),
(8, 'Trần Đăng Tiến', 'DI1496A1', '1996-01-01 00:00:00'),
(9, 'Võ Thành Trung', 'DI1496A1', '1996-01-01 00:00:00'),
(10, 'Trương Vũ Trường', 'DI1496A1', '1996-01-01 00:00:00'),
(11, 'Vũ Trúc Quân', 'DI1496A1', '1995-03-26 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
