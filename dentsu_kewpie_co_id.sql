-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2015 at 03:42 AM
-- Server version: 5.5.41-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dentsu_kewpie_co_id_live`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=515 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(514, 1433321614, '139.0.26.20', 'rbWld');

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
('18886b53983b79471a2e58e9a76a19e5', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433324075, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('3846d62d43ff70c3b3fb32f50f52efbe', '139.0.26.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:38.0) Gecko/20100101 Firefox/38.0', 1433322794, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:27:"admin-panel/dashboard/index";s:8:"prev_url";s:30:"admin-panel/authenticate/login";s:11:"module_list";s:564:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules List"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"},"Product":{"product{{slash}}/index":"Product","product_category{{slash}}/index":"Product Categories","product_recipe{{slash}}/index":"Product Recipes"},"News":{"news{{slash}}/index":"News"}}";s:20:"module_function_list";s:6367:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/detail":"Detail Page","page{{slash}}/translate":"Translate Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","page_gallery{{slash}}/index":"Gallery","page_gallery{{slash}}/index{{slash}}/add":"Add Gallery","page_gallery{{slash}}/index{{slash}}/view":"View Gallery","page_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","page_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","page_gallery{{slash}}/index{{slash}}/change":"Change Gallery","page_gallery{{slash}}/index{{slash}}/export":"Export Gallery","page_gallery{{slash}}/index{{slash}}/print":"Print Gallery","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/detail":"Detail Page Menu","pagemenu{{slash}}/translate":"Translate Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"},"Product":{"product{{slash}}/index":"Product","product_category{{slash}}/index":"Product Categories","product_recipe{{slash}}/index":"Product Recipes","product{{slash}}/index{{slash}}/add":"Add Product","product{{slash}}/index{{slash}}/view":"View Product","product{{slash}}/index{{slash}}/edit":"Edit Product","product{{slash}}/index{{slash}}/delete":"Delete Product","product{{slash}}/detail":"Detail Product","product{{slash}}/translate":"Translate Product","product{{slash}}/index{{slash}}/change":"Change Product Status","product{{slash}}/index{{slash}}/export":"Export Product","product{{slash}}/index{{slash}}/print":"Print Product","product_gallery{{slash}}/index":"Gallery","product_gallery{{slash}}/index{{slash}}/add":"Add Gallery","product_gallery{{slash}}/index{{slash}}/view":"View Gallery","product_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","product_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","product_gallery{{slash}}/index{{slash}}/change":"Change Gallery","product_gallery{{slash}}/index{{slash}}/export":"Export Gallery","product_gallery{{slash}}/index{{slash}}/print":"Print Gallery","product_category{{slash}}/index{{slash}}/add":"Add Category","product_category{{slash}}/index{{slash}}/view":"View Category","product_category{{slash}}/index{{slash}}/edit":"Edit Category","product_category{{slash}}/index{{slash}}/delete":"Delete Category","product_category{{slash}}/detail":"Detail Category","product_category{{slash}}/translate":"Translate Category","product_category{{slash}}/index{{slash}}/change":"Change Category Status","product_category{{slash}}/index{{slash}}/export":"Export Category","product_category{{slash}}/index{{slash}}/print":"Print Category","product_recipe{{slash}}/index{{slash}}/add":"Add Recipe","product_recipe{{slash}}/index{{slash}}/view":"View Recipe","product_recipe{{slash}}/index{{slash}}/edit":"Edit Recipe","product_recipe{{slash}}/index{{slash}}/delete":"Delete Recipe","product_recipe{{slash}}/detail":"Detail Recipe","product_recipe{{slash}}/translate":"Translate Recipe","product_recipe{{slash}}/index{{slash}}/change":"Change Recipe Status","product_recipe{{slash}}/index{{slash}}/export":"Export Recipe","product_recipe{{slash}}/index{{slash}}/print":"Print Recipe"},"News":{"news{{slash}}/index":"News","news{{slash}}/index{{slash}}/add":"Add News","news{{slash}}/index{{slash}}/view":"View News","news{{slash}}/index{{slash}}/edit":"Edit News","news{{slash}}/index{{slash}}/delete":"Delete News","news{{slash}}/detail":"Detail News","news{{slash}}/translate":"Translate News","news{{slash}}/index{{slash}}/change":"Change News Status","news{{slash}}/index{{slash}}/export":"Export News","news{{slash}}/index{{slash}}/print":"Print News","news_gallery{{slash}}/index":"Gallery","news_gallery{{slash}}/index{{slash}}/add":"Add Gallery","news_gallery{{slash}}/index{{slash}}/view":"View Gallery","news_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","news_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","news_gallery{{slash}}/index{{slash}}/change":"Change Gallery","news_gallery{{slash}}/index{{slash}}/export":"Export Gallery","news_gallery{{slash}}/index{{slash}}/print":"Print Gallery"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1433319970";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}}'),
('4a1b733f5d0f6646fca094bfcc3ce717', '122.54.177.158', 'Mozilla/5.0 (iPad; CPU OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F69 Safari/600', 1433320650, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('504c7c8e3eb03716be1169f81657e5c9', '180.232.108.12', 'Mozilla/5.0 (iPad; CPU OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F69 Safari/600', 1433323394, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('58955522826a122b65e2e38fea57fae6', '114.125.76.240', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/43.0.2357.51 Mobile/', 1433322020, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('5ba3eb8921a3662c49c7b61a821db740', '64.233.173.246', 'Mozilla/5.0 (iPad; CPU OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/43.0.2357.51 Mobile/12F69 Saf', 1433320554, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('611d895bde91b0009888a2d08ace916f', '139.0.26.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:38.0) Gecko/20100101 Firefox/38.0', 1433322784, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('636303ba7cb228c034346ef13e9bea85', '139.0.26.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:38.0) Gecko/20100101 Firefox/38.0', 1433322512, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('65a27aa9eccc4d06c01db0d7fedf3fa7', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', 1433320984, 'a:2:{s:9:"user_data";s:0:"";s:8:"curr_url";s:30:"admin-panel/authenticate/login";}'),
('6aa40267d575eb7b8e728c4b4fd1f8b4', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', 1433323239, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('6cfc65ad73f71ee3abe092e40d26b1cf', '64.233.173.207', 'Mozilla/5.0 (iPad; CPU OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/43.0.2357.51 Mobile/12F69 Saf', 1433320519, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('84f88a9b5f8bec4dbf71e9c684310a9b', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1433324459, 'a:7:{s:9:"user_data";s:0:"";s:8:"curr_url";s:37:"admin-panel/news/index/ajax_list_info";s:8:"prev_url";s:37:"admin-panel/news/index/ajax_list_info";s:11:"module_list";s:564:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules List"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"},"Product":{"product{{slash}}/index":"Product","product_category{{slash}}/index":"Product Categories","product_recipe{{slash}}/index":"Product Recipes"},"News":{"news{{slash}}/index":"News"}}";s:20:"module_function_list";s:6367:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/detail":"Detail Page","page{{slash}}/translate":"Translate Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","page_gallery{{slash}}/index":"Gallery","page_gallery{{slash}}/index{{slash}}/add":"Add Gallery","page_gallery{{slash}}/index{{slash}}/view":"View Gallery","page_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","page_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","page_gallery{{slash}}/index{{slash}}/change":"Change Gallery","page_gallery{{slash}}/index{{slash}}/export":"Export Gallery","page_gallery{{slash}}/index{{slash}}/print":"Print Gallery","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/detail":"Detail Page Menu","pagemenu{{slash}}/translate":"Translate Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"},"Product":{"product{{slash}}/index":"Product","product_category{{slash}}/index":"Product Categories","product_recipe{{slash}}/index":"Product Recipes","product{{slash}}/index{{slash}}/add":"Add Product","product{{slash}}/index{{slash}}/view":"View Product","product{{slash}}/index{{slash}}/edit":"Edit Product","product{{slash}}/index{{slash}}/delete":"Delete Product","product{{slash}}/detail":"Detail Product","product{{slash}}/translate":"Translate Product","product{{slash}}/index{{slash}}/change":"Change Product Status","product{{slash}}/index{{slash}}/export":"Export Product","product{{slash}}/index{{slash}}/print":"Print Product","product_gallery{{slash}}/index":"Gallery","product_gallery{{slash}}/index{{slash}}/add":"Add Gallery","product_gallery{{slash}}/index{{slash}}/view":"View Gallery","product_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","product_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","product_gallery{{slash}}/index{{slash}}/change":"Change Gallery","product_gallery{{slash}}/index{{slash}}/export":"Export Gallery","product_gallery{{slash}}/index{{slash}}/print":"Print Gallery","product_category{{slash}}/index{{slash}}/add":"Add Category","product_category{{slash}}/index{{slash}}/view":"View Category","product_category{{slash}}/index{{slash}}/edit":"Edit Category","product_category{{slash}}/index{{slash}}/delete":"Delete Category","product_category{{slash}}/detail":"Detail Category","product_category{{slash}}/translate":"Translate Category","product_category{{slash}}/index{{slash}}/change":"Change Category Status","product_category{{slash}}/index{{slash}}/export":"Export Category","product_category{{slash}}/index{{slash}}/print":"Print Category","product_recipe{{slash}}/index{{slash}}/add":"Add Recipe","product_recipe{{slash}}/index{{slash}}/view":"View Recipe","product_recipe{{slash}}/index{{slash}}/edit":"Edit Recipe","product_recipe{{slash}}/index{{slash}}/delete":"Delete Recipe","product_recipe{{slash}}/detail":"Detail Recipe","product_recipe{{slash}}/translate":"Translate Recipe","product_recipe{{slash}}/index{{slash}}/change":"Change Recipe Status","product_recipe{{slash}}/index{{slash}}/export":"Export Recipe","product_recipe{{slash}}/index{{slash}}/print":"Print Recipe"},"News":{"news{{slash}}/index":"News","news{{slash}}/index{{slash}}/add":"Add News","news{{slash}}/index{{slash}}/view":"View News","news{{slash}}/index{{slash}}/edit":"Edit News","news{{slash}}/index{{slash}}/delete":"Delete News","news{{slash}}/detail":"Detail News","news{{slash}}/translate":"Translate News","news{{slash}}/index{{slash}}/change":"Change News Status","news{{slash}}/index{{slash}}/export":"Export News","news{{slash}}/index{{slash}}/print":"Print News","news_gallery{{slash}}/index":"Gallery","news_gallery{{slash}}/index{{slash}}/add":"Add Gallery","news_gallery{{slash}}/index{{slash}}/view":"View Gallery","news_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","news_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","news_gallery{{slash}}/index{{slash}}/change":"Change Gallery","news_gallery{{slash}}/index{{slash}}/export":"Export Gallery","news_gallery{{slash}}/index{{slash}}/print":"Print Gallery"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1433319970";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}s:8:"language";s:7:"english";}'),
('8e3339bdaa15f268589350ae4c7ae5d2', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', 1433320516, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:9:"indonesia";}'),
('94abffd8d7a62db609d94835f6ed5744', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433321002, 'a:3:{s:9:"user_data";s:0:"";s:8:"curr_url";s:30:"admin-panel/authenticate/login";s:8:"language";s:7:"english";}'),
('9a86fbacff2ba4036273b1916541c945', '210.210.158.198', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', 1433324172, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('ba132e77ea89c82fdc46f5185f007a5a', '210.210.158.198', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1433319938, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('cec6e31d641712bee7d860226c8c2e7e', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1433320195, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('d9702a1c87527e667eb36f8550a52c40', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433321165, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('d9ba8bc04f7ffe6fc5e47ac47369ab67', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433324212, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('da79eb302876e2d9461b31f1a14957d9', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433320883, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('efdf7dbafb68f33df910b981d6cbb24a', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433324211, 'a:7:{s:9:"user_data";s:0:"";s:8:"curr_url";s:35:"admin-panel/product/index/ajax_list";s:8:"prev_url";s:25:"admin-panel/product/index";s:11:"module_list";s:564:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules List"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"},"Product":{"product{{slash}}/index":"Product","product_category{{slash}}/index":"Product Categories","product_recipe{{slash}}/index":"Product Recipes"},"News":{"news{{slash}}/index":"News"}}";s:20:"module_function_list";s:6367:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/detail":"Detail Page","page{{slash}}/translate":"Translate Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","page_gallery{{slash}}/index":"Gallery","page_gallery{{slash}}/index{{slash}}/add":"Add Gallery","page_gallery{{slash}}/index{{slash}}/view":"View Gallery","page_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","page_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","page_gallery{{slash}}/index{{slash}}/change":"Change Gallery","page_gallery{{slash}}/index{{slash}}/export":"Export Gallery","page_gallery{{slash}}/index{{slash}}/print":"Print Gallery","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/detail":"Detail Page Menu","pagemenu{{slash}}/translate":"Translate Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"},"Product":{"product{{slash}}/index":"Product","product_category{{slash}}/index":"Product Categories","product_recipe{{slash}}/index":"Product Recipes","product{{slash}}/index{{slash}}/add":"Add Product","product{{slash}}/index{{slash}}/view":"View Product","product{{slash}}/index{{slash}}/edit":"Edit Product","product{{slash}}/index{{slash}}/delete":"Delete Product","product{{slash}}/detail":"Detail Product","product{{slash}}/translate":"Translate Product","product{{slash}}/index{{slash}}/change":"Change Product Status","product{{slash}}/index{{slash}}/export":"Export Product","product{{slash}}/index{{slash}}/print":"Print Product","product_gallery{{slash}}/index":"Gallery","product_gallery{{slash}}/index{{slash}}/add":"Add Gallery","product_gallery{{slash}}/index{{slash}}/view":"View Gallery","product_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","product_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","product_gallery{{slash}}/index{{slash}}/change":"Change Gallery","product_gallery{{slash}}/index{{slash}}/export":"Export Gallery","product_gallery{{slash}}/index{{slash}}/print":"Print Gallery","product_category{{slash}}/index{{slash}}/add":"Add Category","product_category{{slash}}/index{{slash}}/view":"View Category","product_category{{slash}}/index{{slash}}/edit":"Edit Category","product_category{{slash}}/index{{slash}}/delete":"Delete Category","product_category{{slash}}/detail":"Detail Category","product_category{{slash}}/translate":"Translate Category","product_category{{slash}}/index{{slash}}/change":"Change Category Status","product_category{{slash}}/index{{slash}}/export":"Export Category","product_category{{slash}}/index{{slash}}/print":"Print Category","product_recipe{{slash}}/index{{slash}}/add":"Add Recipe","product_recipe{{slash}}/index{{slash}}/view":"View Recipe","product_recipe{{slash}}/index{{slash}}/edit":"Edit Recipe","product_recipe{{slash}}/index{{slash}}/delete":"Delete Recipe","product_recipe{{slash}}/detail":"Detail Recipe","product_recipe{{slash}}/translate":"Translate Recipe","product_recipe{{slash}}/index{{slash}}/change":"Change Recipe Status","product_recipe{{slash}}/index{{slash}}/export":"Export Recipe","product_recipe{{slash}}/index{{slash}}/print":"Print Recipe"},"News":{"news{{slash}}/index":"News","news{{slash}}/index{{slash}}/add":"Add News","news{{slash}}/index{{slash}}/view":"View News","news{{slash}}/index{{slash}}/edit":"Edit News","news{{slash}}/index{{slash}}/delete":"Delete News","news{{slash}}/detail":"Detail News","news{{slash}}/translate":"Translate News","news{{slash}}/index{{slash}}/change":"Change News Status","news{{slash}}/index{{slash}}/export":"Export News","news{{slash}}/index{{slash}}/print":"Print News","news_gallery{{slash}}/index":"Gallery","news_gallery{{slash}}/index{{slash}}/add":"Add Gallery","news_gallery{{slash}}/index{{slash}}/view":"View Gallery","news_gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","news_gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","news_gallery{{slash}}/index{{slash}}/change":"Change Gallery","news_gallery{{slash}}/index{{slash}}/export":"Export Gallery","news_gallery{{slash}}/index{{slash}}/print":"Print Gallery"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1433319970";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}s:8:"language";s:7:"english";}'),
('f0fd2338cb1dcad1839231f8370430ac', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433319533, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}'),
('fb8eed9343d5ae2174b2999751b6097e', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433321279, 'a:2:{s:9:"user_data";s:0:"";s:8:"language";s:7:"english";}');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=969 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1432809384, 0),
(2, 2, 1, 1, 1432809384, 0),
(3, 3, 1, 1, 1432809384, 0),
(4, 4, 1, 1, 1432809384, 0),
(5, 5, 1, 1, 1432809384, 0),
(6, 6, 1, 1, 1432809384, 0),
(7, 38, 1, 1, 1432809384, 0),
(8, 39, 1, 1, 1432809384, 0),
(9, 66, 1, 1, 1432809384, 0),
(10, 67, 1, 1, 1432809384, 0),
(11, 68, 1, 1, 1432809384, 0),
(12, 7, 1, 1, 1432809384, 0),
(13, 8, 1, 1, 1432809384, 0),
(14, 9, 1, 1, 1432809384, 0),
(15, 10, 1, 1, 1432809384, 0),
(16, 11, 1, 1, 1432809384, 0),
(17, 12, 1, 1, 1432809384, 0),
(18, 13, 1, 1, 1432809384, 0),
(19, 14, 1, 1, 1432809384, 0),
(20, 15, 1, 1, 1432809384, 0),
(21, 16, 1, 1, 1432809384, 0),
(22, 17, 1, 1, 1432809384, 0),
(23, 18, 1, 1, 1432809384, 0),
(24, 19, 1, 1, 1432809384, 0),
(25, 20, 1, 1, 1432809384, 0),
(26, 21, 1, 1, 1432809384, 0),
(27, 22, 1, 1, 1432809384, 0),
(28, 23, 1, 1, 1432809384, 0),
(29, 24, 1, 1, 1432809384, 0),
(30, 25, 1, 1, 1432809384, 0),
(31, 26, 1, 1, 1432809384, 0),
(32, 27, 1, 1, 1432809384, 0),
(33, 28, 1, 1, 1432809384, 0),
(34, 29, 1, 1, 1432809384, 0),
(35, 30, 1, 1, 1432809384, 0),
(36, 31, 1, 1, 1432809384, 0),
(37, 32, 1, 1, 1432809384, 0),
(38, 33, 1, 1, 1432809384, 0),
(39, 34, 1, 1, 1432809384, 0),
(40, 35, 1, 1, 1432809384, 0),
(41, 36, 1, 1, 1432809384, 0),
(42, 37, 1, 1, 1432809384, 0),
(43, 40, 1, 1, 1432809384, 0),
(44, 41, 1, 1, 1432809384, 0),
(45, 42, 1, 1, 1432809384, 0),
(46, 43, 1, 1, 1432809384, 0),
(47, 44, 1, 1, 1432809384, 0),
(48, 45, 1, 1, 1432809384, 0),
(49, 46, 1, 1, 1432809384, 0),
(50, 47, 1, 1, 1432809384, 0),
(51, 48, 1, 1, 1432809384, 0),
(52, 49, 1, 1, 1432809384, 0),
(53, 50, 1, 1, 1432809384, 0),
(54, 51, 1, 1, 1432809384, 0),
(55, 52, 1, 1, 1432809384, 0),
(56, 53, 1, 1, 1432809384, 0),
(57, 54, 1, 1, 1432809384, 0),
(58, 55, 1, 1, 1432809384, 0),
(59, 56, 1, 1, 1432809384, 0),
(60, 57, 1, 1, 1432809384, 0),
(61, 58, 1, 1, 1432809384, 0),
(62, 59, 1, 1, 1432809384, 0),
(63, 60, 1, 1, 1432809384, 0),
(64, 61, 1, 1, 1432809384, 0),
(65, 62, 1, 1, 1432809384, 0),
(66, 63, 1, 1, 1432809384, 0),
(67, 64, 1, 1, 1432809384, 0),
(68, 65, 1, 1, 1432809384, 0),
(69, 69, 1, 1, 1432809384, 0),
(70, 70, 1, 1, 1432809384, 0),
(71, 71, 1, 1, 1432809384, 0),
(72, 72, 1, 1, 1432809384, 0),
(73, 73, 1, 1, 1432809384, 0),
(74, 74, 1, 1, 1432809384, 0),
(75, 75, 1, 1, 1432809384, 0),
(76, 76, 1, 1, 1432809384, 0),
(77, 77, 1, 1, 1432809384, 0),
(78, 78, 1, 1, 1432809384, 0),
(79, 79, 1, 1, 1432809384, 0),
(80, 80, 1, 1, 1432809384, 0),
(81, 81, 1, 1, 1432809384, 0),
(82, 82, 1, 1, 1432809384, 0),
(83, 83, 1, 1, 1432809384, 0),
(84, 84, 1, 1, 1432809384, 0),
(85, 85, 1, 1, 1432809384, 0),
(86, 86, 1, 1, 1432809384, 0),
(87, 87, 1, 1, 1432809384, 0),
(88, 88, 1, 1, 1432809384, 0),
(89, 89, 1, 1, 1432809384, 0),
(90, 90, 1, 1, 1432809384, 0),
(91, 91, 1, 1, 1432809384, 0),
(92, 92, 1, 1, 1432809384, 0),
(93, 93, 1, 1, 1432809384, 0),
(94, 94, 1, 1, 1432809384, 0),
(95, 95, 1, 1, 1432809384, 0),
(96, 96, 1, 1, 1432809384, 0),
(97, 97, 1, 1, 1432809384, 0),
(98, 98, 1, 1, 1432809384, 0),
(99, 99, 1, 1, 1432809384, 0),
(100, 100, 1, 1, 1432809384, 0),
(101, 101, 1, 1, 1432809384, 0),
(102, 102, 1, 1, 1432809384, 0),
(103, 103, 1, 1, 1432809384, 0),
(104, 1, 2, 1, 1432809384, 0),
(105, 2, 2, 1, 1432809384, 0),
(106, 3, 2, 1, 1432809384, 0),
(107, 4, 2, 1, 1432809384, 0),
(108, 5, 2, 1, 1432809384, 0),
(109, 6, 2, 1, 1432809384, 0),
(110, 38, 2, 1, 1432809384, 0),
(111, 39, 2, 1, 1432809384, 0),
(112, 66, 2, 1, 1432809384, 0),
(113, 67, 2, 1, 1432809384, 0),
(114, 68, 2, 1, 1432809384, 0),
(115, 7, 2, 1, 1432809384, 0),
(116, 8, 2, 1, 1432809384, 0),
(117, 9, 2, 1, 1432809384, 0),
(118, 10, 2, 1, 1432809384, 0),
(119, 11, 2, 1, 1432809384, 0),
(120, 12, 2, 1, 1432809384, 0),
(121, 13, 2, 1, 1432809384, 0),
(122, 14, 2, 1, 1432809384, 0),
(123, 15, 2, 1, 1432809384, 0),
(124, 16, 2, 1, 1432809384, 0),
(125, 17, 2, 1, 1432809384, 0),
(126, 18, 2, 1, 1432809384, 0),
(127, 19, 2, 1, 1432809384, 0),
(128, 20, 2, 1, 1432809384, 0),
(129, 21, 2, 1, 1432809384, 0),
(130, 22, 2, 1, 1432809384, 0),
(131, 23, 2, 1, 1432809384, 0),
(132, 24, 2, 1, 1432809384, 0),
(133, 25, 2, 1, 1432809384, 0),
(134, 26, 2, 1, 1432809384, 0),
(135, 27, 2, 1, 1432809384, 0),
(136, 28, 2, 1, 1432809384, 0),
(137, 29, 2, 1, 1432809384, 0),
(138, 30, 2, 1, 1432809384, 0),
(139, 31, 2, 1, 1432809384, 0),
(140, 32, 2, 1, 1432809384, 0),
(141, 33, 2, 1, 1432809384, 0),
(142, 34, 2, 1, 1432809384, 0),
(143, 35, 2, 1, 1432809384, 0),
(144, 36, 2, 1, 1432809384, 0),
(145, 37, 2, 1, 1432809384, 0),
(146, 40, 2, 1, 1432809384, 0),
(147, 41, 2, 1, 1432809384, 0),
(148, 42, 2, 1, 1432809384, 0),
(149, 43, 2, 1, 1432809384, 0),
(150, 44, 2, 1, 1432809384, 0),
(151, 45, 2, 1, 1432809384, 0),
(152, 46, 2, 1, 1432809384, 0),
(153, 47, 2, 1, 1432809384, 0),
(154, 48, 2, 1, 1432809384, 0),
(155, 49, 2, 1, 1432809384, 0),
(156, 50, 2, 1, 1432809384, 0),
(157, 51, 2, 1, 1432809384, 0),
(158, 52, 2, 1, 1432809384, 0),
(159, 53, 2, 1, 1432809384, 0),
(160, 54, 2, 1, 1432809384, 0),
(161, 55, 2, 1, 1432809384, 0),
(162, 56, 2, 1, 1432809384, 0),
(163, 57, 2, 1, 1432809384, 0),
(164, 58, 2, 1, 1432809384, 0),
(165, 59, 2, 1, 1432809384, 0),
(166, 60, 2, 1, 1432809384, 0),
(167, 61, 2, 1, 1432809384, 0),
(168, 62, 2, 1, 1432809384, 0),
(169, 63, 2, 1, 1432809384, 0),
(170, 64, 2, 1, 1432809384, 0),
(171, 65, 2, 1, 1432809384, 0),
(172, 69, 2, 1, 1432809384, 0),
(173, 70, 2, 1, 1432809384, 0),
(174, 71, 2, 1, 1432809384, 0),
(175, 72, 2, 1, 1432809384, 0),
(176, 73, 2, 1, 1432809384, 0),
(177, 74, 2, 1, 1432809384, 0),
(178, 75, 2, 1, 1432809384, 0),
(179, 76, 2, 1, 1432809384, 0),
(180, 77, 2, 1, 1432809384, 0),
(181, 78, 2, 1, 1432809384, 0),
(182, 79, 2, 1, 1432809384, 0),
(183, 80, 2, 1, 1432809384, 0),
(184, 81, 2, 1, 1432809384, 0),
(185, 82, 2, 1, 1432809384, 0),
(186, 83, 2, 1, 1432809384, 0),
(187, 84, 2, 1, 1432809384, 0),
(188, 85, 2, 1, 1432809384, 0),
(189, 86, 2, 1, 1432809384, 0),
(190, 87, 2, 1, 1432809384, 0),
(191, 88, 2, 1, 1432809384, 0),
(192, 89, 2, 1, 1432809384, 0),
(193, 90, 2, 1, 1432809384, 0),
(194, 91, 2, 1, 1432809384, 0),
(195, 92, 2, 1, 1432809384, 0),
(196, 93, 2, 1, 1432809384, 0),
(197, 94, 2, 1, 1432809384, 0),
(198, 95, 2, 1, 1432809384, 0),
(199, 96, 2, 1, 1432809384, 0),
(200, 97, 2, 1, 1432809384, 0),
(201, 98, 2, 1, 1432809384, 0),
(202, 99, 2, 1, 1432809384, 0),
(203, 100, 2, 1, 1432809384, 0),
(204, 101, 2, 1, 1432809384, 0),
(205, 102, 2, 1, 1432809384, 0),
(206, 103, 2, 1, 1432809384, 0),
(207, 1, 99, 0, 1432809384, 0),
(208, 2, 99, 0, 1432809384, 0),
(209, 3, 99, 0, 1432809384, 0),
(210, 4, 99, 0, 1432809384, 0),
(211, 5, 99, 0, 1432809384, 0),
(212, 6, 99, 0, 1432809384, 0),
(213, 38, 99, 0, 1432809384, 0),
(214, 39, 99, 0, 1432809384, 0),
(215, 66, 99, 0, 1432809384, 0),
(216, 67, 99, 0, 1432809384, 0),
(217, 68, 99, 0, 1432809384, 0),
(218, 7, 99, 0, 1432809384, 0),
(219, 8, 99, 0, 1432809384, 0),
(220, 9, 99, 0, 1432809384, 0),
(221, 10, 99, 0, 1432809384, 0),
(222, 11, 99, 0, 1432809384, 0),
(223, 12, 99, 0, 1432809384, 0),
(224, 13, 99, 0, 1432809384, 0),
(225, 14, 99, 0, 1432809384, 0),
(226, 15, 99, 0, 1432809384, 0),
(227, 16, 99, 0, 1432809384, 0),
(228, 17, 99, 0, 1432809384, 0),
(229, 18, 99, 0, 1432809384, 0),
(230, 19, 99, 0, 1432809384, 0),
(231, 20, 99, 0, 1432809384, 0),
(232, 21, 99, 0, 1432809384, 0),
(233, 22, 99, 0, 1432809384, 0),
(234, 23, 99, 0, 1432809384, 0),
(235, 24, 99, 0, 1432809384, 0),
(236, 25, 99, 0, 1432809384, 0),
(237, 26, 99, 0, 1432809384, 0),
(238, 27, 99, 0, 1432809384, 0),
(239, 28, 99, 0, 1432809384, 0),
(240, 29, 99, 0, 1432809384, 0),
(241, 30, 99, 0, 1432809384, 0),
(242, 31, 99, 0, 1432809384, 0),
(243, 32, 99, 0, 1432809384, 0),
(244, 33, 99, 0, 1432809384, 0),
(245, 34, 99, 0, 1432809384, 0),
(246, 35, 99, 0, 1432809384, 0),
(247, 36, 99, 0, 1432809384, 0),
(248, 37, 99, 0, 1432809384, 0),
(249, 40, 99, 0, 1432809384, 0),
(250, 41, 99, 0, 1432809384, 0),
(251, 42, 99, 0, 1432809384, 0),
(252, 43, 99, 0, 1432809384, 0),
(253, 44, 99, 0, 1432809384, 0),
(254, 45, 99, 0, 1432809384, 0),
(255, 46, 99, 0, 1432809384, 0),
(256, 47, 99, 0, 1432809384, 0),
(257, 48, 99, 0, 1432809384, 0),
(258, 49, 99, 0, 1432809384, 0),
(259, 50, 99, 0, 1432809384, 0),
(260, 51, 99, 0, 1432809384, 0),
(261, 52, 99, 0, 1432809384, 0),
(262, 53, 99, 0, 1432809384, 0),
(263, 54, 99, 0, 1432809384, 0),
(264, 55, 99, 0, 1432809384, 0),
(265, 56, 99, 0, 1432809384, 0),
(266, 57, 99, 0, 1432809384, 0),
(267, 58, 99, 0, 1432809384, 0),
(268, 59, 99, 0, 1432809384, 0),
(269, 60, 99, 0, 1432809384, 0),
(270, 61, 99, 0, 1432809384, 0),
(271, 62, 99, 0, 1432809384, 0),
(272, 63, 99, 0, 1432809384, 0),
(273, 64, 99, 0, 1432809384, 0),
(274, 65, 99, 0, 1432809384, 0),
(275, 69, 99, 0, 1432809384, 0),
(276, 70, 99, 0, 1432809384, 0),
(277, 71, 99, 0, 1432809384, 0),
(278, 72, 99, 0, 1432809384, 0),
(279, 73, 99, 0, 1432809384, 0),
(280, 74, 99, 0, 1432809384, 0),
(281, 75, 99, 0, 1432809384, 0),
(282, 76, 99, 0, 1432809384, 0),
(283, 77, 99, 0, 1432809384, 0),
(284, 78, 99, 0, 1432809384, 0),
(285, 79, 99, 0, 1432809384, 0),
(286, 80, 99, 0, 1432809384, 0),
(287, 81, 99, 0, 1432809384, 0),
(288, 82, 99, 0, 1432809384, 0),
(289, 83, 99, 0, 1432809384, 0),
(290, 84, 99, 0, 1432809384, 0),
(291, 85, 99, 0, 1432809384, 0),
(292, 86, 99, 0, 1432809384, 0),
(293, 87, 99, 0, 1432809384, 0),
(294, 88, 99, 0, 1432809384, 0),
(295, 89, 99, 0, 1432809384, 0),
(296, 90, 99, 0, 1432809384, 0),
(297, 91, 99, 0, 1432809384, 0),
(298, 92, 99, 0, 1432809384, 0),
(299, 93, 99, 0, 1432809384, 0),
(300, 94, 99, 0, 1432809384, 0),
(301, 95, 99, 0, 1432809384, 0),
(302, 96, 99, 0, 1432809384, 0),
(303, 97, 99, 0, 1432809384, 0),
(304, 98, 99, 0, 1432809384, 0),
(305, 99, 99, 0, 1432809384, 0),
(306, 100, 99, 0, 1432809384, 0),
(307, 101, 99, 0, 1432809384, 0),
(308, 102, 99, 0, 1432809384, 0),
(309, 103, 99, 0, 1432809384, 0),
(310, 1, 112, 0, 1432809384, 0),
(311, 2, 112, 0, 1432809384, 0),
(312, 3, 112, 0, 1432809384, 0),
(313, 4, 112, 0, 1432809384, 0),
(314, 5, 112, 0, 1432809384, 0),
(315, 6, 112, 0, 1432809384, 0),
(316, 38, 112, 0, 1432809384, 0),
(317, 39, 112, 0, 1432809384, 0),
(318, 66, 112, 0, 1432809384, 0),
(319, 67, 112, 0, 1432809384, 0),
(320, 68, 112, 0, 1432809384, 0),
(321, 7, 112, 0, 1432809384, 0),
(322, 8, 112, 0, 1432809384, 0),
(323, 9, 112, 0, 1432809384, 0),
(324, 10, 112, 0, 1432809384, 0),
(325, 11, 112, 0, 1432809384, 0),
(326, 12, 112, 0, 1432809384, 0),
(327, 13, 112, 0, 1432809384, 0),
(328, 14, 112, 0, 1432809384, 0),
(329, 15, 112, 0, 1432809384, 0),
(330, 16, 112, 0, 1432809384, 0),
(331, 17, 112, 0, 1432809384, 0),
(332, 18, 112, 0, 1432809384, 0),
(333, 19, 112, 0, 1432809384, 0),
(334, 20, 112, 0, 1432809384, 0),
(335, 21, 112, 0, 1432809384, 0),
(336, 22, 112, 0, 1432809384, 0),
(337, 23, 112, 0, 1432809384, 0),
(338, 24, 112, 0, 1432809384, 0),
(339, 25, 112, 0, 1432809384, 0),
(340, 26, 112, 0, 1432809384, 0),
(341, 27, 112, 0, 1432809384, 0),
(342, 28, 112, 0, 1432809384, 0),
(343, 29, 112, 0, 1432809384, 0),
(344, 30, 112, 0, 1432809384, 0),
(345, 31, 112, 0, 1432809384, 0),
(346, 32, 112, 0, 1432809384, 0),
(347, 33, 112, 0, 1432809384, 0),
(348, 34, 112, 0, 1432809384, 0),
(349, 35, 112, 0, 1432809384, 0),
(350, 36, 112, 0, 1432809384, 0),
(351, 37, 112, 0, 1432809384, 0),
(352, 40, 112, 0, 1432809384, 0),
(353, 41, 112, 0, 1432809384, 0),
(354, 42, 112, 0, 1432809384, 0),
(355, 43, 112, 0, 1432809384, 0),
(356, 44, 112, 0, 1432809384, 0),
(357, 45, 112, 0, 1432809384, 0),
(358, 46, 112, 0, 1432809384, 0),
(359, 47, 112, 0, 1432809384, 0),
(360, 48, 112, 0, 1432809384, 0),
(361, 49, 112, 0, 1432809384, 0),
(362, 50, 112, 0, 1432809384, 0),
(363, 51, 112, 0, 1432809384, 0),
(364, 52, 112, 0, 1432809384, 0),
(365, 53, 112, 0, 1432809384, 0),
(366, 54, 112, 0, 1432809384, 0),
(367, 55, 112, 0, 1432809384, 0),
(368, 56, 112, 0, 1432809384, 0),
(369, 57, 112, 0, 1432809384, 0),
(370, 58, 112, 0, 1432809384, 0),
(371, 59, 112, 0, 1432809384, 0),
(372, 60, 112, 0, 1432809384, 0),
(373, 61, 112, 0, 1432809384, 0),
(374, 62, 112, 0, 1432809384, 0),
(375, 63, 112, 0, 1432809384, 0),
(376, 64, 112, 0, 1432809384, 0),
(377, 65, 112, 0, 1432809384, 0),
(378, 69, 112, 0, 1432809384, 0),
(379, 70, 112, 0, 1432809384, 0),
(380, 71, 112, 0, 1432809384, 0),
(381, 72, 112, 0, 1432809384, 0),
(382, 73, 112, 0, 1432809384, 0),
(383, 74, 112, 0, 1432809384, 0),
(384, 75, 112, 0, 1432809384, 0),
(385, 76, 112, 0, 1432809384, 0),
(386, 77, 112, 0, 1432809384, 0),
(387, 78, 112, 0, 1432809384, 0),
(388, 79, 112, 0, 1432809384, 0),
(389, 80, 112, 0, 1432809384, 0),
(390, 81, 112, 0, 1432809384, 0),
(391, 82, 112, 0, 1432809384, 0),
(392, 83, 112, 0, 1432809384, 0),
(393, 84, 112, 0, 1432809384, 0),
(394, 85, 112, 0, 1432809384, 0),
(395, 86, 112, 0, 1432809384, 0),
(396, 87, 112, 0, 1432809384, 0),
(397, 88, 112, 0, 1432809384, 0),
(398, 89, 112, 0, 1432809384, 0),
(399, 90, 112, 0, 1432809384, 0),
(400, 91, 112, 0, 1432809384, 0),
(401, 92, 112, 0, 1432809384, 0),
(402, 93, 112, 0, 1432809384, 0),
(403, 94, 112, 0, 1432809384, 0),
(404, 95, 112, 0, 1432809384, 0),
(405, 96, 112, 0, 1432809384, 0),
(406, 97, 112, 0, 1432809384, 0),
(407, 98, 112, 0, 1432809384, 0),
(408, 99, 112, 0, 1432809384, 0),
(409, 100, 112, 0, 1432809384, 0),
(410, 101, 112, 0, 1432809384, 0),
(411, 102, 112, 0, 1432809384, 0),
(412, 103, 112, 0, 1432809384, 0),
(413, 1, 113, 0, 1432809384, 0),
(414, 2, 113, 0, 1432809384, 0),
(415, 3, 113, 0, 1432809384, 0),
(416, 4, 113, 0, 1432809384, 0),
(417, 5, 113, 0, 1432809384, 0),
(418, 6, 113, 0, 1432809384, 0),
(419, 38, 113, 0, 1432809384, 0),
(420, 39, 113, 0, 1432809384, 0),
(421, 66, 113, 0, 1432809384, 0),
(422, 67, 113, 0, 1432809384, 0),
(423, 68, 113, 0, 1432809384, 0),
(424, 7, 113, 0, 1432809384, 0),
(425, 8, 113, 0, 1432809384, 0),
(426, 9, 113, 0, 1432809384, 0),
(427, 10, 113, 0, 1432809384, 0),
(428, 11, 113, 0, 1432809384, 0),
(429, 12, 113, 0, 1432809384, 0),
(430, 13, 113, 0, 1432809384, 0),
(431, 14, 113, 0, 1432809384, 0),
(432, 15, 113, 0, 1432809384, 0),
(433, 16, 113, 0, 1432809384, 0),
(434, 17, 113, 0, 1432809384, 0),
(435, 18, 113, 0, 1432809384, 0),
(436, 19, 113, 0, 1432809384, 0),
(437, 20, 113, 0, 1432809384, 0),
(438, 21, 113, 0, 1432809384, 0),
(439, 22, 113, 0, 1432809384, 0),
(440, 23, 113, 0, 1432809384, 0),
(441, 24, 113, 0, 1432809384, 0),
(442, 25, 113, 0, 1432809384, 0),
(443, 26, 113, 0, 1432809384, 0),
(444, 27, 113, 0, 1432809384, 0),
(445, 28, 113, 0, 1432809384, 0),
(446, 29, 113, 0, 1432809384, 0),
(447, 30, 113, 0, 1432809384, 0),
(448, 31, 113, 0, 1432809384, 0),
(449, 32, 113, 0, 1432809384, 0),
(450, 33, 113, 0, 1432809384, 0),
(451, 34, 113, 0, 1432809384, 0),
(452, 35, 113, 0, 1432809384, 0),
(453, 36, 113, 0, 1432809384, 0),
(454, 37, 113, 0, 1432809384, 0),
(455, 40, 113, 0, 1432809384, 0),
(456, 41, 113, 0, 1432809384, 0),
(457, 42, 113, 0, 1432809384, 0),
(458, 43, 113, 0, 1432809384, 0),
(459, 44, 113, 0, 1432809384, 0),
(460, 45, 113, 0, 1432809384, 0),
(461, 46, 113, 0, 1432809384, 0),
(462, 47, 113, 0, 1432809384, 0),
(463, 48, 113, 0, 1432809384, 0),
(464, 49, 113, 0, 1432809384, 0),
(465, 50, 113, 0, 1432809384, 0),
(466, 51, 113, 0, 1432809384, 0),
(467, 52, 113, 0, 1432809384, 0),
(468, 53, 113, 0, 1432809384, 0),
(469, 54, 113, 0, 1432809384, 0),
(470, 55, 113, 0, 1432809384, 0),
(471, 56, 113, 0, 1432809384, 0),
(472, 57, 113, 0, 1432809384, 0),
(473, 58, 113, 0, 1432809384, 0),
(474, 59, 113, 0, 1432809384, 0),
(475, 60, 113, 0, 1432809384, 0),
(476, 61, 113, 0, 1432809384, 0),
(477, 62, 113, 0, 1432809384, 0),
(478, 63, 113, 0, 1432809384, 0),
(479, 64, 113, 0, 1432809384, 0),
(480, 65, 113, 0, 1432809384, 0),
(481, 69, 113, 0, 1432809384, 0),
(482, 70, 113, 0, 1432809384, 0),
(483, 71, 113, 0, 1432809384, 0),
(484, 72, 113, 0, 1432809384, 0),
(485, 73, 113, 0, 1432809384, 0),
(486, 74, 113, 0, 1432809384, 0),
(487, 75, 113, 0, 1432809384, 0),
(488, 76, 113, 0, 1432809384, 0),
(489, 77, 113, 0, 1432809384, 0),
(490, 78, 113, 0, 1432809384, 0),
(491, 79, 113, 0, 1432809384, 0),
(492, 80, 113, 0, 1432809384, 0),
(493, 81, 113, 0, 1432809384, 0),
(494, 82, 113, 0, 1432809384, 0),
(495, 83, 113, 0, 1432809384, 0),
(496, 84, 113, 0, 1432809384, 0),
(497, 85, 113, 0, 1432809384, 0),
(498, 86, 113, 0, 1432809384, 0),
(499, 87, 113, 0, 1432809384, 0),
(500, 88, 113, 0, 1432809384, 0),
(501, 89, 113, 0, 1432809384, 0),
(502, 90, 113, 0, 1432809384, 0),
(503, 91, 113, 0, 1432809384, 0),
(504, 92, 113, 0, 1432809384, 0),
(505, 93, 113, 0, 1432809384, 0),
(506, 94, 113, 0, 1432809384, 0),
(507, 95, 113, 0, 1432809384, 0),
(508, 96, 113, 0, 1432809384, 0),
(509, 97, 113, 0, 1432809384, 0),
(510, 98, 113, 0, 1432809384, 0),
(511, 99, 113, 0, 1432809384, 0),
(512, 100, 113, 0, 1432809384, 0),
(513, 101, 113, 0, 1432809384, 0),
(514, 102, 113, 0, 1432809384, 0),
(515, 103, 113, 0, 1432809384, 0),
(516, 1, 114, 0, 1432809384, 0),
(517, 2, 114, 0, 1432809384, 0),
(518, 3, 114, 0, 1432809384, 0),
(519, 4, 114, 0, 1432809384, 0),
(520, 5, 114, 0, 1432809384, 0),
(521, 6, 114, 0, 1432809384, 0),
(522, 38, 114, 0, 1432809384, 0),
(523, 39, 114, 0, 1432809384, 0),
(524, 66, 114, 0, 1432809384, 0),
(525, 67, 114, 0, 1432809384, 0),
(526, 68, 114, 0, 1432809384, 0),
(527, 7, 114, 0, 1432809384, 0),
(528, 8, 114, 0, 1432809384, 0),
(529, 9, 114, 0, 1432809384, 0),
(530, 10, 114, 0, 1432809384, 0),
(531, 11, 114, 0, 1432809384, 0),
(532, 12, 114, 0, 1432809384, 0),
(533, 13, 114, 0, 1432809384, 0),
(534, 14, 114, 0, 1432809384, 0),
(535, 15, 114, 0, 1432809384, 0),
(536, 16, 114, 0, 1432809384, 0),
(537, 17, 114, 0, 1432809384, 0),
(538, 18, 114, 0, 1432809384, 0),
(539, 19, 114, 0, 1432809384, 0),
(540, 20, 114, 0, 1432809384, 0),
(541, 21, 114, 0, 1432809384, 0),
(542, 22, 114, 0, 1432809384, 0),
(543, 23, 114, 0, 1432809384, 0),
(544, 24, 114, 0, 1432809384, 0),
(545, 25, 114, 0, 1432809384, 0),
(546, 26, 114, 0, 1432809384, 0),
(547, 27, 114, 0, 1432809384, 0),
(548, 28, 114, 0, 1432809384, 0),
(549, 29, 114, 0, 1432809384, 0),
(550, 30, 114, 0, 1432809384, 0),
(551, 31, 114, 0, 1432809384, 0),
(552, 32, 114, 0, 1432809384, 0),
(553, 33, 114, 0, 1432809384, 0),
(554, 34, 114, 0, 1432809384, 0),
(555, 35, 114, 0, 1432809384, 0),
(556, 36, 114, 0, 1432809384, 0),
(557, 37, 114, 0, 1432809384, 0),
(558, 40, 114, 0, 1432809384, 0),
(559, 41, 114, 0, 1432809384, 0),
(560, 42, 114, 0, 1432809384, 0),
(561, 43, 114, 0, 1432809384, 0),
(562, 44, 114, 0, 1432809384, 0),
(563, 45, 114, 0, 1432809384, 0),
(564, 46, 114, 0, 1432809384, 0),
(565, 47, 114, 0, 1432809384, 0),
(566, 48, 114, 0, 1432809384, 0),
(567, 49, 114, 0, 1432809384, 0),
(568, 50, 114, 0, 1432809384, 0),
(569, 51, 114, 0, 1432809384, 0),
(570, 52, 114, 0, 1432809384, 0),
(571, 53, 114, 0, 1432809384, 0),
(572, 54, 114, 0, 1432809384, 0),
(573, 55, 114, 0, 1432809384, 0),
(574, 56, 114, 0, 1432809384, 0),
(575, 57, 114, 0, 1432809384, 0),
(576, 58, 114, 0, 1432809384, 0),
(577, 59, 114, 0, 1432809384, 0),
(578, 60, 114, 0, 1432809384, 0),
(579, 61, 114, 0, 1432809384, 0),
(580, 62, 114, 0, 1432809384, 0),
(581, 63, 114, 0, 1432809384, 0),
(582, 64, 114, 0, 1432809384, 0),
(583, 65, 114, 0, 1432809384, 0),
(584, 69, 114, 0, 1432809384, 0),
(585, 70, 114, 0, 1432809384, 0),
(586, 71, 114, 0, 1432809384, 0),
(587, 72, 114, 0, 1432809384, 0),
(588, 73, 114, 0, 1432809384, 0),
(589, 74, 114, 0, 1432809384, 0),
(590, 75, 114, 0, 1432809384, 0),
(591, 76, 114, 0, 1432809384, 0),
(592, 77, 114, 0, 1432809384, 0),
(593, 78, 114, 0, 1432809384, 0),
(594, 79, 114, 0, 1432809384, 0),
(595, 80, 114, 0, 1432809384, 0),
(596, 81, 114, 0, 1432809384, 0),
(597, 82, 114, 0, 1432809384, 0),
(598, 83, 114, 0, 1432809384, 0),
(599, 84, 114, 0, 1432809384, 0),
(600, 85, 114, 0, 1432809384, 0),
(601, 86, 114, 0, 1432809384, 0),
(602, 87, 114, 0, 1432809384, 0),
(603, 88, 114, 0, 1432809384, 0),
(604, 89, 114, 0, 1432809384, 0),
(605, 90, 114, 0, 1432809384, 0),
(606, 91, 114, 0, 1432809384, 0),
(607, 92, 114, 0, 1432809384, 0),
(608, 93, 114, 0, 1432809384, 0),
(609, 94, 114, 0, 1432809384, 0),
(610, 95, 114, 0, 1432809384, 0),
(611, 96, 114, 0, 1432809384, 0),
(612, 97, 114, 0, 1432809384, 0),
(613, 98, 114, 0, 1432809384, 0),
(614, 99, 114, 0, 1432809384, 0),
(615, 100, 114, 0, 1432809384, 0),
(616, 101, 114, 0, 1432809384, 0),
(617, 102, 114, 0, 1432809384, 0),
(618, 103, 114, 0, 1432809384, 0),
(619, 1, 116, 0, 1432809384, 0),
(620, 2, 116, 0, 1432809384, 0),
(621, 3, 116, 0, 1432809384, 0),
(622, 4, 116, 0, 1432809384, 0),
(623, 5, 116, 0, 1432809384, 0),
(624, 6, 116, 0, 1432809384, 0),
(625, 38, 116, 0, 1432809384, 0),
(626, 39, 116, 0, 1432809384, 0),
(627, 66, 116, 0, 1432809384, 0),
(628, 67, 116, 0, 1432809384, 0),
(629, 68, 116, 0, 1432809384, 0),
(630, 7, 116, 0, 1432809384, 0),
(631, 8, 116, 0, 1432809384, 0),
(632, 9, 116, 0, 1432809384, 0),
(633, 10, 116, 0, 1432809384, 0),
(634, 11, 116, 0, 1432809384, 0),
(635, 12, 116, 0, 1432809384, 0),
(636, 13, 116, 0, 1432809384, 0),
(637, 14, 116, 0, 1432809384, 0),
(638, 15, 116, 0, 1432809384, 0),
(639, 16, 116, 0, 1432809384, 0),
(640, 17, 116, 0, 1432809384, 0),
(641, 18, 116, 0, 1432809384, 0),
(642, 19, 116, 0, 1432809384, 0),
(643, 20, 116, 0, 1432809384, 0),
(644, 21, 116, 0, 1432809384, 0),
(645, 22, 116, 0, 1432809384, 0),
(646, 23, 116, 0, 1432809384, 0),
(647, 24, 116, 0, 1432809384, 0),
(648, 25, 116, 0, 1432809384, 0),
(649, 26, 116, 0, 1432809384, 0),
(650, 27, 116, 0, 1432809384, 0),
(651, 28, 116, 0, 1432809384, 0),
(652, 29, 116, 0, 1432809384, 0),
(653, 30, 116, 0, 1432809384, 0),
(654, 31, 116, 0, 1432809384, 0),
(655, 32, 116, 0, 1432809384, 0),
(656, 33, 116, 0, 1432809384, 0),
(657, 34, 116, 0, 1432809384, 0),
(658, 35, 116, 0, 1432809384, 0),
(659, 36, 116, 0, 1432809384, 0),
(660, 37, 116, 0, 1432809384, 0),
(661, 40, 116, 0, 1432809384, 0),
(662, 41, 116, 0, 1432809384, 0),
(663, 42, 116, 0, 1432809384, 0),
(664, 43, 116, 0, 1432809384, 0),
(665, 44, 116, 0, 1432809384, 0),
(666, 45, 116, 0, 1432809384, 0),
(667, 46, 116, 0, 1432809384, 0),
(668, 47, 116, 0, 1432809384, 0),
(669, 48, 116, 0, 1432809384, 0),
(670, 49, 116, 0, 1432809384, 0),
(671, 50, 116, 0, 1432809384, 0),
(672, 51, 116, 0, 1432809384, 0),
(673, 52, 116, 0, 1432809384, 0),
(674, 53, 116, 0, 1432809384, 0),
(675, 54, 116, 0, 1432809384, 0),
(676, 55, 116, 0, 1432809384, 0),
(677, 56, 116, 0, 1432809384, 0),
(678, 57, 116, 0, 1432809384, 0),
(679, 58, 116, 0, 1432809384, 0),
(680, 59, 116, 0, 1432809384, 0),
(681, 60, 116, 0, 1432809384, 0),
(682, 61, 116, 0, 1432809384, 0),
(683, 62, 116, 0, 1432809384, 0),
(684, 63, 116, 0, 1432809384, 0),
(685, 64, 116, 0, 1432809384, 0),
(686, 65, 116, 0, 1432809384, 0),
(687, 69, 116, 0, 1432809384, 0),
(688, 70, 116, 0, 1432809384, 0),
(689, 71, 116, 0, 1432809384, 0),
(690, 72, 116, 0, 1432809384, 0),
(691, 73, 116, 0, 1432809384, 0),
(692, 74, 116, 0, 1432809384, 0),
(693, 75, 116, 0, 1432809384, 0),
(694, 76, 116, 0, 1432809384, 0),
(695, 77, 116, 0, 1432809384, 0),
(696, 78, 116, 0, 1432809384, 0),
(697, 79, 116, 0, 1432809384, 0),
(698, 80, 116, 0, 1432809384, 0),
(699, 81, 116, 0, 1432809384, 0),
(700, 82, 116, 0, 1432809384, 0),
(701, 83, 116, 0, 1432809384, 0),
(702, 84, 116, 0, 1432809384, 0),
(703, 85, 116, 0, 1432809384, 0),
(704, 86, 116, 0, 1432809384, 0),
(705, 87, 116, 0, 1432809384, 0),
(706, 88, 116, 0, 1432809384, 0),
(707, 89, 116, 0, 1432809384, 0),
(708, 90, 116, 0, 1432809384, 0),
(709, 91, 116, 0, 1432809384, 0),
(710, 92, 116, 0, 1432809384, 0),
(711, 93, 116, 0, 1432809384, 0),
(712, 94, 116, 0, 1432809384, 0),
(713, 95, 116, 0, 1432809384, 0),
(714, 96, 116, 0, 1432809384, 0),
(715, 97, 116, 0, 1432809384, 0),
(716, 98, 116, 0, 1432809384, 0),
(717, 99, 116, 0, 1432809384, 0),
(718, 100, 116, 0, 1432809384, 0),
(719, 101, 116, 0, 1432809384, 0),
(720, 102, 116, 0, 1432809384, 0),
(721, 103, 116, 0, 1432809384, 0),
(722, 1, 100, 0, 1432809384, 0),
(723, 2, 100, 0, 1432809384, 0),
(724, 3, 100, 0, 1432809384, 0),
(725, 4, 100, 0, 1432809384, 0),
(726, 5, 100, 0, 1432809384, 0),
(727, 6, 100, 0, 1432809384, 0),
(728, 38, 100, 0, 1432809384, 0),
(729, 39, 100, 0, 1432809384, 0),
(730, 66, 100, 0, 1432809384, 0),
(731, 67, 100, 0, 1432809384, 0),
(732, 68, 100, 0, 1432809384, 0),
(733, 7, 100, 0, 1432809384, 0),
(734, 8, 100, 0, 1432809384, 0),
(735, 9, 100, 0, 1432809384, 0),
(736, 10, 100, 0, 1432809384, 0),
(737, 11, 100, 0, 1432809384, 0),
(738, 12, 100, 0, 1432809384, 0),
(739, 13, 100, 0, 1432809384, 0),
(740, 14, 100, 0, 1432809384, 0),
(741, 15, 100, 0, 1432809384, 0),
(742, 16, 100, 0, 1432809384, 0),
(743, 17, 100, 0, 1432809384, 0),
(744, 18, 100, 0, 1432809384, 0),
(745, 19, 100, 0, 1432809384, 0),
(746, 20, 100, 0, 1432809384, 0),
(747, 21, 100, 0, 1432809384, 0),
(748, 22, 100, 0, 1432809384, 0),
(749, 23, 100, 0, 1432809384, 0),
(750, 24, 100, 0, 1432809384, 0),
(751, 25, 100, 0, 1432809384, 0),
(752, 26, 100, 0, 1432809384, 0),
(753, 27, 100, 0, 1432809384, 0),
(754, 28, 100, 0, 1432809384, 0),
(755, 29, 100, 0, 1432809384, 0),
(756, 30, 100, 0, 1432809384, 0),
(757, 31, 100, 0, 1432809384, 0),
(758, 32, 100, 0, 1432809384, 0),
(759, 33, 100, 0, 1432809384, 0),
(760, 34, 100, 0, 1432809384, 0),
(761, 35, 100, 0, 1432809384, 0),
(762, 36, 100, 0, 1432809384, 0),
(763, 37, 100, 0, 1432809384, 0),
(764, 40, 100, 0, 1432809384, 0),
(765, 41, 100, 0, 1432809384, 0),
(766, 42, 100, 0, 1432809384, 0),
(767, 43, 100, 0, 1432809384, 0),
(768, 44, 100, 0, 1432809384, 0),
(769, 45, 100, 0, 1432809384, 0),
(770, 46, 100, 0, 1432809384, 0),
(771, 47, 100, 0, 1432809384, 0),
(772, 48, 100, 0, 1432809384, 0),
(773, 49, 100, 0, 1432809384, 0),
(774, 50, 100, 0, 1432809384, 0),
(775, 51, 100, 0, 1432809384, 0),
(776, 52, 100, 0, 1432809384, 0),
(777, 53, 100, 0, 1432809384, 0),
(778, 54, 100, 0, 1432809384, 0),
(779, 55, 100, 0, 1432809384, 0),
(780, 56, 100, 0, 1432809384, 0),
(781, 57, 100, 0, 1432809384, 0),
(782, 58, 100, 0, 1432809384, 0),
(783, 59, 100, 0, 1432809384, 0),
(784, 60, 100, 0, 1432809384, 0),
(785, 61, 100, 0, 1432809384, 0),
(786, 62, 100, 0, 1432809384, 0),
(787, 63, 100, 0, 1432809384, 0),
(788, 64, 100, 0, 1432809384, 0),
(789, 65, 100, 0, 1432809384, 0),
(790, 69, 100, 0, 1432809384, 0),
(791, 70, 100, 0, 1432809384, 0),
(792, 71, 100, 0, 1432809384, 0),
(793, 72, 100, 0, 1432809384, 0),
(794, 73, 100, 0, 1432809384, 0),
(795, 74, 100, 0, 1432809384, 0),
(796, 75, 100, 0, 1432809384, 0),
(797, 76, 100, 0, 1432809384, 0),
(798, 77, 100, 0, 1432809384, 0),
(799, 78, 100, 0, 1432809384, 0),
(800, 79, 100, 0, 1432809384, 0),
(801, 80, 100, 0, 1432809384, 0),
(802, 81, 100, 0, 1432809384, 0),
(803, 82, 100, 0, 1432809384, 0),
(804, 83, 100, 0, 1432809384, 0),
(805, 84, 100, 0, 1432809384, 0),
(806, 85, 100, 0, 1432809384, 0),
(807, 86, 100, 0, 1432809384, 0),
(808, 87, 100, 0, 1432809384, 0),
(809, 88, 100, 0, 1432809384, 0),
(810, 89, 100, 0, 1432809384, 0),
(811, 90, 100, 0, 1432809384, 0),
(812, 91, 100, 0, 1432809384, 0),
(813, 92, 100, 0, 1432809384, 0),
(814, 93, 100, 0, 1432809384, 0),
(815, 94, 100, 0, 1432809384, 0),
(816, 95, 100, 0, 1432809384, 0),
(817, 96, 100, 0, 1432809384, 0),
(818, 97, 100, 0, 1432809384, 0),
(819, 98, 100, 0, 1432809384, 0),
(820, 99, 100, 0, 1432809384, 0),
(821, 100, 100, 0, 1432809384, 0),
(822, 101, 100, 0, 1432809384, 0),
(823, 102, 100, 0, 1432809384, 0),
(824, 103, 100, 0, 1432809384, 0),
(825, 104, 1, 1, 1433129335, 0),
(826, 105, 1, 1, 1433129335, 0),
(827, 106, 1, 1, 1433129335, 0),
(828, 107, 1, 1, 1433129335, 0),
(829, 108, 1, 1, 1433129335, 0),
(830, 109, 1, 1, 1433129335, 0),
(831, 110, 1, 1, 1433129335, 0),
(832, 111, 1, 1, 1433129335, 0),
(833, 112, 1, 1, 1433129335, 0),
(834, 113, 1, 1, 1433129335, 0),
(835, 114, 1, 1, 1433129335, 0),
(836, 115, 1, 1, 1433129335, 0),
(837, 116, 1, 1, 1433129335, 0),
(838, 117, 1, 1, 1433129335, 0),
(839, 118, 1, 1, 1433129335, 0),
(840, 119, 1, 1, 1433129335, 0),
(841, 120, 1, 1, 1433129335, 0),
(842, 121, 1, 1, 1433129335, 0),
(843, 104, 2, 1, 1433129335, 0),
(844, 105, 2, 1, 1433129335, 0),
(845, 106, 2, 1, 1433129335, 0),
(846, 107, 2, 1, 1433129335, 0),
(847, 108, 2, 1, 1433129335, 0),
(848, 109, 2, 1, 1433129335, 0),
(849, 110, 2, 1, 1433129335, 0),
(850, 111, 2, 1, 1433129335, 0),
(851, 112, 2, 1, 1433129335, 0),
(852, 113, 2, 1, 1433129335, 0),
(853, 114, 2, 1, 1433129335, 0),
(854, 115, 2, 1, 1433129335, 0),
(855, 116, 2, 1, 1433129335, 0),
(856, 117, 2, 1, 1433129335, 0),
(857, 118, 2, 1, 1433129335, 0),
(858, 119, 2, 1, 1433129335, 0),
(859, 120, 2, 1, 1433129335, 0),
(860, 121, 2, 1, 1433129335, 0),
(861, 104, 99, 0, 1433129335, 0),
(862, 105, 99, 0, 1433129335, 0),
(863, 106, 99, 0, 1433129335, 0),
(864, 107, 99, 0, 1433129335, 0),
(865, 108, 99, 0, 1433129335, 0),
(866, 109, 99, 0, 1433129335, 0),
(867, 110, 99, 0, 1433129335, 0),
(868, 111, 99, 0, 1433129335, 0),
(869, 112, 99, 0, 1433129335, 0),
(870, 113, 99, 0, 1433129335, 0),
(871, 114, 99, 0, 1433129335, 0),
(872, 115, 99, 0, 1433129335, 0),
(873, 116, 99, 0, 1433129335, 0),
(874, 117, 99, 0, 1433129335, 0),
(875, 118, 99, 0, 1433129335, 0),
(876, 119, 99, 0, 1433129335, 0),
(877, 120, 99, 0, 1433129335, 0),
(878, 121, 99, 0, 1433129335, 0),
(879, 104, 112, 0, 1433129335, 0),
(880, 105, 112, 0, 1433129335, 0),
(881, 106, 112, 0, 1433129335, 0),
(882, 107, 112, 0, 1433129335, 0),
(883, 108, 112, 0, 1433129335, 0),
(884, 109, 112, 0, 1433129335, 0),
(885, 110, 112, 0, 1433129335, 0),
(886, 111, 112, 0, 1433129335, 0),
(887, 112, 112, 0, 1433129335, 0),
(888, 113, 112, 0, 1433129335, 0),
(889, 114, 112, 0, 1433129335, 0),
(890, 115, 112, 0, 1433129335, 0),
(891, 116, 112, 0, 1433129335, 0),
(892, 117, 112, 0, 1433129335, 0),
(893, 118, 112, 0, 1433129335, 0),
(894, 119, 112, 0, 1433129335, 0),
(895, 120, 112, 0, 1433129335, 0),
(896, 121, 112, 0, 1433129335, 0),
(897, 104, 113, 0, 1433129335, 0),
(898, 105, 113, 0, 1433129335, 0),
(899, 106, 113, 0, 1433129335, 0),
(900, 107, 113, 0, 1433129335, 0),
(901, 108, 113, 0, 1433129335, 0),
(902, 109, 113, 0, 1433129335, 0),
(903, 110, 113, 0, 1433129335, 0),
(904, 111, 113, 0, 1433129335, 0),
(905, 112, 113, 0, 1433129335, 0),
(906, 113, 113, 0, 1433129335, 0),
(907, 114, 113, 0, 1433129335, 0),
(908, 115, 113, 0, 1433129335, 0),
(909, 116, 113, 0, 1433129335, 0),
(910, 117, 113, 0, 1433129335, 0),
(911, 118, 113, 0, 1433129335, 0),
(912, 119, 113, 0, 1433129335, 0),
(913, 120, 113, 0, 1433129335, 0),
(914, 121, 113, 0, 1433129335, 0),
(915, 104, 114, 0, 1433129335, 0),
(916, 105, 114, 0, 1433129335, 0),
(917, 106, 114, 0, 1433129335, 0),
(918, 107, 114, 0, 1433129335, 0),
(919, 108, 114, 0, 1433129335, 0),
(920, 109, 114, 0, 1433129335, 0),
(921, 110, 114, 0, 1433129335, 0),
(922, 111, 114, 0, 1433129335, 0),
(923, 112, 114, 0, 1433129335, 0),
(924, 113, 114, 0, 1433129335, 0),
(925, 114, 114, 0, 1433129335, 0),
(926, 115, 114, 0, 1433129335, 0),
(927, 116, 114, 0, 1433129335, 0),
(928, 117, 114, 0, 1433129335, 0),
(929, 118, 114, 0, 1433129335, 0),
(930, 119, 114, 0, 1433129335, 0),
(931, 120, 114, 0, 1433129335, 0),
(932, 121, 114, 0, 1433129335, 0),
(933, 104, 116, 0, 1433129335, 0),
(934, 105, 116, 0, 1433129335, 0),
(935, 106, 116, 0, 1433129335, 0),
(936, 107, 116, 0, 1433129335, 0),
(937, 108, 116, 0, 1433129335, 0),
(938, 109, 116, 0, 1433129335, 0),
(939, 110, 116, 0, 1433129335, 0),
(940, 111, 116, 0, 1433129335, 0),
(941, 112, 116, 0, 1433129335, 0),
(942, 113, 116, 0, 1433129335, 0),
(943, 114, 116, 0, 1433129335, 0),
(944, 115, 116, 0, 1433129335, 0),
(945, 116, 116, 0, 1433129335, 0),
(946, 117, 116, 0, 1433129335, 0),
(947, 118, 116, 0, 1433129335, 0),
(948, 119, 116, 0, 1433129335, 0),
(949, 120, 116, 0, 1433129335, 0),
(950, 121, 116, 0, 1433129335, 0),
(951, 104, 100, 0, 1433129335, 0),
(952, 105, 100, 0, 1433129335, 0),
(953, 106, 100, 0, 1433129335, 0),
(954, 107, 100, 0, 1433129335, 0),
(955, 108, 100, 0, 1433129335, 0),
(956, 109, 100, 0, 1433129335, 0),
(957, 110, 100, 0, 1433129335, 0),
(958, 111, 100, 0, 1433129335, 0),
(959, 112, 100, 0, 1433129335, 0),
(960, 113, 100, 0, 1433129335, 0),
(961, 114, 100, 0, 1433129335, 0),
(962, 115, 100, 0, 1433129335, 0),
(963, 116, 100, 0, 1433129335, 0),
(964, 117, 100, 0, 1433129335, 0),
(965, 118, 100, 0, 1433129335, 0),
(966, 119, 100, 0, 1433129335, 0),
(967, 120, 100, 0, 1433129335, 0),
(968, 121, 100, 0, 1433129335, 0);

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
(3, 'Saudi Arabia', 'arab', 'sa', 0, 0, 0, 1425357221, 1432768189);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

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
(11, 8, 'page/PageMenus'),
(12, 11, 'product/Products'),
(13, 11, 'product/ProductCategories'),
(14, 11, 'product/ProductRecipes'),
(15, 15, 'news/News');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

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
(10, 8, 'Page Menus', 'pagemenu/index', 1),
(11, 0, 'product', '#', 2),
(12, 11, 'Product', 'product/index', 0),
(13, 11, 'Product Categories', 'product_category/index', 1),
(14, 11, 'Product Recipes', 'product_recipe/index', 2),
(15, 0, 'news', '#', 3),
(16, 15, 'News', 'news/index', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

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
(49, 8, 'Gallery', 'page_gallery/index', 11),
(50, 8, 'Add Gallery', 'page_gallery/index/add', 12),
(51, 8, 'View Gallery', 'page_gallery/index/view', 13),
(52, 8, 'Edit Gallery', 'page_gallery/index/edit', 14),
(53, 8, 'Delete Gallery', 'page_gallery/index/delete', 15),
(54, 8, 'Change Gallery', 'page_gallery/index/change', 16),
(55, 8, 'Export Gallery', 'page_gallery/index/export', 17),
(56, 8, 'Print Gallery', 'page_gallery/index/print', 18),
(57, 8, 'Add Page Menu', 'pagemenu/index/add', 19),
(58, 8, 'View Page Menu', 'pagemenu/index/view', 20),
(59, 8, 'Edit Page Menu', 'pagemenu/index/edit', 21),
(60, 8, 'Delete Page Menu', 'pagemenu/index/delete', 22),
(61, 8, 'Detail Page Menu', 'pagemenu/detail', 23),
(62, 8, 'Translate Page Menu', 'pagemenu/translate', 24),
(63, 8, 'Change Page Menu Status', 'pagemenu/index/change', 25),
(64, 8, 'Export Page Menu', 'pagemenu/index/export', 26),
(65, 8, 'Print Page Menu', 'pagemenu/index/print', 27),
(66, 11, 'Product', 'product/index', 0),
(67, 11, 'Product Categories', 'product_category/index', 1),
(68, 11, 'Product Recipes', 'product_recipe/index', 2),
(69, 11, 'Add Product', 'product/index/add', 3),
(70, 11, 'View Product', 'product/index/view', 4),
(71, 11, 'Edit Product', 'product/index/edit', 5),
(72, 11, 'Delete Product', 'product/index/delete', 6),
(73, 11, 'Detail Product', 'product/detail', 7),
(74, 11, 'Translate Product', 'product/translate', 8),
(75, 11, 'Change Product Status', 'product/index/change', 9),
(76, 11, 'Export Product', 'product/index/export', 10),
(77, 11, 'Print Product', 'product/index/print', 11),
(78, 11, 'Gallery', 'product_gallery/index', 12),
(79, 11, 'Add Gallery', 'product_gallery/index/add', 13),
(80, 11, 'View Gallery', 'product_gallery/index/view', 14),
(81, 11, 'Edit Gallery', 'product_gallery/index/edit', 15),
(82, 11, 'Delete Gallery', 'product_gallery/index/delete', 16),
(83, 11, 'Change Gallery', 'product_gallery/index/change', 17),
(84, 11, 'Export Gallery', 'product_gallery/index/export', 18),
(85, 11, 'Print Gallery', 'product_gallery/index/print', 19),
(86, 11, 'Add Category', 'product_category/index/add', 20),
(87, 11, 'View Category', 'product_category/index/view', 21),
(88, 11, 'Edit Category', 'product_category/index/edit', 22),
(89, 11, 'Delete Category', 'product_category/index/delete', 23),
(90, 11, 'Detail Category', 'product_category/detail', 24),
(91, 11, 'Translate Category', 'product_category/translate', 25),
(92, 11, 'Change Category Status', 'product_category/index/change', 26),
(93, 11, 'Export Category', 'product_category/index/export', 27),
(94, 11, 'Print Category', 'product_category/index/print', 28),
(95, 11, 'Add Recipe', 'product_recipe/index/add', 29),
(96, 11, 'View Recipe', 'product_recipe/index/view', 30),
(97, 11, 'Edit Recipe', 'product_recipe/index/edit', 31),
(98, 11, 'Delete Recipe', 'product_recipe/index/delete', 32),
(99, 11, 'Detail Recipe', 'product_recipe/detail', 33),
(100, 11, 'Translate Recipe', 'product_recipe/translate', 34),
(101, 11, 'Change Recipe Status', 'product_recipe/index/change', 35),
(102, 11, 'Export Recipe', 'product_recipe/index/export', 36),
(103, 11, 'Print Recipe', 'product_recipe/index/print', 37),
(104, 15, 'News', 'news/index', 0),
(105, 15, 'Add News', 'news/index/add', 1),
(106, 15, 'View News', 'news/index/view', 2),
(107, 15, 'Edit News', 'news/index/edit', 3),
(108, 15, 'Delete News', 'news/index/delete', 4),
(109, 15, 'Detail News', 'news/detail', 5),
(110, 15, 'Translate News', 'news/translate', 6),
(111, 15, 'Change News Status', 'news/index/change', 7),
(112, 15, 'Export News', 'news/index/export', 8),
(113, 15, 'Print News', 'news/index/print', 9),
(114, 15, 'Gallery', 'news_gallery/index', 10),
(115, 15, 'Add Gallery', 'news_gallery/index/add', 11),
(116, 15, 'View Gallery', 'news_gallery/index/view', 12),
(117, 15, 'Edit Gallery', 'news_gallery/index/edit', 13),
(118, 15, 'Delete Gallery', 'news_gallery/index/delete', 14),
(119, 15, 'Change Gallery', 'news_gallery/index/change', 15),
(120, 15, 'Export Gallery', 'news_gallery/index/export', 16),
(121, 15, 'Print Gallery', 'news_gallery/index/print', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `media` varchar(255) DEFAULT NULL,
  `attribute` text,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `name`, `subject`, `url`, `synopsis`, `text`, `media`, `attribute`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 'Kewpie, Now in Indonesia', 'kewpie-now-in-indonesia', '<p>\n	After developing the business in 5 countries, Kewpie Corporation opened a new business in Indonesia. It began with opening a factory in Cikarang, West Java, PT. Kewpie INDONESIA started selling for food service in October 2014 and for retail in May 2015. Not only providing quality and safe products, all Kewpie Indonesia products are halal certified from MUI. With its good intentions, we wish to have all Kewpie Products enjoyed by all ages of Indonesian.</p>\n', '<p>\n	After developing the business in 5 countries, Kewpie Corporation opened a new business in Indonesia. It began with opening a factory in Cikarang, West Java, PT. Kewpie INDONESIA started selling for food service in October 2014 and for retail in May 2015. Not only providing quality and safe products, all Kewpie Indonesia products are halal certified from MUI. With its good intentions, we wish to have all Kewpie Products enjoyed by all ages of Indonesian.</p>\n', '2da95-05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432878494, 1433324216),
(2, NULL, 'Kewpie Indonesia at the Grand Opening AEON Mall (May 30, 2015)', 'kewpie-indonesia-at-the-grand-opening-aeon-mall-may-30-2015', '<div>\n	Kewpie Indonesia was participating in the grand opening event of AEON Retail&#39;s first store, in Alam Sutera, Serpong, Banten. In this occasion, Kewpie Indonesia launched its first four products: Kewpie Mayonnaise Original, Kewpie Dressing Roasted Sesame, Kewpie Dressing Spicy Tomato and Kewpie Dressing Thousand Island. This launching event also marked the incoming of Kewpie retail products.&nbsp;</div>\n<div>\n	Not only did some sampling activities in this event, Kewpie Indonesia also conducted cooking demo to introduce all range of launched products to the mall visitors.</div>\n<div>\n	&nbsp;</div>\n', '<div>\n	Kewpie Indonesia was participating in the grand opening event of AEON Retail&#39;s first store, in Alam Sutera, Serpong, Banten. In this occasion, Kewpie Indonesia launched its first four products: Kewpie Mayonnaise Original, Kewpie Dressing Roasted Sesame, Kewpie Dressing Spicy Tomato and Kewpie Dressing Thousand Island. This launching event also marked the incoming of Kewpie retail products.&nbsp;</div>\n<div>\n	Not only did some sampling activities in this event, Kewpie Indonesia also conducted cooking demo to introduce all range of launched products to the mall visitors.</div>\n<div>\n	&nbsp;</div>\n', '7a821-33218.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432878572, 1433324459);

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
  `media` varchar(255) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `menu_id`, `name`, `subject`, `url`, `synopsis`, `text`, `media`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, '', 'Kewpie is now available in Indonesia!', 'kewpie-is-now-available-in-indonesia', NULL, '<p>\n	With 90 years of experience in Japan, Kewpie comes with richness and delicious taste for Indonesia.</p>\n', NULL, NULL, '2015-02-13', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1432889032),
(15, 5, NULL, 'Corporate Philosophy', 'corporate-philosophy', NULL, '<h2 class="p1">\n	<span style="font-size:16px;"><strong>Corporate Motto</strong></span></h2>\n<p class="p1">\n	<em>Raku Goyu Kai Etsu.</em></p>\n<p class="p1">\n	In conducting work, real happiness comes from a cooperation of bringing the same vision to life. By going through this process, one will be able to feel confident and capable. These feelings can increase individual skill, thus will support company development from the inside.</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<span style="font-size:16px;"><strong>Corporate Principles</strong></span></h2>\n<p class="p1">\n	<cite>&quot;Take Action Based on Morality&quot;,&nbsp;</cite></p>\n<p class="p1">\n	<cite>&quot;Endeavor for Originality and Creativity&quot;,</cite></p>\n<p class="p1">\n	<cite>&quot;Respect for the Elders&quot;</cite></p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<span style="font-size:16px;"><strong>Management Philosophy</strong></span></h2>\n<p class="p1">\n	We contribute to a healthy life with delicacy, kindness, and uniqueness.</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<span style="font-size:16px;"><strong>Aim</strong></span></h2>\n<ul>\n	<li class="p1">\n		Creating delicious food products Indonesia will love.</li>\n	<li class="p1">\n		Provide goodness and simplicity in food products that made from quality raw materials, safely packed and easy to apply.</li>\n	<li class="p1">\n		Delivers uniqueness by promoting creativity in product development.</li>\n</ul>\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432892204, 1432905805),
(16, 5, NULL, 'President Director''s Message', 'president-directors-message', '<p class="p1">\n	With &quot;delicacy, goodness and uniqueness&quot;, Kewpie Indonesia is contributing to Indonesian diet.</p>\n', '<p class="p1">\n	<span style="font-size:16px;">With &quot;delicacy, goodness and uniqueness&quot;, Kewpie Indonesia is contributing to Indonesian diet.</span></p>\n<p class="p1">\n	Since it was established in 1919, Kewpie Group has been always using good raw ingredients following the idea of &quot;good products only born from good ingredients&quot;, and will continually maintain the quality.</p>\n<p class="p1">\n	Along with this idea, Kewpie Indonesia is dedicating safe and guaranteed range of halal products, made in a production line with a comprehensive quality control, for the people of Indonesia.&nbsp;</p>\n<p class="p1">\n	Then, with the spirit of a pioneer, Kewpie Group marketed the first mayonnaise and dressings in Japan. With this pioneering spirit, we also propose healthy diet in Indonesia by developing new delicious sauce products.&nbsp;</p>\n<p class="p1">\n	At last, with emphasizing on the consumer, we are implementing the idea of &quot;Top Quality Products&quot;. &quot;Bringing Tastes Favored by Indonesian Diet&quot;, and &quot;Creating a New Eating Lifestyle&quot;.<br />\n	<img alt="" src="/uploads/static/content/images/Yamashita-san-signature.png" style="width: 110px; height: 91px;" /><br />\n	Yamashita San</p>\n', '5fb6d-pesan-presiden-direktur.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432894234, 1433319798),
(17, 5, NULL, 'Contact Us', 'contact-us', NULL, '<h2 class="p1">\n	<strong>Head Office/Factory: </strong></h2>\n<p class="p1">\n	Kota Deltamas Blok CC NO.5</p>\n<p class="p1">\n	Cikarang Pusat, Bekasi&nbsp;</p>\n<p class="p1">\n	Jawa Barat, Indonesia.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Sales Office: </strong></h2>\n<p class="p1">\n	Ruko Kebayoran Arcade 3 Blok KA/E1-09</p>\n<p class="p1">\n	Bintaro Jaya, Tangerang Selatan, Indonesia</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Email for Sales Inquiries: </strong></h2>\n<p class="p1">\n	sales@ml.kewpie.co.id<br />\n	<br />\n	<br />\n	<br />\n	<br />\n	<br />\n	<img alt="" src="/uploads/static/content/images/contact-tag.png" style="width: 475px; height: 202px;" /></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432894310, 1433319848),
(12, 1, NULL, 'The Origins of KEWPIE Mayonnaise', 'the-origins-of-kewpie-mayonnaise', '<p class="food-service-text">\r\n	It is said that mayonnaise was accidentally created by Duke de Richelieu&#39;s French chef in the mid 18th century. Instead of using cream, the chef used oil and eggs when making the Duke&#39;s victory feast. He was so pleased with the creation that it was named &quot;Mahonnaise&quot; in honour of the Duke&#39;s defeat of the British at the Port of Mahon, Menorca.</p>\r\n', '<p class="food-service-text">\r\n	It is said that mayonnaise was accidentally created by Duke de Richelieu&#39;s French chef in the mid 18th century. Instead of using cream, the chef used oil and eggs when making the Duke&#39;s victory feast. He was so pleased with the creation that it was named &quot;Mahonnaise&quot; in honour of the Duke&#39;s defeat of the British at the Port of Mahon, Menorca.</p>\r\n<p class="food-service-text">\r\n	Mr Nakashima Toichiro (founder of KEWPIE Corporation) learned about mayonnaise 160 years later when he travelled to the United States to learn about canned food. Back then, Americans often ate vegetables with dressings that contained mayonnaise. Mr Nakashima then returned to Japan to develop a nutritious mayonnaise that was high in egg yolk content, eventually selling the western condiment to Japan in 1925. KEWPIE Mayonnaise would then go on to capture the hearts of mayonnaise lovers all around the world.</p>\r\n', '6785c-telor-peta.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432767310, 1433131641);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_images`
--

