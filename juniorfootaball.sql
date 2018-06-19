-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2018 at 07:55 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `juniorfootaball`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-10 16:40:12', '2018-04-10 16:40:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/juniorfootball', 'yes'),
(2, 'home', 'http://localhost/juniorfootball', 'yes'),
(3, 'blogname', 'Junior Football Site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@test.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"agendas/?$\";s:27:\"index.php?post_type=agendas\";s:40:\"agendas/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=agendas&feed=$matches[1]\";s:35:\"agendas/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=agendas&feed=$matches[1]\";s:27:\"agendas/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=agendas&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"agendas/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"agendas/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"agendas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"agendas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"agendas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"agendas/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"agendas/([^/]+)/embed/?$\";s:40:\"index.php?agendas=$matches[1]&embed=true\";s:28:\"agendas/([^/]+)/trackback/?$\";s:34:\"index.php?agendas=$matches[1]&tb=1\";s:48:\"agendas/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?agendas=$matches[1]&feed=$matches[2]\";s:43:\"agendas/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?agendas=$matches[1]&feed=$matches[2]\";s:36:\"agendas/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?agendas=$matches[1]&paged=$matches[2]\";s:43:\"agendas/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?agendas=$matches[1]&cpage=$matches[2]\";s:32:\"agendas/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?agendas=$matches[1]&page=$matches[2]\";s:24:\"agendas/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"agendas/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"agendas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"agendas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"agendas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"agendas/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:37:\"acf-options-page/acf-options-page.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:35:\"custom-repeater/custom-repeater.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'juniorfootaball', 'yes'),
(41, 'stylesheet', 'juniorfootaball', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:6:\"player\";a:2:{s:4:\"name\";s:6:\"Player\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:0;}}s:4:\"club\";a:2:{s:4:\"name\";s:4:\"Club\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:0;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:6:{i:1529433473;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1529469615;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1529469714;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1529512838;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529513323;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523378608;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'Junior Football', 'yes'),
(138, 'theme_mods_juniorfootaball', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'acf_version', '4.4.12', 'yes'),
(200, 'options_sponsors_details_0_sponsor_image', '24', 'no'),
(201, '_options_sponsors_details_0_sponsor_image', 'field_5ae89f627202f', 'no'),
(202, 'options_sponsors_details_0_sponsor_link', '#', 'no'),
(203, '_options_sponsors_details_0_sponsor_link', 'field_5ae89f8072030', 'no'),
(204, 'options_sponsors_details_1_sponsor_image', '25', 'no'),
(205, '_options_sponsors_details_1_sponsor_image', 'field_5ae89f627202f', 'no'),
(206, 'options_sponsors_details_1_sponsor_link', 'test', 'no'),
(207, '_options_sponsors_details_1_sponsor_link', 'field_5ae89f8072030', 'no'),
(208, 'options_sponsors_details', '2', 'no'),
(209, '_options_sponsors_details', 'field_5ae89f477202e', 'no'),
(226, 'options_facebook_link', '', 'no'),
(227, '_options_facebook_link', 'field_5ae8a24fd9c92', 'no'),
(228, 'options_google_plus_link', '', 'no'),
(229, '_options_google_plus_link', 'field_5ae8a25ad9c93', 'no'),
(230, 'options_instagram_link', '', 'no'),
(231, '_options_instagram_link', 'field_5ae8a26dd9c94', 'no'),
(232, 'options_linkedin_link', '', 'no'),
(233, '_options_linkedin_link', 'field_5ae8a278d9c95', 'no'),
(234, 'options_card_details', '0', 'no'),
(235, '_options_card_details', 'field_5ae8ab7207aaa', 'no'),
(326, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1529429383;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(329, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:13:\"test@test.com\";s:7:\"version\";s:5:\"4.9.6\";s:9:\"timestamp\";i:1527703186;}', 'no'),
(447, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1529429383;s:7:\"checked\";a:4:{s:15:\"juniorfootaball\";s:3:\"1.5\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(448, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1529429384;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:37:\"acf-options-page/acf-options-page.php\";s:5:\"1.2.0\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:35:\"custom-repeater/custom-repeater.php\";s:3:\"1.0\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(449, '_site_transient_timeout_browser_143156aedca8214ce63a15cbea76913a', '1529947025', 'no'),
(450, '_site_transient_browser_143156aedca8214ce63a15cbea76913a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(464, '_site_transient_timeout_theme_roots', '1529431183', 'no'),
(465, '_site_transient_theme_roots', 'a:4:{s:15:\"juniorfootaball\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_wp_page_template', 'page-templats/homepage.php'),
(4, 5, '_edit_lock', '1524406581:1'),
(5, 10, '_edit_last', '1'),
(6, 10, 'field_5adc28aa0a54b', 'a:13:{s:3:\"key\";s:19:\"field_5adc28aa0a54b\";s:5:\"label\";s:14:\"Slider Details\";s:4:\"name\";s:14:\"slider_details\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:12:{s:3:\"key\";s:19:\"field_5adc28c10a54c\";s:5:\"label\";s:12:\"Slider Image\";s:4:\"name\";s:12:\"slider_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_5adc28d00a54d\";s:5:\"label\";s:11:\"Slider Text\";s:4:\"name\";s:11:\"slider_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(7, 10, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:26:\"page-templats/homepage.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(8, 10, 'position', 'normal'),
(9, 10, 'layout', 'no_box'),
(10, 10, 'hide_on_screen', ''),
(11, 10, '_edit_lock', '1524377848:1'),
(12, 11, '_wp_attached_file', '2018/04/banner.png'),
(13, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:553;s:4:\"file\";s:18:\"2018/04/banner.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x111.png\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x283.png\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x378.png\";s:5:\"width\";i:1024;s:6:\"height\";i:378;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"banner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 12, 'slider_details_0_slider_image', '11'),
(15, 12, '_slider_details_0_slider_image', 'field_5adc28c10a54c'),
(16, 12, 'slider_details_0_slider_text', 'Test Text'),
(17, 12, '_slider_details_0_slider_text', 'field_5adc28d00a54d'),
(18, 12, 'slider_details_1_slider_image', '11'),
(19, 12, '_slider_details_1_slider_image', 'field_5adc28c10a54c'),
(20, 12, 'slider_details_1_slider_text', 'Test Text1'),
(21, 12, '_slider_details_1_slider_text', 'field_5adc28d00a54d'),
(22, 12, 'slider_details', '2'),
(23, 12, '_slider_details', 'field_5adc28aa0a54b'),
(24, 5, 'slider_details_0_slider_image', '11'),
(25, 5, '_slider_details_0_slider_image', 'field_5adc28c10a54c'),
(26, 5, 'slider_details_0_slider_text', 'Test Text'),
(27, 5, '_slider_details_0_slider_text', 'field_5adc28d00a54d'),
(28, 5, 'slider_details_1_slider_image', '15'),
(29, 5, '_slider_details_1_slider_image', 'field_5adc28c10a54c'),
(30, 5, 'slider_details_1_slider_text', 'Test Text1'),
(31, 5, '_slider_details_1_slider_text', 'field_5adc28d00a54d'),
(32, 5, 'slider_details', '2'),
(33, 5, '_slider_details', 'field_5adc28aa0a54b'),
(34, 13, '_wp_attached_file', '2018/04/banner-1.png'),
(35, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:553;s:4:\"file\";s:20:\"2018/04/banner-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-1-300x111.png\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-1-768x283.png\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"banner-1-1024x378.png\";s:5:\"width\";i:1024;s:6:\"height\";i:378;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"banner-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 14, '_wp_attached_file', '2018/04/banner-2.png'),
(37, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:553;s:4:\"file\";s:20:\"2018/04/banner-2.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-2-300x111.png\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-2-768x283.png\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"banner-2-1024x378.png\";s:5:\"width\";i:1024;s:6:\"height\";i:378;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"banner-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 15, '_wp_attached_file', '2018/04/banner-3.png'),
(39, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:553;s:4:\"file\";s:20:\"2018/04/banner-3.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-3-300x111.png\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-3-768x283.png\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"banner-3-1024x378.png\";s:5:\"width\";i:1024;s:6:\"height\";i:378;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"banner-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 16, 'slider_details_0_slider_image', '11'),
(41, 16, '_slider_details_0_slider_image', 'field_5adc28c10a54c'),
(42, 16, 'slider_details_0_slider_text', 'Test Text'),
(43, 16, '_slider_details_0_slider_text', 'field_5adc28d00a54d'),
(44, 16, 'slider_details_1_slider_image', '15'),
(45, 16, '_slider_details_1_slider_image', 'field_5adc28c10a54c'),
(46, 16, 'slider_details_1_slider_text', 'Test Text1'),
(47, 16, '_slider_details_1_slider_text', 'field_5adc28d00a54d'),
(48, 16, 'slider_details', '2'),
(49, 16, '_slider_details', 'field_5adc28aa0a54b'),
(50, 17, '_edit_last', '1'),
(51, 17, '_edit_lock', '1525374963:1'),
(52, 17, '_wp_page_template', 'page-templats/clubregister.php'),
(56, 23, '_edit_last', '1'),
(57, 23, 'field_5ae89f477202e', 'a:13:{s:3:\"key\";s:19:\"field_5ae89f477202e\";s:5:\"label\";s:16:\"Sponsors Details\";s:4:\"name\";s:16:\"sponsors_details\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:12:{s:3:\"key\";s:19:\"field_5ae89f627202f\";s:5:\"label\";s:13:\"Sponsor Image\";s:4:\"name\";s:13:\"sponsor_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_5ae89f8072030\";s:5:\"label\";s:12:\"Sponsor Link\";s:4:\"name\";s:12:\"sponsor_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(59, 23, 'position', 'normal'),
(60, 23, 'layout', 'no_box'),
(61, 23, 'hide_on_screen', ''),
(62, 23, '_edit_lock', '1525202839:1'),
(63, 24, '_wp_attached_file', '2018/05/ad.png'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:132;s:6:\"height\";i:125;s:4:\"file\";s:14:\"2018/05/ad.png\";s:5:\"sizes\";a:1:{s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:14:\"ad-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 25, '_wp_attached_file', '2018/05/abn-amro.png'),
(66, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:282;s:6:\"height\";i:125;s:4:\"file\";s:20:\"2018/05/abn-amro.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"abn-amro-150x125.png\";s:5:\"width\";i:150;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"abn-amro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 23, 'field_5ae8a24fd9c92', 'a:14:{s:3:\"key\";s:19:\"field_5ae8a24fd9c92\";s:5:\"label\";s:13:\"Facebook Link\";s:4:\"name\";s:13:\"facebook_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(68, 23, 'field_5ae8a25ad9c93', 'a:14:{s:3:\"key\";s:19:\"field_5ae8a25ad9c93\";s:5:\"label\";s:16:\"Google Plus Link\";s:4:\"name\";s:16:\"google_plus_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(69, 23, 'field_5ae8a26dd9c94', 'a:14:{s:3:\"key\";s:19:\"field_5ae8a26dd9c94\";s:5:\"label\";s:14:\"Instagram Link\";s:4:\"name\";s:14:\"instagram_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(70, 23, 'field_5ae8a278d9c95', 'a:14:{s:3:\"key\";s:19:\"field_5ae8a278d9c95\";s:5:\"label\";s:13:\"Linkedin Link\";s:4:\"name\";s:13:\"linkedin_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(72, 23, 'field_5ae8ab7207aaa', 'a:13:{s:3:\"key\";s:19:\"field_5ae8ab7207aaa\";s:5:\"label\";s:12:\"Card Details\";s:4:\"name\";s:12:\"card_details\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:12:{s:3:\"key\";s:19:\"field_5ae8ab9807aab\";s:5:\"label\";s:10:\"Card Image\";s:4:\"name\";s:10:\"card_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_5ae8abad07aac\";s:5:\"label\";s:9:\"Card Link\";s:4:\"name\";s:9:\"card_link\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(73, 23, 'rule', 'a:5:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(74, 26, '_edit_last', '1'),
(75, 26, 'field_5ae8a356202b3', 'a:14:{s:3:\"key\";s:19:\"field_5ae8a356202b3\";s:5:\"label\";s:9:\"Club Name\";s:4:\"name\";s:9:\"club_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(76, 26, 'field_5ae8a365202b4', 'a:15:{s:3:\"key\";s:19:\"field_5ae8a365202b4\";s:5:\"label\";s:11:\"No Of Teams\";s:4:\"name\";s:11:\"no_of_teams\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(77, 26, 'field_5ae8ac14202b5', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac14202b5\";s:5:\"label\";s:6:\"Street\";s:4:\"name\";s:6:\"street\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(78, 26, 'field_5ae8ac2f202b6', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac2f202b6\";s:5:\"label\";s:12:\"House Number\";s:4:\"name\";s:12:\"house_number\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(79, 26, 'field_5ae8ac3a202b7', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac3a202b7\";s:5:\"label\";s:8:\"Postcode\";s:4:\"name\";s:8:\"postcode\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(80, 26, 'field_5ae8ac44202b8', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac44202b8\";s:5:\"label\";s:5:\"Place\";s:4:\"name\";s:5:\"place\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(81, 26, 'field_5ae8ac4e202b9', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac4e202b9\";s:5:\"label\";s:20:\"Function FIller Form\";s:4:\"name\";s:20:\"function_filler_form\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(82, 26, 'field_5ae8ac5d202ba', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac5d202ba\";s:5:\"label\";s:16:\"Name FIller Form\";s:4:\"name\";s:16:\"name_filler_form\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(83, 26, 'field_5ae8ac67202bb', 'a:14:{s:3:\"key\";s:19:\"field_5ae8ac67202bb\";s:5:\"label\";s:19:\"How Did you find us\";s:4:\"name\";s:19:\"how_did_you_find_us\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(85, 26, 'position', 'normal'),
(86, 26, 'layout', 'no_box'),
(87, 26, 'hide_on_screen', ''),
(88, 26, '_edit_lock', '1525809614:1'),
(89, 27, '_edit_lock', '1525202804:1'),
(90, 27, '_edit_last', '1'),
(91, 27, '_wp_page_template', 'page-templats/playerregister.php'),
(93, 30, '_edit_lock', '1529259417:1'),
(94, 30, '_edit_last', '1'),
(95, 30, 'field_5ae8c033ab95b', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c033ab95b\";s:5:\"label\";s:11:\"Player Name\";s:4:\"name\";s:11:\"player_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(96, 30, 'field_5ae8c041ab95c', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c041ab95c\";s:5:\"label\";s:6:\"Street\";s:4:\"name\";s:6:\"street\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(97, 30, 'field_5ae8c04bab95d', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c04bab95d\";s:5:\"label\";s:12:\"House Number\";s:4:\"name\";s:12:\"house_number\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(98, 30, 'field_5ae8c057ab95e', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c057ab95e\";s:5:\"label\";s:8:\"Postcode\";s:4:\"name\";s:8:\"postcode\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(99, 30, 'field_5ae8c060ab95f', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c060ab95f\";s:5:\"label\";s:5:\"Place\";s:4:\"name\";s:5:\"place\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(100, 30, 'field_5ae8c078ab960', 'a:15:{s:3:\"key\";s:19:\"field_5ae8c078ab960\";s:5:\"label\";s:3:\"Age\";s:4:\"name\";s:3:\"age\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(101, 30, 'field_5ae8c08aab961', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c08aab961\";s:5:\"label\";s:12:\"Parents Name\";s:4:\"name\";s:12:\"parents_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(102, 30, 'field_5ae8c096ab962', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c096ab962\";s:5:\"label\";s:6:\"Length\";s:4:\"name\";s:6:\"length\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(103, 30, 'field_5ae8c0a1ab963', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c0a1ab963\";s:5:\"label\";s:4:\"Mass\";s:4:\"name\";s:4:\"mass\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(104, 30, 'field_5ae8c0aaab964', 'a:11:{s:3:\"key\";s:19:\"field_5ae8c0aaab964\";s:5:\"label\";s:9:\"Club Name\";s:4:\"name\";s:9:\"club_name\";s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"role\";a:1:{i:0;s:4:\"club\";}s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(105, 30, 'field_5ae8c0b6ab965', 'a:12:{s:3:\"key\";s:19:\"field_5ae8c0b6ab965\";s:5:\"label\";s:8:\"Position\";s:4:\"name\";s:8:\"position\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"choices\";a:12:{s:10:\"Goalkeeper\";s:10:\"Goalkeeper\";s:10:\"Centreback\";s:10:\"Centreback\";s:7:\"Sweeper\";s:7:\"Sweeper\";s:8:\"Fullback\";s:8:\"Fullback\";s:8:\"Wingback\";s:8:\"Wingback\";s:18:\"Centralmidfielders\";s:18:\"Centralmidfielders\";s:20:\"Defensivemidfielders\";s:20:\"Defensivemidfielders\";s:20:\"Attackingmidfielders\";s:20:\"Attackingmidfielders\";s:15:\"Widemidfielders\";s:15:\"Widemidfielders\";s:15:\"Center forwards\";s:15:\"Center forwards\";s:15:\"Second strikers\";s:15:\"Second strikers\";s:15:\"Wingerattackers\";s:15:\"Wingerattackers\";}s:13:\"default_value\";s:0:\"\";s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(106, 30, 'field_5ae8c0c5ab966', 'a:15:{s:3:\"key\";s:19:\"field_5ae8c0c5ab966\";s:5:\"label\";s:8:\"Rankings\";s:4:\"name\";s:8:\"rankings\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(107, 30, 'field_5ae8c0e4ab967', 'a:14:{s:3:\"key\";s:19:\"field_5ae8c0e4ab967\";s:5:\"label\";s:9:\"Play Foot\";s:4:\"name\";s:9:\"play_foot\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}'),
(108, 30, 'field_5ae8c113ab968', 'a:13:{s:3:\"key\";s:19:\"field_5ae8c113ab968\";s:5:\"label\";s:8:\"Overview\";s:4:\"name\";s:8:\"overview\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}'),
(109, 30, 'field_5ae8c123ab969', 'a:13:{s:3:\"key\";s:19:\"field_5ae8c123ab969\";s:5:\"label\";s:35:\"Why do you want to become a member?\";s:4:\"name\";s:34:\"why_do_you_want_to_become_a_member\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}'),
(110, 30, 'field_5ae8c137ab96a', 'a:13:{s:3:\"key\";s:19:\"field_5ae8c137ab96a\";s:5:\"label\";s:14:\"Weekly Details\";s:4:\"name\";s:14:\"weekly_details\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:7:{i:0;a:15:{s:3:\"key\";s:19:\"field_5aeb6a089f7df\";s:5:\"label\";s:9:\"Week Name\";s:4:\"name\";s:9:\"week_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_5ae8c1ccab96b\";s:5:\"label\";s:19:\"Football Group Name\";s:4:\"name\";s:19:\"football_group_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}i:2;a:15:{s:3:\"key\";s:19:\"field_5ae8c1dcab96c\";s:5:\"label\";s:17:\"Against Club Name\";s:4:\"name\";s:17:\"against_club_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}i:3;a:15:{s:3:\"key\";s:19:\"field_5ae8c1f1ab96d\";s:5:\"label\";s:10:\"Coach Name\";s:4:\"name\";s:10:\"coach_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}i:4;a:15:{s:3:\"key\";s:19:\"field_5ae8c205ab96e\";s:5:\"label\";s:18:\"Result Of The Game\";s:4:\"name\";s:18:\"result_of_the_game\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}i:5;a:16:{s:3:\"key\";s:19:\"field_5ae8c219ab96f\";s:5:\"label\";s:22:\"Number Of Yellow Cards\";s:4:\"name\";s:22:\"number_of_yellow_cards\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}i:6;a:16:{s:3:\"key\";s:19:\"field_5ae8c239ab970\";s:5:\"label\";s:19:\"Number Of Red Cards\";s:4:\"name\";s:19:\"number_of_red_cards\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:23;}'),
(112, 30, 'position', 'normal'),
(113, 30, 'layout', 'no_box'),
(114, 30, 'hide_on_screen', ''),
(122, 34, '_edit_lock', '1525292519:1'),
(123, 34, '_edit_last', '1'),
(124, 34, '_wp_page_template', 'page-templats/playerprofile.php'),
(128, 30, 'field_5aeb60906049b', 'a:11:{s:3:\"key\";s:19:\"field_5aeb60906049b\";s:5:\"label\";s:15:\"Profile Picture\";s:4:\"name\";s:15:\"profile_picture\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(131, 38, '_wp_attached_file', '2018/05/junior_scouting_1.png'),
(132, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:169;s:6:\"height\";i:169;s:4:\"file\";s:29:\"2018/05/junior_scouting_1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"junior_scouting_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:29:\"junior_scouting_1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 30, 'field_5aeb686ca5683', 'a:15:{s:3:\"key\";s:19:\"field_5aeb686ca5683\";s:5:\"label\";s:10:\"Penalities\";s:4:\"name\";s:10:\"penalities\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}'),
(135, 30, 'field_5aeb689ea5684', 'a:15:{s:3:\"key\";s:19:\"field_5aeb689ea5684\";s:5:\"label\";s:7:\"Corners\";s:4:\"name\";s:7:\"corners\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}'),
(136, 30, 'field_5aeb68b3a5685', 'a:15:{s:3:\"key\";s:19:\"field_5aeb68b3a5685\";s:5:\"label\";s:10:\"Free Kicks\";s:4:\"name\";s:10:\"free_kicks\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:18;}'),
(137, 30, 'field_5aeb68c9a5686', 'a:15:{s:3:\"key\";s:19:\"field_5aeb68c9a5686\";s:5:\"label\";s:5:\"Goals\";s:4:\"name\";s:5:\"goals\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:19;}'),
(138, 30, 'field_5aeb68dca5687', 'a:15:{s:3:\"key\";s:19:\"field_5aeb68dca5687\";s:5:\"label\";s:10:\"Back Kicks\";s:4:\"name\";s:11:\"back_number\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:20;}'),
(140, 30, 'field_5aeb691e31b10', 'a:14:{s:3:\"key\";s:19:\"field_5aeb691e31b10\";s:5:\"label\";s:9:\"Playtimes\";s:4:\"name\";s:9:\"playtimes\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:21;}'),
(141, 30, 'field_5aeb692f31b11', 'a:14:{s:3:\"key\";s:19:\"field_5aeb692f31b11\";s:5:\"label\";s:5:\"Class\";s:4:\"name\";s:5:\"class\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:22;}'),
(147, 30, 'field_5af0a1a2537f5', 'a:14:{s:3:\"key\";s:19:\"field_5af0a1a2537f5\";s:5:\"label\";s:17:\"Youtube Video Url\";s:4:\"name\";s:17:\"youtube_video_url\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:24;}'),
(151, 42, '_edit_lock', '1525722922:1'),
(152, 42, '_edit_last', '1'),
(153, 42, '_wp_page_template', 'page-templats/clubrprofile.php'),
(154, 26, 'field_5af0b2fe40633', 'a:11:{s:3:\"key\";s:19:\"field_5af0b2fe40633\";s:5:\"label\";s:9:\"Club Logo\";s:4:\"name\";s:9:\"club_logo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(156, 44, '_wp_attached_file', '2018/05/feyenoord_logo.png'),
(157, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:173;s:6:\"height\";i:173;s:4:\"file\";s:26:\"2018/05/feyenoord_logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"feyenoord_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"feyenoord_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 26, 'field_5af1dabe36d0d', 'a:11:{s:3:\"key\";s:19:\"field_5af1dabe36d0d\";s:5:\"label\";s:11:\"Player List\";s:4:\"name\";s:11:\"player_list\";s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:4:\"role\";a:1:{i:0;s:6:\"player\";}s:10:\"field_type\";s:12:\"multi_select\";s:10:\"allow_null\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(159, 26, 'rule', 'a:5:{s:5:\"param\";s:7:\"ef_user\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"club\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(160, 45, '_edit_lock', '1525807253:1'),
(161, 45, '_edit_last', '1'),
(162, 47, '_edit_lock', '1525807249:1'),
(163, 49, '_wp_attached_file', '2018/05/agenda_item1.png'),
(164, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:266;s:4:\"file\";s:24:\"2018/05/agenda_item1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"agenda_item1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"agenda_item1-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:24:\"agenda_item1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 45, '_thumbnail_id', '49'),
(166, 47, '_edit_last', '1'),
(167, 52, '_edit_lock', '1525809613:1'),
(168, 52, '_edit_last', '1'),
(169, 53, '_edit_lock', '1525807282:1'),
(170, 53, '_edit_last', '1'),
(171, 56, '_edit_lock', '1526839179:1'),
(172, 56, '_edit_last', '1'),
(173, 56, '_wp_page_template', 'page-templats/agendalisting.php'),
(174, 30, 'field_5b12678d01350', 'a:12:{s:3:\"key\";s:19:\"field_5b12678d01350\";s:5:\"label\";s:6:\"Agenda\";s:4:\"name\";s:6:\"agenda\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:7:\"agendas\";}s:8:\"taxonomy\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:25;}'),
(177, 60, '_edit_lock', '1528140088:1'),
(178, 60, '_edit_last', '1'),
(179, 60, '_wp_page_template', 'page-templats/sarchresult.php'),
(182, 30, 'rule', 'a:5:{s:5:\"param\";s:7:\"ef_user\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"player\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-10 16:40:12', '2018-04-10 16:40:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-10 16:40:12', '2018-04-10 16:40:12', '', 0, 'http://localhost/juniorfootball/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-10 16:40:12', '2018-04-10 16:40:12', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/juniorfootball/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-10 16:40:12', '2018-04-10 16:40:12', '', 0, 'http://localhost/juniorfootball/?page_id=2', 0, 'page', '', 0),
(5, 1, '2018-04-10 16:50:41', '2018-04-10 16:50:41', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-22 13:06:49', '2018-04-22 13:06:49', '', 0, 'http://localhost/juniorfootball/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-04-10 16:50:41', '2018-04-10 16:50:41', '', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-10 16:50:41', '2018-04-10 16:50:41', '', 5, 'http://localhost/juniorfootball/2018/04/10/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-22 05:23:16', '2018-04-22 05:23:16', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-22 05:23:16', '2018-04-22 05:23:16', '', 5, 'http://localhost/juniorfootball/2018/04/22/5-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-22 06:17:27', '2018-04-22 06:17:27', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'acf_home-page', '', '', '2018-04-22 06:17:27', '2018-04-22 06:17:27', '', 0, 'http://localhost/juniorfootball/?post_type=acf&#038;p=10', 0, 'acf', '', 0),
(11, 1, '2018-04-22 06:18:09', '2018-04-22 06:18:09', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-04-22 06:18:09', '2018-04-22 06:18:09', '', 5, 'http://localhost/juniorfootball/wp-content/uploads/2018/04/banner.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-04-22 06:18:39', '2018-04-22 06:18:39', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-22 06:18:39', '2018-04-22 06:18:39', '', 5, 'http://localhost/juniorfootball/2018/04/22/5-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-22 13:04:48', '2018-04-22 13:04:48', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner-2', '', '', '2018-04-22 13:04:48', '2018-04-22 13:04:48', '', 5, 'http://localhost/juniorfootball/wp-content/uploads/2018/04/banner-1.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2018-04-22 13:05:30', '2018-04-22 13:05:30', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner-3', '', '', '2018-04-22 13:05:30', '2018-04-22 13:05:30', '', 5, 'http://localhost/juniorfootball/wp-content/uploads/2018/04/banner-2.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2018-04-22 13:06:32', '2018-04-22 13:06:32', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner-4', '', '', '2018-04-22 13:06:32', '2018-04-22 13:06:32', '', 5, 'http://localhost/juniorfootball/wp-content/uploads/2018/04/banner-3.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2018-04-22 13:06:49', '2018-04-22 13:06:49', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-22 13:06:49', '2018-04-22 13:06:49', '', 5, 'http://localhost/juniorfootball/2018/04/22/5-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-22 13:16:43', '2018-04-22 13:16:43', '<div>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien.</div>\r\n<div>Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis</div>\r\n<div>neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient</div>\r\n<div>montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus</div>\r\n<div>scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat</div>\r\n<div>elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>\r\n</div>', 'Club Register Page', '', 'publish', 'closed', 'closed', '', 'club-register-page', '', '', '2018-05-03 18:21:37', '2018-05-03 18:21:37', '', 0, 'http://localhost/juniorfootball/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-04-22 13:16:43', '2018-04-22 13:16:43', '', 'Club Register Page', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-22 13:16:43', '2018-04-22 13:16:43', '', 17, 'http://localhost/juniorfootball/2018/04/22/17-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-05-01 17:10:47', '2018-05-01 17:10:47', '', 'Common Fields', '', 'publish', 'closed', 'closed', '', 'acf_common-fields', '', '', '2018-05-01 18:02:36', '2018-05-01 18:02:36', '', 0, 'http://localhost/juniorfootball/?post_type=acf&#038;p=23', 0, 'acf', '', 0),
(24, 1, '2018-05-01 17:11:23', '2018-05-01 17:11:23', '', 'ad', '', 'inherit', 'open', 'closed', '', 'ad', '', '', '2018-05-01 17:11:23', '2018-05-01 17:11:23', '', 0, 'http://localhost/juniorfootball/wp-content/uploads/2018/05/ad.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-05-01 17:11:41', '2018-05-01 17:11:41', '', 'abn-amro', '', 'inherit', 'open', 'closed', '', 'abn-amro', '', '', '2018-05-01 17:11:41', '2018-05-01 17:11:41', '', 0, 'http://localhost/juniorfootball/wp-content/uploads/2018/05/abn-amro.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2018-05-01 18:05:52', '2018-05-01 18:05:52', '', 'Club Fields', '', 'publish', 'closed', 'closed', '', 'acf_club-fields', '', '', '2018-05-08 17:14:50', '2018-05-08 17:14:50', '', 0, 'http://localhost/juniorfootball/?post_type=acf&#038;p=26', 0, 'acf', '', 0),
(27, 1, '2018-05-01 19:08:41', '2018-05-01 19:08:41', '', 'Player Register Page', '', 'publish', 'closed', 'closed', '', 'player-register-page', '', '', '2018-05-01 19:08:41', '2018-05-01 19:08:41', '', 0, 'http://localhost/juniorfootball/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-05-01 19:08:41', '2018-05-01 19:08:41', '', 'Player Register Page', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-01 19:08:41', '2018-05-01 19:08:41', '', 27, 'http://localhost/juniorfootball/2018/05/01/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-05-01 19:38:57', '2018-05-01 19:38:57', '', 'Player Fields', '', 'publish', 'closed', 'closed', '', 'acf_player-fields', '', '', '2018-06-17 16:46:28', '2018-06-17 16:46:28', '', 0, 'http://localhost/juniorfootball/?post_type=acf&#038;p=30', 0, 'acf', '', 0),
(34, 1, '2018-05-02 19:54:28', '2018-05-02 19:54:28', '', 'Player Profile Page', '', 'publish', 'closed', 'closed', '', 'player-profile-page', '', '', '2018-05-02 19:54:28', '2018-05-02 19:54:28', '', 0, 'http://localhost/juniorfootball/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-05-02 19:54:28', '2018-05-02 19:54:28', '', 'Player Profile Page', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-05-02 19:54:28', '2018-05-02 19:54:28', '', 34, 'http://localhost/juniorfootball/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-05-03 18:17:32', '2018-05-03 18:17:32', '<div>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien.</div>\r\n<div>Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis</div>\r\n<div>neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient</div>\r\n<div>montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus</div>\r\n<div>scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat</div>\r\n<div>elementum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>\r\n</div>', 'Club Register Page', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-05-03 18:17:32', '2018-05-03 18:17:32', '', 17, 'http://localhost/juniorfootball/17-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-05-03 19:20:51', '2018-05-03 19:20:51', '', 'junior_scouting_1', '', 'inherit', 'open', 'closed', '', 'junior_scouting_1', '', '', '2018-05-03 19:20:51', '2018-05-03 19:20:51', '', 0, 'http://localhost/juniorfootball/wp-content/uploads/2018/05/junior_scouting_1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2018-05-07 19:55:32', '2018-05-07 19:55:32', '', 'Club Profile Page', '', 'publish', 'closed', 'closed', '', 'club-profile-page', '', '', '2018-05-07 19:55:32', '2018-05-07 19:55:32', '', 0, 'http://localhost/juniorfootball/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-05-07 19:55:32', '2018-05-07 19:55:32', '', 'Club Profile Page', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-07 19:55:32', '2018-05-07 19:55:32', '', 42, 'http://localhost/juniorfootball/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-05-08 16:58:26', '2018-05-08 16:58:26', '', 'feyenoord_logo', '', 'inherit', 'open', 'closed', '', 'feyenoord_logo', '', '', '2018-05-08 16:58:26', '2018-05-08 16:58:26', '', 0, 'http://localhost/juniorfootball/wp-content/uploads/2018/05/feyenoord_logo.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2018-05-08 18:31:36', '2018-05-08 18:31:36', '<div class=\"middlepart_wrapper_innerpages\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-7 col-sm-7 col-xs-12\">\r\n<div class=\"agenda_item_wrapper\">\r\n<div class=\"right_part\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien. Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat elementum.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Agenda1', '', 'publish', 'open', 'closed', '', 'agenda1', '', '', '2018-05-08 18:38:50', '2018-05-08 18:38:50', '', 0, 'http://localhost/juniorfootball/?post_type=agendas&#038;p=45', 0, 'agendas', '', 0),
(46, 1, '2018-05-08 18:31:36', '2018-05-08 18:31:36', '', 'Agenda1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-08 18:31:36', '2018-05-08 18:31:36', '', 45, 'http://localhost/juniorfootball/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-05-08 19:23:01', '2018-05-08 19:23:01', 'test test', 'Agenda2', '', 'publish', 'open', 'closed', '', 'agenda2', '', '', '2018-05-08 19:23:01', '2018-05-08 19:23:01', '', 0, 'http://localhost/juniorfootball/?post_type=agendas&#038;p=47', 0, 'agendas', '', 0),
(48, 1, '2018-05-08 18:37:34', '2018-05-08 18:37:34', '<div class=\"middlepart_wrapper_innerpages\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-7 col-sm-7 col-xs-12\">\n<div class=\"agenda_item_wrapper\">\n<div class=\"right_part\">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien. Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat elementum.\n\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'Agenda1', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2018-05-08 18:37:34', '2018-05-08 18:37:34', '', 45, 'http://localhost/juniorfootball/45-autosave-v1/', 0, 'revision', '', 0),
(49, 1, '2018-05-08 18:38:39', '2018-05-08 18:38:39', '', 'agenda_item1', '', 'inherit', 'open', 'closed', '', 'agenda_item1', '', '', '2018-05-08 18:38:39', '2018-05-08 18:38:39', '', 45, 'http://localhost/juniorfootball/wp-content/uploads/2018/05/agenda_item1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-05-08 18:38:50', '2018-05-08 18:38:50', '<div class=\"middlepart_wrapper_innerpages\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-7 col-sm-7 col-xs-12\">\r\n<div class=\"agenda_item_wrapper\">\r\n<div class=\"right_part\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien. Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat elementum.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Agenda1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-08 18:38:50', '2018-05-08 18:38:50', '', 45, 'http://localhost/juniorfootball/45-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-05-08 19:23:01', '2018-05-08 19:23:01', 'test test', 'Agenda2', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-05-08 19:23:01', '2018-05-08 19:23:01', '', 47, 'http://localhost/juniorfootball/47-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-05-08 19:23:28', '2018-05-08 19:23:28', 'feyeygwhfgewhf', 'Agenda3', '', 'publish', 'open', 'closed', '', 'agenda3', '', '', '2018-05-08 19:57:50', '2018-05-08 19:57:50', '', 0, 'http://localhost/juniorfootball/?post_type=agendas&#038;p=52', 0, 'agendas', '', 0),
(53, 1, '2018-05-08 19:23:38', '2018-05-08 19:23:38', 'ehfewhfuehfuh', 'Agenda4', '', 'publish', 'open', 'closed', '', 'agenda4', '', '', '2018-05-08 19:23:38', '2018-05-08 19:23:38', '', 0, 'http://localhost/juniorfootball/?post_type=agendas&#038;p=53', 0, 'agendas', '', 0),
(54, 1, '2018-05-08 19:23:28', '2018-05-08 19:23:28', 'feyeygwhfgewhf', 'Agenda3', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-05-08 19:23:28', '2018-05-08 19:23:28', '', 52, 'http://localhost/juniorfootball/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-05-08 19:23:38', '2018-05-08 19:23:38', 'ehfewhfuehfuh', 'Agenda4', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-08 19:23:38', '2018-05-08 19:23:38', '', 53, 'http://localhost/juniorfootball/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-05-08 19:24:27', '2018-05-08 19:24:27', '', 'Agenda Page', '', 'publish', 'closed', 'closed', '', 'agenda-page', '', '', '2018-05-08 19:24:27', '2018-05-08 19:24:27', '', 0, 'http://localhost/juniorfootball/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-05-08 19:24:27', '2018-05-08 19:24:27', '', 'Agenda Page', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-05-08 19:24:27', '2018-05-08 19:24:27', '', 56, 'http://localhost/juniorfootball/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-06-04 18:04:02', '2018-06-04 18:04:02', '', 'Search Result', '', 'publish', 'closed', 'closed', '', 'search-result', '', '', '2018-06-04 18:04:02', '2018-06-04 18:04:02', '', 0, 'http://localhost/juniorfootball/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-06-04 18:04:02', '2018-06-04 18:04:02', '', 'Search Result', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-06-04 18:04:02', '2018-06-04 18:04:02', '', 60, 'http://localhost/juniorfootball/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-06-18 17:17:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-18 17:17:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/juniorfootball/?p=62', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '62'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1524377916'),
(21, 2, 'nickname', 'test club'),
(22, 2, 'first_name', ''),
(23, 2, 'last_name', ''),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:2:{s:10:\"subscriber\";b:1;s:4:\"club\";b:1;}'),
(33, 2, 'wp_user_level', '0'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 3, 'nickname', 'test club2'),
(36, 3, 'first_name', ''),
(37, 3, 'last_name', ''),
(38, 3, 'description', ''),
(39, 3, 'rich_editing', 'true'),
(40, 3, 'syntax_highlighting', 'true'),
(41, 3, 'comment_shortcuts', 'false'),
(42, 3, 'admin_color', 'fresh'),
(43, 3, 'use_ssl', '0'),
(44, 3, 'show_admin_bar_front', 'true'),
(45, 3, 'locale', ''),
(46, 3, 'wp_capabilities', 'a:1:{s:4:\"club\";b:1;}'),
(47, 3, 'wp_user_level', '0'),
(48, 3, 'dismissed_wp_pointers', ''),
(49, 3, 'no_of_teams', '3'),
(50, 3, 'street', 'test st'),
(51, 3, 'house_number', 'test house'),
(52, 3, 'postcode', '3000'),
(53, 3, 'place', 'Melbourn'),
(54, 3, 'function_filler_form', 'test'),
(55, 3, 'name_filler_form', 'test'),
(56, 3, 'how_did_you_find_us', 'website'),
(57, 4, 'nickname', 'test1 test1t'),
(58, 4, 'first_name', ''),
(59, 4, 'last_name', ''),
(60, 4, 'description', ''),
(61, 4, 'rich_editing', 'true'),
(62, 4, 'syntax_highlighting', 'true'),
(63, 4, 'comment_shortcuts', 'false'),
(64, 4, 'admin_color', 'fresh'),
(65, 4, 'use_ssl', '0'),
(66, 4, 'show_admin_bar_front', 'true'),
(67, 4, 'locale', ''),
(68, 4, 'wp_capabilities', 'a:1:{s:6:\"player\";b:1;}'),
(69, 4, 'wp_user_level', '0'),
(70, 4, 'dismissed_wp_pointers', ''),
(71, 4, 'street', 'sterrt'),
(72, 4, 'house_number', ''),
(73, 4, 'postcode', '3000'),
(74, 4, 'place', 'lace'),
(75, 4, 'age', '10'),
(76, 4, 'parents_name', ''),
(77, 4, 'length', '5\'3'),
(78, 4, 'mass', '70'),
(79, 4, 'club_name', 'test club'),
(80, 4, 'position', 'test'),
(81, 4, 'rankings', '3'),
(82, 4, 'play_foot', 'test'),
(83, 4, 'overview', 'test overview '),
(84, 4, 'why_do_you_want_to_become_a_member', 'test '),
(85, 5, 'nickname', 'testf testl'),
(86, 5, 'first_name', 'test'),
(87, 5, 'last_name', 'test'),
(88, 5, 'description', ''),
(89, 5, 'rich_editing', 'true'),
(90, 5, 'syntax_highlighting', 'true'),
(91, 5, 'comment_shortcuts', 'false'),
(92, 5, 'admin_color', 'fresh'),
(93, 5, 'use_ssl', '0'),
(94, 5, 'show_admin_bar_front', 'true'),
(95, 5, 'locale', ''),
(96, 5, 'wp_capabilities', 'a:1:{s:6:\"player\";b:1;}'),
(97, 5, 'wp_user_level', '0'),
(98, 5, 'dismissed_wp_pointers', ''),
(99, 5, 'street', 'test'),
(100, 5, 'house_number', '2'),
(101, 5, 'postcode', '3000'),
(102, 5, 'place', 'testplace'),
(103, 5, 'age', '8'),
(104, 5, 'parents_name', 'test parents'),
(105, 5, 'length', '12'),
(106, 5, 'mass', '30'),
(107, 5, 'club_name', 'test club'),
(108, 5, 'position', 'Centreback'),
(109, 5, 'rankings', '3'),
(110, 5, 'play_foot', 'left'),
(111, 5, 'overview', 'test overview '),
(112, 5, 'why_do_you_want_to_become_a_member', ' '),
(115, 5, 'wp_dashboard_quick_press_last_post_id', '36'),
(116, 5, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(117, 5, 'player_name', 'First Last'),
(118, 5, '_player_name', 'field_5ae8c033ab95b'),
(119, 5, 'profile_picture', '38'),
(120, 5, '_profile_picture', 'field_5aeb60906049b'),
(121, 5, '_street', 'field_5ae8c041ab95c'),
(122, 5, '_house_number', 'field_5ae8c04bab95d'),
(123, 5, '_postcode', 'field_5ae8c057ab95e'),
(124, 5, '_place', 'field_5ae8c060ab95f'),
(125, 5, '_age', 'field_5ae8c078ab960'),
(126, 5, '_parents_name', 'field_5ae8c08aab961'),
(127, 5, '_length', 'field_5ae8c096ab962'),
(128, 5, '_mass', 'field_5ae8c0a1ab963'),
(129, 5, '_club_name', 'field_5ae8c0aaab964'),
(130, 5, '_position', 'field_5ae8c0b6ab965'),
(131, 5, '_rankings', 'field_5ae8c0c5ab966'),
(132, 5, '_play_foot', 'field_5ae8c0e4ab967'),
(133, 5, '_overview', 'field_5ae8c113ab968'),
(134, 5, '_why_do_you_want_to_become_a_member', 'field_5ae8c123ab969'),
(135, 5, '_', 'field_5af0a1b2537f6'),
(136, 5, 'penalities', '2'),
(137, 5, '_penalities', 'field_5aeb686ca5683'),
(138, 5, 'corners', '1'),
(139, 5, '_corners', 'field_5aeb689ea5684'),
(140, 5, 'free_kicks', '2'),
(141, 5, '_free_kicks', 'field_5aeb68b3a5685'),
(142, 5, 'goals', '3'),
(143, 5, '_goals', 'field_5aeb68c9a5686'),
(144, 5, 'back_number', '0'),
(145, 5, '_back_number', 'field_5aeb68dca5687'),
(146, 5, '_0_football_group_name', 'Feranwood'),
(147, 5, '__0_football_group_name', 'field_5ae8c1ccab96b'),
(148, 5, '_0_against_club_name', 'Ajax'),
(149, 5, '__0_against_club_name', 'field_5ae8c1dcab96c'),
(150, 5, '_0_coach_name', 'Trainee Jam'),
(151, 5, '__0_coach_name', 'field_5ae8c1f1ab96d'),
(152, 5, '_0_result_of_the_game', '1- 2'),
(153, 5, '__0_result_of_the_game', 'field_5ae8c205ab96e'),
(154, 5, '_0_number_of_yellow_cards', '1'),
(155, 5, '__0_number_of_yellow_cards', 'field_5ae8c219ab96f'),
(156, 5, '_0_number_of_red_cards', '0'),
(157, 5, '__0_number_of_red_cards', 'field_5ae8c239ab970'),
(158, 5, 'playtimes', '25m'),
(159, 5, '_playtimes', 'field_5aeb691e31b10'),
(160, 5, 'class', 'E2'),
(161, 5, '_class', 'field_5aeb692f31b11'),
(162, 5, '_0_week_name', 'Week1'),
(163, 5, '__0_week_name', 'field_5aeb6a089f7df'),
(164, 5, '_1_week_name', 'Week two'),
(165, 5, '__1_week_name', 'field_5aeb6a089f7df'),
(166, 5, '_1_football_group_name', 'Feranwood'),
(167, 5, '__1_football_group_name', 'field_5ae8c1ccab96b'),
(168, 5, '_1_against_club_name', 'FC Twente'),
(169, 5, '__1_against_club_name', 'field_5ae8c1dcab96c'),
(170, 5, '_1_coach_name', 'Tainee Jam'),
(171, 5, '__1_coach_name', 'field_5ae8c1f1ab96d'),
(172, 5, '_1_result_of_the_game', '0 - 0'),
(173, 5, '__1_result_of_the_game', 'field_5ae8c205ab96e'),
(174, 5, '_1_number_of_yellow_cards', '0'),
(175, 5, '__1_number_of_yellow_cards', 'field_5ae8c219ab96f'),
(176, 5, '_1_number_of_red_cards', '0'),
(177, 5, '__1_number_of_red_cards', 'field_5ae8c239ab970'),
(178, 5, 'weekly_details_0_week_name', 'Week1'),
(179, 5, '_weekly_details_0_week_name', 'field_5aeb6a089f7df'),
(180, 5, 'weekly_details_0_football_group_name', 'Feranwwod'),
(181, 5, '_weekly_details_0_football_group_name', 'field_5ae8c1ccab96b'),
(182, 5, 'weekly_details_0_against_club_name', 'Ajax'),
(183, 5, '_weekly_details_0_against_club_name', 'field_5ae8c1dcab96c'),
(184, 5, 'weekly_details_0_coach_name', 'Trainee Jam'),
(185, 5, '_weekly_details_0_coach_name', 'field_5ae8c1f1ab96d'),
(186, 5, 'weekly_details_0_result_of_the_game', '1- 2'),
(187, 5, '_weekly_details_0_result_of_the_game', 'field_5ae8c205ab96e'),
(188, 5, 'weekly_details_0_number_of_yellow_cards', '1'),
(189, 5, '_weekly_details_0_number_of_yellow_cards', 'field_5ae8c219ab96f'),
(190, 5, 'weekly_details_0_number_of_red_cards', '1'),
(191, 5, '_weekly_details_0_number_of_red_cards', 'field_5ae8c239ab970'),
(192, 5, 'weekly_details', '3'),
(193, 5, '_weekly_details', 'field_5ae8c137ab96a'),
(194, 5, 'weekly_details_1_week_name', 'Week2'),
(195, 5, '_weekly_details_1_week_name', 'field_5aeb6a089f7df'),
(196, 5, 'weekly_details_1_football_group_name', 'Feranwood'),
(197, 5, '_weekly_details_1_football_group_name', 'field_5ae8c1ccab96b'),
(198, 5, 'weekly_details_1_against_club_name', 'Oppenonat'),
(199, 5, '_weekly_details_1_against_club_name', 'field_5ae8c1dcab96c'),
(200, 5, 'weekly_details_1_coach_name', 'Trainee Jam'),
(201, 5, '_weekly_details_1_coach_name', 'field_5ae8c1f1ab96d'),
(202, 5, 'weekly_details_1_result_of_the_game', '0-0'),
(203, 5, '_weekly_details_1_result_of_the_game', 'field_5ae8c205ab96e'),
(204, 5, 'weekly_details_1_number_of_yellow_cards', '0'),
(205, 5, '_weekly_details_1_number_of_yellow_cards', 'field_5ae8c219ab96f'),
(206, 5, 'weekly_details_1_number_of_red_cards', '0'),
(207, 5, '_weekly_details_1_number_of_red_cards', 'field_5ae8c239ab970'),
(208, 5, 'weekly_details_2_week_name', 'Week3``'),
(209, 5, '_weekly_details_2_week_name', 'field_5aeb6a089f7df'),
(210, 5, 'weekly_details_2_football_group_name', 'Fernawood'),
(211, 5, '_weekly_details_2_football_group_name', 'field_5ae8c1ccab96b'),
(212, 5, 'weekly_details_2_against_club_name', 'Test Club'),
(213, 5, '_weekly_details_2_against_club_name', 'field_5ae8c1dcab96c'),
(214, 5, 'weekly_details_2_coach_name', 'Test Coach'),
(215, 5, '_weekly_details_2_coach_name', 'field_5ae8c1f1ab96d'),
(216, 5, 'weekly_details_2_result_of_the_game', '2 - 1'),
(217, 5, '_weekly_details_2_result_of_the_game', 'field_5ae8c205ab96e'),
(218, 5, 'weekly_details_2_number_of_yellow_cards', '2'),
(219, 5, '_weekly_details_2_number_of_yellow_cards', 'field_5ae8c219ab96f'),
(220, 5, 'weekly_details_2_number_of_red_cards', '1'),
(221, 5, '_weekly_details_2_number_of_red_cards', 'field_5ae8c239ab970'),
(222, 5, 'youtube_video_url', 'https://www.youtube.com/embed/fIZR5Ib1p_w'),
(223, 5, '_youtube_video_url', 'field_5af0a1a2537f5'),
(224, 6, 'nickname', 'test'),
(225, 6, 'first_name', ''),
(226, 6, 'last_name', ''),
(227, 6, 'description', ''),
(228, 6, 'rich_editing', 'true'),
(229, 6, 'syntax_highlighting', 'true'),
(230, 6, 'comment_shortcuts', 'false'),
(231, 6, 'admin_color', 'fresh'),
(232, 6, 'use_ssl', '0'),
(233, 6, 'show_admin_bar_front', 'true'),
(234, 6, 'locale', ''),
(235, 6, 'wp_capabilities', 'a:1:{s:4:\"club\";b:1;}'),
(236, 6, 'wp_user_level', '0'),
(237, 6, 'dismissed_wp_pointers', ''),
(238, 1, 'session_tokens', 'a:2:{s:64:\"eff5f55115f91aadaa90a1194e53465e25e1110e051413ac18b99ee72b835f01\";a:4:{s:10:\"expiration\";i:1529426669;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1529253869;}s:64:\"941ef0d3e9552d0b28e32fd229784977b8b6742213bcfd955a10809a1ac058cb\";a:4:{s:10:\"expiration\";i:1529515022;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529342222;}}'),
(240, 6, 'wp_dashboard_quick_press_last_post_id', '41'),
(241, 6, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(242, 6, 'session_tokens', 'a:1:{s:64:\"d04c788a1f27120f1789416f43e1721e0b763ec59482d1f8f934347bc582ea62\";a:4:{s:10:\"expiration\";i:1527003989;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1526831189;}}'),
(243, 6, 'club_name', ''),
(244, 6, '_club_name', 'field_5ae8a356202b3'),
(245, 6, 'no_of_teams', ''),
(246, 6, '_no_of_teams', 'field_5ae8a365202b4'),
(247, 6, 'street', ''),
(248, 6, '_street', 'field_5ae8ac14202b5'),
(249, 6, 'house_number', ''),
(250, 6, '_house_number', 'field_5ae8ac2f202b6'),
(251, 6, 'postcode', ''),
(252, 6, '_postcode', 'field_5ae8ac3a202b7'),
(253, 6, 'place', ''),
(254, 6, '_place', 'field_5ae8ac44202b8'),
(255, 6, 'function_filler_form', ''),
(256, 6, '_function_filler_form', 'field_5ae8ac4e202b9'),
(257, 6, 'name_filler_form', ''),
(258, 6, '_name_filler_form', 'field_5ae8ac5d202ba'),
(259, 6, 'how_did_you_find_us', ''),
(260, 6, '_how_did_you_find_us', 'field_5ae8ac67202bb'),
(261, 6, 'club_logo', '44'),
(262, 6, '_club_logo', 'field_5af0b2fe40633'),
(263, 6, 'player_list', 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"5\";}'),
(264, 6, '_player_list', 'field_5af1dabe36d0d'),
(265, 7, 'nickname', 'test ne'),
(266, 7, 'first_name', ''),
(267, 7, 'last_name', ''),
(268, 7, 'description', ''),
(269, 7, 'rich_editing', 'true'),
(270, 7, 'syntax_highlighting', 'true'),
(271, 7, 'comment_shortcuts', 'false'),
(272, 7, 'admin_color', 'fresh'),
(273, 7, 'use_ssl', '0'),
(274, 7, 'show_admin_bar_front', 'true'),
(275, 7, 'locale', ''),
(276, 7, 'wp_capabilities', 'a:1:{s:4:\"club\";b:1;}'),
(277, 7, 'wp_user_level', '0'),
(278, 7, 'dismissed_wp_pointers', ''),
(279, 5, 'session_tokens', 'a:2:{s:64:\"49a254d73afb32ea82d07347b2096542b5d10edf50e7b9f0db53e1a8d14ef82a\";a:4:{s:10:\"expiration\";i:1529427183;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1529254383;}s:64:\"2ad6dc8e86804b594fdce2ecdd9db324b2f9467f112ebce66b6fedf990022bec\";a:4:{s:10:\"expiration\";i:1529515122;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529342322;}}'),
(280, 4, 'player_name', ''),
(281, 4, '_player_name', 'field_5ae8c033ab95b'),
(282, 4, 'profile_picture', '38'),
(283, 4, '_profile_picture', 'field_5aeb60906049b'),
(284, 4, '_street', 'field_5ae8c041ab95c'),
(285, 4, '_house_number', 'field_5ae8c04bab95d'),
(286, 4, '_postcode', 'field_5ae8c057ab95e'),
(287, 4, '_place', 'field_5ae8c060ab95f'),
(288, 4, '_age', 'field_5ae8c078ab960'),
(289, 4, '_parents_name', 'field_5ae8c08aab961'),
(290, 4, '_length', 'field_5ae8c096ab962'),
(291, 4, '_mass', 'field_5ae8c0a1ab963'),
(292, 4, '_club_name', 'field_5ae8c0aaab964'),
(293, 4, '_position', 'field_5ae8c0b6ab965'),
(294, 4, '_rankings', 'field_5ae8c0c5ab966'),
(295, 4, '_play_foot', 'field_5ae8c0e4ab967'),
(296, 4, '_overview', 'field_5ae8c113ab968'),
(297, 4, '_why_do_you_want_to_become_a_member', 'field_5ae8c123ab969'),
(298, 4, 'penalities', ''),
(299, 4, '_penalities', 'field_5aeb686ca5683'),
(300, 4, 'corners', ''),
(301, 4, '_corners', 'field_5aeb689ea5684'),
(302, 4, 'free_kicks', ''),
(303, 4, '_free_kicks', 'field_5aeb68b3a5685'),
(304, 4, 'goals', ''),
(305, 4, '_goals', 'field_5aeb68c9a5686'),
(306, 4, 'back_number', ''),
(307, 4, '_back_number', 'field_5aeb68dca5687'),
(308, 4, 'playtimes', ''),
(309, 4, '_playtimes', 'field_5aeb691e31b10'),
(310, 4, 'class', ''),
(311, 4, '_class', 'field_5aeb692f31b11'),
(312, 4, 'weekly_details', '0'),
(313, 4, '_weekly_details', 'field_5ae8c137ab96a'),
(314, 4, 'youtube_video_url', ''),
(315, 4, '_youtube_video_url', 'field_5af0a1a2537f5'),
(316, 4, 'agenda', '45'),
(317, 4, '_agenda', 'field_5b12678d01350'),
(318, 5, 'agenda', '47'),
(319, 5, '_agenda', 'field_5b12678d01350');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BeWEMCSBh5n/74Vnt1kdMciFRp8xxK1', 'admin', 'test@test.com', '', '2018-04-10 16:40:10', '', 0, 'admin'),
(2, 'test club', '$P$BcApXXbBJXUydCkkLMVpUV.dG1IB2h.', 'test-club', 'test1@test.com', '', '2018-05-01 18:56:19', '', 0, 'ekta'),
(3, 'test club2', '$P$B43F5H5oxP0ene7z6GPSYmHU2khEsM0', 'test-club2', 'test2@test.com', '', '2018-05-01 19:10:51', '', 0, 'dest'),
(4, 'test1 test1t', '$P$Bmy.BN.vFsYNJVOm8o29WtvCvvDcyZ/', 'test1-test1t', 'testnew@test.com', '', '2018-05-01 20:11:47', '', 0, 'xer'),
(5, 'testf testl', '$P$BMlTBuuP6c3Z.IvOQK11qeXJyQBAxi.', 'testf-testl', 'testf@testl.com', '', '2018-05-02 18:59:09', '', 0, 'testf testl'),
(6, 'test', '$P$BpMS9BT2YJtXy7XzR9oLHmfJyovsTV/', 'test', 'testclub@tst.com', '', '2018-05-07 19:46:15', '', 0, 'test'),
(7, 'test ne', '$P$BPmTexWZWGsDc6DcyemzDyFzIU16po/', 'test-ne', 'test@t.com', '', '2018-05-20 16:32:07', '1526833929:$P$BC6UoOS7SR1xCxcprzxGUTCleYhRRr/', 0, 'test ne');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
