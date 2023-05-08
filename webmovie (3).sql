-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 30, 2023 lúc 07:16 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webmovie`
--
CREATE DATABASE IF NOT EXISTS `webmovie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webmovie`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `actors`
--

INSERT INTO `actors` (`id`, `name`) VALUES
(1, 'Keanu Reeves'),
(2, 'Donnie Yen'),
(3, 'Ian McShane'),
(4, 'Bill Skarsgård'),
(5, 'Laurence Fishburne'),
(6, 'Clancy Brown'),
(7, 'Hiroyuki Sanada'),
(8, 'Lance Reddick'),
(9, 'Shamier Anderson'),
(10, 'Rina Sawayama'),
(11, 'Paul Rudd'),
(12, 'Evangeline Lilly'),
(13, 'Jonathan Majors'),
(14, 'Kathryn Newton'),
(15, 'Michelle Pfeiffer'),
(16, 'Michael Douglas'),
(17, 'Corey Stoll'),
(18, 'Bill Murray'),
(19, 'William Jackson Harper'),
(20, 'David Dastmalchian'),
(21, 'Sam Worthington'),
(22, 'Zoe Saldaña'),
(23, 'Sigourney Weaver'),
(24, 'Britain Dalton'),
(25, 'Stephen Lang'),
(26, 'Jack Champion'),
(27, 'Cliff Curtis'),
(28, 'Kate Winslet'),
(29, 'Joel David Moore'),
(30, 'CCH Pounder'),
(31, 'Letitia Wright'),
(32, 'Lupita Nyong\'o'),
(33, 'Danai Gurira'),
(34, 'Winston Duke'),
(35, 'Dominique Thorne'),
(36, 'Tenoch Huerta Mejía'),
(37, 'Angela Bassett'),
(38, 'Florence Kasumba'),
(39, 'Michaela Coel'),
(40, 'Mabel Cadena'),
(41, 'Zachary Levi'),
(42, 'Asher Angel'),
(43, 'Jack Dylan Grazer'),
(44, 'Adam Brody'),
(45, 'Grace Caroline Currey'),
(46, 'Helen Mirren'),
(47, 'Lucy Liu'),
(48, 'Rachel Zegler'),
(49, 'Meagan Good'),
(50, 'Faithe Herman'),
(51, 'Tse Miu'),
(52, 'Zhang Di'),
(53, 'Gao Weiman'),
(54, 'Xiang Hao'),
(55, 'Ben Liu'),
(56, 'Zhang Haosen'),
(57, 'Gao Yi'),
(58, 'Hou Junjie'),
(59, 'Wang Yanyang'),
(60, 'Li Mengying'),
(61, 'Hummer Zhang'),
(62, 'Rong Erjia'),
(63, 'Kelvin Lee'),
(64, 'Elaine Yi'),
(65, 'Shen Baoping'),
(66, 'Shui Jiang'),
(67, 'Ashin Shu'),
(68, 'Shi Xuejing'),
(69, 'Zhao Yijie'),
(70, 'Wang Meixin'),
(71, 'Han Mengwu'),
(72, 'Su Mao'),
(73, 'Zheng Long'),
(74, 'Peng Bo'),
(75, 'Shi Xuanru'),
(76, 'Sheng Guansen'),
(77, 'Wang Ming'),
(78, 'Lin Fengye'),
(79, 'Anqi Fuhe'),
(80, 'Shi Guohui'),
(81, 'Fu Jun'),
(82, 'Bao Xiaoping'),
(83, 'Han Rui'),
(84, 'Zhang Haifeng'),
(85, 'Wei Jinsong'),
(86, 'Yang Bing'),
(87, 'Wang Yitian'),
(88, 'Wang Meiying'),
(89, 'Xiao Hongpeng'),
(90, 'Bao Yanxi'),
(91, 'Emile Amro'),
(92, 'Liu Lincheng'),
(93, 'Chen Mengqi'),
(94, 'Ning Xiaohua'),
(95, 'Sasha'),
(96, 'Sang Ping'),
(97, 'Liu Weizhou'),
(98, 'Shi Xuanru'),
(99, 'Wang Hongqian'),
(100, 'Wu Hao'),
(101, 'Alan Chen'),
(102, 'Miao Qing'),
(103, 'Chen Minghao'),
(104, 'Jacinda Li'),
(105, 'Jackie Lui Chung-Yin'),
(106, 'Fan Tiantian'),
(107, 'Yang Shufeng'),
(108, 'Bi Xue'),
(109, 'Guo Jianan'),
(110, 'Chin Siu-ho'),
(111, 'Andrew Pong'),
(112, 'Xia Wang'),
(113, 'Hu Yue'),
(114, 'Yang Di'),
(115, 'Wu Lihua'),
(116, 'Han Mengwu'),
(117, 'Li Ping\'an'),
(118, 'Yu Miaoxin'),
(119, 'Chan Ho-Man'),
(120, 'Clara Lee Sung-min'),
(121, 'Li Mengmeng'),
(122, 'Tse Miu'),
(123, 'Shao Yun'),
(124, 'Long Yangyang'),
(125, 'Shi Guohui'),
(126, 'Sun Yuanning'),
(127, 'Canti Lau'),
(128, 'Yue Dongfeng'),
(129, 'Li Binglei'),
(130, 'Gillian Chung'),
(131, 'Henry Prince Mak'),
(132, 'Lin Yo-Wei'),
(133, 'Sun Meinan'),
(134, 'Jiang Mengxuan'),
(135, 'Zhou Luoyi'),
(136, 'Yu Qinghui'),
(137, 'Ariel Ann'),
(138, 'Charles Lin'),
(139, 'Li Chengxi'),
(140, 'Norman Chui'),
(141, 'Tong Xiaomei'),
(142, 'Hou Junjie'),
(143, 'Shi Zhenlong'),
(144, 'Ma Honglei'),
(145, 'Simon Yam'),
(146, 'Irene Wan'),
(147, 'Alfred Cheung Kin-Ting'),
(148, 'Dayo Wong'),
(149, 'Peter Ngo'),
(150, 'Lam Chiu-Wing'),
(151, 'Rico Chung Kai-Cheong'),
(152, 'William Leung Chi-Ming'),
(153, 'Joe Chu Kai-Sang'),
(154, 'James Tsim Tak-Faat'),
(155, 'Sheng Nan'),
(156, 'Zhang Jiahang'),
(157, 'Diana Dai'),
(158, 'Zhang Chunzhong'),
(159, 'Wu Chunyi'),
(160, 'Naomen Eerdeni'),
(161, 'Han Mengwu'),
(162, 'Li Ping\'an'),
(163, 'Li Shi Yan'),
(164, 'Yupeng Chou'),
(165, 'Ma Hui'),
(166, 'Jia Xuming'),
(167, 'Song Ziqiao'),
(168, 'Yun Lan'),
(169, 'Fan Ziqi'),
(170, 'Zhao Hanxue'),
(171, 'Guo Daixin'),
(172, 'David Lam Wai'),
(173, 'Vincent Wan Yeung-Ming'),
(174, 'Wu Yue'),
(175, 'Liu Yan'),
(176, 'Zhang Chunzhong'),
(177, 'Yi Long'),
(178, 'Simpson Tang'),
(179, 'Zhang Kai'),
(180, 'Zhang Mingcan'),
(181, 'Huan Niu'),
(182, 'Cheng Siyu'),
(183, 'Mengmeng Huang'),
(184, 'Zhang Yaqi'),
(185, 'He Landou'),
(186, 'Wang Hanyang'),
(187, 'Bai Xinyi'),
(188, 'Guo Muhan'),
(189, 'Zhang Chunzhong'),
(190, 'Zhou Zhuo'),
(191, 'Wang Luojia'),
(192, 'Zhang Jijun'),
(193, 'Chun Chieh Liu'),
(194, 'Chin Siu-ho'),
(195, 'Guo Donghai'),
(196, 'Andrew Pong'),
(197, 'Jie Luo'),
(198, 'Han Rui'),
(199, 'Gao Hailong'),
(200, 'Xin Yiquan'),
(201, 'Zhang Haifeng'),
(202, 'Zhang Fengjun'),
(203, 'Han Mengwu'),
(204, 'Eddie Peng'),
(205, 'Shawn Yue'),
(206, 'Ni Ni'),
(207, 'Oho Ou'),
(208, 'Zheng Shuang'),
(209, 'Qiao Shan'),
(210, 'Feihong Yu'),
(211, 'Yang Di'),
(212, 'Quentin Zhang'),
(213, 'Lai Xiaosheng'),
(214, 'Zhang Jiahang'),
(215, 'Li Ruoxi'),
(216, 'Yue Dongfeng'),
(217, 'Wang Jiusheng'),
(218, 'Wang Hongqian'),
(219, 'Yu Li'),
(220, 'Wenxue Sun'),
(221, 'Yang Xiaodan'),
(222, 'Wang Haoge'),
(223, 'Jin Yanna'),
(224, 'Chunyu Shanshan'),
(225, 'Eric Wan'),
(226, 'Norman Chui'),
(227, 'Yue Dongfeng'),
(228, 'Sun Yishu'),
(229, 'Zhijie Bai'),
(230, 'Peng Yu Si'),
(231, 'Vivian Xu'),
(232, 'Lin Haoran'),
(233, 'Chen Xianmin'),
(234, 'Chen Yuyong'),
(235, 'Chen Jing'),
(236, 'Liu Yuting'),
(237, 'Sawa Suzuki'),
(238, 'Reiko Kataoka'),
(239, 'Aya Sugimoto'),
(240, 'Hiromitsu Suzuki'),
(241, 'Tomorowo Taguchi'),
(242, 'Takashi Matsuo'),
(243, 'Toshi Shioya'),
(244, 'Suzuki Matsuo'),
(245, 'Yoshihiko Hakamada'),
(246, 'Shinji Takeda'),
(247, 'Jo In-sung'),
(248, 'Ju Jin-mo'),
(249, 'Song Ji-hyo'),
(250, 'Shim Ji-ho'),
(251, 'Seo Young-joo'),
(252, 'Hyun Woo'),
(253, 'Cho Jin-woong'),
(254, 'Lim Ju-hwan'),
(255, 'Yeo Wook-hwan'),
(256, 'Song Joong-ki'),
(257, '文松'),
(258, 'Jia Bing'),
(259, 'Cui Zhijia'),
(260, 'Zhang Zidong'),
(261, 'Du Jianqiao'),
(262, '杨皓宇'),
(263, 'Fan Siu-wong'),
(264, 'Li Muyun'),
(265, 'Wang Gang'),
(266, 'Chen Yiming'),
(267, 'Zeng Chen'),
(268, 'Liu Chenglong'),
(269, 'Cao Yangming'),
(270, 'Moe Sakura'),
(271, 'Takeshi Itō'),
(272, 'Takuji Suzuki'),
(273, 'Ryumei Homura'),
(274, 'Bunmei Tobayama'),
(275, 'Kazuhiro Sano'),
(276, 'Tomohiro Okada'),
(277, 'Kazuya Sasaki'),
(278, 'Yumi Yoshiyuki'),
(279, 'Yukiko Izumi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actor_detail`
--

CREATE TABLE `actor_detail` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `actor_detail`
--

