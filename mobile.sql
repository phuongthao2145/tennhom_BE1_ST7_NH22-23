-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 02:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL,
  `manu_name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Microsoft'),
(3, 'Sony'),
(4, 'SamSung'),
(5, 'Oppo');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(45, 'Điện thoại iPhone 6s Plus 128GB', 1, 1, 27490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 1, '2020-10-21 17:00:00'),
(46, 'Điện thoại iPhone 6s Plus 64GB', 1, 1, 24490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 1, '2016-04-28 17:00:00'),
(47, 'Điện thoại Sony Xperia Z5 Premium Dual\n', 3, 1, 19990000, 'sony-xperia-z5-premium-detail-400x460.png', 'Màn hình:	IPS-LCD, 5.5\", 2160 x 3840 Pixels\r\nCamera sau:	23 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	3430 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-01 17:00:00'),
(48, 'Điện thoại Sony Xperia Z5 Compact', 3, 1, 14990000, 'sony-xperia-z5-premium-detail-400x460.png', 'Màn hình:	IPS-LCD, 5.5\", 2160 x 3840 Pixels\r\nCamera sau:	23 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	3430 mAh\n\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-04-28 17:00:00'),
(49, 'Điện thoại iPhone 6s Plus 16GB', 1, 1, 19490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 1, '2016-01-07 17:00:00'),
(50, 'Điện thoại iPhone 6s 128GB', 1, 1, 20490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-07 17:00:00'),
(51, 'Điện thoại iPhone 6s 64GB', 1, 1, 18490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-02 17:00:00'),
(52, 'Điện thoại iPhone 6s 16GB', 1, 1, 14490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-02 17:00:00'),
(53, 'Điện thoại iPhone 5s Plus 128GB', 1, 1, 17490000, 'iphone-5s-16gb-6-400x460.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-02 17:00:00'),
(54, 'Điện thoại iPhone 5s 128GB', 1, 1, 8490000, 'iphone-5s-16gb-6-400x460.png', 'Màn hình:	Retina HD, 5.5\", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-04 17:00:00'),
(55, 'Điện thoại Microsoft Lumia 950 XL', 2, 1, 16000000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 1, '2016-04-28 17:00:00'),
(56, 'Điện thoại Microsoft Lumia 950', 2, 1, 14000000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-03 17:00:00'),
(57, 'Điện thoại Microsoft Lumia 650 XL', 2, 1, 4600000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 1, '2016-01-09 17:00:00'),
(58, 'Điện thoại Microsoft Lumia 650', 2, 1, 3700000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-04-28 17:00:00'),
(59, 'Điện thoại Microsoft Lumia 550', 2, 1, 3000000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-03 17:00:00'),
(60, 'Điện thoại Microsoft Lumia 535', 2, 1, 2400000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-03 17:00:00'),
(61, 'Điện thoại Microsoft Lumia 430', 2, 1, 1600000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-02 17:00:00'),
(62, 'Điện thoại OPPO R7 Plus', 5, 1, 11500000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0\", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-03 17:00:00'),
(63, 'Điện thoại OPPO R7s', 5, 1, 9500000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0\", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-02 17:00:00'),
(64, 'Điện thoại OPPO F1', 5, 1, 6400000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0\", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-04-28 17:00:00'),
(65, 'Điện thoại OPPO Neo7', 5, 1, 4000000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0\", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-07 17:00:00'),
(66, 'Điện thoại OPPO R7 Lite', 5, 1, 6500000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0\", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2015-12-31 17:00:00'),
(67, 'Điện thoại Samsung Galaxy S6 Edge Plus', 4, 1, 20000000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-07 17:00:00'),
(68, 'Điện thoại Samsung Galaxy S6 Edge 64GB', 4, 1, 18500000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-04 17:00:00'),
(69, 'Điện thoại Samsung Galaxy Note 5', 4, 1, 18000000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-03 17:00:00'),
(70, 'Điện thoại Samsung Galaxy S6 Edge 32GB', 4, 1, 17500000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-03 17:00:00'),
(71, 'Điện thoại Samsung Galaxy S6 32GB', 4, 1, 14500000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7\", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-07 17:00:00'),
(72, 'iPad Pro 3G 128GB', 1, 2, 26999000, 'ipad-pro-wifi-cellular-128gb-300-200x200.jpg', 'iPad Pro được trang bị màn hình 12.9 inch, lớn nhất từ trước đến nay đối với các sản phẩm tablet phổ biến Apple trang bị cho iPad Pro vi xử lý A9X có hiệu năng cực kỳ mạnh mẽ và khả năng xử lý đồ họa vượt trội Camera iSign 8.0MP và camera Facetime 1.2MP đảm bảo chất lượng ảnh chụp cũng như video call', 1, '2016-04-28 17:00:00'),
(73, 'iPad Pro wifi 32GB', 1, 2, 19999000, 'ipad-pro-wifi-cellular-128gb-300-200x200.jpg', 'iPad Pro được trang bị màn hình 12.9 inch, lớn nhất từ trước đến nay đối với các sản phẩm tablet phổ biến Apple trang bị cho iPad Pro vi xử lý A9X có hiệu năng cực kỳ mạnh mẽ và khả năng xử lý đồ họa vượt trội Camera iSign 8.0MP và camera Facetime 1.2MP đảm bảo chất lượng ảnh chụp cũng như video call', 1, '2016-04-27 17:00:00'),
(85, 'test2', 5, 2, 123, '2.jpg', 'test2', 1, '2022-12-17 00:30:14'),
(86, 'test4 updated', 2, 4, 123456, '3.jpg', '                                                                        test3                                                                ', 0, '2022-12-17 00:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Cellphone'),
(2, 'Tablet'),
(3, 'Laptop'),
(4, 'Speaker');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'editor'),
(4, 'member'),
(5, 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8 NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `pass`, `role_id`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 1),
(2, 'user1', 'e10adc3949ba59abbe56e057f20f883e', 2),
(3, 'guest', 'e10adc3949ba59abbe56e057f20f883e', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maloai` (`manu_id`);

--
-- Indexes for table `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
