-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th9 11, 2024 lúc 10:04 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `manage_student`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Courses WrjwH', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(2, 'Courses WUiJJ', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(3, 'Courses lkFv0', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(4, 'Courses BwEhw', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(5, 'Courses EPvPf', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(6, 'Courses 8eiJO', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(7, 'Courses 6sT3r', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(8, 'Courses d9j3x', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(9, 'Courses uWtS1', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(10, 'Courses 9ZCTN', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_result`
--

CREATE TABLE `course_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `score` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_result`
--

INSERT INTO `course_result` (`id`, `student_id`, `course_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 9, NULL, NULL),
(2, 1, 2, 10, NULL, NULL),
(3, 1, 3, 5, NULL, NULL),
(4, 1, 4, 2, NULL, NULL),
(5, 1, 5, 9, NULL, NULL),
(6, 1, 6, 6, NULL, NULL),
(7, 1, 7, 4, NULL, NULL),
(8, 1, 8, 4, NULL, NULL),
(9, 1, 9, 2, NULL, NULL),
(10, 1, 10, 4, NULL, NULL),
(11, 2, 1, 10, NULL, NULL),
(12, 2, 2, 8, NULL, NULL),
(13, 2, 3, 9, NULL, NULL),
(14, 2, 4, 0, NULL, NULL),
(15, 2, 5, 8, NULL, NULL),
(16, 2, 6, 9, NULL, NULL),
(17, 2, 7, 5, NULL, NULL),
(18, 2, 8, 1, NULL, NULL),
(19, 2, 9, 2, NULL, NULL),
(20, 2, 10, 8, NULL, NULL),
(21, 3, 1, 0, NULL, NULL),
(22, 3, 2, 0, NULL, NULL),
(23, 3, 3, 0, NULL, NULL),
(24, 3, 4, 1, NULL, NULL),
(25, 3, 5, 3, NULL, NULL),
(26, 3, 6, 3, NULL, NULL),
(27, 3, 7, 2, NULL, NULL),
(28, 3, 8, 3, NULL, NULL),
(29, 3, 9, 7, NULL, NULL),
(30, 3, 10, 10, NULL, NULL),
(31, 4, 1, 6, NULL, NULL),
(32, 4, 2, 5, NULL, NULL),
(33, 4, 3, 8, NULL, NULL),
(34, 4, 4, 1, NULL, NULL),
(35, 4, 5, 7, NULL, NULL),
(36, 4, 6, 9, NULL, NULL),
(37, 4, 7, 2, NULL, NULL),
(38, 4, 8, 7, NULL, NULL),
(39, 4, 9, 8, NULL, NULL),
(40, 4, 10, 10, NULL, NULL),
(41, 5, 1, 3, NULL, NULL),
(42, 5, 2, 4, NULL, NULL),
(43, 5, 3, 4, NULL, NULL),
(44, 5, 4, 7, NULL, NULL),
(45, 5, 5, 9, NULL, NULL),
(46, 5, 6, 3, NULL, NULL),
(47, 5, 7, 9, NULL, NULL),
(48, 5, 8, 7, NULL, NULL),
(49, 5, 9, 3, NULL, NULL),
(50, 5, 10, 10, NULL, NULL),
(51, 6, 1, 9, NULL, NULL),
(52, 6, 2, 2, NULL, NULL),
(53, 6, 3, 6, NULL, NULL),
(54, 6, 4, 0, NULL, NULL),
(55, 6, 5, 5, NULL, NULL),
(56, 6, 6, 5, NULL, NULL),
(57, 6, 7, 1, NULL, NULL),
(58, 6, 8, 10, NULL, NULL),
(59, 6, 9, 1, NULL, NULL),
(60, 6, 10, 7, NULL, NULL),
(61, 7, 1, 6, NULL, NULL),
(62, 7, 2, 5, NULL, NULL),
(63, 7, 3, 6, NULL, NULL),
(64, 7, 4, 3, NULL, NULL),
(65, 7, 5, 9, NULL, NULL),
(66, 7, 6, 7, NULL, NULL),
(67, 7, 7, 9, NULL, NULL),
(68, 7, 8, 4, NULL, NULL),
(69, 7, 9, 0, NULL, NULL),
(70, 7, 10, 4, NULL, NULL),
(71, 8, 1, 6, NULL, NULL),
(72, 8, 2, 1, NULL, NULL),
(73, 8, 3, 4, NULL, NULL),
(74, 8, 4, 2, NULL, NULL),
(75, 8, 5, 8, NULL, NULL),
(76, 8, 6, 10, NULL, NULL),
(77, 8, 7, 1, NULL, NULL),
(78, 8, 8, 2, NULL, NULL),
(79, 8, 9, 0, NULL, NULL),
(80, 8, 10, 1, NULL, NULL),
(81, 9, 1, 3, NULL, NULL),
(82, 9, 2, 1, NULL, NULL),
(83, 9, 3, 7, NULL, NULL),
(84, 9, 4, 4, NULL, NULL),
(85, 9, 5, 8, NULL, NULL),
(86, 9, 6, 0, NULL, NULL),
(87, 9, 7, 6, NULL, NULL),
(88, 9, 8, 0, NULL, NULL),
(89, 9, 9, 6, NULL, NULL),
(90, 9, 10, 2, NULL, NULL),
(91, 10, 1, 9, NULL, NULL),
(92, 10, 2, 4, NULL, NULL),
(93, 10, 3, 10, NULL, NULL),
(94, 10, 4, 2, NULL, NULL),
(95, 10, 5, 2, NULL, NULL),
(96, 10, 6, 0, NULL, NULL),
(97, 10, 7, 0, NULL, NULL),
(98, 10, 8, 0, NULL, NULL),
(99, 10, 9, 8, NULL, NULL),
(100, 10, 10, 4, NULL, NULL),
(101, 11, 1, 1, NULL, NULL),
(102, 11, 2, 2, NULL, NULL),
(103, 11, 3, 2, NULL, NULL),
(104, 11, 4, 4, NULL, NULL),
(105, 11, 5, 4, NULL, NULL),
(106, 11, 6, 9, NULL, NULL),
(107, 11, 7, 4, NULL, NULL),
(108, 11, 8, 6, NULL, NULL),
(109, 11, 9, 10, NULL, NULL),
(110, 11, 10, 2, NULL, NULL),
(111, 12, 1, 9, NULL, NULL),
(112, 12, 2, 10, NULL, NULL),
(113, 12, 3, 2, NULL, NULL),
(114, 12, 4, 7, NULL, NULL),
(115, 12, 5, 0, NULL, NULL),
(116, 12, 6, 10, NULL, NULL),
(117, 12, 7, 10, NULL, NULL),
(118, 12, 8, 7, NULL, NULL),
(119, 12, 9, 4, NULL, NULL),
(120, 12, 10, 0, NULL, NULL),
(121, 13, 1, 0, NULL, NULL),
(122, 13, 2, 10, NULL, NULL),
(123, 13, 3, 7, NULL, NULL),
(124, 13, 4, 5, NULL, NULL),
(125, 13, 5, 8, NULL, NULL),
(126, 13, 6, 7, NULL, NULL),
(127, 13, 7, 3, NULL, NULL),
(128, 13, 8, 9, NULL, NULL),
(129, 13, 9, 7, NULL, NULL),
(130, 13, 10, 8, NULL, NULL),
(131, 14, 1, 7, NULL, NULL),
(132, 14, 2, 6, NULL, NULL),
(133, 14, 3, 0, NULL, NULL),
(134, 14, 4, 3, NULL, NULL),
(135, 14, 5, 8, NULL, NULL),
(136, 14, 6, 5, NULL, NULL),
(137, 14, 7, 0, NULL, NULL),
(138, 14, 8, 9, NULL, NULL),
(139, 14, 9, 3, NULL, NULL),
(140, 14, 10, 3, NULL, NULL),
(141, 15, 1, 8, NULL, NULL),
(142, 15, 2, 3, NULL, NULL),
(143, 15, 3, 3, NULL, NULL),
(144, 15, 4, 5, NULL, NULL),
(145, 15, 5, 0, NULL, NULL),
(146, 15, 6, 5, NULL, NULL),
(147, 15, 7, 2, NULL, NULL),
(148, 15, 8, 0, NULL, NULL),
(149, 15, 9, 4, NULL, NULL),
(150, 15, 10, 7, NULL, NULL),
(151, 16, 1, 2, NULL, NULL),
(152, 16, 2, 9, NULL, NULL),
(153, 16, 3, 9, NULL, NULL),
(154, 16, 4, 9, NULL, NULL),
(155, 16, 5, 6, NULL, NULL),
(156, 16, 6, 4, NULL, NULL),
(157, 16, 7, 2, NULL, NULL),
(158, 16, 8, 9, NULL, NULL),
(159, 16, 9, 1, NULL, NULL),
(160, 16, 10, 1, NULL, NULL),
(161, 17, 1, 4, NULL, NULL),
(162, 17, 2, 7, NULL, NULL),
(163, 17, 3, 9, NULL, NULL),
(164, 17, 4, 10, NULL, NULL),
(165, 17, 5, 1, NULL, NULL),
(166, 17, 6, 10, NULL, NULL),
(167, 17, 7, 10, NULL, NULL),
(168, 17, 8, 2, NULL, NULL),
(169, 17, 9, 4, NULL, NULL),
(170, 17, 10, 2, NULL, NULL),
(171, 18, 1, 4, NULL, NULL),
(172, 18, 2, 6, NULL, NULL),
(173, 18, 3, 6, NULL, NULL),
(174, 18, 4, 4, NULL, NULL),
(175, 18, 5, 4, NULL, NULL),
(176, 18, 6, 10, NULL, NULL),
(177, 18, 7, 5, NULL, NULL),
(178, 18, 8, 2, NULL, NULL),
(179, 18, 9, 10, NULL, NULL),
(180, 18, 10, 4, NULL, NULL),
(181, 19, 1, 8, NULL, NULL),
(182, 19, 2, 7, NULL, NULL),
(183, 19, 3, 4, NULL, NULL),
(184, 19, 4, 7, NULL, NULL),
(185, 19, 5, 0, NULL, NULL),
(186, 19, 6, 2, NULL, NULL),
(187, 19, 7, 10, NULL, NULL),
(188, 19, 8, 2, NULL, NULL),
(189, 19, 9, 2, NULL, NULL),
(190, 19, 10, 4, NULL, NULL),
(191, 20, 1, 0, NULL, NULL),
(192, 20, 2, 3, NULL, NULL),
(193, 20, 3, 2, NULL, NULL),
(194, 20, 4, 2, NULL, NULL),
(195, 20, 5, 1, NULL, NULL),
(196, 20, 6, 1, NULL, NULL),
(197, 20, 7, 8, NULL, NULL),
(198, 20, 8, 4, NULL, NULL),
(199, 20, 9, 9, NULL, NULL),
(200, 20, 10, 2, NULL, NULL),
(201, 21, 1, 8, NULL, NULL),
(202, 21, 2, 4, NULL, NULL),
(203, 21, 3, 7, NULL, NULL),
(204, 21, 4, 6, NULL, NULL),
(205, 21, 5, 4, NULL, NULL),
(206, 21, 6, 3, NULL, NULL),
(207, 21, 7, 6, NULL, NULL),
(208, 21, 8, 9, NULL, NULL),
(209, 21, 9, 7, NULL, NULL),
(210, 21, 10, 6, NULL, NULL),
(211, 22, 1, 8, NULL, NULL),
(212, 22, 2, 1, NULL, NULL),
(213, 22, 3, 6, NULL, NULL),
(214, 22, 4, 4, NULL, NULL),
(215, 22, 5, 1, NULL, NULL),
(216, 22, 6, 3, NULL, NULL),
(217, 22, 7, 1, NULL, NULL),
(218, 22, 8, 2, NULL, NULL),
(219, 22, 9, 1, NULL, NULL),
(220, 22, 10, 10, NULL, NULL),
(221, 23, 1, 6, NULL, NULL),
(222, 23, 2, 10, NULL, NULL),
(223, 23, 3, 7, NULL, NULL),
(224, 23, 4, 4, NULL, NULL),
(225, 23, 5, 5, NULL, NULL),
(226, 23, 6, 6, NULL, NULL),
(227, 23, 7, 7, NULL, NULL),
(228, 23, 8, 7, NULL, NULL),
(229, 23, 9, 4, NULL, NULL),
(230, 23, 10, 1, NULL, NULL),
(231, 24, 1, 4, NULL, NULL),
(232, 24, 2, 5, NULL, NULL),
(233, 24, 3, 5, NULL, NULL),
(234, 24, 4, 1, NULL, NULL),
(235, 24, 5, 1, NULL, NULL),
(236, 24, 6, 0, NULL, NULL),
(237, 24, 7, 2, NULL, NULL),
(238, 24, 8, 4, NULL, NULL),
(239, 24, 9, 3, NULL, NULL),
(240, 24, 10, 4, NULL, NULL),
(241, 25, 1, 9, NULL, NULL),
(242, 25, 2, 3, NULL, NULL),
(243, 25, 3, 8, NULL, NULL),
(244, 25, 4, 10, NULL, NULL),
(245, 25, 5, 5, NULL, NULL),
(246, 25, 6, 4, NULL, NULL),
(247, 25, 7, 1, NULL, NULL),
(248, 25, 8, 2, NULL, NULL),
(249, 25, 9, 10, NULL, NULL),
(250, 25, 10, 10, NULL, NULL),
(251, 26, 1, 10, NULL, NULL),
(252, 26, 2, 9, NULL, NULL),
(253, 26, 3, 4, NULL, NULL),
(254, 26, 4, 10, NULL, NULL),
(255, 26, 5, 5, NULL, NULL),
(256, 26, 6, 2, NULL, NULL),
(257, 26, 7, 2, NULL, NULL),
(258, 26, 8, 7, NULL, NULL),
(259, 26, 9, 6, NULL, NULL),
(260, 26, 10, 3, NULL, NULL),
(261, 27, 1, 6, NULL, NULL),
(262, 27, 2, 1, NULL, NULL),
(263, 27, 3, 2, NULL, NULL),
(264, 27, 4, 10, NULL, NULL),
(265, 27, 5, 7, NULL, NULL),
(266, 27, 6, 3, NULL, NULL),
(267, 27, 7, 6, NULL, NULL),
(268, 27, 8, 10, NULL, NULL),
(269, 27, 9, 0, NULL, NULL),
(270, 27, 10, 3, NULL, NULL),
(271, 28, 1, 8, NULL, NULL),
(272, 28, 2, 10, NULL, NULL),
(273, 28, 3, 0, NULL, NULL),
(274, 28, 4, 2, NULL, NULL),
(275, 28, 5, 3, NULL, NULL),
(276, 28, 6, 8, NULL, NULL),
(277, 28, 7, 3, NULL, NULL),
(278, 28, 8, 2, NULL, NULL),
(279, 28, 9, 6, NULL, NULL),
(280, 28, 10, 6, NULL, NULL),
(281, 29, 1, 6, NULL, NULL),
(282, 29, 2, 10, NULL, NULL),
(283, 29, 3, 3, NULL, NULL),
(284, 29, 4, 10, NULL, NULL),
(285, 29, 5, 1, NULL, NULL),
(286, 29, 6, 5, NULL, NULL),
(287, 29, 7, 2, NULL, NULL),
(288, 29, 8, 7, NULL, NULL),
(289, 29, 9, 9, NULL, NULL),
(290, 29, 10, 3, NULL, NULL),
(291, 30, 1, 4, NULL, NULL),
(292, 30, 2, 5, NULL, NULL),
(293, 30, 3, 10, NULL, NULL),
(294, 30, 4, 8, NULL, NULL),
(295, 30, 5, 9, NULL, NULL),
(296, 30, 6, 0, NULL, NULL),
(297, 30, 7, 1, NULL, NULL),
(298, 30, 8, 3, NULL, NULL),
(299, 30, 9, 0, NULL, NULL),
(300, 30, 10, 1, NULL, NULL),
(301, 31, 1, 7, NULL, NULL),
(302, 31, 2, 7, NULL, NULL),
(303, 31, 3, 2, NULL, NULL),
(304, 31, 4, 5, NULL, NULL),
(305, 31, 5, 7, NULL, NULL),
(306, 31, 6, 0, NULL, NULL),
(307, 31, 7, 2, NULL, NULL),
(308, 31, 8, 3, NULL, NULL),
(309, 31, 9, 6, NULL, NULL),
(310, 31, 10, 5, NULL, NULL),
(311, 32, 1, 6, NULL, NULL),
(312, 32, 2, 2, NULL, NULL),
(313, 32, 3, 0, NULL, NULL),
(314, 32, 4, 7, NULL, NULL),
(315, 32, 5, 1, NULL, NULL),
(316, 32, 6, 10, NULL, NULL),
(317, 32, 7, 1, NULL, NULL),
(318, 32, 8, 2, NULL, NULL),
(319, 32, 9, 1, NULL, NULL),
(320, 32, 10, 7, NULL, NULL),
(321, 33, 1, 5, NULL, NULL),
(322, 33, 2, 8, NULL, NULL),
(323, 33, 3, 3, NULL, NULL),
(324, 33, 4, 0, NULL, NULL),
(325, 33, 5, 9, NULL, NULL),
(326, 33, 6, 8, NULL, NULL),
(327, 33, 7, 8, NULL, NULL),
(328, 33, 8, 1, NULL, NULL),
(329, 33, 9, 10, NULL, NULL),
(330, 33, 10, 8, NULL, NULL),
(331, 34, 1, 7, NULL, NULL),
(332, 34, 2, 5, NULL, NULL),
(333, 34, 3, 7, NULL, NULL),
(334, 34, 4, 3, NULL, NULL),
(335, 34, 5, 3, NULL, NULL),
(336, 34, 6, 2, NULL, NULL),
(337, 34, 7, 9, NULL, NULL),
(338, 34, 8, 5, NULL, NULL),
(339, 34, 9, 7, NULL, NULL),
(340, 34, 10, 5, NULL, NULL),
(341, 35, 1, 4, NULL, NULL),
(342, 35, 2, 0, NULL, NULL),
(343, 35, 3, 8, NULL, NULL),
(344, 35, 4, 2, NULL, NULL),
(345, 35, 5, 4, NULL, NULL),
(346, 35, 6, 3, NULL, NULL),
(347, 35, 7, 4, NULL, NULL),
(348, 35, 8, 8, NULL, NULL),
(349, 35, 9, 10, NULL, NULL),
(350, 35, 10, 6, NULL, NULL),
(351, 36, 1, 10, NULL, NULL),
(352, 36, 2, 8, NULL, NULL),
(353, 36, 3, 10, NULL, NULL),
(354, 36, 4, 0, NULL, NULL),
(355, 36, 5, 8, NULL, NULL),
(356, 36, 6, 2, NULL, NULL),
(357, 36, 7, 10, NULL, NULL),
(358, 36, 8, 7, NULL, NULL),
(359, 36, 9, 5, NULL, NULL),
(360, 36, 10, 7, NULL, NULL),
(361, 37, 1, 7, NULL, NULL),
(362, 37, 2, 0, NULL, NULL),
(363, 37, 3, 5, NULL, NULL),
(364, 37, 4, 5, NULL, NULL),
(365, 37, 5, 6, NULL, NULL),
(366, 37, 6, 8, NULL, NULL),
(367, 37, 7, 4, NULL, NULL),
(368, 37, 8, 3, NULL, NULL),
(369, 37, 9, 0, NULL, NULL),
(370, 37, 10, 8, NULL, NULL),
(371, 38, 1, 0, NULL, NULL),
(372, 38, 2, 0, NULL, NULL),
(373, 38, 3, 6, NULL, NULL),
(374, 38, 4, 5, NULL, NULL),
(375, 38, 5, 9, NULL, NULL),
(376, 38, 6, 6, NULL, NULL),
(377, 38, 7, 8, NULL, NULL),
(378, 38, 8, 3, NULL, NULL),
(379, 38, 9, 2, NULL, NULL),
(380, 38, 10, 4, NULL, NULL),
(381, 39, 1, 9, NULL, NULL),
(382, 39, 2, 7, NULL, NULL),
(383, 39, 3, 4, NULL, NULL),
(384, 39, 4, 1, NULL, NULL),
(385, 39, 5, 9, NULL, NULL),
(386, 39, 6, 4, NULL, NULL),
(387, 39, 7, 7, NULL, NULL),
(388, 39, 8, 8, NULL, NULL),
(389, 39, 9, 2, NULL, NULL),
(390, 39, 10, 10, NULL, NULL),
(391, 40, 1, 9, NULL, NULL),
(392, 40, 2, 10, NULL, NULL),
(393, 40, 3, 7, NULL, NULL),
(394, 40, 4, 9, NULL, NULL),
(395, 40, 5, 3, NULL, NULL),
(396, 40, 6, 9, NULL, NULL),
(397, 40, 7, 3, NULL, NULL),
(398, 40, 8, 1, NULL, NULL),
(399, 40, 9, 7, NULL, NULL),
(400, 40, 10, 8, NULL, NULL),
(401, 41, 1, 5, NULL, NULL),
(402, 41, 2, 1, NULL, NULL),
(403, 41, 3, 9, NULL, NULL),
(404, 41, 4, 6, NULL, NULL),
(405, 41, 5, 2, NULL, NULL),
(406, 41, 6, 10, NULL, NULL),
(407, 41, 7, 0, NULL, NULL),
(408, 41, 8, 6, NULL, NULL),
(409, 41, 9, 8, NULL, NULL),
(410, 41, 10, 9, NULL, NULL),
(411, 42, 1, 3, NULL, NULL),
(412, 42, 2, 1, NULL, NULL),
(413, 42, 3, 3, NULL, NULL),
(414, 42, 4, 10, NULL, NULL),
(415, 42, 5, 5, NULL, NULL),
(416, 42, 6, 8, NULL, NULL),
(417, 42, 7, 1, NULL, NULL),
(418, 42, 8, 7, NULL, NULL),
(419, 42, 9, 8, NULL, NULL),
(420, 42, 10, 10, NULL, NULL),
(421, 43, 1, 4, NULL, NULL),
(422, 43, 2, 9, NULL, NULL),
(423, 43, 3, 7, NULL, NULL),
(424, 43, 4, 8, NULL, NULL),
(425, 43, 5, 0, NULL, NULL),
(426, 43, 6, 8, NULL, NULL),
(427, 43, 7, 6, NULL, NULL),
(428, 43, 8, 7, NULL, NULL),
(429, 43, 9, 4, NULL, NULL),
(430, 43, 10, 8, NULL, NULL),
(431, 44, 1, 3, NULL, NULL),
(432, 44, 2, 4, NULL, NULL),
(433, 44, 3, 6, NULL, NULL),
(434, 44, 4, 2, NULL, NULL),
(435, 44, 5, 6, NULL, NULL),
(436, 44, 6, 2, NULL, NULL),
(437, 44, 7, 4, NULL, NULL),
(438, 44, 8, 3, NULL, NULL),
(439, 44, 9, 3, NULL, NULL),
(440, 44, 10, 2, NULL, NULL),
(441, 45, 1, 9, NULL, NULL),
(442, 45, 2, 8, NULL, NULL),
(443, 45, 3, 8, NULL, NULL),
(444, 45, 4, 7, NULL, NULL),
(445, 45, 5, 3, NULL, NULL),
(446, 45, 6, 0, NULL, NULL),
(447, 45, 7, 10, NULL, NULL),
(448, 45, 8, 10, NULL, NULL),
(449, 45, 9, 7, NULL, NULL),
(450, 45, 10, 2, NULL, NULL),
(451, 46, 1, 9, NULL, NULL),
(452, 46, 2, 0, NULL, NULL),
(453, 46, 3, 3, NULL, NULL),
(454, 46, 4, 8, NULL, NULL),
(455, 46, 5, 9, NULL, NULL),
(456, 46, 6, 7, NULL, NULL),
(457, 46, 7, 6, NULL, NULL),
(458, 46, 8, 9, NULL, NULL),
(459, 46, 9, 4, NULL, NULL),
(460, 46, 10, 4, NULL, NULL),
(461, 47, 1, 7, NULL, NULL),
(462, 47, 2, 8, NULL, NULL),
(463, 47, 3, 6, NULL, NULL),
(464, 47, 4, 0, NULL, NULL),
(465, 47, 5, 4, NULL, NULL),
(466, 47, 6, 4, NULL, NULL),
(467, 47, 7, 1, NULL, NULL),
(468, 47, 8, 10, NULL, NULL),
(469, 47, 9, 10, NULL, NULL),
(470, 47, 10, 4, NULL, NULL),
(471, 48, 1, 5, NULL, NULL),
(472, 48, 2, 9, NULL, NULL),
(473, 48, 3, 9, NULL, NULL),
(474, 48, 4, 8, NULL, NULL),
(475, 48, 5, 6, NULL, NULL),
(476, 48, 6, 4, NULL, NULL),
(477, 48, 7, 5, NULL, NULL),
(478, 48, 8, 7, NULL, NULL),
(479, 48, 9, 1, NULL, NULL),
(480, 48, 10, 3, NULL, NULL),
(481, 49, 1, 9, NULL, NULL),
(482, 49, 2, 1, NULL, NULL),
(483, 49, 3, 3, NULL, NULL),
(484, 49, 4, 7, NULL, NULL),
(485, 49, 5, 2, NULL, NULL),
(486, 49, 6, 5, NULL, NULL),
(487, 49, 7, 0, NULL, NULL),
(488, 49, 8, 1, NULL, NULL),
(489, 49, 9, 9, NULL, NULL),
(490, 49, 10, 4, NULL, NULL),
(491, 50, 1, 5, NULL, NULL),
(492, 50, 2, 4, NULL, NULL),
(493, 50, 3, 10, NULL, NULL),
(494, 50, 4, 6, NULL, NULL),
(495, 50, 5, 2, NULL, NULL),
(496, 50, 6, 3, NULL, NULL),
(497, 50, 7, 9, NULL, NULL),
(498, 50, 8, 2, NULL, NULL),
(499, 50, 9, 1, NULL, NULL),
(500, 50, 10, 2, NULL, NULL),
(501, 51, 1, 1, NULL, NULL),
(502, 51, 2, 10, NULL, NULL),
(503, 51, 3, 7, NULL, NULL),
(504, 51, 4, 2, NULL, NULL),
(505, 51, 5, 0, NULL, NULL),
(506, 51, 6, 8, NULL, NULL),
(507, 51, 7, 1, NULL, NULL),
(508, 51, 8, 3, NULL, NULL),
(509, 51, 9, 0, NULL, NULL),
(510, 51, 10, 8, NULL, NULL),
(511, 52, 1, 3, NULL, NULL),
(512, 52, 2, 9, NULL, NULL),
(513, 52, 3, 1, NULL, NULL),
(514, 52, 4, 4, NULL, NULL),
(515, 52, 5, 4, NULL, NULL),
(516, 52, 6, 2, NULL, NULL),
(517, 52, 7, 0, NULL, NULL),
(518, 52, 8, 9, NULL, NULL),
(519, 52, 9, 4, NULL, NULL),
(520, 52, 10, 4, NULL, NULL),
(521, 53, 1, 5, NULL, NULL),
(522, 53, 2, 5, NULL, NULL),
(523, 53, 3, 9, NULL, NULL),
(524, 53, 4, 3, NULL, NULL),
(525, 53, 5, 8, NULL, NULL),
(526, 53, 6, 5, NULL, NULL),
(527, 53, 7, 7, NULL, NULL),
(528, 53, 8, 6, NULL, NULL),
(529, 53, 9, 8, NULL, NULL),
(530, 53, 10, 2, NULL, NULL),
(531, 54, 1, 6, NULL, NULL),
(532, 54, 2, 7, NULL, NULL),
(533, 54, 3, 6, NULL, NULL),
(534, 54, 4, 3, NULL, NULL),
(535, 54, 5, 4, NULL, NULL),
(536, 54, 6, 8, NULL, NULL),
(537, 54, 7, 3, NULL, NULL),
(538, 54, 8, 6, NULL, NULL),
(539, 54, 9, 8, NULL, NULL),
(540, 54, 10, 0, NULL, NULL),
(541, 55, 1, 8, NULL, NULL),
(542, 55, 2, 10, NULL, NULL),
(543, 55, 3, 1, NULL, NULL),
(544, 55, 4, 0, NULL, NULL),
(545, 55, 5, 10, NULL, NULL),
(546, 55, 6, 5, NULL, NULL),
(547, 55, 7, 4, NULL, NULL),
(548, 55, 8, 1, NULL, NULL),
(549, 55, 9, 1, NULL, NULL),
(550, 55, 10, 4, NULL, NULL),
(551, 56, 1, 1, NULL, NULL),
(552, 56, 2, 7, NULL, NULL),
(553, 56, 3, 9, NULL, NULL),
(554, 56, 4, 5, NULL, NULL),
(555, 56, 5, 3, NULL, NULL),
(556, 56, 6, 1, NULL, NULL),
(557, 56, 7, 0, NULL, NULL),
(558, 56, 8, 2, NULL, NULL),
(559, 56, 9, 9, NULL, NULL),
(560, 56, 10, 8, NULL, NULL),
(561, 57, 1, 5, NULL, NULL),
(562, 57, 2, 1, NULL, NULL),
(563, 57, 3, 2, NULL, NULL),
(564, 57, 4, 8, NULL, NULL),
(565, 57, 5, 4, NULL, NULL),
(566, 57, 6, 6, NULL, NULL),
(567, 57, 7, 4, NULL, NULL),
(568, 57, 8, 10, NULL, NULL),
(569, 57, 9, 9, NULL, NULL),
(570, 57, 10, 3, NULL, NULL),
(571, 58, 1, 8, NULL, NULL),
(572, 58, 2, 2, NULL, NULL),
(573, 58, 3, 3, NULL, NULL),
(574, 58, 4, 7, NULL, NULL),
(575, 58, 5, 9, NULL, NULL),
(576, 58, 6, 0, NULL, NULL),
(577, 58, 7, 7, NULL, NULL),
(578, 58, 8, 5, NULL, NULL),
(579, 58, 9, 6, NULL, NULL),
(580, 58, 10, 9, NULL, NULL),
(581, 59, 1, 4, NULL, NULL),
(582, 59, 2, 2, NULL, NULL),
(583, 59, 3, 6, NULL, NULL),
(584, 59, 4, 6, NULL, NULL),
(585, 59, 5, 0, NULL, NULL),
(586, 59, 6, 6, NULL, NULL),
(587, 59, 7, 2, NULL, NULL),
(588, 59, 8, 6, NULL, NULL),
(589, 59, 9, 10, NULL, NULL),
(590, 59, 10, 10, NULL, NULL),
(591, 60, 1, 0, NULL, NULL),
(592, 60, 2, 10, NULL, NULL),
(593, 60, 3, 3, NULL, NULL),
(594, 60, 4, 9, NULL, NULL),
(595, 60, 5, 1, NULL, NULL),
(596, 60, 6, 6, NULL, NULL),
(597, 60, 7, 8, NULL, NULL),
(598, 60, 8, 2, NULL, NULL),
(599, 60, 9, 2, NULL, NULL),
(600, 60, 10, 7, NULL, NULL),
(601, 61, 1, 5, NULL, NULL),
(602, 61, 2, 6, NULL, NULL),
(603, 61, 3, 0, NULL, NULL),
(604, 61, 4, 4, NULL, NULL),
(605, 61, 5, 8, NULL, NULL),
(606, 61, 6, 0, NULL, NULL),
(607, 61, 7, 1, NULL, NULL),
(608, 61, 8, 8, NULL, NULL),
(609, 61, 9, 1, NULL, NULL),
(610, 61, 10, 7, NULL, NULL),
(611, 62, 1, 0, NULL, NULL),
(612, 62, 2, 2, NULL, NULL),
(613, 62, 3, 10, NULL, NULL),
(614, 62, 4, 2, NULL, NULL),
(615, 62, 5, 8, NULL, NULL),
(616, 62, 6, 5, NULL, NULL),
(617, 62, 7, 9, NULL, NULL),
(618, 62, 8, 8, NULL, NULL),
(619, 62, 9, 6, NULL, NULL),
(620, 62, 10, 10, NULL, NULL),
(621, 63, 1, 7, NULL, NULL),
(622, 63, 2, 1, NULL, NULL),
(623, 63, 3, 5, NULL, NULL),
(624, 63, 4, 10, NULL, NULL),
(625, 63, 5, 1, NULL, NULL),
(626, 63, 6, 5, NULL, NULL),
(627, 63, 7, 7, NULL, NULL),
(628, 63, 8, 10, NULL, NULL),
(629, 63, 9, 6, NULL, NULL),
(630, 63, 10, 2, NULL, NULL),
(631, 64, 1, 8, NULL, NULL),
(632, 64, 2, 2, NULL, NULL),
(633, 64, 3, 7, NULL, NULL),
(634, 64, 4, 1, NULL, NULL),
(635, 64, 5, 6, NULL, NULL),
(636, 64, 6, 4, NULL, NULL),
(637, 64, 7, 3, NULL, NULL),
(638, 64, 8, 4, NULL, NULL),
(639, 64, 9, 9, NULL, NULL),
(640, 64, 10, 10, NULL, NULL),
(641, 65, 1, 7, NULL, NULL),
(642, 65, 2, 2, NULL, NULL),
(643, 65, 3, 1, NULL, NULL),
(644, 65, 4, 10, NULL, NULL),
(645, 65, 5, 8, NULL, NULL),
(646, 65, 6, 2, NULL, NULL),
(647, 65, 7, 2, NULL, NULL),
(648, 65, 8, 9, NULL, NULL),
(649, 65, 9, 8, NULL, NULL),
(650, 65, 10, 1, NULL, NULL),
(651, 66, 1, 8, NULL, NULL),
(652, 66, 2, 4, NULL, NULL),
(653, 66, 3, 10, NULL, NULL),
(654, 66, 4, 6, NULL, NULL),
(655, 66, 5, 6, NULL, NULL),
(656, 66, 6, 3, NULL, NULL),
(657, 66, 7, 10, NULL, NULL),
(658, 66, 8, 9, NULL, NULL),
(659, 66, 9, 4, NULL, NULL),
(660, 66, 10, 3, NULL, NULL),
(661, 67, 1, 0, NULL, NULL),
(662, 67, 2, 4, NULL, NULL),
(663, 67, 3, 2, NULL, NULL),
(664, 67, 4, 0, NULL, NULL),
(665, 67, 5, 8, NULL, NULL),
(666, 67, 6, 7, NULL, NULL),
(667, 67, 7, 8, NULL, NULL),
(668, 67, 8, 6, NULL, NULL),
(669, 67, 9, 5, NULL, NULL),
(670, 67, 10, 1, NULL, NULL),
(671, 68, 1, 3, NULL, NULL),
(672, 68, 2, 8, NULL, NULL),
(673, 68, 3, 3, NULL, NULL),
(674, 68, 4, 9, NULL, NULL),
(675, 68, 5, 4, NULL, NULL),
(676, 68, 6, 10, NULL, NULL),
(677, 68, 7, 10, NULL, NULL),
(678, 68, 8, 6, NULL, NULL),
(679, 68, 9, 3, NULL, NULL),
(680, 68, 10, 1, NULL, NULL),
(681, 69, 1, 4, NULL, NULL),
(682, 69, 2, 3, NULL, NULL),
(683, 69, 3, 10, NULL, NULL),
(684, 69, 4, 10, NULL, NULL),
(685, 69, 5, 0, NULL, NULL),
(686, 69, 6, 0, NULL, NULL),
(687, 69, 7, 0, NULL, NULL),
(688, 69, 8, 3, NULL, NULL),
(689, 69, 9, 4, NULL, NULL),
(690, 69, 10, 8, NULL, NULL),
(691, 70, 1, 2, NULL, NULL),
(692, 70, 2, 1, NULL, NULL),
(693, 70, 3, 1, NULL, NULL),
(694, 70, 4, 4, NULL, NULL),
(695, 70, 5, 1, NULL, NULL),
(696, 70, 6, 4, NULL, NULL),
(697, 70, 7, 6, NULL, NULL),
(698, 70, 8, 0, NULL, NULL),
(699, 70, 9, 8, NULL, NULL),
(700, 70, 10, 10, NULL, NULL),
(701, 71, 1, 3, NULL, NULL),
(702, 71, 2, 5, NULL, NULL),
(703, 71, 3, 0, NULL, NULL),
(704, 71, 4, 3, NULL, NULL),
(705, 71, 5, 7, NULL, NULL),
(706, 71, 6, 0, NULL, NULL),
(707, 71, 7, 0, NULL, NULL),
(708, 71, 8, 2, NULL, NULL),
(709, 71, 9, 8, NULL, NULL),
(710, 71, 10, 9, NULL, NULL),
(711, 72, 1, 8, NULL, NULL),
(712, 72, 2, 2, NULL, NULL),
(713, 72, 3, 0, NULL, NULL),
(714, 72, 4, 4, NULL, NULL),
(715, 72, 5, 3, NULL, NULL),
(716, 72, 6, 0, NULL, NULL),
(717, 72, 7, 2, NULL, NULL),
(718, 72, 8, 6, NULL, NULL),
(719, 72, 9, 10, NULL, NULL),
(720, 72, 10, 4, NULL, NULL),
(721, 73, 1, 6, NULL, NULL),
(722, 73, 2, 8, NULL, NULL),
(723, 73, 3, 5, NULL, NULL),
(724, 73, 4, 4, NULL, NULL),
(725, 73, 5, 4, NULL, NULL),
(726, 73, 6, 6, NULL, NULL),
(727, 73, 7, 4, NULL, NULL),
(728, 73, 8, 8, NULL, NULL),
(729, 73, 9, 9, NULL, NULL),
(730, 73, 10, 8, NULL, NULL),
(731, 74, 1, 9, NULL, NULL),
(732, 74, 2, 4, NULL, NULL),
(733, 74, 3, 3, NULL, NULL),
(734, 74, 4, 6, NULL, NULL),
(735, 74, 5, 9, NULL, NULL),
(736, 74, 6, 0, NULL, NULL),
(737, 74, 7, 6, NULL, NULL),
(738, 74, 8, 10, NULL, NULL),
(739, 74, 9, 6, NULL, NULL),
(740, 74, 10, 8, NULL, NULL),
(741, 75, 1, 10, NULL, NULL),
(742, 75, 2, 0, NULL, NULL),
(743, 75, 3, 5, NULL, NULL),
(744, 75, 4, 5, NULL, NULL),
(745, 75, 5, 3, NULL, NULL),
(746, 75, 6, 6, NULL, NULL),
(747, 75, 7, 2, NULL, NULL),
(748, 75, 8, 7, NULL, NULL),
(749, 75, 9, 7, NULL, NULL),
(750, 75, 10, 7, NULL, NULL),
(751, 76, 1, 8, NULL, NULL),
(752, 76, 2, 1, NULL, NULL),
(753, 76, 3, 4, NULL, NULL),
(754, 76, 4, 4, NULL, NULL),
(755, 76, 5, 3, NULL, NULL),
(756, 76, 6, 4, NULL, NULL),
(757, 76, 7, 3, NULL, NULL),
(758, 76, 8, 5, NULL, NULL),
(759, 76, 9, 4, NULL, NULL),
(760, 76, 10, 9, NULL, NULL),
(761, 77, 1, 9, NULL, NULL),
(762, 77, 2, 7, NULL, NULL),
(763, 77, 3, 2, NULL, NULL),
(764, 77, 4, 9, NULL, NULL),
(765, 77, 5, 4, NULL, NULL),
(766, 77, 6, 1, NULL, NULL),
(767, 77, 7, 0, NULL, NULL),
(768, 77, 8, 10, NULL, NULL),
(769, 77, 9, 1, NULL, NULL),
(770, 77, 10, 4, NULL, NULL),
(771, 78, 1, 10, NULL, NULL),
(772, 78, 2, 6, NULL, NULL),
(773, 78, 3, 10, NULL, NULL),
(774, 78, 4, 4, NULL, NULL),
(775, 78, 5, 3, NULL, NULL),
(776, 78, 6, 3, NULL, NULL),
(777, 78, 7, 8, NULL, NULL),
(778, 78, 8, 3, NULL, NULL),
(779, 78, 9, 4, NULL, NULL),
(780, 78, 10, 6, NULL, NULL),
(781, 79, 1, 8, NULL, NULL),
(782, 79, 2, 6, NULL, NULL),
(783, 79, 3, 3, NULL, NULL),
(784, 79, 4, 0, NULL, NULL),
(785, 79, 5, 7, NULL, NULL),
(786, 79, 6, 1, NULL, NULL),
(787, 79, 7, 2, NULL, NULL),
(788, 79, 8, 2, NULL, NULL),
(789, 79, 9, 4, NULL, NULL),
(790, 79, 10, 0, NULL, NULL),
(791, 80, 1, 2, NULL, NULL),
(792, 80, 2, 8, NULL, NULL),
(793, 80, 3, 7, NULL, NULL),
(794, 80, 4, 5, NULL, NULL),
(795, 80, 5, 10, NULL, NULL),
(796, 80, 6, 5, NULL, NULL),
(797, 80, 7, 5, NULL, NULL),
(798, 80, 8, 10, NULL, NULL),
(799, 80, 9, 1, NULL, NULL),
(800, 80, 10, 0, NULL, NULL),
(801, 81, 1, 4, NULL, NULL),
(802, 81, 2, 2, NULL, NULL),
(803, 81, 3, 7, NULL, NULL),
(804, 81, 4, 10, NULL, NULL),
(805, 81, 5, 1, NULL, NULL),
(806, 81, 6, 10, NULL, NULL),
(807, 81, 7, 3, NULL, NULL),
(808, 81, 8, 5, NULL, NULL),
(809, 81, 9, 6, NULL, NULL),
(810, 81, 10, 10, NULL, NULL),
(811, 82, 1, 8, NULL, NULL),
(812, 82, 2, 6, NULL, NULL),
(813, 82, 3, 10, NULL, NULL),
(814, 82, 4, 2, NULL, NULL),
(815, 82, 5, 2, NULL, NULL),
(816, 82, 6, 3, NULL, NULL),
(817, 82, 7, 2, NULL, NULL),
(818, 82, 8, 6, NULL, NULL),
(819, 82, 9, 7, NULL, NULL),
(820, 82, 10, 4, NULL, NULL),
(821, 83, 1, 2, NULL, NULL),
(822, 83, 2, 5, NULL, NULL),
(823, 83, 3, 7, NULL, NULL),
(824, 83, 4, 6, NULL, NULL),
(825, 83, 5, 6, NULL, NULL),
(826, 83, 6, 5, NULL, NULL),
(827, 83, 7, 8, NULL, NULL),
(828, 83, 8, 1, NULL, NULL),
(829, 83, 9, 0, NULL, NULL),
(830, 83, 10, 9, NULL, NULL),
(831, 84, 1, 2, NULL, NULL),
(832, 84, 2, 2, NULL, NULL),
(833, 84, 3, 4, NULL, NULL),
(834, 84, 4, 10, NULL, NULL),
(835, 84, 5, 7, NULL, NULL),
(836, 84, 6, 7, NULL, NULL),
(837, 84, 7, 2, NULL, NULL),
(838, 84, 8, 9, NULL, NULL),
(839, 84, 9, 9, NULL, NULL),
(840, 84, 10, 1, NULL, NULL),
(841, 85, 1, 9, NULL, NULL),
(842, 85, 2, 10, NULL, NULL),
(843, 85, 3, 3, NULL, NULL),
(844, 85, 4, 7, NULL, NULL),
(845, 85, 5, 1, NULL, NULL),
(846, 85, 6, 9, NULL, NULL),
(847, 85, 7, 7, NULL, NULL),
(848, 85, 8, 4, NULL, NULL),
(849, 85, 9, 4, NULL, NULL),
(850, 85, 10, 3, NULL, NULL),
(851, 86, 1, 8, NULL, NULL),
(852, 86, 2, 0, NULL, NULL),
(853, 86, 3, 2, NULL, NULL),
(854, 86, 4, 0, NULL, NULL),
(855, 86, 5, 10, NULL, NULL),
(856, 86, 6, 0, NULL, NULL),
(857, 86, 7, 9, NULL, NULL),
(858, 86, 8, 10, NULL, NULL),
(859, 86, 9, 3, NULL, NULL),
(860, 86, 10, 3, NULL, NULL),
(861, 87, 1, 9, NULL, NULL),
(862, 87, 2, 9, NULL, NULL),
(863, 87, 3, 3, NULL, NULL),
(864, 87, 4, 2, NULL, NULL),
(865, 87, 5, 5, NULL, NULL),
(866, 87, 6, 6, NULL, NULL),
(867, 87, 7, 9, NULL, NULL),
(868, 87, 8, 8, NULL, NULL),
(869, 87, 9, 1, NULL, NULL),
(870, 87, 10, 1, NULL, NULL),
(871, 88, 1, 0, NULL, NULL),
(872, 88, 2, 4, NULL, NULL),
(873, 88, 3, 8, NULL, NULL),
(874, 88, 4, 8, NULL, NULL),
(875, 88, 5, 5, NULL, NULL),
(876, 88, 6, 10, NULL, NULL),
(877, 88, 7, 10, NULL, NULL),
(878, 88, 8, 6, NULL, NULL),
(879, 88, 9, 9, NULL, NULL),
(880, 88, 10, 8, NULL, NULL),
(881, 89, 1, 5, NULL, NULL),
(882, 89, 2, 1, NULL, NULL),
(883, 89, 3, 4, NULL, NULL),
(884, 89, 4, 8, NULL, NULL),
(885, 89, 5, 6, NULL, NULL),
(886, 89, 6, 1, NULL, NULL),
(887, 89, 7, 2, NULL, NULL),
(888, 89, 8, 10, NULL, NULL),
(889, 89, 9, 2, NULL, NULL),
(890, 89, 10, 9, NULL, NULL),
(891, 90, 1, 8, NULL, NULL),
(892, 90, 2, 10, NULL, NULL),
(893, 90, 3, 10, NULL, NULL),
(894, 90, 4, 8, NULL, NULL),
(895, 90, 5, 1, NULL, NULL),
(896, 90, 6, 6, NULL, NULL),
(897, 90, 7, 5, NULL, NULL),
(898, 90, 8, 2, NULL, NULL),
(899, 90, 9, 7, NULL, NULL),
(900, 90, 10, 8, NULL, NULL),
(901, 91, 1, 1, NULL, NULL),
(902, 91, 2, 7, NULL, NULL),
(903, 91, 3, 0, NULL, NULL),
(904, 91, 4, 6, NULL, NULL),
(905, 91, 5, 6, NULL, NULL),
(906, 91, 6, 10, NULL, NULL),
(907, 91, 7, 9, NULL, NULL),
(908, 91, 8, 10, NULL, NULL),
(909, 91, 9, 8, NULL, NULL),
(910, 91, 10, 3, NULL, NULL),
(911, 92, 1, 1, NULL, NULL),
(912, 92, 2, 4, NULL, NULL),
(913, 92, 3, 3, NULL, NULL),
(914, 92, 4, 4, NULL, NULL),
(915, 92, 5, 2, NULL, NULL),
(916, 92, 6, 0, NULL, NULL),
(917, 92, 7, 2, NULL, NULL),
(918, 92, 8, 5, NULL, NULL),
(919, 92, 9, 2, NULL, NULL),
(920, 92, 10, 7, NULL, NULL),
(921, 93, 1, 2, NULL, NULL),
(922, 93, 2, 9, NULL, NULL),
(923, 93, 3, 9, NULL, NULL),
(924, 93, 4, 7, NULL, NULL),
(925, 93, 5, 0, NULL, NULL),
(926, 93, 6, 10, NULL, NULL),
(927, 93, 7, 0, NULL, NULL),
(928, 93, 8, 2, NULL, NULL),
(929, 93, 9, 9, NULL, NULL),
(930, 93, 10, 8, NULL, NULL),
(931, 94, 1, 1, NULL, NULL),
(932, 94, 2, 2, NULL, NULL),
(933, 94, 3, 1, NULL, NULL),
(934, 94, 4, 4, NULL, NULL),
(935, 94, 5, 7, NULL, NULL),
(936, 94, 6, 9, NULL, NULL),
(937, 94, 7, 7, NULL, NULL),
(938, 94, 8, 9, NULL, NULL),
(939, 94, 9, 3, NULL, NULL),
(940, 94, 10, 8, NULL, NULL),
(941, 95, 1, 8, NULL, NULL),
(942, 95, 2, 7, NULL, NULL),
(943, 95, 3, 10, NULL, NULL),
(944, 95, 4, 10, NULL, NULL),
(945, 95, 5, 5, NULL, NULL),
(946, 95, 6, 9, NULL, NULL),
(947, 95, 7, 4, NULL, NULL),
(948, 95, 8, 9, NULL, NULL),
(949, 95, 9, 4, NULL, NULL),
(950, 95, 10, 4, NULL, NULL),
(951, 96, 1, 6, NULL, NULL),
(952, 96, 2, 7, NULL, NULL),
(953, 96, 3, 7, NULL, NULL),
(954, 96, 4, 8, NULL, NULL),
(955, 96, 5, 4, NULL, NULL),
(956, 96, 6, 4, NULL, NULL),
(957, 96, 7, 7, NULL, NULL),
(958, 96, 8, 0, NULL, NULL),
(959, 96, 9, 3, NULL, NULL),
(960, 96, 10, 7, NULL, NULL),
(961, 97, 1, 1, NULL, NULL),
(962, 97, 2, 1, NULL, NULL),
(963, 97, 3, 3, NULL, NULL),
(964, 97, 4, 4, NULL, NULL),
(965, 97, 5, 1, NULL, NULL),
(966, 97, 6, 2, NULL, NULL),
(967, 97, 7, 8, NULL, NULL),
(968, 97, 8, 4, NULL, NULL),
(969, 97, 9, 5, NULL, NULL),
(970, 97, 10, 5, NULL, NULL),
(971, 98, 1, 1, NULL, NULL),
(972, 98, 2, 4, NULL, NULL),
(973, 98, 3, 5, NULL, NULL),
(974, 98, 4, 0, NULL, NULL),
(975, 98, 5, 5, NULL, NULL),
(976, 98, 6, 5, NULL, NULL),
(977, 98, 7, 9, NULL, NULL),
(978, 98, 8, 7, NULL, NULL),
(979, 98, 9, 5, NULL, NULL),
(980, 98, 10, 4, NULL, NULL),
(981, 99, 1, 9, NULL, NULL),
(982, 99, 2, 7, NULL, NULL),
(983, 99, 3, 8, NULL, NULL),
(984, 99, 4, 0, NULL, NULL),
(985, 99, 5, 10, NULL, NULL),
(986, 99, 6, 8, NULL, NULL),
(987, 99, 7, 10, NULL, NULL),
(988, 99, 8, 10, NULL, NULL),
(989, 99, 9, 7, NULL, NULL),
(990, 99, 10, 8, NULL, NULL),
(991, 100, 1, 8, NULL, NULL),
(992, 100, 2, 2, NULL, NULL),
(993, 100, 3, 6, NULL, NULL),
(994, 100, 4, 8, NULL, NULL),
(995, 100, 5, 7, NULL, NULL),
(996, 100, 6, 8, NULL, NULL),
(997, 100, 7, 0, NULL, NULL),
(998, 100, 8, 10, NULL, NULL),
(999, 100, 9, 0, NULL, NULL),
(1000, 100, 10, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Department z', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(2, 'Department F', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(3, 'Department Z', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(4, 'Department D', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(5, 'Department Y', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(6, 'Department H', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(7, 'Department M', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(8, 'Department O', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(9, 'Department L', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(10, 'Department J', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_08_08_100000_create_telescope_entries_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_08_09_174757_create_departments_table', 1),
(8, '2024_08_09_174802_create_courses_table', 1),
(9, '2024_08_09_174804_create_students_table', 1),
(10, '2024_08_11_055659_create_course_result_table', 1),
(11, '2024_08_12_102919_create_jobs_table', 1),
(12, '2024_08_13_091435_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 61),
(2, 'App\\Models\\User', 62),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 65),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 67),
(2, 'App\\Models\\User', 68),
(2, 'App\\Models\\User', 69),
(2, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 71),
(2, 'App\\Models\\User', 72),
(2, 'App\\Models\\User', 73),
(2, 'App\\Models\\User', 74),
(2, 'App\\Models\\User', 75),
(2, 'App\\Models\\User', 76),
(2, 'App\\Models\\User', 77),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 84),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 97),
(2, 'App\\Models\\User', 98),
(2, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 100),
(2, 'App\\Models\\User', 101),
(2, 'App\\Models\\User', 102),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage-departments', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(2, 'manage-subjects', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(3, 'manage-students', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(4, 'manage-scores', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(5, 'view-subjects', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(6, 'register-subjects', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(7, 'view-scores', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(2, 'student', 'web', '2024-09-09 02:00:52', '2024-09-09 02:00:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `student_code` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `user_id`, `student_code`, `avatar`, `phone`, `gender`, `address`, `birthday`, `department_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, 'STU67357', '', '0736710972', 1, '2181 Schinner Drives Apt. 307\nBaumbachberg, SC 49349', '2000-08-18', 8, 0, NULL, NULL, NULL),
(2, 7, 'STU06428', '', '0956474303', 0, '556 Jacobi Springs Suite 713\nRoryfort, WV 64824', '1994-11-05', 6, 0, NULL, NULL, NULL),
(3, 8, 'STU43232', '', '0241740183', 0, '5069 Giovani Track\nNorth Evanton, IN 84804-8306', '1991-03-28', 5, 0, NULL, NULL, NULL),
(4, 9, 'STU89289', '', '0756630782', 0, '22777 Weissnat Junctions Suite 388\nNorth Oran, OK 46737', '2014-11-03', 9, 0, NULL, NULL, NULL),
(5, 10, 'STU96067', '', '0812645286', 1, '834 Woodrow Brook Suite 719\nPort Ronny, UT 98385-0925', '1994-05-07', 9, 0, NULL, NULL, NULL),
(6, 11, 'STU71795', '', '0791954294', 1, '6740 Dedrick Greens Suite 818\nCarolyneborough, NV 61987', '2015-10-11', 5, 0, NULL, NULL, NULL),
(7, 12, 'STU66168', '', '0958100618', 0, '1948 Breanna Shores\nSouth Nyaburgh, NE 52914', '2020-12-20', 6, 0, NULL, NULL, NULL),
(8, 13, 'STU20787', '', '0894648362', 1, '91450 Lucy Field\nHarleyview, VA 24406', '1982-08-16', 10, 0, NULL, NULL, NULL),
(9, 14, 'STU31831', '', '0312665401', 0, '64905 Schowalter Rest\nEast Hans, SC 27529', '2005-05-09', 2, 0, NULL, NULL, NULL),
(10, 15, 'STU97123', '', '0228683497', 1, '44322 Hilpert Fall Apt. 340\nNew Mack, WV 08239', '2012-04-27', 6, 0, NULL, NULL, NULL),
(11, 16, 'STU77571', '', '0366636084', 1, '21042 Feest Overpass Apt. 763\nHandshire, WV 98819', '1974-08-04', 7, 0, NULL, NULL, NULL),
(12, 17, 'STU71559', '', '0960698467', 1, '697 Ondricka Field Suite 112\nWest Clementinamouth, UT 29841-2173', '1994-09-24', 5, 0, NULL, NULL, NULL),
(13, 18, 'STU13109', '', '0900825704', 1, '1629 Chadrick Courts Apt. 925\nEast Carmeloville, ME 09543-2250', '2018-09-10', 4, 0, NULL, NULL, NULL),
(14, 19, 'STU25907', '', '0704372016', 0, '4220 Mckenzie Shoal\nNorth Karolannberg, NH 14295-2874', '1981-06-16', 2, 0, NULL, NULL, NULL),
(15, 20, 'STU77761', '', '0220501352', 1, '6466 Marjorie Prairie Suite 567\nLangoshland, DE 22871-2834', '1995-06-10', 7, 0, NULL, NULL, NULL),
(16, 21, 'STU32098', '', '0856989679', 0, '334 Richmond Vista\nSouth Rockyside, AL 72491-6230', '2023-06-15', 6, 0, NULL, NULL, NULL),
(17, 22, 'STU91647', '', '0728232100', 0, '5989 Swaniawski Plaza Apt. 337\nSouth Prince, CO 66425', '1998-03-08', 4, 0, NULL, NULL, NULL),
(18, 23, 'STU56138', '', '0912383116', 1, '600 Arnold Stravenue\nBrantmouth, NM 85780', '2021-07-07', 2, 0, NULL, NULL, NULL),
(19, 24, 'STU62257', '', '0903733484', 1, '489 Fahey Pines\nLake Jordan, OH 02697', '1988-07-18', 9, 0, NULL, NULL, NULL),
(20, 25, 'STU07425', '', '0993662500', 0, '768 Filiberto Brook\nEast Keira, WV 97390', '2004-07-03', 4, 0, NULL, NULL, NULL),
(21, 26, 'STU75163', '', '0803740457', 1, '50783 Hoppe Ranch Apt. 191\nMyronstad, ND 92039', '2008-04-07', 1, 0, NULL, NULL, NULL),
(22, 27, 'STU31033', '', '0370771973', 1, '6926 Gutkowski Union\nAndersonton, TN 93480-6383', '1990-03-10', 9, 0, NULL, NULL, NULL),
(23, 28, 'STU45793', '', '0224148135', 1, '644 Urban Skyway\nAniyafurt, CT 55699', '1974-12-17', 8, 0, NULL, NULL, NULL),
(24, 29, 'STU53359', '', '0722956916', 0, '5458 Belle Ports Suite 000\nEast Orionstad, SC 24882', '1974-02-22', 1, 0, NULL, NULL, NULL),
(25, 30, 'STU79814', '', '0286276371', 0, '6588 Charlene Pines\nSouth Camillaport, NH 15291-3646', '1997-01-16', 1, 0, NULL, NULL, NULL),
(26, 31, 'STU40200', '', '0361264601', 0, '97269 Hermann Pines\nNorwoodshire, WI 08207', '1987-07-09', 7, 0, NULL, NULL, NULL),
(27, 32, 'STU80509', '', '0257904204', 0, '4284 Bosco Ranch\nPowlowskiberg, IN 45322', '2018-09-13', 8, 0, NULL, NULL, NULL),
(28, 33, 'STU46435', '', '0856591541', 0, '99452 Kuhic Rest Apt. 212\nLangshire, LA 92808', '2024-03-06', 9, 0, NULL, NULL, NULL),
(29, 34, 'STU62723', '', '0780981353', 0, '6015 Wisozk Tunnel\nPamelamouth, VT 98428-8625', '1993-09-27', 10, 0, NULL, NULL, NULL),
(30, 35, 'STU59981', '', '0752838803', 0, '1592 Bailey Wells\nLake Emiliomouth, IA 13839', '2001-02-11', 6, 0, NULL, NULL, NULL),
(31, 36, 'STU20326', '', '0767282759', 0, '653 Uriel Place Apt. 618\nLeuschkechester, CO 87677-1893', '1993-07-25', 2, 0, NULL, NULL, NULL),
(32, 37, 'STU65273', '', '0298206528', 1, '568 Bahringer Tunnel\nLake Kiannaburgh, OH 53418-9981', '1975-05-06', 5, 0, NULL, NULL, NULL),
(33, 38, 'STU04527', '', '0384299486', 1, '967 Tyler Avenue\nLake Jaycee, ND 09762', '2005-04-18', 9, 0, NULL, NULL, NULL),
(34, 39, 'STU83664', '', '0758903458', 0, '38175 Willie Fall\nAdamchester, NE 89805', '1977-07-04', 10, 0, NULL, NULL, NULL),
(35, 40, 'STU30198', '', '0908726996', 1, '24509 Gavin Park Apt. 457\nOrlofort, SD 86982', '1996-02-01', 4, 0, NULL, NULL, NULL),
(36, 41, 'STU59674', '', '0348500865', 1, '2388 Heathcote Trail\nWest Violette, WA 21876-1980', '1983-12-06', 6, 0, NULL, NULL, NULL),
(37, 42, 'STU26741', '', '0317315369', 0, '94348 Shanahan Mill\nNew Oceane, WV 55535-7636', '1986-09-27', 5, 0, NULL, NULL, NULL),
(38, 43, 'STU97412', '', '0851024687', 1, '8649 Winifred Canyon\nJerdeton, OH 41448', '1975-04-07', 9, 0, NULL, NULL, NULL),
(39, 44, 'STU64231', '', '0328319540', 0, '89158 Edna Meadow\nPort Matildaborough, PA 92177-6779', '2024-03-10', 10, 0, NULL, NULL, NULL),
(40, 45, 'STU71994', '', '0753228596', 0, '277 Aurore Groves\nLake Fidel, IL 69635-2515', '1981-03-30', 1, 0, NULL, NULL, NULL),
(41, 46, 'STU31271', '', '0991487838', 1, '5885 Isobel Square\nMedhurstborough, NC 22250', '1972-08-17', 1, 0, NULL, NULL, NULL),
(42, 47, 'STU44433', '', '0882384730', 0, '2470 Grimes Corner\nPort Shannyfort, AR 70473', '2009-02-15', 8, 0, NULL, NULL, NULL),
(43, 48, 'STU79892', '', '0751850182', 0, '946 Grant Spur\nArianestad, DE 48440', '1988-06-28', 4, 0, NULL, NULL, NULL),
(44, 49, 'STU19942', '', '0231032821', 0, '82591 Akeem Knolls Suite 268\nO\'Keefemouth, MN 15687-1373', '1976-02-17', 2, 0, NULL, NULL, NULL),
(45, 50, 'STU90161', '', '0849283726', 1, '82176 Juvenal Avenue\nLake Lori, AZ 40289-2520', '1971-07-19', 5, 0, NULL, NULL, NULL),
(46, 51, 'STU93493', '', '0796436588', 1, '184 Helmer Crossing\nHermanside, NV 16605-7005', '2004-05-22', 8, 0, NULL, NULL, NULL),
(47, 52, 'STU98126', '', '0780688316', 0, '60493 Dietrich Lock\nPort Keshawnton, NE 20080', '1981-08-19', 5, 0, NULL, NULL, NULL),
(48, 53, 'STU81603', '', '0956254932', 0, '5782 Becker Mews\nLockmanfurt, KY 76190-4328', '1984-10-30', 5, 0, NULL, NULL, NULL),
(49, 54, 'STU20220', '', '0918565856', 0, '7819 Karelle Knoll\nAnnabelchester, MN 04451', '2008-08-01', 7, 0, NULL, NULL, NULL),
(50, 55, 'STU41523', '', '0948863643', 0, '3439 Bogisich Heights Suite 711\nEast Hymanport, NJ 66715', '2004-04-06', 4, 0, NULL, NULL, NULL),
(51, 56, 'STU15860', '', '0836225809', 1, '1943 Dach Center\nAaliyahhaven, TX 27544', '1984-07-10', 5, 0, NULL, NULL, NULL),
(52, 57, 'STU43451', '', '0249611647', 1, '8161 Muller Run Suite 174\nLake Fredrickfort, ND 08146-7442', '2017-05-03', 6, 0, NULL, NULL, NULL),
(53, 58, 'STU72548', '', '0373077704', 1, '27817 Elton Wall\nWest Karinahaven, WA 30215-1494', '1995-04-24', 1, 0, NULL, NULL, NULL),
(54, 59, 'STU34758', '', '0736901823', 1, '9594 Muller Centers\nSouth Freemanhaven, OH 68935', '2007-06-16', 7, 0, NULL, NULL, NULL),
(55, 60, 'STU57613', '', '0221767281', 1, '938 Schneider Unions\nBoganville, SD 58863-3204', '2016-03-27', 4, 0, NULL, NULL, NULL),
(56, 61, 'STU58036', '', '0713563824', 1, '4894 Dudley Forest Suite 316\nPort Serena, KY 24625-2362', '2015-11-18', 4, 0, NULL, NULL, NULL),
(57, 62, 'STU92351', '', '0742664583', 1, '754 Danielle Green\nMoenton, KS 74338', '1976-07-16', 5, 0, NULL, NULL, NULL),
(58, 63, 'STU54872', '', '0863344993', 0, '253 Trey Parkways Suite 902\nSouth Donavon, CO 29280-2990', '1998-05-08', 8, 0, NULL, NULL, NULL),
(59, 64, 'STU60569', '', '0257706512', 0, '354 Rosa Loaf Suite 957\nShanahanville, NM 45953-3778', '2015-07-23', 8, 0, NULL, NULL, NULL),
(60, 65, 'STU45959', '', '0246760432', 1, '3993 Myrtle Mission\nO\'Keefeshire, NH 12680-2504', '2018-02-25', 3, 0, NULL, NULL, NULL),
(61, 66, 'STU95157', '', '0732225582', 0, '66085 Claire Crest\nMeggiebury, PA 12449-6636', '2021-07-10', 4, 0, NULL, NULL, NULL),
(62, 67, 'STU05971', '', '0730099322', 0, '74291 Heller Streets\nEast Ford, CO 10606-9502', '2004-06-01', 2, 0, NULL, NULL, NULL),
(63, 68, 'STU30591', '', '0708053556', 1, '46877 Mohr Village Apt. 287\nSouth Emorystad, SD 87443-2406', '2008-05-21', 2, 0, NULL, NULL, NULL),
(64, 69, 'STU08633', '', '0295500942', 1, '51721 Elenora Lodge\nPort Garnett, ME 97962-5680', '1979-03-11', 3, 0, NULL, NULL, NULL),
(65, 70, 'STU85167', '', '0870018974', 0, '493 Rodrick Forest Apt. 136\nRobynland, WY 36160', '2011-12-23', 6, 0, NULL, NULL, NULL),
(66, 71, 'STU61304', '', '0235183272', 0, '84968 Huels Hills Apt. 160\nKeonton, WA 32808-4752', '1999-12-15', 7, 0, NULL, NULL, NULL),
(67, 72, 'STU97530', '', '0368842055', 1, '5222 Raphaelle Glens Suite 543\nGottliebfort, OR 63037', '2016-08-28', 4, 0, NULL, NULL, NULL),
(68, 73, 'STU48276', '', '0337478362', 1, '4484 Frankie Centers Apt. 575\nChrisfort, NC 10136', '1996-06-13', 4, 0, NULL, NULL, NULL),
(69, 74, 'STU64593', '', '0248116813', 1, '35174 Dach Tunnel\nKovacektown, IN 63825-5981', '2013-10-25', 2, 0, NULL, NULL, NULL),
(70, 75, 'STU20897', '', '0754801074', 1, '2182 Hilbert Rapids\nNew Jedland, NV 65806-4816', '2000-03-07', 7, 0, NULL, NULL, NULL),
(71, 76, 'STU47711', '', '0808879784', 1, '6551 Spinka Glens\nEast Eastonburgh, NC 42082-1203', '1978-06-30', 7, 0, NULL, NULL, NULL),
(72, 77, 'STU00592', '', '0709116450', 0, '26000 Hermann Mission\nSouth Eldredmouth, MS 91482', '1987-06-28', 8, 0, NULL, NULL, NULL),
(73, 78, 'STU34865', '', '0779989409', 0, '304 Kemmer Plaza Suite 680\nWest Noahstad, VA 47410', '2000-04-11', 6, 0, NULL, NULL, NULL),
(74, 79, 'STU56953', '', '0229849363', 0, '5201 Zelma Crossing\nCassinton, WA 28157-0272', '1995-12-06', 10, 0, NULL, NULL, NULL),
(75, 80, 'STU40154', '', '0858630778', 1, '255 Gibson Route\nBaileyview, OH 64999-6738', '1975-12-02', 9, 0, NULL, NULL, NULL),
(76, 81, 'STU42130', '', '0259293427', 1, '8252 Rohan Rapids Suite 121\nWest Jessikamouth, DC 50228-8826', '2012-07-15', 10, 0, NULL, NULL, NULL),
(77, 82, 'STU40171', '', '0776298613', 0, '5290 Alena Meadow\nPort Wilford, AR 03507-6832', '2000-03-04', 6, 0, NULL, NULL, NULL),
(78, 83, 'STU44888', '', '0324368402', 1, '48601 Virgil Well Suite 671\nPort Xavierville, MO 61224', '2005-04-23', 2, 0, NULL, NULL, NULL),
(79, 84, 'STU38979', '', '0872158704', 0, '602 Rippin Mill Suite 562\nLake Markborough, KS 54614', '1990-04-16', 7, 0, NULL, NULL, NULL),
(80, 85, 'STU30214', '', '0939029069', 1, '31899 Nicolas Stream Suite 441\nAufderharfort, IL 15725-7694', '1997-08-06', 1, 0, NULL, NULL, NULL),
(81, 86, 'STU31275', '', '0967281857', 1, '8911 Kelsie Circle\nAdelineshire, ME 69574-3293', '1995-12-04', 6, 0, NULL, NULL, NULL),
(82, 87, 'STU25530', '', '0732420357', 0, '454 Trudie Island Suite 470\nAlizahaven, AZ 89543', '1989-02-22', 4, 0, NULL, NULL, NULL),
(83, 88, 'STU83950', '', '0353092015', 1, '4110 Chadd Shoal Apt. 449\nTianafort, WV 78167-3486', '2014-06-01', 8, 0, NULL, NULL, NULL),
(84, 89, 'STU51338', '', '0705354960', 1, '701 Ashtyn Burg\nWest Halliemouth, SC 53762-0287', '2003-08-04', 6, 0, NULL, NULL, NULL),
(85, 90, 'STU75417', '', '0307997917', 1, '13977 Bianka Islands Suite 441\nSouth Lavon, NH 85685-1447', '1998-09-13', 10, 0, NULL, NULL, NULL),
(86, 91, 'STU59841', '', '0781719863', 1, '93668 Bartoletti Islands Apt. 096\nSouth Jaymestad, SD 40707-5156', '1971-08-17', 6, 0, NULL, NULL, NULL),
(87, 92, 'STU41016', '', '0307050234', 1, '2761 Reilly Groves\nPort Madieview, VT 33252', '2017-05-27', 2, 0, NULL, NULL, NULL),
(88, 93, 'STU85822', '', '0371791095', 1, '1464 Grant Plaza Apt. 960\nPinktown, AK 33274-8663', '1995-07-12', 9, 0, NULL, NULL, NULL),
(89, 94, 'STU17512', '', '0947427935', 0, '724 Seth Mills Apt. 386\nGutmannfort, NH 05872', '1974-03-16', 8, 0, NULL, NULL, NULL),
(90, 95, 'STU19717', '', '0315961183', 1, '66529 Okuneva Drive Apt. 499\nLefflerville, CA 61953-8420', '2005-03-15', 7, 0, NULL, NULL, NULL),
(91, 96, 'STU27607', '', '0808156788', 1, '164 Francesca Path\nWest Zachariahville, WI 50870-9553', '1995-04-08', 9, 0, NULL, NULL, NULL),
(92, 97, 'STU10941', '', '0963721710', 1, '24201 Frederique Orchard Apt. 941\nWest Elliott, HI 57006', '2010-10-22', 5, 0, NULL, NULL, NULL),
(93, 98, 'STU48975', '', '0216536396', 0, '73682 Ebba Radial\nEast Libbie, MN 09069-4650', '1999-12-21', 10, 0, NULL, NULL, NULL),
(94, 99, 'STU60315', '', '0813801428', 0, '81388 Funk Curve\nNorth Alejandrin, TX 65931', '2019-02-04', 1, 0, NULL, NULL, NULL),
(95, 100, 'STU49432', '', '0230068385', 1, '57523 Ruecker Lake\nStrosinland, WY 06701-1683', '1991-11-20', 6, 0, NULL, NULL, NULL),
(96, 101, 'STU28145', '', '0205181308', 0, '57202 Rolfson Trafficway Suite 947\nPort Enochville, MS 73463-1049', '2009-06-08', 4, 0, NULL, NULL, NULL),
(97, 102, 'STU52382', '', '0759389161', 1, '2281 Blanca Manor Suite 268\nAntonettemouth, TN 10966-4742', '1985-09-11', 10, 0, NULL, NULL, NULL),
(98, 103, 'STU75925', '', '0735557923', 0, '3818 Rohan Islands\nPort Madelyn, IL 97367-4989', '1992-01-05', 3, 0, NULL, NULL, NULL),
(99, 104, 'STU25784', '', '0734956337', 0, '576 Daugherty Radial\nLake Jaquelinefort, MT 57253-6743', '1998-05-06', 5, 0, NULL, NULL, NULL),
(100, 105, 'STU68127', '', '0951467094', 1, '5526 Witting Corner\nLake Jamaalberg, KS 21580', '1982-12-25', 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Jacinto Halvorson III', 'kschulist@example.com', NULL, '$2y$10$6Oju7Cb.NB.Mv7lyGV1k4eLKydFO97mz4.VOw.X/f9mdgq/WaIZ7O', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(2, 'Dandre Skiles DVM', 'grant.nathen@example.net', NULL, '$2y$10$eFNSgDRyEbsBPcm36nKqgeZdk79FqJuROMHBxEQpuaPJBylYWur2y', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(3, 'Shaniya Emard', 'amari.heathcote@example.net', NULL, '$2y$10$e6yh8wzH.Hw1Oui1u0r1v.hIsAmdlzoqqL4jOUJwhztX4jMuqzY4q', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(4, 'Armando Ryan', 'blarson@example.com', NULL, '$2y$10$cl4s1wM8PuSsKhHJJYLHxu01MBnAvdX96esgGKdqKjCAqugMbPknK', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(5, 'Mr. Donald Dickens', 'hope.rodriguez@example.com', NULL, '$2y$10$woF/DVZmGhOCOVjKX7vK7eggbSkMYQrIzTxPl8BUhXMJ0di7TIb6i', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(6, 'Daniela Ward', 'oswald32@example.com', NULL, '$2y$10$xZbbqBpqdrH7.GOj1RrFBOeriVnm39sVDqIz/1YCHoL243oW59hsK', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(7, 'Dr. Cordell Dooley I', 'lenny94@example.com', NULL, '$2y$10$ciF9ePZPDzIUuY74lPVmx.jrYa4qqg3/YjWOvv02CTmxUnjtfhzqy', NULL, '2024-09-09 02:00:52', '2024-09-09 02:00:52'),
(8, 'Mr. Karl Yundt Sr.', 'dave77@example.net', NULL, '$2y$10$ynouevG84cg1tx6Nqq8tEOu/QK0jFg9SMFUof/BdBfOtSzUCwfN6S', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(9, 'Alexzander Wilderman', 'erenner@example.net', NULL, '$2y$10$XOQrWtzLHfPxYq00Ga0VVufenkXexgsEMuE5ivilijzm.io22/4oK', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(10, 'Fabian Hoppe', 'zita.hickle@example.net', NULL, '$2y$10$e/5HvwOE27Ofe1FJqKdZoOTl4tcm/M79v59WxrsV.HeNHwUjJtl8C', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(11, 'Dr. Carson Kulas', 'phamill@example.org', NULL, '$2y$10$0C7vh64.Cw4N2yvf93CvJOXYpntXHthhJNsYGv85KNYENCYtsOqPe', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(12, 'Sallie McLaughlin', 'conn.delaney@example.org', NULL, '$2y$10$tx2GFuS1PdYfBL7UOmnNo.V5hmqaTBwEkj.5zHjdZ1IMEi7yjN3oS', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(13, 'Thora Pfeffer', 'brayan10@example.net', NULL, '$2y$10$IhZpi8HwAddwZ9Clb2.b3ebMpLyrp/LmkHqu4psImGfOtymY.jimm', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(14, 'Loyce Zemlak', 'rfahey@example.com', NULL, '$2y$10$dw5eQzDADEEtO4H5UbYbreG1pRCRAOcBgXz7YOO/wzamrOqr4n892', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(15, 'Mrs. Golda Klocko III', 'gfritsch@example.com', NULL, '$2y$10$QUnsjKfJW1P/qeUi.xLYBeZSmN1WQ0l5pJMjL6zxBeRdD9vemLkga', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(16, 'Dino Baumbach', 'rachelle26@example.com', NULL, '$2y$10$Qq1Fay1fVzbulcTjJvRl3e1jG9nJ.lEYa6ZbG9r1gKRweth.5JHNi', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(17, 'Matt Stanton', 'feil.kenya@example.org', NULL, '$2y$10$jI3KaV6EzFH5BaJ53lHmcuj0lkIIHhsdMYLLpHbeUEakXLi7mfLK2', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(18, 'Kacie Schumm', 'telly.erdman@example.org', NULL, '$2y$10$lPIhJlAoZZSGeIkUBKyvtu5uBVV6/kCjDv1k2yPNGh9KXwUJs/noO', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(19, 'Claudia Aufderhar', 'welch.sedrick@example.net', NULL, '$2y$10$B/K2ESvgyFZw.UsuSpZhwu2.wO0xUxjQ1Uis8NACaR7Qzk7S7Cow.', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(20, 'Ms. Leonor Bahringer', 'elyse.kuhn@example.com', NULL, '$2y$10$7SMTlIgYSndOuPJ3BvVChO.xWQsXepjcRk9fvgX/A8gZTv4GuxSlG', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(21, 'Kiana Senger', 'qrunte@example.org', NULL, '$2y$10$Xj31xXy63LsxNOoE84Xu8OXyQIaSHvoRhKRad4SvHpAWL8hulvbhS', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(22, 'Giles Walter', 'lynn14@example.org', NULL, '$2y$10$goCFJCotM8aDJfpKY2jXXeOGkE4xeV8t/HDiwhXVkRmcmVDbq0TFq', NULL, '2024-09-09 02:00:53', '2024-09-09 02:00:53'),
(23, 'Yazmin Ondricka', 'melyssa87@example.net', NULL, '$2y$10$ufTQg4iwF5Ihx.vjyKIJbe04TL.oeEIUSjwE5T/0xjWGCayNryHy.', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(24, 'Ardella Hauck', 'rickie91@example.net', NULL, '$2y$10$VB2twHStV.fiUgVZdi453OZjQW7QOQ6fzF03HM/KuYnrqKIvdKrRC', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(25, 'Kaleb D\'Amore', 'fswaniawski@example.com', NULL, '$2y$10$n23LkdPJD0.DjKnhwIraXeb1GOYIQlcd.xN1xz4VxH1KAYvI.jTia', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(26, 'Mrs. Lura Schmeler', 'green.naomie@example.com', NULL, '$2y$10$qd/1cNiA.BRwd92lq4w1C.tzjya3/lIE7ejHO5UYOY6HvxBGTElTO', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(27, 'Summer Fay', 'rogers.bergstrom@example.com', NULL, '$2y$10$TelWDkybspDAfZLXy0OFnO89RA/l1zflmNt/xqcGeTw6ic3MNLlQq', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(28, 'Rylee Osinski', 'bergnaum.astrid@example.org', NULL, '$2y$10$q6RzOHuCNq9dUqV9fct.fOo6TKvhXCevO1qxV.ShHiKOwwrAu2IXq', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(29, 'Mr. Armand McClure', 'kacey54@example.org', NULL, '$2y$10$n2uH8xrBhdGoXFSaSqKgaOrT4dSSNWGsVysF3cVdHxiEDCW11l1Ki', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(30, 'Norwood Bins DVM', 'irempel@example.com', NULL, '$2y$10$1HUxz.hW4GcI73pXoC5i1OBEXExGOPVlqdwdjCu1ye2aJtsLiVKR2', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(31, 'Myrtie Monahan', 'lbeer@example.com', NULL, '$2y$10$TNQhVgTHBSC2UTawDCkEje2aerJTVZjiIGJYd0LDvDMcXKglQFmpu', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(32, 'Dr. Tiana Heathcote MD', 'hhomenick@example.com', NULL, '$2y$10$58VpXVJoZ.reh3vHkaxuK.CV4brC2DxkTwyqi4P53LMSU4n93UBhK', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(33, 'Kailyn Pollich V', 'zgaylord@example.com', NULL, '$2y$10$UhkHppV0dIMAyIrVBQfLG.qtigbjWBbhammMEfwWrBMpu2Mtx.HdS', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(34, 'Prof. Sylvester Gleason DDS', 'wilber69@example.org', NULL, '$2y$10$/JoY1.qavXnkLSYzJTNPNuWscM91m4OSVEAc769Oq0/JI3xjCkjwC', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(35, 'Karley Mills', 'grady.elisa@example.net', NULL, '$2y$10$jRjuZKEfvW5Hv.43mMeZquZoq9MiRB3Njy8VIojPFGvqnt9bIDXxe', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(36, 'Prof. Freda Goyette', 'rachel.bartell@example.net', NULL, '$2y$10$dQekWAEA0v6wmPhvCplgB.naweRltVqkeGQb/bMVpBtE/C5J6l7Jy', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(37, 'Ms. Annamarie Sporer DVM', 'ruben60@example.net', NULL, '$2y$10$qL8HNe0fzQ4oh6xzS12Q/Or/qcFDqav8kS4m1Yh6MW4eS47cWB/Z2', NULL, '2024-09-09 02:00:54', '2024-09-09 02:00:54'),
(38, 'Audra Bednar II', 'deontae18@example.com', NULL, '$2y$10$UdYaCI9YRguGPAfMcKvB7.b96IhQ9pFSDI0.bQpsqUdx9CUxNkVry', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(39, 'Ada Daniel Sr.', 'mtrantow@example.com', NULL, '$2y$10$fLXrhCIkzeTkD3LlKmjhWeCoO5bDBj92xwjbrUvOdmUc0k0hVBW7u', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(40, 'Angus Harris', 'keara76@example.com', NULL, '$2y$10$0647VYzQ9KF4RiLVwfQflOkmq7AyKXVdTEFbjxKCG/3JLxMNytYNW', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(41, 'Darian Lockman', 'ankunding.allie@example.org', NULL, '$2y$10$O0Rj3HKeD9ieuPJaT7Z5e.WeYGXl7/CmJv9BpnXGukDso0SdV7v46', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(42, 'Dr. Brandy Zemlak II', 'isobel21@example.org', NULL, '$2y$10$fBluzpPScbP/.L8fpr8wGeD01rc2xUkaUf4NbAY3Dom1lLhnAUxw2', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(43, 'Toni Halvorson', 'millie.romaguera@example.org', NULL, '$2y$10$4geNdk201nSAekRwNjmx1.NV43h.6ks2uUH2kpd254AxDGXXO2rYi', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(44, 'Woodrow Oberbrunner', 'ignatius51@example.org', NULL, '$2y$10$vvTOdK9zvez6pBw0ajzkruzuLvYBCvhkvqH.ZB64iKAlExWW2yQq.', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(45, 'Prof. Jacques Borer', 'kulas.zackary@example.org', NULL, '$2y$10$XAO2YvYXp7/DRmbqqTPaU.oqJH6j6nWv3e4ZSK/7m9YBXDNruaSE.', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(46, 'Reina Terry', 'lillie.murray@example.net', NULL, '$2y$10$dpy4WMBD99HU42kJ4.gHGu9mpmOZtf5OdItTUq7rdPqxTFFERLteS', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(47, 'Wendy Nienow', 'ernest.fay@example.com', NULL, '$2y$10$YxRaBnWqNwQ5QUUZv2Ge6.JdQU728T3ejlILch6j.P90WHkhRXkEy', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(48, 'Leatha Ziemann', 'hackett.jules@example.org', NULL, '$2y$10$M2ruZHGKsu4ZIB6bYLISGuqJonKbScjOFwofaO11xkZx.XMa8G/1W', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(49, 'Mrs. Katherine Durgan', 'xthompson@example.net', NULL, '$2y$10$Vb/Td4QryIGIEKt2BAl1MO1hrmHc6LIpxjBwUnA6LJH8aW/FiRuo2', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(50, 'Ms. Lillian Eichmann Jr.', 'earl00@example.net', NULL, '$2y$10$u/Xw12pVCIVXK6s/BbRReut2NdOtjkNkJEjmtvQMUF5OgNUN7pfcK', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(51, 'Conor Gulgowski', 'daphnee.becker@example.org', NULL, '$2y$10$T/UxS0/D6dy6owulZxpHbe6puhsJI.p8.MxaAk./mWo0fpAo3Jq1W', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(52, 'Selina Pagac', 'friesen.alexander@example.net', NULL, '$2y$10$Yd8jZmN1FDA6bhCmcmYXk..3lwLkUQIPQfXf40qxv0HQ9oQqteYr.', NULL, '2024-09-09 02:00:55', '2024-09-09 02:00:55'),
(53, 'Miss Albertha Gerhold', 'bgleason@example.net', NULL, '$2y$10$zfUYenuzLg1Am5kKdHOiUuw3/AdnTYw7HePPvPHazHrPclsBFOy.G', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(54, 'Filiberto Bashirian', 'treva81@example.net', NULL, '$2y$10$0k0hHkqVXdO.iALBN9a9F...Mfdi5eXR20Z8c0gJ/7i1b0eGU5MD.', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(55, 'Flavio Franecki Sr.', 'xroberts@example.net', NULL, '$2y$10$uRdakC9/5WeuVPMA1qPyy.Zw.gbsqWMGJNH3nf4PcAK.L1G6vy4Va', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(56, 'Evan Lockman', 'trevor69@example.net', NULL, '$2y$10$5Ua.0jOzyXpXyCAzIjucfOF/DalABFZ4zWxNBx/oYEdhqxOubz6Ui', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(57, 'Loyce Boyle', 'aiyana.renner@example.com', NULL, '$2y$10$BfBjDlJ1pXR1MMTex1hUHuiRui5PnLCOyBbUT1f3rQMsDEoJuBrCO', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(58, 'Cleve Denesik', 'monahan.mayra@example.net', NULL, '$2y$10$Q9fyPOHMe0ok/lCpyCElsepR9IcJ59kmc2MagUYtmjJWZy0u4jXna', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(59, 'Micaela Torphy', 'becker.joshuah@example.com', NULL, '$2y$10$MT59sgzu7jwWOehTVdVssedZm1FrgsTAaXYNiVNx.tKQnKi3xid2q', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(60, 'Miss Anya Homenick', 'terry.rod@example.org', NULL, '$2y$10$YhH0nLa3kPD2fpN4E/2IXe5wgqKuy5Kf0f7nPfupDddvgOg9RJOpa', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(61, 'Palma Zboncak', 'herminia48@example.org', NULL, '$2y$10$HQgzGjCx0YLzWCMAk9qSiOI4HS22g1Q4S.szMar8brI1RLJKd//pq', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(62, 'Dion Kassulke II', 'rmccullough@example.net', NULL, '$2y$10$3u7gaq1dZ.q6F3oQEYXQXOx.rjt5..t.mb41r2t8Z5O3DBEOtd3/a', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(63, 'Onie Hettinger', 'quinten96@example.net', NULL, '$2y$10$Kcvx0NzHgkzfxJeWITM0Au/A4ODEkhXBnC/1Fi92egJVmoym2M8li', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(64, 'Justyn Kerluke III', 'cristina.mohr@example.com', NULL, '$2y$10$uPdA3bnmROQz254wd/qX4e3tLz7xz3BEKi27ufnFFwtSU7B.RixkS', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(65, 'Bernie King II', 'sdooley@example.com', NULL, '$2y$10$BaBSAcPHoVXEy7/DO/xAwOg3ksZEPn/CNSGTsMyLDzMJLqNWtT2sG', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(66, 'Wilton Turcotte', 'tyree04@example.org', NULL, '$2y$10$ZNY6q1zMPCDPGhpmn0fF2Oo8EtPgXR0o5Svt.X2WEmglT5fI5.Id6', NULL, '2024-09-09 02:00:56', '2024-09-09 02:00:56'),
(67, 'Lenore Pfeffer', 'rupert.hagenes@example.net', NULL, '$2y$10$cNMkSaFFieiZ/AZZGNgdmOo4f7KTGSAy1fKgZjTBzPnMjKLlk17NG', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(68, 'Dr. Hardy Kohler', 'mueller.janet@example.org', NULL, '$2y$10$YcQSHIY7f0S0uInuG61uiui8IvoIkIV1ehKCqu1cRGIrG7WIB12cW', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(69, 'Destiny Stokes', 'meichmann@example.org', NULL, '$2y$10$QMHXqEwlP2fXuwzO4JQsnucvChGNfqyU8MAsFJXYfQHIcGI631PSW', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(70, 'Rahsaan Turner', 'adam.collier@example.org', NULL, '$2y$10$2GvxaMdtRPynjPtFLrrAee1pkh0oiKnP7TMp7HQG5zoMtavBDK6qi', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(71, 'Prof. Johan Gorczany PhD', 'vonrueden.reymundo@example.net', NULL, '$2y$10$Zu9T01ShsFz5vcDNBf5d2uUo.o/exBb036iiHXbvkBUE0AgBg7ajC', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(72, 'Clifton Turcotte', 'mhammes@example.com', NULL, '$2y$10$gG/80i1FhLjb/eGnKl8saubfLEDMlOz6OtofjqaSOcALj/fJS/cdW', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(73, 'Edna Pollich', 'elody87@example.org', NULL, '$2y$10$m3agSgj6FbkhNzYzDw3uruD8HZsHmwHWtUfPtEut33fBPkqfp8HxG', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(74, 'Gerda Klocko', 'gusikowski.ansel@example.net', NULL, '$2y$10$U/MDklxkA3hrAc3sDBIRtedjZtDxAbPv5f.zsG6kUODk7KCwMFBMq', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(75, 'Orlo McLaughlin', 'destiny.brekke@example.org', NULL, '$2y$10$KNgFsuWCwdUNo0vbRPfECuIVIZmAezmB.b/3gM38gBzjJ7bhJLrMu', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(76, 'Marjolaine Labadie', 'porter.berge@example.com', NULL, '$2y$10$YVYepPwbrfy7Wf22CF.scOkJbQ4TqvBfZqg8vlzJImg3fSO9XnjFq', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(77, 'Esta Block V', 'snitzsche@example.com', NULL, '$2y$10$onV5uuCazNXefqk14yA5UOofcSZs8IcGnLqGWyuJWpGFmAV6elUqu', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(78, 'Michaela Pagac', 'vhaley@example.org', NULL, '$2y$10$gdPg0VQcDcug4L8lDRX7UuSdCNd.dz1s2bru80F2cEdKR8lN5230W', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(79, 'Arvilla Glover', 'thad.reichert@example.com', NULL, '$2y$10$l5oi72I4YpBBFjZNkrFuX.6lv7.mqrimXTpDhJOkSfkGT.CrUDGKG', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(80, 'Sydni Keeling V', 'nash.romaguera@example.com', NULL, '$2y$10$6WTtqjxvc5LyIdSCpIjx4u5d7JYUEvC1/yHtrDrXV2ACraoT8VVC2', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(81, 'Kristopher Kreiger', 'pbauch@example.com', NULL, '$2y$10$r/p3cOeOis70NKPtNTQMD.Xj/cD2HlZuqFNjQ9EmuFIY7UjFjINjS', NULL, '2024-09-09 02:00:57', '2024-09-09 02:00:57'),
(82, 'Marianna Gaylord', 'alisha96@example.com', NULL, '$2y$10$1h2dVqtMtBDHcVnfFbkv/uLqVMD0GWdiNTmmNVFRj0KaDK8r1Np/G', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(83, 'Luna McCullough', 'alena.rogahn@example.net', NULL, '$2y$10$A/5Bai8cJFdHUfS.WVFH4Ol937g1A.kVD0AxnMkpOE4qSn4UuVeCq', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(84, 'Dr. Marty Ruecker II', 'aleannon@example.com', NULL, '$2y$10$u2P9KXj/jySHgTSNfojd2e4arNW.vHZSCqafMHmD1uNfwjZVwl2RK', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(85, 'Talia Cummerata', 'genesis.spencer@example.net', NULL, '$2y$10$vggQgGTM81M9f7dKWSedfObcTp08T.9Vrwd5Ag83MStVbvCRPWpTm', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(86, 'Anna Mayert', 'glangosh@example.com', NULL, '$2y$10$mMZmzgsbepFTDR5lWnZ18OnqJCSeJS3HKbn76T5LkoenwgXnN8nFO', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(87, 'Elza Frami', 'jacobs.pat@example.com', NULL, '$2y$10$8gg8bmgH2tW1dkuMr6zmD.UvcF7fJEuk6A.Lyj86iRaF6ZgewzPci', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(88, 'Rubye Kuphal V', 'hsawayn@example.org', NULL, '$2y$10$vgxNtWyZCKZK/2oXDFCog.7Tv6Y0KDrjyq1RrHELgzVXiGwV2eZWu', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(89, 'Luis Effertz', 'amara35@example.org', NULL, '$2y$10$ohOiiUBDcNmfy1pcrtl/0.bLL/vF9vDKXqPfLDgnjvGp5A/h7cVwm', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(90, 'Lennie Pollich', 'vborer@example.com', NULL, '$2y$10$XMq3O8Nu2C23cxAMYgUWsuZGSvbZ0sgvq.3Arm9TYs6WB20gseyTi', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(91, 'Dr. Travon Schulist', 'kaylah13@example.org', NULL, '$2y$10$lHXSq9pvDNgS1bnq/b77AuJuuiGMUYqa46xE4qagNe/EfmS.EyFTa', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(92, 'Louisa Hickle', 'mertz.bethel@example.com', NULL, '$2y$10$012IzziUKzXXLO2EHR2glukSzlDHEU/GsE1bvLupWNf2rIGSikFLu', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(93, 'Abagail Hamill', 'sawayn.jessica@example.com', NULL, '$2y$10$yXciew62vob.aBDXz300Wu8YCHFo24qUnhYMnbsMIsBZk1U48Qqta', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(94, 'Prof. Pierre Kreiger V', 'hcollins@example.org', NULL, '$2y$10$wfb1ZedaFX5ShOPQFJUVh.7LtY3oGD/ptn5aEdaNZl9hYt/tvAwXK', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(95, 'Brad Thompson', 'werner36@example.com', NULL, '$2y$10$joUJ4Gy19tousOBfs3ROiOEVQjwYXjrgtGo9OR/UoQTKvdfza4jUO', NULL, '2024-09-09 02:00:58', '2024-09-09 02:00:58'),
(96, 'Torrey Prosacco', 'roselyn11@example.com', NULL, '$2y$10$3veO8I48itGqG5lVYf6QvurqBuNYqFZZzeE5ycRZKqtYtHkBggd/6', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(97, 'Dr. Sylvester Lang', 'terrill63@example.org', NULL, '$2y$10$5MnF1tSD27G/Lb7KymraT.8KZbjXGjsaPCw6eUhFKwtzFlMuUm88q', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(98, 'Ardella Lebsack', 'saige82@example.net', NULL, '$2y$10$ZRF7kyGTnxxrbVZbIIKiMeg5939xP3uVgtx3MA/jFgtlvazzattbC', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(99, 'Lavon Waelchi', 'haag.brady@example.com', NULL, '$2y$10$Pc5q2uvMs.NDBfxWRz2F6.TMOPvzMg8nZoEnJAQdNJUkKIVqemyG2', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(100, 'Hillary Dibbert Jr.', 'parker40@example.com', NULL, '$2y$10$X4F.n5Lp562nO8MFWKZJAO6.oqM5rLcu9xdsw2bEOaUqVagPNcDFe', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(101, 'Kale Littel', 'xdare@example.com', NULL, '$2y$10$oeGor6tJf469tuu/yCDlheE/NW.chM6CslZCk0tICWmSdjkAAtQNy', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(102, 'Zachery Block', 'ystark@example.com', NULL, '$2y$10$xzR/EQyPPQmpt7nz7/u9AeZsk5Gv5V.ksmPu70rE7q0es/FmFhHpm', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(103, 'Mr. Chet Beatty III', 'gweimann@example.org', NULL, '$2y$10$U2osREzkfr5GgeehJaPCt.SoYuZDTA.E3L5E8DVpq102rjGZxQCQe', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(104, 'Bartholome Smith', 'iblock@example.net', NULL, '$2y$10$nsty82GPuCGbFtudYRxuo.I/evxQKKwJqybZF8K1gHOng.GF/Q7GW', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59'),
(105, 'Llewellyn Medhurst DDS', 'beer.abigale@example.org', NULL, '$2y$10$UQF3oOE4zvLzXfHpXokyYePmZwZiUvsKJAe5VOiambH.6jxtoQIrm', NULL, '2024-09-09 02:00:59', '2024-09-09 02:00:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_result`
--
ALTER TABLE `course_result`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_result_student_id_course_id_unique` (`student_id`,`course_id`),
  ADD KEY `course_result_course_id_foreign` (`course_id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_code_unique` (`student_code`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_department_id_foreign` (`department_id`);

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
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `course_result`
--
ALTER TABLE `course_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `course_result`
--
ALTER TABLE `course_result`
  ADD CONSTRAINT `course_result_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_result_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
