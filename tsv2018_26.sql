-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 03, 2018 lúc 03:18 AM
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
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id_Card` varchar(12) NOT NULL,
  `id_member` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id_member` varchar(8) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(120) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `dayofbirth` date NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `ID_UG` varchar(8) NOT NULL,
  `ID_WP` varchar(8) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id_member`, `password`, `name`, `sex`, `dayofbirth`, `phone`, `ID_UG`, `ID_WP`, `balance`) VALUES
('iadmin', '21232f297a57a5a743894a0e4a801fc3', 'Initial Admin', 'nam', '1996-02-06', 1224099996, '1', 'DI', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pay_member` varchar(8) NOT NULL,
  `id_collect_member` varchar(8) NOT NULL,
  `amountofmoney` int(11) NOT NULL,
  `type_payment` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(2, 'Trần Tân Định', 'DI1496A1', '1996-01-01 00:00:00'),
(3, 'Trương Tú Oanh', 'DI1496A1', '1996-01-01 00:00:00'),
(4, 'Lê Minh Luân', 'DI1496A1', '1996-01-01 00:00:00'),
(5, 'Nguyễn Tấn Phát', 'DI1496A1', '1996-01-01 00:00:00'),
(6, 'Trịnh Văn Linh', 'DI1496A1', '1996-01-01 00:00:00'),
(7, 'Huỳnh Hoàng Thơ', 'DI1496A1', '1996-01-01 00:00:00'),
(8, 'Trần Đăng Tiến', 'DI1496A1', '1996-01-01 00:00:00'),
(9, 'Võ Thành Trung', 'DI1496A1', '1996-01-01 00:00:00'),
(10, 'Trương Vũ Trường', 'DI1496A1', '1996-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usergroups`
--

CREATE TABLE `usergroups` (
  `ID_UG` varchar(8) NOT NULL,
  `Name_UG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `usergroups`
--

INSERT INTO `usergroups` (`ID_UG`, `Name_UG`) VALUES
('1', 'Initial admin'),
('2', 'Admin'),
('3', 'Deposit staff'),
('4', 'service staff'),
('5', 'student/lecturer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `workplaces`
--

CREATE TABLE `workplaces` (
  `ID_WP` varchar(8) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `workplaces`
--

INSERT INTO `workplaces` (`ID_WP`, `description`) VALUES
('A1', 'Nha hoc A1'),
('A3', 'Nha hoc A3'),
('B1', 'Nha hoc B1'),
('C1', 'Nha hoc C1'),
('C2', 'Nha hoc C2'),
('CN', 'Khoa CN'),
('DB', 'Khoa DBDT'),
('DI', 'Khoa CNTT&TT'),
('HA', 'Khoa PTNT'),
('HL', 'TTHL'),
('KH', 'Khoa KHTN'),
('KT', 'Khoa KT-QTKD'),
('MT', 'Khoa KHCT'),
('MTN', 'Khoa MT&TNTN'),
('NDH', 'Nha dieu hanh'),
('NN', 'Khoa NN&SHUD'),
('SH', 'Vien NC&PTCNSH'),
('TS', 'Khoa TS'),
('XH', 'Khoa KHXHNV');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id_Card`),
  ADD KEY `id_member` (`id_member`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `ID_WP` (`ID_WP`),
  ADD KEY `ID_UG` (`ID_UG`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`date_time`,`id_pay_member`),
  ADD KEY `id_pay_member` (`id_pay_member`),
  ADD KEY `id_collect_member` (`id_collect_member`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`ID_UG`);

--
-- Chỉ mục cho bảng `workplaces`
--
ALTER TABLE `workplaces`
  ADD PRIMARY KEY (`ID_WP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `members` (`id_member`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`ID_WP`) REFERENCES `workplaces` (`id_wp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `members_ibfk_2` FOREIGN KEY (`ID_UG`) REFERENCES `usergroups` (`id_ug`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`id_pay_member`) REFERENCES `members` (`id_member`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`id_collect_member`) REFERENCES `members` (`id_member`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
