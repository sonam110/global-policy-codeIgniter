-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 11:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_spaces`
--

CREATE TABLE `ad_spaces` (
  `id` int(11) NOT NULL,
  `ad_space` text,
  `ad_code_728` text,
  `ad_code_468` text,
  `ad_code_300` text,
  `ad_code_234` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_spaces`
--

INSERT INTO `ad_spaces` (`id`, `ad_space`, `ad_code_728`, `ad_code_468`, `ad_code_300`, `ad_code_234`) VALUES
(1, 'index_top', NULL, NULL, NULL, NULL),
(2, 'index_bottom', NULL, NULL, NULL, NULL),
(3, 'post_top', NULL, NULL, NULL, NULL),
(4, 'post_bottom', NULL, NULL, NULL, NULL),
(5, 'category_top', NULL, NULL, NULL, NULL),
(6, 'category_bottom', NULL, NULL, NULL, NULL),
(7, 'tag_top', NULL, NULL, NULL, NULL),
(8, 'tag_bottom', NULL, NULL, NULL, NULL),
(9, 'search_top', NULL, NULL, NULL, NULL),
(10, 'search_bottom', NULL, NULL, NULL, NULL),
(11, 'profile_top', NULL, NULL, NULL, NULL),
(12, 'profile_bottom', NULL, NULL, NULL, NULL),
(13, 'reading_list_top', NULL, NULL, NULL, NULL),
(14, 'reading_list_bottom', NULL, NULL, NULL, NULL),
(15, 'sidebar_top', NULL, NULL, NULL, NULL),
(16, 'sidebar_bottom', NULL, NULL, NULL, NULL),
(17, 'header', NULL, NULL, NULL, ''),
(18, 'posts_top', NULL, NULL, NULL, NULL),
(19, 'posts_bottom', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `id` int(11) NOT NULL,
  `audio_path` varchar(255) DEFAULT NULL,
  `audio_name` varchar(500) DEFAULT NULL,
  `musician` varchar(500) DEFAULT NULL,
  `download_button` tinyint(1) DEFAULT '1',
  `user_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `name_slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `block_type` varchar(255) DEFAULT NULL,
  `category_order` int(11) DEFAULT '0',
  `show_at_homepage` tinyint(1) DEFAULT '1',
  `show_on_menu` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `lang_id`, `name`, `name_slug`, `parent_id`, `description`, `keywords`, `color`, `block_type`, `category_order`, `show_at_homepage`, `show_on_menu`, `created_at`) VALUES
