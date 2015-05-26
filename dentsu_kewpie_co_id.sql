-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2015 at 06:12 PM
-- Server version: 5.5.40
-- PHP Version: 5.4.38

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dentsu_kewpie.co.id`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=513 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(512, 1429095634, '::1', 'ZHioj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('a378c92e47d52b56f51a17cdc4811849', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:38.0) Gecko/20100101 Firefox/38.0', 1432638524, 'a:7:{s:9:"user_data";s:0:"";s:8:"curr_url";s:30:"admin-panel/page/detail/edit/8";s:8:"prev_url";s:34:"admin-panel/pagemenu/translate/1/1";s:11:"module_list";s:374:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules List"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"}}";s:20:"module_function_list";s:2712:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/detail":"Detail Page","page{{slash}}/translate":"Translate Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/detail":"Detail Page Menu","pagemenu{{slash}}/translate":"Translate Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1432636836";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}s:8:"language";s:2:"en";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `parameter` varchar(150) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`parameter`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`parameter`, `value`) VALUES
('environment', '0'),
('install', '0'),
('maintenance', '0'),
('theme', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisions`
--

CREATE TABLE IF NOT EXISTS `tbl_divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_divisions`
--

INSERT INTO `tbl_divisions` (`id`, `name`, `subject`, `description`, `is_system`, `status`, `added`, `modified`) VALUES
(12, 'developer', 'Developer', '<p>\r\n	Web Developer Division</p>\r\n', 1, 1, 1364610224, 1364610224),
(13, 'director', 'Director', '<p>\r\n	Director</p>\r\n', 1, 1, 1364610224, 1368369595),
(14, 'account', 'Account', '<p>\r\n	Account</p>\r\n', 1, 1, 0, 0),
(15, 'manager', 'Manager', '<p>\r\n	Manager</p>\r\n', 1, 1, 0, 0),
(16, 'strategist', 'Strategist', '<p>\r\n	Strategist</p>\r\n', 1, 1, 0, 0),
(17, 'creative', 'Creative', '<p>\r\n	Creative</p>\r\n', 1, 1, 0, 0),
(18, 'finance', 'Finance', '<p>\r\n	Finance</p>\r\n', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division_files`
--

CREATE TABLE IF NOT EXISTS `tbl_division_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) unsigned DEFAULT NULL,
  `field_name` varchar(96) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `file_type` varchar(16) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`division_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_division_files`
--

