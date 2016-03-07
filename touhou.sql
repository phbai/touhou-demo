-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 10 月 24 日 09:22
-- 服务器版本: 5.5.44
-- PHP 版本: 5.3.10-1ubuntu3.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `touhou`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add character', 7, 'add_character'),
(20, 'Can change character', 7, 'change_character'),
(21, 'Can delete character', 7, 'delete_character'),
(22, 'Can add video', 8, 'add_video'),
(23, 'Can change video', 8, 'change_video'),
(24, 'Can delete video', 8, 'delete_video');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$3lTpq1BvCXNm$udCb3bPS8hf+baCgrJ2IiAqaWoLTDsgIoIZX6rSSXgk=', '2015-10-24 00:30:47', 1, 'phbai', '', '', '48466846@qq.com', 1, 1, '2015-09-24 10:08:14');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=84 ;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-09-24 12:00:54', '1', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 1, '', 8, 1),
(2, '2015-09-24 12:53:05', '2', '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', 1, '', 8, 1),
(3, '2015-09-24 13:06:30', '1', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 2, '已修改 thumbnail_src 。', 8, 1),
(4, '2015-09-24 13:14:43', '3', '【墨韵东方】幻想乡旅游宣传片 Ver2', 1, '', 8, 1),
(5, '2015-09-24 13:31:37', '4', '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', 1, '', 8, 1),
(6, '2015-09-24 13:35:35', '4', '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', 2, '已修改 thumbnail_src 。', 8, 1),
(7, '2015-09-24 14:03:12', '2', '雾雨魔梨沙', 2, '已修改 thumbnail_src 。', 7, 1),
(8, '2015-09-24 14:03:42', '2', '雾雨魔梨沙', 2, '已修改 thumbnail_src 。', 7, 1),
(9, '2015-09-24 14:04:01', '2', '雾雨魔梨沙', 2, '已修改 thumbnail_src 。', 7, 1),
(10, '2015-09-24 14:18:36', '1', '博丽灵梦', 2, '已修改 description，speed，attackRange，attack，jiecao 和 cup 。', 7, 1),
(11, '2015-09-24 14:19:11', '2', '雾雨魔梨沙', 2, '已修改 speed，attackRange，attack，jiecao 和 cup 。', 7, 1),
(12, '2015-09-24 14:21:13', '2', '雾雨魔梨沙', 2, '没有字段被修改。', 7, 1),
(13, '2015-09-24 14:23:39', '2', '雾雨魔梨沙', 2, '已修改 description 和 thumbnail_src 。', 7, 1),
(14, '2015-09-24 14:25:01', '2', '雾雨魔梨沙', 2, '已修改 thumbnail_src 。', 7, 1),
(15, '2015-09-24 14:25:19', '2', '雾雨魔梨沙', 2, '没有字段被修改。', 7, 1),
(16, '2015-09-24 14:27:11', '2', '雾雨魔梨沙', 2, '已修改 thumbnail_src 。', 7, 1),
(17, '2015-09-25 15:50:13', '1', '博丽灵梦', 2, '已修改 character_sub_title 和 video_sub_title 。', 7, 1),
(18, '2015-09-25 15:54:51', '2', '雾雨魔梨沙', 2, '已修改 character_sub_title 和 video_sub_title 。', 7, 1),
(19, '2015-09-25 16:01:03', '1', '博丽灵梦', 2, '已修改 video_sub_title 。', 7, 1),
(20, '2015-09-27 13:13:43', '1', '博丽灵梦', 2, '已修改 avatar_src 。', 7, 1),
(21, '2015-09-27 13:13:55', '2', '雾雨魔梨沙', 2, '已修改 avatar_src 。', 7, 1),
(22, '2015-09-27 13:30:02', '2', '雾雨魔理沙', 2, '已修改 name 。', 7, 1),
(23, '2015-09-27 13:38:02', '3', '十六夜咲夜', 1, '', 7, 1),
(24, '2015-09-27 13:39:30', '3', '十六夜咲夜', 2, '已修改 description 。', 7, 1),
(25, '2015-09-27 13:51:22', '4', '蕾米莉亚·斯卡蕾特', 1, '', 7, 1),
(26, '2015-09-27 13:52:04', '4', '蕾米莉亚·斯卡蕾特', 2, '没有字段被修改。', 7, 1),
(27, '2015-09-27 13:53:42', '4', '蕾米莉亚·斯卡蕾特', 2, '没有字段被修改。', 7, 1),
(28, '2015-09-27 14:09:22', '5', '芙兰朵露·斯卡蕾特', 1, '', 7, 1),
(29, '2015-09-27 14:09:38', '4', '蕾米莉亚·斯卡蕾特', 2, '已修改 thumbnail_src 。', 7, 1),
(30, '2015-09-27 14:09:51', '5', '芙兰朵露·斯卡蕾特', 2, '已修改 thumbnail_src 。', 7, 1),
(31, '2015-09-27 14:22:16', '4', '蕾米莉亚·斯卡蕾特', 2, '已修改 thumbnail_src 。', 7, 1),
(32, '2015-09-27 14:22:33', '5', '芙兰朵露·斯卡蕾特', 2, '已修改 thumbnail_src 。', 7, 1),
(33, '2015-09-27 14:27:25', '4', '蕾米莉亚·斯卡蕾特', 2, '已修改 avatar_src 。', 7, 1),
(34, '2015-09-27 14:28:28', '3', '十六夜咲夜', 2, '已修改 avatar_src 。', 7, 1),
(35, '2015-09-27 14:30:55', '5', '芙兰朵露·斯卡蕾特', 2, '已修改 avatar_src 。', 7, 1),
(36, '2015-09-28 01:05:22', '5', '芙兰朵露·斯卡蕾特', 2, '已修改 description 。', 7, 1),
(37, '2015-09-28 01:56:41', '6', '帕秋莉·诺蕾姬', 1, '', 7, 1),
(38, '2015-09-28 02:05:23', '6', '帕秋莉·诺蕾姬', 2, '已修改 avatar_src 。', 7, 1),
(39, '2015-09-28 02:06:03', '6', '帕秋莉·诺蕾姬', 2, '已修改 avatar_src 。', 7, 1),
(40, '2015-09-28 02:15:36', '6', '帕秋莉·诺蕾姬', 2, '已修改 avatar_src 。', 7, 1),
(41, '2015-09-28 02:17:27', '6', '帕秋莉·诺蕾姬', 2, '已修改 thumbnail_src 。', 7, 1),
(42, '2015-09-28 02:26:47', '6', '帕秋莉·诺蕾姬', 2, '已修改 thumbnail_src 。', 7, 1),
(43, '2015-09-30 03:24:28', '4', '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', 2, '已修改 characters 。', 8, 1),
(44, '2015-09-30 13:42:21', '7', '爱丽丝·玛格特洛依德', 1, '', 7, 1),
(45, '2015-09-30 13:43:03', '7', '爱丽丝·玛格特洛依德', 2, '已修改 avatar_src 和 thumbnail_src 。', 7, 1),
(46, '2015-09-30 13:43:21', '7', '爱丽丝·玛格特洛依德', 2, '已修改 avatar_src 。', 7, 1),
(47, '2015-09-30 14:07:38', '8', '魂魄妖梦', 1, '', 7, 1),
(48, '2015-09-30 14:09:51', '8', '魂魄妖梦', 2, '已修改 avatar_src 。', 7, 1),
(49, '2015-09-30 14:25:14', '9', '琪露诺', 1, '', 7, 1),
(50, '2015-09-30 14:28:54', '9', '琪露诺', 2, '已修改 thumbnail_src 。', 7, 1),
(51, '2015-10-01 01:43:21', '1', '博丽灵梦', 2, '已修改 videos 。', 7, 1),
(52, '2015-10-01 01:43:37', '2', '雾雨魔理沙', 2, '已修改 videos 。', 7, 1),
(53, '2015-10-01 02:03:54', '1', '博丽灵梦', 2, '已修改 avatar_src 。', 7, 1),
(54, '2015-10-01 02:06:06', '2', '雾雨魔理沙', 2, '已修改 avatar_src 。', 7, 1),
(55, '2015-10-01 02:07:44', '2', '雾雨魔理沙', 2, '已修改 avatar_src 。', 7, 1),
(56, '2015-10-01 02:26:07', '2', '雾雨魔理沙', 2, '已修改 avatar_src 。', 7, 1),
(57, '2015-10-01 02:26:21', '2', '雾雨魔理沙', 2, '已修改 avatar_src 。', 7, 1),
(58, '2015-10-02 01:25:38', '2', '雾雨魔理沙', 2, '已修改 speed，attackRange，attack，jiecao 和 cup 。', 7, 1),
(59, '2015-10-02 03:06:56', '1', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 2, '已修改 video_src 。', 8, 1),
(60, '2015-10-02 05:32:21', '4', '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', 2, '已修改 video_src 。', 8, 1),
(61, '2015-10-02 05:33:40', '1', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 2, '没有字段被修改。', 8, 1),
(62, '2015-10-02 05:37:21', '1', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 2, '已修改 video_src 。', 8, 1),
(63, '2015-10-02 13:56:02', '1', '博丽灵梦', 2, '已修改 speed，attackRange，attack 和 cup 。', 7, 1),
(64, '2015-10-02 13:56:41', '1', '博丽灵梦', 2, '已修改 jiecao 。', 7, 1),
(65, '2015-10-22 12:57:35', '4', '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', 2, '已修改 video_src 。', 8, 1),
(66, '2015-10-22 13:09:58', '1', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 2, '已修改 video_src 。', 8, 1),
(67, '2015-10-22 13:16:57', '2', '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', 2, '已修改 video_src 。', 8, 1),
(68, '2015-10-22 13:18:16', '2', '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', 2, '没有字段被修改。', 8, 1),
(69, '2015-10-22 13:26:44', '2', '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', 2, '已修改 video_src 。', 8, 1),
(70, '2015-10-22 13:35:06', '3', '【墨韵东方】幻想乡旅游宣传片 Ver2', 2, '已修改 video_src 。', 8, 1),
(71, '2015-10-22 13:49:47', '2', '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', 2, '已修改 thumbnail_src 。', 8, 1),
(72, '2015-10-24 00:33:03', '5', '【东方偶像乡 MMD】网络偶像的日常❤恋空预报【720P】', 1, '', 8, 1),
(73, '2015-10-24 00:36:37', '6', '【東方MMD】主角組❤兩人的『ＡＮＧＥＬＦＩＳＨ』.', 1, '', 8, 1),
(74, '2015-10-24 00:37:34', '7', '【东方偶像乡 MMD】※魂牵梦绕 众神眷顾的幻想乡※', 1, '', 8, 1),
(75, '2015-10-24 00:38:01', '1', '博丽灵梦', 2, '已修改 videos 和 timestamp 。', 7, 1),
(76, '2015-10-24 00:38:16', '2', '雾雨魔理沙', 2, '已修改 videos 。', 7, 1),
(77, '2015-10-24 00:38:39', '7', '爱丽丝·玛格特洛依德', 2, '已修改 videos 和 timestamp 。', 7, 1),
(78, '2015-10-24 00:41:27', '7', '爱丽丝·玛格特洛依德', 2, '已修改 videos 和 timestamp 。', 7, 1),
(79, '2015-10-24 00:42:55', '7', '【东方偶像乡 MMD】※魂牵梦绕 众神眷顾的幻想乡※', 2, '已修改 timestamp 。', 8, 1),
(80, '2015-10-24 00:42:59', '6', '【東方MMD】主角組❤兩人的『ＡＮＧＥＬＦＩＳＨ』.', 2, '已修改 timestamp 。', 8, 1),
(81, '2015-10-24 00:43:06', '5', '【东方偶像乡 MMD】网络偶像的日常❤恋空预报【720P】', 2, '没有字段被修改。', 8, 1),
(82, '2015-10-24 00:43:16', '7', '【东方偶像乡 MMD】※魂牵梦绕 众神眷顾的幻想乡※', 2, '已修改 timestamp 。', 8, 1),
(83, '2015-10-24 01:18:04', '7', '【东方偶像乡 MMD】※魂牵梦绕 众神眷顾的幻想乡※', 2, '已修改 thumbnail_src 。', 8, 1);

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'www', 'character'),
(8, 'www', 'video');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-09-24 09:47:37'),
(2, 'auth', '0001_initial', '2015-09-24 09:47:43'),
(3, 'admin', '0001_initial', '2015-09-24 09:47:46'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-09-24 09:47:47'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-09-24 09:47:48'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-09-24 09:47:48'),
(7, 'auth', '0004_alter_user_username_opts', '2015-09-24 09:47:48'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-09-24 09:47:49'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-09-24 09:47:50'),
(10, 'sessions', '0001_initial', '2015-09-24 09:47:50'),
(11, 'www', '0001_initial', '2015-09-24 09:47:51'),
(12, 'www', '0002_auto_20150924_2216', '2015-09-24 14:17:46'),
(13, 'www', '0003_auto_20150925_2348', '2015-09-25 15:48:28'),
(14, 'www', '0004_character_avatar_src', '2015-09-27 13:12:33'),
(15, 'www', '0005_auto_20150930_1122', '2015-09-30 03:22:41'),
(16, 'www', '0006_auto_20151001_0941', '2015-10-01 01:41:38'),
(17, 'www', '0007_video_video_src', '2015-10-02 03:05:11');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0myz4v44vvlv0g0ajoaznjg116glt76b', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-13 08:07:22'),
('694x4jivs9w3hgxh35qickk5fk61cl1m', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-13 00:23:14'),
('6zq4r4a6qmkpyj5finm784y2k65h0ksi', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-12 01:04:54'),
('72j99fj13cy8xtnbhacukf9nom2zx2v4', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-11 13:13:17'),
('7o4fartur062mhwz1z321dpm8qtqj6la', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-03 03:37:07'),
('8lvt3gg7wo8f435kyp9qnh7txvug5601', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-05 15:33:48'),
('8w0zmanxri315ep495h7c7nzhrfllh5l', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-16 13:47:44'),
('99npwhfo0tejkjirc3q91n3h3365uv4o', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-04 07:14:16'),
('ay01spqherqzyto2tue2ypaf1ta7hanp', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-27 09:37:49'),
('qhi37qc2mlxkyeslo6yqs64btiftawpy', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-07 00:30:47'),
('r55e1k034tchx02f84p3qxtqz9gmm6qv', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-31 06:07:47'),
('uz192klbnnnvkf83fx9kb5vzdh4gldno', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-03 03:35:24'),
('vbg03kvcutp4wf0fruwe2pt3uizefk29', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-05 12:57:06'),
('w7yzbo63ynn2gjiwhfe9dibzratq5jb5', 'OGUyOTI2ZWY4NmM1YWFjYjdmMGJmZmQ5Y2NhMjgxMWQ0ODQ5YjQ5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZDNhNTllNDI1NDBmMWNlNDQ5OTI1ZWQ2ZTZkY2I3MmIxYjFkOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-10-08 10:08:24');

-- --------------------------------------------------------

--
-- 表的结构 `www_character`
--

CREATE TABLE IF NOT EXISTS `www_character` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `thumbnail_src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `attack` int(11) NOT NULL,
  `attackRange` int(11) NOT NULL,
  `cup` int(11) NOT NULL,
  `jiecao` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `character_sub_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_sub_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `www_character`
--

INSERT INTO `www_character` (`id`, `name`, `description`, `click_num`, `comment_num`, `thumbnail_src`, `timestamp`, `attack`, `attackRange`, `cup`, `jiecao`, `speed`, `character_sub_title`, `video_sub_title`, `avatar_src`) VALUES
(1, '博丽灵梦', '《东方Project》的主角，几乎在每一作之中均有出现<br/>博丽神社的巫女，名义上的幻想乡管理者<br/>天生拥有强大的灵力、不可思议的幸运以及惊人的敏锐\r\n<br>不相信努力会有回报，讨厌修炼，缺乏危机感\r\n<br>每天就是在神社里面打扫和悠闲地喝茶\r\n<br>不过每次一旦发生异变，就会急急忙忙赶着去调查\r\n<br/>退治妖怪的时候会非常严厉，但是在没有工作需要的时候对妖怪也是一视同仁\r\n<br/>符卡多以“结界”、“阴阳”、“封印”等为主题\r\n<br/>代表形象为阴阳玉\r\n<br/>常见的二次设定有贪财、无节操等等', 0, 0, 'http://static.mengniang.org/common/5/53/9056340.jpg', '2015-09-23 03:49:00', 3, 4, 2, 1, 3, '幻想乡境内博丽神社的现有巫女', '在空中飞行的奇妙巫女', '/static/images/avatar/lingmeng.png'),
(2, '雾雨魔理沙', '她是住在魔法森林的一位奇怪的魔法使。不过这个魔法使只是一种职业，她是人类。\r\n</br>身穿黑色的衣服，戴着巨大的黑帽子，常常去拜访神社。基本上不去人类村落。</br>\r\n人类村落里有间大道具屋，她身为雾雨店的独女，已经和那里没了联系。\r\n　　</br>她并不只是住在魔法森林，其实在经营着“雾雨魔法店”，只有和魔法有关就行。不过，要进入魔法森林并找到这家店是很困难的，无法了解她接受过什么工作，而且从没见过她工作的样子。</br>\r\n性格爱戏弄人，很难要她理解对方，但和她一起会很有意思，让人心情愉快。', 0, 0, 'http://r.loli.io/rI7zIv.jpg', '2015-09-23 11:54:00', 4, 1, 2, 2, 4, '普通的魔法使', '幻想乡大盗', '/static/images/avatar/molisha3.png'),
(3, '十六夜咲夜', '她是住在红魔馆并在里面工作的女仆。是被称之为恶魔之馆的红魔馆中唯一的人类，是女仆们的仆长。</br>\r\n她是个在普通人类不敢接近的地方工作的不可思议的少女。</br>\r\n没人见过她在进入红魔馆之前是怎样的。而且她对幻想乡里人类的来访极为冷淡，常站在妖怪的阵营之中。所以人们觉得她不是幻想乡的人类，有可能是外面世界或者是别的世界来的人。</br>\r\n她没有和村落里任何人类亲近，身上含有许多谜。</br>\r\n不过，当她去村落买东西时，她会一脸愉快，一点也没有敌视人类的样子</br>', 0, 0, 'http://r.loli.io/NjYZ3m.jpg', '2015-09-27 13:35:00', 2, 4, 3, 2, 3, '红魔馆的女仆', '操控时间的能力', '/static/images/avatar/xiaoye.png'),
(4, '蕾米莉亚·斯卡蕾特', '说起在幻想乡已经确认的吸血鬼，那就是住在红魔馆的斯卡蕾特一家。那里的主人就是绯红恶魔。<br/>\r\n虽然外表年幼，想法幼稚，但实际上她已活了超过五百年，拥有吸血鬼一族令人惊异的身体能力。<br/>\r\n她身高较低，外表看来不满十岁，背后有对比身高还要大的羽翼，光看外型的话显得十分巨大。还有就是态度傲慢。<br/>\r\n行动小孩子气，拥有惊异的身体能力和无尽的好奇心，是只什么时候爆发也不奇怪的恐怖恶魔。<br/>\r\n她白天在红魔馆睡觉，夜晚则会散步和开宴会，满足累了后就去睡觉。<br/>\r\n操纵命运的能力就是，她本人有意无意间，际遇周围的不幸命运，搭上一句话，就能令对方生活发生重大变化。似乎有很高概率会遇上珍奇的事情。<br/>', 0, 0, 'http://r.loli.io/iEzQRv.jpg', '2015-09-27 13:48:00', 3, 2, 1, 4, 4, '绯红恶魔', '永远幼小的红月', '/static/images/avatar/daxiaojie.png'),
(5, '芙兰朵露·斯卡蕾特', '红魔馆有两位吸血鬼。分别是作为主人的姐姐蕾米莉亚·斯卡蕾特，和妹妹芙兰朵露·斯卡蕾特。</br>\r\n芙兰朵露极少外出红魔馆，进入过红魔馆的人类基本上能确认这点。</br>\r\n她有一对散发着七色不可思议之光的翼，浅黄色头发，身高和姐姐蕾米莉亚差不多。背上的一对翼有着其它生物、妖怪、幽灵无法想像的奇怪扭曲形状。</br>\r\n即使是红魔馆中，和她友好的妖怪也不多，常常被孤立。很少见到她和姐姐蕾米莉亚在一起。</br>\r\n这么说来，她身上还有很多谜。她的破坏能力，据说能破坏可触摸和不可触摸的事物。要和她一起玩的话，物品都会被破坏得一干二净，没人会愿意这样吧。</br>\r\n所有的事物都有最重要的部分称之为“目”，要破坏事物的话，只要加力于它，就能达到破坏的效果。她能够将“目”移动到自己的手中，并将手中的“目”破坏，物品也就随之毁坏了。是一种无法抵抗的可怕能力。</br>', 0, 0, 'http://r5.loli.io/vau2Mz.jpg', '2015-09-27 14:09:00', 4, 1, 1, 3, 1, '恶魔之妹', '「被禁止的游戏」', '/static/images/avatar/erxiaojie2.png'),
(6, '帕秋莉·诺蕾姬', '要说恶魔之馆红魔馆的头脑，那就是魔法使帕秋莉·诺蕾姬。<br/>\r\n她担当着解决红魔馆中发生事件的角色。<br/>\r\n她有一头长发，外表和人类并无差别。<br/>\r\n她是纯粹的魔法使，已活了百年以上了。百年间大部分时间都花在读书上，让人惊讶。<br/>\r\n她擅长多种魔法，而且致力于开发新魔法。创造了新魔法就会写入魔导书中，书就会增加。虽然不知道她是从何时起住入红魔馆的，不过从图书馆的藏书来看，她已住了好久了。<br/>', 0, 0, 'http://r.loli.io/IBnQ3m.jpg', '2015-09-28 01:41:00', 2, 2, 2, 2, 2, '知识与避世的少女', '不动的大图书馆', '/static/images/avatar/paqiuli3.png'),
(7, '爱丽丝·玛格特洛依德', '要说在祭典中出现在人们面前、表演着人偶技艺的魔法使的话，那就是爱丽丝·玛格特洛依德。</br>\r\n她是位能用魔法操控人偶，让它们表现得栩栩如生的技艺精湛的魔法使。</br>\r\n金发与白皙的皮肤，她本人也有着人偶般的外表。</br>\r\n她是属于由人类修行而成的魔法使。因此十分理解人类。在魔法使当中资质尚浅，属于新人。虽然已经不必要了，但仍然还保持着和人类一样的吃饭与睡觉的习惯。</br>\r\n她平时住在魔法森林一座有好多人偶的小洋馆里。如果不小心在魔法森林迷路，走到了这里，则会被邀请住宿一晚。不过就算住下来，她也会继续研究人偶操控，不多说话，让人觉得很难受并想马上离开这里。</br>', 0, 0, 'http://r5.loli.io/m6rQfa.jpg', '2015-09-30 13:35:00', 2, 2, 3, 2, 4, '七色的人偶使', '操纵人偶程度的能力', '/static/images/avatar/alisi2.png'),
(8, '魂魄妖梦', '幽灵是不定形的，纯粹的幽灵很少会化成特定人形。</br>\r\n魂魄家不是纯粹的幽灵，而是半幽灵半人类的家系。</br>\r\n外表和普通人类无差别。思考方式也和人类一样，据说体温要比普通人低一些。寿命也比人类长很多。可能是因为有一半是无寿命的幽灵。</br>\r\n另外，人类的形态旁边往往跟着一只大型幽灵。这幽灵是半人半灵的特征，是和普通人区别的唯一方法。这幽灵按照半人半灵的意志活动。但是，和通常的幽灵也有不同，体温不那么的冷。</br>\r\n妖梦在冥界的白玉楼担任庭师，同时也兼任剑术指导住在那里。最近在现界也频繁露面。</br>\r\n也就是说，可能是现在冥界和现界的结界稀薄化了。至于结界稀薄化的原因，虽然作了种种猜测，但实际的原因是境界妖怪的一时兴起。</br>', 0, 0, 'http://r5.loli.io/RVVnIb.jpg', '2015-09-30 13:46:00', 1, 1, 2, 2, 2, '半人半灵的半吊子', '可以使用剑术程度的能力', '/static/images/avatar/yaomeng2.png'),
(9, '琪露诺', '在雾之湖的附近，即使是夏天也会出现极端低温。这时候常能遇到的妖精就是冰之妖精。 </br>\r\n她是湖附近妖精们中的领袖般的存在，力量也比其他妖精强。她是属于好战型的，所以必须留神。</br>\r\n她身高颇低，穿蓝色的衣服，背后有冰之羽翼。</br>\r\n她有操控冷气的能力。能瞬间冻结小东西，比普通的妖精更危险。一直在释放冷气的她周围总是很寒冷。</br>\r\n人们不知道她住在哪里，也无法得知她平时的生活是怎样的。不光是琪露诺，所有的妖精都能溶入大自然之中，所以人类们看不见。</br>', 0, 0, 'http://r.loli.io/VrmQ3e.jpg', '2015-09-30 14:16:00', 1, 1, 1, 2, 4, '冰の妖精', '⑨', '/static/images/avatar/qilunuo.png');

-- --------------------------------------------------------

--
-- 表的结构 `www_character_videos`
--

CREATE TABLE IF NOT EXISTS `www_character_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `character_id` (`character_id`,`video_id`),
  KEY `www_character_videos_video_id_58f21022_fk_www_video_id` (`video_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `www_character_videos`
--

INSERT INTO `www_character_videos` (`id`, `character_id`, `video_id`) VALUES
(29, 1, 1),
(30, 1, 2),
(31, 1, 3),
(32, 1, 4),
(33, 1, 6),
(34, 1, 7),
(35, 2, 1),
(36, 2, 3),
(37, 2, 4),
(38, 2, 6),
(39, 2, 7),
(43, 7, 1),
(44, 7, 4),
(45, 7, 5),
(46, 7, 7);

-- --------------------------------------------------------

--
-- 表的结构 `www_video`
--

CREATE TABLE IF NOT EXISTS `www_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `thumbnail_src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `video_src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `www_video`
--

INSERT INTO `www_video` (`id`, `title`, `click_num`, `comment_num`, `thumbnail_src`, `summary`, `timestamp`, `video_src`) VALUES
(1, '【东方偶像乡MMD】这的确是偶像级的dream★fighter', 0, 0, 'http://r.loli.io/nQZB7n.png', '【东方偶像乡MMD】这的确是偶像级的dream★fighter', '2015-09-24 11:59:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2FBilibiliJJ.COM-%E3%80%90%E4%B8%9C%E6%96%B9%E5%81%B6%E5%83%8F%E4%B9%A1MMD%E3%80%91%E8%BF%99%E7%9A%84%E7%A1%AE%E6%98%AF%E5%81%B6%E5%83%8F%E7%BA%A7%E7%9A%84dream%E2%98%85fighter_.mp4'),
(2, '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', 0, 0, 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E5%9B%BE%E7%89%87%2FueiiE3.jpg', '【东方偶像乡 MMD/C4D】10W元的手办，赞！灵梦的黑白小姐ED', '2015-09-24 12:52:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2F%E7%81%B5%E6%A2%A6%E7%9A%84%E9%BB%91%E7%99%BD%E5%B0%8F%E5%A7%90ED.mp4'),
(3, '【墨韵东方】幻想乡旅游宣传片 Ver2', 0, 0, 'http://r.loli.io/VnYfqi.png', '【墨韵东方】幻想乡旅游宣传片 Ver2', '2015-09-24 13:14:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2F%E5%B9%BB%E6%83%B3%E4%B9%A1%E6%97%85%E6%B8%B8%E5%AE%A3%E4%BC%A0%E7%89%87.mp4'),
(4, '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', 0, 0, 'http://r.loli.io/vimy22.png', '【东方偶像乡 MMD】这真的是超高校级的GIRLS！', '2015-09-24 13:31:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2Fgirls.mp4'),
(5, '【东方偶像乡 MMD】网络偶像的日常❤恋空预报【720P】', 0, 0, 'http://r6.loli.io/q2MBj2.jpg', '爱丽丝的日常+写实+小清新风格~ bgm：【リシェ】恋空予報 av822362', '2015-10-24 00:31:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2F%E7%BD%91%E7%BB%9C%E5%81%B6%E5%83%8F%E7%9A%84%E6%97%A5%E5%B8%B8%E6%81%8B%E7%A9%BA%E9%A2%84%E6%8A%A5.mp4'),
(6, '【東方MMD】主角組❤兩人的『ＡＮＧＥＬＦＩＳＨ』.', 0, 0, 'http://r5.loli.io/vqYfq2.jpg', '啊啊快來甜攻我啊魔理沙！……想做這首歌所以试着做了，这种氛围的主角组也不错呢... GEM的版本→av790136）确实让人耳朵一亮（什么鬼 但果然EVO酱的声音更有毒性呢...几乎不怎么遇到喜欢的唱见唱喜欢的歌 但如果遇到了一定会哭出来吧？！', '2015-10-24 00:42:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2FAv2639455.mp4'),
(7, '【东方偶像乡 MMD】※魂牵梦绕 众神眷顾的幻想乡※', 0, 0, 'http://r.loli.io/BniMze.png', '二次创作 让各位久等了！偶像乡最新作上映！灵魔爱将给你带来不一样的孤雏都市。【请自觉维护弹幕环境，请勿评价素材谢谢合作。】', '2015-10-24 00:43:00', 'http://acgol.oss-cn-hangzhou.aliyuncs.com/%E8%A7%86%E9%A2%91%2F%E9%AD%82%E7%89%B5%E6%A2%A6%E7%BB%95%E4%BC%97%E7%A5%9E%E7%9C%B7%E9%A1%BE%E7%9A%84%E5%B9%BB%E6%83%B3%E4%B9%A1.mp4');

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `www_character_videos`
--
ALTER TABLE `www_character_videos`
  ADD CONSTRAINT `www_character_videos_character_id_1e6c0796_fk_www_character_id` FOREIGN KEY (`character_id`) REFERENCES `www_character` (`id`),
  ADD CONSTRAINT `www_character_videos_video_id_58f21022_fk_www_video_id` FOREIGN KEY (`video_id`) REFERENCES `www_video` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