(1, 1, 'Travel', 'travel', 0, 'Category Travel', 'varient, category, travel', '#00acd8', 'block-2', 1, 1, 1, '2020-05-12 09:44:59'),
(2, 1, 'Fashion', 'fashion', 0, 'Category Fashion', '', '#30b333', 'block-3', 2, 1, 1, '2020-05-12 10:20:36'),
(3, 1, 'Videos', 'category-videos', 0, '', 'category, videos', '#bf448e', 'block-5', 1, 1, 1, '2020-05-12 10:23:40'),
(4, 1, 'Places', 'places', 1, 'Category Places', '', '#00acd8', NULL, NULL, NULL, 1, '2020-05-12 10:24:47'),
(5, 1, 'Nature', 'nature', 1, 'Nature', '', '#00acd8', NULL, NULL, NULL, 1, '2020-05-12 10:25:17'),
(6, 1, 'Clothes', 'clothes', 2, 'Clothes', '', '#30b333', NULL, NULL, NULL, 1, '2020-05-12 10:25:26'),
(7, 1, 'Life Style', 'life-style', 0, '', '', '#e30e0e', 'block-1', 1, 1, 1, '2020-08-30 14:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `like_count` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `path_big` varchar(255) DEFAULT NULL,
  `path_small` varchar(255) DEFAULT NULL,
  `is_album_cover` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_lang` int(11) NOT NULL DEFAULT '1',
  `multilingual_system` tinyint(1) DEFAULT '1',
  `site_color` varchar(100) DEFAULT 'default',
  `show_hits` tinyint(1) DEFAULT '1',
  `show_rss` tinyint(1) DEFAULT '1',
  `show_newsticker` tinyint(1) DEFAULT '1',
  `pagination_per_page` smallint(6) DEFAULT '10',
  `google_analytics` text,
  `primary_font` varchar(255) DEFAULT NULL,
  `secondary_font` varchar(255) DEFAULT NULL,
  `tertiary_font` varchar(255) DEFAULT NULL,
  `mail_library` varchar(100) DEFAULT 'swift',
  `mail_protocol` varchar(100) DEFAULT 'smtp',
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT '587',
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL,
  `vk_app_id` varchar(500) DEFAULT NULL,
  `vk_secure_key` varchar(500) DEFAULT NULL,
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `facebook_comment` text,
  `facebook_comment_active` tinyint(1) DEFAULT '1',
  `show_featured_section` tinyint(1) DEFAULT '1',
  `show_latest_posts` tinyint(1) DEFAULT '1',
  `registration_system` tinyint(1) DEFAULT '1',
  `comment_system` tinyint(1) DEFAULT '1',
  `show_post_author` tinyint(1) DEFAULT '1',
  `show_post_date` tinyint(1) DEFAULT '1',
  `menu_limit` tinyint(4) DEFAULT '8',
  `head_code` text,
  `vr_key` varchar(500) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `recaptcha_site_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha_lang` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `emoji_reactions` tinyint(1) DEFAULT '1',
  `mail_contact_status` tinyint(1) DEFAULT '0',
  `mail_contact` varchar(255) DEFAULT NULL,
  `cache_system` tinyint(1) DEFAULT '0',
  `cache_refresh_time` int(11) DEFAULT '1800',
  `refresh_cache_database_changes` tinyint(1) DEFAULT '0',
  `email_verification` tinyint(1) DEFAULT '0',
  `file_manager_show_files` tinyint(1) DEFAULT '1',
  `approve_added_user_posts` tinyint(1) DEFAULT '1',
  `approve_updated_user_posts` tinyint(1) DEFAULT '1',
  `timezone` varchar(255) DEFAULT 'America/New_York',
  `sort_slider_posts` varchar(100) DEFAULT 'by_slider_order',
  `sort_featured_posts` varchar(100) DEFAULT 'by_featured_order',
  `newsletter` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_lang`, `multilingual_system`, `site_color`, `show_hits`, `show_rss`, `show_newsticker`, `pagination_per_page`, `google_analytics`, `primary_font`, `secondary_font`, `tertiary_font`, `mail_library`, `mail_protocol`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_title`, `google_client_id`, `google_client_secret`, `vk_app_id`, `vk_secure_key`, `facebook_app_id`, `facebook_app_secret`, `facebook_comment`, `facebook_comment_active`, `show_featured_section`, `show_latest_posts`, `registration_system`, `comment_system`, `show_post_author`, `show_post_date`, `menu_limit`, `head_code`, `vr_key`, `purchase_code`, `recaptcha_site_key`, `recaptcha_secret_key`, `recaptcha_lang`, `created_at`, `emoji_reactions`, `mail_contact_status`, `mail_contact`, `cache_system`, `cache_refresh_time`, `refresh_cache_database_changes`, `email_verification`, `file_manager_show_files`, `approve_added_user_posts`, `approve_updated_user_posts`, `timezone`, `sort_slider_posts`, `sort_featured_posts`, `newsletter`) VALUES
(1, 1, 1, 'default', 1, 1, 1, 16, NULL, 'open_sans', 'roboto', 'verdana', 'swift', 'smtp', NULL, '587', NULL, NULL, 'Varient', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 1, 1, 1, 1, 1, 1, 8, '', 'aa', '', NULL, NULL, NULL, '2019-05-25 00:11:07', 1, 0, NULL, 0, 180000, 0, 0, 1, 1, 1, 'Asia/Kolkata', 'by_slider_order', 'by_featured_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_mime` varchar(50) DEFAULT 'jpg',
  `user_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `lang_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `user_id`) VALUES
