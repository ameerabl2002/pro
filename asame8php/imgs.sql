-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08 أغسطس 2024 الساعة 22:46
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imgs`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `asem`
-- (See below for the actual view)
--
CREATE TABLE `asem` (
`id_main_section` varchar(3)
,`id_sub_section` varchar(3)
,`id_secondary_section` varchar(3)
,`id_prodact` int(2)
,`name_prodact` varchar(40)
,`price_prodact` varchar(20)
,`location` varchar(20)
,`user_number` varchar(500)
,`number_views` int(2)
,`ad_type` varchar(30)
,`dir_prodact` varchar(400)
,`type_money` varchar(20)
,`img_primary` varchar(50)
,`Delivery` varchar(10)
,`publish_date` varchar(30)
,`id_image` int(11)
,`name_image` varchar(200)
,`id_pro` int(2)
);

-- --------------------------------------------------------

--
-- بنية الجدول `computer_details`
--

CREATE TABLE `computer_details` (
  `id_por` int(10) NOT NULL,
  `graphics_card` varchar(30) NOT NULL,
  `screen_size` varchar(20) NOT NULL,
  `core` varchar(20) NOT NULL,
  `genration` varchar(30) NOT NULL,
  `momery_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `computer_phone_details`
--

CREATE TABLE `computer_phone_details` (
  `id_por` int(10) NOT NULL,
  `color` varchar(100) NOT NULL,
  `momery` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `petary` varchar(30) NOT NULL,
  `conditions` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `imags`
--

CREATE TABLE `imags` (
  `id_image` int(11) NOT NULL,
  `name_image` varchar(200) NOT NULL,
  `id_pro` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `imags`
--

INSERT INTO `imags` (`id_image`, `name_image`, `id_pro`) VALUES
(292, 'img_pro/1000000033.jpg', 141),
(293, 'img_pro/1000000034.jpg', 141),
(294, 'img_pro/1000000035.jpg', 141),
(295, 'img_pro/1000000036.jpg', 141);

-- --------------------------------------------------------

--
-- Stand-in structure for view `mod`
-- (See below for the actual view)
--
CREATE TABLE `mod` (
`id_main_section` varchar(3)
,`id_sub_section` varchar(3)
,`id_secondary_section` varchar(3)
,`id_prodact` int(2)
,`name_prodact` varchar(40)
,`price_prodact` varchar(20)
,`location` varchar(20)
,`user_number` varchar(500)
,`number_views` int(2)
,`ad_type` varchar(30)
,`dir_prodact` varchar(400)
,`type_money` varchar(20)
,`img_primary` varchar(50)
,`Delivery` varchar(10)
,`publish_date` varchar(30)
,`id_pro` int(2)
);

-- --------------------------------------------------------

--
-- بنية الجدول `selling_car_details`
--

CREATE TABLE `selling_car_details` (
  `id_pro` varchar(100) NOT NULL,
  `year` varchar(5) NOT NULL,
  `number_of_seats` varchar(2) NOT NULL,
  `how_walks` varchar(15) NOT NULL,
  `movement_type` varchar(20) NOT NULL,
  `fuel_type` varchar(20) NOT NULL,
  `features` varchar(100) NOT NULL,
  `color_car` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `speci` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `selling_car_details`
--

INSERT INTO `selling_car_details` (`id_pro`, `year`, `number_of_seats`, `how_walks`, `movement_type`, `fuel_type`, `features`, `color_car`, `state`, `speci`) VALUES
('148', '2018', '4', '7754', 'jnjknbjkn', 'jnjkbjk', 'jkbjb', '6876545', 'neo', 'jheeeeee'),
('149', '2011', '', '', '', '', '', '', 'new', ''),
('150', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('151', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('152', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('153', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('154', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('155', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('156', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('157', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('158', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('159', '2011', '2', '1000-20000', 'otmatek', 'oil', 'eoded, usb', '4292886779', 'new', 'خليجي'),
('160', '2010', '2', '20000', 'ade', 'oil', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('161', '2010', '2', '20000', 'ade', 'oil', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('162', '2010', '2', '20000', 'ade', 'oil', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('163', '2011', '2', '20000', 'ade', 'solar', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('164', '2011', '2', '20000', 'ade', 'solar', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('165', '2011', '2', '20000', 'ade', 'solar', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('166', '2011', '2', '20000', 'ade', 'solar', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('167', '2011', '2', '20000', 'ade', 'solar', 'usb, eoded', '4286336511', 'old', 'خليجي'),
('168', '2018', '4', '7754', 'jnjknbjkn', 'jnjkbjk', 'jkbjb', '6876545', 'neo', 'jheeeeee'),
('169', '2010', '2', '1000-20000', 'otmatek', 'solar', 'eoded, frefr, usb', '4285132974', 'new', 'خليجي'),
('170', '2010', '2', '1000-20000', 'otmatek', 'solar', 'eoded, frefr, usb', '4285132974', 'new', 'خليجي');

-- --------------------------------------------------------

--
-- بنية الجدول `selling_clothes_details`
--

CREATE TABLE `selling_clothes_details` (
  `id_por` int(10) NOT NULL,
  `colors` varchar(300) NOT NULL,
  `size` varchar(100) NOT NULL,
  `type_clothes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `selling_clothes_details`
--

INSERT INTO `selling_clothes_details` (`id_por`, `colors`, `size`, `type_clothes`) VALUES
(141, '4294198070, 4283215696, 4283215696', 'small, mediam', 'نص كم'),
(179, '1929379840, 4284955319, 4287349578', 'mediam, large, small', 'كم ظويل'),
(180, '4294951175, 4283215696', 'mediam, large, xlarge', 'كم ظويل'),
(181, '4294951175, 4283215696', 'mediam, xlarge, large', 'كم ظويل');

-- --------------------------------------------------------

--
-- بنية الجدول `table_advertis`
--

CREATE TABLE `table_advertis` (
  `id_main_section` int(1) NOT NULL,
  `id_sub_section` int(2) NOT NULL,
  `id_secondary_section` int(2) NOT NULL,
  `id_advertis` int(5) NOT NULL,
  `name_advertis` varchar(80) NOT NULL,
  `price` int(2) NOT NULL,
  `location` varchar(50) NOT NULL,
  `user_number` int(2) NOT NULL,
  `descrpition` varchar(250) NOT NULL,
  `color` varchar(200) NOT NULL,
  `num_viewers` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `table_main`
--

CREATE TABLE `table_main` (
  `id_main_section` int(2) NOT NULL,
  `name_main_section` varchar(50) NOT NULL,
  `name_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `table_main`
--

INSERT INTO `table_main` (`id_main_section`, `name_main_section`, `name_img`) VALUES
(1, 'مركبات', '1000040621.jpg'),
(2, 'ملابس رجالية', '1000041684.jpg'),
(3, 'ملابس نسائية', '1000041685.png'),
(4, 'الاثاث ', '1000041687.webp'),
(5, 'كمبويتر-لابتوب', '1000041686.png');

-- --------------------------------------------------------

--
-- بنية الجدول `table_products`
--

CREATE TABLE `table_products` (
  `id_main_section` varchar(3) NOT NULL,
  `id_sub_section` varchar(3) NOT NULL,
  `id_secondary_section` varchar(3) NOT NULL,
  `id_prodact` int(2) NOT NULL,
  `name_prodact` varchar(40) NOT NULL,
  `price_prodact` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `user_number` varchar(500) NOT NULL,
  `number_views` int(2) NOT NULL,
  `ad_type` varchar(30) NOT NULL,
  `dir_prodact` varchar(400) NOT NULL,
  `type_money` varchar(20) NOT NULL,
  `img_primary` varchar(50) NOT NULL,
  `Delivery` varchar(10) NOT NULL,
  `publish_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `table_products`
--

INSERT INTO `table_products` (`id_main_section`, `id_sub_section`, `id_secondary_section`, `id_prodact`, `name_prodact`, `price_prodact`, `location`, `user_number`, `number_views`, `ad_type`, `dir_prodact`, `type_money`, `img_primary`, `Delivery`, `publish_date`) VALUES
('1', '1', '1', 143, 'dfgvbn', 'rtyhj', 'yghjkl', 'yy', 100, 'vip', 'fvb', 'ghhg', 'prodact/imageprodact/img_car/7598use.png', 'yes', '8/2/2014'),
('1', '1', '8', 144, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/86661000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 145, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/75291000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 146, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/83701000000033.jpg', 'yes', '8/2/2014'),
('1', '2', '1', 147, 'dfgvbn', 'rtyhj', 'yghjkl', 'yy', 100, 'vip', 'fvb', 'ghhg', 'prodact/imageprodact/img_car/6037use.png', 'yes', '8/2/2014'),
('1', '2', '1', 148, 'dfgvbn', 'rtyhj', 'yghjkl', 'yy', 100, 'vip', 'fvb', 'ghhg', 'prodact/imageprodact/img_car/3423use.png', 'yes', '8/2/2014'),
('1', '1', '8', 149, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/87561000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 150, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/97001000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 151, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/16731000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 152, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/65361000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 153, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/91611000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 154, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/18021000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 155, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/58831000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 156, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/44621000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 157, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/36991000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 158, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/45611000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 159, '', '', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/82051000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 160, '', '', 'صنعاء', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/35421000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 161, '', '', 'صنعاء', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/43871000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 162, '', '', 'صنعاء', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', '', 'يمني ', 'prodact/imageprodact/img_car/17861000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 163, 'dddddddddddddddddd', '433', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ddddddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_car/18961000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 164, 'dddddddddddddddddd', '433', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ddddddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_car/67741000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 165, 'dddddddddddddddddd', '433', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ddddddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_car/73641000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 166, 'dddddddddddddddddd', '433', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ddddddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_car/69261000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 167, 'dddddddddddddddddd', '433', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ddddddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_car/94981000000033.jpg', 'yes', '8/2/2014'),
('1', '2', '1', 168, 'dfgvbn', 'rtyhj', 'yghjkl', 'yy', 100, 'vip', 'fvb', 'ghhg', 'prodact/imageprodact/img_car/6679use.png', 'yes', '8/2/2014'),
('1', '1', '8', 169, 'aaaaaaaaaaaaaaaaaaaaa', '333', 'تعز', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ssssssssssssssssssss', 'سعودي', 'prodact/imageprodact/img_car/89681000000033.jpg', 'yes', '8/2/2014'),
('1', '1', '8', 170, 'aaaaaaaaaaaaaaaaaaaaa', '333', 'تعز', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'ssssssssssssssssssss', 'سعودي', 'prodact/imageprodact/img_car/21451000000033.jpg', 'yes', '8/2/2014'),
('1', '2', '', 171, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_car/48601000000034.jpg', 'yes', '8/2/2014'),
('1', '1', '1', 172, 'dfgvbn', 'rtyhj', 'yghjkl', 'yy', 100, 'vip', 'fvb', 'ghhg', 'prodact/imageprodact/img_car/8255use.png', 'yes', '8/2/2014'),
('1', '2', '0', 173, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_stander/64091000000034.jp', 'yes', '8/2/2014'),
('1', '2', '0', 174, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_stander/27951000000034.jp', 'yes', '8/2/2014'),
('1', '2', '0', 175, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_stander/55411000000034.jp', 'yes', '8/2/2014'),
('1', '2', '0', 176, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_stander/20051000000034.jp', 'yes', '8/2/2014'),
('1', '2', '0', 177, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_stander/90361000000034.jp', 'yes', '8/2/2014'),
('1', '2', '0', 178, 'dsdsssssssssssss', '111', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddd', 'سعودي', 'prodact/imageprodact/img_stander/68541000000034.jp', 'yes', '8/2/2014'),
('2', '7', '', 179, '3333333ddddddddddddddddd', '2121', 'عدن', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'dddddddddddddddddddddddddddd', 'يمني ', 'prodact/imageprodact/img_clothes/42781000000033.jp', 'yes', '8/2/2014'),
('2', '7', '0', 180, 'aaaaaaaaaaaaaaaaaaaa', '3232', 'تعز', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'aaaaaaaaaaaaaaaaaaaaaaaa', 'سعودي', 'prodact/imageprodact/img_clothes/50771000000033.jp', 'yes', '8/2/2014'),
('2', '7', '0', 181, 'aaaaaaaaaaaaaaaaaaaa', '3232', 'تعز', 'O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 100, 'vip', 'aaaaaaaaaaaaaaaaaaaaaaaa', 'سعودي', 'prodact/imageprodact/img_clothes/96111000000033.jp', 'yes', '8/2/2014');

-- --------------------------------------------------------

--
-- بنية الجدول `table_secondary`
--

CREATE TABLE `table_secondary` (
  `id_main_section` int(2) NOT NULL,
  `id_sub_section` int(3) NOT NULL,
  `id_secondary_section` int(3) NOT NULL,
  `name_secondary_section` varchar(50) NOT NULL,
  `name_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `table_secondary`
--

INSERT INTO `table_secondary` (`id_main_section`, `id_sub_section`, `id_secondary_section`, `name_secondary_section`, `name_img`) VALUES
(5, 3, 1, 'apple', '1000041686.png'),
(1, 1, 8, 'تويوتا', '1000043007.jpg'),
(1, 1, 9, 'مرسيدس ', '1000043006.jpg'),
(1, 1, 10, 'لكزس', '1000043008.jpg'),
(1, 2, 11, 'قطع غيار تعديل', '1000043005.jpg'),
(1, 2, 12, 'قطع غيار ميكانيك', '1000043004.jpg'),
(1, 2, 13, 'قطع غيار هيكل', '1000043003.webp');

-- --------------------------------------------------------

--
-- بنية الجدول `table_sub`
--

CREATE TABLE `table_sub` (
  `id_main_section` int(11) NOT NULL,
  `id_sub_section` int(11) NOT NULL,
  `name_sub_section` varchar(200) NOT NULL,
  `name_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `table_sub`
--

INSERT INTO `table_sub` (`id_main_section`, `id_sub_section`, `name_sub_section`, `name_img`) VALUES
(1, 1, 'سيارات للبيع', '1000041705.jpg'),
(1, 2, 'قطع غيار سيارات', '1000041704.jpg'),
(5, 3, 'لابتوب ', '1000041686.png'),
(2, 7, 'قسم القمصان', '1000069745.jpg'),
(2, 8, 'قسم البناطيل', '1000069746.jpg'),
(2, 9, 'قسم الساعات ', '1000069747.jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id_user` varchar(300) NOT NULL,
  `name_user` varchar(50) NOT NULL,
  `phone_user` varchar(10) NOT NULL,
  `date_user` timestamp NOT NULL DEFAULT current_timestamp(),
  `number_followers` int(11) NOT NULL,
  `evalution_user` varchar(100) NOT NULL,
  `img_user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `phone_user`, `date_user`, `number_followers`, `evalution_user`, `img_user`) VALUES
('O0GJlOJG40g8yNtuOOGsZ7WVLBz1', 'mod', '737392933', '2024-08-04 00:25:12', 0, '0', 'users/imageuser/9147IMG-20240730-WA0009.jpg'),
('6', 'lami', '737957565', '2024-08-05 17:02:13', 0, '0', 'users/imageuser/3023pla.png');

-- --------------------------------------------------------

--
-- بنية الجدول `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `asem`
--
DROP TABLE IF EXISTS `asem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asem`  AS SELECT `table_products`.`id_main_section` AS `id_main_section`, `table_products`.`id_sub_section` AS `id_sub_section`, `table_products`.`id_secondary_section` AS `id_secondary_section`, `table_products`.`id_prodact` AS `id_prodact`, `table_products`.`name_prodact` AS `name_prodact`, `table_products`.`price_prodact` AS `price_prodact`, `table_products`.`location` AS `location`, `table_products`.`user_number` AS `user_number`, `table_products`.`number_views` AS `number_views`, `table_products`.`ad_type` AS `ad_type`, `table_products`.`dir_prodact` AS `dir_prodact`, `table_products`.`type_money` AS `type_money`, `table_products`.`img_primary` AS `img_primary`, `table_products`.`Delivery` AS `Delivery`, `table_products`.`publish_date` AS `publish_date`, `imags`.`id_image` AS `id_image`, `imags`.`name_image` AS `name_image`, `imags`.`id_pro` AS `id_pro` FROM (`table_products` join `imags`) WHERE `table_products`.`id_prodact` = `imags`.`id_pro``id_pro`  ;

-- --------------------------------------------------------

--
-- Structure for view `mod`
--
DROP TABLE IF EXISTS `mod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mod`  AS SELECT `table_products`.`id_main_section` AS `id_main_section`, `table_products`.`id_sub_section` AS `id_sub_section`, `table_products`.`id_secondary_section` AS `id_secondary_section`, `table_products`.`id_prodact` AS `id_prodact`, `table_products`.`name_prodact` AS `name_prodact`, `table_products`.`price_prodact` AS `price_prodact`, `table_products`.`location` AS `location`, `table_products`.`user_number` AS `user_number`, `table_products`.`number_views` AS `number_views`, `table_products`.`ad_type` AS `ad_type`, `table_products`.`dir_prodact` AS `dir_prodact`, `table_products`.`type_money` AS `type_money`, `table_products`.`img_primary` AS `img_primary`, `table_products`.`Delivery` AS `Delivery`, `table_products`.`publish_date` AS `publish_date`, `imags`.`id_pro` AS `id_pro` FROM (`table_products` join `imags`) WHERE `table_products`.`id_prodact` = `imags`.`id_pro` AND `imags`.`id_pro` = 141141  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `computer_details`
--
ALTER TABLE `computer_details`
  ADD PRIMARY KEY (`id_por`);

--
-- Indexes for table `computer_phone_details`
--
ALTER TABLE `computer_phone_details`
  ADD PRIMARY KEY (`id_por`);

--
-- Indexes for table `imags`
--
ALTER TABLE `imags`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `table_advertis`
--
ALTER TABLE `table_advertis`
  ADD PRIMARY KEY (`id_advertis`);

--
-- Indexes for table `table_main`
--
ALTER TABLE `table_main`
  ADD PRIMARY KEY (`id_main_section`);

--
-- Indexes for table `table_products`
--
ALTER TABLE `table_products`
  ADD PRIMARY KEY (`id_prodact`);

--
-- Indexes for table `table_secondary`
--
ALTER TABLE `table_secondary`
  ADD PRIMARY KEY (`id_secondary_section`);

--
-- Indexes for table `table_sub`
--
ALTER TABLE `table_sub`
  ADD PRIMARY KEY (`id_sub_section`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imags`
--
ALTER TABLE `imags`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `table_advertis`
--
ALTER TABLE `table_advertis`
  MODIFY `id_advertis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_main`
--
ALTER TABLE `table_main`
  MODIFY `id_main_section` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `table_products`
--
ALTER TABLE `table_products`
  MODIFY `id_prodact` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `table_secondary`
--
ALTER TABLE `table_secondary`
  MODIFY `id_secondary_section` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table_sub`
--
ALTER TABLE `table_sub`
  MODIFY `id_sub_section` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