INSERT INTO `tbl_division_files` (`id`, `division_id`, `field_name`, `file_name`, `file_type`, `caption`) VALUES
(1, 13, 'image_1', 'd0020c5505cc68f55446c109c352930d.jpg', 'image/jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` smallint(1) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=457 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1432636839, 0),
(2, 2, 1, 1, 1432636839, 0),
(3, 3, 1, 1, 1432636839, 0),
(4, 4, 1, 1, 1432636839, 0),
(5, 5, 1, 1, 1432636839, 0),
(6, 6, 1, 1, 1432636839, 0),
(7, 38, 1, 1, 1432636839, 0),
(8, 39, 1, 1, 1432636839, 0),
(9, 7, 1, 1, 1432636839, 0),
(10, 8, 1, 1, 1432636839, 0),
(11, 9, 1, 1, 1432636839, 0),
(12, 10, 1, 1, 1432636839, 0),
(13, 11, 1, 1, 1432636839, 0),
(14, 12, 1, 1, 1432636839, 0),
(15, 13, 1, 1, 1432636839, 0),
(16, 14, 1, 1, 1432636839, 0),
(17, 15, 1, 1, 1432636839, 0),
(18, 16, 1, 1, 1432636839, 0),
(19, 17, 1, 1, 1432636839, 0),
(20, 18, 1, 1, 1432636839, 0),
(21, 19, 1, 1, 1432636839, 0),
(22, 20, 1, 1, 1432636839, 0),
(23, 21, 1, 1, 1432636839, 0),
(24, 22, 1, 1, 1432636839, 0),
(25, 23, 1, 1, 1432636839, 0),
(26, 24, 1, 1, 1432636839, 0),
(27, 25, 1, 1, 1432636839, 0),
(28, 26, 1, 1, 1432636839, 0),
(29, 27, 1, 1, 1432636839, 0),
(30, 28, 1, 1, 1432636839, 0),
(31, 29, 1, 1, 1432636839, 0),
(32, 30, 1, 1, 1432636839, 0),
(33, 31, 1, 1, 1432636839, 0),
(34, 32, 1, 1, 1432636839, 0),
(35, 33, 1, 1, 1432636839, 0),
(36, 34, 1, 1, 1432636839, 0),
(37, 35, 1, 1, 1432636839, 0),
(38, 36, 1, 1, 1432636839, 0),
(39, 37, 1, 1, 1432636839, 0),
(40, 40, 1, 1, 1432636839, 0),
(41, 41, 1, 1, 1432636839, 0),
(42, 42, 1, 1, 1432636839, 0),
(43, 43, 1, 1, 1432636839, 0),
(44, 44, 1, 1, 1432636839, 0),
(45, 45, 1, 1, 1432636839, 0),
(46, 46, 1, 1, 1432636839, 0),
(47, 47, 1, 1, 1432636839, 0),
(48, 48, 1, 1, 1432636839, 0),
(49, 49, 1, 1, 1432636839, 0),
(50, 50, 1, 1, 1432636839, 0),
(51, 51, 1, 1, 1432636839, 0),
(52, 52, 1, 1, 1432636839, 0),
(53, 53, 1, 1, 1432636839, 0),
(54, 54, 1, 1, 1432636839, 0),
(55, 55, 1, 1, 1432636839, 0),
(56, 56, 1, 1, 1432636839, 0),
(57, 57, 1, 1, 1432636839, 0),
(58, 1, 2, 1, 1432636839, 0),
(59, 2, 2, 1, 1432636839, 0),
(60, 3, 2, 1, 1432636839, 0),
(61, 4, 2, 1, 1432636839, 0),
(62, 5, 2, 1, 1432636839, 0),
(63, 6, 2, 1, 1432636839, 0),
(64, 38, 2, 1, 1432636839, 0),
(65, 39, 2, 1, 1432636839, 0),
(66, 7, 2, 1, 1432636839, 0),
(67, 8, 2, 1, 1432636839, 0),
(68, 9, 2, 1, 1432636839, 0),
(69, 10, 2, 1, 1432636839, 0),
(70, 11, 2, 1, 1432636839, 0),
(71, 12, 2, 1, 1432636839, 0),
(72, 13, 2, 1, 1432636839, 0),
(73, 14, 2, 1, 1432636839, 0),
(74, 15, 2, 1, 1432636839, 0),
(75, 16, 2, 1, 1432636839, 0),
(76, 17, 2, 1, 1432636839, 0),
(77, 18, 2, 1, 1432636839, 0),
(78, 19, 2, 1, 1432636839, 0),
(79, 20, 2, 1, 1432636839, 0),
(80, 21, 2, 1, 1432636839, 0),
(81, 22, 2, 1, 1432636839, 0),
(82, 23, 2, 1, 1432636839, 0),
(83, 24, 2, 1, 1432636839, 0),
(84, 25, 2, 1, 1432636839, 0),
(85, 26, 2, 1, 1432636839, 0),
(86, 27, 2, 1, 1432636839, 0),
(87, 28, 2, 1, 1432636839, 0),
(88, 29, 2, 1, 1432636839, 0),
(89, 30, 2, 1, 1432636839, 0),
(90, 31, 2, 1, 1432636839, 0),
(91, 32, 2, 1, 1432636839, 0),
(92, 33, 2, 1, 1432636839, 0),
(93, 34, 2, 1, 1432636839, 0),
(94, 35, 2, 1, 1432636839, 0),
(95, 36, 2, 1, 1432636839, 0),
(96, 37, 2, 1, 1432636839, 0),
(97, 40, 2, 1, 1432636839, 0),
(98, 41, 2, 1, 1432636839, 0),
(99, 42, 2, 1, 1432636839, 0),
(100, 43, 2, 1, 1432636839, 0),
(101, 44, 2, 1, 1432636839, 0),
(102, 45, 2, 1, 1432636839, 0),
(103, 46, 2, 1, 1432636839, 0),
(104, 47, 2, 1, 1432636839, 0),
(105, 48, 2, 1, 1432636839, 0),
(106, 49, 2, 1, 1432636839, 0),
(107, 50, 2, 1, 1432636839, 0),
(108, 51, 2, 1, 1432636839, 0),
(109, 52, 2, 1, 1432636839, 0),
(110, 53, 2, 1, 1432636839, 0),
(111, 54, 2, 1, 1432636839, 0),
(112, 55, 2, 1, 1432636839, 0),
(113, 56, 2, 1, 1432636839, 0),
(114, 57, 2, 1, 1432636839, 0),
(115, 1, 99, 0, 1432636839, 0),
(116, 2, 99, 0, 1432636839, 0),
(117, 3, 99, 0, 1432636839, 0),
(118, 4, 99, 0, 1432636839, 0),
(119, 5, 99, 0, 1432636839, 0),
(120, 6, 99, 0, 1432636839, 0),
(121, 38, 99, 0, 1432636839, 0),
(122, 39, 99, 0, 1432636839, 0),
(123, 7, 99, 0, 1432636839, 0),
(124, 8, 99, 0, 1432636839, 0),
(125, 9, 99, 0, 1432636839, 0),
(126, 10, 99, 0, 1432636839, 0),
(127, 11, 99, 0, 1432636839, 0),
(128, 12, 99, 0, 1432636839, 0),
(129, 13, 99, 0, 1432636839, 0),
(130, 14, 99, 0, 1432636839, 0),
(131, 15, 99, 0, 1432636839, 0),
(132, 16, 99, 0, 1432636839, 0),
(133, 17, 99, 0, 1432636839, 0),
(134, 18, 99, 0, 1432636839, 0),
(135, 19, 99, 0, 1432636839, 0),
(136, 20, 99, 0, 1432636839, 0),
(137, 21, 99, 0, 1432636839, 0),
(138, 22, 99, 0, 1432636839, 0),
(139, 23, 99, 0, 1432636839, 0),
(140, 24, 99, 0, 1432636839, 0),
(141, 25, 99, 0, 1432636839, 0),
(142, 26, 99, 0, 1432636839, 0),
(143, 27, 99, 0, 1432636839, 0),
(144, 28, 99, 0, 1432636839, 0),
(145, 29, 99, 0, 1432636839, 0),
(146, 30, 99, 0, 1432636839, 0),
(147, 31, 99, 0, 1432636839, 0),
(148, 32, 99, 0, 1432636839, 0),
(149, 33, 99, 0, 1432636839, 0),
(150, 34, 99, 0, 1432636839, 0),
(151, 35, 99, 0, 1432636839, 0),
(152, 36, 99, 0, 1432636839, 0),
(153, 37, 99, 0, 1432636839, 0),
(154, 40, 99, 0, 1432636839, 0),
(155, 41, 99, 0, 1432636839, 0),
(156, 42, 99, 0, 1432636839, 0),
(157, 43, 99, 0, 1432636839, 0),
(158, 44, 99, 0, 1432636839, 0),
(159, 45, 99, 0, 1432636839, 0),
(160, 46, 99, 0, 1432636839, 0),
(161, 47, 99, 0, 1432636839, 0),
(162, 48, 99, 0, 1432636839, 0),
(163, 49, 99, 0, 1432636839, 0),
(164, 50, 99, 0, 1432636839, 0),
(165, 51, 99, 0, 1432636839, 0),
(166, 52, 99, 0, 1432636839, 0),
(167, 53, 99, 0, 1432636839, 0),
(168, 54, 99, 0, 1432636839, 0),
(169, 55, 99, 0, 1432636839, 0),
(170, 56, 99, 0, 1432636839, 0),
(171, 57, 99, 0, 1432636839, 0),
(172, 1, 112, 0, 1432636839, 0),
(173, 2, 112, 0, 1432636839, 0),
(174, 3, 112, 0, 1432636839, 0),
(175, 4, 112, 0, 1432636839, 0),
(176, 5, 112, 0, 1432636839, 0),
(177, 6, 112, 0, 1432636839, 0),
(178, 38, 112, 0, 1432636839, 0),
(179, 39, 112, 0, 1432636839, 0),
(180, 7, 112, 0, 1432636839, 0),
(181, 8, 112, 0, 1432636839, 0),
(182, 9, 112, 0, 1432636839, 0),
(183, 10, 112, 0, 1432636839, 0),
(184, 11, 112, 0, 1432636839, 0),
(185, 12, 112, 0, 1432636839, 0),
(186, 13, 112, 0, 1432636839, 0),
(187, 14, 112, 0, 1432636839, 0),
(188, 15, 112, 0, 1432636839, 0),
(189, 16, 112, 0, 1432636839, 0),
(190, 17, 112, 0, 1432636839, 0),
(191, 18, 112, 0, 1432636839, 0),
(192, 19, 112, 0, 1432636839, 0),
(193, 20, 112, 0, 1432636839, 0),
(194, 21, 112, 0, 1432636839, 0),
(195, 22, 112, 0, 1432636839, 0),
(196, 23, 112, 0, 1432636839, 0),
(197, 24, 112, 0, 1432636839, 0),
(198, 25, 112, 0, 1432636839, 0),
(199, 26, 112, 0, 1432636839, 0),
(200, 27, 112, 0, 1432636839, 0),
(201, 28, 112, 0, 1432636839, 0),
(202, 29, 112, 0, 1432636839, 0),
(203, 30, 112, 0, 1432636839, 0),
(204, 31, 112, 0, 1432636839, 0),
(205, 32, 112, 0, 1432636839, 0),
(206, 33, 112, 0, 1432636839, 0),
(207, 34, 112, 0, 1432636839, 0),
(208, 35, 112, 0, 1432636839, 0),
(209, 36, 112, 0, 1432636839, 0),
(210, 37, 112, 0, 1432636839, 0),
(211, 40, 112, 0, 1432636839, 0),
(212, 41, 112, 0, 1432636839, 0),
(213, 42, 112, 0, 1432636839, 0),
(214, 43, 112, 0, 1432636839, 0),
(215, 44, 112, 0, 1432636839, 0),
(216, 45, 112, 0, 1432636839, 0),
(217, 46, 112, 0, 1432636839, 0),
(218, 47, 112, 0, 1432636839, 0),
(219, 48, 112, 0, 1432636839, 0),
(220, 49, 112, 0, 1432636839, 0),
(221, 50, 112, 0, 1432636839, 0),
(222, 51, 112, 0, 1432636839, 0),
(223, 52, 112, 0, 1432636839, 0),
(224, 53, 112, 0, 1432636839, 0),
(225, 54, 112, 0, 1432636839, 0),
(226, 55, 112, 0, 1432636839, 0),
(227, 56, 112, 0, 1432636839, 0),
(228, 57, 112, 0, 1432636839, 0),
(229, 1, 113, 0, 1432636839, 0),
(230, 2, 113, 0, 1432636839, 0),
(231, 3, 113, 0, 1432636839, 0),
(232, 4, 113, 0, 1432636839, 0),
(233, 5, 113, 0, 1432636839, 0),
(234, 6, 113, 0, 1432636839, 0),
(235, 38, 113, 0, 1432636839, 0),
(236, 39, 113, 0, 1432636839, 0),
(237, 7, 113, 0, 1432636839, 0),
(238, 8, 113, 0, 1432636839, 0),
(239, 9, 113, 0, 1432636839, 0),
(240, 10, 113, 0, 1432636839, 0),
(241, 11, 113, 0, 1432636839, 0),
(242, 12, 113, 0, 1432636839, 0),
(243, 13, 113, 0, 1432636839, 0),
(244, 14, 113, 0, 1432636839, 0),
(245, 15, 113, 0, 1432636839, 0),
(246, 16, 113, 0, 1432636839, 0),
(247, 17, 113, 0, 1432636839, 0),
(248, 18, 113, 0, 1432636839, 0),
(249, 19, 113, 0, 1432636839, 0),
(250, 20, 113, 0, 1432636839, 0),
(251, 21, 113, 0, 1432636839, 0),
(252, 22, 113, 0, 1432636839, 0),
(253, 23, 113, 0, 1432636839, 0),
(254, 24, 113, 0, 1432636839, 0),
(255, 25, 113, 0, 1432636839, 0),
(256, 26, 113, 0, 1432636839, 0),
(257, 27, 113, 0, 1432636839, 0),
(258, 28, 113, 0, 1432636839, 0),
(259, 29, 113, 0, 1432636839, 0),
(260, 30, 113, 0, 1432636839, 0),
(261, 31, 113, 0, 1432636839, 0),
(262, 32, 113, 0, 1432636839, 0),
(263, 33, 113, 0, 1432636839, 0),
(264, 34, 113, 0, 1432636839, 0),
(265, 35, 113, 0, 1432636839, 0),
(266, 36, 113, 0, 1432636839, 0),
(267, 37, 113, 0, 1432636839, 0),
(268, 40, 113, 0, 1432636839, 0),
(269, 41, 113, 0, 1432636839, 0),
(270, 42, 113, 0, 1432636839, 0),
(271, 43, 113, 0, 1432636839, 0),
(272, 44, 113, 0, 1432636839, 0),
(273, 45, 113, 0, 1432636839, 0),
(274, 46, 113, 0, 1432636839, 0),
(275, 47, 113, 0, 1432636839, 0),
(276, 48, 113, 0, 1432636839, 0),
(277, 49, 113, 0, 1432636839, 0),
(278, 50, 113, 0, 1432636839, 0),
(279, 51, 113, 0, 1432636839, 0),
(280, 52, 113, 0, 1432636839, 0),
(281, 53, 113, 0, 1432636839, 0),
(282, 54, 113, 0, 1432636839, 0),
(283, 55, 113, 0, 1432636839, 0),
(284, 56, 113, 0, 1432636839, 0),
(285, 57, 113, 0, 1432636839, 0),
(286, 1, 114, 0, 1432636839, 0),
(287, 2, 114, 0, 1432636839, 0),
(288, 3, 114, 0, 1432636839, 0),
(289, 4, 114, 0, 1432636839, 0),
(290, 5, 114, 0, 1432636839, 0),
(291, 6, 114, 0, 1432636839, 0),
(292, 38, 114, 0, 1432636839, 0),
(293, 39, 114, 0, 1432636839, 0),
(294, 7, 114, 0, 1432636839, 0),
(295, 8, 114, 0, 1432636839, 0),
(296, 9, 114, 0, 1432636839, 0),
(297, 10, 114, 0, 1432636839, 0),
(298, 11, 114, 0, 1432636839, 0),
(299, 12, 114, 0, 1432636839, 0),
(300, 13, 114, 0, 1432636839, 0),
(301, 14, 114, 0, 1432636839, 0),
(302, 15, 114, 0, 1432636839, 0),
(303, 16, 114, 0, 1432636839, 0),
(304, 17, 114, 0, 1432636839, 0),
(305, 18, 114, 0, 1432636839, 0),
(306, 19, 114, 0, 1432636839, 0),
(307, 20, 114, 0, 1432636839, 0),
(308, 21, 114, 0, 1432636839, 0),
(309, 22, 114, 0, 1432636839, 0),
(310, 23, 114, 0, 1432636839, 0),
(311, 24, 114, 0, 1432636839, 0),
(312, 25, 114, 0, 1432636839, 0),
(313, 26, 114, 0, 1432636839, 0),
(314, 27, 114, 0, 1432636839, 0),
(315, 28, 114, 0, 1432636839, 0),
(316, 29, 114, 0, 1432636839, 0),
(317, 30, 114, 0, 1432636839, 0),
(318, 31, 114, 0, 1432636839, 0),
(319, 32, 114, 0, 1432636839, 0),
(320, 33, 114, 0, 1432636839, 0),
(321, 34, 114, 0, 1432636839, 0),
(322, 35, 114, 0, 1432636839, 0),
(323, 36, 114, 0, 1432636839, 0),
(324, 37, 114, 0, 1432636839, 0),
(325, 40, 114, 0, 1432636839, 0),
(326, 41, 114, 0, 1432636839, 0),
(327, 42, 114, 0, 1432636839, 0),
(328, 43, 114, 0, 1432636839, 0),
(329, 44, 114, 0, 1432636839, 0),
(330, 45, 114, 0, 1432636839, 0),
(331, 46, 114, 0, 1432636839, 0),
(332, 47, 114, 0, 1432636839, 0),
(333, 48, 114, 0, 1432636839, 0),
(334, 49, 114, 0, 1432636839, 0),
(335, 50, 114, 0, 1432636839, 0),
(336, 51, 114, 0, 1432636839, 0),
(337, 52, 114, 0, 1432636839, 0),
(338, 53, 114, 0, 1432636839, 0),
(339, 54, 114, 0, 1432636839, 0),
(340, 55, 114, 0, 1432636839, 0),
(341, 56, 114, 0, 1432636839, 0),
(342, 57, 114, 0, 1432636839, 0),
(343, 1, 116, 0, 1432636839, 0),
(344, 2, 116, 0, 1432636839, 0),
(345, 3, 116, 0, 1432636839, 0),
(346, 4, 116, 0, 1432636839, 0),
(347, 5, 116, 0, 1432636839, 0),
(348, 6, 116, 0, 1432636839, 0),
(349, 38, 116, 0, 1432636839, 0),
(350, 39, 116, 0, 1432636839, 0),
(351, 7, 116, 0, 1432636839, 0),
(352, 8, 116, 0, 1432636839, 0),
(353, 9, 116, 0, 1432636839, 0),
(354, 10, 116, 0, 1432636839, 0),
(355, 11, 116, 0, 1432636839, 0),
(356, 12, 116, 0, 1432636839, 0),
(357, 13, 116, 0, 1432636839, 0),
(358, 14, 116, 0, 1432636839, 0),
(359, 15, 116, 0, 1432636839, 0),
(360, 16, 116, 0, 1432636839, 0),
(361, 17, 116, 0, 1432636839, 0),
(362, 18, 116, 0, 1432636839, 0),
(363, 19, 116, 0, 1432636839, 0),
(364, 20, 116, 0, 1432636839, 0),
(365, 21, 116, 0, 1432636839, 0),
(366, 22, 116, 0, 1432636839, 0),
(367, 23, 116, 0, 1432636839, 0),
(368, 24, 116, 0, 1432636839, 0),
(369, 25, 116, 0, 1432636839, 0),
(370, 26, 116, 0, 1432636839, 0),
(371, 27, 116, 0, 1432636839, 0),
(372, 28, 116, 0, 1432636839, 0),
(373, 29, 116, 0, 1432636839, 0),
(374, 30, 116, 0, 1432636839, 0),
(375, 31, 116, 0, 1432636839, 0),
(376, 32, 116, 0, 1432636839, 0),
(377, 33, 116, 0, 1432636839, 0),
(378, 34, 116, 0, 1432636839, 0),
(379, 35, 116, 0, 1432636839, 0),
(380, 36, 116, 0, 1432636839, 0),
(381, 37, 116, 0, 1432636839, 0),
(382, 40, 116, 0, 1432636839, 0),
(383, 41, 116, 0, 1432636839, 0),
(384, 42, 116, 0, 1432636839, 0),
(385, 43, 116, 0, 1432636839, 0),
(386, 44, 116, 0, 1432636839, 0),
(387, 45, 116, 0, 1432636839, 0),
(388, 46, 116, 0, 1432636839, 0),
(389, 47, 116, 0, 1432636839, 0),
(390, 48, 116, 0, 1432636839, 0),
(391, 49, 116, 0, 1432636839, 0),
(392, 50, 116, 0, 1432636839, 0),
(393, 51, 116, 0, 1432636839, 0),
(394, 52, 116, 0, 1432636839, 0),
(395, 53, 116, 0, 1432636839, 0),
(396, 54, 116, 0, 1432636839, 0),
(397, 55, 116, 0, 1432636839, 0),
(398, 56, 116, 0, 1432636839, 0),
(399, 57, 116, 0, 1432636839, 0),
(400, 1, 100, 0, 1432636839, 0),
(401, 2, 100, 0, 1432636839, 0),
(402, 3, 100, 0, 1432636839, 0),
(403, 4, 100, 0, 1432636839, 0),
(404, 5, 100, 0, 1432636839, 0),
(405, 6, 100, 0, 1432636839, 0),
(406, 38, 100, 0, 1432636839, 0),
(407, 39, 100, 0, 1432636839, 0),
(408, 7, 100, 0, 1432636839, 0),
(409, 8, 100, 0, 1432636839, 0),
(410, 9, 100, 0, 1432636839, 0),
(411, 10, 100, 0, 1432636839, 0),
(412, 11, 100, 0, 1432636839, 0),
(413, 12, 100, 0, 1432636839, 0),
(414, 13, 100, 0, 1432636839, 0),
(415, 14, 100, 0, 1432636839, 0),
(416, 15, 100, 0, 1432636839, 0),
(417, 16, 100, 0, 1432636839, 0),
(418, 17, 100, 0, 1432636839, 0),
(419, 18, 100, 0, 1432636839, 0),
(420, 19, 100, 0, 1432636839, 0),
(421, 20, 100, 0, 1432636839, 0),
(422, 21, 100, 0, 1432636839, 0),
(423, 22, 100, 0, 1432636839, 0),
(424, 23, 100, 0, 1432636839, 0),
(425, 24, 100, 0, 1432636839, 0),
(426, 25, 100, 0, 1432636839, 0),
(427, 26, 100, 0, 1432636839, 0),
(428, 27, 100, 0, 1432636839, 0),
(429, 28, 100, 0, 1432636839, 0),
(430, 29, 100, 0, 1432636839, 0),
(431, 30, 100, 0, 1432636839, 0),
(432, 31, 100, 0, 1432636839, 0),
(433, 32, 100, 0, 1432636839, 0),
(434, 33, 100, 0, 1432636839, 0),
(435, 34, 100, 0, 1432636839, 0),
(436, 35, 100, 0, 1432636839, 0),
(437, 36, 100, 0, 1432636839, 0),
(438, 37, 100, 0, 1432636839, 0),
(439, 40, 100, 0, 1432636839, 0),
(440, 41, 100, 0, 1432636839, 0),
(441, 42, 100, 0, 1432636839, 0),
(442, 43, 100, 0, 1432636839, 0),
(443, 44, 100, 0, 1432636839, 0),
(444, 45, 100, 0, 1432636839, 0),
(445, 46, 100, 0, 1432636839, 0),
(446, 47, 100, 0, 1432636839, 0),
(447, 48, 100, 0, 1432636839, 0),
(448, 49, 100, 0, 1432636839, 0),
(449, 50, 100, 0, 1432636839, 0),
(450, 51, 100, 0, 1432636839, 0),
(451, 52, 100, 0, 1432636839, 0),
(452, 53, 100, 0, 1432636839, 0),
(453, 54, 100, 0, 1432636839, 0),
(454, 55, 100, 0, 1432636839, 0),
(455, 56, 100, 0, 1432636839, 0),
(456, 57, 100, 0, 1432636839, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(82) NOT NULL,
  `prefix` varchar(8) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `name`, `url`, `prefix`, `default`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Indonesia', 'indonesia', 'id', 0, 1, 0, 1425357221, 1429684869),
(2, 'English', 'english', 'en', 1, 1, 1, 1425357221, 1429601522),
(3, 'Saudi Arabia', 'arab', 'sa', 0, 1, 0, 1425357221, 1429684869);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_model_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_model_lists`
--

INSERT INTO `tbl_model_lists` (`id`, `module_id`, `model`) VALUES
(1, 1, 'admin/Users'),
(2, 1, 'admin/UserProfiles'),
(3, 1, 'admin/UserHistories'),
(4, 1, 'admin/ModulePermissions'),
(5, 1, 'admin/UserGroupPermissions'),
(6, 1, 'admin/Languages'),
(7, 1, 'admin/Settings'),
(8, 1, 'admin/ServerLogs'),
(9, 1, 'admin/Sessions'),
(10, 8, 'page/Pages'),
(11, 8, 'page/PageMenus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_module_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_module_lists`
--

INSERT INTO `tbl_module_lists` (`id`, `parent_id`, `module_name`, `module_link`, `order`) VALUES
(1, 0, 'admin', '#', 0),
(2, 1, 'Dashboard Panel', 'dashboard/index', 0),
(3, 1, 'Users', 'user/index', 1),
(4, 1, 'User Groups', 'usergroup/index', 2),
(5, 1, 'Languages', 'language/index', 3),
(6, 1, 'Settings', 'setting/index', 4),
(7, 1, 'Server Logs', 'serverlog/index', 5),
(8, 0, 'page', '#', 1),
(9, 8, 'Pages', 'page/index', 0),
(10, 8, 'Page Menus', 'pagemenu/index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_module_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `tbl_module_permissions`
--

INSERT INTO `tbl_module_permissions` (`id`, `module_id`, `module_name`, `module_link`, `order`) VALUES
(1, 1, 'Dashboard Panel', 'dashboard/index', 0),
(2, 1, 'Users', 'user/index', 1),
(3, 1, 'User Groups', 'usergroup/index', 2),
(4, 1, 'Languages', 'language/index', 3),
(5, 1, 'Settings', 'setting/index', 4),
(6, 1, 'Server Logs', 'serverlog/index', 5),
(7, 1, 'Add New Dashboard', 'dashboard/add', 6),
(8, 1, 'View Dashboard', 'dashboard/view', 7),
(9, 1, 'Edit Dashboard', 'dashboard/edit', 8),
(10, 1, 'Delete Dashboard', 'dashboard/delete', 9),
(11, 1, 'Change Dashboard Status', 'dashboard/change', 10),
(12, 1, 'Add User', 'user/add', 11),
(13, 1, 'View User', 'user/view', 12),
(14, 1, 'Edit User', 'user/edit', 13),
(15, 1, 'Delete User', 'user/delete', 14),
(16, 1, 'Change User Status', 'user/change', 15),
(17, 1, 'Change User Image', 'user/image', 16),
(18, 1, 'Upload User Image', 'user/upload', 17),
(19, 1, 'Add User Group', 'usergroup/add', 18),
(20, 1, 'View User Group', 'usergroup/view', 19),
(21, 1, 'Edit User Group', 'usergroup/edit', 20),
(22, 1, 'Delete User Group', 'usergroup/delete', 21),
(23, 1, 'Change User Group Status', 'usergroup/change', 22),
(24, 1, 'Add Language', 'language/add', 23),
(25, 1, 'View Language', 'language/view', 24),
(26, 1, 'Edit Language', 'language/edit', 25),
(27, 1, 'Delete Language', 'language/delete', 26),
(28, 1, 'Change Language Status', 'language/change', 27),
(29, 1, 'Add Setting', 'setting/add', 28),
(30, 1, 'View Setting', 'setting/view', 29),
(31, 1, 'Edit Setting', 'setting/edit', 30),
(32, 1, 'Delete Setting', 'setting/delete', 31),
(33, 1, 'Change Setting Status', 'setting/change', 32),
(34, 1, 'View Server Log', 'serverlog/view', 33),
(35, 1, 'Edit Server Log', 'serverlog/edit', 34),
(36, 1, 'Delete Server Log', 'serverlog/delete', 35),
(37, 1, 'Trash Server Log', 'serverlog/trash', 36),
(38, 8, 'Pages', 'page/index', 0),
(39, 8, 'Page Menus', 'pagemenu/index', 1),
(40, 8, 'Add Page', 'page/index/add', 2),
(41, 8, 'View Page', 'page/index/view', 3),
(42, 8, 'Edit Page', 'page/index/edit', 4),
(43, 8, 'Delete Page', 'page/index/delete', 5),
(44, 8, 'Detail Page', 'page/detail', 6),
(45, 8, 'Translate Page', 'page/translate', 7),
(46, 8, 'Change Page Status', 'page/index/change', 8),
(47, 8, 'Export Page', 'page/index/export', 9),
(48, 8, 'Print Page', 'page/index/print', 10),
(49, 8, 'Add Page Menu', 'pagemenu/index/add', 11),
(50, 8, 'View Page Menu', 'pagemenu/index/view', 12),
(51, 8, 'Edit Page Menu', 'pagemenu/index/edit', 13),
(52, 8, 'Delete Page Menu', 'pagemenu/index/delete', 14),
(53, 8, 'Detail Page Menu', 'pagemenu/detail', 15),
(54, 8, 'Translate Page Menu', 'pagemenu/translate', 16),
(55, 8, 'Change Page Menu Status', 'pagemenu/index/change', 17),
(56, 8, 'Export Page Menu', 'pagemenu/index/export', 18),
(57, 8, 'Print Page Menu', 'pagemenu/index/print', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `synopsis` text,
  `text` text,
  `attribute` text,
  `publish_date` date DEFAULT NULL,
  `unpublish_date` date DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`menu_id`,`name`,`publish_date`,`unpublish_date`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `menu_id`, `name`, `subject`, `url`, `synopsis`, `text`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, '', 'Our History', '', '<p>\r\n	Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</p>\r\n', '<p>\r\n	<strong>Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</strong></p>\r\n', NULL, '2015-02-13', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1428661972),
(2, 1, '', 'Vision', '', '<p>\r\n	Vision Synopsis</p>\r\n', '<p>\r\n	Vision Text Description</p>\r\n', NULL, '2015-02-28', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1428662026),
(3, 2, '', 'Test three', '', '<p>\r\n	Test three</p>\r\n', '<p>\r\n	Test three</p>\r\n', NULL, '2015-02-28', '2015-03-31', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087137),
(4, 2, '', 'Test Four TEst', '', '<p>\r\n	Test Four TEst</p>\r\n', '<p>\r\n	Test Four TEst</p>\r\n', NULL, '2015-02-01', '2015-03-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087155),
(5, 2, '', 'Test Five Page', '', '<p>\r\n	Test Five Page</p>\r\n', '<p>\r\n	Test Five</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087170),
(6, 1, '', 'Test one two three four five six seven', '', '<p>\r\n	Test one two three four five six seven</p>\r\n', '<p>\r\n	Test one two three four five six seven</p>\r\n', NULL, '2015-02-28', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424071240, 1424087187),
(7, 2, '', 'Test Page with Added', '', '<p>\r\n	Test Page with Added</p>\r\n', '<p>\r\n	Test Page with Added</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424087227, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_details`
--

CREATE TABLE IF NOT EXISTS `tbl_page_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned DEFAULT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`page_id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_page_details`
--

INSERT INTO `tbl_page_details` (`id`, `page_id`, `lang_id`, `name`, `subject`, `url`, `synopsis`, `text`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 0, NULL, 'Our History', '', '<p>\r\n	Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</p>\r\n', '<p>\r\n	<strong>Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History Our History</strong></p>\r\n', NULL, NULL, NULL, 0, 0),
(2, 1, 0, NULL, 'Vision', '', '<p>\r\n	Vision Synopsis</p>\r\n', '<p>\r\n	Vision Text Description</p>\r\n', NULL, NULL, NULL, 0, 0),
(3, 2, 0, NULL, 'Test three', '', '<p>\r\n	Test three</p>\r\n', '<p>\r\n	Test three</p>\r\n', NULL, NULL, NULL, 0, 0),
(4, 2, 0, NULL, 'Test Four TEst', '', '<p>\r\n	Test Four TEst</p>\r\n', '<p>\r\n	Test Four TEst</p>\r\n', NULL, NULL, NULL, 0, 0),
(5, 2, 0, NULL, 'Test Five Page', '', '<p>\r\n	Test Five Page</p>\r\n', '<p>\r\n	Test Five</p>\r\n', NULL, NULL, NULL, 0, 0),
(6, 1, 0, NULL, 'Test one two three four five six seven', '', '<p>\r\n	Test one two three four five six seven</p>\r\n', '<p>\r\n	Test one two three four five six seven</p>\r\n', NULL, NULL, NULL, 0, 0),
(7, 2, 0, NULL, 'Test Page with Added', '', '<p>\r\n	Test Page with Added</p>\r\n', '<p>\r\n	Test Page with Added</p>\r\n', NULL, NULL, NULL, 0, 0),
(8, 1, 1, NULL, 'Test', '', '<p>\n	Tset</p>\n', '<p>\n	Tset</p>\n', 1, NULL, 1, 1432637912, 1432638354),
(9, 1, 3, NULL, 'Test', '', '<p>\n	Tset</p>\n', '<p>\n	Tset</p>\n', 1, NULL, 1, 1432637914, 1432638367),
(10, 2, 1, NULL, NULL, '', NULL, NULL, 1, NULL, 0, 1432638155, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sub_level` tinyint(3) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `is_system` tinyint(3) DEFAULT NULL,
  `has_child` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`name`,`sub_level`,`order`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_page_menus`
--

INSERT INTO `tbl_page_menus` (`id`, `parent_id`, `name`, `title`, `description`, `url`, `media`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, NULL, 'Our Product', '<p>\n	Our Product Page Description</p>\n', 'our-product', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1432634955),
(2, NULL, NULL, 'Inside Kewpie', '<p>\n	Inside Kewpie Pages Description</p>\n', 'inside-kewpie', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1432635002),
(3, NULL, NULL, 'Recipes', '<p>\n	Recipes Page Menu Description</p>\n', 'recipes', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432635063, 1432636244),
(4, NULL, NULL, 'Who are we', '<p>\n	Who are we description</p>\n', 'who-are-we', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432635116, 1432636238),
(5, NULL, NULL, 'Latest News', '<p>\n	Latest News menu description</p>\n', 'latest-news', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432635133, 1432636223);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menu_details`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menu_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`menu_id`,`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_page_menu_details`
--

INSERT INTO `tbl_page_menu_details` (`id`, `menu_id`, `lang_id`, `name`, `title`, `description`, `url`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 0, 'About Us', 'about-us', '<p>\r\n	About Us Page Description</p>\r\n', 'about-us', NULL, NULL, 'publish', NULL, NULL),
(2, NULL, 0, 'Company', 'company', '<p>\r\n	Company Pages Description</p>\r\n', 'company', NULL, NULL, 'publish', NULL, NULL),
(3, 1, 1, 'Test', 'Produk Kami', '<p>\n	Deskripsi Produk Kami</p>\n', '', 1, NULL, 'publish', 1432636538, 1432638606),
(4, 1, 3, 'Test', 'Test', NULL, NULL, 1, NULL, '', 1432636708, NULL),
(5, 2, 1, 'Test', 'Test', NULL, NULL, 1, NULL, '', 1432636710, NULL),
(6, 3, 1, 'Test', NULL, NULL, NULL, 1, NULL, '', 1432637012, NULL),
(7, 5, 1, 'Test', NULL, NULL, NULL, 1, NULL, '', 1432637015, NULL),
(8, 2, 3, NULL, NULL, NULL, NULL, 1, NULL, '', 1432637288, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_server_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_server_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `http_code` int(11) unsigned NOT NULL,
  `status_code` varchar(160) DEFAULT NULL,
  `bytes_served` int(11) unsigned DEFAULT NULL,
  `total_time` varchar(160) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT '0',
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `is_mobile` int(11) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `tbl_server_logs`
--

INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `http_code`, `status_code`, `bytes_served`, `total_time`, `ip_address`, `referrer`, `user_agent`, `is_mobile`, `status`, `added`, `modified`) VALUES
(1, 'b51c6db498c1fcd1018a9d212f7248df', 'http://localhost/dentsu.digital/home/menu', NULL, 200, 'OK', NULL, '0.68937200 1429252025', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252026, 0),
(2, 'b51c6db498c1fcd1018a9d212f7248df', 'http://localhost/dentsu.digital/home', NULL, 200, 'OK', NULL, '0.41274400 1429252029', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252029, 0),
(3, 'b51c6db498c1fcd1018a9d212f7248df', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.73427600 1429252034', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252034, 0),
(4, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.33932300 1429252915', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252915, 0),
(5, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.59844900 1429252936', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252936, 0),
(6, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.32752200 1429252937', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252937, 0),
(7, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.57854700 1429252937', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252937, 0),
(8, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.86397500 1429252951', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429252951, 0),
(9, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31112000 1429253003', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253003, 0),
(10, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.87017500 1429253003', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253003, 0),
(11, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.05119400 1429253004', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253004, 0),
(12, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.41683000 1429253020', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253020, 0),
(13, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67745600 1429253026', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253026, 0),
(14, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06279400 1429253090', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253090, 0),
(15, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67095400 1429253121', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253121, 0),
(16, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.43093000 1429253131', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253131, 0),
(17, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.80276700 1429253149', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253149, 0),
(18, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06399300 1429253152', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253152, 0),
(19, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.48403500 1429253172', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253172, 0),
(20, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.37812500 1429253173', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253173, 0),
(21, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.62514900 1429253173', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253173, 0),
(22, '32856c45123d7612a07945654916953e', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.84117100 1429253173', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253173, 0),
(23, '1f3070a252200c4a83876223275d229b', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31191700 1429253261', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253261, 0),
(24, '1f3070a252200c4a83876223275d229b', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67705400 1429253262', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253262, 0),
(25, '1f3070a252200c4a83876223275d229b', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.44863000 1429253288', '139.0.26.20', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429253288, 0),
(106, 'e11de059f1f8d86c6bc467bc29c7febb', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.44487700 1429260431', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429260432, 0),
(107, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06122100 1429262235', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262235, 0),
(108, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.32824800 1429262245', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262245, 0),
(109, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.03571800 1429262250', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262250, 0),
(110, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.76849100 1429262277', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262277, 0),
(111, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.89560400 1429262278', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(112, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.22163700 1429262279', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(113, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.49566400 1429262279', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(114, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.66768100 1429262279', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262279, 0),
(115, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.84699900 1429262292', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262292, 0),
(116, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.66308100 1429262293', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262293, 0),
(117, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.05011900 1429262294', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262294, 0),
(118, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31614600 1429262294', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262294, 0),
(119, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.65007900 1429262313', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262313, 0),
(120, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.77619200 1429262314', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262314, 0),
(121, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.10422400 1429262335', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262335, 0),
(122, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.96341000 1429262346', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262347, 0),
(123, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.41065500 1429262349', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262349, 0),
(124, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.20473400 1429262350', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262350, 0),
(125, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.85279900 1429262350', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262350, 0),
(126, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.31284500 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262351, 0),
(127, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.61087500 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262351, 0),
(128, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.78689200 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262351, 0),
(129, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.97091100 1429262351', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262352, 0),
(130, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.19193300 1429262352', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262352, 0),
(131, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.42395600 1429262352', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262352, 0),
(132, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.09002300 1429262353', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262353, 0),
(133, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.79509300 1429262353', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262353, 0),
(134, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.83319700 1429262354', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262354, 0),
(135, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.30134300 1429262386', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262386, 0),
(136, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.18553200 1429262388', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262388, 0),
(137, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.95970900 1429262389', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262390, 0),
(138, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.38795200 1429262392', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262392, 0),
(139, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.56677000 1429262410', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262410, 0),
(140, '66e727ff0019d9afc371929492a69823', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.34994800 1429262422', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262422, 0),
(141, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.06454800 1429262913', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262913, 0),
(142, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.60054800 1429262918', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262918, 0),
(143, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.44254800 1429262999', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429262999, 0),
(144, '64d70d40610a17751bf6aee010681583', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.94254800 1429263004', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263005, 0),
(145, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.41754800 1429263012', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263012, 0),
(146, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.94054800 1429263013', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263014, 0),
(147, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.28654800 1429263015', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263015, 0),
(148, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.99354800 1429263015', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263016, 0),
(149, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.92354800 1429263037', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263038, 0),
(150, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.21854800 1429263039', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263039, 0),
(151, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.38554800 1429263046', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263046, 0),
(152, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.46654800 1429263064', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263064, 0),
(153, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.73554800 1429263065', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263065, 0),
(154, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.58254800 1429263066', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263066, 0),
(155, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.29454800 1429263107', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263107, 0),
(156, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.51954800 1429263108', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263108, 0),
(157, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.38154800 1429263134', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263134, 0),
(158, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.49454800 1429263135', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263135, 0),
(159, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.10754800 1429263136', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263136, 0),
(160, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.00454800 1429263152', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263152, 0),
(161, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.04654800 1429263158', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263158, 0),
(162, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.74854800 1429263162', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263162, 0),
(163, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.92654800 1429263166', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263167, 0),
(164, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.65854800 1429263170', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263170, 0),
(165, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.53554800 1429263178', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263178, 0),
(166, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.07354800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263180, 0),
(167, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.48654800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263180, 0),
(168, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.67454800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263180, 0),
(169, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.83454800 1429263180', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263181, 0),
(170, '9c20f77dd18ce27421ca114099398687', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.01054800 1429263181', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429263181, 0),
(171, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/home/page', NULL, 200, 'OK', NULL, '0.13825400 1429267901', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267908, 0),
(172, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.95121600 1429267915', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267916, 0),
(173, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.71866800 1429267950', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267951, 0),
(174, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.13235000 1429267979', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429267979, 0),
(175, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.22656300 1429268115', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268122, 0),
(176, '252e06454b1392e11a5ce5e38bccfaba', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.12404200 1429268140', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268140, 0),
(177, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.85618400 1429268235', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268236, 0),
(178, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.69785200 1429268246', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268246, 0),
(179, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.36187700 1429268449', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268452, 0),
(180, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.19784200 1429268504', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268504, 0),
(181, 'a27a2f5764915cabadb35468ab16535c', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.81456500 1429268517', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268517, 0),
(182, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.00080000 1429268574', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268574, 0),
(183, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.27565500 1429268578', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268578, 0),
(184, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.50210000 1429268585', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268585, 0),
(185, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.50349900 1429268607', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268607, 0),
(186, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.70253800 1429268622', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268622, 0),
(187, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.68893500 1429268634', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268634, 0),
(188, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.15862900 1429268638', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268638, 0),
(189, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.90007500 1429268687', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268688, 0),
(190, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.67542900 1429268714', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268714, 0),
(191, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.67432600 1429268786', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268786, 0),
(192, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.17712600 1429268788', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268788, 0),
(193, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.46748400 1429268797', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268797, 0),
(194, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.10021100 1429268801', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268801, 0),
(195, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.38176700 1429268806', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268806, 0),
(196, 'de07aa449f6fc309f295795e7217212b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.04029800 1429268819', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268819, 0),
(197, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.23543300 1429268922', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268922, 0),
(198, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.63871300 1429268923', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268923, 0),
(199, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.07760100 1429268928', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268928, 0),
(200, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.73143100 1429268954', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268954, 0),
(201, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.77003800 1429268957', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268957, 0),
(202, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.45008000 1429268968', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429268968, 0),
(203, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.05805700 1429269016', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269016, 0),
(204, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.30560700 1429269028', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269028, 0),
(205, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.43927900 1429269037', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269037, 0),
(206, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.81790300 1429269051', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269051, 0),
(207, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.70582500 1429269054', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269055, 0),
(208, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.07005200 1429269061', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269061, 0),
(209, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.11414300 1429269078', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269078, 0),
(210, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.77111100 1429269100', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269100, 0),
(211, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.69532600 1429269104', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269104, 0),
(212, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.70172400 1429269107', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269107, 0),
(213, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.75821200 1429269117', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269117, 0),
(214, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.89378400 1429269144', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269145, 0),
(215, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.00436000 1429269187', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269187, 0),
(216, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.26890700 1429269189', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269190, 0),
(217, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.56704700 1429269198', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269198, 0),
(218, 'e36be56c164e63dc0dc442133baee658', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.02235600 1429269202', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269202, 0),
(219, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.49466000 1429269255', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269255, 0),
(220, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.95463100 1429269285', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269286, 0),
(221, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.24263100 1429269342', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269342, 0),
(222, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.72463100 1429269343', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269343, 0),
(223, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.00063100 1429269344', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269344, 0),
(224, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.23413100 1429269344', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269344, 0),
(225, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.47013100 1429269362', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269362, 0),
(226, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.09913100 1429269377', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269377, 0),
(227, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.81363100 1429269380', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269380, 0),
(228, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.12913100 1429269399', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269399, 0),
(229, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.28013100 1429269407', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269407, 0),
(230, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.26363100 1429269440', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269440, 0),
(231, '8d7a643e7222155a381acff439dfab64', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.67563100 1429269534', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269537, 0),
(232, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.16813100 1429269556', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269556, 0),
(233, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.18663100 1429269559', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269559, 0),
(234, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.58663100 1429269566', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269566, 0),
(235, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.13763100 1429269583', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269583, 0),
(236, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.25163100 1429269584', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269584, 0),
(237, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.31913100 1429269605', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269605, 0),
(238, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.37363100 1429269606', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269606, 0);
INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `http_code`, `status_code`, `bytes_served`, `total_time`, `ip_address`, `referrer`, `user_agent`, `is_mobile`, `status`, `added`, `modified`) VALUES
(239, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.49163100 1429269621', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269621, 0),
(240, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.22163100 1429269636', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269636, 0),
(241, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.52963100 1429269646', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269646, 0),
(242, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.94463100 1429269702', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269703, 0),
(243, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.58413100 1429269741', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269741, 0),
(244, 'fa321cbe2148ed6af879f8f18eba8bb1', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.79163100 1429269742', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429269742, 0),
(245, '5cbe9d1bf209701e8114f6a2563a451e', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.06348400 1429499606', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429499625, 0),
(246, '62312461f1016a2e1834a4b99add4498', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.94892300 1429500167', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429500206, 0),
(247, '97f42a0d0eca2d362891f0a7d16523b2', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.95829200 1429592294', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429592321, 0),
(248, '3e9d15fa0926d3f3177479d127a2dcb7', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.48193300 1429613388', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429613403, 0),
(249, 'f099a90a3461185e996ce58d76d2a29b', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.86900400 1429624567', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429624580, 0),
(250, 'd49c32d077d3039019d28b0e47327922', 'http://localhost/dentsu.digital/', NULL, 200, 'OK', NULL, '0.99084600 1429677653', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.90 Safari\\/537.36","platform":"Unknown Windows OS","browser":"Chrome"}', 0, 1, 1429677666, 0),
(251, '492284f5dba5c922185b5534d21b8572', 'http://localhost/dentsu.digital/home', NULL, 200, 'OK', NULL, '0.61240800 1429854899', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429854899, 0),
(252, '492284f5dba5c922185b5534d21b8572', 'http://localhost/dentsu.digital/home', NULL, 200, 'OK', NULL, '0.30940800 1429854906', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429854906, 0),
(253, '492284f5dba5c922185b5534d21b8572', 'http://localhost/dentsu.digital/home/sdfgsdfgsdfgsdfg', NULL, 200, 'OK', NULL, '0.18640800 1429854910', '::1', '', '{"user_agent":"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko\\/20100101 Firefox\\/37.0","platform":"Unknown Windows OS","browser":"Firefox"}', 0, 1, 1429854910, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parameter` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `input_type` enum('input','textarea','radio','dropdown','timezones') DEFAULT NULL,
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `show_editor` enum('0','1') DEFAULT NULL,
  `is_numeric` enum('0','1') DEFAULT NULL,
  `help_text` varchar(512) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`parameter`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `parameter`, `alias`, `value`, `is_system`, `input_type`, `input_size`, `show_editor`, `is_numeric`, `help_text`, `status`, `added`, `modified`) VALUES
(1, 'email_marketing', 'Email Marketing', 'marketing@', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(2, 'email_administrator', 'Email Administrator', 'administrator@', 1, 'input', 'small', '0', '0', '', 1, 1334835773, 1336122482),
(3, 'email_hrd', 'Email HRD', 'hrd@', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(4, 'email_info', 'Email Info', 'info@d3.dentsu.co.id', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(5, 'email_template', 'Email Template', 'Dear {user}, This email is sent to you by automaticly, Please not reply this email, Thank you.<br><br><blockquote><blockquote><blockquote><img src="http://www.codeigniter.com/assets/images/ci-logo-big.png" alt=""><br><br></blockquote></blockquote></blockquote>{company}<br>', 1, 'input', 'large', '1', '0', 'This is email template for your contact', 1, 1334835773, 1429097217),
(6, 'maintenance_template', 'Maintenance Mode Template', '<h2>The site is off for <span><h1>MAINTENANCE</h1></span></h2>', 1, 'input', 'large', '1', '0', '', 1, 1334835773, NULL),
(7, 'contactus_address', 'Contact Address', '22nd Floor, Mandiri Tower Plaza Bapindo <br/>\nJl. Jend. Sudirman Kav. 54-55 <br/>\nJakarta 12190, Indonesia', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(8, 'contactus_gmap', 'GMaps Location', 'http://maps.google.com/maps?q=-6.217668,106.812992&num=1&t=m&z=18', 1, 'input', 'large', '0', '0', '', 1, 1334835773, NULL),
(9, 'no_phone', 'Number Phone', '(021) 299-501-10 / (021) 526-0286', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(10, 'no_fax', 'Number Fax', '(021) 522.3718', 1, 'input', 'small', '0', '0', '', 1, 1334835773, NULL),
(11, 'title_default', 'Website Title Default', 'Connecting you to your consumer', 1, 'input', 'medium', '0', '0', '', 1, NULL, NULL),
(12, 'title_name', 'Company Title Name', 'PT. Default (Web Agency in Jakarta)', 1, 'input', 'medium', '0', '0', '', 1, NULL, 1336118568),
(13, 'language', 'Default Site Language', 'en', 1, 'input', 'small', '0', '0', 'Default language set', 1, NULL, 1429598740),
(14, 'counter', 'Site Counter', '123', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(15, 'copyright', 'Copyright', '© 2012 COMPANY NAME COPYRIGHT. All Rights Reserved.', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(16, 'site_name', 'Site Name', ' Default <br/> PT. Default (Web Agency in Jakarta).', 1, 'input', 'medium', '0', '0', '', 1, NULL, 1336118568),
(17, 'site_quote', 'Quote', 'We provide solution for your Websites', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(18, 'site_description', 'Website Description', 'We provide solution for your Company Website ', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(19, 'socmed_facebook', 'Facebook', 'http://facebook.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(20, 'socmed_twitter', 'Twitter', 'http://twitter.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(21, 'socmed_gplus', 'Google Plus', 'http://plus.google.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(22, 'socmed_linkedin', 'LinkedIn', 'http://linkedin.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1424754067),
(23, 'socmed_pinterest', 'Pinterest', 'http://pinterest.com', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(24, 'registered_mark', 'Registered', 'We provide solution for your Websites', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(25, 'google_analytics', 'Analytics', 'Code Snippet', 1, 'input', 'large', '0', '0', '', 1, NULL, 1336118568),
(26, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, 'input', 'large', '0', '0', '', 1, NULL, 1423732944);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` char(64) CHARACTER SET latin1 NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `password` char(124) CHARACTER SET latin1 NOT NULL,
  `group_id` tinyint(1) unsigned NOT NULL,
  `last_login` int(11) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `session_id` varchar(160) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `group_id`, `last_login`, `logged_in`, `status`, `session_id`, `added`, `modified`) VALUES
(1, 'admin', 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 1, 1432636836, 1, 1, '53442ba6f4200716d93a8d2141727a01', 0, 0),
(2, 'joni', 'admin1@admin.com', '9003d1df22eb4d3820015070385194c8', 2, 1417003004, 0, 0, '', 0, 1429262613),
(3, 'qc9080', 'asdf@asdf.com', 'fb00378895cf135de3b135f385c0012f3823e4fb', 116, 1417001008, 0, 1, '', 1425031512, 1424689343),
(29, 'dyarfi', 'dyarfi20@gmail.com', '647dc5d75f6ce3c6a859eb3b91fa6ccaab05b245', 116, 0, 0, 1, '', 1417065898, 0),
(7, 'gmp1234', 'defrian.yarfi@gmail.com', '4d60cf3ac1381a533090412a84466000437eee1f', 116, 1417003001, 0, 1, '', 1425031542, 0),
(42, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425270772, 0),
(43, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425270783, 0),
(45, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425271011, 0),
(44, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425271008, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `backend_access` tinyint(1) DEFAULT NULL,
  `full_backend_access` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `tbl_user_groups`
--

INSERT INTO `tbl_user_groups` (`id`, `name`, `backend_access`, `full_backend_access`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Super Administrator', 1, 1, 1, 1, 1416499923, 0),
(2, 'Administrator', 1, 1, 1, 1, 1416499923, 0),
(99, 'User', 0, 0, 1, 1, 1416499923, 0),
(111, 'Manager', 1, 1, 0, 0, 0, 1425371383),
(112, 'Executive', 0, 0, 1, 0, 0, 0),
(113, 'Director', 0, 0, 1, 0, 0, 0),
(114, 'General', 0, 0, 1, 0, 0, 1424689329),
(116, 'Publisher', 1, 1, 1, 0, 0, 0),
(100, 'Employee', 1, NULL, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_histories`
--

CREATE TABLE IF NOT EXISTS `tbl_user_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(24) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `controller` varchar(160) NOT NULL,
  `action` char(20) DEFAULT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`module`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_histories`
--

INSERT INTO `tbl_user_histories` (`id`, `module`, `user_id`, `controller`, `action`, `time`) VALUES
(1, 'user', 1, 'history', 'index', 1416281220),
(2, 'user', 1, 'history', 'index', 1416281220);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_profiles` (
  `user_id` int(11) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `about` text,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `division` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(8) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `file_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(48) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_profiles`
--

INSERT INTO `tbl_user_profiles` (`user_id`, `gender`, `about`, `first_name`, `last_name`, `division`, `country`, `state`, `city`, `address`, `postal_code`, `birthday`, `phone`, `mobile_phone`, `fax`, `website`, `file_type`, `file_name`, `status`, `added`, `modified`) VALUES
(1, 1, 'Top Administrator of this website and portal', 'Administrator', 'Website', 'Web Programmer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', 'http://google.com', 'image/jpeg', 'Muhammed-Ali-Career-In-Pictures.jpg', 1, 1283760138, 1428304456),
(2, 1, 'Administrator of this Website', '', '', 'Web Designer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', '', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 0, 1283760138, 1429262613),
(3, 1, 'User of this Website', 'Administrator', 'Viewers', 'Jakarta', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '2012-02-12', '1234', NULL, NULL, NULL, 'image/jpeg', 'a8a484572c007e1e17648ae2c7ad629c.jpg', 1, 1425031512, 1424689343),
(28, 1, 'Test', 'Public', 'Viewers', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '909090090', '909090090', NULL, NULL, NULL, NULL, 1, 1424854403, 1424689343),
(29, 1, 'Web Programmer not a full stack', 'Defrian', 'Yarfi', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '081807244697', '081807244697', NULL, NULL, NULL, NULL, 1, 1417065898, 0),
(44, 1, NULL, 'Dyarfi 20 Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '20131013_142521a.jpg', 1, 1425271008, 0),
(45, 1, NULL, 'Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '3b394-1513781_10205610488526266_3600135193534162', 1, 1425271011, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
