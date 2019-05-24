-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2019 at 04:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fingerprintbaikdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absensi_local`
--

CREATE TABLE `tbl_absensi_local` (
  `id_attendance` int(255) NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `tgljam` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_absensi_local`
--

INSERT INTO `tbl_absensi_local` (`id_attendance`, `nik`, `tgljam`) VALUES
(1, '518.2015.0157', '2019-04-22 06:09:40'),
(2, '518.2006.0011', '2019-04-22 06:26:39'),
(3, '518.2008.0020', '2019-04-22 06:59:17'),
(4, '518.2013.0084', '2019-04-22 07:09:32'),
(5, '518.2012.0059', '2019-04-22 07:14:39'),
(6, '518.2012.0057', '2019-04-22 07:44:52'),
(7, '518.2005.0009', '2019-04-22 07:52:21'),
(8, '518.2005.0009', '2019-04-22 07:56:47'),
(9, '518.2005.0007', '2019-04-22 08:04:16'),
(10, '518.2012.0052', '2019-04-22 08:11:20'),
(11, '518.2008.0021', '2019-04-22 08:12:57'),
(12, '518.2014.0133', '2019-04-22 08:13:51'),
(13, '518.1999.0002', '2019-04-22 08:34:42'),
(14, '518.2009.0023', '2019-04-22 08:34:53'),
(15, '518.2013.0069', '2019-04-22 08:37:53'),
(16, '518.2013.0069', '2019-04-22 17:02:24'),
(17, '518.2003.0005', '2019-04-22 17:21:35'),
(18, '518.2006.0011', '2019-04-22 17:22:13'),
(19, '518.2013.0084', '2019-04-22 17:25:31'),
(20, '518.2011.0034', '2019-04-22 17:29:23'),
(21, '518.2005.0009', '2019-04-22 17:34:38'),
(22, '518.1999.0002', '2019-04-22 17:39:35'),
(23, '518.2009.0023', '2019-04-22 18:12:06'),
(24, '518.2012.0057', '2019-04-22 18:45:38'),
(25, '518.2012.0052', '2019-04-22 19:16:28'),
(26, '518.2010.0029', '2019-04-22 19:22:00'),
(27, '518.2014.0133', '2019-04-22 19:28:05'),
(28, '518.2008.0020', '2019-04-22 19:30:56'),
(29, '518.2008.0021', '2019-04-22 19:39:48'),
(30, '518.2015.0157', '2019-04-22 19:42:55'),
(31, '518.2015.0157', '2019-04-23 06:15:19'),
(32, '518.2012.0059', '2019-04-23 07:15:35'),
(33, '518.2008.0020', '2019-04-23 07:31:59'),
(34, '518.2006.0011', '2019-04-23 07:33:40'),
(35, '518.2011.0034', '2019-04-23 07:42:46'),
(36, '518.2013.0084', '2019-04-23 07:49:57'),
(37, '518.2005.0009', '2019-04-23 07:53:39'),
(38, '518.2013.0069', '2019-04-23 07:58:50'),
(39, '518.2005.0007', '2019-04-23 08:01:37'),
(40, '518.2009.0023', '2019-04-23 08:13:36'),
(41, '518.1999.0002', '2019-04-23 08:48:18'),
(42, '518.1999.0002', '2019-04-23 17:08:28'),
(43, '518.2013.0069', '2019-04-23 17:09:36'),
(44, '518.2005.0009', '2019-04-23 17:13:44'),
(45, '518.2009.0023', '2019-04-23 17:28:36'),
(46, '518.2009.0023', '2019-04-23 17:28:37'),
(47, '518.2008.0020', '2019-04-23 17:33:01'),
(48, '518.2003.0005', '2019-04-23 17:33:34'),
(49, '518.2005.0007', '2019-04-23 17:33:41'),
(50, '518.2011.0034', '2019-04-23 18:00:48'),
(51, '518.2013.0084', '2019-04-23 18:07:31'),
(52, '518.2003.0003', '2019-04-23 18:13:19'),
(53, '518.2006.0011', '2019-04-23 18:17:58'),
(54, '518.2014.0133', '2019-04-23 18:18:24'),
(55, '518.2015.0157', '2019-04-23 18:23:37'),
(56, '518.2016.0218', '2019-04-23 18:29:16'),
(57, '518.2015.0157', '2019-04-23 18:59:43'),
(58, '518.2015.0157', '2019-04-24 06:18:16'),
(59, '518.2015.0157', '2019-04-24 06:32:15'),
(60, '518.2015.0157', '2019-04-24 06:32:41'),
(61, '518.2006.0011', '2019-04-24 07:16:56'),
(62, '518.2008.0020', '2019-04-24 07:24:22'),
(63, '518.2011.0034', '2019-04-24 07:30:19'),
(64, '518.2012.0057', '2019-04-24 07:39:08'),
(65, '518.2012.0059', '2019-04-24 07:39:23'),
(66, '518.2013.0084', '2019-04-24 07:46:58'),
(67, '518.2005.0009', '2019-04-24 07:55:40'),
(68, '518.2005.0007', '2019-04-24 07:59:56'),
(69, '518.2013.0069', '2019-04-24 08:13:25'),
(70, '518.2003.0005', '2019-04-24 08:35:49'),
(71, '518.2009.0023', '2019-04-24 08:36:47'),
(72, '518.1999.0002', '2019-04-24 08:38:20'),
(73, '518.1999.0010', '2019-04-24 16:57:42'),
(74, '518.2003.0005', '2019-04-24 17:00:05'),
(75, '518.2003.0003', '2019-04-24 17:00:20'),
(76, '518.2013.0069', '2019-04-24 17:06:42'),
(77, '518.2005.0009', '2019-04-24 17:23:43'),
(78, '518.2006.0011', '2019-04-24 17:27:21'),
(79, '518.2009.0023', '2019-04-24 17:34:32'),
(80, '518.2011.0034', '2019-04-24 17:40:46'),
(81, '518.2013.0084', '2019-04-24 17:41:17'),
(82, '518.2008.0020', '2019-04-24 18:21:36'),
(83, '518.2012.0057', '2019-04-24 18:36:47'),
(84, '518.2015.0157', '2019-04-24 19:45:41'),
(85, '518.2015.0157', '2019-04-25 05:59:27'),
(86, '518.2008.0020', '2019-04-25 06:32:01'),
(87, '518.2013.0069', '2019-04-25 07:12:52'),
(88, '518.2012.0059', '2019-04-25 07:36:29'),
(89, '518.2012.0057', '2019-04-25 07:36:51'),
(90, '518.2011.0034', '2019-04-25 07:40:47'),
(91, '518.2013.0084', '2019-04-25 07:45:43'),
(92, '518.2005.0009', '2019-04-25 08:02:45'),
(93, '518.2009.0023', '2019-04-25 08:42:44'),
(94, '518.2003.0003', '2019-04-25 11:37:57'),
(95, '518.2013.0069', '2019-04-25 17:00:13'),
(96, '518.2003.0005', '2019-04-25 17:11:22'),
(97, '518.2003.0005', '2019-04-25 17:11:26'),
(98, '518.2005.0009', '2019-04-25 17:12:09'),
(99, '518.2013.0084', '2019-04-25 17:14:29'),
(100, '518.2011.0034', '2019-04-25 17:43:02'),
(101, '518.2014.0133', '2019-04-25 18:56:51'),
(102, '518.2012.0057', '2019-04-25 19:39:32'),
(103, '518.2015.0157', '2019-04-25 22:49:53'),
(104, '518.2016.0218', '2019-04-26 00:47:30'),
(105, '518.2015.0157', '2019-04-26 06:23:39'),
(106, '518.2006.0011', '2019-04-26 06:28:04'),
(107, '518.2008.0021', '2019-04-26 06:29:04'),
(108, '518.2012.0052', '2019-04-26 06:46:02'),
(109, '518.2012.0057', '2019-04-26 07:12:15'),
(110, '518.2012.0059', '2019-04-26 07:38:50'),
(111, '518.2012.0059', '2019-04-26 07:38:53'),
(112, '518.2011.0034', '2019-04-26 07:57:44'),
(113, '518.2005.0009', '2019-04-26 08:02:37'),
(114, '518.2013.0084', '2019-04-26 08:11:10'),
(115, '518.2013.0069', '2019-04-26 08:19:36'),
(116, '518.1999.0002', '2019-04-26 08:29:08'),
(117, '518.2014.0133', '2019-04-26 08:37:48'),
(118, '518.2009.0023', '2019-04-26 09:27:09'),
(119, '518.2003.0003', '2019-04-26 17:28:36'),
(120, '518.2013.0084', '2019-04-26 17:54:30'),
(121, '518.2011.0034', '2019-04-26 17:58:20'),
(122, '518.1999.0002', '2019-04-26 18:25:28'),
(123, '518.2014.0133', '2019-04-26 18:39:23'),
(124, '518.2003.0005', '2019-04-26 19:33:48'),
(125, '518.2013.0069', '2019-04-26 20:26:25'),
(126, '518.2016.0218', '2019-04-26 21:41:24'),
(127, '518.2015.0157', '2019-04-26 21:44:21'),
(128, '518.2012.0057', '2019-04-29 06:05:17'),
(129, '518.2011.0034', '2019-04-29 06:58:07'),
(130, '518.2016.0220', '2019-04-29 06:58:15'),
(131, '518.2012.0059', '2019-04-29 07:24:42'),
(132, '518.2008.0020', '2019-04-29 07:47:13'),
(133, '518.2012.0052', '2019-04-29 07:49:38'),
(134, '518.2016.0218', '2019-04-29 07:55:08'),
(135, '518.2005.0009', '2019-04-29 08:01:51'),
(136, '518.2005.0007', '2019-04-29 08:08:30'),
(137, '518.2008.0021', '2019-04-29 08:10:40'),
(138, '518.2013.0069', '2019-04-29 08:20:20'),
(139, '518.2014.0133', '2019-04-29 08:38:00'),
(140, '518.2009.0023', '2019-04-29 08:38:16'),
(141, '518.1999.0002', '2019-04-29 09:15:52'),
(142, '518.2003.0003', '2019-04-29 09:46:25'),
(143, '518.2008.0020', '2019-04-29 13:35:46'),
(144, '518.20090024', '2019-04-29 14:08:40'),
(145, '518.2008.0020', '2019-04-29 14:08:54'),
(146, '518.2008.0020', '2019-04-29 17:26:00'),
(147, '518.20190040', '2019-04-29 17:27:22'),
(148, '518.20190040', '2019-04-29 17:29:27'),
(149, '518.2014.0133', '2019-04-29 17:32:55'),
(150, '518.2005.0009', '2019-04-29 17:38:05'),
(151, '518.1999.0002', '2019-04-29 17:41:06'),
(152, '518.2013.0069', '2019-04-29 18:11:13'),
(153, '518.2011.0034', '2019-04-29 18:23:16'),
(154, '518.2014.0133', '2019-04-29 18:44:20'),
(155, '518.2006.0011', '2019-04-29 19:06:52'),
(156, '518.2009.0023', '2019-04-29 19:13:28'),
(157, '518.2003.0005', '2019-04-29 19:17:59'),
(158, '518.2003.0003', '2019-04-29 19:29:19'),
(159, '518.2003.0005', '2019-04-29 19:35:31'),
(160, '518.2012.0057', '2019-04-29 19:38:07'),
(161, '518.2016.0218', '2019-04-29 19:40:59'),
(162, '518.2008.0021', '2019-04-29 19:45:24'),
(163, '518.2012.0057', '2019-04-30 06:47:05'),
(164, '518.2016.0218', '2019-04-30 07:35:14'),
(165, '518.2008.0020', '2019-04-30 07:38:56'),
(166, '518.2006.0011', '2019-04-30 07:55:32'),
(167, '518.2011.0034', '2019-04-30 07:55:38'),
(168, '518.2005.0009', '2019-04-30 08:03:33'),
(169, '518.20090024', '2019-04-30 08:07:10'),
(170, '518.2005.0007', '2019-04-30 08:12:32'),
(171, '518.2013.0069', '2019-04-30 08:14:52'),
(172, '518.2009.0023', '2019-04-30 08:22:30'),
(173, '518.1999.0002', '2019-04-30 08:35:09'),
(174, '518.2014.0133', '2019-04-30 08:35:20'),
(175, '518.20090024', '2019-04-30 16:57:00'),
(176, '518.1999.0010', '2019-04-30 17:14:42'),
(177, '518.2008.0020', '2019-04-30 17:15:57'),
(178, '518.2014.0133', '2019-04-30 17:18:08'),
(179, '518.1999.0002', '2019-04-30 17:21:35'),
(180, '518.2005.0009', '2019-04-30 17:27:38'),
(181, '518.2013.0069', '2019-04-30 18:32:08'),
(182, '518.2011.0034', '2019-04-30 18:40:29'),
(183, '518.2012.0057', '2019-04-30 18:57:18'),
(184, '518.2006.0011', '2019-04-30 19:28:58'),
(185, '518.2005.0007', '2019-04-30 19:31:06'),
(186, '518.2009.0023', '2019-04-30 19:33:23'),
(187, '518.2015.0157', '2019-04-30 20:24:58'),
(188, '518.2016.0218', '2019-04-30 20:47:33'),
(189, '518.2015.0157', '2019-05-01 05:32:09'),
(190, '518.2016.0218', '2019-05-01 05:35:09'),
(191, '518.2012.0057', '2019-05-01 07:08:32'),
(192, '518.2013.0084', '2019-05-01 07:52:36'),
(193, '518.2011.0034', '2019-05-01 07:54:14'),
(194, '518.2008.0020', '2019-05-01 07:54:42'),
(195, '518.2005.0007', '2019-05-01 07:59:35'),
(196, '518.2005.0009', '2019-05-01 08:03:34'),
(197, '518.20090024', '2019-05-01 08:08:31'),
(198, '518.2013.0069', '2019-05-01 08:16:17'),
(199, '518.2009.0023', '2019-05-01 08:19:46'),
(200, '518.20190040', '2019-05-01 09:45:35'),
(201, '518.20190040', '2019-05-01 09:57:07'),
(202, '518.20190040', '2019-05-01 10:21:23'),
(203, '518.2019.0040', '2019-05-01 10:24:09'),
(204, '518.2019.0040', '2019-05-01 10:37:49'),
(205, '518.2019.0040', '2019-05-01 10:39:24'),
(206, '518.2008.0020', '2019-05-01 10:39:34'),
(207, '518.2003.0003', '2019-05-01 10:39:44'),
(208, '518.2019.0040', '2019-05-01 10:41:28'),
(209, '518.2019.0040', '2019-05-01 10:41:35'),
(210, '518.2003.0003', '2019-05-01 16:34:54'),
(211, '518.2005.0009', '2019-05-01 17:15:27'),
(212, '518.1999.0002', '2019-05-01 17:17:19'),
(213, '518.2013.0069', '2019-05-01 17:29:05'),
(214, '518.2019.0040', '2019-05-01 17:30:15'),
(215, '518.2009.0023', '2019-05-01 17:50:28'),
(216, '518.2014.0133', '2019-05-01 18:08:25'),
(217, '518.2003.0005', '2019-05-01 18:11:12'),
(218, '518.2008.0020', '2019-05-01 18:12:26'),
(219, '518.2011.0034', '2019-05-01 18:14:04'),
(220, '518.2013.0084', '2019-05-01 18:21:28'),
(221, '518.2005.0007', '2019-05-01 19:27:19'),
(222, '518.2012.0057', '2019-05-01 20:32:41'),
(223, '518.2015.0157', '2019-05-02 06:42:28'),
(224, '518.2006.0011', '2019-05-02 07:31:08'),
(225, '518.2005.0009', '2019-05-02 07:44:51'),
(226, '518.2011.0034', '2019-05-02 07:49:27'),
(227, '518.2012.0057', '2019-05-02 07:59:19'),
(228, '518.2008.0020', '2019-05-02 08:06:28'),
(229, '518.2009.0024', '2019-05-02 08:06:37'),
(230, '518.2014.0133', '2019-05-02 08:06:43'),
(231, '518.2005.0007', '2019-05-02 08:09:40'),
(232, '518.2013.0084', '2019-05-02 08:10:12'),
(233, '518.1999.0010', '2019-05-02 08:50:26'),
(234, '518.1999.0002', '2019-05-02 09:11:12'),
(235, '518.2009.0023', '2019-05-02 09:25:06'),
(236, '518.2003.0003', '2019-05-02 09:25:23'),
(237, '518.2019.0040', '2019-05-02 10:19:27'),
(238, '518.2008.0020', '2019-05-02 17:10:27'),
(239, '518.2019.0040', '2019-05-02 17:11:07'),
(240, '518.2005.0009', '2019-05-02 17:22:16'),
(241, '518.1999.0010', '2019-05-02 17:44:16'),
(242, '518.1999.0002', '2019-05-02 18:10:55'),
(243, '518.2014.0133', '2019-05-02 18:25:56'),
(244, '518.2015.0157', '2019-05-02 19:08:12'),
(245, '518.2011.0034', '2019-05-02 19:29:46'),
(246, '518.2013.0084', '2019-05-02 19:30:32'),
(247, '518.2009.0023', '2019-05-02 20:39:35'),
(248, '518.2003.0005', '2019-05-02 20:51:33'),
(249, '518.2012.0057', '2019-05-02 22:10:08'),
(250, '518.2015.0157', '2019-05-06 05:56:23'),
(251, '518.2011.0034', '2019-05-06 06:57:43'),
(252, '518.2013.0084', '2019-05-06 07:02:08'),
(253, '518.2006.0011', '2019-05-06 07:03:13'),
(254, '518.2012.0059', '2019-05-06 07:16:31'),
(255, '518.2012.0057', '2019-05-06 07:33:15'),
(256, '518.2005.0009', '2019-05-06 07:53:03'),
(257, '518.2012.0052', '2019-05-06 07:53:59'),
(258, '518.2005.0007', '2019-05-06 07:59:20'),
(259, '518.2008.0021', '2019-05-06 08:01:25'),
(260, '518.2014.0133', '2019-05-06 08:04:40'),
(261, '518.2008.0020', '2019-05-06 08:05:18'),
(262, '518.2009.0024', '2019-05-06 08:05:35'),
(263, '518.2009.0023', '2019-05-06 08:17:33'),
(264, '518.1999.0002', '2019-05-06 08:32:46'),
(265, '518.2003.0003', '2019-05-06 09:57:30'),
(266, '518.2003.0003', '2019-05-06 16:08:27'),
(267, '518.2013.0069', '2019-05-06 16:21:12'),
(268, '518.1999.0002', '2019-05-06 16:23:20'),
(269, '518.2012.0057', '2019-05-06 16:26:12'),
(270, '518.2005.0009', '2019-05-06 16:35:11'),
(271, '518.2005.0007', '2019-05-06 16:43:46'),
(272, '518.2006.0011', '2019-05-06 16:47:28'),
(273, '518.2013.0084', '2019-05-06 16:49:36'),
(274, '518.2011.0034', '2019-05-06 17:11:38'),
(275, '518.2011.0034', '2019-05-06 17:11:40'),
(276, '518.2016.0216', '2019-05-06 17:11:44'),
(277, '518.2015.0157', '2019-05-06 18:53:32'),
(278, '518.2012.0057', '2019-05-07 05:19:12'),
(279, '518.2016.0216', '2019-05-07 05:20:19'),
(280, '518.2016.0218', '2019-05-07 05:46:48'),
(281, '518.2006.0011', '2019-05-07 07:01:29'),
(282, '518.2012.0059', '2019-05-07 07:38:29'),
(283, '518.2011.0034', '2019-05-07 07:52:29'),
(284, '518.2009.0024', '2019-05-07 07:58:50'),
(285, '518.2008.0020', '2019-05-07 07:59:56'),
(286, '518.2005.0009', '2019-05-07 08:02:06'),
(287, '518.2014.0133', '2019-05-07 08:08:53'),
(288, '518.2009.0023', '2019-05-07 08:18:12'),
(289, '518.2003.0003', '2019-05-07 08:48:42'),
(290, '518.2008.0020', '2019-05-07 10:00:22'),
(291, '518.2008.0020', '2019-05-07 10:00:25'),
(292, '518.2013.0069', '2019-05-07 16:11:44'),
(293, '518.2005.0009', '2019-05-07 16:12:23'),
(294, '518.2009.0023', '2019-05-07 16:12:47'),
(295, '518.2008.0020', '2019-05-07 16:13:08'),
(296, '518.2009.0024', '2019-05-07 16:16:28'),
(297, '518.2014.0133', '2019-05-07 16:18:25'),
(298, '518.2012.0057', '2019-05-07 16:33:15'),
(299, '518.2010.0029', '2019-05-07 16:39:01'),
(300, '518.2005.0007', '2019-05-07 16:45:57'),
(301, '518.2016.0218', '2019-05-07 16:52:28'),
(302, '518.2006.0011', '2019-05-07 16:57:20'),
(303, '518.2003.0003', '2019-05-07 17:00:57'),
(304, '518.2015.0157', '2019-05-07 17:14:28'),
(305, '518.2011.0034', '2019-05-07 17:20:50'),
(306, '518.2012.0059', '2019-05-08 07:29:38'),
(307, '518.2006.0011', '2019-05-08 07:39:24'),
(308, '518.2012.0057', '2019-05-08 07:41:05'),
(309, '518.2013.0084', '2019-05-08 07:45:33'),
(310, '518.2011.0034', '2019-05-08 07:46:28'),
(311, '518.2008.0020', '2019-05-08 07:53:49'),
(312, '518.2014.0133', '2019-05-08 07:57:56'),
(313, '518.2005.0009', '2019-05-08 07:58:30'),
(314, '518.2005.0007', '2019-05-08 08:00:55'),
(315, '518.2015.0157', '2019-05-08 08:02:42'),
(316, '518.2013.0069', '2019-05-08 08:02:47'),
(317, '518.2012.0052', '2019-05-08 08:08:29'),
(318, '518.2009.0024', '2019-05-08 08:11:49'),
(319, '518.2009.0023', '2019-05-08 08:12:48'),
(320, '518.2008.0021', '2019-05-08 08:39:30'),
(321, '518.2003.0003', '2019-05-08 09:56:07'),
(322, '518.2009.0024', '2019-05-08 15:37:52'),
(323, '518.2009.0024', '2019-05-08 15:38:01'),
(324, '518.2013.0069', '2019-05-08 16:01:43'),
(325, '518.2012.0052', '2019-05-08 16:04:21'),
(326, '518.2009.0024', '2019-05-08 16:06:20'),
(327, '518.2003.0005', '2019-05-08 16:06:34'),
(328, '518.2008.0021', '2019-05-08 16:06:44'),
(329, '518.1999.0010', '2019-05-08 16:07:43'),
(330, '518.2016.0218', '2019-05-08 16:11:00'),
(331, '518.2014.0133', '2019-05-08 16:11:08'),
(332, '518.2010.0029', '2019-05-08 16:12:33'),
(333, '518.2005.0009', '2019-05-08 16:13:47'),
(334, '518.2008.0020', '2019-05-08 16:23:55'),
(335, '518.2013.0084', '2019-05-08 16:34:45'),
(336, '518.2006.0011', '2019-05-08 16:35:51'),
(337, '518.2005.0007', '2019-05-08 16:38:41'),
(338, '518.2012.0057', '2019-05-08 16:46:49'),
(339, '518.2009.0023', '2019-05-08 16:54:29'),
(340, '518.2011.0034', '2019-05-08 17:05:22'),
(341, '518.2015.0157', '2019-05-08 17:53:06'),
(342, '518.2015.0157', '2019-05-09 06:15:47'),
(343, '518.2003.0003', '2019-05-09 07:39:48'),
(344, '518.2011.0034', '2019-05-09 07:41:55'),
(345, '518.2006.0011', '2019-05-09 07:44:20'),
(346, '518.2012.0057', '2019-05-09 07:46:18'),
(347, '518.2005.0009', '2019-05-09 07:50:30'),
(348, '518.2008.0020', '2019-05-09 07:55:19'),
(349, '518.2005.0007', '2019-05-09 08:00:42'),
(350, '518.2013.0084', '2019-05-09 08:06:15'),
(351, '518.2009.0023', '2019-05-09 08:11:37'),
(352, '518.2009.0024', '2019-05-09 08:12:03'),
(353, '518.2014.0133', '2019-05-09 08:15:18'),
(354, '518.2013.0069', '2019-05-09 08:24:36'),
(355, '518.1999.0010', '2019-05-09 08:37:54'),
(356, '518.2019.0410', '2019-05-09 11:49:43'),
(357, '518.2019.0410', '2019-05-09 11:56:23'),
(358, '518.2019.0410', '2019-05-09 11:56:26'),
(359, '518.2019.0410', '2019-05-09 12:00:53'),
(360, '518.2019.0410', '2019-05-09 12:21:22'),
(361, '518.2019.0410', '2019-05-09 12:27:52'),
(362, '518.2019.0410', '2019-05-09 13:14:28'),
(363, '518.2019.0410', '2019-05-09 13:37:28'),
(364, '518.2014.0133', '2019-05-09 15:55:37'),
(365, '518.2013.0069', '2019-05-09 16:03:08'),
(366, '518.1999.0010', '2019-05-09 16:03:54'),
(367, '518.2010.0029', '2019-05-09 16:04:30'),
(368, '518.2003.0003', '2019-05-09 16:11:56'),
(369, '518.2005.0009', '2019-05-09 16:36:12'),
(370, '518.2013.0084', '2019-05-09 16:43:05'),
(371, '518.2011.0034', '2019-05-09 16:47:31'),
(372, '518.2009.0023', '2019-05-09 16:49:55'),
(373, '518.2006.0011', '2019-05-09 16:55:21'),
(374, '518.2008.0020', '2019-05-09 16:57:16'),
(375, '518.2005.0007', '2019-05-09 17:01:27'),
(376, '518.2016.0220', '2019-05-09 17:15:43'),
(377, '518.2015.0157', '2019-05-09 18:04:34'),
(378, '518.2012.0057', '2019-05-09 18:44:30'),
(379, '518.2016.0216', '2019-05-09 21:28:47'),
(380, '518.2016.0218', '2019-05-09 21:52:19'),
(381, '518.2016.0218', '2019-05-10 17:27:18'),
(382, '518.2015.0157', '2019-05-13 05:36:34'),
(383, '518.2009.0024', '2019-05-13 06:19:35'),
(384, '518.2006.0011', '2019-05-13 06:28:51'),
(385, '518.2016.0218', '2019-05-13 06:52:13'),
(386, '518.2012.0059', '2019-05-13 07:14:35'),
(387, '518.2011.0034', '2019-05-13 07:16:42'),
(388, '518.2003.0003', '2019-05-13 07:17:31'),
(389, '518.2008.0020', '2019-05-13 07:37:50'),
(390, '518.2013.0084', '2019-05-13 07:42:02'),
(391, '518.2005.0009', '2019-05-13 07:48:04'),
(392, '518.2012.0057', '2019-05-13 07:57:31'),
(393, '518.2014.0133', '2019-05-13 08:02:01'),
(394, '518.2005.0007', '2019-05-13 08:03:36'),
(395, '518.2012.0052', '2019-05-13 08:04:26'),
(396, '518.2013.0069', '2019-05-13 08:29:33'),
(397, '518.2009.0023', '2019-05-13 08:39:29'),
(398, '518.1999.0002', '2019-05-13 08:45:00'),
(399, '518.2012.0052', '2019-05-13 16:09:58'),
(400, '518.2013.0069', '2019-05-13 16:10:15'),
(401, '518.2008.0021', '2019-05-13 16:19:01'),
(402, '518.2005.0009', '2019-05-13 16:20:05'),
(403, '518.1999.0002', '2019-05-13 16:21:47'),
(404, '518.2013.0084', '2019-05-13 16:33:17'),
(405, '518.2008.0020', '2019-05-13 16:34:51'),
(406, '518.2010.0029', '2019-05-13 16:38:32'),
(407, '518.2005.0007', '2019-05-13 16:54:11'),
(408, '518.2011.0034', '2019-05-13 16:56:46'),
(409, '518.2009.0023', '2019-05-13 17:07:37'),
(410, '518.2012.0057', '2019-05-13 17:24:22'),
(411, '518.2015.0157', '2019-05-13 20:35:32'),
(412, '518.2015.0157', '2019-05-14 06:05:50'),
(413, '518.2012.0059', '2019-05-14 07:18:58'),
(414, '518.2013.0084', '2019-05-14 07:37:07'),
(415, '518.2008.0020', '2019-05-14 07:42:06'),
(416, '518.2011.0034', '2019-05-14 07:42:18'),
(417, '518.2005.0009', '2019-05-14 07:49:11'),
(418, '518.2005.0007', '2019-05-14 08:04:48'),
(419, '518.2012.0057', '2019-05-14 08:11:08'),
(420, '518.2013.0069', '2019-05-14 08:11:17'),
(421, '518.2009.0023', '2019-05-14 08:15:39'),
(422, '518.2014.0133', '2019-05-14 08:20:54'),
(423, '518.1999.0002', '2019-05-14 08:39:45'),
(424, '518.2012.0052', '2019-05-14 09:15:47'),
(425, '518.2013.0069', '2019-05-14 16:13:06'),
(426, '518.2012.0052', '2019-05-14 16:13:46'),
(427, '518.2008.0020', '2019-05-14 16:28:37'),
(428, '518.1999.0002', '2019-05-14 16:28:55'),
(429, '518.2005.0009', '2019-05-14 16:30:10'),
(430, '518.2005.0007', '2019-05-14 17:09:37'),
(431, '518.2016.0216', '2019-05-14 17:11:47'),
(432, '518.2011.0034', '2019-05-14 17:20:04'),
(433, '518.2012.0057', '2019-05-14 17:25:28'),
(434, '518.2009.0023', '2019-05-14 19:18:41'),
(435, '518.2015.0157', '2019-05-14 19:22:43'),
(436, '518.2016.0218', '2019-05-14 23:11:10'),
(437, '518.2016.0216', '2019-05-15 04:44:14'),
(438, '518.2012.0057', '2019-05-15 05:11:55'),
(439, '518.2016.0218', '2019-05-15 07:32:24'),
(440, '518.2011.0034', '2019-05-15 07:43:39'),
(441, '518.2006.0011', '2019-05-15 07:44:17'),
(442, '518.2013.0084', '2019-05-15 07:56:11'),
(443, '518.2005.0009', '2019-05-15 07:56:41'),
(444, '518.2014.0133', '2019-05-15 08:05:35'),
(445, '518.2009.0023', '2019-05-15 08:11:13'),
(446, '518.2013.0069', '2019-05-15 08:30:51'),
(447, '518.2012.0052', '2019-05-15 08:38:38'),
(448, '518.1999.0002', '2019-05-15 08:51:03'),
(449, '518.2014.0133', '2019-05-15 16:10:26'),
(450, '518.2012.0052', '2019-05-15 16:10:33'),
(451, '518.2013.0069', '2019-05-15 16:22:38'),
(452, '518.1999.0002', '2019-05-15 16:32:48'),
(453, '518.2009.0023', '2019-05-15 16:35:40'),
(454, '518.2005.0009', '2019-05-15 16:37:19'),
(455, '518.2016.0216', '2019-05-15 16:44:13'),
(456, '518.2011.0034', '2019-05-15 17:29:28'),
(457, '518.2016.0218', '2019-05-15 18:34:17'),
(458, '518.2012.0057', '2019-05-16 06:01:11'),
(459, '518.2012.0059', '2019-05-16 07:22:41'),
(460, '518.2006.0011', '2019-05-16 07:30:41'),
(461, '518.2011.0034', '2019-05-16 07:37:48'),
(462, '518.2008.0020', '2019-05-16 07:49:57'),
(463, '518.2012.0059', '2019-05-16 07:50:27'),
(464, '518.2005.0009', '2019-05-16 07:56:31'),
(465, '518.2013.0084', '2019-05-16 08:00:15'),
(466, '518.2014.0133', '2019-05-16 08:01:55'),
(467, '518.2005.0007', '2019-05-16 08:06:47'),
(468, '518.2009.0023', '2019-05-16 08:16:14'),
(469, '518.2008.0021', '2019-05-16 08:37:46'),
(470, '518.2013.0069', '2019-05-16 08:44:39'),
(471, '518.1999.0002', '2019-05-16 08:46:06'),
(472, '518.2003.0003', '2019-05-16 09:18:10'),
(473, '518.2008.0020', '2019-05-16 16:15:48'),
(474, '518.2005.0009', '2019-05-16 16:16:53'),
(475, '518.1999.0002', '2019-05-16 16:19:56'),
(476, '518.2013.0069', '2019-05-16 16:20:11'),
(477, '518.1999.0010', '2019-05-16 16:56:11'),
(478, '518.2016.0216', '2019-05-16 17:18:40'),
(479, '518.2011.0034', '2019-05-16 17:24:06'),
(480, '518.2016.0216', '2019-05-16 17:26:20'),
(481, '518.2012.0057', '2019-05-16 17:36:40'),
(482, '518.2012.0057', '2019-05-16 17:36:44'),
(483, '518.2015.0157', '2019-05-16 17:41:55'),
(484, '518.2006.0011', '2019-05-16 20:10:06'),
(485, '518.2003.0003', '2019-05-16 22:31:13'),
(486, '518.2016.0216', '2019-05-17 04:45:18'),
(487, '518.2015.0157', '2019-05-17 06:27:45'),
(488, '518.2012.0059', '2019-05-17 07:11:07'),
(489, '518.2006.0011', '2019-05-17 07:18:36'),
(490, '518.2012.0057', '2019-05-17 07:33:56'),
(491, '518.2011.0034', '2019-05-17 07:45:42'),
(492, '518.2008.0020', '2019-05-17 08:04:32'),
(493, '518.2016.0218', '2019-05-17 08:04:47'),
(494, '518.2005.0009', '2019-05-17 08:05:39'),
(495, '518.2013.0084', '2019-05-17 08:05:53'),
(496, '518.2012.0052', '2019-05-17 08:06:03'),
(497, '518.2014.0133', '2019-05-17 08:06:13'),
(498, '518.2005.0007', '2019-05-17 08:09:51'),
(499, '518.2008.0021', '2019-05-17 08:21:05'),
(500, '518.2013.0069', '2019-05-17 08:25:39'),
(501, '518.1999.0002', '2019-05-17 08:42:06'),
(502, '518.2009.0023', '2019-05-17 09:16:42'),
(503, '518.2014.0133', '2019-05-17 15:47:00'),
(504, '518.1999.0002', '2019-05-17 15:49:48'),
(505, '518.2012.0052', '2019-05-17 16:06:27'),
(506, '518.2008.0021', '2019-05-17 16:07:17'),
(507, '518.2003.0005', '2019-05-17 16:10:37'),
(508, '518.2005.0009', '2019-05-17 16:20:28'),
(509, '518.2013.0084', '2019-05-17 16:24:48'),
(510, '518.2013.0069', '2019-05-17 16:28:32'),
(511, '518.2016.0216', '2019-05-17 16:31:23'),
(512, '518.2010.0029', '2019-05-17 16:31:30'),
(513, '518.2011.0034', '2019-05-17 17:02:30'),
(514, '518.2012.0057', '2019-05-17 17:38:58'),
(515, '518.2015.0157', '2019-05-17 17:39:04'),
(516, '518.2012.0057', '2019-05-17 18:18:07'),
(517, '518.2006.0011', '2019-05-17 18:58:54'),
(518, '518.2016.0216', '2019-05-17 20:10:32'),
(519, '518.2016.0216', '2019-05-17 20:28:20'),
(520, '518.2012.0057', '2019-05-20 05:47:34'),
(521, '518.2006.0011', '2019-05-20 07:05:41'),
(522, '518.2011.0034', '2019-05-20 07:06:48'),
(523, '518.2012.0059', '2019-05-20 07:08:33'),
(524, '518.2008.0020', '2019-05-20 07:33:33'),
(525, '518.2013.0084', '2019-05-20 07:45:53'),
(526, '518.2005.0009', '2019-05-20 07:55:03'),
(527, '518.2005.0007', '2019-05-20 07:59:37'),
(528, '518.2013.0069', '2019-05-20 08:10:45'),
(529, '518.2008.0021', '2019-05-20 08:14:12'),
(530, '518.2009.0023', '2019-05-20 08:23:46'),
(531, '518.2003.0005', '2019-05-20 08:49:46'),
(532, '518.1999.0002', '2019-05-20 08:58:07'),
(533, '518.2003.0003', '2019-05-20 09:41:42'),
(534, '518.2008.0021', '2019-05-20 16:05:00'),
(535, '518.2010.0029', '2019-05-20 16:07:02'),
(536, '518.2012.0052', '2019-05-20 16:07:12'),
(537, '518.1999.0010', '2019-05-20 16:11:25'),
(538, '518.2003.0005', '2019-05-20 16:12:05'),
(539, '518.2009.0024', '2019-05-20 16:12:09'),
(540, '518.2003.0003', '2019-05-20 16:14:09'),
(541, '518.1999.0002', '2019-05-20 16:16:46'),
(542, '518.2013.0069', '2019-05-20 16:18:10'),
(543, '518.2013.0084', '2019-05-20 16:46:50'),
(544, '518.2005.0009', '2019-05-20 16:48:54'),
(545, '518.2009.0023', '2019-05-20 16:49:30'),
(546, '518.2014.0133', '2019-05-20 16:53:57'),
(547, '518.2008.0020', '2019-05-20 16:56:28'),
(548, '518.2011.0034', '2019-05-20 17:06:54'),
(549, '518.2012.0057', '2019-05-20 17:14:02'),
(550, '518.2016.0218', '2019-05-20 17:14:10'),
(551, '518.2006.0011', '2019-05-20 17:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id_karyawan` int(10) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id_karyawan`, `nama`, `nik`, `created_date`) VALUES
(2, 'Latif Efendy', '518.1993.0001', '2019-05-08 07:34:21'),
(3, 'Titin Prasetyawati', '518.1999.0002', '2019-05-08 07:34:21'),
(4, 'Asep Zaenal Umami', '518.2003.0003', '2019-05-08 07:34:21'),
(5, 'Verga Ahmada Putra', '518.2018.0101', '2019-05-08 07:34:21'),
(6, 'Yachya Supriadi', '518.2003.0005', '2019-05-08 07:34:21'),
(7, 'Dera Rahayu', '518.2006.0006', '2019-05-08 07:34:21'),
(8, 'Abdul Syukur Sekarmaji', '518.2005.0007', '2019-05-08 07:34:21'),
(9, 'Imam Iskandar', '518.2000.0008', '2019-05-08 07:34:21'),
(10, 'Tati Dwi Yantini', '518.2005.0009', '2019-05-08 07:34:21'),
(11, 'Yadi Mulyadi', '518.1999.0010', '2019-05-08 07:34:21'),
(12, 'Abdul Rohman', '518.2006.0011', '2019-05-08 07:34:21'),
(13, 'Sondhia Safira', '518.2009.0023', '2019-05-08 07:34:21'),
(14, 'Taufik Nurrohim', '518.2013.0069', '2019-05-08 07:34:21'),
(15, 'Hasan Nurmawan', '518.2012.0059', '2019-05-08 07:34:21'),
(16, 'Mohamad Jayadi', '518.2013.0083', '2019-05-08 07:34:21'),
(17, 'Vidya Ayuningtyas', '518.2013.0084', '2019-05-08 07:34:21'),
(18, 'Mohamad Johar Abdurrahma', '518.2014.0133', '2019-05-08 07:34:21'),
(19, 'Hobir Al As Ari', '518.2015.0157', '2019-05-08 07:34:21'),
(20, 'Fifi Lutfiah', '518.2016.0256', '2019-05-08 07:34:21'),
(21, 'All', '518.All', '2019-05-08 07:34:21'),
(22, 'M.Ade Fadilah As Shidiq', '518.2010.0029', '2019-05-08 07:34:21'),
(23, 'Muhammad Nunu', '518.2008.0021', '2019-05-08 07:34:21'),
(24, 'Vicky Fajar', '518.2008.0020', '2019-05-08 07:34:21'),
(25, 'Mujibfa', '518.2016.0218', '2019-05-08 07:34:21'),
(26, 'Indra Susanto', '518.2016.0219', '2019-05-08 07:34:21'),
(27, 'Fahri Fadillah', '518.2016.0220', '2019-05-08 07:34:21'),
(28, 'Edi Mulyawan', '518.2014.0132', '2019-05-08 07:34:21'),
(29, 'Setiawan Hidayat', '518.2016.0216', '2019-05-08 07:34:21'),
(30, 'Asih', '518.2018.0329', '2019-05-08 07:34:21'),
(31, 'Dedi Iswandi', '518.2009.0022', '2019-05-08 07:34:21'),
(32, 'Dicky Komaludin', '518.2017.0282', '2019-05-08 07:34:21'),
(33, 'Miftahudin', '518.2012.0049', '2019-05-08 07:34:21'),
(34, 'Muhamad Aiman Fauzan', '518.2016.0208', '2019-05-08 07:34:21'),
(35, 'Yudi Permana', '518.2012.0052', '2019-05-08 07:34:21'),
(36, 'Amin Hasan', '518.2019.0101', '2019-05-08 07:34:21'),
(37, 'Babay', '518.2013.0078', '2019-05-08 07:34:21'),
(38, 'Siti Yusnia Rusmanah', '518.2006.0015', '2019-05-08 07:34:21'),
(39, 'Suhendar', '518.2012.0057', '2019-05-08 07:34:21'),
(40, 'Amin Hasan', '518.2017.0279', '2019-05-08 07:34:21'),
(41, 'Iskandar', '518.5555.5555', '2019-05-08 07:34:21'),
(42, 'Murni', '518.7777.7777', '2019-05-08 07:34:21'),
(43, 'Suhernih', '518.2014.0101', '2019-05-08 07:34:21'),
(44, 'Rusdi', '518.9999.9999', '2019-05-08 07:34:21'),
(45, 'Evi Nuryanti', '518.2011.0034', '2019-05-08 07:34:21'),
(46, 'Neng', '518.1212.1212', '2019-05-08 07:34:22'),
(47, 'Nur Anisa', '518.2013.0071', '2019-05-08 07:34:22'),
(48, 'Slamet', '518.2013.0076', '2019-05-08 07:34:22'),
(49, 'Saepul Anwar', '518.2013.0087', '2019-05-08 07:34:22'),
(50, 'Didin Imamudin', '518.2014.0095', '2019-05-08 07:34:22'),
(51, 'Anang Suhendar', '518.2014.0108', '2019-05-08 07:34:22'),
(52, 'Diana Suhanda', '518.2015.0192', '2019-05-08 07:34:22'),
(53, 'Endah Fitriani', '518.2016.0231', '2019-05-08 07:34:22'),
(54, 'Eneng Fipin', '518.2016.0235', '2019-05-08 07:34:22'),
(55, 'Eri Ariyanto', '518.2016.0253', '2019-05-08 07:34:22'),
(56, 'Dicki Zulkarnaen', '518.2017.0290', '2019-05-08 07:34:22'),
(57, 'Muhamad Iqbal', '518.2017.0298', '2019-05-08 07:34:22'),
(58, 'Asri Mutiara Supiani', '518.2018.0333', '2019-05-08 07:34:22'),
(66, '2001.0004', '518.2001.0004', '2019-05-08 07:34:22'),
(67, 'Maulana', '518.2009.0024', '2019-05-08 07:34:22'),
(68, '2013.0075', '518.2013.0075', '2019-05-08 07:34:22'),
(69, '2016.0209', '518.2016.0209', '2019-05-08 07:34:22'),
(70, '2016.0217', '518.2016.0217', '2019-05-08 07:34:22'),
(71, 'Adam PMS', '518.2019.0040', '2019-05-08 07:34:22'),
(77, 'Adam PM', '518.2019.0410', '0000-00-00 00:00:00'),
(78, 'Hapus', '518.1990.1111', NULL),
(79, 'Test', '518.1990.1234', NULL),
(80, 'Test', '518.1990.1235', NULL),
(81, 'Test', '518.2019.6969', NULL),
(82, 'Test 2', '518.2019.6868', NULL),
(83, 'Test 3', '518.2019.6767', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mesin`
--

CREATE TABLE `tbl_mesin` (
  `id_mesin` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mesin`
--

INSERT INTO `tbl_mesin` (`id_mesin`, `ip`, `password`) VALUES
(1, '192.168.1.2', '177');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_absensi_local`
--
ALTER TABLE `tbl_absensi_local`
  ADD PRIMARY KEY (`id_attendance`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `tbl_mesin`
--
ALTER TABLE `tbl_mesin`
  ADD PRIMARY KEY (`id_mesin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_absensi_local`
--
ALTER TABLE `tbl_absensi_local`
  MODIFY `id_attendance` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id_karyawan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_mesin`
--
ALTER TABLE `tbl_mesin`
  MODIFY `id_mesin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
