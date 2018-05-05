-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2018 lúc 04:17 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitaplon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenDichVu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phuongtien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `TenDichVu`, `Gia`, `id_phuongtien`) VALUES
(1, 'Hệ thống phanh', '100', '1'),
(2, 'Động cơ', '200', '1'),
(3, 'Phụ tùng xe', '100', '1'),
(4, 'Hệ thống đèn', '500', '1'),
(5, 'Bảo trì', '90', '1'),
(6, 'Vận hành', '80', '1'),
(7, 'Hệ thống phanh', '100', '2'),
(8, 'Động cơ', '400', '2'),
(9, 'Phụ tùng xe', '600', '2'),
(10, 'Hệ thống đèn', '300', '2'),
(11, 'Bảo trì', '90', '2'),
(12, 'Vận hành', '100', '2'),
(13, 'Hệ thống phanh', '50', '3'),
(14, 'Động cơ', '100', '3'),
(15, 'Phụ tùng xe', '300', '3'),
(16, 'Hệ thống đèn', '100', '3'),
(17, 'Bảo trì', '50', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_15_112204_nhanvien_table', 1),
(4, '2018_04_15_112241_phuongtien_table', 1),
(5, '2018_04_15_112258_dichvu_table', 1),
(6, '2018_04_16_070937_tuyendung_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamSinh` int(4) NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamKinhNghiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChungChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BangCap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(6000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Anh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XepLoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phuongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `Ten`, `GioiTinh`, `NamSinh`, `SDT`, `DiaChi`, `Email`, `NamKinhNghiem`, `ChungChi`, `BangCap`, `MoTa`, `Anh`, `XepLoai`, `id_phuongtien`) VALUES
(1, 'Nguyễn Văn Thiết', 'Nam', 1977, '0240360113', '263 Giải Phóng', 'thiet.nt@gmail.com', '15', 'Chứng chỉ nghề', 'Giỏi', 'abcd', 'anh1.jpg', 'Good', 1),
(2, 'Nguyễn Hải Đăng', 'Nam', 1982, '01678847294', 'Ngõ 100 Đường Trương Định', 'dangnguyenhai@gmail.com', '5', 'Chứng chỉ nghề', 'Khá', 'abcd', 'anh2.jpg', 'Good', 1),
(3, 'Dương Văn Chung', 'Nam', 1974, '106887456', '75 Hồ Tùng Mậu', 'duongvanchung@gmail.com', '20', 'Chứng chỉ nghề', 'Khá', 'abcd', 'anh3.jpg', 'Good', 2),
(4, 'Giáp Tùng Bách', 'Nam', 1989, '024360113', 'số 3 Tạ Quang Bửu', 'bachtung@gmail.com', '2', 'Chứng chỉ nghề', 'Trung bình', 'abcd', 'anh4.jpg', 'Khá', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongtien`
--

CREATE TABLE `phuongtien` (
  `id` int(10) UNSIGNED NOT NULL,
  `TenPhuongTien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongtien`
--

INSERT INTO `phuongtien` (`id`, `TenPhuongTien`) VALUES
(1, 'Oto'),
(2, 'xe máy'),
(3, 'xe đạp điện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyendung`
--

CREATE TABLE `tuyendung` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamSinh` int(4) NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamKinhNghiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChungChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BangCap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(6000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenPhuongTien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nguon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BanBe',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tuyendung`
--

INSERT INTO `tuyendung` (`id`, `Ten`, `GioiTinh`, `NamSinh`, `SDT`, `DiaChi`, `Email`, `NamKinhNghiem`, `ChungChi`, `BangCap`, `MoTa`, `TenPhuongTien`, `Nguon`, `updated_at`, `created_at`) VALUES
(1, 'Nguyễn Văn Minh', 'Nam', 1970, '0240360119', '263 Giải Phóng', 'minh.nt@gmail.com', '6', 'Chứng chỉ nghề', 'Giỏi', 'abcd', 'xe máy', 'FaceBook', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Nguyễn Hải Hòa', 'Nam', 1989, '01678844564', 'Ngõ 100 Đường Trương Định', 'hoanguyenhai@gmail.com', '5', 'Chứng chỉ nghề', 'Khá', 'abcd', 'xe máy', 'Internet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'abcd', 'nữ', 1997, '01686519579', 'Bắc Giang', 'glt97@gmail.com', '3', 'Chứng chỉ nghề', 'Giỏi', 'ád', 'Xe đạp điện', 'BanBe', '2018-04-16 10:30:26', '2018-04-16 10:30:26'),
(5, 'Nguyễn Văn Nam', 'Nam', 1997, '0167884790', 'Bắc Giang', 'namnv97@gmail.com', '5', 'Chứng chỉ nghề', 'Giỏi', 'Thợ tay nghề cao', 'o to', 'BanBe', '2018-04-16 10:33:03', '2018-04-16 10:33:03'),
(6, 'Trần Văn Vinh', 'Nam', 1989, '0807345690', '167 Giải phóng', 'vinhvantran@gmail.com', '12', 'Nghề', 'khá', 'Kinh nghiệm lâu năm, sửa chữa đực hầu hết các phương tiện', 'ô tô', 'Facebook', '2018-04-16 10:38:45', '2018-04-16 10:38:45'),
(8, 'Nguyễn Bỉnh Khiêm', 'Nam', 1985, '0240365119', 'Lê Thanh Nghị', 'khiemnb@gmail.com', '2', 'Nghề phổ thông', 'Khá', 'khong có', 'Xe máy', 'Google', '2018-04-16 10:42:14', '2018-04-16 10:42:14'),
(10, 'Nguyễn Bỉnh Nhân', 'Nam', 1985, '0240365119', 'Lê Thanh Nghị', 'nhannb@gmail.com', '2', 'Nghề phổ thông', 'Khá', 'khong có', 'Xe máy', 'Radio', '2018-04-16 10:43:15', '2018-04-16 10:43:15'),
(11, 'abcgh', 'Nu', 1997, '134098765', '87 Hồ tùng Mậu', 'jhdhdu@gmail.com', '12', 'Chứng chỉ nghề', 'khá', 'không có', 'ô tô', 'Google', '2018-04-16 14:25:33', '2018-04-16 14:25:33'),
(12, 'Nguyễn Thị Thiết', 'Nam', 1982, '01678845295', '56 Giải Phóng', 'thietnguyenvan@gmail.com', '23', 'Giỏi', 'Giỏi', 'không có', 'ô tô', 'Facebook', '2018-04-16 14:29:19', '2018-04-16 14:29:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Giáp Thị Lý', 'giaply97@gmail.com', '$2y$10$bhU1gtAa.loh4nIF5qRwzOTtNz/D4i5QdgObagfb4LEm7olRzLZqm', '1fNxQx0sqDAPEMWyLoi2V6lOkQxRhie5MMcKYccFM0Con3ODsfAb6wgLZD90', '2018-04-16 00:52:15', NULL),
(2, 'User_1', 'user_1@gmail.com', '$2y$10$zZrc/e371mEV8iwGbdXRAO4NXSUtkibkZ1.Ooq8f8//SEnZcc9l8e', NULL, '2018-04-16 00:52:16', NULL),
(3, 'User_2', 'user_2@gmail.com', '$2y$10$oCAcT6.MPCzkNNPm.MZTUuIB.658y2o9qKjTDx22sVQaCRz4cNcN2', NULL, '2018-04-16 00:52:16', NULL),
(4, 'User_3', 'user_3@gmail.com', '$2y$10$7PsbvERaHDW5zxfSRJrRPe2fXQfZL7n7.Quhj21g6KBzWd/bi8IUi', NULL, '2018-04-16 00:52:16', NULL),
(5, 'User_4', 'user_4@gmail.com', '$2y$10$npMP/PXi9L975qF7GObRAOtyNyhQwi7XWDKeVvvvPrCbzCgDrhgJ6', NULL, '2018-04-16 00:52:16', NULL),
(6, 'User_5', 'user_5@gmail.com', '$2y$10$LkDY57X9Onr19NBWnC/ZFeljfIRrxfYpXqm5jHjrW5o0DqstOPs0m', NULL, '2018-04-16 00:52:17', NULL),
(7, 'User_6', 'user_6@gmail.com', '$2y$10$fMzZX.pwxbuNoU0v6xzpNuqRZPwD4sYSsQ5Yq5yZ3fEdoSJrH3Wp.', NULL, '2018-04-16 00:52:17', NULL),
(8, 'User_7', 'user_7@gmail.com', '$2y$10$zNodQNvEecnMVFbGZyJhUugTEMos2J9PANYvUQ8Wue6PuvS6mO53.', NULL, '2018-04-16 00:52:17', NULL),
(9, 'User_8', 'user_8@gmail.com', '$2y$10$4YlbjQH1nJOklqgJzzxKc.oOYifT.KwhFhRBuZEHS6uLPT5jqvDwy', NULL, '2018-04-16 00:52:17', NULL),
(10, 'User_9', 'user_9@gmail.com', '$2y$10$5sY.D7EJWGEhicktHx3DmejygQ0sVhIE4KYltkrByxuBDtKbzPGiO', NULL, '2018-04-16 00:52:18', NULL),
(11, 'User_10', 'user_10@gmail.com', '$2y$10$nveg4hTQwe/ABm3Pltvx4.34oLyd809CHPcj3vP2U3Hx4A.qWgoqq', NULL, '2018-04-16 00:52:18', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nhanvien_email_unique` (`Email`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phuongtien`
--
ALTER TABLE `phuongtien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tuyendung_email_unique` (`Email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phuongtien`
--
ALTER TABLE `phuongtien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
