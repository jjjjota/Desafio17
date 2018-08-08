-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2018 at 01:07 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desafio17`
--

-- --------------------------------------------------------

--
-- Table structure for table `17_commentmeta`
--

CREATE TABLE `17_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `17_comments`
--

CREATE TABLE `17_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_comments`
--

INSERT INTO `17_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un Comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-26 00:09:24', '2018-07-26 00:09:24', 'Hola, este es un comentario.\nPara empezar con la moderación, edición y eliminación de comentarios, por favor visita la pantalla de comentarios en el panel inicial.\nLos Avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `17_links`
--

CREATE TABLE `17_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `17_options`
--

CREATE TABLE `17_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_options`
--

INSERT INTO `17_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'Desafio17', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ctrl-j@outlook.es', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'desafio17', 'yes'),
(41, 'stylesheet', 'desafio17', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '19', 'yes'),
(84, 'page_on_front', '15', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, '17_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'es_CL', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1533690566;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533691732;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533692555;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533730166;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532578802;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '0', 'no'),
(149, 'current_theme', 'Desafío 17', 'yes'),
(150, 'theme_mods_desafio17', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532729260;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(190, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532733065;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(224, 'category_children', 'a:0:{}', 'yes'),
(250, 'recently_activated', 'a:0:{}', 'yes'),
(255, 'acf_version', '4.4.12', 'yes'),
(258, '_site_transient_timeout_theme_roots', '1533690323', 'no'),
(259, '_site_transient_theme_roots', 'a:4:{s:9:\"desafio17\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(261, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533688552;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(262, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533688553;s:7:\"checked\";a:4:{s:9:\"desafio17\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(263, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533688555;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(264, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"ctrl-j@outlook.es\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533688554;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `17_postmeta`
--

CREATE TABLE `17_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_postmeta`
--

INSERT INTO `17_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(29, 2, '_wp_trash_meta_status', 'publish'),
(30, 2, '_wp_trash_meta_time', '1532655744'),
(31, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(32, 15, '_edit_last', '1'),
(33, 15, '_edit_lock', '1533083935:1'),
(34, 17, '_edit_last', '1'),
(35, 17, '_edit_lock', '1532655658:1'),
(36, 19, '_edit_last', '1'),
(37, 19, '_edit_lock', '1532749664:1'),
(38, 21, '_edit_last', '1'),
(39, 21, '_edit_lock', '1532655700:1'),
(40, 23, '_edit_last', '1'),
(41, 23, '_edit_lock', '1533083410:1'),
(45, 27, '_wp_attached_file', '2018/07/diseño-web.png'),
(46, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2018/07/diseño-web.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"diseño-web-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"diseño-web-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"diseño-web-768x461.png\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 23, '_thumbnail_id', '27'),
(50, 30, '_wp_attached_file', '2018/07/iphone.png'),
(51, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:704;s:6:\"height\";i:444;s:4:\"file\";s:18:\"2018/07/iphone.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"iphone-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"iphone-300x189.png\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 31, '_wp_attached_file', '2018/07/webs-design.png'),
(53, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:882;s:6:\"height\";i:757;s:4:\"file\";s:23:\"2018/07/webs-design.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"webs-design-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"webs-design-300x257.png\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"webs-design-768x659.png\";s:5:\"width\";i:768;s:6:\"height\";i:659;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 33, '_edit_last', '1'),
(59, 33, '_edit_lock', '1532743895:1'),
(60, 34, '_wp_attached_file', '2018/07/ui_ux_cl.png'),
(61, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2018/07/ui_ux_cl.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ui_ux_cl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ui_ux_cl-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"ui_ux_cl-768x410.png\";s:5:\"width\";i:768;s:6:\"height\";i:410;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"ui_ux_cl-1024x546.png\";s:5:\"width\";i:1024;s:6:\"height\";i:546;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 33, '_thumbnail_id', '34'),
(65, 37, '_wp_attached_file', '2018/07/unity-crear-juego-newbie.jpg'),
(66, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:456;s:4:\"file\";s:36:\"2018/07/unity-crear-juego-newbie.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"unity-crear-juego-newbie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"unity-crear-juego-newbie-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"unity-crear-juego-newbie-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(67, 36, '_edit_last', '1'),
(68, 36, '_edit_lock', '1532904974:1'),
(69, 36, '_thumbnail_id', '37'),
(72, 45, '_edit_last', '1'),
(73, 45, 'field_5b60fdcdbc9f7', 'a:14:{s:3:\"key\";s:19:\"field_5b60fdcdbc9f7\";s:5:\"label\";s:14:\"título banner\";s:4:\"name\";s:13:\"titulo_banner\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:23:\"Este es un gran título\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(74, 45, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(75, 45, 'position', 'normal'),
(76, 45, 'layout', 'no_box'),
(77, 45, 'hide_on_screen', ''),
(78, 45, '_edit_lock', '1533083132:1'),
(79, 46, 'titulo_banner', 'asdfghjk'),
(80, 46, '_titulo_banner', 'field_5b60fdcdbc9f7'),
(81, 15, 'titulo_banner', 'AQUÍ VA UN TÍTULO QUE NO RECUERDO'),
(82, 15, '_titulo_banner', 'field_5b60fdcdbc9f7'),
(83, 47, 'titulo_banner', 'asdfghjk'),
(84, 47, '_titulo_banner', 'field_5b60fdcdbc9f7'),
(85, 48, 'titulo_banner', 'AQUÍ VA UN TÍTULO QUE NO RECUERDO'),
(86, 48, '_titulo_banner', 'field_5b60fdcdbc9f7');

-- --------------------------------------------------------

--
-- Table structure for table `17_posts`
--

CREATE TABLE `17_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_posts`
--

INSERT INTO `17_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-26 00:09:24', '2018-07-26 00:09:24', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-07-26 00:09:24', '2018-07-26 00:09:24', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-26 00:09:24', '2018-07-26 00:09:24', 'Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://localhost:8888/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2018-07-27 01:42:24', '2018-07-27 01:42:24', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-26 00:09:24', '2018-07-26 00:09:24', '<h2>Who we are</h2><p>Our website address is: http://localhost:8888.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Multimedia</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-26 00:09:24', '2018-07-26 00:09:24', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(14, 1, '2018-07-27 01:42:24', '2018-07-27 01:42:24', 'Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://localhost:8888/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-27 01:42:24', '2018-07-27 01:42:24', '', 2, 'http://localhost:8888/2018/07/27/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-07-27 01:42:54', '2018-07-27 01:42:54', '', 'inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-08-01 00:35:16', '2018-08-01 00:35:16', '', 0, 'http://localhost:8888/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-07-27 01:42:54', '2018-07-27 01:42:54', '', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-07-27 01:42:54', '2018-07-27 01:42:54', '', 15, 'http://localhost:8888/2018/07/27/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-07-27 01:43:09', '2018-07-27 01:43:09', '', 'equipo', '', 'publish', 'closed', 'closed', '', 'equipo', '', '', '2018-07-27 01:43:09', '2018-07-27 01:43:09', '', 0, 'http://localhost:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-07-27 01:43:09', '2018-07-27 01:43:09', '', 'equipo', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-07-27 01:43:09', '2018-07-27 01:43:09', '', 17, 'http://localhost:8888/2018/07/27/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-07-27 01:43:29', '2018-07-27 01:43:29', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-27 01:43:29', '2018-07-27 01:43:29', '', 0, 'http://localhost:8888/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-07-27 01:43:29', '2018-07-27 01:43:29', '', 'blog', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-27 01:43:29', '2018-07-27 01:43:29', '', 19, 'http://localhost:8888/2018/07/27/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-07-27 01:43:40', '2018-07-27 01:43:40', '', 'contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2018-07-27 01:43:40', '2018-07-27 01:43:40', '', 0, 'http://localhost:8888/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-07-27 01:43:40', '2018-07-27 01:43:40', '', 'contacto', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-27 01:43:40', '2018-07-27 01:43:40', '', 21, 'http://localhost:8888/2018/07/27/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-07-27 22:07:23', '2018-07-27 22:07:23', 'Pasada ya la mitad del año, podemos dilucidar cuáles son las tendencias de Diseño Web más populares. Si en algo podemos estar de acuerdo es que éstas tendencias han sido progresivas con los años, muchas de ellas evolucionando paulatinamente de acuerdo a las necesidades de los usuarios y su comportamiento en internet.\r\n\r\nEs así que, sin más rodeos te mostramos algunas de las tendencias más populares:<span id=\"more-3309\"></span>\r\n\r\n<strong>¡ANTES QUE TODO!</strong>\r\n\r\nA estas alturas, si tu sitio no es responsive estás fuera. Considera esto: Según cifras oficiales de subtel.gob.cl, cerca del 81,2% de la navegación en internet en Chile es a través de un dispositivo móvil ¿Conclusión? Tu sitio web debe responder a diferentes formatos y dispositivos de manera que asegures una buena experiencia de navegación.\r\n\r\n<strong>Más y más Minimal</strong>\r\n\r\n¿Recuerdas el <em>menos es más</em>? Pues ya no debería quedar nada! Porque es una tendencia que se ha seguido desarrollando con el pasar de los años hasta el punto de popularizarse y evolucionar junto con el <strong>Flat Design</strong>, un tipo de diseño plano que finalmente mejora la experiencia de usuario eliminando elementos innecesarios, haciendo más rápida la navegación y aportando simple y llanamente lo que el usuario desea ver.\r\n\r\n<img class=\"aligncenter size-medium wp-image-30\" src=\"http://localhost:8888/wp-content/uploads/2018/07/iphone-300x189.png\" alt=\"\" width=\"300\" height=\"189\" />\r\n\r\n<em><strong>Tipografías con carácter</strong></em>\r\n\r\nEsas zonas destacadas en tu sitio (como la cabecera), son el lugar perfecto para aprovecharlas con una fuente que aporte atención y complemente con la personalidad de tu web. Desde Handmade hasta tipografías de brushes de gran grosor, son algunas de las tendencias que siguen tomando fuerza. Algunos Ejemplos:\r\n\r\n&nbsp;\r\n\r\n<strong><em>Hero Vs Slider\r\n</em></strong>\r\nQueremos enfatizar en que <strong>Slider</strong> sigue siendo una muy utilizada y excelente manera de mostrar imágenes en transición fluida, sin embargo la tendencia minimal con el home terminó evolucionando en lo que conocemos como <strong>Hero</strong>, una forma de llamar la atención al utilizar imágenes de gran tamaño que llenan por completo el espacio del screen.\r\n\r\nLa combinación de Hero con grandes tipografías da resultados interesantes:\r\n\r\n<img class=\"size-medium wp-image-31 aligncenter\" src=\"http://localhost:8888/wp-content/uploads/2018/07/webs-design-300x257.png\" alt=\"\" width=\"300\" height=\"257\" />\r\n\r\n<strong>Scrolling Definitivo</strong>\r\n\r\nQuién pensaría que ese miedo de hace un par de años de tener un sitio web demasiado extenso se convertiría en una gran oportunidad con la llegada de los smartphones, popularizando las ya conocidas <em>“One page”</em> donde los contenidos del sitio se resuelven en una completa y única página. Al apoyarse de elementos como <strong>Parallax</strong>, que aportan cierto dinamismo y valor al tedioso scrolling desde tu dispositivo móvil.\r\n\r\n&nbsp;\r\n\r\n<strong>Diseño Modular/ Tarjetas</strong>\r\n\r\nSi existe una forma práctica y simple de mostrar información de una manera heterogénea que además compatibiliza muy bien con el diseño responsive, es a través de tarjetas y módulos. Sumándose a esto y considerando el masivo uso de framewoks que poseen sistemas de rejilla, genera que la preferencia en composición web sea la de agrupar los elementos como parte de una grid, osea, que se construyan a través de filas y columnas.\r\n———————————–\r\n\r\n¿Qué te parece? Son algunas de las tendencias más utilizadas y, si al igual que a nosotros, te apasiona el diseño web y quieres aprender a crear una página web autoadministrable y dinámica, entonces te invitamos a dar una vuelta por el <a href=\"http://desafiolatam.com/frontend/\">curso intensivo Front-End</a> de Desafío Latam, donde puedes aprender todo esto y más ¡Éxito! 😀', 'Tips y tendencias Diseño Web 2018', '', 'publish', 'open', 'open', '', 'tips-y-tendencias-diseno-web-2018', '', '', '2018-07-28 02:09:52', '2018-07-28 02:09:52', '', 0, 'http://localhost:8888/?p=23', 0, 'post', '', 0),
(25, 1, '2018-07-27 22:07:23', '2018-07-27 22:07:23', 'holA', 'Tips y tendencias Diseño Web 2018', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-07-27 22:07:23', '2018-07-27 22:07:23', '', 23, 'http://localhost:8888/2018/07/27/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-28 02:08:36', '2018-07-28 02:08:36', 'Pasada ya la mitad del año, podemos dilucidar cuáles son las tendencias de Diseño Web más populares. Si en algo podemos estar de acuerdo es que éstas tendencias han sido progresivas con los años, muchas de ellas evolucionando paulatinamente de acuerdo a las necesidades de los usuarios y su comportamiento en internet.\n\nEs así que, sin más rodeos te mostramos algunas de las tendencias más populares:<span id=\"more-3309\"></span>\n\n<strong>¡ANTES QUE TODO!</strong>\n\nA estas alturas, si tu sitio no es responsive estás fuera. Considera esto: Según cifras oficiales de subtel.gob.cl, cerca del 81,2% de la navegación en internet en Chile es a través de un dispositivo móvil ¿Conclusión? Tu sitio web debe responder a diferentes formatos y dispositivos de manera que asegures una buena experiencia de navegación.\n\n<strong>Más y más Minimal</strong>\n\n¿Recuerdas el <em>menos es más</em>? Pues ya no debería quedar nada! Porque es una tendencia que se ha seguido desarrollando con el pasar de los años hasta el punto de popularizarse y evolucionar junto con el <strong>Flat Design</strong>, un tipo de diseño plano que finalmente mejora la experiencia de usuario eliminando elementos innecesarios, haciendo más rápida la navegación y aportando simple y llanamente lo que el usuario desea ver.\n\n<img class=\"aligncenter size-medium wp-image-30\" src=\"http://localhost:8888/wp-content/uploads/2018/07/iphone-300x189.png\" alt=\"\" width=\"300\" height=\"189\" />\n\n<em><strong>Tipografías con carácter</strong></em>\n\nEsas zonas destacadas en tu sitio (como la cabecera), son el lugar perfecto para aprovecharlas con una fuente que aporte atención y complemente con la personalidad de tu web. Desde Handmade hasta tipografías de brushes de gran grosor, son algunas de las tendencias que siguen tomando fuerza. Algunos Ejemplos:\n\n&nbsp;\n\n<strong><em>Hero Vs Slider\n</em></strong>\nQueremos enfatizar en que <strong>Slider</strong> sigue siendo una muy utilizada y excelente manera de mostrar imágenes en transición fluida, sin embargo la tendencia minimal con el home terminó evolucionando en lo que conocemos como <strong>Hero</strong>, una forma de llamar la atención al utilizar imágenes de gran tamaño que llenan por completo el espacio del screen.\n\nLa combinación de Hero con grandes tipografías da resultados interesantes:\n\n<img class=\"aligncenter size-medium wp-image-31\" src=\"http://localhost:8888/wp-content/uploads/2018/07/webs-design-300x257.png\" alt=\"\" width=\"300\" height=\"257\" />\n\n<strong>Scrolling Definitivo</strong>\n\nQuién pensaría que ese miedo de hace un par de años de tener un sitio web demasiado extenso se convertiría en una gran oportunidad con la llegada de los smartphones, popularizando las ya conocidas <em>“One page”</em> donde los contenidos del sitio se resuelven en una completa y única página. Al apoyarse de elementos como <strong>Parallax</strong>, que aportan cierto dinamismo y valor al tedioso scrolling desde tu dispositivo móvil.\n\n&nbsp;\n\n<strong>Diseño Modular/ Tarjetas</strong>\n\nSi existe una forma práctica y simple de mostrar información de una manera heterogénea que además compatibiliza muy bien con el diseño responsive, es a través de tarjetas y módulos. Sumándose a esto y considerando el masivo uso de framewoks que poseen sistemas de rejilla, genera que la preferencia en composición web sea la de agrupar los elementos como parte de una grid, osea, que se construyan a través de filas y columnas.\n———————————–\n\n¿Qué te parece? Son algunas de las tendencias más utilizadas y, si al igual que a nosotros, te apasiona el diseño web y quieres aprender a crear una página web autoadministrable y dinámica, entonces te invitamos a dar una vuelta por el <a href=\"http://desafiolatam.com/frontend/\">curso intensivo Front-End</a> de Desafío Latam, donde puedes aprender todo esto y más ¡Éxito! 😀', 'Tips y tendencias Diseño Web 2018', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2018-07-28 02:08:36', '2018-07-28 02:08:36', '', 23, 'http://localhost:8888/2018/07/27/23-autosave-v1/', 0, 'revision', '', 0),
(27, 1, '2018-07-28 02:02:50', '2018-07-28 02:02:50', '', 'diseño-web', '', 'inherit', 'open', 'closed', '', 'diseno-web', '', '', '2018-07-28 02:02:50', '2018-07-28 02:02:50', '', 23, 'http://localhost:8888/wp-content/uploads/2018/07/diseño-web.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2018-07-28 02:03:37', '2018-07-28 02:03:37', 'holA pik pal k lee', 'Tips y tendencias Diseño Web 2018', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-07-28 02:03:37', '2018-07-28 02:03:37', '', 23, 'http://localhost:8888/2018/07/28/23-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-07-28 02:06:15', '2018-07-28 02:06:15', '', 'iphone', '', 'inherit', 'open', 'closed', '', 'iphone', '', '', '2018-07-28 02:06:15', '2018-07-28 02:06:15', '', 23, 'http://localhost:8888/wp-content/uploads/2018/07/iphone.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-07-28 02:06:22', '2018-07-28 02:06:22', '', 'webs-design', '', 'inherit', 'open', 'closed', '', 'webs-design', '', '', '2018-07-28 02:06:22', '2018-07-28 02:06:22', '', 23, 'http://localhost:8888/wp-content/uploads/2018/07/webs-design.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-07-28 02:08:54', '2018-07-28 02:08:54', 'Pasada ya la mitad del año, podemos dilucidar cuáles son las tendencias de Diseño Web más populares. Si en algo podemos estar de acuerdo es que éstas tendencias han sido progresivas con los años, muchas de ellas evolucionando paulatinamente de acuerdo a las necesidades de los usuarios y su comportamiento en internet.\r\n\r\nEs así que, sin más rodeos te mostramos algunas de las tendencias más populares:<span id=\"more-3309\"></span>\r\n\r\n<strong>¡ANTES QUE TODO!</strong>\r\n\r\nA estas alturas, si tu sitio no es responsive estás fuera. Considera esto: Según cifras oficiales de subtel.gob.cl, cerca del 81,2% de la navegación en internet en Chile es a través de un dispositivo móvil ¿Conclusión? Tu sitio web debe responder a diferentes formatos y dispositivos de manera que asegures una buena experiencia de navegación.\r\n\r\n<strong>Más y más Minimal</strong>\r\n\r\n¿Recuerdas el <em>menos es más</em>? Pues ya no debería quedar nada! Porque es una tendencia que se ha seguido desarrollando con el pasar de los años hasta el punto de popularizarse y evolucionar junto con el <strong>Flat Design</strong>, un tipo de diseño plano que finalmente mejora la experiencia de usuario eliminando elementos innecesarios, haciendo más rápida la navegación y aportando simple y llanamente lo que el usuario desea ver.\r\n\r\n<img class=\"aligncenter size-medium wp-image-30\" src=\"http://localhost:8888/wp-content/uploads/2018/07/iphone-300x189.png\" alt=\"\" width=\"300\" height=\"189\" />\r\n\r\n<em><strong>Tipografías con carácter</strong></em>\r\n\r\nEsas zonas destacadas en tu sitio (como la cabecera), son el lugar perfecto para aprovecharlas con una fuente que aporte atención y complemente con la personalidad de tu web. Desde Handmade hasta tipografías de brushes de gran grosor, son algunas de las tendencias que siguen tomando fuerza. Algunos Ejemplos:\r\n\r\n&nbsp;\r\n\r\n<strong><em>Hero Vs Slider\r\n</em></strong>\r\nQueremos enfatizar en que <strong>Slider</strong> sigue siendo una muy utilizada y excelente manera de mostrar imágenes en transición fluida, sin embargo la tendencia minimal con el home terminó evolucionando en lo que conocemos como <strong>Hero</strong>, una forma de llamar la atención al utilizar imágenes de gran tamaño que llenan por completo el espacio del screen.\r\n\r\nLa combinación de Hero con grandes tipografías da resultados interesantes:\r\n\r\n<img class=\"size-medium wp-image-31 aligncenter\" src=\"http://localhost:8888/wp-content/uploads/2018/07/webs-design-300x257.png\" alt=\"\" width=\"300\" height=\"257\" />\r\n\r\n<strong>Scrolling Definitivo</strong>\r\n\r\nQuién pensaría que ese miedo de hace un par de años de tener un sitio web demasiado extenso se convertiría en una gran oportunidad con la llegada de los smartphones, popularizando las ya conocidas <em>“One page”</em> donde los contenidos del sitio se resuelven en una completa y única página. Al apoyarse de elementos como <strong>Parallax</strong>, que aportan cierto dinamismo y valor al tedioso scrolling desde tu dispositivo móvil.\r\n\r\n&nbsp;\r\n\r\n<strong>Diseño Modular/ Tarjetas</strong>\r\n\r\nSi existe una forma práctica y simple de mostrar información de una manera heterogénea que además compatibiliza muy bien con el diseño responsive, es a través de tarjetas y módulos. Sumándose a esto y considerando el masivo uso de framewoks que poseen sistemas de rejilla, genera que la preferencia en composición web sea la de agrupar los elementos como parte de una grid, osea, que se construyan a través de filas y columnas.\r\n———————————–\r\n\r\n¿Qué te parece? Son algunas de las tendencias más utilizadas y, si al igual que a nosotros, te apasiona el diseño web y quieres aprender a crear una página web autoadministrable y dinámica, entonces te invitamos a dar una vuelta por el <a href=\"http://desafiolatam.com/frontend/\">curso intensivo Front-End</a> de Desafío Latam, donde puedes aprender todo esto y más ¡Éxito! 😀', 'Tips y tendencias Diseño Web 2018', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-07-28 02:08:54', '2018-07-28 02:08:54', '', 23, 'http://localhost:8888/2018/07/28/23-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-07-28 02:13:38', '2018-07-28 02:13:38', 'Conversando con un experto en UX-UI Chileno, Rodrigo Navarrete (Diseñador FrontEnd, <a href=\"https://www.rodrigonavarrete.cl\">https://www.rodrigonavarrete.cl/),</a> quisimos abordar su visión sobre la incorporación de procesos y estratégias UX /UI en Chile.<span id=\"more-3402\"></span>\r\n\r\nRodrigo nos comenta que en Chile la disciplina UX/UI cada vez toma más fuerza y está altamente valorado especialmente en el sector TI gracias a la evangelización y consultoría por parte de organizaciones de diseño como IxDA Chile. El usuario promedio en Chile espera cada vez más, mejores experiencias web que le faciliten el cumplimiento de sus objetivos, esto debido a la alta calidad de referentes internacionales como Amazon, IKEA y PayPal que transforman procesos complejos en experiencias intuitivas.\r\n\r\nTambién nos cuenta sobre su experiencia en el área, en empresas de tecnología acá en Chile –<em> He tenido la suerte de participar en equipos de desarrollo que toman muy en serio el UX/UI, incorporando a profesionales</em>\r\n<em>de estas disciplinas desde el inicio de cada proyecto para brindar una experiencia satisfactoria que cumpla los objetivos del usuario en el sistema. Lo anterior es apoyado y potenciado por un entorno gráfico que</em>\r\n<em>además de ser estéticamente agradable y acorde al negocio, debe ser el canal para una navegación fluida, consistente y de fácil uso.-</em>\r\n\r\nConsiderando las nuevas exigencias, es imperativo que optimices todos los aspectos que influyen en la apreciación del usuario, a final de cuentas, mejorar la usabilidad y acceso, la interfaz del usuario, el diseño de sus contenidos, cómo están estructurados dichos datos, son parte fundamental en la satisfacción de clientes y por ende, del aumento en la popularidad de tu sitio. Para complementar lo que sabes, puedes revisar algunos de estos links:\r\n\r\n<a href=\"https://www.nngroup.com/\">https://www.nngroup.com/</a>\r\n\r\n<a href=\"https://www.ideo.com/blog\">https://www.ideo.com/blog</a>\r\n\r\n<a href=\"https://uxdesign.cc/\">https://uxdesign.cc/</a>\r\n\r\n<a href=\"https://uxplanet.org/\">https://uxplanet.org/</a>\r\n\r\n<a href=\"https://www.designernews.co/\">https://www.designernews.co/</a>\r\n\r\n<a href=\"https://www.designspiration.net/\">https://www.designspiration.net/</a>\r\n\r\nLa invitación es a incorporar siempre nuevas metodologías y estrategias en los futuros proyectos web que realices ¡Recuerda! En <a href=\"http://desafiolatam.com/\">Desafío Latam</a>, puedes conocer nuestros cursos para obtener el conocimiento necesario para practicar esta materia.\r\n\r\n¡Hasta la próxima!', 'Conversando de UX/UI', '', 'publish', 'open', 'open', '', 'conversando-de-ux-ui', '', '', '2018-07-28 02:13:38', '2018-07-28 02:13:38', '', 0, 'http://localhost:8888/?p=33', 0, 'post', '', 0),
(34, 1, '2018-07-28 02:12:23', '2018-07-28 02:12:23', '', 'ui_ux_cl', '', 'inherit', 'open', 'closed', '', 'ui_ux_cl', '', '', '2018-07-28 02:12:23', '2018-07-28 02:12:23', '', 33, 'http://localhost:8888/wp-content/uploads/2018/07/ui_ux_cl.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-07-28 02:13:38', '2018-07-28 02:13:38', 'Conversando con un experto en UX-UI Chileno, Rodrigo Navarrete (Diseñador FrontEnd, <a href=\"https://www.rodrigonavarrete.cl\">https://www.rodrigonavarrete.cl/),</a> quisimos abordar su visión sobre la incorporación de procesos y estratégias UX /UI en Chile.<span id=\"more-3402\"></span>\r\n\r\nRodrigo nos comenta que en Chile la disciplina UX/UI cada vez toma más fuerza y está altamente valorado especialmente en el sector TI gracias a la evangelización y consultoría por parte de organizaciones de diseño como IxDA Chile. El usuario promedio en Chile espera cada vez más, mejores experiencias web que le faciliten el cumplimiento de sus objetivos, esto debido a la alta calidad de referentes internacionales como Amazon, IKEA y PayPal que transforman procesos complejos en experiencias intuitivas.\r\n\r\nTambién nos cuenta sobre su experiencia en el área, en empresas de tecnología acá en Chile –<em> He tenido la suerte de participar en equipos de desarrollo que toman muy en serio el UX/UI, incorporando a profesionales</em>\r\n<em>de estas disciplinas desde el inicio de cada proyecto para brindar una experiencia satisfactoria que cumpla los objetivos del usuario en el sistema. Lo anterior es apoyado y potenciado por un entorno gráfico que</em>\r\n<em>además de ser estéticamente agradable y acorde al negocio, debe ser el canal para una navegación fluida, consistente y de fácil uso.-</em>\r\n\r\nConsiderando las nuevas exigencias, es imperativo que optimices todos los aspectos que influyen en la apreciación del usuario, a final de cuentas, mejorar la usabilidad y acceso, la interfaz del usuario, el diseño de sus contenidos, cómo están estructurados dichos datos, son parte fundamental en la satisfacción de clientes y por ende, del aumento en la popularidad de tu sitio. Para complementar lo que sabes, puedes revisar algunos de estos links:\r\n\r\n<a href=\"https://www.nngroup.com/\">https://www.nngroup.com/</a>\r\n\r\n<a href=\"https://www.ideo.com/blog\">https://www.ideo.com/blog</a>\r\n\r\n<a href=\"https://uxdesign.cc/\">https://uxdesign.cc/</a>\r\n\r\n<a href=\"https://uxplanet.org/\">https://uxplanet.org/</a>\r\n\r\n<a href=\"https://www.designernews.co/\">https://www.designernews.co/</a>\r\n\r\n<a href=\"https://www.designspiration.net/\">https://www.designspiration.net/</a>\r\n\r\nLa invitación es a incorporar siempre nuevas metodologías y estrategias en los futuros proyectos web que realices ¡Recuerda! En <a href=\"http://desafiolatam.com/\">Desafío Latam</a>, puedes conocer nuestros cursos para obtener el conocimiento necesario para practicar esta materia.\r\n\r\n¡Hasta la próxima!', 'Conversando de UX/UI', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-07-28 02:13:38', '2018-07-28 02:13:38', '', 33, 'http://localhost:8888/2018/07/28/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-07-28 03:31:44', '2018-07-28 03:31:44', 'Para no meternos de lleno en la discusión eterna de “qué motor gráfico es mejor” queremos establecer que, como en todo orden de cosas, debes quedarte con la opción que más te acomode <em>simple as that</em>. Si eres un desarrollador inexperto probablemente te acomode más usar Unity Engine y, por el contrario, si ya tienes noción de desarrollo y quieres realizar un trabajo de mayor complejidad tu opción sería Unreal.\r\n\r\n<strong>OJO</strong> con esto no queremos decir que uno sea mejor que el otro, por el contrario, ambos tienen ventajas y desventajas significativas pero hoy nos centraremos en Unity Engine dada su facilidad y menor curva de aprendizaje (no lo decimos nosotros, sino que la comunidad) así que Let’s go!<span id=\"more-3392\"></span>\r\n<h2><strong>Soy Newbie ¿Dónde comienzo?</strong></h2>\r\nSi estás leyendo esto con la mínima esperanza de poder concretar al fin esa genial idea que tuviste en tu cabeza durante toda la infancia, creemos que es bastante factible pero no podemos restarle importancia a la complejidad que conlleva el desarrollar tu propio juego.  En todo Game Engine te encontrarás con el uso de físicas, lenguajes de programación, estructura de datos, scripting  y todo un sinfín de elementos que claramente no apreciamos al momento de jugar nuestro título favorito. Pues bien, para que no te asustes, Unity lleva la ventaja si eres un primerizo en el desarrollo de videojuegos y acá te nombramos algunas de ellas.\r\n<h2><strong>Ventajas de Unity</strong></h2>\r\n<strong>Menor Curva de Aprendizaje:</strong> Por increíble que parezca, puedes comenzar a trabajar mucho más rápido con Unity. Quizá la mayor barrera que puedes encontrar es el uso del lenguaje C# ¡Pero esto es algo bueno! puesto que es más sencillo en comparación y, además, la interfaz y estructura del editor que nos ofrece es mucho más intuitiva y fácil de usar, facilitándonos incluso tareas como el prototipado.\r\n\r\n<strong>Catálogo de Recursos más amplio:</strong> Y nos referimos a recursos de pago y gratuitos, pero principalmente a estos últimos (que son los que nos importan por ahora, hehe) El Unity Asset Store nos entrega una gran variedad de scripts, sonidos, models e incluso música. Olvídate de realizar absolutamente todos los aspectos de tu juego, puedes integrar elementos pre-hechos y creados por otros desarrolladores a tus propios proyectos ¡EZ!\r\n\r\n<strong>Comunidad Activa:</strong> Existe un sinfín de manuales, tutoriales y todo tipo de documentación rondando en internet, tanto de usuarios activos como de los que puedes encontrar en la mismísima página oficial de Unity, así que no te quedarás varado cuando tengas cualquier tipo de duda.\r\n\r\n<strong>Juegos 2D y móviles son más fáciles en Unity:</strong> Si bien podemos desarrollar para diferentes plataformas como Windows, Html5, Android, iOS, PlayStation, Xbox, etc, gran parte de la comunidad está de acuerdo en que es mucho más fácil publicar juegos 2D y móviles en Unity. No por nada tantos desarrolladores Indies lo utilizan, incluso Telltale Games se cambió a éste motor luego de renunciar al “Telltale Tool” que luego de una agonizante transición nos entregó algunos de los títulos más recordados de la desarrolladora (como TWD o Sam &amp; Max)\r\n\r\nEn síntesis, Unity es una herramienta completa y gratuita, que nos entrega infinitas posibilidades al momento de desarrollar nuestro primer prototipo y más. Si los videojuegos son tu hobby y siempre quisiste aprender, si estás interesado en estudiar desarrollo de Videojuegos, si eres un principiante y quieres echar mano por primera vez a un motor gráfico que permita desarrollar tu idea: Unity es para ti.\r\n\r\nDicho todo esto, si te entusiasmaste tenemos buenas noticias. <strong>Desafío Latam</strong> cuenta con un <a href=\"http://desafiolatam.com/video-juegos/\">Bootcamp intensivo de creación de videojuegos en Unity Engine</a> ¿Quieres aprender? ¡Pues ésta es la oportunidad de bajar tu idea y mostrársela al mundo!', 'Por qué desarrollar tu videojuego en Unity si eres Newbie', '', 'publish', 'open', 'open', '', 'por-que-desarrollar-tu-videojuego-en-unity-si-eres-newbie', '', '', '2018-07-28 03:31:44', '2018-07-28 03:31:44', '', 0, 'http://localhost:8888/?p=36', 0, 'post', '', 0),
(37, 1, '2018-07-28 03:29:30', '2018-07-28 03:29:30', '', 'unity-crear-juego-newbie', '', 'inherit', 'open', 'closed', '', 'unity-crear-juego-newbie', '', '', '2018-07-28 03:29:30', '2018-07-28 03:29:30', '', 36, 'http://localhost:8888/wp-content/uploads/2018/07/unity-crear-juego-newbie.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-07-28 03:31:44', '2018-07-28 03:31:44', 'Para no meternos de lleno en la discusión eterna de “qué motor gráfico es mejor” queremos establecer que, como en todo orden de cosas, debes quedarte con la opción que más te acomode <em>simple as that</em>. Si eres un desarrollador inexperto probablemente te acomode más usar Unity Engine y, por el contrario, si ya tienes noción de desarrollo y quieres realizar un trabajo de mayor complejidad tu opción sería Unreal.\r\n\r\n<strong>OJO</strong> con esto no queremos decir que uno sea mejor que el otro, por el contrario, ambos tienen ventajas y desventajas significativas pero hoy nos centraremos en Unity Engine dada su facilidad y menor curva de aprendizaje (no lo decimos nosotros, sino que la comunidad) así que Let’s go!<span id=\"more-3392\"></span>\r\n<h2><strong>Soy Newbie ¿Dónde comienzo?</strong></h2>\r\nSi estás leyendo esto con la mínima esperanza de poder concretar al fin esa genial idea que tuviste en tu cabeza durante toda la infancia, creemos que es bastante factible pero no podemos restarle importancia a la complejidad que conlleva el desarrollar tu propio juego.  En todo Game Engine te encontrarás con el uso de físicas, lenguajes de programación, estructura de datos, scripting  y todo un sinfín de elementos que claramente no apreciamos al momento de jugar nuestro título favorito. Pues bien, para que no te asustes, Unity lleva la ventaja si eres un primerizo en el desarrollo de videojuegos y acá te nombramos algunas de ellas.\r\n<h2><strong>Ventajas de Unity</strong></h2>\r\n<strong>Menor Curva de Aprendizaje:</strong> Por increíble que parezca, puedes comenzar a trabajar mucho más rápido con Unity. Quizá la mayor barrera que puedes encontrar es el uso del lenguaje C# ¡Pero esto es algo bueno! puesto que es más sencillo en comparación y, además, la interfaz y estructura del editor que nos ofrece es mucho más intuitiva y fácil de usar, facilitándonos incluso tareas como el prototipado.\r\n\r\n<strong>Catálogo de Recursos más amplio:</strong> Y nos referimos a recursos de pago y gratuitos, pero principalmente a estos últimos (que son los que nos importan por ahora, hehe) El Unity Asset Store nos entrega una gran variedad de scripts, sonidos, models e incluso música. Olvídate de realizar absolutamente todos los aspectos de tu juego, puedes integrar elementos pre-hechos y creados por otros desarrolladores a tus propios proyectos ¡EZ!\r\n\r\n<strong>Comunidad Activa:</strong> Existe un sinfín de manuales, tutoriales y todo tipo de documentación rondando en internet, tanto de usuarios activos como de los que puedes encontrar en la mismísima página oficial de Unity, así que no te quedarás varado cuando tengas cualquier tipo de duda.\r\n\r\n<strong>Juegos 2D y móviles son más fáciles en Unity:</strong> Si bien podemos desarrollar para diferentes plataformas como Windows, Html5, Android, iOS, PlayStation, Xbox, etc, gran parte de la comunidad está de acuerdo en que es mucho más fácil publicar juegos 2D y móviles en Unity. No por nada tantos desarrolladores Indies lo utilizan, incluso Telltale Games se cambió a éste motor luego de renunciar al “Telltale Tool” que luego de una agonizante transición nos entregó algunos de los títulos más recordados de la desarrolladora (como TWD o Sam &amp; Max)\r\n\r\nEn síntesis, Unity es una herramienta completa y gratuita, que nos entrega infinitas posibilidades al momento de desarrollar nuestro primer prototipo y más. Si los videojuegos son tu hobby y siempre quisiste aprender, si estás interesado en estudiar desarrollo de Videojuegos, si eres un principiante y quieres echar mano por primera vez a un motor gráfico que permita desarrollar tu idea: Unity es para ti.\r\n\r\nDicho todo esto, si te entusiasmaste tenemos buenas noticias. <strong>Desafío Latam</strong> cuenta con un <a href=\"http://desafiolatam.com/video-juegos/\">Bootcamp intensivo de creación de videojuegos en Unity Engine</a> ¿Quieres aprender? ¡Pues ésta es la oportunidad de bajar tu idea y mostrársela al mundo!', 'Por qué desarrollar tu videojuego en Unity si eres Newbie', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-07-28 03:31:44', '2018-07-28 03:31:44', '', 36, 'http://localhost:8888/2018/07/28/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-07-29 22:59:48', '2018-07-29 22:59:48', '\r\n<body>\r\n  <!-- HEADER ------------------------------------------------------------------------------------->\r\n  <header style=\"background: url(<?php echo get_bloginfo(\'template_url\') ?>/images/bg.jpeg);\">\r\n    <div class=\"container\">\r\n\r\n      <h1>\r\n        COMIENZA UNA NUEVA VIDA Y ÚNETE AL MUNDO <br/> TECNOLÓGICO\r\n      </h1>\r\n      <button type=\"button\" class=\"btn btn_blue\">Comienza acá!</button>\r\n      <button type=\"button\" class=\"btn btn_green\">Más Info</button>\r\n      <p>\r\n        Hay una escasez gigante de desarrolladores en el mundo y más aún\r\n        en Latinoamérica, se necesitan más desarrolladores y Tú puedes\r\n        ser uno!\r\n      </p>\r\n\r\n    </div>\r\n  </header>\r\n\r\n  <!-- BOOTCAMP ----------------------------------------------------------------------------------->\r\n  <section class=\"bootcamp\">\r\n    <div class=\"container\">\r\n\r\n      <h4>EL BOOTCAMP DE PROGRAMACIÓN MÁS GRANDE DE LATINOAMÉRICA</h4>\r\n      <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam\r\n        in accusantum corrupti possimus facere hic optio eligendi asperiores\r\n        porro laboriosam ratione quos repellat accusamus ea eum ex aut!\r\n        Molestias eius!\r\n      </p>\r\n      <img class=\"img-responsive\" src=\"<?php echo get_bloginfo(\'template_url\') ?>/images/viewing-gallery-for-happy-people.png\" alt=\"happy people\"/>\r\n\r\n    </div>\r\n  </section>\r\n\r\n  <!-- INFORMACIÓN ---------------------------------------------------------->\r\n  <section class=\"informacion\">\r\n    <div class=\"container\">\r\n\r\n      <h4>SOLICITA INFORMACIÓN E INSCRÍBETE</h4>\r\n      <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo\r\n        id incidunt ullam illum accusamus pariatur placeat perferendis\r\n        eum delectus elius odio est deserunt! Pariatur maxime veritatis\r\n        aspermatur ad consequuntur.\r\n      </p>\r\n      <button type=\"button\" class=\"btn btn_blue\">Inscríbete!</button>\r\n      <p>\r\n        Vive la experiencia Desafío Latam!\r\n      </p>\r\n\r\n    </div>\r\n  </section>\r\n\r\n  <!-- CONTACTO ------------------------------------------------------------->\r\n  <address class=\"container\">\r\n      <!-- Contacto -->\r\n      <div class=\"contacto col-lg-offset-0 col-lg-4 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-4 col-xs-offset-1 col-xs-10\">\r\n        <h5>Contacto</h5>\r\n        <p>\r\n          <b>Desafío Latam</b><br/>\r\n          Ezequias Alliende 2361 <br/>\r\n          P: +56 9 5117 7975 <br/>\r\n        </p>\r\n        <a href=\"mailto:inscripciones@desafiolatam.com\">inscripciones@desafiolatam.com</a>\r\n      </div>\r\n\r\n      <!-- Suscríbete-->\r\n      <div class=\"suscribete col-lg-offset-1 col-lg-7 col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10\">\r\n        <h5>Suscríbete</h5>\r\n        <p>\r\n          Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n        </p>\r\n        <input class=\"email\" type=\"text\" name=\"\" placeholder=\"Ingresa tu mail\">\r\n        <input class=\"btn\"type=\"submit\" name=\"\" value=\"Enviar\">\r\n      </div>\r\n  </address>\r\n\r\n</body>', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-07-29 22:59:48', '2018-07-29 22:59:48', '', 15, 'http://localhost:8888/2018/07/29/15-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-07-29 23:01:33', '2018-07-29 23:01:33', '', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-07-29 23:01:33', '2018-07-29 23:01:33', '', 15, 'http://localhost:8888/2018/07/29/15-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-01 00:14:53', '2018-08-01 00:14:53', '&lt;body&gt;\n&lt;!-- HEADER -------------------------------------------------------------------------------------&gt;\n&lt;header style=\"background: url(&lt;?php echo get_bloginfo(\'template_url\') ?&gt;/images/bg.jpeg);\"&gt;\n&lt;div class=\"container\"&gt;\n\n&lt;h1&gt;\nCOMIENZA UNA NUEVA VIDA Y ÚNETE AL MUNDO &lt;br/&gt; TECNOLÓGICO\n&lt;/h1&gt;\n&lt;button type=\"button\" class=\"btn btn_blue\"&gt;Comienza acá!&lt;/button&gt;\n&lt;button type=\"button\" class=\"btn btn_green\"&gt;Más Info&lt;/button&gt;\n&lt;p&gt;\nHay una escasez gigante de desarrolladores en el mundo y más aún\nen Latinoamérica, se necesitan más desarrolladores y Tú puedes\nser uno!\n&lt;/p&gt;\n\n&lt;/div&gt;\n&lt;/header&gt;\n\n&lt;!-- BOOTCAMP -----------------------------------------------------------------------------------&gt;\n&lt;section class=\"bootcamp\"&gt;\n&lt;div class=\"container\"&gt;\n\n&lt;h4&gt;EL BOOTCAMP DE PROGRAMACIÓN MÁS GRANDE DE LATINOAMÉRICA&lt;/h4&gt;\n&lt;p&gt;\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Totam\nin accusantum corrupti possimus facere hic optio eligendi asperiores\nporro laboriosam ratione quos repellat accusamus ea eum ex aut!\nMolestias eius!\n&lt;/p&gt;\n&lt;img class=\"img-responsive\" src=\"&lt;?php echo get_bloginfo(\'template_url\') ?&gt;/images/viewing-gallery-for-happy-people.png\" alt=\"happy people\"/&gt;\n\n&lt;/div&gt;\n&lt;/section&gt;\n\n&lt;!-- INFORMACIÓN ----------------------------------------------------------&gt;\n&lt;section class=\"informacion\"&gt;\n&lt;div class=\"container\"&gt;\n\n&lt;h4&gt;SOLICITA INFORMACIÓN E INSCRÍBETE&lt;/h4&gt;\n&lt;p&gt;\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo\nid incidunt ullam illum accusamus pariatur placeat perferendis\neum delectus elius odio est deserunt! Pariatur maxime veritatis\naspermatur ad consequuntur.\n&lt;/p&gt;\n&lt;button type=\"button\" class=\"btn btn_blue\"&gt;Inscríbete!&lt;/button&gt;\n&lt;p&gt;\nVive la experiencia Desafío Latam!\n&lt;/p&gt;\n\n&lt;/div&gt;\n&lt;/section&gt;\n\n&lt;!-- CONTACTO -------------------------------------------------------------&gt;\n&lt;address class=\"container\"&gt;\n&lt;!-- Contacto --&gt;\n&lt;div class=\"contacto col-lg-offset-0 col-lg-4 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-4 col-xs-offset-1 col-xs-10\"&gt;\n&lt;h5&gt;Contacto&lt;/h5&gt;\n&lt;p&gt;\n&lt;b&gt;Desafío Latam&lt;/b&gt;&lt;br/&gt;\nEzequias Alliende 2361 &lt;br/&gt;\nP: +56 9 5117 7975 &lt;br/&gt;\n&lt;/p&gt;\n&lt;a href=\"mailto:inscripciones@desafiolatam.com\"&gt;inscripciones@desafiolatam.com&lt;/a&gt;\n&lt;/div&gt;\n\n&lt;!-- Suscríbete--&gt;\n&lt;div class=\"suscribete col-lg-offset-1 col-lg-7 col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10\"&gt;\n&lt;h5&gt;Suscríbete&lt;/h5&gt;\n&lt;p&gt;\nLorem ipsum dolor sit amet, consectetur adipisicing elit.\n&lt;/p&gt;\n&lt;input class=\"email\" type=\"text\" name=\"\" placeholder=\"Ingresa tu mail\"&gt;\n&lt;input class=\"btn\"type=\"submit\" name=\"\" value=\"Enviar\"&gt;\n&lt;/div&gt;\n&lt;/address&gt;\n\n&lt;/body&gt;', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2018-08-01 00:14:53', '2018-08-01 00:14:53', '', 15, 'http://localhost:8888/2018/08/01/15-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2018-08-01 00:15:00', '2018-08-01 00:15:00', '&lt;body&gt;\r\n&lt;!-- HEADER -------------------------------------------------------------------------------------&gt;\r\n&lt;header style=\"background: url(&lt;?php echo get_bloginfo(\'template_url\') ?&gt;/images/bg.jpeg);\"&gt;\r\n&lt;div class=\"container\"&gt;\r\n\r\n&lt;h1&gt;\r\nCOMIENZA UNA NUEVA VIDA Y ÚNETE AL MUNDO &lt;br/&gt; TECNOLÓGICO\r\n&lt;/h1&gt;\r\n&lt;button type=\"button\" class=\"btn btn_blue\"&gt;Comienza acá!&lt;/button&gt;\r\n&lt;button type=\"button\" class=\"btn btn_green\"&gt;Más Info&lt;/button&gt;\r\n&lt;p&gt;\r\nHay una escasez gigante de desarrolladores en el mundo y más aún\r\nen Latinoamérica, se necesitan más desarrolladores y Tú puedes\r\nser uno!\r\n&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/header&gt;\r\n\r\n&lt;!-- BOOTCAMP -----------------------------------------------------------------------------------&gt;\r\n&lt;section class=\"bootcamp\"&gt;\r\n&lt;div class=\"container\"&gt;\r\n\r\n&lt;h4&gt;EL BOOTCAMP DE PROGRAMACIÓN MÁS GRANDE DE LATINOAMÉRICA&lt;/h4&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Totam\r\nin accusantum corrupti possimus facere hic optio eligendi asperiores\r\nporro laboriosam ratione quos repellat accusamus ea eum ex aut!\r\nMolestias eius!\r\n&lt;/p&gt;\r\n&lt;img class=\"img-responsive\" src=\"&lt;?php echo get_bloginfo(\'template_url\') ?&gt;/images/viewing-gallery-for-happy-people.png\" alt=\"happy people\"/&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;!-- INFORMACIÓN ----------------------------------------------------------&gt;\r\n&lt;section class=\"informacion\"&gt;\r\n&lt;div class=\"container\"&gt;\r\n\r\n&lt;h4&gt;SOLICITA INFORMACIÓN E INSCRÍBETE&lt;/h4&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo\r\nid incidunt ullam illum accusamus pariatur placeat perferendis\r\neum delectus elius odio est deserunt! Pariatur maxime veritatis\r\naspermatur ad consequuntur.\r\n&lt;/p&gt;\r\n&lt;button type=\"button\" class=\"btn btn_blue\"&gt;Inscríbete!&lt;/button&gt;\r\n&lt;p&gt;\r\nVive la experiencia Desafío Latam!\r\n&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/section&gt;\r\n\r\n&lt;!-- CONTACTO -------------------------------------------------------------&gt;\r\n&lt;address class=\"container\"&gt;\r\n&lt;!-- Contacto --&gt;\r\n&lt;div class=\"contacto col-lg-offset-0 col-lg-4 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-4 col-xs-offset-1 col-xs-10\"&gt;\r\n&lt;h5&gt;Contacto&lt;/h5&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;Desafío Latam&lt;/b&gt;&lt;br/&gt;\r\nEzequias Alliende 2361 &lt;br/&gt;\r\nP: +56 9 5117 7975 &lt;br/&gt;\r\n&lt;/p&gt;\r\n&lt;a href=\"mailto:inscripciones@desafiolatam.com\"&gt;inscripciones@desafiolatam.com&lt;/a&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;!-- Suscríbete--&gt;\r\n&lt;div class=\"suscribete col-lg-offset-1 col-lg-7 col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10\"&gt;\r\n&lt;h5&gt;Suscríbete&lt;/h5&gt;\r\n&lt;p&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n&lt;/p&gt;\r\n&lt;input class=\"email\" type=\"text\" name=\"\" placeholder=\"Ingresa tu mail\"&gt;\r\n&lt;input class=\"btn\"type=\"submit\" name=\"\" value=\"Enviar\"&gt;\r\n&lt;/div&gt;\r\n&lt;/address&gt;\r\n\r\n&lt;/body&gt;', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-01 00:15:00', '2018-08-01 00:15:00', '', 15, 'http://localhost:8888/2018/08/01/15-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `17_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(43, 1, '2018-08-01 00:15:21', '2018-08-01 00:15:21', '\r\n<body>\r\n  <!-- HEADER ------------------------------------------------------------------------------------->\r\n  <header style=\"background: url(<?php echo get_bloginfo(\'template_url\') ?>/images/bg.jpeg);\">\r\n    <div class=\"container\">\r\n\r\n      <h1>\r\n        COMIENZA UNA NUEVA VIDA Y ÚNETE AL MUNDO <br/> TECNOLÓGICO\r\n      </h1>\r\n      <button type=\"button\" class=\"btn btn_blue\">Comienza acá!</button>\r\n      <button type=\"button\" class=\"btn btn_green\">Más Info</button>\r\n      <p>\r\n        Hay una escasez gigante de desarrolladores en el mundo y más aún\r\n        en Latinoamérica, se necesitan más desarrolladores y Tú puedes\r\n        ser uno!\r\n      </p>\r\n\r\n    </div>\r\n  </header>\r\n\r\n  <!-- BOOTCAMP ----------------------------------------------------------------------------------->\r\n  <section class=\"bootcamp\">\r\n    <div class=\"container\">\r\n\r\n      <h4>EL BOOTCAMP DE PROGRAMACIÓN MÁS GRANDE DE LATINOAMÉRICA</h4>\r\n      <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam\r\n        in accusantum corrupti possimus facere hic optio eligendi asperiores\r\n        porro laboriosam ratione quos repellat accusamus ea eum ex aut!\r\n        Molestias eius!\r\n      </p>\r\n      <img class=\"img-responsive\" src=\"<?php echo get_bloginfo(\'template_url\') ?>/images/viewing-gallery-for-happy-people.png\" alt=\"happy people\"/>\r\n\r\n    </div>\r\n  </section>\r\n\r\n  <!-- INFORMACIÓN ---------------------------------------------------------->\r\n  <section class=\"informacion\">\r\n    <div class=\"container\">\r\n\r\n      <h4>SOLICITA INFORMACIÓN E INSCRÍBETE</h4>\r\n      <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo\r\n        id incidunt ullam illum accusamus pariatur placeat perferendis\r\n        eum delectus elius odio est deserunt! Pariatur maxime veritatis\r\n        aspermatur ad consequuntur.\r\n      </p>\r\n      <button type=\"button\" class=\"btn btn_blue\">Inscríbete!</button>\r\n      <p>\r\n        Vive la experiencia Desafío Latam!\r\n      </p>\r\n\r\n    </div>\r\n  </section>\r\n\r\n  <!-- CONTACTO ------------------------------------------------------------->\r\n  <address class=\"container\">\r\n      <!-- Contacto -->\r\n      <div class=\"contacto col-lg-offset-0 col-lg-4 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-4 col-xs-offset-1 col-xs-10\">\r\n        <h5>Contacto</h5>\r\n        <p>\r\n          <b>Desafío Latam</b><br/>\r\n          Ezequias Alliende 2361 <br/>\r\n          P: +56 9 5117 7975 <br/>\r\n        </p>\r\n        <a href=\"mailto:inscripciones@desafiolatam.com\">inscripciones@desafiolatam.com</a>\r\n      </div>\r\n\r\n      <!-- Suscríbete-->\r\n      <div class=\"suscribete col-lg-offset-1 col-lg-7 col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10\">\r\n        <h5>Suscríbete</h5>\r\n        <p>\r\n          Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n        </p>\r\n        <input class=\"email\" type=\"text\" name=\"\" placeholder=\"Ingresa tu mail\">\r\n        <input class=\"btn\"type=\"submit\" name=\"\" value=\"Enviar\">\r\n      </div>\r\n  </address>\r\n\r\n</body>\r\n', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-01 00:15:21', '2018-08-01 00:15:21', '', 15, 'http://localhost:8888/2018/08/01/15-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-08-01 00:27:50', '2018-08-01 00:27:50', '', 'pagina de inicio', '', 'publish', 'closed', 'closed', '', 'acf_pagina-de-inicio', '', '', '2018-08-01 00:27:50', '2018-08-01 00:27:50', '', 0, 'http://localhost:8888/?post_type=acf&#038;p=45', 0, 'acf', '', 0),
(46, 1, '2018-08-01 00:28:29', '2018-08-01 00:28:29', '<body>\r\n  <!-- HEADER ------------------------------------------------------------------------------------->\r\n  <header style=\"background: url(<?php echo get_bloginfo(\'template_url\') ?>/images/bg.jpeg);\">\r\n    <div class=\"container\">\r\n\r\n      <h1>\r\n        COMIENZA UNA NUEVA VIDA Y ÚNETE AL MUNDO <br/> TECNOLÓGICO\r\n      </h1>\r\n      <button type=\"button\" class=\"btn btn_blue\">Comienza acá!</button>\r\n      <button type=\"button\" class=\"btn btn_green\">Más Info</button>\r\n      <p>\r\n        Hay una escasez gigante de desarrolladores en el mundo y más aún\r\n        en Latinoamérica, se necesitan más desarrolladores y Tú puedes\r\n        ser uno!\r\n      </p>\r\n\r\n    </div>\r\n  </header>\r\n\r\n  <!-- BOOTCAMP ----------------------------------------------------------------------------------->\r\n  <section class=\"bootcamp\">\r\n    <div class=\"container\">\r\n\r\n      <h4>EL BOOTCAMP DE PROGRAMACIÓN MÁS GRANDE DE LATINOAMÉRICA</h4>\r\n      <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam\r\n        in accusantum corrupti possimus facere hic optio eligendi asperiores\r\n        porro laboriosam ratione quos repellat accusamus ea eum ex aut!\r\n        Molestias eius!\r\n      </p>\r\n      <img class=\"img-responsive\" src=\"<?php echo get_bloginfo(\'template_url\') ?>/images/viewing-gallery-for-happy-people.png\" alt=\"happy people\"/>\r\n\r\n    </div>\r\n  </section>\r\n\r\n  <!-- INFORMACIÓN ---------------------------------------------------------->\r\n  <section class=\"informacion\">\r\n    <div class=\"container\">\r\n\r\n      <h4>SOLICITA INFORMACIÓN E INSCRÍBETE</h4>\r\n      <p>\r\n        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo\r\n        id incidunt ullam illum accusamus pariatur placeat perferendis\r\n        eum delectus elius odio est deserunt! Pariatur maxime veritatis\r\n        aspermatur ad consequuntur.\r\n      </p>\r\n      <button type=\"button\" class=\"btn btn_blue\">Inscríbete!</button>\r\n      <p>\r\n        Vive la experiencia Desafío Latam!\r\n      </p>\r\n\r\n    </div>\r\n  </section>\r\n\r\n  <!-- CONTACTO ------------------------------------------------------------->\r\n  <address class=\"container\">\r\n      <!-- Contacto -->\r\n      <div class=\"contacto col-lg-offset-0 col-lg-4 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-4 col-xs-offset-1 col-xs-10\">\r\n        <h5>Contacto</h5>\r\n        <p>\r\n          <b>Desafío Latam</b><br/>\r\n          Ezequias Alliende 2361 <br/>\r\n          P: +56 9 5117 7975 <br/>\r\n        </p>\r\n        <a href=\"mailto:inscripciones@desafiolatam.com\">inscripciones@desafiolatam.com</a>\r\n      </div>\r\n\r\n      <!-- Suscríbete-->\r\n      <div class=\"suscribete col-lg-offset-1 col-lg-7 col-md-offset-1 col-md-7 col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10\">\r\n        <h5>Suscríbete</h5>\r\n        <p>\r\n          Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n        </p>\r\n        <input class=\"email\" type=\"text\" name=\"\" placeholder=\"Ingresa tu mail\">\r\n        <input class=\"btn\"type=\"submit\" name=\"\" value=\"Enviar\">\r\n      </div>\r\n  </address>\r\n\r\n</body>\r\n', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-01 00:28:29', '2018-08-01 00:28:29', '', 15, 'http://localhost:8888/2018/08/01/15-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-08-01 00:29:53', '2018-08-01 00:29:53', '', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-01 00:29:53', '2018-08-01 00:29:53', '', 15, 'http://localhost:8888/2018/08/01/15-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-08-01 00:35:16', '2018-08-01 00:35:16', '', 'inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-01 00:35:16', '2018-08-01 00:35:16', '', 15, 'http://localhost:8888/2018/08/01/15-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `17_termmeta`
--

CREATE TABLE `17_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `17_terms`
--

CREATE TABLE `17_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_terms`
--

INSERT INTO `17_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'diseño web', 'diseno-web', 0),
(3, 'responsive', 'responsive', 0),
(4, 'web design', 'web-design', 0),
(5, 'tips', 'tips', 0),
(6, 'ui', 'ui', 0),
(7, 'ux', 'ux', 0),
(8, 'videojuegos', 'videojuegos', 0),
(9, 'unity', 'unity', 0),
(10, 'videogames', 'videogames', 0);

-- --------------------------------------------------------

--
-- Table structure for table `17_term_relationships`
--

CREATE TABLE `17_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_term_relationships`
--

INSERT INTO `17_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(23, 3, 0),
(23, 4, 0),
(23, 5, 0),
(33, 2, 0),
(33, 4, 0),
(33, 6, 0),
(33, 7, 0),
(36, 8, 0),
(36, 9, 0),
(36, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `17_term_taxonomy`
--

CREATE TABLE `17_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_term_taxonomy`
--

INSERT INTO `17_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 2),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 2),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `17_usermeta`
--

CREATE TABLE `17_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_usermeta`
--

INSERT INTO `17_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jjjjota'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, '17_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, '17_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"4cccc609c63943dc43618163057112123e3a756efd3e083fc7ce176e80d820f3\";a:4:{s:10:\"expiration\";i:1533773380;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1532563780;}s:64:\"fd950cbc63f94af207f8ca8d00e09d22d589e27fcd1b999a34ae25abab2a4d34\";a:4:{s:10:\"expiration\";i:1533778132;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1532568532;}s:64:\"f4e7d917ba951e294dcff9ebcfd2e449ac48999fa94dc8cac612dab0e86bc45c\";a:4:{s:10:\"expiration\";i:1533254363;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1533081563;}}'),
(17, 1, '17_user-settings', 'editor=tinymce&hidetb=0&libraryContent=browse&mfold=o&align=center'),
(18, 1, '17_user-settings-time', '1533083549'),
(19, 1, '17_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `17_users`
--

CREATE TABLE `17_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `17_users`
--

INSERT INTO `17_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jjjjota', '$P$BUNyvZRrSWx83pS5ye6KMDLQwYP699.', 'jjjjota', 'ctrl-j@outlook.es', '', '2018-07-26 00:09:23', '', 0, 'jjjjota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `17_commentmeta`
--
ALTER TABLE `17_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `17_comments`
--
ALTER TABLE `17_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `17_links`
--
ALTER TABLE `17_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `17_options`
--
ALTER TABLE `17_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `17_postmeta`
--
ALTER TABLE `17_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `17_posts`
--
ALTER TABLE `17_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `17_termmeta`
--
ALTER TABLE `17_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `17_terms`
--
ALTER TABLE `17_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `17_term_relationships`
--
ALTER TABLE `17_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `17_term_taxonomy`
--
ALTER TABLE `17_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `17_usermeta`
--
ALTER TABLE `17_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `17_users`
--
ALTER TABLE `17_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `17_commentmeta`
--
ALTER TABLE `17_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `17_comments`
--
ALTER TABLE `17_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `17_links`
--
ALTER TABLE `17_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `17_options`
--
ALTER TABLE `17_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT for table `17_postmeta`
--
ALTER TABLE `17_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `17_posts`
--
ALTER TABLE `17_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `17_termmeta`
--
ALTER TABLE `17_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `17_terms`
--
ALTER TABLE `17_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `17_term_taxonomy`
--
ALTER TABLE `17_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `17_usermeta`
--
ALTER TABLE `17_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `17_users`
--
ALTER TABLE `17_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