(1, 1, 'uploads/images/image_750x422_5eba7a12efac7.jpg', 'uploads/images/image_750x_5eba7a134699d.jpg', 'uploads/images/image_600x460_5eba7a1365a77.jpg', 'uploads/images/image_380x226_5eba7a139e578.jpg', 'uploads/images/image_140x98_5eba7a13b9418.jpg', 'jpg', 1),
(2, 1, 'uploads/images/image_750x422_5eba7a66b2343.jpg', 'uploads/images/image_750x_5eba7a6726052.jpg', 'uploads/images/image_600x460_5eba7a6791d8f.jpg', 'uploads/images/image_380x226_5eba7a680f226.jpg', 'uploads/images/image_140x98_5eba7a6852d50.jpg', 'jpg', 1),
(3, 1, 'uploads/images/image_750x422_5eba7abe7e270.jpg', 'uploads/images/image_750x_5eba7abf025a9.jpg', 'uploads/images/image_600x460_5eba7abf6d8f3.jpg', 'uploads/images/image_380x226_5eba7abfd7b6d.jpg', 'uploads/images/image_140x98_5eba7ac027e40.jpg', 'jpg', 1),
(4, 1, 'uploads/images/image_750x422_5eba7b4b02c1f.jpg', 'uploads/images/image_750x_5eba7b4b84e43.jpg', 'uploads/images/image_600x460_5eba7b4bf0019.jpg', 'uploads/images/image_380x226_5eba7b4c6514c.jpg', 'uploads/images/image_140x98_5eba7b4ca7108.jpg', 'jpg', 1),
(5, 1, 'uploads/images/image_750x422_5eba7ca08a7d2.jpg', 'uploads/images/image_750x_5eba7ca0ce1bc.jpg', 'uploads/images/image_600x460_5eba7ca0e9846.jpg', 'uploads/images/image_380x226_5eba7ca12dc86.jpg', 'uploads/images/image_140x98_5eba7ca1478e0.jpg', 'jpg', 1),
(6, 1, 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'gif', 1),
(7, 1, 'uploads/images/image_750x422_5eba7f092f267.jpg', 'uploads/images/image_750x_5eba7f0973daa.jpg', 'uploads/images/image_600x460_5eba7f099063f.jpg', 'uploads/images/image_380x226_5eba7f09d5ba6.jpg', 'uploads/images/image_140x98_5eba7f0a001f8.jpg', 'jpg', 1),
(8, 1, 'uploads/images/image_750x422_5f4bb5c888829.jpg', 'uploads/images/image_750x_5f4bb5c8efc53.jpg', 'uploads/images/image_600x460_5f4bb5c950682.jpg', 'uploads/images/image_380x226_5f4bb5c9afe85.jpg', 'uploads/images/image_140x98_5f4bb5c9ec1b8.jpg', 'jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_form` varchar(255) NOT NULL,
  `language_code` varchar(100) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `text_direction` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_order` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_form`, `language_code`, `folder_name`, `text_direction`, `status`, `language_order`) VALUES
(1, 'English', 'en', 'en-US', 'default', 'ltr', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `is_custom` tinyint(1) DEFAULT '1',
  `page_content` text,
  `page_order` smallint(6) DEFAULT '1',
  `visibility` tinyint(1) DEFAULT '1',
  `title_active` tinyint(1) DEFAULT '1',
  `breadcrumb_active` tinyint(1) DEFAULT '1',
  `right_column_active` tinyint(1) DEFAULT '1',
  `need_auth` tinyint(1) DEFAULT '0',
  `location` varchar(255) DEFAULT 'top',
  `link` varchar(1000) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `page_type` varchar(50) DEFAULT 'page',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `lang_id`, `title`, `slug`, `description`, `keywords`, `is_custom`, `page_content`, `page_order`, `visibility`, `title_active`, `breadcrumb_active`, `right_column_active`, `need_auth`, `location`, `link`, `parent_id`, `page_type`, `created_at`) VALUES