INSERT INTO `actor_detail` (`movie_id`, `actor_id`) VALUES
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(35, 1),
(35, 6),
(35, 2),
(35, 7),
(35, 8),
(36, 1),
(36, 2),
(36, 9),
(36, 7),
(36, 8),
(37, 1),
(37, 2),
(37, 7),
(37, 8),
(38, 1),
(38, 6),
(38, 2),
(38, 9),
(38, 8),
(39, 10),
(39, 11),
(39, 4),
(39, 12),
(40, 10),
(40, 11),
(40, 8),
(41, 10),
(41, 4),
(41, 13),
(41, 8),
(42, 14),
(42, 10),
(42, 11),
(42, 8),
(43, 2),
(43, 9),
(43, 4),
(43, 13),
(43, 8),
(44, 14),
(44, 10),
(44, 11),
(44, 4),
(44, 13),
(45, 14),
(45, 10),
(45, 11),
(45, 6),
(46, 10),
(46, 4),
(46, 13),
(46, 8),
(47, 14),
(47, 4),
(47, 13),
(47, 7),
(47, 8),
(48, 11),
(48, 4),
(48, 8),
(48, 12),
(49, 14),
(49, 11),
(49, 4),
(49, 13),
(49, 8),
(50, 10),
(50, 11),
(50, 5),
(50, 15),
(50, 8),
(51, 10),
(51, 11),
(51, 4),
(51, 13),
(51, 7),
(52, 10),
(52, 11),
(52, 5),
(52, 15),
(52, 8),
(53, 10),
(53, 11),
(53, 5),
(53, 15),
(53, 8),
(54, 16),
(54, 10),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(54, 15),
(55, 10),
(55, 11),
(55, 5),
(55, 15),
(55, 8),
(56, 10),
(56, 11),
(56, 5),
(56, 15),
(56, 8),
(57, 10),
(57, 11),
(57, 12),
(58, 10),
(58, 11),
(58, 4),
(58, 13),
(58, 7),
(58, 8),
(59, 2),
(59, 4),
(59, 13),
(59, 8),
(60, 10),
(60, 11),
(60, 6),
(60, 4),
(60, 8),
(61, 10),
(61, 11),
(61, 4),
(61, 8),
(62, 10),
(62, 11),
(62, 4),
(62, 13),
(62, 8),
(63, 11),
(63, 6),
(63, 4),
(63, 8),
(64, 16),
(64, 10),
(64, 5),
(64, 15),
(65, 16),
(65, 10),
(65, 11),
(65, 5),
(65, 15),
(66, 10),
(66, 6),
(66, 5),
(67, 10),
(67, 11),
(67, 4),
(67, 5),
(67, 15),
(67, 8),
(68, 16),
(68, 10),
(68, 5),
(68, 15),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(35, 1),
(35, 6),
(35, 2),
(35, 7),
(35, 8),
(36, 1),
(36, 2),
(36, 9),
(36, 7),
(36, 8),
(37, 1),
(37, 2),
(37, 7),
(37, 8),
(38, 1),
(38, 6),
(38, 2),
(38, 9),
(38, 8),
(39, 10),
(39, 11),
(39, 4),
(39, 12),
(40, 10),
(40, 11),
(40, 8),
(41, 10),
(41, 4),
(41, 13),
(41, 8),
(42, 14),
(42, 10),
(42, 11),
(42, 8),
(43, 2),
(43, 9),
(43, 4),
(43, 13),
(43, 8),
(44, 14),
(44, 10),
(44, 11),
(44, 4),
(44, 13),
(45, 14),
(45, 10),
(45, 11),
(45, 6),
(46, 10),
(46, 4),
(46, 13),
(46, 8),
(47, 14),
(47, 4),
(47, 13),
(47, 7),
(47, 8),
(48, 11),
(48, 4),
(48, 8),
(48, 12),
(49, 14),
(49, 11),
(49, 4),
(49, 13),
(49, 8),
(50, 10),
(50, 11),
(50, 5),
(50, 15),
(50, 8),
(51, 10),
(51, 11),
(51, 4),
(51, 13),
(51, 7),
(52, 10),
(52, 11),
(52, 5),
(52, 15),
(52, 8),
(53, 10),
(53, 11),
(53, 5),
(53, 15),
(53, 8),
(54, 16),
(54, 10),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(54, 15),
(55, 10),
(55, 11),
(55, 5),
(55, 15),
(55, 8),
(56, 10),
(56, 11),
(56, 5),
(56, 15),
(56, 8),
(57, 10),
(57, 11),
(57, 12),
(58, 10),
(58, 11),
(58, 4),
(58, 13),
(58, 7),
(58, 8),
(59, 2),
(59, 4),
(59, 13),
(59, 8),
(60, 10),
(60, 11),
(60, 6),
(60, 4),
(60, 8),
(61, 10),
(61, 11),
(61, 4),
(61, 8),
(62, 10),
(62, 11),
(62, 4),
(62, 13),
(62, 8),
(63, 11),
(63, 6),
(63, 4),
(63, 8),
(64, 16),
(64, 10),
(64, 5),
(64, 15),
(65, 16),
(65, 10),
(65, 11),
(65, 5),
(65, 15),
(66, 10),
(66, 6),
(66, 5),
(67, 10),
(67, 11),
(67, 4),
(67, 5),
(67, 15),
(67, 8),
(68, 16),
(68, 10),
(68, 5),
(68, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `date`, `movie_id`, `user_id`) VALUES
(1, 'gsfgfdgdfgdfdf', '2023-04-30 00:00:00', 1, 7),
(2, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(3, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(4, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(5, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(6, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(7, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(8, 'ryhrytyryrtyrt', '2023-04-30 00:00:00', 1, 7),
(9, 'gdfgdfg', '2023-04-30 00:00:00', 1, 7),
(10, 'gdfgdfg', '2023-04-30 00:00:00', 1, 7),
(11, 'gdfgdfg', '2023-04-30 00:00:00', 1, 7),
(12, 'fsdfsđ', '2023-04-30 00:00:00', 1, 7),
(15, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(14, 'fsdfsđ', '2023-04-30 00:00:00', 1, 7),
(16, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(17, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(18, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(19, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(20, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(21, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(22, 'gsfgsdfgsfgsdfgf', '2023-04-30 00:00:00', 1, 7),
(23, 'fsdfsdf', '2023-04-30 00:00:00', 1, 7),
(24, 'fsdfsdfsdfsdsdf', '2023-04-30 00:00:00', 1, 7),
(25, 'fsdfsdfsdfsdsdffsdfsdsd', '2023-04-30 00:00:00', 1, 7),
(26, 'fsdfsdfsdfsdsdffsdfsdsdsfsdfsdf', '2023-04-30 00:00:00', 1, 7),
(27, 'Huỳnh Nhật Linh đẹp trai', '2023-04-30 00:00:00', 4, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countrys`
--

CREATE TABLE `countrys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `countrys`
--

INSERT INTO `countrys` (`id`, `name`) VALUES
(1, 'USA'),
(2, 'China'),
(3, 'Việt Nam'),
(4, 'Hong Kong'),
(5, 'Japan'),
(6, 'South Korea');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `episode`
--

INSERT INTO `episode` (`id`, `description`, `name`, `number`, `url`, `movie_id`) VALUES
(1, ' <p><strong>John Wick: Phần 4 – John Wick: Chapter 4</strong> là câu chuyện của John Wick (Keanu Reeves) đã khám phá ra con đường để đánh bại High Table. Nhưng trước khi có thể kiếm được tự do; Wick phải đối đầu với kẻ thù mới với những liên minh hùng mạn', 'John Wick: Phần 42023', 1, 'https://kd.hd-bophim.com/share/5c7768be6ec1b2cd22387346d1bf6388', 1),
(2, ' <p><strong>Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử</strong> nói về Scott Lang và Hope Van Dyne trở lại tiếp tục cuộc phiêu lưu của họ với vai trò Người Kiến và Chiến binh Ong. Cùng với cha mẹ của Hope; họ sẽ có chuyến khám phá Lượng Tử Giới; gặp ', 'Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử2023', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239270&hash=e94f760eb35d74c2&hd=2&autoplay=1', 2),
(3, ' <p><strong>Avatar: Dòng Chảy Của Nước – Avatar: The Way of Water</strong> lấy bối cảnh 10 năm sau những sự kiện xảy ra ở phần đầu tiên. Phim kể câu chuyện về gia đình mới của Jake Sully (Sam Worthington thủ vai) cùng những rắc rối theo sau và bi kịch họ ', 'Avatar: Dòng Chảy Của Nước2022', 1, 'https://kd.hd-bophim.com/share/86ff09548a5c6eff1ec764a28b6c8112', 3),
(4, ' <p><strong>Shazam! Cơn Thịnh Nộ Của Các Vị Thần – Shazam! Fury of the Gods</strong> tiếp tục câu chuyện về cậu thiếu niên Billy Batson; khi đọc thuộc lòng từ ma thuật “SHAZAM!” được biến thành Siêu anh hùng thay thế bản ngã trưởng thành của anh ấy; Shaza', 'Shazam! Cơn Thịnh Nộ Của Các Vị Thần2023', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239266&hash=a71caeb66cf87fba&autoplay=1', 4),
(5, ' <p><strong>Black Adam</strong> do Dwayne Johnson sẽ góp mặt trong tác phẩm hành động – phiêu lưu mới của New Line Cinema; mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này.</p><p>Dưới sự sáng tạo', 'Black Adam2022', 1, 'https://vie.haiphim.com/share/4ba3a8aaad152d230887da6a26610846', 5),
(6, ' <p><strong>Chiến Binh Báo Đen: Wakanda Bất Diệt – Black Panther: Wakanda Forever</strong> nói về Nữ hoàng Ramonda; Shuri; M’Baku; Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’C', 'Chiến Binh Báo Đen: Wakanda Bất Diệt2022', 1, 'https://hd.hdbophim.com/share/018a6e33594cb40f782e50f71cf3c87f', 6),
(7, ' <p><strong>Sơn Tước Ma Thây – Zombie Chickadee (2022)</strong> người huấn luyện chim hàng đầu Mao Sơn Hào phải đối mặt với cuộc tấn công của một loài đột biến trên Đảo Phượng Hoàng. Mọi người biến mất một cách bí ẩn; nỗi sợ hãi bao trùm mọi người. Để tìm', 'Sơn Tước Ma Thây  Zombie Chickadee 2022 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239371&hash=38ce3321c073ba01&hd=2&autoplay=1', 7),
(8, ' <p><strong>Thần Thám Trốn Học – Detective Chen (2022)</strong> một vụ giết người kỳ lạ xảy ra ở trường trung học St. Martin. Hà Mạn Quân; con trai của Bộ trưởng Bộ Quân sự và Chính trị đã chết một cách kỳ lạ. Viên cảnh sát Trần Hổ nhận nhiệm vụ và bí mật', 'Thần Thám Trốn Học  Detective Chen 2022 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239370&hash=7390d0f25a6e471d&autoplay=1', 8),
(9, ' <p><strong>Ma Thổi Đèn: Nam Hải Quy Hư</strong> là bộ phim đầu tiên kể về câu chuyện của nhóm đào mộ của đội trưởng Hồ Bát Nhất. Sau khi rửa tay gác kiếm; họ hỗ trợ người bạn của mình là chú Minh đi đến Biển Đông để trục vớt ngọc trai. Di tích của một qu', 'Ma Thổi Đèn: Nam Hải Quy Hư  Mojin: Return to the South China Sea 2022 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239369&hash=084f65ae2ece0dd3&autoplay=1', 9),
(10, ' <p><strong>Đại Hán Quân Hồn – Army Soul Of The Han Dynasty (2022)</strong> Đông Hán năm kiến quốc đầu tiên;Hung Nô từ phương Bắc lợi dụng lúc thôn tính Tây Vực khống chế cả Con Đường Tơ Lụa; nhà Hán cử Ban Siêu đến Tây Vực mở lại Con Đường Tơ Lụa. Trước ', 'Đại Hán Quân Hồn  Army Soul Of The Han Dynasty 2022 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239368&hash=7f607777b7942a64&autoplay=1', 10),
(11, ' <p><strong>Sự Tích Cá Trích – The Legend of Herring (2022)</strong> nói về Liễu Thiên Chi là đệ tử của Bất Ngôn Môn chuyên hàng yêu diệt ma; tình cờ gặp Tiểu Thanh; một ngư yêu muốn tu luyện thành rồng. Tiểu Thanh đã nói dối rằng cô ấy cũng là một pháp s', 'Sự Tích Cá Trích  Unspoken Stories: The Legend of Herring 2022 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239367&hash=b2e544cd4f6c18e8&autoplay=1', 11),
(12, ' <p><strong>Địch Nhân Kiệt: Mê Cung Long Ẩn – Detective Dee</strong> do Quách Ngọc Long làm đạo diễn; Chu Tử Kiêu làm diễn viên chính. Khi “thuyền ma” tiến vào cảng Hồng Kông; ông chủ để tự bảo vệ mình mà muốn kết thúc vụ án bằng “Thủy tặc loạn”; nhưng Đị', 'Địch Nhân Kiệt: Mê Cung Long Ẩn  Detective Dee 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239366&hash=b6b3c08c19a35940&autoplay=1', 12),
(13, ' <p><strong>Dương Thần: Thái Thượng Vong Tình – Yang Shen Spirit (2023) </strong>là một bộ phim cổ trang ly kỳ và giả tưởng kể về câu chuyện của Triệu Phi Dung; một vị thánh của giáo phái Đại La; người đã cố gắng bằng mọi cách để tìm ra Hồ tộc; bộ tộc ẩn ', 'Dương Thần: Thái Thượng Vong Tình  Yang Shen Spirit 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239365&hash=3cc31f5d0bf8275c&autoplay=1', 13),
(16, ' <p><strong>Quỷ Núi – Wild Ghost (2023)</strong> 20 năm trước; một thiên thạch không gian mang trong mình 3 viên pha lê rơi xuống nhân gian; 20 năm sau sơn quỷ lộ diện dẫn đến bao huyết án; chân tướng bị che giấu lúc đầu dần dần được hé mở…</p> ', 'Quỷ Núi  Wild Ghost 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239359&hash=8e12d53fcef325d2&autoplay=1', 16),
(17, ' <p><strong>Biệt Tích – Ghosted (2023)</strong> anh chàng Cole trúng tiếng sét ái tình với cô gái bí ẩn Sadie; nhưng hết hồn khi phát hiện ra cô là một điệp viên. Trước khi quyết định có nên hẹn hò tiếp không; Cole và Sadie vướng vào cuộc phiêu lưu để cứu', 'Biệt Tích  Ghosted 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239358&hash=6d152fcfb00bab57&hd=2&autoplay=1', 17),
(23, ' <p><strong>Truy Quét Băng Đảng – Black Hunting Operation (2023)</strong> cảnh sát interpol Tần Phong và đồng đội đã chiến đấu mưu trí; dũng cảm với bọn cho vay nặng lãi và các băng nhóm tội phạm; thề sẽ quét sạch bọn chúng. Sau một cuộc đấu tranh gian kh', 'Truy Quét Băng Đảng  Black Hunting Operation 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239346&hash=183e8656fcac32cb&autoplay=1', 23),
(24, ' <p><strong>Khắc Tinh Của Quỷ – The Pope’s Exorcist (2023)</strong> lấy cảm hứng từ những hồ sơ có thật của Cha Gabriele Amorth; Trưởng Trừ Tà của Vatican (Russell Crowe; đoạt giải Oscar®); bộ phim “The Pope’s Exorcist” theo chân Amorth trong cuộc điều tr', 'Khắc Tinh Của Quỷ  The Pope\'s Exorcist 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239345&hash=b109da05cc0f5ded&autoplay=1', 24),
(25, ' <p><strong>Power Rangers: Một Lần và Mãi Mãi – Mighty Morphin Power Rangers: Once &amp; Always (2023)</strong> Sau khi bi kịch xảy ra; một anh hùng trẻ khác thường tiếp nhận vị trí xứng đáng của mình trong Biệt Đội Siêu Nhân để đối mặt với kẻ thù không đ', 'Power Rangers: Một Lần Và Mãi Mãi  Mighty Morphin Power Rangers: Once & Always 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239344&hash=6457443287f59314&autoplay=1', 25),
(30, ' <p><strong>Tri Kỷ – Soulmate (2023)</strong> xoay quanh những thăng trầm trong mối quan hệ và quá trình trưởng thành của Mi So (Kim Da Mi) và Ha Eun (Jeon So Nee); hai người con gái sinh năm 1988 cùng trải qua thời niên thiếu với nhau.</p><p>Thế giới yên', 'Tri Kỷ  Soulmate 2023 ', 1, 'https://vk.com/video_ext.php?oid=790453278&id=456239338&hash=519053696b9186e8&hd=2&autoplay=1', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `genre`
--

INSERT INTO `genre` (`id`, `name`, `description`) VALUES
(1, 'Phim Chiếu Rạp', 'M� t?'),
(2, 'Phim Hành Động', 'M� t?'),
(3, 'Phim Hình Sự', 'M� t?'),
(4, 'Phim Kịch Tính', 'M� t?'),
(5, 'Phim Tâm Lý', 'M� t?'),
(6, 'Phim Hài', 'M� t?'),
(7, 'Phim Phiêu Lưu', 'M� t?'),
(8, 'Phim Viễn Tưởng', 'M� t?'),
(9, 'Phim Khoa Học', 'M� t?'),
(10, 'Phim Chính Kịch', 'M� t?'),
(11, 'Phim Cổ Trang', 'M� t?'),
(12, 'Phim Võ Thuật', 'M� t?'),
(13, 'Phim Kinh Dị', 'M� t?'),
(14, 'Phim Bí Ẩn', 'M� t?'),
(15, 'Phim Tình Cảm', 'M� t?');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genre_detail`
--

CREATE TABLE `genre_detail` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `genre_detail`
--

INSERT INTO `genre_detail` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 6),
(2, 2),
(2, 7),
(2, 8),
(3, 1),
(3, 2),
(3, 9),
(3, 7),
(3, 8),
(4, 1),
(4, 2),
(4, 7),
(4, 8),
(5, 1),
(5, 6),
(5, 2),
(5, 9),
(5, 8),
(6, 11),
(6, 12),
(6, 4),
(6, 5),
(7, 6),
(7, 2),
(8, 2),
(8, 4),
(8, 7),
(9, 15),
(9, 11),
(9, 12),
(9, 2),
(10, 11),
(10, 12),
(10, 5),
(10, 8),
(11, 11),
(11, 12),
(11, 7),
(12, 11),
(12, 12),
(12, 2),
(12, 8),
(13, 11),
(13, 6),
(13, 5),
(14, 11),
(14, 5),
(15, 11),
(15, 12),
(15, 2),
(15, 8),
(16, 6),
(16, 2),
(16, 7),
(16, 5),
(17, 11),
(17, 6),
(17, 5),
(18, 11),
(18, 5),
(19, 11),
(19, 6),
(19, 3),
(19, 5),
(20, 11),
(20, 5),
(21, 11),
(21, 6),
(21, 5),
(22, 11),
(22, 2),
(22, 3),
(22, 5),
(23, 1),
(23, 4),
(24, 2),
(24, 9),
(24, 8),
(25, 11),
(25, 5),
(26, 11),
(26, 5),
(27, 11),
(27, 3),
(27, 5),
(28, 11),
(28, 5),
(29, 1),
(29, 11),
(29, 5),
(30, 11),
(30, 5),
(31, 11),
(31, 3),
(31, 4),
(32, 11),
(32, 5),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(35, 1),
(35, 6),
(35, 2),
(35, 7),
(35, 8),
(36, 1),
(36, 2),
(36, 9),
(36, 7),
(36, 8),
(37, 1),
(37, 2),
(37, 7),
(37, 8),
(38, 1),
(38, 6),
(38, 2),
(38, 9),
(38, 8),
(39, 11),
(39, 4),
(39, 12),
(40, 11),
(40, 8),
(41, 4),
(41, 8),
(42, 11),
(42, 8),
(43, 2),
(43, 9),
(43, 4),
(43, 8),
(44, 11),
(44, 4),
(45, 11),
(45, 6),
(46, 4),
(46, 8),
(47, 4),
(47, 7),
(47, 8),
(48, 11),
(48, 4),
(48, 8),
(48, 12),
(49, 11),
(49, 4),
(49, 8),
(50, 11),
(50, 5),
(50, 15),
(50, 8),
(51, 11),
(51, 4),
(51, 7),
(52, 11),
(52, 5),
(52, 15),
(52, 8),
(53, 11),
(53, 5),
(53, 15),
(53, 8),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(54, 15),
(55, 11),
(55, 5),
(55, 15),
(55, 8),
(56, 11),
(56, 5),
(56, 15),
(56, 8),
(57, 11),
(57, 12),
(58, 11),
(58, 4),
(58, 7),
(58, 8),
(59, 2),
(59, 4),
(59, 8),
(60, 11),
(60, 6),
(60, 4),
(60, 8),
(61, 11),
(61, 4),
(61, 8),
(62, 11),
(62, 4),
(62, 8),
(63, 11),
(63, 6),
(63, 4),
(63, 8),
(64, 5),
(64, 15),
(65, 11),
(65, 5),
(65, 15),
(66, 6),
(66, 5),
(67, 11),
(67, 4),
(67, 5),
(67, 15),
(67, 8),
(68, 5),
(68, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'Tiếng Việt'),
(2, 'Tiếng Anh'),
(3, 'Tiếng Hàn'),
(4, 'Tiếng Trung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `director` varchar(45) NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `tota_epispde` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `url_trailer` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `view` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `date`, `description`, `name`, `director`, `poster`, `status`, `time`, `tota_epispde`, `url_image`, `url_trailer`, `year`, `country_id`, `language_id`, `view`) VALUES
(1, '2023-04-12', 'John Wick: Phần 4 – John Wick: Chapter 4 là câu chuyện của John Wick (Keanu Reeves) đã khám phá ra con đường để đánh bại High Table. Nhưng trước khi có thể kiếm được tự do; Wick phải đối đầu với kẻ thù mới với những liên minh hùng mạnh trên toàn cầu và những lực lượng biến những người bạn cũ thành kẻ thù.', 'John Wick: Phần 42023', 'Chad Stahelski', 'posters/posters157912John-Wick-4.jpg', 'Đã hoàn thành', '169 phút', '1', 'posters/John-Wick-4.jpg', 'https://www.youtube.com/watch?v=yjRHZEUamCc&pp=ygUfSm9obiBXaWNrOiBQaOG6p24gNDIwMjMgdHJhaWxlcg%3D%3D', '2023', 2, 3, 767240),
(2, '2023-04-12', 'Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử nói về Scott Lang và Hope Van Dyne trở lại tiếp tục cuộc phiêu lưu của họ với vai trò Người Kiến và Chiến binh Ong. Cùng với cha mẹ của Hope; họ sẽ có chuyến khám phá Lượng Tử Giới; gặp gỡ những sinh vật mới lạ và bắt đầu cuộc hành trình vào thế giới lượng tử.', 'Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử2023', 'Peyton Reed', 'posters/posters7663441Nguoi-Kien-va-Chien-Binh-Ong-The-Gioi-Luong-Tu.jpg', 'Đã hoàn thành', '125 phút', '1', 'posters/Nguoi-Kien-va-Chien-Binh-Ong-The-Gioi-Luong-Tu.jpg', 'https://www.youtube.com/watch?v=s3UD3qvJdao&pp=ygVMTmfGsOG7nWkgS2nhur9uIFbDoCBDaGnhur9uIEJpbmggT25nOiBUaOG6vyBHaeG7m2kgTMaw4bujbmcgVOG7rTIwMjMgdHJhaWxlcg%3D%3D', '2023', 4, 4, 50186),
(3, '2023-04-12', 'Avatar: Dòng Chảy Của Nước – Avatar: The Way of Water lấy bối cảnh 10 năm sau những sự kiện xảy ra ở phần đầu tiên. Phim kể câu chuyện về gia đình mới của Jake Sully (Sam Worthington thủ vai) cùng những rắc rối theo sau và bi kịch họ phải chịu đựng khi phe loài người xâm lược hành tinh Pandora.', 'Avatar: Dòng Chảy Của Nước2022', 'James Cameron', 'posters/posters3675945avatar-2.jpg', 'Đã hoàn thành', '192 phút', '1', 'posters/avatar-2.jpg', 'https://www.youtube.com/watch?v=gq2xKJXYZ80&pp=ygUuQXZhdGFyOiBEw7JuZyBDaOG6o3kgQ-G7p2EgTsaw4bubYzIwMjIgdHJhaWxlcg%3D%3D', '2023', 1, 3, 749192),
(4, '2023-04-12', 'Chiến Binh Báo Đen: Wakanda Bất Diệt – Black Panther: Wakanda Forever nói về Nữ hoàng Ramonda; Shuri; M’Baku; Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ; các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', 'Chiến Binh Báo Đen: Wakanda Bất Diệt2022', 'Ryan Coogler', 'posters/posters2285406Chien-Binh-Bao-Den-Wakanda-Bat-Diet.jpg', 'Đã hoàn thành', '162 phút', '1', 'posters/Chien-Binh-Bao-Den-Wakanda-Bat-Diet.jpg', 'https://www.youtube.com/watch?v=sKX4zA52B9c&pp=ygU4Q2hp4bq_biBCaW5oIELDoW8gxJBlbjogV2FrYW5kYSBC4bqldCBEaeG7h3QyMDIyIHRyYWlsZXI%3D', '2023', 1, 1, 674068),
(5, '2023-04-12', 'Shazam! Cơn Thịnh Nộ Của Các Vị Thần – Shazam! Fury of the Gods tiếp tục câu chuyện về cậu thiếu niên Billy Batson; khi đọc thuộc lòng từ ma thuật “SHAZAM!” được biến thành Siêu anh hùng thay thế bản ngã trưởng thành của anh ấy; Shazam.', 'Shazam! Cơn Thịnh Nộ Của Các Vị Thần2023', 'David F. Sandberg', 'posters/posters5593645Shazam-Con-Thinh-No-Cua-Cac-Vi-Than-Shazam-Fury-of-the-Gods.jpg', 'Đã hoàn thành', '130 phút', '1', 'posters/Shazam-Con-Thinh-No-Cua-Cac-Vi-Than-Shazam-Fury-of-the-Gods.jpg', 'https://www.youtube.com/watch?v=l37LjoV9W7M&pp=ygU8U2hhemFtISBDxqFuIFRo4buLbmggTuG7mSBD4bunYSBDw6FjIFbhu4sgVGjhuqduMjAyMyB0cmFpbGVy', '2023', 3, 1, 660198),
(6, '2023-04-22', 'Sơn Tước Ma Thây – Zombie Chickadee (2022) người huấn luyện chim hàng đầu Mao Sơn Hào phải đối mặt với cuộc tấn công của một loài đột biến trên Đảo Phượng Hoàng. Mọi người biến mất một cách bí ẩn; nỗi sợ hãi bao trùm mọi người. Để tìm ra sự thật; Anh Hào và đội trưởng đội an ninh; Mạnh Tiền Băng; đã cùng nhau hợp tác. Sự thật từng bước được hé lộ…', 'Sơn Tước Ma Thây  Zombie Chickadee 2022 ', '', 'posters/posters6414691Son-Tuoc-Ma-Thay.jpg', 'Đã hoàn thành', '85 phút', '1', 'posters/Son-Tuoc-Ma-Thay.jpg', 'https://www.youtube.com/watch?v=DOzFeBjGAyo&pp=ygU1U8ahbiBUxrDhu5tjIE1hIFRow6J5ICBab21iaWUgQ2hpY2thZGVlIDIwMjIgIHRyYWlsZXI%3D', '2023', 6, 4, 143621),
(7, '2023-04-22', 'Thần Thám Trốn Học – Detective Chen (2022) một vụ giết người kỳ lạ xảy ra ở trường trung học St. Martin. Hà Mạn Quân; con trai của Bộ trưởng Bộ Quân sự và Chính trị đã chết một cách kỳ lạ. Viên cảnh sát Trần Hổ nhận nhiệm vụ và bí mật điều tra sự thật trong trường. Khuôn viên tưởng chừng yên bình lại ngấm ngầm dậy sóng; thầy trò chia bè kết phát; nhưng lại có thể cùng nhau chống lại kẻ thù bên ngoài; người ta nghi ngờ người bạn gái bị bắt từng báo cảnh sát bắt Hà Mạn Quân vì tội cưỡng hiếp.</p><p>Người đàn ông đeo mặt nạ với thân thủ nhanh nhẹn; những tranh chấp dai dẳng của xã hội đen; cô giáo dịu dàng quyến rũ; và học sinh xinh đẹp đáng thương; mối quan hệ giữa họ và vụ án giết người là gì? Với những nỗ lực của Trần Hổ; bí mật ẩn giấu cuối cùng đã được tiết lộ; nhưng vụ án ngày càng trở nên phức tạp và khó hiểu; mạng người hóa ra chỉ là phần nổi của tảng băng chìm; và sự thật thực sự chỉ ra một thứ khác.', 'Thần Thám Trốn Học  Detective Chen 2022 ', 'Ashton Chen', 'posters/posters7277676than-tham-tron-hoc.jpg', 'Đã hoàn thành', '101 phút', '1', 'posters/than-tham-tron-hoc.jpg', 'https://www.youtube.com/watch?v=35tgepa94qU&pp=ygU3VGjhuqduIFRow6FtIFRy4buRbiBI4buNYyAgRGV0ZWN0aXZlIENoZW4gMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 1, 358017),
(8, '2023-04-22', 'Ma Thổi Đèn: Nam Hải Quy Hư là bộ phim đầu tiên kể về câu chuyện của nhóm đào mộ của đội trưởng Hồ Bát Nhất. Sau khi rửa tay gác kiếm; họ hỗ trợ người bạn của mình là chú Minh đi đến Biển Đông để trục vớt ngọc trai. Di tích của một quốc gia ngàn năm tuổi; họ đã trải qua biết bao gian khổ và nguy hiểm dưới đáy biển. Cuối cùng họ đoàn kết và hợp tác để đánh bại những con quái vật khổng lồ dưới biển sâu; cũng như tận dụng những thiết bị cơ quan có trong di tích để tìm đường sống sót.', 'Ma Thổi Đèn: Nam Hải Quy Hư  Mojin: Return to the South China Sea 2022 ', 'Qiuliang Xiang', 'posters/posters7158958Ma-Thoi-Den-Nam-Hai-Quy-Hu.jpg', 'Đã hoàn thành', '105 phút', '1', 'posters/Ma-Thoi-Den-Nam-Hai-Quy-Hu.jpg', 'https://www.youtube.com/watch?v=e3Ddv9QElsY&pp=ygVWTWEgVGjhu5VpIMSQw6huOiBOYW0gSOG6o2kgUXV5IEjGsCAgTW9qaW46IFJldHVybiB0byB0aGUgU291dGggQ2hpbmEgU2VhIDIwMjIgIHRyYWlsZXI%3D', '2023', 4, 1, 548477),
(9, '2023-04-22', 'Đại Hán Quân Hồn – Army Soul Of The Han Dynasty (2022) Đông Hán năm kiến quốc đầu tiên;Hung Nô từ phương Bắc lợi dụng lúc thôn tính Tây Vực khống chế cả Con Đường Tơ Lụa; nhà Hán cử Ban Siêu đến Tây Vực mở lại Con Đường Tơ Lụa. Trước sự cướp bóc man rợ của Hung Nô; Tư Mã Cảnh Cung đã dẫn quân Hán một lưới bắt sống hoàng tử của Hung Nô; lập được đại công.</p><p>Sau khi được tiến chức; ông đóng thủ tại Jushi Kim Bồ Thành của tiền triều. Thiền Vu của Hung Nô giận dữ ngút trời; ra lệnh cho 20.000 kỵ binh tinh nhuệ tấn công Kim Bồ. Lúc này; trong thành chỉ có hơn 300 người được Cảnh Cung mang đến giao chiến. Vào thời điểm sinh tử; Cảnh Cung quyết định quay sang bảo vệ Thành phố Kashgar vốn là nơi dễ thủ khó công; phát động cuộc chiến vang danh thiên cổ về 13 dũng tướng tắm máu cả một tòa thành!', 'Đại Hán Quân Hồn  Army Soul Of The Han Dynasty 2022 ', 'Gu Shijun', 'posters/posters107178dai-han-quan-hon.jpg', 'Đã hoàn thành', '102 phút', '1', 'posters/dai-han-quan-hon.jpg', 'https://www.youtube.com/watch?v=W0hpfP7I7sM&pp=ygVDxJDhuqFpIEjDoW4gUXXDom4gSOG7k24gIEFybXkgU291bCBPZiBUaGUgSGFuIER5bmFzdHkgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 3, 3, 30818),
(11, '2023-04-22', 'Địch Nhân Kiệt: Mê Cung Long Ẩn – Detective Dee do Quách Ngọc Long làm đạo diễn; Chu Tử Kiêu làm diễn viên chính. Khi “thuyền ma” tiến vào cảng Hồng Kông; ông chủ để tự bảo vệ mình mà muốn kết thúc vụ án bằng “Thủy tặc loạn”; nhưng Địch Nhân Kiệt lại mơ hồ cảm thấy sự tình kỳ quặc. Đại lễ sắp tới; người dân Trường An bởi vụ án này đã vô cùng hoảng sợ; hoàng hậu lệnh cho Thần Minh; người đứng đầu Đại Lý Tự; trong vòng ba ngày phải kết thúc vụ án; nhưng hắn lại đem áp lực phá án cho Địch Nhân Kiệt.', 'Địch Nhân Kiệt: Mê Cung Long Ẩn  Detective Dee 2023 ', 'Guo Yulong', 'posters/posters9374574Me-Cung-Long-An.jpg', 'Đã hoàn thành', '63 phút', '1', 'posters/Me-Cung-Long-An.jpg', 'https://www.youtube.com/watch?v=l0MfV7kfWXA&pp=ygVFxJDhu4tjaCBOaMOibiBLaeG7h3Q6IE3DqiBDdW5nIExvbmcg4bqobiAgRGV0ZWN0aXZlIERlZSAyMDIzICB0cmFpbGVy', '2023', 3, 4, 637277),
(12, '2023-04-22', 'Dương Thần: Thái Thượng Vong Tình – Yang Shen Spirit (2023) là một bộ phim cổ trang ly kỳ và giả tưởng kể về câu chuyện của Triệu Phi Dung; một vị thánh của giáo phái Đại La; người đã cố gắng bằng mọi cách để tìm ra Hồ tộc; bộ tộc ẩn giấu và giải thoát con quỷ của giáo phái Đại La.</p><p>Hồng Dịch đã bị bắt nạt từ khi còn nhỏ; và để khiến mẹ mở màu mở mặt cậu đã vào thành để tham gia kỳ thi. Thật bất ngờ; vào đêm trước ngày nhập học; một cô gái bí ẩn đã mời Hồng Dịch đến dạy học cho Hồ tộc và Hồng Dịch đã tham gia vào một cuộc truy đuổi nguy hiểm. Sau khi trải qua nhiều cuộc phiêu lưu nguy hiểm; Hồng Dịch bị áp bức quyết định học võ thuật và gia nhập Hồ tộc để chống lại giáo phái Đại La.', 'Dương Thần: Thái Thượng Vong Tình  Yang Shen Spirit 2023 ', 'Li Yongqin', 'posters/posters4627440Duong-Than-Thai-Thuong-Vong-Tinh.jpg', 'Đã hoàn thành', '75 phút', '1', 'posters/Duong-Than-Thai-Thuong-Vong-Tinh.jpg', 'https://www.youtube.com/watch?v=43agJ0FypuI&pp=ygVKRMawxqFuZyBUaOG6p246IFRow6FpIFRoxrDhu6NuZyBWb25nIFTDrG5oICBZYW5nIFNoZW4gU3Bpcml0IDIwMjMgIHRyYWlsZXI%3D', '2023', 2, 1, 764522),
(15, '2023-04-21', 'Quỷ Núi – Wild Ghost (2023) 20 năm trước; một thiên thạch không gian mang trong mình 3 viên pha lê rơi xuống nhân gian; 20 năm sau sơn quỷ lộ diện dẫn đến bao huyết án; chân tướng bị che giấu lúc đầu dần dần được hé mở…', 'Quỷ Núi  Wild Ghost 2023 ', 'Chen Zheshui', 'posters/posters251086quy-nui.jpg', 'Đã hoàn thành', '71 phút', '1', 'posters/quy-nui.jpg', 'https://www.youtube.com/watch?v=tpmV40QKOaM&pp=ygUkUXXhu7cgTsO6aSAgV2lsZCBHaG9zdCAyMDIzICB0cmFpbGVy', '2023', 6, 2, 301596),
(22, '2023-04-19', 'Truy Quét Băng Đảng – Black Hunting Operation (2023) cảnh sát interpol Tần Phong và đồng đội đã chiến đấu mưu trí; dũng cảm với bọn cho vay nặng lãi và các băng nhóm tội phạm; thề sẽ quét sạch bọn chúng. Sau một cuộc đấu tranh gian khổ; Tần Phong và các sĩ quan cảnh sát khác cuối cùng đã nắm được bằng chứng tội phạm của Vô Tướng Phật; bắt giữ thành công và giải cứu con tin.', 'Truy Quét Băng Đảng  Black Hunting Operation 2023 ', 'Kai Wang', 'posters/posters6097029truy-quet-bang-dang.jpg', 'Đã hoàn thành', '88 phút', '1', 'posters/truy-quet-bang-dang.jpg', 'https://www.youtube.com/watch?v=j0yYJhv7Keo&pp=ygU_VHJ1eSBRdcOpdCBCxINuZyDEkOG6o25nICBCbGFjayBIdW50aW5nIE9wZXJhdGlvbiAyMDIzICB0cmFpbGVy', '2023', 1, 1, 736831),
(23, '2023-04-19', 'Khắc Tinh Của Quỷ – The Pope’s Exorcist (2023) lấy cảm hứng từ những hồ sơ có thật của Cha Gabriele Amorth; Trưởng Trừ Tà của Vatican (Russell Crowe; đoạt giải Oscar®); bộ phim “The Pope’s Exorcist” theo chân Amorth trong cuộc điều tra về vụ quỷ ám kinh hoàng của một cậu bé và dần khám phá ra những bí mật hàng thế kỷ mà Vatican đã cố gắng giấu kín.', 'Khắc Tinh Của Quỷ  The Pope\'s Exorcist 2023 ', 'Julius Avery', 'posters/posters9707471khac-tinh-cua-quy.jpg', 'Đã hoàn thành', '104 phút', '1', 'posters/khac-tinh-cua-quy.jpg', 'https://www.youtube.com/watch?v=SXfnUAW9gwA&pp=ygU6S2jhuq9jIFRpbmggQ-G7p2EgUXXhu7cgIFRoZSBQb3BlJ3MgRXhvcmNpc3QgMjAyMyAgdHJhaWxlcg%3D%3D', '2023', 6, 4, 668943),
(24, '2023-04-19', 'Power Rangers: Một Lần và Mãi Mãi – Mighty Morphin Power Rangers: Once &amp; Always (2023) Sau khi bi kịch xảy ra; một anh hùng trẻ khác thường tiếp nhận vị trí xứng đáng của mình trong Biệt Đội Siêu Nhân để đối mặt với kẻ thù không đội trời chung lâu năm nhất của đội.', 'Power Rangers: Một Lần Và Mãi Mãi  Mighty Morphin Power Rangers: Once & Always 2023 ', 'Charlie Haskell', 'posters/posters6502009Power-Rangers-Mot-Lan-va-Mai-Mai-2023.jpg', 'Đã hoàn thành', '55 phút', '1', 'posters/Power-Rangers-Mot-Lan-va-Mai-Mai-2023.jpg', 'https://www.youtube.com/watch?v=ZKE2DC7Xzog&pp=ygVjUG93ZXIgUmFuZ2VyczogTeG7mXQgTOG6p24gVsOgIE3Do2kgTcOjaSAgTWlnaHR5IE1vcnBoaW4gUG93ZXIgUmFuZ2VyczogT25jZSAmIEFsd2F5cyAyMDIzICB0cmFpbGVy', '2023', 5, 1, 154558),
(34, '2023-04-12', ' John Wick: Phần 4 – John Wick: Chapter 4 là câu chuyện của John Wick (Keanu Reeves) đã khám phá ra con đường để đánh bại High Table. Nhưng trước khi có thể kiếm được tự do; Wick phải đối đầu với kẻ thù mới với những liên minh hùng mạnh trên toàn cầu và những lực lượng biến những người bạn cũ thành kẻ thù. ', 'John Wick: Phần 42023', 'Chad Stahelski', 'posters/posters3295132John-Wick-4.jpg', 'Đã hoàn thành', '169 phút', '1', 'posters/John-Wick-4.jpg', 'https://www.youtube.com/watch?v=qEVUtrk8_B4&pp=ygUfSm9obiBXaWNrOiBQaOG6p24gNDIwMjMgdHJhaWxlcg%3D%3D', '2023', 1, 4, 254603),
(35, '2023-04-06', ' Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử nói về Scott Lang và Hope Van Dyne trở lại tiếp tục cuộc phiêu lưu của họ với vai trò Người Kiến và Chiến binh Ong. Cùng với cha mẹ của Hope; họ sẽ có chuyến khám phá Lượng Tử Giới; gặp gỡ những sinh vật mới lạ và bắt đầu cuộc hành trình vào thế giới lượng tử. ', 'Người Kiến Và Chiến Binh Ong: Thế Giới Lượng Tử2023', 'Peyton Reed', 'posters/posters3882861Nguoi-Kien-va-Chien-Binh-Ong-The-Gioi-Luong-Tu.jpg', 'Đã hoàn thành', '125 phút', '1', 'posters/Nguoi-Kien-va-Chien-Binh-Ong-The-Gioi-Luong-Tu.jpg', 'https://www.youtube.com/watch?v=s3UD3qvJdao&pp=ygVMTmfGsOG7nWkgS2nhur9uIFbDoCBDaGnhur9uIEJpbmggT25nOiBUaOG6vyBHaeG7m2kgTMaw4bujbmcgVOG7rTIwMjMgdHJhaWxlcg%3D%3D', '2023', 1, 4, 552155),
(36, '1900-01-01', ' Avatar: Dòng Chảy Của Nước – Avatar: The Way of Water lấy bối cảnh 10 năm sau những sự kiện xảy ra ở phần đầu tiên. Phim kể câu chuyện về gia đình mới của Jake Sully (Sam Worthington thủ vai) cùng những rắc rối theo sau và bi kịch họ phải chịu đựng khi phe loài người xâm lược hành tinh Pandora. ', 'Avatar: Dòng Chảy Của Nước2022', 'James Cameron', 'posters/posters1400705avatar-2.jpg', 'Đã hoàn thành', '192 phút', '1', 'posters/avatar-2.jpg', 'https://www.youtube.com/watch?v=gq2xKJXYZ80&pp=ygUuQXZhdGFyOiBEw7JuZyBDaOG6o3kgQ-G7p2EgTsaw4bubYzIwMjIgdHJhaWxlcg%3D%3D', '2023', 1, 2, 121542),
(37, '1900-01-18', ' Chiến Binh Báo Đen: Wakanda Bất Diệt – Black Panther: Wakanda Forever nói về Nữ hoàng Ramonda; Shuri; M’Baku; Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ; các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda. ', 'Chiến Binh Báo Đen: Wakanda Bất Diệt2022', 'Ryan Coogler', 'posters/posters5259909Chien-Binh-Bao-Den-Wakanda-Bat-Diet.jpg', 'Đã hoàn thành', '162 phút', '1', 'posters/Chien-Binh-Bao-Den-Wakanda-Bat-Diet.jpg', 'https://www.youtube.com/watch?v=sKX4zA52B9c&pp=ygU4Q2hp4bq_biBCaW5oIELDoW8gxJBlbjogV2FrYW5kYSBC4bqldCBEaeG7h3QyMDIyIHRyYWlsZXI%3D', '2023', 1, 1, 949547),
(38, '1900-01-31', ' Shazam! Cơn Thịnh Nộ Của Các Vị Thần – Shazam! Fury of the Gods tiếp tục câu chuyện về cậu thiếu niên Billy Batson; khi đọc thuộc lòng từ ma thuật “SHAZAM!” được biến thành Siêu anh hùng thay thế bản ngã trưởng thành của anh ấy; Shazam. ', 'Shazam! Cơn Thịnh Nộ Của Các Vị Thần2023', 'David F. Sandberg', 'posters/posters710313Shazam-Con-Thinh-No-Cua-Cac-Vi-Than-Shazam-Fury-of-the-Gods.jpg', 'Đã hoàn thành', '130 phút', '1', 'posters/Shazam-Con-Thinh-No-Cua-Cac-Vi-Than-Shazam-Fury-of-the-Gods.jpg', 'https://www.youtube.com/watch?v=l37LjoV9W7M&pp=ygU8U2hhemFtISBDxqFuIFRo4buLbmggTuG7mSBD4bunYSBDw6FjIFbhu4sgVGjhuqduMjAyMyB0cmFpbGVy', '2023', 1, 4, 267026),
(39, '2023-12-31', ' Mục Trung Vô Nhân – Blind Sword (2022) do Ngụy Tuấn Tử sản xuất; giám chế Trương Triết; Dương Bỉnh đạo diễn kiêm kịch bản; cùng sự tham gia của các diễn viên Cao Duy Mạn; Hướng Hạo; Lưu Bôn; Trương Địch Anh. Anh chàng “bắt dao” với những pha nguy hiểm; gặp Nghê Yến một cô gái bị làm nhục; vốn dĩ không muốn can thiệp; nhưng vô tình bị kéo vào một cuộc tranh chấp quyền lực đen tối. Thành Hạt Tử bắt đầu con đường tìm kiếm công lí và trả thù; dần dần danh tính thực sự của cậu ta cũng được tiết lộ… ', 'Mục Trung Vô Nhân  Blind Sword 2022 ', 'Yang Bingjia', 'posters/posters3988081Muc-trung-vo-nhan.jpg', 'Đã hoàn thành', '74 phút', '1', 'posters/Muc-trung-vo-nhan.jpg', 'https://www.youtube.com/watch?v=HC6sJERytlQ&pp=ygUwTeG7pWMgVHJ1bmcgVsO0IE5ow6JuICBCbGluZCBTd29yZCAyMDIyICB0cmFpbGVy', '2023', 2, 3, 512989),
(40, '1900-01-20', ' Tân Thần Bảng: Dương Tiễn – The Legend of Yang Jian (2022) 1500 năm sau cuộc chiến phong thần; hạo kiếp của tam giới lại đến; nguy cơ tứ phía. Dương Tiễn trung thành bảo vệ bảng; trong lúc chiến đấu đã để mù con mắt thứ ba; bị thiên đình ruồng bỏ. Dương Tiễn chán nản; bất ngờ phát hiện bảng phong thần quan hệ mật thiết với người Dương gia. Phong thần bảng; Dương gia cùng thiên hạ chúng sinh; Dương Tiễn sẽ lựa chọn thế nào? ', 'Tân Thần Bảng: Dương Tiễn  The Legend of Yang Jian 2022 ', 'Zhou Jiuqin', 'posters/posters7227797Tan-Than-Bang-Duong-Tien-2022.jpg', 'Đã hoàn thành', '77 phút', '1', 'posters/Tan-Than-Bang-Duong-Tien-2022.jpg', 'https://www.youtube.com/watch?v=kJAIrstfAiQ&pp=ygVJVMOibiBUaOG6p24gQuG6o25nOiBExrDGoW5nIFRp4buFbiAgVGhlIExlZ2VuZCBvZiBZYW5nIEppYW4gMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 3, 154422),
(41, '2023-12-06', ' Thủy Hầu Tử – Folk Strange Talk: Water Monkey (2022) ma nước còn được gọi là Khỉ Nước. Tương truyền rằng những người chết đuối; tự tử dưới nước sẽ trở thành ma nước. Sau đó kiên nhẫn đợi dưới nước; dụ hoặc ép người rơi xuống nước chết; làm ma thay thế cho chính mình. Hàng ngàn năm nay; ma nước đã dùng phương pháp này để đầu thai và thoát khỏi sự thống khổ của địa ngục.<p>Vào thời Trung Hoa Dân Quốc; có một nơi gọi là “Làng Thiên Thủy” có núi bao quanh; lão thái gia sinh ra ở đó; dưới sự lãnh đạo của trưởng làng; dân làng có một cuộc sống ấm no đầy đủ. Cho đến một đêm; lão thái gia ngồi thuyền trở về; và những điều kỳ lạ bắt đầu xảy ra trong làng… ', 'Thủy Hầu Tử  Folk Strange Talk: Water Monkey (202 ', 'Huang Xingang', 'posters/posters1939088thuy-hau-tu.jpg', 'Đã hoàn thành', '71 phút', '1', 'posters/thuy-hau-tu.jpg', 'https://www.youtube.com/watch?v=_DXyS_HeCR0&pp=ygVAVGjhu6d5IEjhuqd1IFThu60gIEZvbGsgU3RyYW5nZSBUYWxrOiBXYXRlciBNb25rZXkgKDIwMiAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 608305),
(42, '2023-04-12', ' Cửu Châu Thanh Hạnh Kỉ – Novo Land Floating Heart (2022) trong thời Cửu Châu hồn loạn; Nam Tinh xinh đẹp con gái của Thái sư chết thảm trong phòng vào ngày hôn lễ một hôm; điều này chấn động nhiều người và thu hút sự điều tra của các gia tộc khác nhau. La Lợi tình cờ gặp được Nam Tinh sống lại một cách kì lạ ; được bí mật đưa vào một hang động và rơi vào những âm mưu lớn hơn. ', 'Cửu Châu Thanh Hạnh Kỉ  Novo Land Floating Heart 2022 ', 'Tao Zhiqiang', 'posters/posters5642288Cuu-Chau-Thanh-Hanh-Ki.jpg', 'Đã hoàn thành', '85 phút', '1', 'posters/Cuu-Chau-Thanh-Hanh-Ki.jpg', 'https://www.youtube.com/watch?v=Ex-YwOtRUjU&pp=ygVFQ-G7rXUgQ2jDonUgVGhhbmggSOG6oW5oIEvhu4kgIE5vdm8gTGFuZCBGbG9hdGluZyBIZWFydCAyMDIyICB0cmFpbGVy', '2023', 2, 3, 100574),
(43, '2023-01-31', ' Cự Xà Trường Nữ Sinh – Rising Boas in a Girls School (2022) có một cơ sở nuôi rắn bí mật ở ngoại ô Hải Tây. Ông chủ cho nó ăn thức ăn có hàm lượng hormone cao một cách liều lĩnh; và đàn rắn dần dần đột biến. Một ngày nọ; một bầy rắn hung dữ thoát ra khỏi lồng và bắt đầu điên cuồng tấn công con người trong cơ sở nuôi rắn. Đồng thời; đàn rắn cũng bò về phía một trường hàng không cách cơ sở nuôi rắn không xa. Nhà trường đang chuẩn bị cho lễ tốt nghiệp; sinh viên không biết mình sắp gặp nguy hiểm vẫn tiến hành cuộc thi của trường.<p>Đàn rắn bò vào nhiều nơi khác nhau của trường; một số nữ sinh bị rắn cắn; tiếng la hét khiến cả khu ký túc xá giật mình; các nữ sinh bỏ chạy tán loạn. Nhân viên bảo vệ Lưu Siêu đã giải cứu Lí Mộng Na một sinh viên bị rắn bao vây. Hai người muốn thông báo cho giáo viên và sinh viên của trường để sơ tán khẩn cấp; nhưng đã bị hiệu trưởng ngăn lại. Dưới bao con mắt con rắn đen khổng lồ đã nuốt chửng hiệu trưởng; cuộc chạy trốn của con người rắn đã bắt đầu. Thấy rắn sinh viên chạy tán loạn Lưu Siêu và Lí Mộng Na quyết định xông lên dẫn các sinh viên khác thoát khỏi sự nguy hiểm của bầy rắn. ', 'Cự Xà Trường Nữ Sinh  Rising Boas in a Girls School 2022 ', 'Guo Yulong', 'posters/posters8428577Cu-Xa-Truong-Nu-Sinh-2022.jpg', 'Đã hoàn thành', '88 phút', '1', 'posters/Cu-Xa-Truong-Nu-Sinh-2022.jpg', 'https://www.youtube.com/watch?v=m8eqYxI6y1U&pp=ygVJQ-G7sSBYw6AgVHLGsOG7nW5nIE7hu68gU2luaCAgUmlzaW5nIEJvYXMgaW4gYSBHaXJscyBTY2hvb2wgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 653471),
(44, '2023-01-10', ' Vợ Hồ Ly Nơi Thôn Quê – The Wicked Wife lấy bối cảnh vào thời Dân Quốc; một trận mưa lớn đã làm kẹt lại đoàn kinh kịch đang đi qua sông tham gia sự kiện nổi tiếng ở Lạt Bá Câu. Vào một đêm giông bão; cùng trú mưa với đoàn kịch còn có một tên thổ phỉ giết người; và cậu lính tuần không rõ danh tính. Một nhóm này không ngờ đều có liên quan mật thiết đến việc vợ hồ li mười lăm năm trước… ', 'Vợ Hồ Ly Nơi Thôn Quê  The Wicked Wife 2022 ', 'Liu Xuandi', 'posters/posters1897250vo-ho-ly-noi-thon-que.jpg', 'Đã hoàn thành', '93 phút', '1', 'posters/vo-ho-ly-noi-thon-que.jpg', 'https://www.youtube.com/watch?v=2q0sA-8j8TM&pp=ygU7VuG7oyBI4buTIEx5IE7GoWkgVGjDtG4gUXXDqiAgVGhlIFdpY2tlZCBXaWZlIDIwMjIgIHRyYWlsZXI%3D', '2023', 3, 1, 329001),
(45, '2022-11-18', ' Địch Nhân Kiệt: Đoạt Mệnh Kì Hương – Detective Dee: Scent of a Killer (2022) thời nhà Chu; Maiko nổi tiếng của Lạc Dương đã bị chặt đầu oan; biến thành oan hồn và giết người hàng loạt. Định Nhân Kiệt được phái đến để điều tra vụ án. Không ngờ trên đường trở về thành lại bị ám sát và rơi xuống vách núi mất trí nhớ; nhưng được Lã Chiêu Nguyên trên đường vào thành tìm vợ cứu sống.<p>Hai người đã hoán đổi thân phận cho nhau; La Chiêu Nguyên lúc này bất đắc dĩ phải điều tra vụ án. Với bản năng điều tra và cái nhìn sâu sắc tuyệt vời của mình; La Chiêu Nguyên đã nhanh chóng nắm được bằng chứng then chốt về mùi thơm kỳ lạ của xác chết . Hai người với hai thân phận hoán đổi đã hợp tác rất ăn ý; sử dụng lợi thế của mình để vạch trần sự thật; và kẻ sát nhân thực sự đứng sau “ma nữ” cuối cùng cũng lộ diện… ', 'Địch Nhân Kiệt: Đoạt Mệnh Kì Hương  Detective Dee: Scent of a Killer 2022 ', 'Xie Yi', 'posters/posters9388139Dịnh-Nhân-Kiệt-Doạt-Mệnh-Kì-Hương-2022.jpg', 'Đã hoàn thành', '82 phút', '1', 'posters/Dịnh-Nhân-Kiệt-Doạt-Mệnh-Kì-Hương-2022.jpg', 'https://www.youtube.com/watch?v=7OohT3e7va8&pp=ygVgxJDhu4tjaCBOaMOibiBLaeG7h3Q6IMSQb-G6oXQgTeG7h25oIEvDrCBIxrDGoW5nICBEZXRlY3RpdmUgRGVlOiBTY2VudCBvZiBhIEtpbGxlciAyMDIyICB0cmFpbGVy', '2023', 2, 4, 58317),
(46, '2022-11-18', ' Thành Phố Nhện Vàng – Golden Spider City (2022) vì một quyển ghi chép khảo cổ do cha mẹ để lại; Tư Mã Công đã bị một doanh nhân giàu có ở Thái Lan nhắm tới; và dùng mạng sống của bạn gái anh Lisa để đe dọa yêu cầu anh đi vào núi sâu tìm kiếm nhện vàng. Trong lúc thám hiểm; Tư Mã Công đã gặp Bát Gia; một thiên tài trốn thoát khỏi chiếc quan tài nhuốm máu trong lăng mộ. Hai người cùng nhau hợp sức để khám phá những bí mật của nơi đây.<p>Lúc này; nhân vật phản diện Tương Gia đột ngột xuất hiện tiết lộ một bí mật gây sốc. Danh tính thực sự của Bát Gia hóa ra là người cha đã mất từ ​​lâu của Tư Mã Công -Tư Mã Khôi. Cả ba tiếp tục tìm kiếm tung tích của nhện vàng. Khi họ đi sâu vào trong nhện vàng khổng lồ đã xuất hiện và mối nguy hiểm của họ cũng đã đến. Lần này; Tư Mã Khôi quyết định một lần nữa gánh vác trọng trách của người cha; Tư Mã Công vốn luôn ích kỷ cũng đã tỉnh ngộ; cùng với sự hòa giải của hai cha con; thành nhện vàng dưới lòng đất cũng hé lộ bí ẩn về nền văn minh ngoài hành tinh. ', 'Thành Phố Nhện Vàng  Golden Spider City 2022 ', 'Dai Yilin', 'posters/posters5708265thanh-pho-nhen-vang.jpg', 'Đã hoàn thành', '87 phút', '1', 'posters/thanh-pho-nhen-vang.jpg', 'https://www.youtube.com/watch?v=neaVgFTRRxo&pp=ygU7VGjDoG5oIFBo4buRIE5o4buHbiBWw6BuZyAgR29sZGVuIFNwaWRlciBDaXR5IDIwMjIgIHRyYWlsZXI%3D', '2023', 2, 1, 156655),
(47, '2022-11-18', ' Bí Mật Hang Động Tần Lĩnh – Qinling Mountains (2022) nhân vật chính Tề Tương Văn bị trùm xã hội đen Trương Thần Nhãn đe dọa. Anh đóng giả là một thành viên của Cục địa chất và lừa giáo sư Hồ; mở hang động bí mật từ di tích cổ trên dãy núi Tần Lĩnh để đánh cắp kho báu. Trong quá trình thăm dò; chỉ có Tề Tương Văn quay trở lại; và được em gái của La Cẩm là La Hân chữa trị.<p>Tuy nhiên; chấn thương trên đầu của anh ấy đã dẫn đến chứng mất trí nhớ. Khi bọn xã hội đen và nhện đột biến tấn công ngôi làng anh đang ở; anh đã giải cứu ngôi làng và trở thành anh hùng trong mắt dân làng. Khi anh cùng đội tìm kiếm và cứu hộ tiến vào hang động bí mật lần nữa; trí nhớ của anh dần phục hồi. Giữa thiện và ác; anh đã lựa chọn cùng đội tìm kiếm cứu hộ chiến đấu chống lại băng đảng xã hội đen; và cuối cùng đã hy sinh bản thân để cứu mọi người… ', 'Bí Mật Hang Động Tần Lĩnh  Qinling Mountains 2022 ', 'Dai Yilin', 'posters/posters5147461Bi-Mat-Hang-Dong-Tan-Linh-2022.jpg', 'Đã hoàn thành', '78 phút', '1', 'posters/Bi-Mat-Hang-Dong-Tan-Linh-2022.jpg', 'https://www.youtube.com/watch?v=tQgfD6IhwKk&pp=ygVDQsOtIE3huq10IEhhbmcgxJDhu5luZyBU4bqnbiBMxKluaCAgUWlubGluZyBNb3VudGFpbnMgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 1, 822695),
(48, '2022-11-18', ' Truyền Thuyết Thục Sơn: Vạn Kiếm Quy Tông nói về Kiếm là sát thủ số một của sơn trang Thất Sát; khi muốn gác kiếm thì bị trang chủ ám sát; nhưng may mắn thay được Từ Nhất Sở cứu sống. Sống trong một gia đình hạnh phúc; cậu ấy lại có một quyết tâm là phải cố gắng sống thật tốt… ', 'Truyền Thuyết Thục Sơn: Vạn Kiếm Quy Tông  Swords Drawn 2022 ', 'Luo Yiwei', 'posters/posters8034603Truyen-Thuyet-Thuc-Son-Van-Kiem-Quy-Tong-2022.jpg', 'Đã hoàn thành', '84 phút', '1', 'posters/Truyen-Thuyet-Thuc-Son-Van-Kiem-Quy-Tong-2022.jpg', 'https://www.youtube.com/watch?v=QUg9YtYL1vw&pp=ygVRVHJ1eeG7gW4gVGh1eeG6v3QgVGjhu6VjIFPGoW46IFbhuqFuIEtp4bq_bSBRdXkgVMO0bmcgIFN3b3JkcyBEcmF3biAyMDIyICB0cmFpbGVy', '2023', 2, 4, 67580),
(49, '2022-11-18', ' Mao Sơn Thiên Sư – Maoshan Heavenly Master (2022) kể về Trương Đạo Lĩnh mang theo thanh kiếm quý giá “Thanh Cương Kiếm”; áp giải phạm nhân Xích Luyện Quân đến núi Côn Lôn chịu tội. Không ngờ bị mắc bẫy; anh ta rơi vào bẫy; Xích Luyện Quân trốn thoát; và Trương Đạo Lĩnh bị đuổi ra khỏi sư môn. Để thiên hạ thái bình; từ đó Trương Đạo Lĩnh bắt đầu đi tìm tung tích của Xích Luyện Quân.<p>Vài năm sau; Trương Đạo Lĩnh đến một nơi và biết được rằng có rất nhiều người khi đưa đám ma đã bị vật trắng đen vô thường gắp đi; và từ đó không có tin tức gì. Điều này thu hút sự chú ý của Trương Đạo Lĩnh; bởi vì Trương Đạo Lĩnh biết rất rõ khi Xích Luyện Quân luyện thần công; hắn ta phải hấp thụ nguyên khí của nhiều người; và những người mất tích này có lẽ đã bị Xích Luyện Quân bắt để hấp thụ nguyên khí. Trương Đạo Lĩnh không từ bỏ bất kì manh mối nào; bắt đầu tìm hiểu sự việc vật lạ gắp người. ', 'Mao Sơn Thiên Sư  Maoshan Heavenly Master 2022 ', 'Liu Gongzi', 'posters/posters4890085mao-son-thien-su.jpg', 'Đã hoàn thành', '70 phút', '1', 'posters/mao-son-thien-su.jpg', 'https://www.youtube.com/watch?v=LQAthAAD7xA&pp=ygU6TWFvIFPGoW4gVGhpw6puIFPGsCAgTWFvc2hhbiBIZWF2ZW5seSBNYXN0ZXIgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 346658),
(50, '2022-11-18', ' Đông Du Truyện – Journey Of East (2022) kể về câu chuyện của Lã Động Tân đi thuyền đến tìm Bach Anh để hủy hôn; khi đến nhà Bạch Anh thì anh phát hiện cha của Bạch Anh đã mất tích ở Bách Hoa Lầu; sau đó liền đi đến Bách Hoa Lầu gặp được Bạch Anh và bị thuộc hạ của Hắc Giao tấn công. Sau khi trốn thoát khỏi Bách Hoa Lầu; Lã Động Tân đã gặp Thái Bạch Kim Tinh và biết được rằng bản thân chính là hóa thân của Bạch Hạc; Hắc Giao cũng là kiếp nạn mà Động Tân phải trải qua và cũng có tình duyên tam sinh tam thế với Bạch Anh. ', 'Đông Du Truyện  Journey Of East 2022 ', 'Li Liming', 'posters/posters6700773dong-du-truyen.jpg', 'Đã hoàn thành', '77 phút', '1', 'posters/dong-du-truyen.jpg', 'https://www.youtube.com/watch?v=ILd5FsQxeEk&pp=ygUxxJDDtG5nIER1IFRydXnhu4duICBKb3VybmV5IE9mIEVhc3QgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 235648),
(51, '2022-11-18', ' Chiến Thần Đồ Ma – Fighting Darksider (2022) hai mươi năm trước; bộ tộc hắc ám đã tấn công loài người. Chiến thần Trương Xích Viêm đã không ngần ngại hy sinh bản thân để đánh thức Thần Kiếm; chỉ để sau đó đánh đuổi hắc ám. Nhưng giờ đây; bộ tộc hắc ám đã trỗi dậy trở lại; đang chuẩn bị tấn công loài người.<p>Để ngăn chặn thảm họa lớn này; các thế hệ sau của Chiến thần Trương Kha; Vân Linh và Phúc Hỉ đã bắt tay vào việc đánh thức Thần Kiếm. Trên con đường chiến đấu và đối mặt với nguy hiểm; Trương Kha và Vân Linh đã bắt đầu nảy sinh tình cảm. Trương Kha cũng trưởng thành hơn và trở thành Chiến thần mới; trong trận đại chiến cuối cùng cũng đã đánh thức Thần Kiếm; lãnh đạo tộc người tiêu diệt thế lực hắc ám. ', 'Chiến Thần Đồ Ma  Fighting Darksider 2022 ', 'Kevin Huang', 'posters/posters3105593chien-than-do-ma.jpg', 'Đã hoàn thành', '70 phút', '1', 'posters/chien-than-do-ma.jpg', 'https://www.youtube.com/watch?v=fDi4fgQzU_A&pp=ygU5Q2hp4bq_biBUaOG6p24gxJDhu5MgTWEgIEZpZ2h0aW5nIERhcmtzaWRlciAyMDIyICB0cmFpbGVy', '2023', 2, 2, 849537),
(52, '2022-11-18', ' Thanh Xà: Tiền Duyên – The Fate of Reunion (2022) nghìn năm trước; Thanh Xà được Đạo Thanh soi sáng mà được khai hóa dần; muốn mãi mãi sống cùng với Đạo Thanh. Nhưng Đạo Thanh lại bị cuốn vào số kiếp luân hồi bởi sự ám ảnh của Thanh Xà; kiếp nào cũng chịu nỗi đau đột tử. Để hóa giải số kiếp cho Đạo Thanh; Thanh Xà không ngừng tìm người đầu thai của Đạo Thanh… ', 'Thanh Xà: Tiền Duyên  The Fate of Reunion 2022 ', 'Luo Jie', 'posters/posters7848399Thanh-Xa-Tien-Duyen-2022.jpg', 'Đã hoàn thành', '87 phút', '1', 'posters/Thanh-Xa-Tien-Duyen-2022.jpg', 'https://www.youtube.com/watch?v=kYedbSgNr0w&pp=ygU7VGhhbmggWMOgOiBUaeG7gW4gRHV5w6puICBUaGUgRmF0ZSBvZiBSZXVuaW9uIDIwMjIgIHRyYWlsZXI%3D', '2023', 2, 1, 539210),
(53, '2022-11-18', ' Trường Giang Yêu Cơ – Elves in Changjiang River (2022) bắt nguồn từ Côn Lôn và kết thúc ở Đông Minh; có vô số vạn vật bị nước sông nuôi dưỡng mà biến thành quỷ. Tùy Nguyên một học giả đến Kinh đô học; tình cờ rơi vào bẫy tình của cá chép Giang Tiểu Ngu và yêu đem lòng yêu cô. Thầy diệt quỷ đã cứu Tùy Nguyên và phát hiện tất cả đều do thú cá cổ xưa gây nên. Nước sông sôi sục; dân chúng lầm than; bắt đầu một trận chiến để cứu người trên dòng Ngô Giang … ', 'Trường Giang Yêu Cơ  Elves in Changjiang River 2022 ', 'Hu Tianqiyue', 'posters/posters5105288truong-giang-yeu-co.jpg', 'Đã hoàn thành', '100 phút', '1', 'posters/truong-giang-yeu-co.jpg', 'https://www.youtube.com/watch?v=sAf1RyoC19I&pp=ygVBVHLGsOG7nW5nIEdpYW5nIFnDqnUgQ8ahICBFbHZlcyBpbiBDaGFuZ2ppYW5nIFJpdmVyIDIwMjIgIHRyYWlsZXI%3D', '2023', 2, 3, 604774),
(55, '2022-11-18', ' Phong Khởi Lạc Dương: Cõi Âm Dương kể về Thời Ngô Chu; hai cô gái sống ở hai đầu sông Lạc Hà ở Lạc Dương; thuộc hai thân phận khác nhau vô tình vướng vào một vụ án chưa được giải quyết; họ cùng nhau vạch trần âm mưu của kẻ ác. Hai cô gái đó là Triệu Thanh Thanh – con gái của Kim Ngô và một cô gái lừa đảo cuộc sống lưu bạt. Hai người hhai số phận khác nhau; sau khi gặp phải hàng loạt vụ án kỳ quái ở thành phố Lạc Dương đã trở thành bạn bè. Họ cùng nhau trải qua những khó khăn; nhưng vẫn giữ được tinh thần chính nghĩa; can đảm; trong một thế giới hỗn loạn. ', 'Phong Khởi Lạc Dương: Cõi Âm Dương  Reincarnation Land 2022 ', 'Dai Yilin', 'posters/posters8679907Phong-Khoi-Lac-Duong-Coi-Am-Duong.jpg', 'Đã hoàn thành', '83 phút', '1', 'posters/Phong-Khoi-Lac-Duong-Coi-Am-Duong.jpg', 'https://www.youtube.com/watch?v=PjOHxN5wAR0&pp=ygVOUGhvbmcgS2jhu59pIEzhuqFjIETGsMahbmc6IEPDtWkgw4JtIETGsMahbmcgIFJlaW5jYXJuYXRpb24gTGFuZCAyMDIyICB0cmFpbGVy', '2023', 2, 2, 641113),
(57, '2022-11-18', ' Trương Tam Phong – The Tai Chi Master (2022) vào cuối triều đại Nam Tống; đất nước rối ren; các bộ tộc ngoại bang rình rập; tìm cách xâm lược Trung Nguyên. Vào ngày này; khi ngoại bang tấn công; Trương Quân Bảo đệ tử của phái Vô Cực đã lật ngược tình thế và giúp Nguỵ Lâm Xuyên; tướng quân của nhà Tống; bảo vệ thành công biên giới.<p>Trương Quân Bảo trở lại môn phái để tham gia buổi lễ tuyển chọn chưởng môn. Người cứng đầu cố chấp như cậu ta không hề có ý định tranh giành chưa sao chưởng môn ; nhưng trong cuộc tỉ thí võ nghệ lại rơi vào âm mưu của kẻ ác. Lúc khó khăn nguy hiểm Trương Quân Bảo đã sử dụng một chiêu thức võ công Ma giáo. Không ngờ đêm đó bọn ngoại tộc cấu kết với Ma giáo đánh phá phái Vô Cực ; qua một đêm; phái Vô Kỵ trở thành biển máu. Trương Quân Bảo dấn thân vào con đường trả thù; nhưng không ngờ lại dính vào một âm mưu lớn hơn … ', 'Trương Tam Phong  The Tai Chi Master 2022 ', 'Lin Zhenzhao', 'posters/posters8017872Truong-tam-phong.jpg', 'Đã hoàn thành', '90 phút', '1', 'posters/Truong-tam-phong.jpg', 'https://www.youtube.com/watch?v=D5W2s_ZTDxA&pp=ygU0VHLGsMahbmcgVGFtIFBob25nICBUaGUgVGFpIENoaSBNYXN0ZXIgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 956116),
(58, '2022-11-18', ' Trấn Ma Tư: Linh Nguyên Bí Thuật – Demon Sealer Bureau (2022) kể về một trăm năm trước; Ngọc Tu tiên sư phong ấn quái thú tám châu; và mộc thần Tây Nam biến thành gỗ khô (biến thành linh nguyên). Vào năm thứ 40 của triều đại nhà Triệu; Cố Niệm Đồng của Tà giáo; muốn phá vỡ phong ấn của tiên sư; tinh luyện mộc thần và biến nó thành mộc yêu; đầu độc chúng sinh.<p>Vì vậy; tiên hoàng đã đặc biệt sắc lệnh cho Đường Lăng Phong và một số người khác của Ẩn giám Trấn ma tư; chỉ huy quân đội tiến về phía Tây Nam để bình định yêu tà. Để chinh phục mộc yêu cần quái thú do Công Thâu gia tạo ra. Cách để điều khiển con quái thú là “linh nguyên mật thuật” được ghi lại trong “Lỗ Ban Toàn Thư”. Điều này cũng liên quan đến mối thù 10 năm trước của Đường gia với Công Thâu gia; Trấn ma tư.<p>Mười năm trước Công Thâu gia vì để có được “Lỗ Ban Toàn Thư” đã tàn sát cả nhà họ Đường; chỉ có Đường Lăng Phong 8 tuổi may mắn thoát chết được thống lĩnh Trấn ma tư Trương Khiệm đưa về Trấn ma tư nuôi dưỡng. Đường Lăng Phong kết giao với Lục Ấn và Lục Đồng; ba người thân thiết như huynh muội một nhà; đồng thời thông qua sát hạch nghiêm ngặt trở thành thành viên của Ẩn giám. Cùng với thân thế của Đường Lăng Phong dần dần được tiết lộ thì mối quan hệ của Lăng Phong và Lục Ấn; Lục Đồng cũng dần thay đổi. Ba người cũng dần dần bị rơi vào âm mưu của Công Thâu gia. ', 'Trấn Ma Tư: Linh Nguyên Bí Thuật  Demon Sealer Bureau 2022 ', 'Chris Huo', 'posters/posters9658234Tran-Ma-Tu.jpg', 'Đã hoàn thành', '100 phút', '1', 'posters/Tran-Ma-Tu.jpg', 'https://www.youtube.com/watch?v=7KKmV-HO5EA&pp=ygVKVHLhuqVuIE1hIFTGsDogTGluaCBOZ3V5w6puIELDrSBUaHXhuq10ICBEZW1vbiBTZWFsZXIgQnVyZWF1IDIwMjIgIHRyYWlsZXI%3D', '2023', 2, 4, 940727),
(59, '2022-11-18', ' Chuyện Lạ Trấn Long Vân – Tales Of Longyun Town (2022) những năm đầu Dân Quốc; chiến tranh khắp nơi; dân chúng lầm than. Câu chuyện xảy ra ở trấn Long Vân. Theo truyền thuyết; sau khi một kho báu được phát hiện bên cạnh trấn; những điều kỳ lạ bắt đầu xảy ra trong thị trấn; liên tiếp xảy ra vụ việc các cô gái bị giết hại tại nhà.<p>Người ta nói rằng triều trước một tên thủ lĩnh tự xưng là “Thiên Bảo Vương” vì muốn tạo phản nên đã chôn cất vàng bạc trân châu. Trưởng trấn đã cử người canh giữ kho báu. Tin tức về kho báu này đã thu hút rất nhiều người có tâm cơ xấu xa ở mọi nơi kéo đến trấn; và trấn Long Vân bé nhỏ này khắp nơi đều tồn tại những âm mưu nhằm chiếm đoạt kho báu. ', 'Chuyện Lạ Trấn Long Vân  Tales Of Longyun Town 2022 ', 'Liu Xuandi', 'posters/posters6893096Chuyen-La-Tran-Long-Van-2022.jpg', 'Đã hoàn thành', '76 phút', '1', 'posters/Chuyen-La-Tran-Long-Van-2022.jpg', 'https://www.youtube.com/watch?v=NShMCb_T68k&pp=ygVDQ2h1eeG7h24gTOG6oSBUcuG6pW4gTG9uZyBWw6JuICBUYWxlcyBPZiBMb25neXVuIFRvd24gMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 1, 874201),
(60, '2022-11-18', ' Ngộ Không Kỳ Truyện – Wu Kong (2017) là câu chuyện về Tôn Ngộ Không (Bành Vu Yến) trước khi trở thành Tề Thiên Đại Thánh tinh thông 72 phép biến hóa. Với vẻ lãng tử của một hiệp khách giang hồ; Tôn Ngộ Không cùng lòng nhiệt huyết; quyết tâm theo học võ nghệ tại tiên giới. Thế nhưng; trong một trận chiến; Ngộ Không bị ném vào nhân gian.<p>Dù trải qua nhiều khó khăn hoạn nạn; nhưng cuối cùng Ngộ Không đã tìm lại được chính bản thân mình; có thêm tình bạn cùng Dương Tiễn (Dư Văn Lạc) và một tình yêu đẹp chốn tiên giới cùng Tử Hà tiên tử (Nghê Ni). Thế nhưng; những mâu thuẫn nảy sinh trong tình yêu đã khiến Tôn Ngộ Không nổi giận đại náo thiên cung… ', 'Ngộ Không Kỳ Truyện  Wu Kong 2017 ', 'Derek Kwok', 'posters/posters7732220ngo-khong-ky-truyen.jpg', 'Đã hoàn thành', '130 phút', '1', 'posters/ngo-khong-ky-truyen.jpg', 'https://www.youtube.com/watch?v=6ETmeOoQnoI&pp=ygUxTmfhu5kgS2jDtG5nIEvhu7MgVHJ1eeG7h24gIFd1IEtvbmcgMjAxNyAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 176730),
(61, '2022-11-18', ' Ngũ Hành Bí Thuật – Five Elements Secret Art (2022) người xưa sáng tạo ra Bí thuật Ngũ hành dựa trên nguyên lý tương sinh tương khắc của ngũ hành; đó là năm loại kim; mộc; thủy; hỏa; thổ; hình thành nên năm môn phái tương ứng. Truyền nhân Kim môn lão Dương và con trai Dương Nhất Cân đến trấn Đào Nguyên dấu tên đổi họ sống bằng nghề bán rau và rèn sắt; Dương Nhất Cân muốn ra ngoài lập nghiệp; đóng vai một thiếu niên phóng túng và từng bước phát triển thành hiệp sĩ. Bộ phim mang đậm nét văn hóa Ngũ hành cổ xưa của Trung Quốc; kết hợp với phong cách thẩm mỹ Nhật Bản. ', 'Ngũ Hành Bí Thuật  Five Elements Secret Art 2022 ', 'Cheng Feng', 'posters/posters7924230ngu-hanh-bi-thuat.jpg', 'Đã hoàn thành', '86 phút', '1', 'posters/ngu-hanh-bi-thuat.jpg', 'https://www.youtube.com/watch?v=oIHEj6gCQO0&pp=ygU-TmfFqSBIw6BuaCBCw60gVGh14bqtdCAgRml2ZSBFbGVtZW50cyBTZWNyZXQgQXJ0IDIwMjIgIHRyYWlsZXI%3D', '2023', 2, 1, 404979),
(62, '2022-11-18', ' Cự Xà Sông Hoàng Hà – Yellow River Serpent (2023) một thôn nhỏ yên tĩnh bên sông Hoàng Hà; xuất hiện quan tài trôi nổi; mở ra đại họa lan tràn; trong thôn thường xuyên xảy ra chuyện kỳ lạ; liên tục có người mất tích. Gia chủ họ Triệu của tộc quỷ nước đã phái người xuống nước để điều tra; nhưng không có con quỷ nào sống sót; còn vị gia chủ cũng đột ngột qua đời. Ba mươi năm sau; nạn đói ập đến; gia súc trong thôn chết sớm; chân đỡ quan tài nổi lại xuất hiện trước thời hạn; trưởng thôn già bất lực quyết định dùng những người già yếu; bệnh tật; tàn tật trong thôn để tế sống.<p>Thiếu gia Triệu Bách bản tính nổi loạn; không được lòng mọi người. Trong buổi lễ thành niên; hắn kết giao với thiếu gia Trần gia thân mắc bệnh lạ. Bọn họ cho rằng”tử nhân hoạt” là hy vọng duy nhất mà họ theo đuổi cực khổ suốt nhiều năm. Để cứu những người già yếu; bệnh tật và tàn tật bị cắt đứt sự sống và để ngôi làng không bị đe dọa bởi chiếc quan tài trôi nổi bí ẩn; Triệu Bách đã kiên quyết dấn thân vào một hành trình nguy hiểm với kẻ họ Trần không rõ danh tính ', 'Cự Xà Sông Hoàng Hà  Yellow River Serpent 2023 ', 'You-Hao Wang', 'posters/posters236438Cu-Xa-Song-Hoang-Ha.jpg', 'Đã hoàn thành', '84 phút', '1', 'posters/Cu-Xa-Song-Hoang-Ha.jpg', 'https://www.youtube.com/watch?v=MDQNzxWa44k&pp=ygU9Q-G7sSBYw6AgU8O0bmcgSG_DoG5nIEjDoCAgWWVsbG93IFJpdmVyIFNlcnBlbnQgMjAyMyAgdHJhaWxlcg%3D%3D', '2023', 2, 1, 785353),
(63, '2022-11-18', ' Xích Cước Đại Tiên – Growth of God (2022) kể về câu chuyện của Xích Cước Đại Tiên xuống trần gian để tìm bảo vật. Từ một con người kiêu ngạo; cậy tài khinh người; hẹp hòi rồi dần dần trở thành một người tốt bụng; dũng cảm và giàu lòng yêu thương. Xích Cước Đại Tiên gặp gỡ và quen biết những người dân làng tốt bụng và đã cảm nhận được chân; thiện; mỹ của con người từ họ.<p>Từ sự đoàn kết của những người dân làng đã cảm nhận được sự biết ơn và tình cảm đích thực giữa con người. Khi Xích Cước Đại Tiên biết được thái độ coi thường mình của các vị đại tiên khác thì đột nhiên tỉnh ngộ. Cuối cùng; Xích Cước Đại Tiên đã từ bỏ cơ hội trở về trời và chọn đi khắp nhân gian để làm những điều tốt đẹp; khuyến khích mọi người dám đứng lên; đoàn kết và giúp đỡ lẫn nhau; để củng cố niềm tin; dũng cảm theo đuổi và kêu gọi công lý bằng lòng nhân ái… ', 'Xích Cước Đại Tiên  Growth of God 2022 ', 'Yang Jiao', 'posters/posters8751115Xich-cuoc-dai-tien.jpg', 'Đã hoàn thành', '81 phút', '1', 'posters/Xich-cuoc-dai-tien.jpg', 'https://www.youtube.com/watch?v=jAfcH3HD8G0&pp=ygU3WMOtY2ggQ8aw4bubYyDEkOG6oWkgVGnDqm4gIEdyb3d0aCBvZiBHb2QgMjAyMiAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 701513),
(66, '2022-11-18', ' Mãnh Thú Đông Bắc – Northeast Zoo (2023) kể về câu chuyện của Tôn Đắc Hữu; giám đốc cũ của vườn thú; người khăng khăng vận hành vườn thú bằng nhiều cách kỳ lạ dưới áp lực của thời đại thay đổi và những khó khăn nội bộ. Kiên trì vận hành sở thú thông qua nhiều phương tiện tuyệt vời khác nhau; câu chuyện thông qua việc thiết lập mối quan hệ giữa cha và con trai; chân thực cho thấy các vấn đề xã hội như sự già hóa nghiêm trọng của vùng Đông Bắc và sự mất mát của những người trẻ tuổi.<p>Qua việc bàn đến lợi ích kinh tế và lợi ích tinh thần thể hiện giá trị hòa hợp; thống nhất trong xã hội ngày nay. Trong câu chuyện; Tôn Đắc Hữu và những người khác là những người nhỏ bé bình thường; nhưng các nhân vật mặc dù bình thường nhưng lại chứa đựng những giá trị phi thường và năng lượng tích cực; tạo hình của con trai ông Tôn Tiểu Hổ giới thiệu góc nhìn của những người trẻ tuổi.<p>Tôn Tiểu Hổ tìm lại được lòng mong mỏi quay về cố hương hương; để khán giả cảm nhận được sự dũng cảm và quyết tâm vượt qua bối rối của những người trẻ tuổi; điều này phản ánh những chỉ dẫn tinh thần của “Dự án Ngỗng hoang trở về” do đất nước thực hiện. Bằng cách thể hiện sự cải cách của sở thú; nó cho thấy tinh thần chiến đấu của người dân ở Đông Bắc Trung Quốc; những người không bao giờ từ bỏ hoặc bỏ cuộc. Chỉ có sự phát triển hài hòa của con người và gia đình mới có thể tạo ra một cuộc sống tốt đẹp hơn. ', 'Mãnh Thú Đông Bắc  Northeast Zoo 2023 ', '文松', 'posters/posters2900487Manh-thu-dong-bac.jpg', 'Đã hoàn thành', '86 phút', '1', 'posters/Manh-thu-dong-bac.jpg', 'https://www.youtube.com/watch?v=GJsArYGR-JE&pp=ygU0TcOjbmggVGjDuiDEkMO0bmcgQuG6r2MgIE5vcnRoZWFzdCBab28gMjAyMyAgdHJhaWxlcg%3D%3D', '2023', 2, 4, 210411),
(67, '2022-11-18', ' Ngưu Ma Vương Trở Lại – Niu Mo Wang (2023) vào thời cổ đại; Xi Vưu thủ lĩnh của Ma tộc; kiêu ngạo ngạo mạn; gây ra hỗn loạn thiên giới; nhưng cuối cùng cũng bị đánh trở lại hình dạng ban đầu. Không ngờ vài năm sau; bản tính yêu quái và trí nhớ của Xi Vưu bị đánh thức; Xi Vưu một mình đến Côn Lôn tìm cách giải quyết; trên đường đi gặp Diệp Tiêu Tiêu.<p>Hai người này cùng nhau vượt qua khó khăn nguy hiểm; và tình yêu của họ từ từ nảy nở. Xi Vực liên tục lang thang giữa thiện và ác. Điều này gần như gây ra sự tàn phá; nhưng cuối cùng; cái ác không thể đàn áp cái thiện. Những âm mưu xung quanh cậu ấy từ thời xa xưa đã được hóa giải. ', 'Ngưu Ma Vương Trở Lại  Niu Mo Wang 2023 ', 'Zhang Zengguang', 'posters/posters4500328Nguu-Ma-Vuong-Tro-Lai.jpg', 'Đã hoàn thành', '87 phút', '1', 'posters/Nguu-Ma-Vuong-Tro-Lai.jpg', 'https://www.youtube.com/watch?v=0YC5151A7Uo&pp=ygU3TmfGsHUgTWEgVsawxqFuZyBUcuG7nyBM4bqhaSAgTml1IE1vIFdhbmcgMjAyMyAgdHJhaWxlcg%3D%3D', '2023', 2, 3, 394292);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_historys`
--

CREATE TABLE `movie_historys` (
  `id` int(11) NOT NULL,
  `number_now` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie_historys`
--

INSERT INTO `movie_historys` (`id`, `number_now`, `movie_id`, `user_id`) VALUES
(1, 1, 4, 7),
(2, 1, 1, 7),
(3, 1, 4, 7),
(4, 1, 4, 7),
(5, 1, 51, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `number_rating` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `number_rating`, `movie_id`, `user_id`) VALUES
(1, 4, 1, NULL),
(2, 3, 1, NULL),
(3, 5, 1, NULL),
(4, 5, 1, NULL),
(5, 5, 1, NULL),
(6, 5, 1, NULL),
(7, 3, 4, NULL),
(8, 5, 59, NULL),
(9, 3, 59, NULL),
(10, 5, 59, NULL),
(11, 1, 59, NULL),
(12, 2, 59, NULL),
(13, 1, 59, NULL),
(14, 2, 59, NULL),
(15, 4, 59, NULL),
(16, 5, 59, NULL),
(17, 4, 59, NULL),
(18, 5, 1, NULL),
(19, 3, 51, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(42, 'ROLE_SUPER_ADMIN'),
(41, 'ROLE_ADMIN'),
(40, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `studios`
--

CREATE TABLE `studios` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `url_avatar` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `phone`, `url_avatar`, `role_id`) VALUES
(7, 'ling123@gmail.com', 'Huỳnh Nhật Linh', '$2a$10$3vdtKt8NnwcDANk5NhEYVOWfiEJYSvCTK9bIB3slDE6H7Lx8dV98O', NULL, 'profileImages/avatar.png', NULL),
(5, 'admin123@gmail.com', 'Huỳnh Nhật Linh', '$2a$10$qhfnGN7HmNyd2tR.8TUmi.FbihW.XzefbyI1rwDQD8yNksCkaTp82', '1', NULL, NULL),
(6, 'ling@gmail.com', 'ling@gmail.com', '$2a$10$/aU8PP0w01vsAhY6eqOtmetB1h.CUWf4wi8Q0cb.7L2zAxZAwfFF6$2a$10$qhfnGN7HmNyd2tR.8TUmi.FbihW.XzefbyI1rwDQD8yNksCkaTp82', '1', 'profileImages/avatar.png', NULL),
(8, 'ling64645645@gmail.com', 'WEBPhim', '$2a$10$oLqSBIisNb9rGHn20I4TE.3dJBHJDIi7XzCnW1ZV/o4SJcUxhJHIG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 40),
(3, 41),
(4, 40),
(4, 41),
(5, 40),
(5, 41),
(6, 40),
(7, 40),
(8, 40);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `actor_detail`
--
ALTER TABLE `actor_detail`
  ADD KEY `FKbtkbu3xu0k48rnrwkvi25nh40` (`actor_id`),
  ADD KEY `FKkk46805wpef7f1qdwacl4qlx0` (`movie_id`);

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgc8dtql9mkq268detxiox7fpm` (`user_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk4afod0bluaff04jkuj08n7lk` (`movie_id`),
  ADD KEY `FK8omq0tc18jd43bu5tjh6jvraq` (`user_id`);

--
-- Chỉ mục cho bảng `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrh1g1a20omjmn6kurd35o3eit` (`user_id`);

--
-- Chỉ mục cho bảng `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsbpb6q6d7t2jvwfwmlp0953e4` (`movie_id`);

--
-- Chỉ mục cho bảng `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `genre_detail`
--
ALTER TABLE `genre_detail`
  ADD KEY `FKncbe5adarbke2ehklnl1nf6y1` (`genre_id`),
  ADD KEY `FK32u69uqqsx8k9x2k6xwwnj5px` (`movie_id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt489pmf0p5u2r2w1qwtyjo750` (`country_id`),
  ADD KEY `FKg6ix0h6j18ntw51oekxltx8qw` (`language_id`);

--
-- Chỉ mục cho bảng `movie_historys`
--
ALTER TABLE `movie_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKiaht525wsbcuw0tk7p8qdb09v` (`movie_id`),
  ADD KEY `FKfg7hjaog8wrrxt75xv25ms6xb` (`user_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKew2vg6pytp8v3womwkojy7du3` (`movie_id`),
  ADD KEY `FKb3354ee2xxvdrbyq9f42jdayd` (`user_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4qu1gr772nnf6ve5af002rwya` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `countrys`
--
ALTER TABLE `countrys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190120;

--
-- AUTO_INCREMENT cho bảng `movie_historys`
--
ALTER TABLE `movie_historys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `studios`
--
ALTER TABLE `studios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
