-- phpMyAdmin SQL Dump
-- version 4.2.3
-- http://www.phpmyadmin.net
--
-- Host: 218.145.31.48
-- Generation Time: 24-02-11 05:23
-- 서버 버전: 8.0.32
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ZUZUNZA5`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `Bookmarks`
--

CREATE TABLE IF NOT EXISTS `Bookmarks` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tweetId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tweetId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `text` varchar(255) NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `Followers`
--

CREATE TABLE IF NOT EXISTS `Followers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `followed` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `follower` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `g_analytics`
--

CREATE TABLE IF NOT EXISTS `g_analytics` (
`wr_id` int NOT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `cache_time` varchar(255) DEFAULT NULL,
  `page_cnt` varchar(255) DEFAULT NULL,
  `access_token` mediumtext,
  `refresh_token` mediumtext,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `Likes`
--

CREATE TABLE IF NOT EXISTS `Likes` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tweetId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `NEWTHINGS`
--

CREATE TABLE IF NOT EXISTS `NEWTHINGS` (
  `uid` int NOT NULL,
  `eventer` mediumtext NOT NULL,
  `dangerous` int NOT NULL DEFAULT '0',
  `readed` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `Retweets`
--

CREATE TABLE IF NOT EXISTS `Retweets` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tweetId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_book`
--

CREATE TABLE IF NOT EXISTS `sms5_book` (
`bk_no` int NOT NULL,
  `bg_no` int NOT NULL DEFAULT '0',
  `mb_no` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_name` varchar(255) NOT NULL DEFAULT '',
  `bk_hp` varchar(255) NOT NULL DEFAULT '',
  `bk_receipt` tinyint NOT NULL DEFAULT '0',
  `bk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bk_memo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_book_group`
--

CREATE TABLE IF NOT EXISTS `sms5_book_group` (
`bg_no` int NOT NULL,
  `bg_name` varchar(255) NOT NULL DEFAULT '',
  `bg_count` int NOT NULL DEFAULT '0',
  `bg_member` int NOT NULL DEFAULT '0',
  `bg_nomember` int NOT NULL DEFAULT '0',
  `bg_receipt` int NOT NULL DEFAULT '0',
  `bg_reject` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_config`
--

CREATE TABLE IF NOT EXISTS `sms5_config` (
  `cf_phone` varchar(255) NOT NULL DEFAULT '',
  `cf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_form`
--

CREATE TABLE IF NOT EXISTS `sms5_form` (
`fo_no` int NOT NULL,
  `fg_no` tinyint NOT NULL DEFAULT '0',
  `fg_member` char(1) NOT NULL DEFAULT '0',
  `fo_name` varchar(255) NOT NULL DEFAULT '',
  `fo_content` mediumtext NOT NULL,
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_form_group`
--

CREATE TABLE IF NOT EXISTS `sms5_form_group` (
`fg_no` int NOT NULL,
  `fg_name` varchar(255) NOT NULL DEFAULT '',
  `fg_count` int NOT NULL DEFAULT '0',
  `fg_member` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_history`
--

CREATE TABLE IF NOT EXISTS `sms5_history` (
`hs_no` int NOT NULL,
  `wr_no` int NOT NULL DEFAULT '0',
  `wr_renum` int NOT NULL DEFAULT '0',
  `bg_no` int NOT NULL DEFAULT '0',
  `mb_no` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_no` int NOT NULL DEFAULT '0',
  `hs_name` varchar(30) NOT NULL DEFAULT '',
  `hs_hp` varchar(255) NOT NULL DEFAULT '',
  `hs_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hs_flag` tinyint NOT NULL DEFAULT '0',
  `hs_code` varchar(255) NOT NULL DEFAULT '',
  `hs_memo` varchar(255) NOT NULL DEFAULT '',
  `hs_log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_write`
--

CREATE TABLE IF NOT EXISTS `sms5_write` (
  `wr_no` int NOT NULL DEFAULT '1',
  `wr_renum` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(255) NOT NULL DEFAULT '',
  `wr_message` mediumtext NOT NULL,
  `wr_booking` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_total` int NOT NULL DEFAULT '0',
  `wr_re_total` int NOT NULL DEFAULT '0',
  `wr_success` int NOT NULL DEFAULT '0',
  `wr_failure` int NOT NULL DEFAULT '0',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_memo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `Tweets`
--

CREATE TABLE IF NOT EXISTS `Tweets` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `text` varchar(255) NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `commentsCount` int DEFAULT '0',
  `retweetsCount` int DEFAULT '0',
  `likesCount` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'https://res.cloudinary.com/twitter-clone-media/image/upload/v1597737557/user_wt3nrc.png',
  `cover` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wroom_bbs`
--

CREATE TABLE IF NOT EXISTS `wroom_bbs` (
  `wr_content` longtext NOT NULL,
  `wr_title` varchar(255) NOT NULL,
  `wr_memberID` varchar(255) NOT NULL,
  `wr_vote1` int NOT NULL,
`wr_id` int NOT NULL,
  `wr_hash` varchar(255) NOT NULL,
  `wr_filetype` varchar(255) NOT NULL,
  `wr_date` date NOT NULL,
  `wr_hit` int NOT NULL,
  `wr_nick` varchar(255) NOT NULL,
  `flashfile` varchar(255) NOT NULL,
  `wr_classical` int NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=302502 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_auction_exchange`
--

CREATE TABLE IF NOT EXISTS `zuzn_auction_exchange` (
`td_id` int NOT NULL,
  `wr_id` int NOT NULL,
  `mb_id` varchar(30) NOT NULL,
  `mb_name` varchar(255) NOT NULL,
  `mb_nick` varchar(255) NOT NULL,
  `mb_email` varchar(255) NOT NULL,
  `mb_homepage` varchar(255) NOT NULL,
  `td_inter_point` int NOT NULL,
  `td_tender_point` int NOT NULL,
  `td_status` char(1) NOT NULL,
  `td_last` datetime NOT NULL,
  `td_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_auth`
--

CREATE TABLE IF NOT EXISTS `zuzn_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_autosave`
--

CREATE TABLE IF NOT EXISTS `zuzn_autosave` (
`as_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` mediumtext NOT NULL,
  `as_datetime` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2578 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_board`
--

CREATE TABLE IF NOT EXISTS `zuzn_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint NOT NULL DEFAULT '0',
  `bo_read_level` tinyint NOT NULL DEFAULT '0',
  `bo_write_level` tinyint NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint NOT NULL DEFAULT '0',
  `bo_download_level` tinyint NOT NULL DEFAULT '0',
  `bo_html_level` tinyint NOT NULL DEFAULT '0',
  `bo_link_level` tinyint NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint NOT NULL DEFAULT '0',
  `bo_point_target` varchar(10) NOT NULL DEFAULT 'gnu',
  `bo_read_point` int NOT NULL DEFAULT '0',
  `bo_write_point` int NOT NULL DEFAULT '0',
  `bo_comment_point` int NOT NULL DEFAULT '0',
  `bo_download_point` int NOT NULL DEFAULT '0',
  `bo_use_category` tinyint NOT NULL DEFAULT '0',
  `bo_category_list` mediumtext NOT NULL,
  `bo_use_sideview` tinyint NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint NOT NULL DEFAULT '0',
  `bo_select_editor` varchar(50) NOT NULL DEFAULT '',
  `bo_use_rss_view` tinyint NOT NULL DEFAULT '0',
  `bo_use_good` tinyint NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint NOT NULL DEFAULT '0',
  `bo_use_name` tinyint NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint NOT NULL DEFAULT '0',
  `bo_table_width` int NOT NULL DEFAULT '0',
  `bo_subject_len` int NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int NOT NULL DEFAULT '0',
  `bo_page_rows` int NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int NOT NULL DEFAULT '0',
  `bo_new` int NOT NULL DEFAULT '0',
  `bo_hot` int NOT NULL DEFAULT '0',
  `bo_image_width` int NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` mediumtext NOT NULL,
  `bo_mobile_content_head` mediumtext NOT NULL,
  `bo_content_tail` mediumtext NOT NULL,
  `bo_mobile_content_tail` mediumtext NOT NULL,
  `bo_insert_content` mediumtext NOT NULL,
  `bo_gallery_cols` int NOT NULL DEFAULT '0',
  `bo_gallery_width` int NOT NULL DEFAULT '0',
  `bo_gallery_height` int NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int NOT NULL DEFAULT '0',
  `bo_upload_size` int NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint NOT NULL DEFAULT '0',
  `bo_use_search` tinyint NOT NULL DEFAULT '0',
  `bo_order` int NOT NULL DEFAULT '0',
  `bo_count_write` int NOT NULL DEFAULT '0',
  `bo_count_comment` int NOT NULL DEFAULT '0',
  `bo_write_min` int NOT NULL DEFAULT '0',
  `bo_write_max` int NOT NULL DEFAULT '0',
  `bo_comment_min` int NOT NULL DEFAULT '0',
  `bo_comment_max` int NOT NULL DEFAULT '0',
  `bo_notice` mediumtext NOT NULL,
  `bo_upload_count` tinyint NOT NULL DEFAULT '0',
  `bo_use_email` tinyint NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint NOT NULL DEFAULT '0',
  `bo_use_captcha` tinyint NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_ex_cnt` int NOT NULL DEFAULT '0',
  `bo_use_approval` tinyint NOT NULL DEFAULT '0',
  `bo_wr_eb` char(1) NOT NULL DEFAULT '0',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_board_file`
--

CREATE TABLE IF NOT EXISTS `zuzn_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `bf_no` int NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int NOT NULL,
  `bf_content` mediumtext NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int NOT NULL DEFAULT '0',
  `bf_width` int NOT NULL DEFAULT '0',
  `bf_height` smallint NOT NULL DEFAULT '0',
  `bf_type` tinyint NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_board_good`
--

CREATE TABLE IF NOT EXISTS `zuzn_board_good` (
`bg_id` int NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=693 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_board_new`
--

CREATE TABLE IF NOT EXISTS `zuzn_board_new` (
`bn_id` int NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `wr_parent` int NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `ca_name` varchar(255) NOT NULL DEFAULT '',
  `wr_approval` tinyint NOT NULL DEFAULT '1',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_bo_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_comment` int NOT NULL DEFAULT '0',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_comment` int NOT NULL DEFAULT '0',
  `as_good` int NOT NULL DEFAULT '0',
  `as_nogood` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2003 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_cert_history`
--

CREATE TABLE IF NOT EXISTS `zuzn_cert_history` (
`cr_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_config`
--

CREATE TABLE IF NOT EXISTS `zuzn_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` mediumtext NOT NULL,
  `cf_eyoom_admin` enum('y','n') NOT NULL DEFAULT 'y',
  `cf_eyoom_admin_theme` varchar(255) NOT NULL DEFAULT 'eba_basic',
  `cf_permit_level` tinyint NOT NULL DEFAULT '1',
  `cf_use_mbmemo` tinyint NOT NULL DEFAULT '1',
  `cf_use_point` tinyint NOT NULL DEFAULT '0',
  `cf_point_term` int NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint NOT NULL DEFAULT '0',
  `cf_login_point` int NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint NOT NULL DEFAULT '0',
  `cf_nick_modify` int NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int NOT NULL DEFAULT '0',
  `cf_write_point` int NOT NULL DEFAULT '0',
  `cf_comment_point` int NOT NULL DEFAULT '0',
  `cf_download_point` int NOT NULL DEFAULT '0',
  `cf_write_pages` int NOT NULL DEFAULT '0',
  `cf_mobile_pages` int NOT NULL DEFAULT '0',
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint NOT NULL DEFAULT '0',
  `cf_delay_sec` int NOT NULL DEFAULT '0',
  `cf_filter` mediumtext NOT NULL,
  `cf_possible_ip` mediumtext NOT NULL,
  `cf_intercept_ip` mediumtext NOT NULL,
  `cf_analytics` mediumtext NOT NULL,
  `cf_add_meta` mediumtext NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` mediumtext NOT NULL,
  `cf_map_google_id` varchar(255) NOT NULL DEFAULT '',
  `cf_map_naver_id` varchar(255) NOT NULL DEFAULT '',
  `cf_map_daum_id` varchar(255) NOT NULL DEFAULT '',
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint NOT NULL DEFAULT '0',
  `cf_register_level` tinyint NOT NULL DEFAULT '0',
  `cf_register_point` int NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint NOT NULL DEFAULT '0',
  `cf_recommend_point` int NOT NULL DEFAULT '0',
  `cf_leave_day` int NOT NULL DEFAULT '0',
  `cf_search_part` int NOT NULL DEFAULT '0',
  `cf_email_use` tinyint NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint NOT NULL DEFAULT '0',
  `cf_prohibit_id` mediumtext NOT NULL,
  `cf_prohibit_email` mediumtext NOT NULL,
  `cf_new_del` int NOT NULL DEFAULT '0',
  `cf_memo_del` int NOT NULL DEFAULT '0',
  `cf_visit_del` int NOT NULL DEFAULT '0',
  `cf_popular_del` int NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '2023-01-01',
  `cf_use_member_icon` tinyint NOT NULL DEFAULT '0',
  `cf_member_icon_size` int NOT NULL DEFAULT '0',
  `cf_member_icon_width` int NOT NULL DEFAULT '0',
  `cf_member_icon_height` int NOT NULL DEFAULT '0',
  `cf_member_img_size` int NOT NULL DEFAULT '0',
  `cf_member_img_width` int NOT NULL DEFAULT '0',
  `cf_member_img_height` int NOT NULL DEFAULT '0',
  `cf_login_minutes` int NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint NOT NULL DEFAULT '0',
  `cf_page_rows` int NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int NOT NULL DEFAULT '0',
  `cf_stipulation` mediumtext NOT NULL,
  `cf_privacy` mediumtext NOT NULL,
  `cf_open_modify` int NOT NULL DEFAULT '0',
  `cf_memo_send_point` int NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint NOT NULL DEFAULT '0',
  `cf_cert_find` tinyint NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_simple` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kg_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_token_key` varchar(100) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint NOT NULL DEFAULT '0',
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_content`
--

CREATE TABLE IF NOT EXISTS `zuzn_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint NOT NULL DEFAULT '0',
  `co_hit` int NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_activity`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_activity` (
`act_id` mediumint unsigned NOT NULL,
  `mb_id` varchar(40) NOT NULL,
  `act_type` varchar(20) NOT NULL,
  `act_contents` text NOT NULL,
  `act_image` text NOT NULL,
  `act_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2580 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_banner`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_banner` (
`bn_no` int unsigned NOT NULL,
  `bn_code` varchar(20) NOT NULL,
  `bn_subject` varchar(255) NOT NULL DEFAULT '0',
  `bn_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `bn_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `bn_state` smallint NOT NULL DEFAULT '0',
  `bn_image` varchar(255) NOT NULL,
  `bn_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_banner_date`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_banner_date` (
  `bs_date` date NOT NULL DEFAULT '0000-00-00',
  `bs_expose` text NOT NULL,
  `bs_clicked` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_banner_hit`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_banner_hit` (
`bh_id` int unsigned NOT NULL,
  `bn_code` varchar(20) NOT NULL,
  `bi_no` int NOT NULL,
  `bh_ip` varchar(100) NOT NULL DEFAULT '',
  `bh_date` date NOT NULL DEFAULT '0000-00-00',
  `bh_time` time NOT NULL DEFAULT '00:00:00',
  `bh_referer` text NOT NULL,
  `bh_agent` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1066 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_banner_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_banner_item` (
`bi_no` int unsigned NOT NULL,
  `bn_code` varchar(20) NOT NULL,
  `bi_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `bi_type` enum('intra','extra') NOT NULL DEFAULT 'intra',
  `bi_state` char(1) NOT NULL DEFAULT '2',
  `bi_sort` int DEFAULT '0',
  `bi_title` varchar(255) NOT NULL,
  `bi_subtitle` varchar(255) NOT NULL,
  `bi_script` text NOT NULL,
  `bi_link` varchar(255) NOT NULL DEFAULT '',
  `bi_target` enum('_self','_blank') NOT NULL DEFAULT '_blank',
  `bi_img` varchar(255) NOT NULL DEFAULT '',
  `bi_period` char(1) NOT NULL DEFAULT '1',
  `bi_start` varchar(10) NOT NULL,
  `bi_end` varchar(10) NOT NULL,
  `bi_exposed` mediumint NOT NULL DEFAULT '0',
  `bi_clicked` mediumint NOT NULL DEFAULT '0',
  `bi_view_level` tinyint NOT NULL DEFAULT '1',
  `bi_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_board`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_board` (
`bo_id` mediumint unsigned NOT NULL,
  `bo_table` varchar(20) NOT NULL,
  `gr_id` varchar(10) NOT NULL,
  `bo_theme` varchar(50) NOT NULL,
  `bo_skin` varchar(40) NOT NULL,
  `use_gnu_skin` enum('y','n') NOT NULL DEFAULT 'n',
  `use_shop_skin` enum('y','n') NOT NULL DEFAULT 'n',
  `bo_sel_date_type` enum('1','2') NOT NULL DEFAULT '1',
  `bo_use_hotgul` char(1) NOT NULL DEFAULT '1',
  `bo_use_anonymous` char(1) NOT NULL DEFAULT '',
  `bo_use_infinite_scroll` char(1) NOT NULL DEFAULT '2',
  `bo_use_cmt_infinite` char(1) NOT NULL DEFAULT '0',
  `bo_use_cmt_best` char(1) NOT NULL DEFAULT '0',
  `bo_use_point_explain` char(1) NOT NULL DEFAULT '1',
  `bo_use_video_photo` char(1) NOT NULL DEFAULT '2',
  `bo_use_list_image` char(1) NOT NULL DEFAULT '1',
  `bo_use_good_member` char(1) NOT NULL DEFAULT '1',
  `bo_use_nogood_member` char(1) NOT NULL DEFAULT '0',
  `bo_use_yellow_card` char(1) NOT NULL DEFAULT '0',
  `bo_use_exif` char(1) NOT NULL DEFAULT '0',
  `bo_use_rating` char(1) NOT NULL DEFAULT '2',
  `bo_use_rating_list` char(1) NOT NULL DEFAULT '1',
  `bo_use_rating_member` char(1) NOT NULL DEFAULT '0',
  `bo_use_rating_score` char(1) NOT NULL DEFAULT '0',
  `bo_use_rating_comment` char(1) NOT NULL DEFAULT '0',
  `bo_rating_point` int NOT NULL DEFAULT '0',
  `bo_use_tag` char(1) NOT NULL DEFAULT '0',
  `bo_use_automove` char(1) NOT NULL DEFAULT '0',
  `bo_goto_url` varchar(255) DEFAULT '',
  `bo_use_addon_emoticon` char(1) NOT NULL DEFAULT '1',
  `bo_use_addon_video` char(1) NOT NULL DEFAULT '1',
  `bo_use_addon_coding` char(1) NOT NULL DEFAULT '0',
  `bo_use_addon_soundcloud` char(1) NOT NULL DEFAULT '0',
  `bo_use_addon_map` char(1) NOT NULL DEFAULT '0',
  `bo_use_addon_cmtfile` char(1) NOT NULL DEFAULT '1',
  `bo_count_cmtfile` smallint NOT NULL DEFAULT '1',
  `bo_use_extimg` char(1) NOT NULL DEFAULT '0',
  `bo_use_adopt_point` char(1) NOT NULL DEFAULT '0',
  `bo_adopt_minpoint` int NOT NULL DEFAULT '0',
  `bo_adopt_maxpoint` int NOT NULL DEFAULT '0',
  `bo_adopt_ratio` smallint NOT NULL DEFAULT '0',
  `bo_use_wrfixed` char(1) NOT NULL DEFAULT '',
  `bo_wrfixed_type` char(1) NOT NULL DEFAULT '1',
  `bo_wrfixed_point` int NOT NULL DEFAULT '1000',
  `bo_wrfixed_date` smallint NOT NULL DEFAULT '5',
  `bo_write_limit` smallint NOT NULL DEFAULT '0',
  `bo_cmt_best_min` tinyint NOT NULL DEFAULT '10',
  `bo_cmt_best_limit` tinyint NOT NULL DEFAULT '5',
  `bo_tag_level` tinyint NOT NULL DEFAULT '2',
  `bo_tag_limit` tinyint NOT NULL DEFAULT '10',
  `bo_automove` varchar(255) NOT NULL,
  `bo_exif_detail` text NOT NULL,
  `bo_blind_limit` tinyint NOT NULL DEFAULT '5',
  `bo_blind_view` tinyint NOT NULL DEFAULT '10',
  `bo_blind_direct` tinyint NOT NULL DEFAULT '10',
  `bo_cmtpoint_target` char(1) NOT NULL DEFAULT '1',
  `bo_firstcmt_point` int NOT NULL DEFAULT '0',
  `bo_firstcmt_point_type` char(1) NOT NULL DEFAULT '1',
  `bo_bomb_point` int NOT NULL DEFAULT '0',
  `bo_bomb_point_type` char(1) NOT NULL DEFAULT '1',
  `bo_bomb_point_limit` int NOT NULL DEFAULT '10',
  `bo_bomb_point_cnt` int NOT NULL DEFAULT '1',
  `bo_lucky_point` int NOT NULL DEFAULT '0',
  `bo_lucky_point_type` char(1) NOT NULL DEFAULT '1',
  `bo_lucky_point_ratio` int NOT NULL DEFAULT '1',
  `download_fee_ratio` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_brand`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_brand` (
`br_no` int unsigned NOT NULL,
  `br_code` varchar(255) NOT NULL,
  `br_name` varchar(255) NOT NULL,
  `br_basic` varchar(255) DEFAULT NULL,
  `br_sort` smallint NOT NULL DEFAULT '0',
  `br_open` enum('y','n') NOT NULL DEFAULT 'y',
  `br_img` varchar(255) DEFAULT NULL,
  `br_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_contents`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_contents` (
`ec_no` int unsigned NOT NULL,
  `ec_code` text NOT NULL,
  `me_id` int unsigned NOT NULL DEFAULT '0',
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `ec_name` varchar(255) NOT NULL DEFAULT '',
  `ec_subject` text NOT NULL,
  `ec_text` text NOT NULL,
  `ec_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `ec_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `ec_state` smallint NOT NULL DEFAULT '0',
  `ec_link` varchar(255) NOT NULL,
  `ec_target` varchar(10) NOT NULL,
  `ec_image` varchar(255) NOT NULL,
  `ec_file` varchar(255) NOT NULL,
  `ec_filename` varchar(255) NOT NULL,
  `ec_sort` smallint NOT NULL DEFAULT '0',
  `ec_link_cnt` smallint NOT NULL DEFAULT '2',
  `ec_image_cnt` smallint NOT NULL DEFAULT '5',
  `ec_ext_cnt` smallint NOT NULL DEFAULT '5',
  `ec_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_contents_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_contents_item` (
`ci_no` int unsigned NOT NULL,
  `ec_code` text NOT NULL,
  `ci_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `ci_state` char(1) NOT NULL DEFAULT '2',
  `ci_sort` int DEFAULT '0',
  `ci_subject` text NOT NULL,
  `ci_text` text NOT NULL,
  `ci_content` text NOT NULL,
  `ci_link` text NOT NULL,
  `ci_target` text NOT NULL,
  `ci_img` text NOT NULL,
  `ci_period` char(1) NOT NULL DEFAULT '1',
  `ci_start` varchar(10) NOT NULL,
  `ci_end` varchar(10) NOT NULL,
  `ci_view_level` tinyint NOT NULL DEFAULT '1',
  `ci_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_exboard`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_exboard` (
`ex_no` int unsigned NOT NULL,
  `bo_table` varchar(20) NOT NULL,
  `ex_fname` varchar(10) NOT NULL,
  `ex_subject` varchar(50) NOT NULL,
  `ex_use_search` enum('y','n') NOT NULL DEFAULT 'n',
  `ex_required` enum('y','n') NOT NULL DEFAULT 'n',
  `ex_form` varchar(20) NOT NULL DEFAULT 'text',
  `ex_type` varchar(20) NOT NULL,
  `ex_length` mediumint NOT NULL,
  `ex_default` varchar(255) NOT NULL,
  `ex_item_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_favorite_adm`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_favorite_adm` (
  `mb_id` varchar(30) NOT NULL,
  `dir` varchar(20) NOT NULL,
  `pid` varchar(40) NOT NULL,
  `fm_code` char(6) NOT NULL,
  `me_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_follow`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_follow` (
`fo_no` int unsigned NOT NULL,
  `fo_my_id` varchar(30) NOT NULL,
  `fo_mb_id` varchar(30) NOT NULL,
  `fo_friends` enum('y','n') NOT NULL DEFAULT 'n',
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=73 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_goods`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_goods` (
`eg_no` int unsigned NOT NULL,
  `eg_code` varchar(20) NOT NULL,
  `eg_subject` varchar(255) NOT NULL,
  `eg_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `eg_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `eg_state` smallint NOT NULL DEFAULT '0',
  `eg_link` varchar(255) NOT NULL,
  `eg_target` varchar(10) NOT NULL,
  `eg_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_goods_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_goods_item` (
`gi_no` int unsigned NOT NULL,
  `eg_code` varchar(20) NOT NULL,
  `gi_theme` varchar(30) NOT NULL DEFAULT '',
  `gi_state` char(1) NOT NULL DEFAULT '2',
  `gi_sort` int DEFAULT '0',
  `gi_title` varchar(255) NOT NULL,
  `gi_link` varchar(255) NOT NULL,
  `gi_target` varchar(10) NOT NULL,
  `gi_ca_id` varchar(20) NOT NULL DEFAULT '',
  `gi_ca_ids` varchar(255) NOT NULL DEFAULT '',
  `gi_exclude` varchar(255) NOT NULL DEFAULT '',
  `gi_include` varchar(255) NOT NULL DEFAULT '',
  `gi_count` smallint NOT NULL DEFAULT '5',
  `gi_sortby` smallint NOT NULL DEFAULT '1',
  `gi_view_it_id` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_name` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_basic` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_cust_price` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_price` char(1) NOT NULL DEFAULT 'y',
  `gi_view_it_icon` char(1) NOT NULL DEFAULT 'y',
  `gi_view_img` char(1) NOT NULL DEFAULT 'y',
  `gi_view_sns` char(1) NOT NULL DEFAULT 'y',
  `gi_img_width` smallint NOT NULL DEFAULT '300',
  `gi_img_height` smallint NOT NULL DEFAULT '0',
  `gi_view_level` tinyint NOT NULL DEFAULT '1',
  `gi_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_latest`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_latest` (
`el_no` int unsigned NOT NULL,
  `el_code` varchar(20) NOT NULL,
  `el_subject` varchar(255) NOT NULL,
  `el_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `el_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `el_state` smallint NOT NULL DEFAULT '0',
  `el_cache` int NOT NULL DEFAULT '0',
  `el_new` mediumint NOT NULL DEFAULT '0',
  `el_link` varchar(255) NOT NULL,
  `el_target` varchar(10) NOT NULL,
  `el_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_latest_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_latest_item` (
`li_no` int unsigned NOT NULL,
  `el_code` varchar(20) NOT NULL,
  `li_theme` varchar(30) NOT NULL DEFAULT '',
  `li_state` char(1) NOT NULL DEFAULT '2',
  `li_sort` int DEFAULT '0',
  `li_title` varchar(255) NOT NULL,
  `li_link` varchar(255) NOT NULL,
  `li_target` varchar(10) NOT NULL,
  `li_bo_table` varchar(20) NOT NULL DEFAULT '',
  `li_ca_name` varchar(50) NOT NULL DEFAULT '',
  `li_gr_id` varchar(20) NOT NULL DEFAULT '',
  `li_exclude` varchar(255) NOT NULL DEFAULT '',
  `li_include` varchar(255) NOT NULL DEFAULT '',
  `li_tables` text NOT NULL,
  `li_direct` char(1) NOT NULL DEFAULT 'n',
  `li_count` smallint NOT NULL DEFAULT '5',
  `li_depart` smallint NOT NULL DEFAULT '2',
  `li_period` smallint NOT NULL DEFAULT '0',
  `li_type` char(2) NOT NULL,
  `li_ca_view` char(1) NOT NULL DEFAULT 'n',
  `li_cut_subject` smallint NOT NULL DEFAULT '50',
  `li_best` char(1) NOT NULL DEFAULT 'n',
  `li_random` char(1) NOT NULL DEFAULT 'n',
  `li_img_view` char(1) NOT NULL DEFAULT 'n',
  `li_img_width` smallint NOT NULL DEFAULT '300',
  `li_img_height` smallint NOT NULL DEFAULT '300',
  `li_content` char(1) NOT NULL DEFAULT 'n',
  `li_cut_content` smallint NOT NULL DEFAULT '100',
  `li_bo_subject` char(1) NOT NULL DEFAULT 'n',
  `li_mbname_view` char(1) NOT NULL DEFAULT 'y',
  `li_photo` char(1) NOT NULL DEFAULT 'n',
  `li_use_date` char(1) NOT NULL DEFAULT 'y',
  `li_date_type` char(1) NOT NULL DEFAULT '1',
  `li_date_kind` varchar(20) NOT NULL,
  `li_view_level` tinyint NOT NULL DEFAULT '1',
  `li_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_like`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_like` (
`lk_no` int unsigned NOT NULL,
  `lk_my_id` varchar(30) NOT NULL,
  `lk_mb_id` varchar(30) NOT NULL,
  `lk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=55 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_manager`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_manager` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mg_theme` varchar(255) NOT NULL DEFAULT '',
  `mg_menu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_mbmemo`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_mbmemo` (
`mm_no` int unsigned NOT NULL,
  `mm_my_id` varchar(30) NOT NULL,
  `mm_mb_id` varchar(30) NOT NULL,
  `mm_memo` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_member`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_member` (
  `mb_id` varchar(30) NOT NULL,
  `level` mediumint NOT NULL DEFAULT '1',
  `level_point` mediumint NOT NULL DEFAULT '0',
  `photo` varchar(100) NOT NULL,
  `myhome_cover` varchar(100) NOT NULL,
  `myhome_hit` mediumint NOT NULL DEFAULT '0',
  `open_page` enum('y','n') NOT NULL DEFAULT 'y',
  `respond` mediumint NOT NULL DEFAULT '0',
  `onoff_push` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_respond` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_memo` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_social` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_likes` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_push_guest` enum('on','off') NOT NULL DEFAULT 'on',
  `onoff_social` enum('on','off') NOT NULL DEFAULT 'on',
  `open_email` enum('y','n') NOT NULL DEFAULT 'y',
  `open_homepage` enum('y','n') NOT NULL DEFAULT 'y',
  `open_tel` enum('y','n') NOT NULL DEFAULT 'y',
  `open_hp` enum('y','n') NOT NULL DEFAULT 'y',
  `view_timeline` char(1) NOT NULL DEFAULT '1',
  `view_favorite` char(1) NOT NULL DEFAULT '1',
  `view_followinggul` char(1) NOT NULL DEFAULT '1',
  `favorite` text NOT NULL,
  `likes` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_menu`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_menu` (
`me_id` int NOT NULL,
  `me_theme` varchar(20) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_icon` varchar(100) NOT NULL,
  `me_shop` char(1) NOT NULL DEFAULT '2',
  `me_path` varchar(255) NOT NULL,
  `me_type` varchar(30) NOT NULL,
  `me_pid` varchar(40) NOT NULL,
  `me_sca` varchar(50) NOT NULL,
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int NOT NULL DEFAULT '0',
  `me_permit_level` tinyint NOT NULL DEFAULT '1',
  `me_side` enum('y','n') NOT NULL DEFAULT 'y',
  `me_use` enum('y','n') NOT NULL DEFAULT 'y',
  `me_use_nav` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_pin`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_pin` (
`pn_no` int unsigned NOT NULL,
  `mb_id` varchar(30) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `pn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_rating`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_rating` (
`rt_id` int unsigned NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `rating` smallint NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL,
  `rt_good` int NOT NULL DEFAULT '0',
  `rt_nogood` int NOT NULL DEFAULT '0',
  `rt_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=59 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_respond`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_respond` (
`rid` int NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `pr_id` mediumint NOT NULL,
  `wr_id` int NOT NULL DEFAULT '0',
  `wr_cmt` int NOT NULL DEFAULT '0',
  `wr_subject` varchar(255) NOT NULL DEFAULT '',
  `wr_mb_id` varchar(20) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `mb_name` varchar(255) NOT NULL,
  `re_cnt` mediumint NOT NULL DEFAULT '0',
  `re_type` varchar(20) NOT NULL,
  `re_chk` tinyint NOT NULL DEFAULT '0',
  `regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=254 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_slider`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_slider` (
`es_no` int unsigned NOT NULL,
  `es_code` varchar(255) NOT NULL,
  `es_subject` varchar(255) NOT NULL,
  `es_theme` varchar(30) NOT NULL DEFAULT 'eb4_basic',
  `es_skin` varchar(50) NOT NULL DEFAULT 'basic',
  `es_text` text NOT NULL,
  `es_ytplay` char(1) NOT NULL DEFAULT '1',
  `es_ytmauto` char(1) NOT NULL DEFAULT '2',
  `es_state` smallint NOT NULL DEFAULT '0',
  `es_link` varchar(255) NOT NULL,
  `es_target` varchar(10) NOT NULL,
  `es_image` varchar(255) NOT NULL,
  `es_link_cnt` smallint NOT NULL DEFAULT '2',
  `es_image_cnt` smallint NOT NULL DEFAULT '3',
  `es_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_slider_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_slider_item` (
`ei_no` int unsigned NOT NULL,
  `es_code` varchar(255) NOT NULL,
  `ei_theme` varchar(50) NOT NULL DEFAULT '',
  `ei_state` char(1) NOT NULL DEFAULT '2',
  `ei_sort` int DEFAULT '0',
  `ei_title` varchar(255) NOT NULL,
  `ei_subtitle` varchar(255) NOT NULL,
  `ei_text` text NOT NULL,
  `ei_link` text NOT NULL,
  `ei_target` text NOT NULL,
  `ei_img` text NOT NULL,
  `ei_period` char(1) NOT NULL DEFAULT '1',
  `ei_start` varchar(10) NOT NULL,
  `ei_end` varchar(10) NOT NULL,
  `ei_clicked` mediumint NOT NULL DEFAULT '0',
  `ei_view_level` tinyint NOT NULL DEFAULT '1',
  `ei_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_slider_ytitem`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_slider_ytitem` (
`ei_no` int unsigned NOT NULL,
  `es_code` text NOT NULL,
  `ei_theme` varchar(30) NOT NULL DEFAULT '',
  `ei_state` char(1) NOT NULL DEFAULT '2',
  `ei_sort` int DEFAULT '0',
  `ei_ytcode` varchar(255) NOT NULL,
  `ei_quality` varchar(10) NOT NULL DEFAULT 'hd1080',
  `ei_remember` char(1) NOT NULL DEFAULT '1',
  `ei_autoplay` char(1) NOT NULL DEFAULT '1',
  `ei_control` char(1) NOT NULL DEFAULT '1',
  `ei_loop` char(1) NOT NULL DEFAULT '1',
  `ei_mute` char(1) NOT NULL DEFAULT '1',
  `ei_raster` char(1) NOT NULL DEFAULT '1',
  `ei_volumn` smallint NOT NULL DEFAULT '10',
  `ei_stime` smallint NOT NULL DEFAULT '0',
  `ei_etime` smallint NOT NULL DEFAULT '0',
  `ei_period` char(1) NOT NULL DEFAULT '1',
  `ei_start` varchar(10) NOT NULL,
  `ei_end` varchar(10) NOT NULL,
  `ei_view_level` tinyint NOT NULL DEFAULT '1',
  `ei_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_subscribe`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_subscribe` (
`sb_no` int unsigned NOT NULL,
  `sb_my_id` varchar(30) NOT NULL,
  `sb_mb_id` varchar(30) NOT NULL,
  `sb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_tag`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_tag` (
`tg_id` int unsigned NOT NULL,
  `tg_word` varchar(20) NOT NULL DEFAULT '',
  `tg_theme` varchar(40) NOT NULL DEFAULT 'basic',
  `tg_regcnt` int unsigned NOT NULL DEFAULT '0',
  `tg_dpmenu` enum('y','n') NOT NULL DEFAULT 'n',
  `tg_scnt` int NOT NULL DEFAULT '0',
  `tg_score` int NOT NULL DEFAULT '0',
  `tg_recommdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tg_regdt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=65 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_tag_write`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_tag_write` (
`tw_id` int unsigned NOT NULL,
  `tw_theme` varchar(40) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `wr_subject` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_content` text NOT NULL,
  `wr_tag` text NOT NULL,
  `wr_image` text NOT NULL,
  `wr_hit` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_name` varchar(50) NOT NULL,
  `mb_nick` varchar(50) NOT NULL,
  `mb_level` varchar(255) NOT NULL,
  `tw_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eb_1` varchar(255) NOT NULL,
  `eb_2` varchar(255) NOT NULL,
  `eb_3` varchar(255) NOT NULL,
  `eb_4` varchar(255) NOT NULL,
  `eb_5` varchar(255) NOT NULL,
  `eb_6` varchar(255) NOT NULL,
  `eb_7` varchar(255) NOT NULL,
  `eb_8` varchar(255) NOT NULL,
  `eb_9` varchar(255) NOT NULL,
  `eb_10` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_theme`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_theme` (
  `tm_name` varchar(40) NOT NULL,
  `tm_alias` varchar(20) NOT NULL,
  `tm_key` varchar(100) NOT NULL,
  `cm_key` varchar(255) NOT NULL,
  `cm_salt` varchar(10) NOT NULL,
  `tm_last` varchar(20) NOT NULL,
  `tm_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_wrfixed`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_wrfixed` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `mb_id` varchar(30) NOT NULL,
  `bf_wrfixed_point` int NOT NULL DEFAULT '0',
  `bf_wrfixed_date` smallint NOT NULL DEFAULT '1',
  `bf_open` enum('y','n') NOT NULL DEFAULT 'n',
  `po_datetime` datetime NOT NULL,
  `ex_datetime` datetime NOT NULL,
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_eyoom_yellowcard`
--

CREATE TABLE IF NOT EXISTS `zuzn_eyoom_yellowcard` (
`yc_id` int unsigned NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `pr_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `yc_reason` char(1) NOT NULL,
  `yc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_faq`
--

CREATE TABLE IF NOT EXISTS `zuzn_faq` (
`fa_id` int NOT NULL,
  `fm_id` int NOT NULL DEFAULT '0',
  `fa_subject` mediumtext NOT NULL,
  `fa_content` mediumtext NOT NULL,
  `fa_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_faq_master`
--

CREATE TABLE IF NOT EXISTS `zuzn_faq_master` (
`fm_id` int NOT NULL,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` mediumtext NOT NULL,
  `fm_tail_html` mediumtext NOT NULL,
  `fm_mobile_head_html` mediumtext NOT NULL,
  `fm_mobile_tail_html` mediumtext NOT NULL,
  `fm_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_fg_comment_all`
--

CREATE TABLE IF NOT EXISTS `zuzn_fg_comment_all` (
`wr_id` int NOT NULL,
  `wr_comment` mediumtext NOT NULL,
  `mb_id` varchar(255) NOT NULL,
  `wr_article` int NOT NULL,
  `wr_datetime` date NOT NULL DEFAULT '2020-01-01'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_gmail_smtp_config`
--

CREATE TABLE IF NOT EXISTS `zuzn_gmail_smtp_config` (
  `send_type` varchar(20) NOT NULL DEFAULT '',
  `google_client_id` varchar(255) NOT NULL DEFAULT '',
  `google_client_secret` varchar(255) NOT NULL DEFAULT '',
  `oauth_email` varchar(255) NOT NULL DEFAULT '',
  `from_email` varchar(255) NOT NULL DEFAULT '',
  `chk_other_email` tinyint NOT NULL DEFAULT '0',
  `from_email_name` varchar(255) NOT NULL DEFAULT '',
  `smtp_encryption` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` int NOT NULL DEFAULT '0',
  `access_token` varchar(255) NOT NULL DEFAULT '',
  `refresh_token` varchar(255) NOT NULL DEFAULT '',
  `access_token_expires_in` varchar(255) NOT NULL DEFAULT '',
  `access_token_expires_at` varchar(255) NOT NULL DEFAULT '',
  `scope` varchar(255) NOT NULL DEFAULT '',
  `app_password` varchar(255) NOT NULL DEFAULT '',
  `oauth_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_group`
--

CREATE TABLE IF NOT EXISTS `zuzn_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint NOT NULL DEFAULT '0',
  `gr_order` int NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  `gr_show_menu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_group_member`
--

CREATE TABLE IF NOT EXISTS `zuzn_group_member` (
`gm_id` int NOT NULL,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_hanbitgaram_widget`
--

CREATE TABLE IF NOT EXISTS `zuzn_hanbitgaram_widget` (
`fw_id` bigint NOT NULL,
  `fw_subject` varchar(255) NOT NULL,
  `fw_contents` longtext,
  `fw_type` varchar(20) NOT NULL,
  `fw_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_login`
--

CREATE TABLE IF NOT EXISTS `zuzn_login` (
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` mediumtext NOT NULL,
  `lo_url` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_login_ban_config`
--

CREATE TABLE IF NOT EXISTS `zuzn_login_ban_config` (
  `ban_count` int NOT NULL DEFAULT '5',
  `ban_time` int NOT NULL DEFAULT '0',
  `ban_type` varchar(255) NOT NULL DEFAULT 'infi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_login_manage`
--

CREATE TABLE IF NOT EXISTS `zuzn_login_manage` (
`lm_no` int NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `login_ip` varchar(255) NOT NULL DEFAULT '',
  `login_ban_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_last_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1306 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_mail`
--

CREATE TABLE IF NOT EXISTS `zuzn_mail` (
`ma_id` int NOT NULL,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` longtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` mediumtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_member`
--

CREATE TABLE IF NOT EXISTS `zuzn_member` (
`mb_no` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` mediumtext NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` mediumtext NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint NOT NULL DEFAULT '0',
  `mb_sms` tinyint NOT NULL DEFAULT '0',
  `mb_open` tinyint NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` mediumtext NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int NOT NULL DEFAULT '0',
  `mb_scrap_cnt` int NOT NULL DEFAULT '0',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  `as_msg` tinyint NOT NULL DEFAULT '0',
  `as_exp` int NOT NULL DEFAULT '0',
  `as_level` int NOT NULL DEFAULT '1',
  `as_max` int NOT NULL DEFAULT '0',
  `as_noti` int NOT NULL DEFAULT '0',
  `mb_password_md5` varchar(255) DEFAULT NULL,
  `pinned1` int NOT NULL,
  `pinned2` int NOT NULL,
  `pinned3` int NOT NULL,
  `onlyone` int DEFAULT NULL,
  `heart` int NOT NULL,
  `char1` varchar(255) DEFAULT NULL,
  `char2` varchar(255) DEFAULT NULL,
  `char3` varchar(255) DEFAULT NULL,
  `char4` varchar(255) DEFAULT NULL,
  `char5` varchar(255) DEFAULT NULL,
  `char1_name` varchar(255) DEFAULT NULL,
  `char2_name` varchar(255) DEFAULT NULL,
  `char3_name` varchar(255) DEFAULT NULL,
  `char4_name` varchar(255) DEFAULT NULL,
  `char5_name` varchar(255) DEFAULT NULL,
  `my_paper` varchar(255) DEFAULT NULL,
  `my_card` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `writer_banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `writer_icon` varchar(255) NOT NULL,
  `writer_art` varchar(255) NOT NULL,
  `setting1` varchar(20) NOT NULL,
  `setting2` varchar(20) NOT NULL,
  `setting3` varchar(20) NOT NULL,
  `setting4` varchar(50) NOT NULL DEFAULT 'enable',
  `setting5` varchar(20) NOT NULL DEFAULT 'disable',
  `mb_heart` int NOT NULL,
  `mb_guild` varchar(255) NOT NULL,
  `writer_nres` varchar(20) NOT NULL,
  `writer_x_res` int NOT NULL,
  `writer_y_res` int NOT NULL,
  `setting10` varchar(20) NOT NULL,
  `follower` int NOT NULL DEFAULT '0',
  `mb_is_noti` tinyint NOT NULL DEFAULT '1',
  `mb_noti_cnt` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1090447 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_member_cert_history`
--

CREATE TABLE IF NOT EXISTS `zuzn_member_cert_history` (
`ch_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `ch_name` varchar(255) NOT NULL DEFAULT '',
  `ch_hp` varchar(255) NOT NULL DEFAULT '',
  `ch_birth` varchar(255) NOT NULL DEFAULT '',
  `ch_type` varchar(20) NOT NULL DEFAULT '',
  `ch_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_member_follow`
--

CREATE TABLE IF NOT EXISTS `zuzn_member_follow` (
  `mb_id` varchar(255) NOT NULL,
  `follow_mb_id` varchar(255) NOT NULL,
`wr_id` int NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_member_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_member_item` (
  `itemName` varchar(255) NOT NULL,
  `uid` int NOT NULL,
  `mb_id` varchar(50) NOT NULL,
  `point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_member_social_profiles`
--

CREATE TABLE IF NOT EXISTS `zuzn_member_social_profiles` (
`mp_no` int NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=186 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_memo`
--

CREATE TABLE IF NOT EXISTS `zuzn_memo` (
`me_id` int NOT NULL,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` mediumtext NOT NULL,
  `me_send_id` int NOT NULL DEFAULT '0',
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_menu`
--

CREATE TABLE IF NOT EXISTS `zuzn_menu` (
`me_id` int NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int NOT NULL DEFAULT '0',
  `me_use` tinyint NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=60 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_na_noti`
--

CREATE TABLE IF NOT EXISTS `zuzn_na_noti` (
`ph_id` int unsigned NOT NULL,
  `ph_to_case` varchar(50) NOT NULL DEFAULT '',
  `ph_from_case` varchar(50) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `rel_bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `rel_wr_id` int NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `rel_mb_id` varchar(255) NOT NULL DEFAULT '',
  `rel_mb_nick` varchar(255) DEFAULT NULL,
  `rel_msg` varchar(255) NOT NULL DEFAULT '',
  `rel_url` varchar(200) NOT NULL DEFAULT '',
  `ph_readed` char(1) NOT NULL DEFAULT 'N',
  `ph_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parent_subject` varchar(255) NOT NULL,
  `wr_parent` int DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1348 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_na_shingo`
--

CREATE TABLE IF NOT EXISTS `zuzn_na_shingo` (
`id` int NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `wr_parent` int NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `flag` tinyint NOT NULL DEFAULT '0',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_na_tag`
--

CREATE TABLE IF NOT EXISTS `zuzn_na_tag` (
`id` int NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `idx` varchar(10) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `cnt` int NOT NULL DEFAULT '0',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=81 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_na_tag_log`
--

CREATE TABLE IF NOT EXISTS `zuzn_na_tag_log` (
`id` int NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int NOT NULL DEFAULT '0',
  `tag_id` int NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=120 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_na_xp`
--

CREATE TABLE IF NOT EXISTS `zuzn_na_xp` (
`xp_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `xp_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `xp_content` varchar(255) NOT NULL DEFAULT '',
  `xp_point` int NOT NULL DEFAULT '0',
  `xp_rel_table` varchar(20) NOT NULL DEFAULT '',
  `xp_rel_id` varchar(20) NOT NULL DEFAULT '',
  `xp_rel_action` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=35678 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_new_win`
--

CREATE TABLE IF NOT EXISTS `zuzn_new_win` (
`nw_id` int NOT NULL,
  `nw_division` varchar(10) NOT NULL DEFAULT 'both',
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int NOT NULL DEFAULT '0',
  `nw_left` int NOT NULL DEFAULT '0',
  `nw_top` int NOT NULL DEFAULT '0',
  `nw_height` int NOT NULL DEFAULT '0',
  `nw_width` int NOT NULL DEFAULT '0',
  `nw_subject` mediumtext NOT NULL,
  `nw_content` mediumtext NOT NULL,
  `nw_content_html` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_olbbs`
--

CREATE TABLE IF NOT EXISTS `zuzn_olbbs` (
  `content` mediumtext NOT NULL,
`wr_id` int NOT NULL,
  `ip` int NOT NULL,
  `mb_id` varchar(255) NOT NULL,
  `mb_nick` varchar(255) NOT NULL,
  `wr_datetime` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_point`
--

CREATE TABLE IF NOT EXISTS `zuzn_point` (
`po_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int NOT NULL DEFAULT '0',
  `po_use_point` int NOT NULL DEFAULT '0',
  `po_expired` tinyint NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=7676 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_poll`
--

CREATE TABLE IF NOT EXISTS `zuzn_poll` (
`po_id` int NOT NULL,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int NOT NULL DEFAULT '0',
  `po_cnt2` int NOT NULL DEFAULT '0',
  `po_cnt3` int NOT NULL DEFAULT '0',
  `po_cnt4` int NOT NULL DEFAULT '0',
  `po_cnt5` int NOT NULL DEFAULT '0',
  `po_cnt6` int NOT NULL DEFAULT '0',
  `po_cnt7` int NOT NULL DEFAULT '0',
  `po_cnt8` int NOT NULL DEFAULT '0',
  `po_cnt9` int NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint NOT NULL DEFAULT '0',
  `po_point` int NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` longtext NOT NULL,
  `mb_ids` mediumtext NOT NULL,
  `po_use` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_poll_etc`
--

CREATE TABLE IF NOT EXISTS `zuzn_poll_etc` (
  `pc_id` int NOT NULL DEFAULT '0',
  `po_id` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_popular`
--

CREATE TABLE IF NOT EXISTS `zuzn_popular` (
`pp_id` int NOT NULL,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=73871 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_qa_config`
--

CREATE TABLE IF NOT EXISTS `zuzn_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint NOT NULL DEFAULT '0',
  `qa_req_email` tinyint NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint NOT NULL DEFAULT '0',
  `qa_subject_len` int NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int NOT NULL DEFAULT '0',
  `qa_page_rows` int NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int NOT NULL DEFAULT '0',
  `qa_image_width` int NOT NULL DEFAULT '0',
  `qa_upload_size` int NOT NULL DEFAULT '0',
  `qa_insert_content` mediumtext NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` mediumtext NOT NULL,
  `qa_content_tail` mediumtext NOT NULL,
  `qa_mobile_content_head` mediumtext NOT NULL,
  `qa_mobile_content_tail` mediumtext NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_qa_content`
--

CREATE TABLE IF NOT EXISTS `zuzn_qa_content` (
`qa_id` int NOT NULL,
  `qa_num` int NOT NULL DEFAULT '0',
  `qa_parent` int NOT NULL DEFAULT '0',
  `qa_related` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint NOT NULL DEFAULT '0',
  `qa_html` tinyint NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` mediumtext NOT NULL,
  `qa_status` tinyint NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_scrap`
--

CREATE TABLE IF NOT EXISTS `zuzn_scrap` (
`ms_id` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_banner`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_banner` (
`bn_id` int NOT NULL,
  `bn_alt` varchar(255) NOT NULL DEFAULT '',
  `bn_url` varchar(255) NOT NULL DEFAULT '',
  `bn_device` varchar(10) NOT NULL DEFAULT '',
  `bn_position` varchar(255) NOT NULL DEFAULT '',
  `bn_border` tinyint NOT NULL DEFAULT '0',
  `bn_new_win` tinyint NOT NULL DEFAULT '0',
  `bn_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_hit` int NOT NULL DEFAULT '0',
  `bn_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_cart`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_cart` (
`ct_id` int NOT NULL,
  `od_id` bigint unsigned NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `it_name` varchar(255) NOT NULL DEFAULT '',
  `it_sc_type` tinyint NOT NULL DEFAULT '0',
  `it_sc_method` tinyint NOT NULL DEFAULT '0',
  `it_sc_price` int NOT NULL DEFAULT '0',
  `it_sc_minimum` int NOT NULL DEFAULT '0',
  `it_sc_qty` int NOT NULL DEFAULT '0',
  `ct_status` varchar(255) NOT NULL DEFAULT '',
  `ct_history` mediumtext NOT NULL,
  `ct_price` int NOT NULL DEFAULT '0',
  `ct_point` int NOT NULL DEFAULT '0',
  `cp_price` int NOT NULL DEFAULT '0',
  `ct_point_use` tinyint NOT NULL DEFAULT '0',
  `ct_stock_use` tinyint NOT NULL DEFAULT '0',
  `ct_option` varchar(255) NOT NULL DEFAULT '',
  `ct_qty` int NOT NULL DEFAULT '0',
  `ct_notax` tinyint NOT NULL DEFAULT '0',
  `io_id` varchar(255) NOT NULL DEFAULT '',
  `io_type` tinyint NOT NULL DEFAULT '0',
  `io_price` int NOT NULL DEFAULT '0',
  `ct_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ct_ip` varchar(25) NOT NULL DEFAULT '',
  `ct_send_cost` tinyint NOT NULL DEFAULT '0',
  `ct_direct` tinyint NOT NULL DEFAULT '0',
  `ct_select` tinyint NOT NULL DEFAULT '0',
  `ct_select_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_category`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_category` (
  `ca_id` varchar(10) NOT NULL DEFAULT '0',
  `ca_name` varchar(255) NOT NULL DEFAULT '',
  `ca_order` int NOT NULL DEFAULT '0',
  `ca_skin_dir` varchar(255) NOT NULL DEFAULT '',
  `ca_mobile_skin_dir` varchar(255) NOT NULL DEFAULT '',
  `ca_skin` varchar(255) NOT NULL DEFAULT '',
  `ca_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `ca_img_width` int NOT NULL DEFAULT '0',
  `ca_img_height` int NOT NULL DEFAULT '0',
  `ca_mobile_img_width` int NOT NULL DEFAULT '0',
  `ca_mobile_img_height` int NOT NULL DEFAULT '0',
  `ca_sell_email` varchar(255) NOT NULL DEFAULT '',
  `ca_use` tinyint NOT NULL DEFAULT '0',
  `ca_stock_qty` int NOT NULL DEFAULT '0',
  `ca_explan_html` tinyint NOT NULL DEFAULT '0',
  `ca_head_html` mediumtext NOT NULL,
  `ca_tail_html` mediumtext NOT NULL,
  `ca_mobile_head_html` mediumtext NOT NULL,
  `ca_mobile_tail_html` mediumtext NOT NULL,
  `ca_list_mod` int NOT NULL DEFAULT '0',
  `ca_list_row` int NOT NULL DEFAULT '0',
  `ca_mobile_list_mod` int NOT NULL DEFAULT '0',
  `ca_mobile_list_row` int NOT NULL DEFAULT '0',
  `ca_include_head` varchar(255) NOT NULL DEFAULT '',
  `ca_include_tail` varchar(255) NOT NULL DEFAULT '',
  `ca_mb_id` varchar(255) NOT NULL DEFAULT '',
  `ca_cert_use` tinyint NOT NULL DEFAULT '0',
  `ca_adult_use` tinyint NOT NULL DEFAULT '0',
  `ca_nocoupon` tinyint NOT NULL DEFAULT '0',
  `ca_1_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_2_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_3_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_4_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_5_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_6_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_7_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_8_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_9_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_10_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_1` varchar(255) NOT NULL DEFAULT '',
  `ca_2` varchar(255) NOT NULL DEFAULT '',
  `ca_3` varchar(255) NOT NULL DEFAULT '',
  `ca_4` varchar(255) NOT NULL DEFAULT '',
  `ca_5` varchar(255) NOT NULL DEFAULT '',
  `ca_6` varchar(255) NOT NULL DEFAULT '',
  `ca_7` varchar(255) NOT NULL DEFAULT '',
  `ca_8` varchar(255) NOT NULL DEFAULT '',
  `ca_9` varchar(255) NOT NULL DEFAULT '',
  `ca_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_coupon`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_coupon` (
`cp_no` int NOT NULL,
  `cp_id` varchar(100) NOT NULL DEFAULT '',
  `cp_subject` varchar(255) NOT NULL DEFAULT '',
  `cp_method` tinyint NOT NULL DEFAULT '0',
  `cp_target` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `cz_id` int NOT NULL DEFAULT '0',
  `cp_start` date NOT NULL DEFAULT '0000-00-00',
  `cp_end` date NOT NULL DEFAULT '0000-00-00',
  `cp_price` int NOT NULL DEFAULT '0',
  `cp_type` tinyint NOT NULL DEFAULT '0',
  `cp_trunc` int NOT NULL DEFAULT '0',
  `cp_minimum` int NOT NULL DEFAULT '0',
  `cp_maximum` int NOT NULL DEFAULT '0',
  `od_id` bigint unsigned NOT NULL,
  `cp_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_coupon_log`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_coupon_log` (
`cl_id` int NOT NULL,
  `cp_id` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(100) NOT NULL DEFAULT '',
  `od_id` bigint NOT NULL,
  `cp_price` int NOT NULL DEFAULT '0',
  `cl_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_coupon_zone`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_coupon_zone` (
`cz_id` int NOT NULL,
  `cz_type` tinyint NOT NULL DEFAULT '0',
  `cz_subject` varchar(255) NOT NULL DEFAULT '',
  `cz_start` date NOT NULL DEFAULT '0000-00-00',
  `cz_end` date NOT NULL DEFAULT '0000-00-00',
  `cz_file` varchar(255) NOT NULL DEFAULT '',
  `cz_period` int NOT NULL DEFAULT '0',
  `cz_point` int NOT NULL DEFAULT '0',
  `cp_method` tinyint NOT NULL DEFAULT '0',
  `cp_target` varchar(255) NOT NULL DEFAULT '',
  `cp_price` int NOT NULL DEFAULT '0',
  `cp_type` tinyint NOT NULL DEFAULT '0',
  `cp_trunc` int NOT NULL DEFAULT '0',
  `cp_minimum` int NOT NULL DEFAULT '0',
  `cp_maximum` int NOT NULL DEFAULT '0',
  `cz_download` int NOT NULL DEFAULT '0',
  `cz_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_default`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_default` (
  `de_admin_company_owner` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_name` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_saupja_no` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_tel` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_fax` varchar(255) NOT NULL DEFAULT '',
  `de_admin_tongsin_no` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_zip` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_addr` varchar(255) NOT NULL DEFAULT '',
  `de_admin_info_name` varchar(255) NOT NULL DEFAULT '',
  `de_admin_info_email` varchar(255) NOT NULL DEFAULT '',
  `de_shop_skin` varchar(255) NOT NULL DEFAULT '',
  `de_shop_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type1_list_use` tinyint NOT NULL DEFAULT '0',
  `de_type1_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type1_list_mod` int NOT NULL DEFAULT '0',
  `de_type1_list_row` int NOT NULL DEFAULT '0',
  `de_type1_img_width` int NOT NULL DEFAULT '0',
  `de_type1_img_height` int NOT NULL DEFAULT '0',
  `de_type2_list_use` tinyint NOT NULL DEFAULT '0',
  `de_type2_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type2_list_mod` int NOT NULL DEFAULT '0',
  `de_type2_list_row` int NOT NULL DEFAULT '0',
  `de_type2_img_width` int NOT NULL DEFAULT '0',
  `de_type2_img_height` int NOT NULL DEFAULT '0',
  `de_type3_list_use` tinyint NOT NULL DEFAULT '0',
  `de_type3_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type3_list_mod` int NOT NULL DEFAULT '0',
  `de_type3_list_row` int NOT NULL DEFAULT '0',
  `de_type3_img_width` int NOT NULL DEFAULT '0',
  `de_type3_img_height` int NOT NULL DEFAULT '0',
  `de_type4_list_use` tinyint NOT NULL DEFAULT '0',
  `de_type4_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type4_list_mod` int NOT NULL DEFAULT '0',
  `de_type4_list_row` int NOT NULL DEFAULT '0',
  `de_type4_img_width` int NOT NULL DEFAULT '0',
  `de_type4_img_height` int NOT NULL DEFAULT '0',
  `de_type5_list_use` tinyint NOT NULL DEFAULT '0',
  `de_type5_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type5_list_mod` int NOT NULL DEFAULT '0',
  `de_type5_list_row` int NOT NULL DEFAULT '0',
  `de_type5_img_width` int NOT NULL DEFAULT '0',
  `de_type5_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_type1_list_use` tinyint NOT NULL DEFAULT '0',
  `de_mobile_type1_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type1_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_type1_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_type1_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_type1_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_type2_list_use` tinyint NOT NULL DEFAULT '0',
  `de_mobile_type2_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type2_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_type2_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_type2_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_type2_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_type3_list_use` tinyint NOT NULL DEFAULT '0',
  `de_mobile_type3_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type3_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_type3_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_type3_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_type3_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_type4_list_use` tinyint NOT NULL DEFAULT '0',
  `de_mobile_type4_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type4_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_type4_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_type4_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_type4_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_type5_list_use` tinyint NOT NULL DEFAULT '0',
  `de_mobile_type5_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type5_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_type5_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_type5_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_type5_img_height` int NOT NULL DEFAULT '0',
  `de_rel_list_use` tinyint NOT NULL DEFAULT '0',
  `de_rel_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_rel_list_mod` int NOT NULL DEFAULT '0',
  `de_rel_img_width` int NOT NULL DEFAULT '0',
  `de_rel_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_rel_list_use` tinyint NOT NULL DEFAULT '0',
  `de_mobile_rel_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_rel_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_rel_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_rel_img_height` int NOT NULL DEFAULT '0',
  `de_search_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_search_list_mod` int NOT NULL DEFAULT '0',
  `de_search_list_row` int NOT NULL DEFAULT '0',
  `de_search_img_width` int NOT NULL DEFAULT '0',
  `de_search_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_search_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_search_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_search_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_search_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_search_img_height` int NOT NULL DEFAULT '0',
  `de_listtype_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_listtype_list_mod` int NOT NULL DEFAULT '0',
  `de_listtype_list_row` int NOT NULL DEFAULT '0',
  `de_listtype_img_width` int NOT NULL DEFAULT '0',
  `de_listtype_img_height` int NOT NULL DEFAULT '0',
  `de_mobile_listtype_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_listtype_list_mod` int NOT NULL DEFAULT '0',
  `de_mobile_listtype_list_row` int NOT NULL DEFAULT '0',
  `de_mobile_listtype_img_width` int NOT NULL DEFAULT '0',
  `de_mobile_listtype_img_height` int NOT NULL DEFAULT '0',
  `de_bank_use` int NOT NULL DEFAULT '0',
  `de_bank_account` mediumtext NOT NULL,
  `de_card_test` int NOT NULL DEFAULT '0',
  `de_card_use` int NOT NULL DEFAULT '0',
  `de_card_noint_use` tinyint NOT NULL DEFAULT '0',
  `de_card_point` int NOT NULL DEFAULT '0',
  `de_settle_min_point` int NOT NULL DEFAULT '0',
  `de_settle_max_point` int NOT NULL DEFAULT '0',
  `de_settle_point_unit` int NOT NULL DEFAULT '0',
  `de_level_sell` int NOT NULL DEFAULT '0',
  `de_delivery_company` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_case` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_limit` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_list` varchar(255) NOT NULL DEFAULT '',
  `de_hope_date_use` int NOT NULL DEFAULT '0',
  `de_hope_date_after` int NOT NULL DEFAULT '0',
  `de_baesong_content` mediumtext NOT NULL,
  `de_change_content` mediumtext NOT NULL,
  `de_point_days` int NOT NULL DEFAULT '0',
  `de_simg_width` int NOT NULL DEFAULT '0',
  `de_simg_height` int NOT NULL DEFAULT '0',
  `de_mimg_width` int NOT NULL DEFAULT '0',
  `de_mimg_height` int NOT NULL DEFAULT '0',
  `de_sms_cont1` mediumtext NOT NULL,
  `de_sms_cont2` mediumtext NOT NULL,
  `de_sms_cont3` mediumtext NOT NULL,
  `de_sms_cont4` mediumtext NOT NULL,
  `de_sms_cont5` mediumtext NOT NULL,
  `de_sms_use1` tinyint NOT NULL DEFAULT '0',
  `de_sms_use2` tinyint NOT NULL DEFAULT '0',
  `de_sms_use3` tinyint NOT NULL DEFAULT '0',
  `de_sms_use4` tinyint NOT NULL DEFAULT '0',
  `de_sms_use5` tinyint NOT NULL DEFAULT '0',
  `de_sms_hp` varchar(255) NOT NULL DEFAULT '',
  `de_pg_service` varchar(255) NOT NULL DEFAULT '',
  `de_kcp_mid` varchar(255) NOT NULL DEFAULT '',
  `de_kcp_site_key` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_mid` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_admin_key` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_sign_key` varchar(255) NOT NULL DEFAULT '',
  `de_iche_use` tinyint NOT NULL DEFAULT '0',
  `de_easy_pay_use` tinyint NOT NULL DEFAULT '0',
  `de_easy_pay_services` varchar(255) NOT NULL DEFAULT '',
  `de_samsung_pay_use` tinyint NOT NULL DEFAULT '0',
  `de_inicis_lpay_use` tinyint NOT NULL DEFAULT '0',
  `de_inicis_kakaopay_use` tinyint NOT NULL DEFAULT '0',
  `de_inicis_cartpoint_use` tinyint NOT NULL DEFAULT '0',
  `de_item_use_use` tinyint NOT NULL DEFAULT '0',
  `de_item_use_write` tinyint NOT NULL DEFAULT '0',
  `de_code_dup_use` tinyint NOT NULL DEFAULT '0',
  `de_cart_keep_term` int NOT NULL DEFAULT '0',
  `de_guest_cart_use` tinyint NOT NULL DEFAULT '0',
  `de_admin_buga_no` varchar(255) NOT NULL DEFAULT '',
  `de_vbank_use` varchar(255) NOT NULL DEFAULT '',
  `de_taxsave_use` tinyint NOT NULL,
  `de_taxsave_types` set('account','vbank','transfer') NOT NULL DEFAULT 'account',
  `de_guest_privacy` mediumtext NOT NULL,
  `de_hp_use` tinyint NOT NULL DEFAULT '0',
  `de_escrow_use` tinyint NOT NULL DEFAULT '0',
  `de_tax_flag_use` tinyint NOT NULL DEFAULT '0',
  `de_kakaopay_mid` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_key` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_enckey` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_hashkey` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_cancelpwd` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_mid` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_cert_key` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_button_key` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_test` tinyint NOT NULL DEFAULT '0',
  `de_naverpay_mb_id` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_sendcost` varchar(255) NOT NULL DEFAULT '',
  `de_member_reg_coupon_use` tinyint NOT NULL DEFAULT '0',
  `de_member_reg_coupon_term` int NOT NULL DEFAULT '0',
  `de_member_reg_coupon_price` int NOT NULL DEFAULT '0',
  `de_member_reg_coupon_minimum` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_event`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_event` (
`ev_id` int NOT NULL,
  `ev_skin` varchar(255) NOT NULL DEFAULT '',
  `ev_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `ev_img_width` int NOT NULL DEFAULT '0',
  `ev_img_height` int NOT NULL DEFAULT '0',
  `ev_list_mod` int NOT NULL DEFAULT '0',
  `ev_list_row` int NOT NULL DEFAULT '0',
  `ev_mobile_img_width` int NOT NULL DEFAULT '0',
  `ev_mobile_img_height` int NOT NULL DEFAULT '0',
  `ev_mobile_list_mod` int NOT NULL DEFAULT '0',
  `ev_mobile_list_row` int NOT NULL DEFAULT '0',
  `ev_subject` varchar(255) NOT NULL DEFAULT '',
  `ev_subject_strong` tinyint NOT NULL DEFAULT '0',
  `ev_head_html` mediumtext NOT NULL,
  `ev_tail_html` mediumtext NOT NULL,
  `ev_use` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_event_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_event_item` (
  `ev_id` int NOT NULL DEFAULT '0',
  `it_id` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_inicis_log`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_inicis_log` (
  `oid` bigint unsigned NOT NULL,
  `P_TID` varchar(255) NOT NULL DEFAULT '',
  `P_MID` varchar(255) NOT NULL DEFAULT '',
  `P_AUTH_DT` varchar(255) NOT NULL DEFAULT '',
  `P_STATUS` varchar(255) NOT NULL DEFAULT '',
  `P_TYPE` varchar(255) NOT NULL DEFAULT '',
  `P_OID` varchar(255) NOT NULL DEFAULT '',
  `P_FN_NM` varchar(255) NOT NULL DEFAULT '',
  `P_AUTH_NO` varchar(255) NOT NULL DEFAULT '',
  `P_AMT` int NOT NULL DEFAULT '0',
  `P_RMESG1` varchar(255) NOT NULL DEFAULT '',
  `post_data` mediumtext NOT NULL,
  `is_mail_send` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_item`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_item` (
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `ca_id` varchar(10) NOT NULL DEFAULT '0',
  `ca_id2` varchar(255) NOT NULL DEFAULT '',
  `ca_id3` varchar(255) NOT NULL DEFAULT '',
  `it_skin` varchar(255) NOT NULL DEFAULT '',
  `it_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `it_name` varchar(255) NOT NULL DEFAULT '',
  `it_seo_title` varchar(200) NOT NULL DEFAULT '',
  `it_maker` varchar(255) NOT NULL DEFAULT '',
  `it_origin` varchar(255) NOT NULL DEFAULT '',
  `it_brand` varchar(255) NOT NULL DEFAULT '',
  `it_model` varchar(255) NOT NULL DEFAULT '',
  `it_option_subject` varchar(255) NOT NULL DEFAULT '',
  `it_supply_subject` varchar(255) NOT NULL DEFAULT '',
  `it_type1` tinyint NOT NULL DEFAULT '0',
  `it_type2` tinyint NOT NULL DEFAULT '0',
  `it_type3` tinyint NOT NULL DEFAULT '0',
  `it_type4` tinyint NOT NULL DEFAULT '0',
  `it_type5` tinyint NOT NULL DEFAULT '0',
  `it_basic` mediumtext NOT NULL,
  `it_explan` longtext NOT NULL,
  `it_explan2` longtext NOT NULL,
  `it_mobile_explan` longtext NOT NULL,
  `it_cust_price` int NOT NULL DEFAULT '0',
  `it_price` int NOT NULL DEFAULT '0',
  `it_point` int NOT NULL DEFAULT '0',
  `it_point_type` tinyint NOT NULL DEFAULT '0',
  `it_supply_point` int NOT NULL DEFAULT '0',
  `it_notax` tinyint NOT NULL DEFAULT '0',
  `it_sell_email` varchar(255) NOT NULL DEFAULT '',
  `it_use` tinyint NOT NULL DEFAULT '0',
  `it_nocoupon` tinyint NOT NULL DEFAULT '0',
  `it_soldout` tinyint NOT NULL DEFAULT '0',
  `it_stock_qty` int NOT NULL DEFAULT '0',
  `it_stock_sms` tinyint NOT NULL DEFAULT '0',
  `it_noti_qty` int NOT NULL DEFAULT '0',
  `it_sc_type` tinyint NOT NULL DEFAULT '0',
  `it_sc_method` tinyint NOT NULL DEFAULT '0',
  `it_sc_price` int NOT NULL DEFAULT '0',
  `it_sc_minimum` int NOT NULL DEFAULT '0',
  `it_sc_qty` int NOT NULL DEFAULT '0',
  `it_buy_min_qty` int NOT NULL DEFAULT '0',
  `it_buy_max_qty` int NOT NULL DEFAULT '0',
  `it_head_html` mediumtext NOT NULL,
  `it_tail_html` mediumtext NOT NULL,
  `it_mobile_head_html` mediumtext NOT NULL,
  `it_mobile_tail_html` mediumtext NOT NULL,
  `it_hit` int NOT NULL DEFAULT '0',
  `it_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_ip` varchar(25) NOT NULL DEFAULT '',
  `it_order` int NOT NULL DEFAULT '0',
  `it_tel_inq` tinyint NOT NULL DEFAULT '0',
  `it_info_gubun` varchar(50) NOT NULL DEFAULT '',
  `it_info_value` mediumtext NOT NULL,
  `it_sum_qty` int NOT NULL DEFAULT '0',
  `it_use_cnt` int NOT NULL DEFAULT '0',
  `it_use_avg` decimal(2,1) NOT NULL,
  `it_shop_memo` mediumtext NOT NULL,
  `ec_mall_pid` varchar(255) NOT NULL DEFAULT '',
  `it_img1` varchar(255) NOT NULL DEFAULT '',
  `it_img2` varchar(255) NOT NULL DEFAULT '',
  `it_img3` varchar(255) NOT NULL DEFAULT '',
  `it_img4` varchar(255) NOT NULL DEFAULT '',
  `it_img5` varchar(255) NOT NULL DEFAULT '',
  `it_img6` varchar(255) NOT NULL DEFAULT '',
  `it_img7` varchar(255) NOT NULL DEFAULT '',
  `it_img8` varchar(255) NOT NULL DEFAULT '',
  `it_img9` varchar(255) NOT NULL DEFAULT '',
  `it_img10` varchar(255) NOT NULL DEFAULT '',
  `it_1_subj` varchar(255) NOT NULL DEFAULT '',
  `it_2_subj` varchar(255) NOT NULL DEFAULT '',
  `it_3_subj` varchar(255) NOT NULL DEFAULT '',
  `it_4_subj` varchar(255) NOT NULL DEFAULT '',
  `it_5_subj` varchar(255) NOT NULL DEFAULT '',
  `it_6_subj` varchar(255) NOT NULL DEFAULT '',
  `it_7_subj` varchar(255) NOT NULL DEFAULT '',
  `it_8_subj` varchar(255) NOT NULL DEFAULT '',
  `it_9_subj` varchar(255) NOT NULL DEFAULT '',
  `it_10_subj` varchar(255) NOT NULL DEFAULT '',
  `it_1` varchar(255) NOT NULL DEFAULT '',
  `it_2` varchar(255) NOT NULL DEFAULT '',
  `it_3` varchar(255) NOT NULL DEFAULT '',
  `it_4` varchar(255) NOT NULL DEFAULT '',
  `it_5` varchar(255) NOT NULL DEFAULT '',
  `it_6` varchar(255) NOT NULL DEFAULT '',
  `it_7` varchar(255) NOT NULL DEFAULT '',
  `it_8` varchar(255) NOT NULL DEFAULT '',
  `it_9` varchar(255) NOT NULL DEFAULT '',
  `it_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_item_option`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_item_option` (
`io_no` int NOT NULL,
  `io_id` varchar(255) NOT NULL DEFAULT '0',
  `io_type` tinyint NOT NULL DEFAULT '0',
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `io_price` int NOT NULL DEFAULT '0',
  `io_stock_qty` int NOT NULL DEFAULT '0',
  `io_noti_qty` int NOT NULL DEFAULT '0',
  `io_use` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_item_qa`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_item_qa` (
`iq_id` int NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `iq_secret` tinyint NOT NULL DEFAULT '0',
  `iq_name` varchar(255) NOT NULL DEFAULT '',
  `iq_email` varchar(255) NOT NULL DEFAULT '',
  `iq_hp` varchar(255) NOT NULL DEFAULT '',
  `iq_password` varchar(255) NOT NULL DEFAULT '',
  `iq_subject` varchar(255) NOT NULL DEFAULT '',
  `iq_question` mediumtext NOT NULL,
  `iq_answer` mediumtext NOT NULL,
  `iq_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iq_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_item_relation`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_item_relation` (
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `it_id2` varchar(20) NOT NULL DEFAULT '',
  `ir_no` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_item_stocksms`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_item_stocksms` (
`ss_id` int NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `ss_hp` varchar(255) NOT NULL DEFAULT '',
  `ss_send` tinyint NOT NULL DEFAULT '0',
  `ss_send_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ss_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ss_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_item_use`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_item_use` (
`is_id` int NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `is_name` varchar(255) NOT NULL DEFAULT '',
  `is_password` varchar(255) NOT NULL DEFAULT '',
  `is_score` tinyint NOT NULL DEFAULT '0',
  `is_subject` varchar(255) NOT NULL DEFAULT '',
  `is_content` mediumtext NOT NULL,
  `is_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_ip` varchar(25) NOT NULL DEFAULT '',
  `is_confirm` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_order`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_order` (
  `od_id` bigint unsigned NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `od_name` varchar(20) NOT NULL DEFAULT '',
  `od_email` varchar(100) NOT NULL DEFAULT '',
  `od_tel` varchar(20) NOT NULL DEFAULT '',
  `od_hp` varchar(20) NOT NULL DEFAULT '',
  `od_zip1` char(3) NOT NULL DEFAULT '',
  `od_zip2` char(3) NOT NULL DEFAULT '',
  `od_addr1` varchar(100) NOT NULL DEFAULT '',
  `od_addr2` varchar(100) NOT NULL DEFAULT '',
  `od_addr3` varchar(255) NOT NULL DEFAULT '',
  `od_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `od_deposit_name` varchar(20) NOT NULL DEFAULT '',
  `od_b_name` varchar(20) NOT NULL DEFAULT '',
  `od_b_tel` varchar(20) NOT NULL DEFAULT '',
  `od_b_hp` varchar(20) NOT NULL DEFAULT '',
  `od_b_zip1` char(3) NOT NULL DEFAULT '',
  `od_b_zip2` char(3) NOT NULL DEFAULT '',
  `od_b_addr1` varchar(100) NOT NULL DEFAULT '',
  `od_b_addr2` varchar(100) NOT NULL DEFAULT '',
  `od_b_addr3` varchar(255) NOT NULL DEFAULT '',
  `od_b_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `od_memo` mediumtext NOT NULL,
  `od_cart_count` int NOT NULL DEFAULT '0',
  `od_cart_price` int NOT NULL DEFAULT '0',
  `od_cart_coupon` int NOT NULL DEFAULT '0',
  `od_send_cost` int NOT NULL DEFAULT '0',
  `od_send_cost2` int NOT NULL DEFAULT '0',
  `od_send_coupon` int NOT NULL DEFAULT '0',
  `od_receipt_price` int NOT NULL DEFAULT '0',
  `od_cancel_price` int NOT NULL DEFAULT '0',
  `od_receipt_point` int NOT NULL DEFAULT '0',
  `od_refund_price` int NOT NULL DEFAULT '0',
  `od_bank_account` varchar(255) NOT NULL DEFAULT '',
  `od_receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_coupon` int NOT NULL DEFAULT '0',
  `od_misu` int NOT NULL DEFAULT '0',
  `od_shop_memo` mediumtext NOT NULL,
  `od_mod_history` mediumtext NOT NULL,
  `od_status` varchar(255) NOT NULL DEFAULT '',
  `od_hope_date` date NOT NULL DEFAULT '0000-00-00',
  `od_settle_case` varchar(255) NOT NULL DEFAULT '',
  `od_other_pay_type` varchar(100) NOT NULL DEFAULT '',
  `od_test` tinyint NOT NULL DEFAULT '0',
  `od_mobile` tinyint NOT NULL DEFAULT '0',
  `od_pg` varchar(255) NOT NULL DEFAULT '',
  `od_tno` varchar(255) NOT NULL DEFAULT '',
  `od_app_no` varchar(20) NOT NULL DEFAULT '',
  `od_escrow` tinyint NOT NULL DEFAULT '0',
  `od_casseqno` varchar(255) NOT NULL DEFAULT '',
  `od_tax_flag` tinyint NOT NULL DEFAULT '0',
  `od_tax_mny` int NOT NULL DEFAULT '0',
  `od_vat_mny` int NOT NULL DEFAULT '0',
  `od_free_mny` int NOT NULL DEFAULT '0',
  `od_delivery_company` varchar(255) NOT NULL DEFAULT '0',
  `od_invoice` varchar(255) NOT NULL DEFAULT '',
  `od_invoice_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_cash` tinyint NOT NULL,
  `od_cash_no` varchar(255) NOT NULL,
  `od_cash_info` mediumtext NOT NULL,
  `od_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_pwd` varchar(255) NOT NULL DEFAULT '',
  `od_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_order_address`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_order_address` (
`ad_id` int NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `ad_subject` varchar(255) NOT NULL DEFAULT '',
  `ad_default` tinyint NOT NULL DEFAULT '0',
  `ad_name` varchar(255) NOT NULL DEFAULT '',
  `ad_tel` varchar(255) NOT NULL DEFAULT '',
  `ad_hp` varchar(255) NOT NULL DEFAULT '',
  `ad_zip1` char(3) NOT NULL DEFAULT '',
  `ad_zip2` char(3) NOT NULL DEFAULT '',
  `ad_addr1` varchar(255) NOT NULL DEFAULT '',
  `ad_addr2` varchar(255) NOT NULL DEFAULT '',
  `ad_addr3` varchar(255) NOT NULL DEFAULT '',
  `ad_jibeon` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_order_data`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_order_data` (
  `od_id` bigint unsigned NOT NULL,
  `cart_id` bigint unsigned NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `dt_pg` varchar(255) NOT NULL DEFAULT '',
  `dt_data` mediumtext NOT NULL,
  `dt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_order_delete`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_order_delete` (
`de_id` int NOT NULL,
  `de_key` varchar(255) NOT NULL DEFAULT '',
  `de_data` longtext NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `de_ip` varchar(255) NOT NULL DEFAULT '',
  `de_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_order_post_log`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_order_post_log` (
`log_id` int NOT NULL,
  `oid` bigint unsigned NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `post_data` mediumtext NOT NULL,
  `ol_code` varchar(255) NOT NULL DEFAULT '',
  `ol_msg` mediumtext NOT NULL,
  `ol_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ol_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_personalpay`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_personalpay` (
  `pp_id` bigint unsigned NOT NULL,
  `od_id` bigint unsigned NOT NULL,
  `pp_name` varchar(255) NOT NULL DEFAULT '',
  `pp_email` varchar(255) NOT NULL DEFAULT '',
  `pp_hp` varchar(255) NOT NULL DEFAULT '',
  `pp_content` mediumtext NOT NULL,
  `pp_use` tinyint NOT NULL DEFAULT '0',
  `pp_price` int NOT NULL DEFAULT '0',
  `pp_pg` varchar(255) NOT NULL DEFAULT '',
  `pp_tno` varchar(255) NOT NULL DEFAULT '',
  `pp_app_no` varchar(20) NOT NULL DEFAULT '',
  `pp_casseqno` varchar(255) NOT NULL DEFAULT '',
  `pp_receipt_price` int NOT NULL DEFAULT '0',
  `pp_settle_case` varchar(255) NOT NULL DEFAULT '',
  `pp_bank_account` varchar(255) NOT NULL DEFAULT '',
  `pp_deposit_name` varchar(255) NOT NULL DEFAULT '',
  `pp_receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pp_receipt_ip` varchar(255) NOT NULL DEFAULT '',
  `pp_shop_memo` mediumtext NOT NULL,
  `pp_cash` tinyint NOT NULL DEFAULT '0',
  `pp_cash_no` varchar(255) NOT NULL DEFAULT '',
  `pp_cash_info` mediumtext NOT NULL,
  `pp_ip` varchar(255) NOT NULL DEFAULT '',
  `pp_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_sendcost`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_sendcost` (
`sc_id` int NOT NULL,
  `sc_name` varchar(255) NOT NULL DEFAULT '',
  `sc_zip1` varchar(10) NOT NULL DEFAULT '',
  `sc_zip2` varchar(10) NOT NULL DEFAULT '',
  `sc_price` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_shop_wish`
--

CREATE TABLE IF NOT EXISTS `zuzn_shop_wish` (
`wi_id` int NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `it_id` varchar(20) NOT NULL DEFAULT '0',
  `wi_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wi_ip` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_uniqid`
--

CREATE TABLE IF NOT EXISTS `zuzn_uniqid` (
  `uq_id` bigint unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_visit`
--

CREATE TABLE IF NOT EXISTS `zuzn_visit` (
  `vi_id` int NOT NULL DEFAULT '0',
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` mediumtext NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_visit_sum`
--

CREATE TABLE IF NOT EXISTS `zuzn_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_wite_manhwa`
--

CREATE TABLE IF NOT EXISTS `zuzn_wite_manhwa` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_writer`
--

CREATE TABLE IF NOT EXISTS `zuzn_writer` (
`mb_no` int NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` mediumtext NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` mediumtext NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint NOT NULL DEFAULT '0',
  `mb_sms` tinyint NOT NULL DEFAULT '0',
  `mb_open` tinyint NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` mediumtext NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int NOT NULL DEFAULT '0',
  `mb_scrap_cnt` int NOT NULL DEFAULT '0',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  `as_msg` tinyint NOT NULL DEFAULT '0',
  `as_exp` int NOT NULL DEFAULT '0',
  `as_level` int NOT NULL DEFAULT '1',
  `as_max` int NOT NULL DEFAULT '0',
  `as_noti` int NOT NULL DEFAULT '0',
  `mb_password_md5` varchar(255) DEFAULT NULL,
  `pinned1` int NOT NULL,
  `pinned2` int NOT NULL,
  `pinned3` int NOT NULL,
  `onlyone` int DEFAULT NULL,
  `heart` int NOT NULL,
  `char1` varchar(255) DEFAULT NULL,
  `char2` varchar(255) DEFAULT NULL,
  `char3` varchar(255) DEFAULT NULL,
  `char4` varchar(255) DEFAULT NULL,
  `char5` varchar(255) DEFAULT NULL,
  `char1_name` varchar(255) DEFAULT NULL,
  `char2_name` varchar(255) DEFAULT NULL,
  `char3_name` varchar(255) DEFAULT NULL,
  `char4_name` varchar(255) DEFAULT NULL,
  `char5_name` varchar(255) DEFAULT NULL,
  `my_paper` varchar(255) DEFAULT NULL,
  `my_card` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `link3` varchar(255) DEFAULT NULL,
  `writer_icon` varchar(255) NOT NULL,
  `writer_art` varchar(255) NOT NULL,
  `setting1` varchar(20) NOT NULL,
  `setting2` varchar(20) NOT NULL,
  `setting3` varchar(20) NOT NULL,
  `setting4` varchar(50) NOT NULL DEFAULT 'enable',
  `setting5` varchar(20) NOT NULL DEFAULT 'disable',
  `mb_heart` int NOT NULL,
  `mb_guild` varchar(255) NOT NULL,
  `writer_nres` varchar(20) NOT NULL,
  `writer_x_res` int NOT NULL,
  `writer_y_res` int NOT NULL,
  `setting10` varchar(20) NOT NULL,
  `setting11` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_4444`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_4444` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_bhumor`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_bhumor` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ca_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_option` set('html1','html2','secret','mail') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_seo_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_link1` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_link2` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_homepage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_facebook_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_twitter_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_6` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_7` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_8` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_9` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wr_10` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `eb_1` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_2` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_3` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_4` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_5` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_6` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_7` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_8` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_9` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `eb_10` varchar(255) CHARACTER SET euckr COLLATE euckr_bin NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `as_thumb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=euckr COLLATE=euckr_bin AUTO_INCREMENT=187668 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_callme`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_callme` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_cartoon`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_cartoon` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL,
  `IDX` varchar(255) DEFAULT NULL,
  `cb2023_wheremypath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_clip`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_clip` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '2005-01-01 01:01:01',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1118514 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_emomomo`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_emomomo` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_exchange`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_exchange` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL,
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL,
  `eb_2` varchar(255) NOT NULL,
  `eb_3` varchar(255) NOT NULL,
  `eb_4` varchar(255) NOT NULL,
  `eb_5` varchar(255) NOT NULL,
  `eb_6` varchar(255) NOT NULL,
  `eb_7` varchar(255) NOT NULL,
  `eb_8` varchar(255) NOT NULL,
  `eb_9` varchar(255) NOT NULL,
  `eb_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_firstfox`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_firstfox` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL,
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL,
  `eb_2` varchar(255) NOT NULL,
  `eb_3` varchar(255) NOT NULL,
  `eb_4` varchar(255) NOT NULL,
  `eb_5` varchar(255) NOT NULL,
  `eb_6` varchar(255) NOT NULL,
  `eb_7` varchar(255) NOT NULL,
  `eb_8` varchar(255) NOT NULL,
  `eb_9` varchar(255) NOT NULL,
  `eb_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_free`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_free` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=590 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_guide`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_guide` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=17785 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_honor`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_honor` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL,
  `IDX` varchar(255) DEFAULT NULL,
  `cb2023_wheremypath` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=297 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_jsw228sguild`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_jsw228sguild` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_myflash`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_myflash` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '2005-01-01 01:01:01',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1118566 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_mygame`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_mygame` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_myillust`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_myillust` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '2005-01-01 01:01:01',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=574604 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_mypaper`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_mypaper` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL,
  `IDX` varchar(255) DEFAULT NULL,
  `cb2023_wheremypath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_myrmk`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_myrmk` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_myshare`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_myshare` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_mytoon`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_mytoon` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=100668 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_needperson`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_needperson` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_night6530`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_night6530` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL,
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL,
  `eb_2` varchar(255) NOT NULL,
  `eb_3` varchar(255) NOT NULL,
  `eb_4` varchar(255) NOT NULL,
  `eb_5` varchar(255) NOT NULL,
  `eb_6` varchar(255) NOT NULL,
  `eb_7` varchar(255) NOT NULL,
  `eb_8` varchar(255) NOT NULL,
  `eb_9` varchar(255) NOT NULL,
  `eb_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_night6530sguild`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_night6530sguild` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_notice`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_notice` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=427 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_online`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_online` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_rkdfud121`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_rkdfud121` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_sharhene777`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_sharhene777` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `zuzn_write_storyteller`
--

CREATE TABLE IF NOT EXISTS `zuzn_write_storyteller` (
`wr_id` int NOT NULL,
  `wr_num` int NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint NOT NULL DEFAULT '0',
  `wr_comment` int NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` mediumtext NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` mediumtext NOT NULL,
  `wr_link2` mediumtext NOT NULL,
  `wr_link1_hit` int NOT NULL DEFAULT '0',
  `wr_link2_hit` int NOT NULL DEFAULT '0',
  `wr_hit` int NOT NULL DEFAULT '0',
  `wr_anonymous` char(1) NOT NULL DEFAULT '',
  `wr_good` int NOT NULL DEFAULT '0',
  `wr_nogood` int NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  `eb_1` varchar(255) NOT NULL DEFAULT '',
  `eb_2` varchar(255) NOT NULL DEFAULT '',
  `eb_3` varchar(255) NOT NULL DEFAULT '',
  `eb_4` varchar(255) NOT NULL DEFAULT '',
  `eb_5` varchar(255) NOT NULL DEFAULT '',
  `eb_6` varchar(255) NOT NULL DEFAULT '',
  `eb_7` varchar(255) NOT NULL DEFAULT '',
  `eb_8` varchar(255) NOT NULL DEFAULT '',
  `eb_9` varchar(255) NOT NULL DEFAULT '',
  `eb_10` varchar(255) NOT NULL DEFAULT '',
  `as_type` tinyint NOT NULL DEFAULT '0',
  `as_img` tinyint NOT NULL DEFAULT '0',
  `as_extend` tinyint NOT NULL DEFAULT '0',
  `as_down` int NOT NULL DEFAULT '0',
  `as_view` int NOT NULL DEFAULT '0',
  `as_star_score` int NOT NULL DEFAULT '0',
  `as_star_cnt` int NOT NULL DEFAULT '0',
  `as_choice` int NOT NULL DEFAULT '0',
  `as_choice_cnt` int NOT NULL DEFAULT '0',
  `as_tag` varchar(255) NOT NULL,
  `as_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb3 AUTO_INCREMENT=19 ;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `Bookmarks`
--
ALTER TABLE `Bookmarks`
 ADD PRIMARY KEY (`id`), ADD KEY `userId` (`userId`), ADD KEY `tweetId` (`tweetId`);

--
-- 테이블의 인덱스 `Comments`
--
ALTER TABLE `Comments`
 ADD PRIMARY KEY (`id`), ADD KEY `userId` (`userId`);

--
-- 테이블의 인덱스 `Followers`
--
ALTER TABLE `Followers`
 ADD PRIMARY KEY (`id`), ADD KEY `followed` (`followed`), ADD KEY `follower` (`follower`);

--
-- 테이블의 인덱스 `g_analytics`
--
ALTER TABLE `g_analytics`
 ADD PRIMARY KEY (`wr_id`);

--
-- 테이블의 인덱스 `Likes`
--
ALTER TABLE `Likes`
 ADD PRIMARY KEY (`id`), ADD KEY `tweetId` (`tweetId`), ADD KEY `userId` (`userId`);

--
-- 테이블의 인덱스 `NEWTHINGS`
--
ALTER TABLE `NEWTHINGS`
 ADD PRIMARY KEY (`uid`);

--
-- 테이블의 인덱스 `Retweets`
--
ALTER TABLE `Retweets`
 ADD PRIMARY KEY (`id`), ADD KEY `userId` (`userId`), ADD KEY `tweetId` (`tweetId`);

--
-- 테이블의 인덱스 `sms5_book`
--
ALTER TABLE `sms5_book`
 ADD PRIMARY KEY (`bk_no`), ADD KEY `bk_name` (`bk_name`(191)), ADD KEY `bk_hp` (`bk_hp`(191)), ADD KEY `mb_no` (`mb_no`), ADD KEY `bg_no` (`bg_no`,`bk_no`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `sms5_book_group`
--
ALTER TABLE `sms5_book_group`
 ADD PRIMARY KEY (`bg_no`), ADD KEY `bg_name` (`bg_name`(191));

--
-- 테이블의 인덱스 `sms5_form`
--
ALTER TABLE `sms5_form`
 ADD PRIMARY KEY (`fo_no`), ADD KEY `fg_no` (`fg_no`,`fo_no`);

--
-- 테이블의 인덱스 `sms5_form_group`
--
ALTER TABLE `sms5_form_group`
 ADD PRIMARY KEY (`fg_no`), ADD KEY `fg_name` (`fg_name`(191));

--
-- 테이블의 인덱스 `sms5_history`
--
ALTER TABLE `sms5_history`
 ADD PRIMARY KEY (`hs_no`), ADD KEY `wr_no` (`wr_no`), ADD KEY `mb_no` (`mb_no`), ADD KEY `bk_no` (`bk_no`), ADD KEY `hs_hp` (`hs_hp`(191)), ADD KEY `hs_code` (`hs_code`(191)), ADD KEY `bg_no` (`bg_no`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `sms5_write`
--
ALTER TABLE `sms5_write`
 ADD KEY `wr_no` (`wr_no`,`wr_renum`);

--
-- 테이블의 인덱스 `Tweets`
--
ALTER TABLE `Tweets`
 ADD PRIMARY KEY (`id`), ADD KEY `userId` (`userId`);

--
-- 테이블의 인덱스 `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- 테이블의 인덱스 `wroom_bbs`
--
ALTER TABLE `wroom_bbs`
 ADD PRIMARY KEY (`wr_id`);

--
-- 테이블의 인덱스 `zuzn_auction_exchange`
--
ALTER TABLE `zuzn_auction_exchange`
 ADD PRIMARY KEY (`td_id`), ADD KEY `wr_id` (`wr_id`);

--
-- 테이블의 인덱스 `zuzn_auth`
--
ALTER TABLE `zuzn_auth`
 ADD PRIMARY KEY (`mb_id`,`au_menu`);

--
-- 테이블의 인덱스 `zuzn_autosave`
--
ALTER TABLE `zuzn_autosave`
 ADD PRIMARY KEY (`as_id`), ADD UNIQUE KEY `as_uid` (`as_uid`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_board`
--
ALTER TABLE `zuzn_board`
 ADD PRIMARY KEY (`bo_table`);

--
-- 테이블의 인덱스 `zuzn_board_file`
--
ALTER TABLE `zuzn_board_file`
 ADD PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`);

--
-- 테이블의 인덱스 `zuzn_board_good`
--
ALTER TABLE `zuzn_board_good`
 ADD PRIMARY KEY (`bg_id`), ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- 테이블의 인덱스 `zuzn_board_new`
--
ALTER TABLE `zuzn_board_new`
 ADD PRIMARY KEY (`bn_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_cert_history`
--
ALTER TABLE `zuzn_cert_history`
 ADD PRIMARY KEY (`cr_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_config`
--
ALTER TABLE `zuzn_config`
 ADD PRIMARY KEY (`cf_10`);

--
-- 테이블의 인덱스 `zuzn_content`
--
ALTER TABLE `zuzn_content`
 ADD PRIMARY KEY (`co_id`), ADD KEY `co_seo_title` (`co_seo_title`(191));

--
-- 테이블의 인덱스 `zuzn_eyoom_activity`
--
ALTER TABLE `zuzn_eyoom_activity`
 ADD PRIMARY KEY (`act_id`);

--
-- 테이블의 인덱스 `zuzn_eyoom_banner`
--
ALTER TABLE `zuzn_eyoom_banner`
 ADD PRIMARY KEY (`bn_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_banner_date`
--
ALTER TABLE `zuzn_eyoom_banner_date`
 ADD PRIMARY KEY (`bs_date`);

--
-- 테이블의 인덱스 `zuzn_eyoom_banner_hit`
--
ALTER TABLE `zuzn_eyoom_banner_hit`
 ADD PRIMARY KEY (`bh_id`);

--
-- 테이블의 인덱스 `zuzn_eyoom_banner_item`
--
ALTER TABLE `zuzn_eyoom_banner_item`
 ADD PRIMARY KEY (`bi_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_board`
--
ALTER TABLE `zuzn_eyoom_board`
 ADD PRIMARY KEY (`bo_id`), ADD KEY `bo_table` (`bo_table`), ADD KEY `bo_theme` (`bo_theme`);

--
-- 테이블의 인덱스 `zuzn_eyoom_brand`
--
ALTER TABLE `zuzn_eyoom_brand`
 ADD PRIMARY KEY (`br_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_contents`
--
ALTER TABLE `zuzn_eyoom_contents`
 ADD PRIMARY KEY (`ec_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_contents_item`
--
ALTER TABLE `zuzn_eyoom_contents_item`
 ADD PRIMARY KEY (`ci_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_exboard`
--
ALTER TABLE `zuzn_eyoom_exboard`
 ADD PRIMARY KEY (`ex_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_follow`
--
ALTER TABLE `zuzn_eyoom_follow`
 ADD PRIMARY KEY (`fo_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_goods`
--
ALTER TABLE `zuzn_eyoom_goods`
 ADD PRIMARY KEY (`eg_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_goods_item`
--
ALTER TABLE `zuzn_eyoom_goods_item`
 ADD PRIMARY KEY (`gi_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_latest`
--
ALTER TABLE `zuzn_eyoom_latest`
 ADD PRIMARY KEY (`el_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_latest_item`
--
ALTER TABLE `zuzn_eyoom_latest_item`
 ADD PRIMARY KEY (`li_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_like`
--
ALTER TABLE `zuzn_eyoom_like`
 ADD PRIMARY KEY (`lk_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_manager`
--
ALTER TABLE `zuzn_eyoom_manager`
 ADD PRIMARY KEY (`mb_id`,`mg_theme`);

--
-- 테이블의 인덱스 `zuzn_eyoom_mbmemo`
--
ALTER TABLE `zuzn_eyoom_mbmemo`
 ADD PRIMARY KEY (`mm_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_member`
--
ALTER TABLE `zuzn_eyoom_member`
 ADD UNIQUE KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_eyoom_menu`
--
ALTER TABLE `zuzn_eyoom_menu`
 ADD PRIMARY KEY (`me_id`);

--
-- 테이블의 인덱스 `zuzn_eyoom_pin`
--
ALTER TABLE `zuzn_eyoom_pin`
 ADD PRIMARY KEY (`pn_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_rating`
--
ALTER TABLE `zuzn_eyoom_rating`
 ADD PRIMARY KEY (`rt_id`);

--
-- 테이블의 인덱스 `zuzn_eyoom_respond`
--
ALTER TABLE `zuzn_eyoom_respond`
 ADD PRIMARY KEY (`rid`), ADD KEY `mb_id` (`wr_mb_id`);

--
-- 테이블의 인덱스 `zuzn_eyoom_slider`
--
ALTER TABLE `zuzn_eyoom_slider`
 ADD PRIMARY KEY (`es_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_slider_item`
--
ALTER TABLE `zuzn_eyoom_slider_item`
 ADD PRIMARY KEY (`ei_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_slider_ytitem`
--
ALTER TABLE `zuzn_eyoom_slider_ytitem`
 ADD PRIMARY KEY (`ei_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_subscribe`
--
ALTER TABLE `zuzn_eyoom_subscribe`
 ADD PRIMARY KEY (`sb_no`);

--
-- 테이블의 인덱스 `zuzn_eyoom_tag`
--
ALTER TABLE `zuzn_eyoom_tag`
 ADD PRIMARY KEY (`tg_id`), ADD KEY `tg_word` (`tg_word`);

--
-- 테이블의 인덱스 `zuzn_eyoom_tag_write`
--
ALTER TABLE `zuzn_eyoom_tag_write`
 ADD PRIMARY KEY (`tw_id`), ADD KEY `mb_id` (`mb_id`), ADD KEY `wr_hit` (`wr_hit`);

--
-- 테이블의 인덱스 `zuzn_eyoom_theme`
--
ALTER TABLE `zuzn_eyoom_theme`
 ADD UNIQUE KEY `tm_name` (`tm_name`);

--
-- 테이블의 인덱스 `zuzn_eyoom_yellowcard`
--
ALTER TABLE `zuzn_eyoom_yellowcard`
 ADD PRIMARY KEY (`yc_id`);

--
-- 테이블의 인덱스 `zuzn_faq`
--
ALTER TABLE `zuzn_faq`
 ADD PRIMARY KEY (`fa_id`), ADD KEY `fm_id` (`fm_id`);

--
-- 테이블의 인덱스 `zuzn_faq_master`
--
ALTER TABLE `zuzn_faq_master`
 ADD PRIMARY KEY (`fm_id`);

--
-- 테이블의 인덱스 `zuzn_fg_comment_all`
--
ALTER TABLE `zuzn_fg_comment_all`
 ADD PRIMARY KEY (`wr_id`);

--
-- 테이블의 인덱스 `zuzn_group`
--
ALTER TABLE `zuzn_group`
 ADD PRIMARY KEY (`gr_id`);

--
-- 테이블의 인덱스 `zuzn_group_member`
--
ALTER TABLE `zuzn_group_member`
 ADD PRIMARY KEY (`gm_id`), ADD KEY `gr_id` (`gr_id`(191)), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_hanbitgaram_widget`
--
ALTER TABLE `zuzn_hanbitgaram_widget`
 ADD PRIMARY KEY (`fw_id`);

--
-- 테이블의 인덱스 `zuzn_login`
--
ALTER TABLE `zuzn_login`
 ADD PRIMARY KEY (`lo_ip`);

--
-- 테이블의 인덱스 `zuzn_login_manage`
--
ALTER TABLE `zuzn_login_manage`
 ADD KEY `lm_no` (`lm_no`);

--
-- 테이블의 인덱스 `zuzn_mail`
--
ALTER TABLE `zuzn_mail`
 ADD PRIMARY KEY (`ma_id`);

--
-- 테이블의 인덱스 `zuzn_member`
--
ALTER TABLE `zuzn_member`
 ADD PRIMARY KEY (`mb_no`), ADD UNIQUE KEY `mb_id` (`mb_id`), ADD KEY `mb_today_login` (`mb_today_login`), ADD KEY `mb_datetime` (`mb_datetime`);

--
-- 테이블의 인덱스 `zuzn_member_cert_history`
--
ALTER TABLE `zuzn_member_cert_history`
 ADD PRIMARY KEY (`ch_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_member_follow`
--
ALTER TABLE `zuzn_member_follow`
 ADD PRIMARY KEY (`wr_id`);

--
-- 테이블의 인덱스 `zuzn_member_item`
--
ALTER TABLE `zuzn_member_item`
 ADD PRIMARY KEY (`uid`);

--
-- 테이블의 인덱스 `zuzn_member_social_profiles`
--
ALTER TABLE `zuzn_member_social_profiles`
 ADD UNIQUE KEY `mp_no` (`mp_no`), ADD KEY `mb_id` (`mb_id`(191)), ADD KEY `provider` (`provider`);

--
-- 테이블의 인덱스 `zuzn_memo`
--
ALTER TABLE `zuzn_memo`
 ADD PRIMARY KEY (`me_id`), ADD KEY `me_recv_mb_id` (`me_recv_mb_id`);

--
-- 테이블의 인덱스 `zuzn_menu`
--
ALTER TABLE `zuzn_menu`
 ADD PRIMARY KEY (`me_id`);

--
-- 테이블의 인덱스 `zuzn_na_noti`
--
ALTER TABLE `zuzn_na_noti`
 ADD PRIMARY KEY (`ph_id`);

--
-- 테이블의 인덱스 `zuzn_na_shingo`
--
ALTER TABLE `zuzn_na_shingo`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`wr_parent`);

--
-- 테이블의 인덱스 `zuzn_na_tag`
--
ALTER TABLE `zuzn_na_tag`
 ADD PRIMARY KEY (`id`), ADD KEY `tag` (`tag`(191),`lastdate`);

--
-- 테이블의 인덱스 `zuzn_na_tag_log`
--
ALTER TABLE `zuzn_na_tag_log`
 ADD PRIMARY KEY (`id`), ADD KEY `tag` (`tag`(191));

--
-- 테이블의 인덱스 `zuzn_na_xp`
--
ALTER TABLE `zuzn_na_xp`
 ADD PRIMARY KEY (`xp_id`), ADD KEY `index1` (`mb_id`,`xp_rel_table`,`xp_rel_id`,`xp_rel_action`);

--
-- 테이블의 인덱스 `zuzn_new_win`
--
ALTER TABLE `zuzn_new_win`
 ADD PRIMARY KEY (`nw_id`);

--
-- 테이블의 인덱스 `zuzn_olbbs`
--
ALTER TABLE `zuzn_olbbs`
 ADD PRIMARY KEY (`wr_id`);

--
-- 테이블의 인덱스 `zuzn_point`
--
ALTER TABLE `zuzn_point`
 ADD PRIMARY KEY (`po_id`), ADD KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`), ADD KEY `index2` (`po_expire_date`);

--
-- 테이블의 인덱스 `zuzn_poll`
--
ALTER TABLE `zuzn_poll`
 ADD PRIMARY KEY (`po_id`);

--
-- 테이블의 인덱스 `zuzn_poll_etc`
--
ALTER TABLE `zuzn_poll_etc`
 ADD PRIMARY KEY (`pc_id`);

--
-- 테이블의 인덱스 `zuzn_popular`
--
ALTER TABLE `zuzn_popular`
 ADD PRIMARY KEY (`pp_id`), ADD UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`);

--
-- 테이블의 인덱스 `zuzn_qa_content`
--
ALTER TABLE `zuzn_qa_content`
 ADD PRIMARY KEY (`qa_id`), ADD KEY `qa_num_parent` (`qa_num`,`qa_parent`);

--
-- 테이블의 인덱스 `zuzn_scrap`
--
ALTER TABLE `zuzn_scrap`
 ADD PRIMARY KEY (`ms_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `zuzn_shop_banner`
--
ALTER TABLE `zuzn_shop_banner`
 ADD PRIMARY KEY (`bn_id`);

--
-- 테이블의 인덱스 `zuzn_shop_cart`
--
ALTER TABLE `zuzn_shop_cart`
 ADD PRIMARY KEY (`ct_id`), ADD KEY `od_id` (`od_id`), ADD KEY `it_id` (`it_id`), ADD KEY `ct_status` (`ct_status`(191));

--
-- 테이블의 인덱스 `zuzn_shop_category`
--
ALTER TABLE `zuzn_shop_category`
 ADD PRIMARY KEY (`ca_id`), ADD KEY `ca_order` (`ca_order`);

--
-- 테이블의 인덱스 `zuzn_shop_coupon`
--
ALTER TABLE `zuzn_shop_coupon`
 ADD PRIMARY KEY (`cp_no`), ADD UNIQUE KEY `cp_id` (`cp_id`), ADD KEY `mb_id` (`mb_id`(191));

--
-- 테이블의 인덱스 `zuzn_shop_coupon_log`
--
ALTER TABLE `zuzn_shop_coupon_log`
 ADD PRIMARY KEY (`cl_id`), ADD KEY `mb_id` (`mb_id`), ADD KEY `od_id` (`od_id`);

--
-- 테이블의 인덱스 `zuzn_shop_coupon_zone`
--
ALTER TABLE `zuzn_shop_coupon_zone`
 ADD PRIMARY KEY (`cz_id`);

--
-- 테이블의 인덱스 `zuzn_shop_event`
--
ALTER TABLE `zuzn_shop_event`
 ADD PRIMARY KEY (`ev_id`);

--
-- 테이블의 인덱스 `zuzn_shop_event_item`
--
ALTER TABLE `zuzn_shop_event_item`
 ADD PRIMARY KEY (`ev_id`,`it_id`), ADD KEY `it_id` (`it_id`);

--
-- 테이블의 인덱스 `zuzn_shop_inicis_log`
--
ALTER TABLE `zuzn_shop_inicis_log`
 ADD PRIMARY KEY (`oid`);

--
-- 테이블의 인덱스 `zuzn_shop_item`
--
ALTER TABLE `zuzn_shop_item`
 ADD PRIMARY KEY (`it_id`), ADD KEY `ca_id` (`ca_id`), ADD KEY `it_name` (`it_name`(191)), ADD KEY `it_seo_title` (`it_seo_title`(191)), ADD KEY `it_order` (`it_order`);

--
-- 테이블의 인덱스 `zuzn_shop_item_option`
--
ALTER TABLE `zuzn_shop_item_option`
 ADD PRIMARY KEY (`io_no`), ADD KEY `io_id` (`io_id`(191)), ADD KEY `it_id` (`it_id`);

--
-- 테이블의 인덱스 `zuzn_shop_item_qa`
--
ALTER TABLE `zuzn_shop_item_qa`
 ADD PRIMARY KEY (`iq_id`);

--
-- 테이블의 인덱스 `zuzn_shop_item_relation`
--
ALTER TABLE `zuzn_shop_item_relation`
 ADD PRIMARY KEY (`it_id`,`it_id2`);

--
-- 테이블의 인덱스 `zuzn_shop_item_stocksms`
--
ALTER TABLE `zuzn_shop_item_stocksms`
 ADD PRIMARY KEY (`ss_id`);

--
-- 테이블의 인덱스 `zuzn_shop_item_use`
--
ALTER TABLE `zuzn_shop_item_use`
 ADD PRIMARY KEY (`is_id`), ADD KEY `index1` (`it_id`);

--
-- 테이블의 인덱스 `zuzn_shop_order`
--
ALTER TABLE `zuzn_shop_order`
 ADD PRIMARY KEY (`od_id`), ADD KEY `index2` (`mb_id`(191));

--
-- 테이블의 인덱스 `zuzn_shop_order_address`
--
ALTER TABLE `zuzn_shop_order_address`
 ADD PRIMARY KEY (`ad_id`), ADD KEY `mb_id` (`mb_id`(191));

--
-- 테이블의 인덱스 `zuzn_shop_order_data`
--
ALTER TABLE `zuzn_shop_order_data`
 ADD KEY `od_id` (`od_id`);

--
-- 테이블의 인덱스 `zuzn_shop_order_delete`
--
ALTER TABLE `zuzn_shop_order_delete`
 ADD PRIMARY KEY (`de_id`);

--
-- 테이블의 인덱스 `zuzn_shop_order_post_log`
--
ALTER TABLE `zuzn_shop_order_post_log`
 ADD PRIMARY KEY (`log_id`);

--
-- 테이블의 인덱스 `zuzn_shop_personalpay`
--
ALTER TABLE `zuzn_shop_personalpay`
 ADD PRIMARY KEY (`pp_id`), ADD KEY `od_id` (`od_id`);

--
-- 테이블의 인덱스 `zuzn_shop_sendcost`
--
ALTER TABLE `zuzn_shop_sendcost`
 ADD PRIMARY KEY (`sc_id`), ADD KEY `sc_zip1` (`sc_zip1`), ADD KEY `sc_zip2` (`sc_zip2`);

--
-- 테이블의 인덱스 `zuzn_shop_wish`
--
ALTER TABLE `zuzn_shop_wish`
 ADD PRIMARY KEY (`wi_id`), ADD KEY `index1` (`mb_id`(191));

--
-- 테이블의 인덱스 `zuzn_uniqid`
--
ALTER TABLE `zuzn_uniqid`
 ADD PRIMARY KEY (`uq_id`);

--
-- 테이블의 인덱스 `zuzn_visit`
--
ALTER TABLE `zuzn_visit`
 ADD PRIMARY KEY (`vi_id`), ADD UNIQUE KEY `index1` (`vi_ip`,`vi_date`), ADD KEY `index2` (`vi_date`);

--
-- 테이블의 인덱스 `zuzn_visit_sum`
--
ALTER TABLE `zuzn_visit_sum`
 ADD PRIMARY KEY (`vs_date`), ADD KEY `index1` (`vs_count`);

--
-- 테이블의 인덱스 `zuzn_wite_manhwa`
--
ALTER TABLE `zuzn_wite_manhwa`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_writer`
--
ALTER TABLE `zuzn_writer`
 ADD PRIMARY KEY (`mb_no`), ADD UNIQUE KEY `mb_id` (`mb_id`), ADD KEY `mb_today_login` (`mb_today_login`), ADD KEY `mb_datetime` (`mb_datetime`);

--
-- 테이블의 인덱스 `zuzn_write_4444`
--
ALTER TABLE `zuzn_write_4444`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_bhumor`
--
ALTER TABLE `zuzn_write_bhumor`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_callme`
--
ALTER TABLE `zuzn_write_callme`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_cartoon`
--
ALTER TABLE `zuzn_write_cartoon`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_clip`
--
ALTER TABLE `zuzn_write_clip`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_emomomo`
--
ALTER TABLE `zuzn_write_emomomo`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_exchange`
--
ALTER TABLE `zuzn_write_exchange`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_firstfox`
--
ALTER TABLE `zuzn_write_firstfox`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_free`
--
ALTER TABLE `zuzn_write_free`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_guide`
--
ALTER TABLE `zuzn_write_guide`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_honor`
--
ALTER TABLE `zuzn_write_honor`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_jsw228sguild`
--
ALTER TABLE `zuzn_write_jsw228sguild`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_myflash`
--
ALTER TABLE `zuzn_write_myflash`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_mygame`
--
ALTER TABLE `zuzn_write_mygame`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_myillust`
--
ALTER TABLE `zuzn_write_myillust`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_mypaper`
--
ALTER TABLE `zuzn_write_mypaper`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_myrmk`
--
ALTER TABLE `zuzn_write_myrmk`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(250)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_myshare`
--
ALTER TABLE `zuzn_write_myshare`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_mytoon`
--
ALTER TABLE `zuzn_write_mytoon`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_needperson`
--
ALTER TABLE `zuzn_write_needperson`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_night6530`
--
ALTER TABLE `zuzn_write_night6530`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_night6530sguild`
--
ALTER TABLE `zuzn_write_night6530sguild`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_notice`
--
ALTER TABLE `zuzn_write_notice`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_online`
--
ALTER TABLE `zuzn_write_online`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_rkdfud121`
--
ALTER TABLE `zuzn_write_rkdfud121`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_sharhene777`
--
ALTER TABLE `zuzn_write_sharhene777`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `zuzn_write_storyteller`
--
ALTER TABLE `zuzn_write_storyteller`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_seo_title` (`wr_seo_title`(191)), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `g_analytics`
--
ALTER TABLE `g_analytics`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `sms5_book`
--
ALTER TABLE `sms5_book`
MODIFY `bk_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `sms5_book_group`
--
ALTER TABLE `sms5_book_group`
MODIFY `bg_no` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `sms5_form`
--
ALTER TABLE `sms5_form`
MODIFY `fo_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `sms5_form_group`
--
ALTER TABLE `sms5_form_group`
MODIFY `fg_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `sms5_history`
--
ALTER TABLE `sms5_history`
MODIFY `hs_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `wroom_bbs`
--
ALTER TABLE `wroom_bbs`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302502;
--
-- 테이블의 AUTO_INCREMENT `zuzn_auction_exchange`
--
ALTER TABLE `zuzn_auction_exchange`
MODIFY `td_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_autosave`
--
ALTER TABLE `zuzn_autosave`
MODIFY `as_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2578;
--
-- 테이블의 AUTO_INCREMENT `zuzn_board_good`
--
ALTER TABLE `zuzn_board_good`
MODIFY `bg_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=693;
--
-- 테이블의 AUTO_INCREMENT `zuzn_board_new`
--
ALTER TABLE `zuzn_board_new`
MODIFY `bn_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2003;
--
-- 테이블의 AUTO_INCREMENT `zuzn_cert_history`
--
ALTER TABLE `zuzn_cert_history`
MODIFY `cr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_activity`
--
ALTER TABLE `zuzn_eyoom_activity`
MODIFY `act_id` mediumint unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2580;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_banner`
--
ALTER TABLE `zuzn_eyoom_banner`
MODIFY `bn_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_banner_hit`
--
ALTER TABLE `zuzn_eyoom_banner_hit`
MODIFY `bh_id` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1066;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_banner_item`
--
ALTER TABLE `zuzn_eyoom_banner_item`
MODIFY `bi_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_board`
--
ALTER TABLE `zuzn_eyoom_board`
MODIFY `bo_id` mediumint unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_brand`
--
ALTER TABLE `zuzn_eyoom_brand`
MODIFY `br_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_contents`
--
ALTER TABLE `zuzn_eyoom_contents`
MODIFY `ec_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_contents_item`
--
ALTER TABLE `zuzn_eyoom_contents_item`
MODIFY `ci_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_exboard`
--
ALTER TABLE `zuzn_eyoom_exboard`
MODIFY `ex_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_follow`
--
ALTER TABLE `zuzn_eyoom_follow`
MODIFY `fo_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_goods`
--
ALTER TABLE `zuzn_eyoom_goods`
MODIFY `eg_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_goods_item`
--
ALTER TABLE `zuzn_eyoom_goods_item`
MODIFY `gi_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_latest`
--
ALTER TABLE `zuzn_eyoom_latest`
MODIFY `el_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_latest_item`
--
ALTER TABLE `zuzn_eyoom_latest_item`
MODIFY `li_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_like`
--
ALTER TABLE `zuzn_eyoom_like`
MODIFY `lk_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_mbmemo`
--
ALTER TABLE `zuzn_eyoom_mbmemo`
MODIFY `mm_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_menu`
--
ALTER TABLE `zuzn_eyoom_menu`
MODIFY `me_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_pin`
--
ALTER TABLE `zuzn_eyoom_pin`
MODIFY `pn_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_rating`
--
ALTER TABLE `zuzn_eyoom_rating`
MODIFY `rt_id` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_respond`
--
ALTER TABLE `zuzn_eyoom_respond`
MODIFY `rid` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_slider`
--
ALTER TABLE `zuzn_eyoom_slider`
MODIFY `es_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_slider_item`
--
ALTER TABLE `zuzn_eyoom_slider_item`
MODIFY `ei_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_slider_ytitem`
--
ALTER TABLE `zuzn_eyoom_slider_ytitem`
MODIFY `ei_no` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_subscribe`
--
ALTER TABLE `zuzn_eyoom_subscribe`
MODIFY `sb_no` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_tag`
--
ALTER TABLE `zuzn_eyoom_tag`
MODIFY `tg_id` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_tag_write`
--
ALTER TABLE `zuzn_eyoom_tag_write`
MODIFY `tw_id` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- 테이블의 AUTO_INCREMENT `zuzn_eyoom_yellowcard`
--
ALTER TABLE `zuzn_eyoom_yellowcard`
MODIFY `yc_id` int unsigned NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_faq`
--
ALTER TABLE `zuzn_faq`
MODIFY `fa_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 테이블의 AUTO_INCREMENT `zuzn_faq_master`
--
ALTER TABLE `zuzn_faq_master`
MODIFY `fm_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_fg_comment_all`
--
ALTER TABLE `zuzn_fg_comment_all`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- 테이블의 AUTO_INCREMENT `zuzn_group_member`
--
ALTER TABLE `zuzn_group_member`
MODIFY `gm_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_hanbitgaram_widget`
--
ALTER TABLE `zuzn_hanbitgaram_widget`
MODIFY `fw_id` bigint NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_login_manage`
--
ALTER TABLE `zuzn_login_manage`
MODIFY `lm_no` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1307;
--
-- 테이블의 AUTO_INCREMENT `zuzn_mail`
--
ALTER TABLE `zuzn_mail`
MODIFY `ma_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_member`
--
ALTER TABLE `zuzn_member`
MODIFY `mb_no` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1090447;
--
-- 테이블의 AUTO_INCREMENT `zuzn_member_cert_history`
--
ALTER TABLE `zuzn_member_cert_history`
MODIFY `ch_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_member_follow`
--
ALTER TABLE `zuzn_member_follow`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- 테이블의 AUTO_INCREMENT `zuzn_member_social_profiles`
--
ALTER TABLE `zuzn_member_social_profiles`
MODIFY `mp_no` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=186;
--
-- 테이블의 AUTO_INCREMENT `zuzn_memo`
--
ALTER TABLE `zuzn_memo`
MODIFY `me_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- 테이블의 AUTO_INCREMENT `zuzn_menu`
--
ALTER TABLE `zuzn_menu`
MODIFY `me_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- 테이블의 AUTO_INCREMENT `zuzn_na_noti`
--
ALTER TABLE `zuzn_na_noti`
MODIFY `ph_id` int unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1349;
--
-- 테이블의 AUTO_INCREMENT `zuzn_na_shingo`
--
ALTER TABLE `zuzn_na_shingo`
MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_na_tag`
--
ALTER TABLE `zuzn_na_tag`
MODIFY `id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- 테이블의 AUTO_INCREMENT `zuzn_na_tag_log`
--
ALTER TABLE `zuzn_na_tag_log`
MODIFY `id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- 테이블의 AUTO_INCREMENT `zuzn_na_xp`
--
ALTER TABLE `zuzn_na_xp`
MODIFY `xp_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35679;
--
-- 테이블의 AUTO_INCREMENT `zuzn_new_win`
--
ALTER TABLE `zuzn_new_win`
MODIFY `nw_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_olbbs`
--
ALTER TABLE `zuzn_olbbs`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- 테이블의 AUTO_INCREMENT `zuzn_point`
--
ALTER TABLE `zuzn_point`
MODIFY `po_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7676;
--
-- 테이블의 AUTO_INCREMENT `zuzn_poll`
--
ALTER TABLE `zuzn_poll`
MODIFY `po_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_popular`
--
ALTER TABLE `zuzn_popular`
MODIFY `pp_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73871;
--
-- 테이블의 AUTO_INCREMENT `zuzn_qa_content`
--
ALTER TABLE `zuzn_qa_content`
MODIFY `qa_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_scrap`
--
ALTER TABLE `zuzn_scrap`
MODIFY `ms_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_banner`
--
ALTER TABLE `zuzn_shop_banner`
MODIFY `bn_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_cart`
--
ALTER TABLE `zuzn_shop_cart`
MODIFY `ct_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_coupon`
--
ALTER TABLE `zuzn_shop_coupon`
MODIFY `cp_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_coupon_log`
--
ALTER TABLE `zuzn_shop_coupon_log`
MODIFY `cl_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_coupon_zone`
--
ALTER TABLE `zuzn_shop_coupon_zone`
MODIFY `cz_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_event`
--
ALTER TABLE `zuzn_shop_event`
MODIFY `ev_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_item_option`
--
ALTER TABLE `zuzn_shop_item_option`
MODIFY `io_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_item_qa`
--
ALTER TABLE `zuzn_shop_item_qa`
MODIFY `iq_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_item_stocksms`
--
ALTER TABLE `zuzn_shop_item_stocksms`
MODIFY `ss_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_item_use`
--
ALTER TABLE `zuzn_shop_item_use`
MODIFY `is_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_order_address`
--
ALTER TABLE `zuzn_shop_order_address`
MODIFY `ad_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_order_delete`
--
ALTER TABLE `zuzn_shop_order_delete`
MODIFY `de_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_order_post_log`
--
ALTER TABLE `zuzn_shop_order_post_log`
MODIFY `log_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_sendcost`
--
ALTER TABLE `zuzn_shop_sendcost`
MODIFY `sc_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_shop_wish`
--
ALTER TABLE `zuzn_shop_wish`
MODIFY `wi_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_wite_manhwa`
--
ALTER TABLE `zuzn_wite_manhwa`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_writer`
--
ALTER TABLE `zuzn_writer`
MODIFY `mb_no` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_4444`
--
ALTER TABLE `zuzn_write_4444`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_bhumor`
--
ALTER TABLE `zuzn_write_bhumor`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187668;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_callme`
--
ALTER TABLE `zuzn_write_callme`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_cartoon`
--
ALTER TABLE `zuzn_write_cartoon`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_clip`
--
ALTER TABLE `zuzn_write_clip`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1118514;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_emomomo`
--
ALTER TABLE `zuzn_write_emomomo`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_exchange`
--
ALTER TABLE `zuzn_write_exchange`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_firstfox`
--
ALTER TABLE `zuzn_write_firstfox`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_free`
--
ALTER TABLE `zuzn_write_free`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=590;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_guide`
--
ALTER TABLE `zuzn_write_guide`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17785;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_honor`
--
ALTER TABLE `zuzn_write_honor`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=297;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_jsw228sguild`
--
ALTER TABLE `zuzn_write_jsw228sguild`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_myflash`
--
ALTER TABLE `zuzn_write_myflash`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1118566;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_mygame`
--
ALTER TABLE `zuzn_write_mygame`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_myillust`
--
ALTER TABLE `zuzn_write_myillust`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574604;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_mypaper`
--
ALTER TABLE `zuzn_write_mypaper`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_myrmk`
--
ALTER TABLE `zuzn_write_myrmk`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_myshare`
--
ALTER TABLE `zuzn_write_myshare`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_mytoon`
--
ALTER TABLE `zuzn_write_mytoon`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100668;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_needperson`
--
ALTER TABLE `zuzn_write_needperson`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_night6530`
--
ALTER TABLE `zuzn_write_night6530`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_night6530sguild`
--
ALTER TABLE `zuzn_write_night6530sguild`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_notice`
--
ALTER TABLE `zuzn_write_notice`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=427;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_online`
--
ALTER TABLE `zuzn_write_online`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_rkdfud121`
--
ALTER TABLE `zuzn_write_rkdfud121`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_sharhene777`
--
ALTER TABLE `zuzn_write_sharhene777`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `zuzn_write_storyteller`
--
ALTER TABLE `zuzn_write_storyteller`
MODIFY `wr_id` int NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `Bookmarks`
--
ALTER TABLE `Bookmarks`
ADD CONSTRAINT `Bookmarks_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Bookmarks_ibfk_2` FOREIGN KEY (`tweetId`) REFERENCES `Tweets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `Comments`
--
ALTER TABLE `Comments`
ADD CONSTRAINT `Comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `Followers`
--
ALTER TABLE `Followers`
ADD CONSTRAINT `Followers_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Followers_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `Likes`
--
ALTER TABLE `Likes`
ADD CONSTRAINT `Likes_ibfk_1` FOREIGN KEY (`tweetId`) REFERENCES `Tweets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Likes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `Retweets`
--
ALTER TABLE `Retweets`
ADD CONSTRAINT `Retweets_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Retweets_ibfk_2` FOREIGN KEY (`tweetId`) REFERENCES `Tweets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `Tweets`
--
ALTER TABLE `Tweets`
ADD CONSTRAINT `Tweets_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