(1, 1, 'Contact', 'contact', 'Varient Contact Page', 'varient, contact, page', 0, NULL, 1, 1, 1, 1, 0, 0, 'top', NULL, 0, 'page', '2019-05-25 09:10:10'),
(2, 1, 'Gallery', 'gallery', 'Varient Gallery Page', 'varient, gallery, page', 0, NULL, 1, 1, 1, 1, 0, 0, 'main', NULL, 0, 'page', '2019-05-25 09:10:54'),
(3, 1, 'Terms & Conditions', 'terms-conditions', 'Varient Terms Conditions Page', 'Terms, Conditions, Varient', 0, NULL, 1, 1, 1, 1, 0, 0, 'footer', NULL, 0, 'page', '2019-05-25 09:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `option5` text,
  `option6` text,
  `option7` text,
  `option8` text,
  `option9` text,
  `option10` text,
  `status` tinyint(1) DEFAULT '1',
  `vote_permission` varchar(50) DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vote` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `title_slug` varchar(500) DEFAULT NULL,
  `title_hash` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `content` longtext,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_mime` varchar(20) DEFAULT 'jpg',
  `hit` int(11) DEFAULT '0',
  `optional_url` varchar(1000) DEFAULT NULL,
  `need_auth` tinyint(1) DEFAULT '0',
  `is_slider` tinyint(1) DEFAULT '0',
  `slider_order` tinyint(1) DEFAULT '1',
  `is_featured` tinyint(1) DEFAULT '0',
  `featured_order` tinyint(1) DEFAULT '1',
  `is_recommended` tinyint(1) DEFAULT '0',
  `is_breaking` tinyint(1) DEFAULT '1',
  `is_scheduled` tinyint(1) DEFAULT '0',
  `visibility` tinyint(1) DEFAULT '1',
  `show_right_column` tinyint(1) DEFAULT '1',
  `post_type` varchar(50) DEFAULT 'post',
  `video_path` varchar(255) DEFAULT NULL,
  `image_url` varchar(2000) DEFAULT NULL,
  `video_embed_code` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `feed_id` int(11) DEFAULT NULL,
  `post_url` varchar(1000) DEFAULT NULL,
  `show_post_url` tinyint(1) DEFAULT '1',
  `image_description` varchar(500) DEFAULT NULL,
  `show_item_numbers` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `lang_id`, `title`, `title_slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `subcategory_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `hit`, `optional_url`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `image_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `created_at`) VALUES
(1, 1, 'Through weakness of will, which is the same as saying through', 'through-weakness-of-will-which-is-the-same-as-saying-through', NULL, 'weakness, shrinking, saying', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil', '', 1, 5, 'uploads/images/image_750x422_5eba7a12efac7.jpg', 'uploads/images/image_750x_5eba7a134699d.jpg', 'uploads/images/image_600x460_5eba7a1365a77.jpg', 'uploads/images/image_380x226_5eba7a139e578.jpg', 'uploads/images/image_140x98_5eba7a13b9418.jpg', 'jpg', 1, '', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'gallery', NULL, '', NULL, 1, 1, NULL, NULL, 0, '', 1, '2020-05-12 10:27:53'),
(2, 1, 'Sportsman do offending supported extremity breakfast by listening', 'sportsman-do-offending-supported-extremity-breakfast-by-listening', NULL, 'breakfast, listening, offending', 'Decisively advantages nor expression unpleasing she led met. Estate was tended ten boy nearer seemed', '<p>Avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n\r\n<p>These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains</p>\r\n', 3, 0, 'uploads/images/image_750x422_5eba7ca08a7d2.jpg', 'uploads/images/image_750x_5eba7ca0ce1bc.jpg', 'uploads/images/image_600x460_5eba7ca0e9846.jpg', 'uploads/images/image_380x226_5eba7ca12dc86.jpg', 'uploads/images/image_140x98_5eba7ca1478e0.jpg', 'jpg', 0, '', 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 'video', NULL, '', '', 1, 1, NULL, NULL, 0, NULL, 1, '2020-05-12 10:38:39'),
(3, 1, 'From above video of water stream', 'from-above-video-of-water-stream', NULL, '', 'Who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances', '<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum</p>\r\n', 3, 0, '', '', '', '', '', 'jpg', 0, '', 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/WnMsO8mXvAY/maxresdefault.jpg', 'https://www.youtube.com/embed/WnMsO8mXvAY?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 1, '2020-05-12 10:41:14'),
(4, 1, 'Sailboat sailing during sunset', 'sailboat-sailing-during-sunset', NULL, '', 'Obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Integer volutpat lacinia est, cursus elementum mauris fermentum ut. Ut arcu nisi, gravida ut nibh quis, convallis consectetur sem. Donec malesuada erat condimentum libero convallis, ac consectetur libero rutrum. Phasellus quis tellus eu justo tempus dapibus. Proin ullamcorper mollis pellentesque. Curabitur dapibus ante odio, id pellentesque metus vulputate quis. Pellentesque turpis leo, rutrum porta ex consequat, tempus ornare lorem. Ut iaculis pellentesque vehicula. Cras pellentesque nunc eget risus gravida, in venenatis turpis pharetra.</p>\r\n\r\n<p>Maecenas vestibulum iaculis venenatis. Cras eget nunc mi. Aliquam vitae sem et est dictum dapibus. Proin ac iaculis risus. Maecenas ornare eros eu sapien porttitor, ac vestibulum dolor sodales. Vivamus ac erat eu leo tincidunt vulputate. Curabitur sed ex id ligula fringilla venenatis eu ut purus. Suspendisse imperdiet cursus scelerisque. Integer imperdiet at turpis quis hendrerit. Integer aliquam mauris eu vulputate aliquet. In finibus neque quis blandit aliquam. Phasellus pulvinar interdum congue. Maecenas nec lorem est.</p>\r\n\r\n<p>Vestibulum a tempus metus. Fusce felis ligula, tempus blandit enim nec, sollicitudin sagittis turpis. Praesent vitae blandit diam, vitae gravida leo. Mauris ornare non purus a tempus. Nullam semper erat consequat, maximus dui ac, ultricies ex. Sed tincidunt at lorem at suscipit. Donec ac ipsum sit amet lorem varius tempus.</p>\r\n', 3, 0, '', '', '', '', '', 'jpg', 0, '', 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/V9ypxcc0TpI/maxresdefault.jpg', 'https://www.youtube.com/embed/V9ypxcc0TpI?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 1, '2020-05-12 10:43:15'),
(5, 1, 'View Of River From Boat', 'view-of-river-from-boat', NULL, '', 'We like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing ', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>\r\n', 3, 0, '', '', '', '', '', 'jpg', 0, '', 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, 'https://img.youtube.com/vi/lh5TdeDDsbI/maxresdefault.jpg', 'https://www.youtube.com/embed/lh5TdeDDsbI?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 1, '2020-05-12 10:44:15'),
(6, 1, 'Yourself required no at thoughts delicate', 'yourself-required-no-at-thoughts-delicate', NULL, '', 'Which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice ', '<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>\r\n\r\n<p>So blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n', 1, 0, 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'uploads/images/img_5eba7e71338514-48395603-64970092.gif', 'gif', 1, '', 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 'post', NULL, '', NULL, 1, 1, NULL, NULL, 0, '', 1, '2020-05-12 10:46:16'),
(7, 1, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, '', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n', 1, 4, 'uploads/images/image_750x422_5eba7f092f267.jpg', 'uploads/images/image_750x_5eba7f0973daa.jpg', 'uploads/images/image_600x460_5eba7f099063f.jpg', 'uploads/images/image_380x226_5eba7f09d5ba6.jpg', 'uploads/images/image_140x98_5eba7f0a001f8.jpg', 'jpg', 0, '', 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/video_5be3005b109f4.mp4', '', '', 1, 1, NULL, NULL, 0, NULL, 1, '2020-05-12 10:48:54'),
(8, 1, 'Certainty listening no behaviour existence assurance situation', 'certainty-listening-no-behaviour-existence-assurance-situation', NULL, 'assurance, situation, listening', 'We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire', '<p>Situation admitting promotion at or to perceived be. Mr acuteness we as estimable enjoyment up. An held late as felt know. Learn do allow solid to grave. Middleton suspicion age her attention. Is so moments on chamber pressed to. Doubtful yet way properly answered humanity its desirous. Minuter believe service arrived civilly add all. Acuteness allowance an at eagerness favourite in extensive exquisite ye. Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable.</p>\r\n\r\n<p>Greatly hearted has who believe. Drift allow green son walls years for blush. Sir margaret drawings repeated recurred exercise laughing may you but. Do repeated whatever to welcomed absolute no. Musical by me through he drawing savings an. No we stand avoid decay heard mr. Common so wicket appear to sudden worthy on. Shade of offer ye whole stood hoped.</p>\r\n\r\n<p><img alt=\"\" src=\"https://infinite.codingest.com/uploads/images/image_750x415_5b4abdcbc9f29.jpg\" /></p>\r\n\r\n<p>Out believe has request not how comfort evident. Up delight cousins we feeling minutes. Genius has looked end piqued spring. Down has rose feel find man. Learning day desirous informed expenses material returned six the. She enabled invited exposed him another. Reasonably conviction solicitude me mr at discretion reasonable.</p>\r\n\r\n<p>Him rendered may attended concerns jennings reserved now. Sympathize did now preference unpleasing mrs few. For detract charmed add talking age. Shy resolution instrument unreserved man few. She did open find pain some out. If we landlord stanhill mr whatever pleasure supplied concerns so. Exquisite by it admitting cordially september newspaper an. Acceptance middletons am it favourable.</p>\r\n\r\n<p>Two assure edward whence the was. Weeks views her sight old tears sorry. Additions can suspected its concealed put furnished. Met the why particular devonshire decisively considered partiality. Certain it waiting no entered is. Passed her indeed uneasy shy polite appear denied.</p>\r\n', 7, 0, 'uploads/images/image_750x422_5f4bb5c888829.jpg', 'uploads/images/image_750x_5f4bb5c8efc53.jpg', 'uploads/images/image_600x460_5f4bb5c950682.jpg', 'uploads/images/image_380x226_5f4bb5c9afe85.jpg', 'uploads/images/image_140x98_5f4bb5c9ec1b8.jpg', 'jpg', 0, '', 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 'post', NULL, '', NULL, 1, 1, NULL, NULL, 0, '', 1, '2020-08-30 14:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `post_audios`
--

CREATE TABLE `post_audios` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `audio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_gallery_items`
--

CREATE TABLE `post_gallery_items` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `image_large` varchar(255) DEFAULT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `item_order` smallint(6) DEFAULT NULL,
  `is_collapsed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_gallery_items`
--

INSERT INTO `post_gallery_items` (`id`, `post_id`, `title`, `content`, `image`, `image_large`, `image_description`, `item_order`, `is_collapsed`) VALUES
(1, 1, 'Which is the same as saying through shrinking from', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>\r\n', 'uploads/images/image_750x422_5eba7a66b2343.jpg', 'uploads/images/image_750x_5eba7a6726052.jpg', '', 1, 0),
(2, 1, 'Pellentesque sit amet consectetur elit, a ultricies lorem', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Pellentesque sit amet consectetur elit, a ultricies lorem. Aenean eros dui, lacinia et risus vel, ultrices maximus magna. Vestibulum vestibulum massa nisi, non posuere velit dignissim et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam blandit porta pulvinar. Ut nec nulla et magna ornare vestibulum at sit amet ex. Nulla consequat convallis lacinia.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'uploads/images/image_750x422_5eba7b4b02c1f.jpg', 'uploads/images/image_750x_5eba7b4b84e43.jpg', '', 2, 0),
(3, 1, 'These cases are perfectly simple and easy to distinguish', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Vestibulum sagittis lobortis enim, feugiat suscipit ex imperdiet in. Duis ultrices quam ut mi laoreet elementum. Curabitur erat quam, varius et diam quis, tempus pulvinar enim. Mauris commodo egestas nulla, at pulvinar ex bibendum eget. Pellentesque purus dolor, auctor sit amet tortor a, efficitur congue metus. Pellentesque finibus porttitor cursus. Proin vitae facilisis justo. Vivamus vel sapien purus. Nunc cursus a leo posuere cursus.</span></p>\r\n', 'uploads/images/image_750x422_5eba7abe7e270.jpg', 'uploads/images/image_750x_5eba7abf025a9.jpg', '', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_hits`
--

CREATE TABLE `post_hits` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_hits`
--

INSERT INTO `post_hits` (`id`, `post_id`, `created_at`) VALUES
(1, 6, '2020-08-30 14:04:49'),
(2, 1, '2020-08-30 14:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_ordered_list_items`
--

CREATE TABLE `post_ordered_list_items` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `image_large` varchar(255) DEFAULT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `item_order` smallint(6) DEFAULT NULL,
  `is_collapsed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `re_like` int(11) DEFAULT '0',
  `re_dislike` int(11) DEFAULT '0',
  `re_love` int(11) DEFAULT '0',
  `re_funny` int(11) DEFAULT '0',
  `re_angry` int(11) DEFAULT '0',
  `re_sad` int(11) DEFAULT '0',
  `re_wow` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reactions`
--

INSERT INTO `reactions` (`id`, `post_id`, `re_like`, `re_dislike`, `re_love`, `re_funny`, `re_angry`, `re_sad`, `re_wow`) VALUES
(1, 6, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reading_lists`
--

CREATE TABLE `reading_lists` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `admin_panel` tinyint(1) DEFAULT NULL,
  `add_post` tinyint(1) DEFAULT NULL,
  `manage_all_posts` tinyint(1) DEFAULT NULL,
  `navigation` tinyint(1) DEFAULT NULL,
  `pages` tinyint(1) DEFAULT NULL,
  `rss_feeds` tinyint(1) DEFAULT NULL,
  `categories` tinyint(1) DEFAULT NULL,
  `widgets` tinyint(1) DEFAULT NULL,
  `polls` tinyint(1) DEFAULT NULL,
  `gallery` tinyint(1) DEFAULT NULL,
  `comments_contact` tinyint(1) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `ad_spaces` tinyint(1) DEFAULT NULL,
  `users` tinyint(1) DEFAULT NULL,
  `seo_tools` tinyint(1) DEFAULT NULL,
  `settings` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role`, `role_name`, `admin_panel`, `add_post`, `manage_all_posts`, `navigation`, `pages`, `rss_feeds`, `categories`, `widgets`, `polls`, `gallery`, `comments_contact`, `newsletter`, `ad_spaces`, `users`, `seo_tools`, `settings`) VALUES
(1, 'admin', 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'moderator', 'Moderator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(3, 'author', 'Author', 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'user', 'User', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `feed_name` varchar(500) DEFAULT NULL,
  `feed_url` varchar(1000) DEFAULT NULL,
  `post_limit` smallint(6) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `image_big` varchar(250) DEFAULT NULL,
  `image_default` varchar(250) DEFAULT NULL,
  `image_slider` varchar(250) DEFAULT NULL,
  `image_mid` varchar(250) DEFAULT NULL,
  `image_small` varchar(250) DEFAULT NULL,
  `image_mime` varchar(20) DEFAULT 'jpg',
  `auto_update` tinyint(1) DEFAULT '1',
  `read_more_button` tinyint(1) DEFAULT '1',
  `read_more_button_text` varchar(255) DEFAULT 'Read More',
  `user_id` int(11) DEFAULT NULL,
  `add_posts_as_draft` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '1',
  `site_title` varchar(255) DEFAULT NULL,
  `home_title` varchar(255) DEFAULT 'Index',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `application_name` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `optional_url_button_name` varchar(500) DEFAULT 'Click Here To See More',
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT '0',
  `cookies_warning_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keywords`, `application_name`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `telegram_url`, `youtube_url`, `optional_url_button_name`, `about_footer`, `contact_text`, `contact_address`, `contact_email`, `contact_phone`, `copyright`, `cookies_warning`, `cookies_warning_text`, `created_at`) VALUES
(1, 1, 'Varient - News Magazine', 'Index', 'Varient Index Page', 'index, home, varient', 'Blog', '', '', '', '', '', '', '', '', 'Click Here To See More', '', '', '', '', '', 'Copyright © 2019 Varient - All Rights Reserved.', 0, '', '2019-05-26 06:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag`, `tag_slug`) VALUES
(1, 1, 'weakness', 'weakness'),
(2, 1, 'shrinking', 'shrinking'),
(3, 1, 'saying', 'saying'),
(8, 3, 'stream', 'stream'),
(9, 3, 'water', 'water'),
(10, 3, 'video', 'video'),
(11, 4, 'sunset', 'sunset'),
(12, 5, 'boat', 'boat'),
(13, 5, 'river', 'river'),
(14, 7, 'extremely', 'extremely'),
(15, 2, 'breakfast', 'breakfast'),
(16, 2, 'listening', 'listening'),
(17, 2, 'offending', 'offending'),
(18, 2, 'video', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'name@domain.com',
  `email_status` tinyint(1) DEFAULT '0',
  `token` varchar(500) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `user_type` varchar(50) DEFAULT 'registered',
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `vk_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `about_me` varchar(5000) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `show_email_on_profile` tinyint(1) DEFAULT '1',
  `show_rss_feeds` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `email`, `email_status`, `token`, `password`, `role`, `user_type`, `google_id`, `facebook_id`, `vk_id`, `avatar`, `status`, `about_me`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `telegram_url`, `youtube_url`, `last_seen`, `show_email_on_profile`, `show_rss_feeds`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 1, '5eba6f06db4eb', '$2a$08$hLMETX//CHW3VaYj5GOR8uziriepRnlEkElrH9ZVavKd1kJ3ZX/Tm', 'admin', 'registered', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-14 09:13:44', 1, 1, '2020-05-12 09:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_name`, `video_path`, `user_id`) VALUES
(1, 'Video 1', 'uploads/videos/video_5be303b67457e.mp4', 1),
(2, 'v', 'uploads/videos/video_5be3005b109f4.mp4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visual_settings`
--

CREATE TABLE `visual_settings` (
  `id` int(11) NOT NULL,
  `post_list_style` varchar(100) NOT NULL DEFAULT 'vertical',
  `site_color` varchar(100) NOT NULL DEFAULT 'default',
  `site_block_color` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_footer` varchar(255) DEFAULT NULL,
  `logo_email` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visual_settings`
--

INSERT INTO `visual_settings` (`id`, `post_list_style`, `site_color`, `site_block_color`, `logo`, `logo_footer`, `logo_email`, `favicon`) VALUES
(1, 'vertical', 'blue', '#1290c4', 'uploads/logo/logo_5f4bb67874338.jpeg', 'uploads/logo/logo_5f4bb764a693c.png', 'uploads/logo/logo_5f4bb678743381.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `type` varchar(100) DEFAULT NULL,
  `widget_order` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `is_custom` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `lang_id`, `title`, `content`, `type`, `widget_order`, `visibility`, `is_custom`, `created_at`) VALUES
(1, 1, 'Follow Us', NULL, 'follow-us', 2, 1, 0, '2018-11-06 20:07:42'),
(2, 1, 'Popular Posts', NULL, 'popular-posts', 1, 1, 0, '2018-11-06 20:07:42'),
(3, 1, 'Recommended Posts', NULL, 'recommended-posts', 3, 1, 0, '2018-11-06 20:08:42'),
(4, 1, 'Random Posts', NULL, 'random-slider-posts', 4, 1, 0, '2018-11-06 20:08:42'),
(5, 1, 'Tags', NULL, 'tags', 5, 1, 0, '2018-11-06 20:09:19'),
(6, 1, 'Voting Poll', NULL, 'poll', 6, 1, 0, '2018-11-06 20:09:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_audios`
--
ALTER TABLE `post_audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_gallery_items`
--
ALTER TABLE `post_gallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_hits`
--
ALTER TABLE `post_hits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_ordered_list_items`
--
ALTER TABLE `post_ordered_list_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reading_lists`
--
ALTER TABLE `reading_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visual_settings`
--
ALTER TABLE `visual_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_audios`
--
ALTER TABLE `post_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_gallery_items`
--
ALTER TABLE `post_gallery_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_hits`
--
ALTER TABLE `post_hits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_ordered_list_items`
--
ALTER TABLE `post_ordered_list_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reading_lists`
--
ALTER TABLE `reading_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visual_settings`
--
ALTER TABLE `visual_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