CREATE TABLE IF NOT EXISTS `tbl_page_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `priority` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conference_id` (`field_id`,`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `tbl_page_images`
--

INSERT INTO `tbl_page_images` (`id`, `field_id`, `url`, `title`, `file_name`, `priority`, `count`, `status`, `added`, `modified`) VALUES
(76, 1, NULL, NULL, '7fbc4-bg-footer.jpg', NULL, NULL, 1, NULL, NULL),
(75, 1, NULL, NULL, '3354e-bg-main-kewpie.jpg', NULL, NULL, 1, NULL, NULL),
(77, 1, NULL, NULL, '28e57-tentang-1.jpg', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `type` enum('page','product','recipe','news') DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
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

INSERT INTO `tbl_page_menus` (`id`, `parent_id`, `type`, `name`, `subject`, `synopsis`, `text`, `url`, `media`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(2, NULL, 'product', NULL, 'Our Product', NULL, '<p>\n	From mayonnaise, dressing to sandwich spread, Kewpie Indonesia brings a wide range of products to add deliciousness to all the food you like!</p>\n', 'our-product', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1432889015),
(3, NULL, 'page', NULL, 'Inside KEWPIE', '<p class="p1">\n	<span style="font-size: 12px;">Made from egg, vinegar and soy oil processed with Kewpie technology, Kewpie Mayonnaise is produced in a good emulsion process. The emulsion process produces smaller and thicker particles compared to other mayonnaise products, thus making Kewpie mayonnaise tastes soft but dense.</span></p>\n', '<h2 class="p1">\n	<strong>Kewpie Mayonnaise Origins</strong></h2>\n<p class="p3">\n	Touichiro Nakashima (inventor of the Kewpie mayonnaise) introduced to mayonnaise for the first time in 1912 during his trip to the USA to study canned food. At that time, Americans eat potato salad with mayonnaise as their everyday meal. The tasty and nutritious potato salad with mayonnaise had become very memorable for Nakashima until he decided to share the goodness of mayonnaise in Japan.</p>\n<p class="p3">\n	He then returned to Japan and started developing a highly nutritious mayonnaise, which contains more egg yolks. Nakashima mayonnaise went on sale in Japan in 1925 in the name of KEWPIE. Kewpie mayonnaise is the first Japan made mayonnaise.</p>\n<p class="p3">\n	Along with its products development, in addition to mayonnaise, Kewpie also provides high quality food products for all ages marketed to various countries in the world.</p>\n<p class="p3">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>What&#39;s in Our Mayonnaise</strong></h2>\n<p class="p2">\n	Made from egg, vinegar and soy oil processed with Kewpie technology, Kewpie Mayonnaise is produced in a good emulsion process. The emulsion process produces smaller and thicker particles compared to other mayonnaise products, thus making Kewpie mayonnaise tastes soft but dense.</p>\n<p class="p2">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Kewpie Mayonnaise Production</strong></h2>\n<p class="p1">\n	All products from Kewpie Indonesia are made from high quality materials, well processed into products that are safe for consumption. Packed in food standards tubes, Kewpie Mayonnaise, Kewpie Sandwich Spread and Kewpie Sweet Sauce is easy to apply or to carry. With Kewpie, you can easily make lines over the food or simply draw on bread.</p>\n<p class="p3">\n	&nbsp;</p>\n', 'inside-kewpie', 'd20d8-kewpie-factory.png', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1433322420),
(4, NULL, 'recipe', NULL, 'Recipes', NULL, '<p>\n	Recipes Page Menu Description</p>\n', 'recipes', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432635063, 1432757350),
(5, NULL, 'page', NULL, 'About Kewpie', NULL, '<p class="p1">\n	PT. KEWPIE INDONESIA started business in Indonesia in 2013 and in October 2014, it started selling Food Service products. As a halal and NKV certified products, Kewpie Indonesia provides halal, safe and high quality food products for all Indonesian consumers.</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong><span style="font-size:16px;">Corporate Timeline</span></strong></h2>\n<p class="p1">\n	<strong>1919</strong></p>\n<p class="p1">\n	Shokuhin Kogyo Co., Ltd, a company that started KEWPIE Corporation established in Otaki-cho, Nakano-ku, Tokyo, began producing and processing many kind of food products.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>1925</strong></p>\n<p class="p1">\n	KEWPIE Mayonnaise hit the market in 100 gram and 128 gram glass jars, also as the first Japan mayonnaise in jars.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>1957</strong></p>\n<p class="p1">\n	The company name changed to KEWPIE Corporation, following the famous mayonnaise brand.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>2013</strong></p>\n<p class="p1">\n	PT. KEWPIE INDONESIA established</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>2014</strong></p>\n<p class="p1">\n	PT. KEWPIE INDONESIA products got halal certification and NKV, also starts the selling of Food Service.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>2015</strong></p>\n<p class="p1">\n	PT KEWPIE INDONESIA begins to sell retail products</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<span style="font-size:16px;"><strong>Halal Certification and NKV</strong></span></h2>\n<p class="p1">\n	All KEWPIE Indonesia products are halal certified, issued by LPPOM MUI. All egg based products also have NKV certification.</p>\n<p class="p1">\n	&nbsp;</p>\n', 'who-are-we', 'ba71d-baby-kewpie.jpg', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432635116, 1432906196),
(6, NULL, 'news', NULL, 'Latest News', NULL, '<p>\n	Latest News menu description</p>\n', 'latest-news', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432635133, 1432757369),
(1, NULL, NULL, NULL, 'Home', NULL, '<p>\n	Home Page Description</p>\n', 'home', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1432711581);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menu_images`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menu_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `priority` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conference_id` (`field_id`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `media` varchar(255) DEFAULT NULL,
  `attribute` text,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `in_front` enum('yes','no') DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`name`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `category_id`, `name`, `subject`, `url`, `synopsis`, `text`, `media`, `attribute`, `allow_comment`, `in_front`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, NULL, 'Kewpie Mayonnaise Original', 'kewpie-mayonnaise-original', '<p>\n	Japanese Style</p>\n', '<p class="p1">\n	Rich in eggs, KEWPIE MAYONNAISE ORIGINAL is a perfect match for salads or any fried snacks.</p>\n', '2dc2d-original-small.png', '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					100</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					100</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					11</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					0</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					70</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p>\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736374, 1433323196),
(2, 1, NULL, 'Kewpie Mayonnaise Original Sweet ', 'kewpie-mayonnaise-original-sweet', '<p>\n	Mild Type</p>\n', '<p class="p1">\n	KEWPIE MAYONNAISE ORIGINAL SWEET comes with a sweeter taste. Tasty and soft, suitable for a mixed condiment or as dressing for fruit salad.</p>\n', NULL, '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					104</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					-</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					11</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					2</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					80</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736461, 1432908352),
(3, 1, NULL, 'Kewpie Mayonnaise Savory Sauce', 'kewpie-mayonnaise-savory-sauce', '<p>\n	Half Salad Dressing</p>\n', '<p class="p1">\n	Made from a variety of seasonings, KEWPIE MAYONNAISE SAVORY SAUCE makes any kinds of fried snacks become more delicious.</p>\n', NULL, '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					-</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					0</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					4</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					5</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736506, 1432908365),
(4, 2, NULL, 'Kewpie Salad Dressing Roasted Sesame', 'kewpie-salad-dressing-roasted-sesame', '<p>\n	Mayo Sauce</p>\n', '<p class="p1">\n	The unique aroma of roasted sesame makes KEWPIE SALAD DRESSING ROASTED SESAME perfect for stir fry or stewed dish</p>\n', 'af5c3-wijeng-sangrai-small.png', '<h3 class="p1">\n	Average Composition Per 25 ml</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					90</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					60</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					7</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					5</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					190</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736525, 1432920175),
(5, 2, NULL, 'Kewpie Salad Dressing Soy Sauce', 'kewpie-salad-dressing-soy-sauce', '<p>\n	Sesame Soy Sauce</p>\n', '<p class="p1">\n	Sesame and onion delights in KEWPIE SALAD DRESSING SOY SAUCE make a best combo with vegetables, fish or fruit.</p>\n', '2bd59-kecap-ala-jepang-small.png', '<h3 class="p1">\n	Average Composition Per 25 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					60</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					45</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					5</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					3</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					260</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736561, 1432920197),
(6, 2, NULL, 'Kewpie Salad Dressing Spicy Tomato ', 'kewpie-salad-dressing-spicy-tomato', '<p>\n	Roasted Sesame</p>\n', '<p class="p1">\n	KEWPIE SALAD&nbsp;DRESSING SPICY TOMATO&nbsp;is where tomato delicacy combined with a gentle spicy taste, delicious for any kind of salads, pasta and chicken.</p>\n', '03d86-tomat-pedas-small.png', '<h3 class="p1">\n	Average Composition Per 25 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					80</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					5</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					350</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p>\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736577, 1432920213),
(7, 2, NULL, 'Kewpie Salad Dressing Caesar ', 'kewpie-salad-dressing-caesar', '<p>\n	Wasabi Taste</p>\n', '<p class="p1">\n	Perfectly made from two kind of cheeses, KEWPIE SALAD DRESSING CAESAR will add delicacy to your Caesar Salad, also goes great with any chicken menus.&nbsp;</p>\n', '2e1bb-caesar-small.png', '<h3 class="p1">\n	Average Composition Per 25 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					3</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					190</td>\n			</tr>\n		</tbody>\n	</table>\n	<p>\n		<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n</div>\n<p>\n	&nbsp;</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736599, 1433310060),
(8, 2, NULL, 'Kewpie Salad Dressing Thousand Island', 'kewpie-salad-dressing-thousand-island', '<p>\n	Caesar</p>\n', '<p class="p1">\n	Add KEWPIE SALAD DRESSING THOUSAND ISLAND into any vegetables and fruit salad. Also good to go with shrimp, for a richer taste of the food.</p>\n', 'c635a-thousand-island-small.png', '<h3 class="p1">\n	Average Composition Per 25 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					4</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					260</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736638, 1432920284),
(9, 5, NULL, 'Kewpie Sandwich Spread Original ', 'kewpie-sandwich-spread-original', '<p>\n	Hot Spicy</p>\n', '<p class="p1">\n	Sandwich spread with original flavor, perfect for any sandwich with vegetables or boiled eggs. KEWPIE SANDWICH SPREAD ORIGINAL, so handy and easy to create your home made sandwich&nbsp;</p>\n', NULL, '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					0</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					4</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					85</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736661, 1432908482),
(10, 5, NULL, 'Kewpie Sandwich Spread Cheese', 'kewpie-sandwich-spread-cheese', '<p>\n	Original</p>\n', '<p class="p1">\n	Apply KEWPIE SANDWICH SPREAD CHEESE to your smoked beef sandwich or hotdog to treat your taste buds and get the yumminess instantly.</p>\n', NULL, '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					60</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					40</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					0</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					4,5</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					4</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					115</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n<p class="p1">\n	&nbsp;</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736680, 1432908669),
(11, 5, NULL, 'Kewpie Sandwich Spread Coconut', 'kewpie-sandwich-spread-coconut', '<p>\n	Spicy Black Pepper</p>\n', '<p class="p1">\n	KEWPIE SANDWICH SPREAD COCONUT has the unique coconut flavor never existed before. It will give any bread, fruit salad and sweet snacks the freshness and extraordinary taste you&rsquo;ve never had.</p>\n', NULL, '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					60</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					45</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					0</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					5</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					3</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					115</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736698, 1432908751),
(12, 4, NULL, 'Food Service - Commercial Products', 'food-service-commercial-products', '<p>\n	Cheesy Cheese</p>\n', '<p class="p1">\n	We provide food condiment products that are tailored to the needs of food service and food business. Our food service varies from Mayonnaise, Dressing and Cooking Sauce, to support your food business in creating food with quality.</p>\n<p class="p1">\n	For further information, please contact for Sales Inquiries to sales@ml.kewpie.co.id&nbsp;</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736716, 1432906305),
(13, 3, NULL, 'Kewpie Banana Chocolate Spread ', 'kewpie-banana-chocolate-spread', '<p>\n	Commercial Products</p>\n', '<p class="p1">\n	Kewpie Banana Chocolate Spread brings you joyful flavor with its unique combination. Carry this delicious sweetness everywhere in an easy to use tube pack.</p>\n', NULL, '<h3 class="p1">\n	Average Composition Per 15 gr</h3>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energy (kcal)</td>\n				<td width="50px">\n					90</td>\n			</tr>\n			<tr>\n				<td>\n					Energy From Fat (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Fat (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Carbohidrate (g)</td>\n				<td width="50px">\n					8</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					0</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<p class="p1">\n	<a class="btn btn-price btn-danger" href="#">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736779, 1432909408),
(14, 3, NULL, 'Kewpie Coffee Chocolate Spread', 'kewpie-coffee-chocolate-spread', '<p>\n	Kewpie Original Mayonnaise</p>\n', '<p class="p1">\n	Kewpie Coffee Chocolate Spread with a special taste of coffee, has been all ages favorite. Enjoy this sweet deliciousness in easy to carry tube pack.</p>\n', NULL, '<p>\n	<strong>Average Composition Per 15 gr</strong></p>\n<table border="1" cellpadding="0">\n	<tbody>\n		<tr>\n			<td>\n				<p>\n					Energy (kcal)</p>\n			</td>\n			<td>\n				<p>\n					90</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Energy From Fat (kcal)&nbsp;</p>\n			</td>\n			<td>\n				<p>\n					50</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Protein (g)</p>\n			</td>\n			<td>\n				<p>\n					1</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Fat (g)</p>\n			</td>\n			<td>\n				<p>\n					5</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Carbohidrate (g)</p>\n			</td>\n			<td>\n				<p>\n					9</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Natrium</p>\n			</td>\n			<td>\n				<p>\n					0</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	<a href="http://dentsu.digital/kewpie.co.id/admin-panel/product/index/edit/13">Recipe</a></p>\n<p>\n	&nbsp;</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432737543, 1432909629),
(15, 3, NULL, 'Kewpie Orange Chocolate Spread', 'kewpie-orange-chocolate-spread', '<p>\n	Oyster Sauce</p>\n', '<p class="p1">\n	Kewpie Orange Chocolate Spread with its orange flavors give you a new experience of enjoying bread. Enjoy this sweet deliciousness in easy to carry tube pack.</p>\n', NULL, '<p>\n	<strong>Average Composition Per 15 gr</strong></p>\n<table border="1" cellpadding="0">\n	<tbody>\n		<tr>\n			<td>\n				<p>\n					Energy (kcal)</p>\n			</td>\n			<td>\n				<p>\n					80</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Energy From Fat (kcal)&nbsp;</p>\n			</td>\n			<td>\n				<p>\n					45</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Protein (g)</p>\n			</td>\n			<td>\n				<p>\n					0</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Fat (g)</p>\n			</td>\n			<td>\n				<p>\n					5</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Carbohidrate (g)</p>\n			</td>\n			<td>\n				<p>\n					9</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n				<p>\n					Natrium</p>\n			</td>\n			<td>\n				<p>\n					0</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p class="p1">\n	<a href="http://dentsu.digital/kewpie.co.id/admin-panel/product/index/edit/13">Recipe</a></p>\n<p class="p1">\n	&nbsp;</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432737703, 1432909641),
(16, 3, NULL, 'Kewpie Vanilla Strawberry Spread', 'kewpie-vanilla-strawberry-spread', '<p>\n	Sandwich Spread</p>\n', '<p class="p1">\n	Discover the softness of vanilla flavor combined with strawberries in Kewpie Vanilla Strawberry Spread. The sweetness of vanilla in soft textures, you can bring easily anytime anywhere.</p>\n', NULL, '<p>\n	<strong>Average Composition Per 15 gr</strong></p>\n<table border="1" cellpadding="0" style="width:290px;" width="218">\n	<tbody>\n		<tr>\n			<td style="height:16px;">\n				<p>\n					Energy (kcal)</p>\n			</td>\n			<td style="height:16px;">\n				<p>\n					90</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Energy From Fat (kcal)&nbsp;</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					50</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Protein (g)</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					0</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Fat (g)</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					6</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Carbohidrate (g)</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					9</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:19px;">\n				<p>\n					Natrium</p>\n			</td>\n			<td style="height:19px;">\n				<p>\n					0</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	<a href="http://dentsu.digital/kewpie.co.id/admin-panel/product/index/edit/13">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432737769, 1432909750),
(17, 3, NULL, 'Kewpie Vanilla Pineapple Spread ', 'kewpie-vanilla-pineapple-spread', '<p>\n	Sweet Sauce</p>\n', '<p class="p1">\n	Kewpie Vanilla Pineapple Spread brings the new fresh pineapple flavor for breads or any snacks you desire. The sweetness of vanilla in soft textures, you can bring easily anytime anywhere.</p>\n', NULL, '<p>\n	<strong>Average Composition Per 15 gr</strong></p>\n<table border="1" cellpadding="0" style="width:290px;" width="218">\n	<tbody>\n		<tr>\n			<td style="height:16px;">\n				<p>\n					Energy (kcal)</p>\n			</td>\n			<td style="height:16px;">\n				<p>\n					90</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Energy From Fat (kcal)&nbsp;</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					50</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Protein (g)</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					0</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Fat (g)</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					5</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:17px;">\n				<p>\n					Carbohidrate (g)</p>\n			</td>\n			<td style="height:17px;">\n				<p>\n					9</p>\n			</td>\n		</tr>\n		<tr>\n			<td style="height:19px;">\n				<p>\n					Natrium</p>\n			</td>\n			<td style="height:19px;">\n				<p>\n					0</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	<a href="http://dentsu.digital/kewpie.co.id/admin-panel/product/index/edit/13">Recipe</a></p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432737812, 1432909829),
(18, 3, NULL, 'Kewpie Vanilla Coconut Spread', 'kewpie-vanilla-coconut-spread', NULL, '<p class="p1">\n	The all-time favorite coconut flavor combined with sweet vanilla now brought to you in Kewpie Vanilla Coconut Spread. The sweetness of vanilla in soft textures, you can bring easily anytime&nbsp;</p>\n', NULL, '<div class="panel panel-primary" style="border: none;">\n	<div class="controle-header panel-heading panel-heading-landing">\n		<h3 class="panel-title panel-title-landing">\n			&nbsp;</h3>\n		<h3>\n			<strong>Average Composition Per 15 gr</strong></h3>\n		<table border="1" cellpadding="0" style="width:290px;" width="218">\n			<tbody>\n				<tr>\n					<td style="height:16px;">\n						<p>\n							Energy (kcal)</p>\n					</td>\n					<td style="height:16px;">\n						<p>\n							90</p>\n					</td>\n				</tr>\n				<tr>\n					<td style="height:17px;">\n						<p>\n							Energy From Fat (kcal)&nbsp;</p>\n					</td>\n					<td style="height:17px;">\n						<p>\n							40</p>\n					</td>\n				</tr>\n				<tr>\n					<td style="height:17px;">\n						<p>\n							Protein (g)</p>\n					</td>\n					<td style="height:17px;">\n						<p>\n							0</p>\n					</td>\n				</tr>\n				<tr>\n					<td style="height:17px;">\n						<p>\n							Fat (g)</p>\n					</td>\n					<td style="height:17px;">\n						<p>\n							4,5</p>\n					</td>\n				</tr>\n				<tr>\n					<td style="height:17px;">\n						<p>\n							Carbohidrate (g)</p>\n					</td>\n					<td style="height:17px;">\n						<p>\n							10</p>\n					</td>\n				</tr>\n				<tr>\n					<td style="height:19px;">\n						<p>\n							Natrium</p>\n					</td>\n					<td style="height:19px;">\n						<p>\n							0</p>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n		<p>\n			<a href="http://dentsu.digital/kewpie.co.id/admin-panel/product/index/edit/13">Recipe</a></p>\n	</div>\n</div>\n<p>\n	&nbsp;</p>\n', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432801428, 1432909890);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_product_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` text,
  `url` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `color` varchar(8) DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_product_categories`
--

INSERT INTO `tbl_product_categories` (`id`, `parent_id`, `name`, `subject`, `text`, `url`, `media`, `cover`, `color`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, NULL, 'Mayonnaise', '<p>\n	Mayonnaise</p>\n', 'mayonnaise', NULL, NULL, '#e80010', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736197, 1433232412),
(2, NULL, NULL, 'Dressings', '<p>\n	Salad Dressing</p>\n', 'dressings', NULL, NULL, '#887924', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736235, 1433233002),
(3, NULL, NULL, 'Spreads ', '<p>\n	Spreads</p>\n', 'spreads', NULL, NULL, '#d67701', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736254, 1433233012),
(4, NULL, NULL, 'Food Service', '<p class="p1">\n	Food Service</p>\n', 'food-services', '7a272-food-service-thumb.png', NULL, '', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432736266, 1432897104),
(5, NULL, NULL, 'Sandwich Spread', '<p>\n	Sandwich Spread</p>\n', NULL, NULL, NULL, '#2eb034', 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1432896509, 1433232721);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_images`
--

CREATE TABLE IF NOT EXISTS `tbl_product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `priority` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conference_id` (`field_id`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_recipes`
--

CREATE TABLE IF NOT EXISTS `tbl_product_recipes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `media` varchar(255) DEFAULT NULL,
  `attribute` text,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `favorited` enum('yes','no') NOT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`,`name`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_product_recipes`
--

INSERT INTO `tbl_product_recipes` (`id`, `product_id`, `name`, `subject`, `url`, `synopsis`, `text`, `media`, `attribute`, `allow_comment`, `favorited`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 4, NULL, 'New Gado Gado', 'new-gado-gado', '<p class="bodyText_Type_Color" itemprop="description" style="font-size: 14px; line-height: 17px;">\n	If you&rsquo;re a fan of mayonnaise, this salad is a must-try recipe.<br />\n	But don&rsquo;t forget to use it with KEWPIE MAYONNAISE</p>\n<p class="bodyText_Type_Color" style="font-size: 14px; line-height: 17px;">\n	JAPANESE STYLE for that extra tasty, unique flavour.</p>\n', '<h3 class="bodyText_Type_Color" itemprop="description" style="font-size: 14px; line-height: 17px;">\n	Ingredients:&nbsp;</h3>\n<ul>\n	<li>\n		Potato</li>\n	<li>\n		Carrots</li>\n	<li>\n		Boiled Eggs</li>\n	<li>\n		Prawn Crackers</li>\n	<li>\n		Cabbage</li>\n	<li>\n		Bean sprouts</li>\n	<li>\n		Rice cake</li>\n	<li>\n		KEWPIE SALAD DRESSING ROASTED SESAME</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instruction:</h3>\n<ol>\n	<li>\n		Boil cabbage, bean sprouts, eggs, carrots and potatoes.</li>\n	<li>\n		Cut rice cake.</li>\n	<li>\n		Fry shrimp crackers.</li>\n	<li>\n		Serve all ingredients on a plate</li>\n	<li>\n		Pour with Kewpie Salad Dressing Roasted Sesame.</li>\n</ol>\n', '0a871-preview-samall.jpg', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 'publish', 1432737062, 1432912168),
(2, 5, NULL, 'Seafood Salad', 'seafood-salad', '<p>\n	Seafood Salad</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		shrimp</li>\n	<li>\n		squid</li>\n	<li>\n		salmon</li>\n	<li>\n		lettuce</li>\n	<li>\n		Cherry tomatoes</li>\n	<li>\n		Yellow peppers</li>\n	<li>\n		Kewpie Salad Dressing Soy Sauce</li>\n</ul>\n<p>\n	 </p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Boil shrimp and squid.</li>\n	<li>\n		Grill squid on a griddle.</li>\n	<li>\n		Cut peppers and cherry tomatoes to garnish.</li>\n	<li>\n		Put lettuce on a plate, arrange all the ingredients on top of it</li>\n	<li>\n		Pour with Kewpie salad dressing.</li>\n</ol>\n', '6ab2f-preview-small.jpg', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 'publish', 1432809110, 1433321350),
(3, 6, NULL, 'Buffalo Chicken Salad', 'buffalo-chicken-salad', '<p>\n	Buffalo Chicken Salad</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		Sayap Ayam Goreng</li>\n	<li>\n		Tomat</li>\n	<li>\n		Selada</li>\n	<li>\n		Daun Bawang</li>\n	<li>\n		Jeruk Nipis</li>\n	<li>\n		Kewpie Salad Dressing Spicy Tomato&nbsp;</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Arrange lettuce on a plate.</li>\n	<li>\n		Place the fried chicken on it.</li>\n	<li>\n		Put lime juice and red onion to garnish</li>\n	<li>\n		Pour Kewpie Salad Dressing on it</li>\n</ol>\n', '79c74-small-preview.jpg', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 'publish', 1432809399, 1432912302),
(4, 7, NULL, 'American Caesar Salad', 'american-caesar-salad', '<p>\n	American Caesar Salad</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		Grilled chicken (breast)</li>\n	<li>\n		Olive (cut round)</li>\n	<li>\n		Crouton</li>\n	<li>\n		Romaine Lettuce</li>\n	<li>\n		Kewpie Salad Dressing Caesar&nbsp;</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Roast chicken.</li>\n	<li>\n		Cut olives in round shape</li>\n	<li>\n		Rip lettuce.</li>\n	<li>\n		Place the chicken and olives on top the lettuce.</li>\n	<li>\n		Pour Kewpie salad dressing on it.</li>\n</ol>\n', '6dacf-preview-small.jpg', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 'publish', 1432818546, 1432912322),
(5, 8, NULL, 'Boiled Salad', 'boiled-salad', '<p>\n	Boiled Salad</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		shrimp</li>\n	<li>\n		egg</li>\n	<li>\n		broccoli</li>\n	<li>\n		carrots</li>\n	<li>\n		Potato</li>\n	<li>\n		Kewpie Salad Dressing Thousand Islands</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Boiled shrimp, broccoli, carrots, potatoes and eggs.</li>\n	<li>\n		Arrange on a plate</li>\n	<li>\n		Pour salad dressing over the arrangement.</li>\n</ol>\n', 'd43ac-preview-small.jpg', NULL, NULL, 'no', NULL, NULL, NULL, NULL, 'publish', 1432821748, 1432912356),
(6, 10, NULL, 'Hot Dog', 'hot-dog', '<p>\n	Hot Dog</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		hotdog bun</li>\n	<li>\n		chicken sausage</li>\n	<li>\n		Pickles</li>\n	<li>\n		lettuce</li>\n	<li>\n		chili sauce</li>\n	<li>\n		Kewpie Sandwich Spread Cheese</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Place the lettuce in hotdog bun.</li>\n	<li>\n		Add pickles.</li>\n	<li>\n		Place chicken sausage.</li>\n	<li>\n		Add chili sauce (if desired) and coat sausage with sandwich spread on it.</li>\n</ol>\n', NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, 'unpublish', 1432829829, 1432912581),
(7, 1, NULL, 'Fried Chicken with Mayo Dip', 'fried-chicken-with-mayo-dip', '<p>\n	Fried Chicken with Mayo Dip</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		Fried Chicken</li>\n	<li>\n		carrots</li>\n	<li>\n		lettuce</li>\n	<li>\n		broccoli</li>\n	<li>\n		Baby potatoes</li>\n	<li>\n		Lime</li>\n	<li>\n		Kewpie Mayonnaise Original</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Boil carrots, broccoli and potatoes.</li>\n	<li>\n		Arrange lettuce on a plate.</li>\n	<li>\n		Serve carrots, broccoli, potatoes and fried chicken on a plate.</li>\n	<li>\n		Add mayonnaise as condiment</li>\n</ol>\n', '3dc94-preview-small.jpg', NULL, NULL, '', NULL, NULL, NULL, NULL, 'publish', 1432911778, 1432912600),
(8, 2, NULL, 'Easy Mayo Dips', 'easy-mayo-dips', '<p>\n	Easy Mayo Dips</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		Fritters</li>\n	<li>\n		Fried cassava</li>\n	<li>\n		Fried Tempe</li>\n	<li>\n		Kewpie Mayonnaise Original Sweet&nbsp;</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<p>\n	Serve fritter, fried cassava and fried tempeh with sweet mayonnaise.</p>\n<p>\n	&nbsp;</p>\n', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'unpublish', 1432911889, 1432912648),
(9, 3, NULL, 'Ebi Fry', 'ebi-fry', '<p>\n	Ebi Fry</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		Ebi Fry</li>\n	<li>\n		cucumber</li>\n	<li>\n		tomatoes</li>\n	<li>\n		Sweet soy sauce (optional)</li>\n	<li>\n		lime</li>\n	<li>\n		Cabbage</li>\n	<li>\n		KEWPIE MAYONNAISE SAVORY</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Thinly slice cabbage.</li>\n	<li>\n		Put ebi fry over cabbage.</li>\n	<li>\n		Cut tomato, cucumber and lime, decorate all on the plate.</li>\n	<li>\n		Add soy sauce and Kewpie Mayo Savory</li>\n</ol>\n', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'unpublish', 1432911997, 1432912625),
(10, 1, NULL, 'Egg Sandwich', 'egg-sandwich', '<p>\n	Egg Sandwich</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		3 Slices Crustless Bread</li>\n	<li>\n		2 Boiled Eggs</li>\n	<li>\n		Salt to taste</li>\n	<li>\n		2 tbs Kewpie mayonnaise Original</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Put boiled eggs into a bowl. Mash using fork until they become crumbles. Add salt and mayonnaise, mix until blended.</li>\n	<li>\n		Prepare the bread, fill with mayonnaise as you like it, add boiled egg mixtures. Repeat to all breads, then cut them into triangles. Sandwiches are ready to be served.</li>\n</ol>\n', 'cccd0-preview.jpg', NULL, NULL, '', NULL, NULL, NULL, NULL, 'publish', 1432912861, 1432913101),
(11, 1, NULL, '2 Bread Rolls', '2-bread-rolls', '<p>\n	2 Bread Rolls</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		8 slices Crustless Bread</li>\n	<li>\n		2 slices Smoked Beef</li>\n	<li>\n		4 Lettuces</li>\n	<li>\n		&frac12; nori sheet</li>\n	<li>\n		80 gr Canned tuna</li>\n	<li>\n		Kewpie Mayonnaise Original</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<p>\n	(To Nori and Smoked Beef Sandwich)</p>\n<ol>\n	<li>\n		Cut nori into 4 parts.</li>\n	<li>\n		Spread mayonnaise on the bread, put the ingredients in this order: 2 pieces of lettuce that has been kneaded, the put smoked beef on top of it. Roll and cut diagonally into 2 parts.</li>\n</ol>\n<p>\n	(Untuk Tuna Mayo Roll)</p>\n<ol>\n	<li>\n		Mix tuna and mayonnaise to make a tuna mayo.</li>\n	<li>\n		Apply tuna mayo on the bread in this order:&nbsp; place the lettuce that has been kneaded and tuna on top of it, roll and cut diagonally into 2 parts.</li>\n</ol>\n', '7f3b1-preview.jpg', NULL, NULL, '', NULL, NULL, NULL, NULL, 'publish', 1432913145, 1432914146),
(12, 1, NULL, 'Egg Salad On Sandwich', 'egg-salad-on-sandwich', '<p>\n	Egg Salad on Sandwich</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		2 slices white bread</li>\n	<li>\n		2 lettuces</li>\n	<li>\n		2 eggs</li>\n	<li>\n		1 Beef Bacon</li>\n	<li>\n		cooking oil</li>\n	<li>\n		Kewpie mayonnaise original</li>\n	<li>\n		*Bacon can be replaced with smoked beef</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		Wash the lettuce with cold water, then drain. Rip to an edible size.</li>\n	<li>\n		Cut the bacon approximately 2 cm, sauteed in the pan without oil. Add oil in the same skillet, wait until hot, put beaten egg and stir till cooked.</li>\n	<li>\n		Put lettuce, bacon and egg at the top of the bread, add mayonnaise on it.</li>\n</ol>\n', '7a2f6-preview-small.jpg', NULL, NULL, '', NULL, NULL, NULL, NULL, 'publish', 1432913333, 1432914176),
(13, 1, NULL, 'Broccoli Sandwich & Sauteed Mayo Eggs', 'broccoli-sandwich-sauteed-mayo-eggs', '<p>\n	Broccoli Sandwich &amp; Sauteed Mayo Eggs</p>\n', '<h3>\n	Ingredients:</h3>\n<ul>\n	<li>\n		6 slices Bread</li>\n	<li>\n		&frac12; head Broccoli</li>\n	<li>\n		2 slices Beef Bacon</li>\n	<li>\n		2 eggs</li>\n	<li>\n		pepper to taste</li>\n	<li>\n		&frac12; tbsp Kewpie mayonnaise Original&nbsp;</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Instructions:</h3>\n<ol>\n	<li>\n		6 slices Bread</li>\n	<li>\n		&frac12; head Broccoli</li>\n	<li>\n		2 slices Beef Bacon</li>\n	<li>\n		2 eggs</li>\n	<li>\n		pepper to taste</li>\n	<li>\n		&frac12; tbsp Kewpie mayonnaise Original&nbsp;</li>\n</ol>\n', 'f06ae-preview-small.jpg', NULL, NULL, '', NULL, NULL, NULL, NULL, 'publish', 1432913459, 1432914205);

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
(11, 'title_default', 'Website Title Default', 'Mempersembahkan Rasa yang Digemari dalam Budaya Makan Indonesia', 1, 'input', 'medium', '0', '0', '', 1, NULL, 1432714407),
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
-- Table structure for table `tbl_translations`
--

CREATE TABLE IF NOT EXISTS `tbl_translations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table` varchar(64) DEFAULT NULL,
  `field_id` int(11) unsigned DEFAULT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `attribute` text,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`field_id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tbl_translations`
--

INSERT INTO `tbl_translations` (`id`, `table`, `field_id`, `lang_id`, `name`, `subject`, `url`, `synopsis`, `text`, `attribute`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 'tbl_pages', 1, 1, NULL, 'Kini Kewpie Hadir di Indonesia!', 'kini-kewpie-hadir-di-indonesia', NULL, '<p>\n	Dengan pengalaman selama 90 tahun di Jepang, Kewpie menghadirkan produk-produk&nbsp;lezat dan bermanfaat untuk Anda di Indonesia.</p>\n', NULL, 1, NULL, 0, 1432742665, 1432889087),
(2, 'tbl_pages', 8, 1, NULL, 'Mayonais', 'mayonais', '<p>\n	Mayonais</p>\n', '<p>\n	Mayonais</p>\n', NULL, 1, NULL, 0, 1432742735, 1432742819),
(5, 'tbl_page_menus', 2, 1, NULL, 'Produk Kami', 'produk-kami', NULL, '<p>\n	Mulai dari mayonais, dressing, hingga olesan untuk roti, Kewpie Indonesia menghadirkan berbagai jenis produk yang &nbsp;menjadi pelezat hidangan Anda!&nbsp;</p>\n', NULL, 1, NULL, 1, 1432743088, 1432895755),
(6, 'tbl_page_menus', 3, 1, NULL, 'Di Dalam Kewpie', 'di-dalam-kewpie', '<p class="p1">\n	Dibuat dari telur, cuka serta minyak kedelai yang diolah dengan teknologi Kewpie, menghasilkan proses emulsi yang baik. Proses emulsi tersebut menyebabkan partikel dalam mayonais Kewpie lebih kecil dan rapat dibandingkan dengan mayonais lainnya, sehingga membuat mayonais terasa padat dan lembut.&nbsp;</p>\n', '<h2 class="p1">\n	<strong>Asal Mula Mayonais Kewpie</strong></h2>\n<p class="p1">\n	Touichiro Nakashima (penemu KEWPIE mayonnaise) pertama kali mengenal mayonais pada tahun 1912, saat ia berkunjung ke Amerika Serikat untuk mempelajari makanan kaleng. Saat itu, dalam kesehariannya orang Amerika menyantap salad kentang dengan mayonais. Santapan yang lezat dan bergizi ini begitu berkesan bagi Nakashima sehingga ia bertekad untuk menyebarluaskan mayonais di Jepang.</p>\n<p class="p1">\n	Sekembalinya ke Jepang, Nakashima mulai mengembangkan mayonais bergizi tinggi, yang banyak mengandung kuning telur. Mayonais tersebut mulai dijual di Jepang pada tahun 1925 dengan merek Kewpie. Kewpie Mayonnaise merupakan mayonais produksi dalam negeri pertama di Jepang.</p>\n<p class="p1">\n	Pada perkembangannya sekarang, selain mayonais, Kewpie menyediakan produk-produk makanan yang berkualitas untuk segala usia di berbagai negara di dunia.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Bahan Dasar Kewpie Mayonnaise</strong></h2>\n<p class="p1">\n	Terbuat dari telur, cuka dan minyak sayur yang diproses dengan teknologi modern Kewpie, Mayonnaise Kewpie diproduksi melalui proses emulsi yang sangat baik. Proses emulsi ini menghasilkan partikel yang lebih kecil dan lebih rapat, dibanding produk mayonnaise lain. Sehingga Kewpie mayonnaise memiliki rasa yang lembut dan padat.</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Proses Produksi</strong></h2>\n<p class="p1">\n	Semua varian produk dari Kewpie Indonesia dibuat dari bahan-bahan berkualitas, diproses dengan baik sehingga menghasilkan produk yang aman dikonsumsi. Dengan tube berstandar pangan, produk-produk Mayonais, Olesan Sandwich serta Saus Manis mudah digunakan dan dibawa. Sangat praktis untuk membuat lining pada makanan atau kreasi gambar pada roti.</p>\n', NULL, 1, NULL, 1, 1432743463, 1433323300),
(7, 'tbl_page_menus', 4, 1, NULL, 'Resep', 'resep', NULL, '<p>\n	Resep</p>\n', NULL, 1, NULL, 1, 1432743483, 1432756684),
(8, 'tbl_page_menus', 5, 1, NULL, 'Tentang Kewpie', 'tentang-kewpie', NULL, '<p class="p1">\n	PT. KEWPIE INDONESIA berdiri pada tahun 2013 dan memulai penjualan pertama khusus Food Service pada bulan Oktober 2014 . Dengan sertifikat halal dan NKV, Kewpie Indonesia menyediakan produk makanan halal, aman serta berkualitas untuk masyarakat Indonesia.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<span style="font-size:16px;"><strong>Timeline Perusahaan</strong></span></h2>\n<p class="p1">\n	<strong>1919</strong></p>\n<p class="p1">\n	Shokuhin Kogyo Co., Ltd, perusahaan awal yang sekarang disebut KEWPIE Corporation berdiri di Otaki-cho, Nakano-ku, Tokyo dan mulai memproduksi serta mengolah berbagai macam produk makanan.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>1925</strong></p>\n<p class="p1">\n	Penjualan KEWPIE Mayonnaise dimulai. Mayonais Kewpie dijual dalam kemasan toples kaca dengan berat 100 gram dan 128 gram, serta merupakan mayonaiss dalam kemasan toples pertama di Jepang.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>1957</strong></p>\n<p class="p1">\n	Perusahaan berganti nama menjadi KEWPIE Corporation, sesuai dengan nama merek mayonais yang sudah terkenal.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>2013</strong></p>\n<p class="p1">\n	PT. KEWPIE INDONESIA berdiri.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>2014</strong></p>\n<p class="p1">\n	Produk-produk PT. KEWPIE INDONESIA mendapatkan sertifikasi Halal dan NKV, serta memulai penjualan untuk produk Food Service.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>2015</strong></p>\n<p class="p1">\n	Penjualan produk retail PT. KEWPIE INDONESIA dimulai.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<span style="font-size:16px;"><strong>Sertifikasi Halal dan NKV</strong></span></h2>\n<p class="p1">\n	Seluruh produk Kewpie Indonesia bersertifikat halal resmi yang dikeluarkan oleh LPPOM MUI. Produk-produk yang berbahan dasar telur telah memiliki NKV resmi.&nbsp;</p>\n', NULL, 1, NULL, 1, 1432743493, 1432905599),
(9, 'tbl_page_menus', 6, 1, NULL, 'Berita Terbaru', 'berita-terbaru', NULL, '<p>\n	Berita Terbaru</p>\n', NULL, 1, NULL, 1, 1432743507, 1432756696),
(10, 'tbl_page_menus', 1, 1, NULL, 'Beranda', 'beranda', NULL, '<p>\n	Beranda</p>\n', NULL, 1, NULL, 1, 1432743518, 1432756702),
(14, 'tbl_products', 2, 1, NULL, 'Kewpie Mayonais Original Rasa Manis', 'kewpie-mayonais-original-rasa-manis', '<p>\n	Tipe yg lembut</p>\n', '<p class="p1">\n	KEWPIE MAYONAIS ORIGINAL RASA MANIS,&nbsp; hadir dengan rasa yang lebih manis. Lezat dan lembut, cocok untuk campuran sambal maupun saus untuk salad buah.&nbsp;</p>\n', '<div class="panel panel-primary" style="border: none;">\n	<div class="controle-header panel-heading panel-heading-landing">\n		<h3 class="panel-title panel-title-landing">\n			Komposisi Rata-rata Per 15 gr</h3>\n	</div>\n	<div class="panel-body panel-body-landing">\n		<table class="table">\n			<tbody>\n				<tr>\n					<td>\n						Energi (kcal)</td>\n					<td width="50px">\n						104</td>\n				</tr>\n				<tr>\n					<td>\n						Energi dari lemak (kcal)&nbsp;</td>\n					<td width="50px">\n						-</td>\n				</tr>\n				<tr>\n					<td>\n						Protein (g)</td>\n					<td width="50px">\n						1</td>\n				</tr>\n				<tr>\n					<td>\n						Lemak (g)</td>\n					<td width="50px">\n						11</td>\n				</tr>\n				<tr>\n					<td>\n						Kabohidrat (g)</td>\n					<td width="50px">\n						<p>\n							2</p>\n					</td>\n				</tr>\n				<tr>\n					<td>\n						Natrium</td>\n					<td width="50px">\n						80</td>\n				</tr>\n			</tbody>\n		</table>\n	</div>\n	<div class="panel-footer panel-footer-landing">\n		<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n	<div>\n		&nbsp;</div>\n</div>\n<p>\n	&nbsp;</p>\n', 1, NULL, 0, 1432744963, 1432907513),
(13, 'tbl_products', 1, 1, NULL, 'Kewpie Mayonais Original', 'kewpie-mayonais-original', '<p>\n	Ala Orang Jepang</p>\n', '<p class="p1">\n	Kaya akan telur, membuat KEWPIE MAYONAIS ORIGINAL sangat cocok untuk ditambahkan pada salad maupun teman makan gorengan.</p>\n', '<div class="panel panel-primary" style="border: none;">\n	<div class="controle-header panel-heading panel-heading-landing">\n		<h3 class="panel-title panel-title-landing">\n			Komposisi Rata-rata Per 15 gr</h3>\n	</div>\n	<div class="panel-body panel-body-landing">\n		<table class="table">\n			<tbody>\n				<tr>\n					<td>\n						Energi (kcal)</td>\n					<td width="50px">\n						100</td>\n				</tr>\n				<tr>\n					<td>\n						Energi dari lemak (kcal)&nbsp;</td>\n					<td width="50px">\n						100</td>\n				</tr>\n				<tr>\n					<td>\n						Protein (g)</td>\n					<td width="50px">\n						1</td>\n				</tr>\n				<tr>\n					<td>\n						Lemak (g)</td>\n					<td width="50px">\n						11</td>\n				</tr>\n				<tr>\n					<td>\n						Kabohidrat (g)</td>\n					<td width="50px">\n						<p>\n							0</p>\n					</td>\n				</tr>\n				<tr>\n					<td>\n						Natrium</td>\n					<td width="50px">\n						70</td>\n				</tr>\n			</tbody>\n		</table>\n	</div>\n	<div class="panel-footer panel-footer-landing">\n		<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n	<div>\n		&nbsp;</div>\n</div>\n<p class="p1">\n	&nbsp;</p>\n', 1, NULL, 0, 1432744925, 1432907392),
(15, 'tbl_products', 14, 1, NULL, 'Mayonais', 'mayonais', '<p>\n	Mayonais</p>\n', '<p>\n	Mayonais</p>\n', NULL, 1, NULL, 0, 1432744987, 1432744987),
(16, 'tbl_products', 15, 1, NULL, 'Saus Tiram', 'saus-tiram', '<p>\n	Saus Tiram</p>\n', '<p>\n	Saus Tiram</p>\n', NULL, 1, NULL, 0, 1432745001, 1432745001),
(17, 'tbl_products', 16, 1, NULL, 'Olesan Sandwich', 'olesan-sandwich', '<p>\n	Sandwich Tebar</p>\n', '<p>\n	Olesan Sandwich</p>\n', NULL, 1, NULL, 0, 1432745011, 1432814834),
(18, 'tbl_products', 17, 1, NULL, 'Saus Manis', 'saus-manis', '<p>\n	Saus Manis</p>\n', '<p>\n	Saus Manis</p>\n', NULL, 1, NULL, 0, 1432745070, 1432745070),
(19, 'tbl_product_categories', 1, 1, NULL, 'Mayonais', '', NULL, '<p>\n	Mayonais</p>\n', NULL, 1, NULL, 1, 1432745302, 1432745416),
(20, 'tbl_product_categories', 2, 1, NULL, 'Saus Siram', 'saus-siram', NULL, '<p>\n	Saus Siram</p>\n', NULL, 1, NULL, 1, 1432745429, 1432896847),
(21, 'tbl_product_categories', 3, 1, NULL, 'Saus Manis', 'saus-manis', NULL, '<p>\n	Saus Manis</p>\n', NULL, 1, NULL, 1, 1432745442, 1432896818),
(22, 'tbl_product_categories', 4, 1, NULL, 'Bisnis Makanan', 'bisnis-makanan', NULL, '<p class="p1">\n	Bisnis Makanan</p>\n', NULL, 1, NULL, 1, 1432745449, 1432897069),
(23, 'tbl_pages', 12, 1, NULL, 'Asal Mula Mayones Kewpie', 'asal-mula-mayones-kewpie', '<p>\r\n	<span style="font-size: 12.222222328186px;">Touichiro Nakashima (penemu KEWPIE mayonnaise) pertama kali mengenal mayonais pada tahun 1912, saat ia berkunjung ke Amerika Serikat untuk mempelajari makanan kaleng. Saat itu, dalam kesehariannya orang Amerika menyantap salad kentang dengan mayonais. Santapan yang lezat dan bergizi ini begitu berkesan bagi Nakashima sehingga ia bertekad untuk menyebarluaskan mayonais di Jepang.&nbsp;</span></p>\r\n', '<p>\r\n	Touichiro Nakashima (penemu KEWPIE mayonnaise) pertama kali mengenal mayonais pada tahun 1912, saat ia berkunjung ke Amerika Serikat untuk mempelajari makanan kaleng. Saat itu, dalam kesehariannya orang Amerika menyantap salad kentang dengan mayonais. Santapan yang lezat dan bergizi ini begitu berkesan bagi Nakashima sehingga ia bertekad untuk menyebarluaskan mayonais di Jepang.</p>\r\n<p>\r\n	Sekembalinya ke Jepang, Nakashima mulai mengembangkan mayonais bergizi tinggi, yang banyak mengandung kuning telur. Mayonais tersebut mulai dijual di Jepang pada tahun 1925 dengan merek Kewpie. Kewpie Mayonnaise merupakan mayonais produksi dalam negeri pertama di Jepang.</p>\r\n<p>\r\n	Pada perkembangannya sekarang, selain mayonais, Kewpie menyediakan produk-produk makanan yang berkualitas untuk segala usia di berbagai negara di dunia.&nbsp;</p>\r\n', NULL, 1, NULL, 0, 1432767369, 1433131818),
(24, 'tbl_pages', 13, 1, NULL, 'Proses Produksi', 'proses-produksi', NULL, '<p>\n	Semua varian produk dari Kewpie Indonesia dibuat dari bahan-bahan berkualitas, diproses dengan baik sehingga menghasilkan produk yang aman dikonsumsi. Dengan tube berstandar pangan, produk-produk Mayonais, Olesan Sandwich serta Saus Manis mudah digunakan dan dibawa. Sangat praktis untuk membuat lining pada makanan atau kreasi gambar pada roti.</p>\n', NULL, 1, NULL, 0, 1432768802, 1432889503),
(25, 'tbl_pages', 14, 1, NULL, 'Bahan Dasar Kewpie Mayonnaise', 'bahan-dasar-kewpie-mayonnaise', NULL, '<p>\n	Made from egg, vinegar and soy oil processed with Kewpie technology, Kewpie Mayonnaise is produced in a good emulsion process. The emulsion process produces smaller and thicker particles compared to other mayonnaise products, thus making Kewpie mayonnaise tastes soft but dense.</p>\n', NULL, 1, NULL, 0, 1432789092, 1432889419),
(26, 'tbl_products', 18, 1, NULL, 'Kewpie Mayo Serbaguna', 'kewpie-mayo-serbaguna', NULL, '<p>\n	Kami menyediakan produk-produk yang disesuaikan dengan kebutuhan food service atau bisnis makanan. Terdiri dari Mayonnaise, Dressing dan Cooking Sauce, kami dapat mendukung penciptaan makanan berkualitas dalam bisnis Anda. Informasi selanjutnya</p>\n', '<div class="panel panel-primary" style="border: none;">\n	<div class="controle-header panel-heading panel-heading-landing">\n		<h3 class="panel-title panel-title-landing">\n			Komposisi Rata-rata Per 25ml</h3>\n	</div>\n	<!-- <div class="controle-panel-heading panel-heading panel-heading-landing-box">\n                                                    Best Choice\n                                                </div> -->\n	<div class="panel-body panel-body-landing">\n		<table class="table">\n			<tbody>\n				<tr>\n					<td>\n						Energi (kcal)</td>\n					<td width="50px">\n						90</td>\n				</tr>\n				<tr>\n					<td>\n						Protein (g)</td>\n					<td width="50px">\n						90</td>\n				</tr>\n				<tr>\n					<td>\n						Lemak (g)</td>\n					<td width="50px">\n						90</td>\n				</tr>\n				<tr>\n					<td>\n						Kabohidrat (g)</td>\n					<td width="50px">\n						90</td>\n				</tr>\n			</tbody>\n		</table>\n	</div>\n	<div class="panel-footer panel-footer-landing">\n		<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n</div>\n<p>\n	&nbsp;</p>\n', 1, NULL, 0, 1432801821, 1432806511),
(27, 'tbl_products', 13, 1, NULL, 'Layanan Makanan', 'layanan-makanan', NULL, '<p>\n	Layanan Makanan</p>\n', NULL, 1, NULL, 0, 1432801936, 1432801937),
(28, 'tbl_product_recipes', 1, 1, NULL, 'Gado Gado Baru', 'gado-gado-baru', '<p>\n	Gado Gado Baru</p>\n', '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		Kentang</li>\n	<li>\n		Wortel</li>\n	<li>\n		Telur Rebus</li>\n	<li>\n		Kerupuk Udang</li>\n	<li>\n		Kol</li>\n	<li>\n		Tauge</li>\n	<li>\n		Lontong</li>\n	<li>\n		Kewpie Saus Siram dengan Wijen Sangrai</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Rebus kol, tauge, telur, wortel serta kentang.</li>\n	<li>\n		Potong-potong lontong.</li>\n	<li>\n		Goreng kerupuk udang.</li>\n	<li>\n		Sajikan semua bahan-bahan di atas piring</li>\n	<li>\n		Tuang saus siram di atasnya.&nbsp;</li>\n</ol>\n', NULL, 1, NULL, 0, 1432809431, 1432912148),
(29, 'tbl_product_recipes', 2, 1, NULL, 'Seafood Salad', 'seafood-salad', '<p>\n	Seafood Salad</p>\n', '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		Udang</li>\n	<li>\n		Cumi</li>\n	<li>\n		Salmon</li>\n	<li>\n		Selada</li>\n	<li>\n		Tomat Ceri</li>\n	<li>\n		Paprika Kuning</li>\n	<li>\n		Kewpie Saus Siram dengan Kecap Ala Jepang</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Rebus udang dan cumi.</li>\n	<li>\n		Panggang cumi di atas wajan.</li>\n	<li>\n		Potong paprika dan tomat ceri sesuai selera.</li>\n	<li>\n		Taruh selada di atas piring, tata semua bahan di atas selada</li>\n	<li>\n		Tuangkan saus siram di atasnya.</li>\n</ol>\n', NULL, 1, NULL, 0, 1432814048, 1432912212),
(30, 'tbl_product_recipes', 3, 1, NULL, 'Buffalo Chicken Salad', 'buffalo-chicken-salad', '<p>\n	Buffalo Chicken Salad</p>\n', '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		Sayap Ayam Goreng</li>\n	<li>\n		Tomat</li>\n	<li>\n		Selada</li>\n	<li>\n		Daun Bawang</li>\n	<li>\n		Jeruk Nipis</li>\n	<li>\n		Kewpie Saus Siram Tomat Pedas</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Tata selada di atas piring.</li>\n	<li>\n		Taruh ayam goreng di atasnya.</li>\n	<li>\n		Taruh jeruk nipis dan bawang merah sesuai selera</li>\n	<li>\n		Tuang saus siram di atasnya.&nbsp;</li>\n</ol>\n', NULL, 1, NULL, 0, 1432814051, 1432912317),
(31, 'tbl_product_recipes', 4, 1, NULL, 'Caesar Salad ala Amerika', 'caesar-salad-ala-amerika', '<p>\n	Caesar Salad ala Amerika</p>\n', '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		Ayam Panggang (daging dada)</li>\n	<li>\n		Buah Zaitun (potong membentuk lingkaran)</li>\n	<li>\n		Crouton</li>\n	<li>\n		Romaine Lettuce</li>\n	<li>\n		Kewpie Saus Siram Caesar</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Panggang ayam.</li>\n	<li>\n		Potong buah zaitun membentuk lingkaran</li>\n	<li>\n		Sobek-sobek daun selada.</li>\n	<li>\n		Taruh ayam dan buah zaitun di atas selada</li>\n	<li>\n		Tuangkan saus siram di atasnya.</li>\n</ol>\n<p>\n	&nbsp;</p>\n', NULL, 1, NULL, 0, 1432818645, 1432912431),
(32, 'tbl_product_recipes', 5, 1, NULL, 'Salad Rebusan', 'salad-rebusan', '<p>\n	Salad Rebusan</p>\n', '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		Udang</li>\n	<li>\n		Telur</li>\n	<li>\n		Brokoli</li>\n	<li>\n		Wortel</li>\n	<li>\n		Kentang</li>\n	<li>\n		Kewpie Saus Siram Thousand Island</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Rebus udang, brokoli, wortel, kentang serta telur.</li>\n	<li>\n		Tata sesuai selera</li>\n	<li>\n		Tuang saus siram di atasnya.</li>\n</ol>\n<p>\n	&nbsp;</p>\n', NULL, 1, NULL, 0, 1432821791, 1432912778),
(33, 'tbl_product_recipes', 6, 1, NULL, 'Masakan Rumahan Bagi Yang Sibuk', 'masakan-rumahan-bagi-yang-sibuk', NULL, '<p>\n	Home Cooking for the Busy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n', NULL, 1, NULL, 0, 1432829886, 1432829903),
(34, 'tbl_pages', 15, 1, NULL, 'Filosofi Perusahaan', 'filosofi-perusahaan', NULL, '<h2>\n	<strong>Motto Perusahaan</strong></h2>\n<p class="p1">\n	<cite><em>Raku Gyou Kai Etsu&nbsp; &nbsp; </em></cite></p>\n<p class="p1">\n	Dalam pekerjaan, rasa sukacita sejati muncul dari kerjasama untuk mewujudkan tujuan yang sama.&nbsp; Jika proses tersebut dapat dicapai, seseorang dapat merasa lapang dan percaya diri. Rasa lapang dan percaya diri tersebut dapat meningkatkan kemampuan individual, dan kemudian mendorong perkembangan perusahaan.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Prinsip Perusahaan</strong></h2>\n<p class="p1">\n	<cite>&quot;Bertindak Menurut Moralitas&quot;, </cite></p>\n<p class="p1">\n	<cite>&quot;Berupaya Demi Orisinalitas dan Kreativitas&quot;, </cite></p>\n<p class="p1">\n	<cite>&quot;Menghargai Orangtua&quot;</cite></p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Filosofi Manajemen</strong></h2>\n<p class="p1">\n	Kami berkontribusi untuk kehidupan yang sehat dengan kelezatan, kebaikan, dan keunikan.&nbsp;</p>\n<p class="p1">\n	&nbsp;</p>\n<h2 class="p1">\n	<strong>Tujuan</strong></h2>\n<ul>\n	<li class="p1">\n		Menciptakan produk makanan lezat yang dapat dicintai oleh masyarakat Indonesia.&nbsp;</li>\n	<li class="p1">\n		Memberikan kebaikan serta kemudahan yang terwujud dalam produk yang dibuat dari bahan baku berkualitas, serta dikemas dalam kemasan yang aman dan mudah digunakan.&nbsp;</li>\n	<li class="p1">\n		Menghadirkan keunikan dengan mengedepankan kreativitas dalam pengembangan produk.</li>\n</ul>\n', NULL, 1, NULL, 0, 1432895023, 1432905863),
(35, 'tbl_pages', 16, 1, NULL, 'Pesan Presiden Direktur', 'pesan-presiden-direktur', '<p>\n	<strong style="font-size: 16px;">Dengan &ldquo;Kelezatan, Kebaikan dan Keunikan&rdquo;, Kewpie Indonesia berkontribusi kepada kebiasaan makan masyarakat Indonesia.</strong></p>\n', '<p class="p1">\n	<span style="font-size:16px;"><strong>Dengan &ldquo;Kelezatan, Kebaikan dan Keunikan&rdquo;, Kewpie Indonesia berkontribusi kepada kebiasaan makan masyarakat Indonesia.</strong></span></p>\n<p class="p1">\n	Sejak berdiri pada tahun 1919, perhatian besar Kewpie Group terhadap bahan baku yang dituangkan dalam ide &ldquo;Produk yang baik hanya terlahir dari bahan baku yang baik&rdquo;, akan terus dijaga dalam pembuatan produk sampai kapanpun.</p>\n<p class="p1">\n	Dengan ide ini juga, Kewpie Indonesia mempersembahkan produk halal yang aman dan terjamin, yang dibuat di lini produksi dengan kontrol kualitas menyeluruh, bagi masyarakat Indonesia. &nbsp;</p>\n<p class="p1">\n	Lalu, dengan semangat pelopor, Kewpie Group memasarkan mayonais dan dressing pertama di Jepang. Berdasarkan semangat ini, di Indonesia pun kami mengusulkan kebiasaan makan yang sehat dengan mengembangkan produk saus baru yang lezat.</p>\n<p class="p1">\n	Terakhir, dengan mengutamakan konsumen, kami berusaha dengan menerapkan ide &ldquo;Kualitas Produk yang Utama&rdquo;. &ldquo;Mempersembahkan Rasa yang Digemari dalam Budaya Makan Indonesia&rdquo;, serta &ldquo;Menciptakan Budaya Makan yang Baru&rdquo;.&nbsp;<br />\n	<img alt="" src="/uploads/static/content/images/Yamashita-san-signature.png" style="width: 157px; height: 129px;" /><br />\n	Yamashita San</p>\n', NULL, 1, NULL, 0, 1432895208, 1433319826),
(36, 'tbl_pages', 17, 1, NULL, 'Hubungi Kami', 'hubungi-kami', NULL, '<p class="p1">\n	<strong>Head Office/Factory</strong></p>\n<p class="p1">\n	Kota Deltamas Blok CC NO.5, Cikarang Pusat, Bekasi, Jawa Barat, Indonesia.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>Sales Office</strong></p>\n<p class="p1">\n	Ruko Kebayoran Arcade 3 Blok KA/E1-09, Bintaro Jaya, Tangerang Selatan, Indonesia.</p>\n<p class="p1">\n	&nbsp;</p>\n<p class="p1">\n	<strong>Email for Sales Inquiries</strong></p>\n<p class="p1">\n	sales@ml.kewpie.co.id<br />\n	<br />\n	<img alt="" src="/uploads/static/content/images/contact-tag.png" /></p>\n', NULL, 1, NULL, 0, 1432895595, 1433319877),
(37, 'tbl_product_categories', 5, 1, NULL, 'Olesan Sandwich', 'olesan-sandwich', NULL, '<p>\n	Olesan Sandwich</p>\n', NULL, 1, NULL, 0, 1432896800, 1432896800),
(38, 'tbl_products', 4, 1, NULL, 'Kewpie Saus Siram dengan Wijen Sangrai', 'kewpie-saus-siram-dengan-wijen-sangrai', NULL, '<p class="p1">\n	Aroma wijen sangrai khasnya membuat KEWPIE SAUS SIRAM DENGAN WIJEN SANGRAI sangat pas untuk hidangan tumisan maupun rebusan.&nbsp;</p>\n', '<div class="controle-header panel-heading panel-heading-landing">\n	<h3 class="panel-title panel-title-landing">\n		Komposisi Rata-rata Per 25 ml</h3>\n</div>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energi (kcal)</td>\n				<td width="50px">\n					90</td>\n			</tr>\n			<tr>\n				<td>\n					Energi dari lemak (kcal)&nbsp;</td>\n				<td width="50px">\n					60</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Lemak (g)</td>\n				<td width="50px">\n					7</td>\n			</tr>\n			<tr>\n				<td>\n					Kabohidrat (g)</td>\n				<td width="50px">\n					<p>\n						5</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					190</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class="panel-footer panel-footer-landing">\n	<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n<div>\n	&nbsp;</div>\n<p class="p1">\n	&nbsp;</p>\n', 1, NULL, 0, 1432898662, 1432907687),
(39, 'tbl_products', 5, 1, NULL, 'Kewpie Saus Siram dengan Kecap Ala Jepang', 'kewpie-saus-siram-dengan-kecap-ala-jepang', NULL, '<p class="p1">\n	Kelezatan wijen dan bawang bombay yang terkandung dalam KEWPIE SAUS SIRAM DENGAN KECAP ALA JEPANG sangat pas dipadukan dengan sayuran, ikan maupun buah.&nbsp;</p>\n', '<div class="controle-header panel-heading panel-heading-landing">\n	<h3 class="panel-title panel-title-landing">\n		Komposisi Rata-rata Per 25 gr</h3>\n</div>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energi (kcal)</td>\n				<td width="50px">\n					60</td>\n			</tr>\n			<tr>\n				<td>\n					Energi dari lemak (kcal)&nbsp;</td>\n				<td width="50px">\n					45</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Lemak (g)</td>\n				<td width="50px">\n					5</td>\n			</tr>\n			<tr>\n				<td>\n					Kabohidrat (g)</td>\n				<td width="50px">\n					<p>\n						3</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					260</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class="panel-footer panel-footer-landing">\n	<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n<div>\n	&nbsp;</div>\n<p class="p1">\n	&nbsp;</p>\n', 1, NULL, 0, 1432899088, 1432907827),
(40, 'tbl_products', 6, 1, NULL, 'Kewpie Saus Tiram Tomat Pedas', 'kewpie-saus-tiram-tomat-pedas', NULL, '<p class="p1">\n	KEWPIE SAUS SIRAM TOMAT PEDAS, kelezatan tomat yang berpadu dengan rasa pedas yang lembut, lezat untuk hidangan salad, pasta dan ayam.&nbsp;</p>\n', '<div class="controle-header panel-heading panel-heading-landing">\n	<h3 class="panel-title panel-title-landing">\n		Komposisi Rata-rata Per 25 ml</h3>\n</div>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energi (kcal)</td>\n				<td width="50px">\n					80</td>\n			</tr>\n			<tr>\n				<td>\n					Energi dari lemak (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Lemak (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Kabohidrat (g)</td>\n				<td width="50px">\n					<p>\n						5</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					350</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class="panel-footer panel-footer-landing">\n	<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n<div>\n	&nbsp;</div>\n', 1, NULL, 0, 1432899609, 1432907961),
(41, 'tbl_products', 7, 1, NULL, 'Kewpie Saus Siram Caesar', 'kewpie-saus-siram-caesar', NULL, '<p class="p1">\n	Dibuat dari perpaduan dua jenis keju yang kaya, KEWPIE SAUS SIRAM CAESAR melezatkan salad caesar dan juga aneka hidangan ayam.&nbsp;</p>\n', '<div class="controle-header panel-heading panel-heading-landing">\n	<h3 class="panel-title panel-title-landing">\n		Komposisi Rata-rata Per 25 gr</h3>\n</div>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energi (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energi dari lemak (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Lemak (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Kabohidrat (g)</td>\n				<td width="50px">\n					<p>\n						3</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					190</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class="panel-footer panel-footer-landing">\n	<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n<div>\n	&nbsp;</div>\n', 1, NULL, 0, 1432900654, 1432908065),
(42, 'tbl_products', 8, 1, NULL, 'Kewpie Saus Siram Thousand Island', 'kewpie-saus-siram-thousand-island', NULL, '<p class="p1">\n	Tambahkan KEWPIE SAUS SIRAM THOUSAND ISLAND pada hidangan salad sayur dan buah, serta udang, untuk rasa yang lebih kaya.</p>\n', '<div class="controle-header panel-heading panel-heading-landing">\n	<h3 class="panel-title panel-title-landing">\n		Komposisi Rata-rata Per 25 ml</h3>\n</div>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energi (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energi dari lemak (kcal)&nbsp;</td>\n				<td width="50px">\n					50</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					1</td>\n			</tr>\n			<tr>\n				<td>\n					Lemak (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Kabohidrat (g)</td>\n				<td width="50px">\n					<p>\n						4</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					260</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class="panel-footer panel-footer-landing">\n	<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n<div>\n	&nbsp;</div>\n<p class="p1">\n	&nbsp;</p>\n', 1, NULL, 0, 1432901075, 1432908118),
(43, 'tbl_products', 11, 1, NULL, 'Kewpie Olesan Sandwich Rasa Kelapa', 'kewpie-olesan-sandwich-rasa-kelapa', NULL, '<p class="p1">\n	KEWPIE OLESAN SANDWICH RASA KELAPA, olesan untuk sandwich dengan rasa kelapa unik yang belum pernah ada sebelumnya. Tambahkan pada roti, salad buah maupun cemilan manis, untuk rasa yang segar!</p>\n', '<p class="p1">\n	Takaran Saji : 15 g,</p>\n<p class="p1">\n	Energi Total 60 g,</p>\n<p class="p1">\n	Energi dari Lemak 45 kkal,</p>\n<p class="p1">\n	Lemak Total 5 g,</p>\n<p class="p1">\n	Protein 0 g,</p>\n<p class="p1">\n	Karbohidrat 3 g,</p>\n<p class="p1">\n	Natrium 115 mg</p>\n', 1, NULL, 0, 1432902127, 1432902127),
(44, 'tbl_products', 3, 1, NULL, 'Kewpie Saus Mayo Gurih ', 'kewpie-saus-mayo-gurih', NULL, '<p class="p1">\n	Terbuat dari berbagai macam bumbu, KEWPIE MAYO SAUS GURIH cocok untuk cocolan aneka macam gorengan.</p>\n', '<div class="controle-header panel-heading panel-heading-landing">\n	<h3 class="panel-title panel-title-landing">\n		Komposisi Rata-rata Per 15 gr</h3>\n</div>\n<div class="panel-body panel-body-landing">\n	<table class="table">\n		<tbody>\n			<tr>\n				<td>\n					Energi (kcal)</td>\n				<td width="50px">\n					70</td>\n			</tr>\n			<tr>\n				<td>\n					Energi dari lemak (kcal)&nbsp;</td>\n				<td width="50px">\n					-</td>\n			</tr>\n			<tr>\n				<td>\n					Protein (g)</td>\n				<td width="50px">\n					0</td>\n			</tr>\n			<tr>\n				<td>\n					Lemak (g)</td>\n				<td width="50px">\n					6</td>\n			</tr>\n			<tr>\n				<td>\n					Kabohidrat (g)</td>\n				<td width="50px">\n					<p>\n						4</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					Natrium</td>\n				<td width="50px">\n					5</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class="panel-footer panel-footer-landing">\n	<a class="btn btn-price btn-danger" href="#">Resep</a></div>\n<div>\n	&nbsp;</div>\n<p class="p1">\n	&nbsp;</p>\n', 1, NULL, 0, 1432907562, 1432907633),
(45, 'tbl_product_recipes', 10, 1, NULL, 'Roti Isi Telur', 'roti-isi-telur', '<p>\n	Roti Isi Telur (untuk 2 orang)</p>\n', '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		3 lembar Roti Tawar Tanpa Kulit</li>\n	<li>\n		2 butir &nbsp;Telur Rebus</li>\n	<li>\n		Garam secukupnya</li>\n	<li>\n		2 sdm Kewpie Mayonais Original</li>\n</ul>\n<p>\n	&nbsp;&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Masukkan telur rebus ke dalam mangkuk, kecil. Tambahkahancurkan dengan garpu sampai menjadi gumpalan-gumpalan. Tambahkan garam dan mayonais, campur hingga rata.</li>\n	<li>\n		Siapkan roti, oleskan mayonais di atasnya sesuai selera, tambahkan campuran telur rebus lalu tumpuk. Lakukan berulang sampai roti habis, lalu potong berbentuk segitiga. Sandwich siap disajikan.</li>\n</ol>\n', NULL, 1, NULL, 0, 1432912959, 1432912960),
(46, 'tbl_product_recipes', 13, 1, NULL, 'Sandwich Brokoli dan Telur Tumis Mayonais', 'sandwich-brokoli-dan-telur-tumis-mayonais', NULL, '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		6 lembar Roti Tawar</li>\n	<li>\n		&frac12; bonggol Brokoli&nbsp;</li>\n	<li>\n		2 lembar Beef Bacon</li>\n	<li>\n		2 butir Telur&nbsp;</li>\n	<li>\n		Lada&nbsp; secukupnya</li>\n	<li>\n		&frac12; sdm Kewpie Mayonais Original</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Pisahkan brokoli menjadi bagian-bagian kecil. Potong beef bacon sehingga lebarnya menjadi kira-kira 1 cm.</li>\n	<li>\n		Kocok telur dalam mangkuk, tambahkan mayonais &frac12; sdm, campur hingga rata.</li>\n	<li>\n		Masukkan mayonais 1 sdm ke dalam wajan, nyalakan api, tumis (1). Selagi api menyala, tambahkan mayonais lagi, tumis sebentar.</li>\n	<li>\n		Sisihkan (3) ke bagian pinggir wajan, tambahkan (2) pada tempat yang kosong dalam wajan, kecilkan api, campur semuanya hingga merata.</li>\n	<li>\n		Taruh (4) di atas roti, taburkan lada, tumpuk roti lalu potong sesuai selera.&nbsp;&nbsp;</li>\n</ol>\n', NULL, 1, NULL, 0, 1432913657, 1432913657),
(47, 'tbl_product_recipes', 12, 1, NULL, 'Roti dengan Salad Telur', 'roti-dengan-salad-telur', NULL, '<h3>\n	Bahan-bahan:</h3>\n<ul>\n	<li>\n		Roti Tawar &nbsp; &nbsp;&nbsp; 2 lembar</li>\n	<li>\n		Selada&nbsp; 2 lembar</li>\n	<li>\n		Telur &nbsp; 2 butir</li>\n	<li>\n		Beef Bacon* &nbsp;1 buah</li>\n	<li>\n		Minyak Goreng&nbsp; secukupnya</li>\n	<li>\n		Kewpie Mayonais Original&nbsp;&nbsp; secukupnya</li>\n</ul>\n<p style="margin-left: 40px;">\n	*) Beef bacon dapat diganti smoked beef</p>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<ol>\n	<li>\n		Cuci selada dengan air dingin, lalu tiriskan airnya. Sobek menjadi ukuran yang mudah dimakan</li>\n	<li>\n		Potong bacon sehingga lebarnya menjadi kira- kira 2 cm, tumis di atas wajan tanpa menggunakan minyak. Setelah itu, tambahkan minyak di wajan yang sama, tunggu sampai panas, masukkan telur yang sudah dikocok lalu aduk secara acak.</li>\n	<li>\n		Taruh selada dan bacon di atas roti, tambahkan mayonais di atasnya</li>\n</ol>\n', NULL, 1, NULL, 0, 1432913838, 1432913838),
(48, 'tbl_product_recipes', 11, 1, NULL, 'Roti Gulung 2 Jenis', 'roti-gulung-2-jenis', NULL, '<p>\n	Bahan-bahan:</p>\n<ul>\n	<li>\n		Roti Tawar tanpa Kulit&nbsp; 8 lembar</li>\n	<li>\n		Smoked Beef&nbsp; 2 lembar</li>\n	<li>\n		Selada&nbsp; 4 lembar</li>\n	<li>\n		Nori&nbsp; &frac12; lembar</li>\n	<li>\n		Tuna Kalengan&nbsp; 80 g</li>\n	<li>\n		Kewpie Mayonais Original secukupnya &nbsp;</li>\n</ul>\n<p>\n	&nbsp;</p>\n<h3>\n	Cara Membuat:</h3>\n<p>\n	(Untuk Nori and Smoked Beef Sandwich)</p>\n<ol>\n	<li>\n		Potong nori menjadi 4 bagian.</li>\n	<li>\n		Oleskan mayonais di roti, taruh bahan-bahan dengan urutan: 2 lembar selada yang sudah diremas, potongan nori, smoked beef, gulung lalu potong menyerong menjadi 2 bagian.</li>\n</ol>\n<p>\n	(Untuk Tuna Mayo Roll)</p>\n<ol>\n	<li>\n		Campur tuna dan mayonais untuk membuat tuna mayo.</li>\n	<li>\n		Oleskan tuna mayo pada roti, taruh selada yang sudah diremas dan tuna di atasnya, gulung lalu potong menyerong menjadi 2 bagian.</li>\n</ol>\n', NULL, 1, NULL, 0, 1432914077, 1432914078),
(49, 'tbl_news', 2, 1, NULL, 'Kewpie Indonesia di Grand Opening AEON Retail (30 Mei 2015)', 'kewpie-indonesia-di-grand-opening-aeon-retail-30-mei-2015', '<div>\n	Kewpie Indonesia turut hadir pada event grand opening toko pertama AEON Retail, di Alam Sutera, Serpong.&nbsp;</div>\n<div>\n	Dalam kesempatan ini, Kewpie Indonesia meluncurkan 4 produk pertamanya, yaitu Mayonais Original,&nbsp;</div>\n<div>\n	Saus Siram dengan Wijen Sangrai, Saus Siram Tomat Pedas dan Saus Siram Thousand Island. &nbsp;</div>\n<div>\n	Peluncuran ini juga merupakan peluncuran pertama produk Kewpie pada retail.</div>\n<div>\n	Selain kegiatan sampling, Kewpie Indonesia juga melakukan aktivitas cooking demo&nbsp;</div>\n<div>\n	untuk memperkenalkan produk-produk kepada para pengunjung.</div>\n', '<div>\n	Kewpie Indonesia turut hadir pada event grand opening toko pertama AEON Retail, di Alam Sutera, Serpong.&nbsp;</div>\n<div>\n	Dalam kesempatan ini, Kewpie Indonesia meluncurkan 4 produk pertamanya, yaitu Mayonais Original,&nbsp;</div>\n<div>\n	Saus Siram dengan Wijen Sangrai, Saus Siram Tomat Pedas dan Saus Siram Thousand Island. &nbsp;</div>\n<div>\n	Peluncuran ini juga merupakan peluncuran pertama produk Kewpie pada retail.</div>\n<div>\n	Selain kegiatan sampling, Kewpie Indonesia juga melakukan aktivitas cooking demo&nbsp;</div>\n<div>\n	untuk memperkenalkan produk-produk kepada para pengunjung.</div>\n', NULL, 1, NULL, 0, 1433132042, 1433324176),
(50, 'tbl_news', 3, 1, NULL, 'Ada banyak variasi tulisan Lorem Ipsum yang tersedia', 'ada-banyak-variasi-tulisan-lorem-ipsum-yang-tersedia', '<p>\r\n	Ada banyak variasi tulisan Lorem Ipsum yang tersedia, tapi kebanyakan sudah mengalami perubahan dalam beberapa bentuk, dengan humor disuntikkan, atau acak kata yang tidak terlihat bahkan sedikit dipercaya.</p>\r\n', '<p>\r\n	Ada banyak variasi tulisan Lorem Ipsum yang tersedia, tapi kebanyakan sudah mengalami perubahan dalam beberapa bentuk, dengan humor disuntikkan, atau acak kata yang tidak terlihat bahkan sedikit dipercaya. Jika Anda akan menggunakan bagian dari Lorem Ipsum, anda harus yakin tidak ada sesuatu yang memalukan yang tersembunyi di tengah-tengah teks. Semua generator Lorem Ipsum di internet cenderung untuk mengulang potongan yang telah ditetapkan sebagai diperlukan, membuat ini generator pertama yang sebenarnya di internet. Menggunakan kamus lebih dari 200 kata Latin, dikombinasikan dengan beberapa contoh struktur kalimat untuk menghasilkan Lorem Ipsum yang terlihat wajar. Oleh karena itu dihasilkan Lorem Ipsum selalu bebas dari pengulangan, humor disuntikkan, atau kata-kata non-karakteristik dll</p>\r\n', NULL, 1, NULL, 0, 1433132078, 1433132079),
(51, 'tbl_news', 1, 1, NULL, 'Kewpie Hadir di Indonesia', 'kewpie-hadir-di-indonesia', '<div>\n	Setelah mengembangkan bisnis di 5 negara, Kewpie Corporation membuka bisnis baru di Indonesia.&nbsp;</div>\n<div>\n	Didirikan pada tahun 2013 dengan pabrik di daerah Cikarang, PT. KEWPIE INDONESIA memulai penjualan&nbsp;</div>\n<div>\n	untuk food service pada bulan Oktober 2014 dan untuk retail pada bulan Mei 2015.&nbsp;</div>\n<div>\n	Tidak hanya berkualitas dan aman, Kewpie Indonesia menyediakan produk-produk yang halal dan diharapkan dapat dinikmati oleh kalangan luas di seluruh Indonesia</div>\n<div>\n	&nbsp;</div>\n', '<div>\n	Setelah mengembangkan bisnis di 5 negara, Kewpie Corporation membuka bisnis baru di Indonesia.&nbsp;</div>\n<div>\n	Didirikan pada tahun 2013 dengan pabrik di daerah Cikarang, PT. KEWPIE INDONESIA memulai penjualan&nbsp;</div>\n<div>\n	untuk food service pada bulan Oktober 2014 dan untuk retail pada bulan Mei 2015.&nbsp;</div>\n<div>\n	Tidak hanya berkualitas dan aman, Kewpie Indonesia menyediakan produk-produk yang halal dan diharapkan dapat dinikmati oleh kalangan luas di seluruh Indonesia</div>\n<div>\n	&nbsp;</div>\n', NULL, 1, NULL, 0, 1433132157, 1433323718),
(52, 'tbl_news', 5, 1, NULL, 'Arti dari Lorem Ipsum', 'arti-dari-lorem-ipsum', '<p>\r\n	Di sisi lain, kami mencela dengan marah benar dan tidak suka laki-laki yang begitu terpedaya dan demoralisasi oleh pesona kesenangan saat ini, sehingga dibutakan oleh keinginan, bahwa mereka tidak dapat meramalkan rasa sakit dan kesulitan yang terikat untuk terjadi; dan menyalahkan sama milik mereka yang gagal dalam tugas mereka melalui kelemahan kehendak, yang sama dengan mengatakan melalui menyusut dari kerja keras dan nyeri. Kasus-kasus ini sangat sederhana dan mudah untuk membedakan.</p>\r\n', '<p>\r\n	Di sisi lain, kami mencela dengan marah benar dan tidak suka laki-laki yang begitu terpedaya dan demoralisasi oleh pesona kesenangan saat ini, sehingga dibutakan oleh keinginan, bahwa mereka tidak dapat meramalkan rasa sakit dan kesulitan yang terikat untuk terjadi; dan menyalahkan sama milik mereka yang gagal dalam tugas mereka melalui kelemahan kehendak, yang sama dengan mengatakan melalui menyusut dari kerja keras dan nyeri. Kasus-kasus ini sangat sederhana dan mudah untuk membedakan. Dalam jam gratis, ketika kekuatan kita pilihan adalah lepas dan ketika tidak ada yang mencegah kita mampu melakukan apa yang kita sukai, setiap kesenangan yang akan menyambut dan setiap rasa sakit dihindari. Tapi pada kondisi tertentu dan karena klaim dari tugas atau kewajiban bisnis sering akan terjadi bahwa kesenangan harus ditolak dan gangguan diterima. Orang bijak karena itu selalu memegang dalam hal ini prinsip ini seleksi: ia menolak kesenangan untuk mengamankan kesenangan yang lebih besar lainnya, atau dia bertahan sakit untuk menghindari rasa sakit yang lebih buruk.</p>\r\n', NULL, 1, NULL, 0, 1433132217, 1433132238),
(53, 'tbl_news', 4, 1, NULL, 'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan typesetting', 'lorem-ipsum-adalah-contoh-teks-atau-dummy-dalam-industri-percetakan-dan-typesetting', '<p>\r\n	Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan typesetting. Lorem Ipsum telah menjadi standar industri teks dummy sejak tahun 1500-an, ketika sebuah printer yang tidak dikenal mengambil dapur jenis dan acak untuk membuat sebuah buku jenis spesimen.</p>\r\n', '<p>\r\n	Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan typesetting. Lorem Ipsum telah menjadi standar industri teks dummy sejak tahun 1500-an, ketika sebuah printer yang tidak dikenal mengambil dapur jenis dan acak untuk membuat sebuah buku jenis spesimen. Ini tidak hanya bertahan lima abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan. Ini dipopulerkan pada tahun 1960 dengan merilis lembaran Letraset berisi ayat-ayat Lorem Ipsum, dan baru-baru dengan perangkat lunak desktop publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>\r\n', NULL, 1, NULL, 0, 1433132259, 1433132272);

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
(1, 'admin', 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 1, 1433319970, 1, 1, 'ecaf26ba5889aa6aac1b0f6b967b0f4f', 0, 0),
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
