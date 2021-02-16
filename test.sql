-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 02:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_pages`
--

CREATE TABLE `about_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_pages`
--

INSERT INTO `about_pages` (`id`, `heading`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Heading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'images/drugs-that-cause-ototoxicity.jpg', '2021-02-15 06:29:34', '2021-02-15 07:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(8, 0, 1, 'Pages', 'fa-archive', NULL, NULL, '2021-02-15 06:20:37', '2021-02-15 06:23:01'),
(9, 8, 2, 'Home', 'fa-home', '/home-page', '*', '2021-02-15 06:21:27', '2021-02-15 06:23:01'),
(10, 8, 3, 'About', 'fa-info', '/about-page', '*', '2021-02-15 06:22:23', '2021-02-15 06:23:01'),
(11, 8, 4, 'Contact', 'fa-commenting-o', '/contact-page', '*', '2021-02-15 06:22:52', '2021-02-15 06:23:01'),
(12, 0, 5, 'Blog', 'fa-bars', '/blogs', '*', '2021-02-15 06:25:02', '2021-02-15 06:25:14'),
(13, 0, 6, 'Clients', 'fa-user', '/clients', '*', '2021-02-15 06:25:55', '2021-02-15 06:28:01'),
(14, 0, 7, 'Teams', 'fa-users', '/teams', '*', '2021-02-15 06:26:33', '2021-02-15 06:28:01'),
(15, 0, 8, 'Services', 'fa-building', '/services', '*', '2021-02-15 06:26:55', '2021-02-15 06:28:01'),
(16, 0, 9, 'Contacts', 'fa-comments-o', '/contacts', '*', '2021-02-15 06:27:23', '2021-02-15 06:28:01'),
(17, 0, 10, 'Settings', 'fa-gears', '/settings', '*', '2021-02-15 06:27:43', '2021-02-15 06:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '192.168.1.51', '[]', '2021-02-15 06:19:42', '2021-02-15 06:19:42'),
(2, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:19:53', '2021-02-15 06:19:53'),
(3, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Pages\",\"icon\":\"fa-archive\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:20:37', '2021-02-15 06:20:37'),
(4, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:20:38', '2021-02-15 06:20:38'),
(5, 1, 'admin/auth/menu/8/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:20:41', '2021-02-15 06:20:41'),
(6, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:20:44', '2021-02-15 06:20:44'),
(7, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"8\",\"title\":\"Home\",\"icon\":\"fa-home\",\"uri\":\"\\/home-page\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:21:26', '2021-02-15 06:21:26'),
(8, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:21:27', '2021-02-15 06:21:27'),
(9, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"About\",\"icon\":\"fa-info\",\"uri\":\"\\/about-page\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:22:23', '2021-02-15 06:22:23'),
(10, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:22:23', '2021-02-15 06:22:23'),
(11, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Contact\",\"icon\":\"fa-commenting-o\",\"uri\":\"\\/contact-page\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:22:52', '2021-02-15 06:22:52'),
(12, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:22:52', '2021-02-15 06:22:52'),
(13, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_order\":\"[{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-02-15 06:23:01', '2021-02-15 06:23:01'),
(14, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:23:02', '2021-02-15 06:23:02'),
(15, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_order\":\"[{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-02-15 06:24:21', '2021-02-15 06:24:21'),
(16, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:24:22', '2021-02-15 06:24:22'),
(17, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Blog\",\"icon\":\"fa-bars\",\"uri\":\"\\/blogs\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:25:02', '2021-02-15 06:25:02'),
(18, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:25:02', '2021-02-15 06:25:02'),
(19, 1, 'admin/auth/menu/1', 'DELETE', '192.168.1.51', '{\"_method\":\"delete\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:25:08', '2021-02-15 06:25:08'),
(20, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:25:08', '2021-02-15 06:25:08'),
(21, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_order\":\"[{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-02-15 06:25:14', '2021-02-15 06:25:14'),
(22, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:25:14', '2021-02-15 06:25:14'),
(23, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Clients\",\"icon\":\"fa-user\",\"uri\":\"\\/clients\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:25:55', '2021-02-15 06:25:55'),
(24, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:25:56', '2021-02-15 06:25:56'),
(25, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Teams\",\"icon\":\"fa-users\",\"uri\":\"\\/teams\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:26:33', '2021-02-15 06:26:33'),
(26, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:26:33', '2021-02-15 06:26:33'),
(27, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-building\",\"uri\":\"\\/services\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:26:55', '2021-02-15 06:26:55'),
(28, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:26:55', '2021-02-15 06:26:55'),
(29, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:27:10', '2021-02-15 06:27:10'),
(30, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Contacts\",\"icon\":\"fa-comments-o\",\"uri\":\"\\/contacts\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:27:23', '2021-02-15 06:27:23'),
(31, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:27:23', '2021-02-15 06:27:23'),
(32, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"parent_id\":\"0\",\"title\":\"Settings\",\"icon\":\"fa-gears\",\"uri\":\"\\/settings\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:27:42', '2021-02-15 06:27:42'),
(33, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '[]', '2021-02-15 06:27:43', '2021-02-15 06:27:43'),
(34, 1, 'admin/auth/menu', 'POST', '192.168.1.51', '{\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_order\":\"[{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-02-15 06:28:01', '2021-02-15 06:28:01'),
(35, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:02', '2021-02-15 06:28:02'),
(36, 1, 'admin/auth/menu/2', 'DELETE', '192.168.1.51', '{\"_method\":\"delete\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\"}', '2021-02-15 06:28:06', '2021-02-15 06:28:06'),
(37, 1, 'admin/auth/menu', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:06', '2021-02-15 06:28:06'),
(38, 1, 'admin/clients', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:12', '2021-02-15 06:28:12'),
(39, 1, 'admin/clients', 'GET', '192.168.1.51', '[]', '2021-02-15 06:28:14', '2021-02-15 06:28:14'),
(40, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:19', '2021-02-15 06:28:19'),
(41, 1, 'admin/blogs', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:25', '2021-02-15 06:28:25'),
(42, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:28', '2021-02-15 06:28:28'),
(43, 1, 'admin/services', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:32', '2021-02-15 06:28:32'),
(44, 1, 'admin/contacts', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:34', '2021-02-15 06:28:34'),
(45, 1, 'admin/settings', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:28:36', '2021-02-15 06:28:36'),
(46, 1, 'admin/settings/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:15', '2021-02-15 06:29:15'),
(47, 1, 'admin/settings', 'POST', '192.168.1.51', '{\"name\":null,\"facebook\":null,\"instagram\":null,\"twitter\":null,\"linkedin\":null,\"email\":null,\"mobile\":null,\"s_color\":null,\"p_color\":null,\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/settings\"}', '2021-02-15 06:29:18', '2021-02-15 06:29:18'),
(48, 1, 'admin/settings', 'GET', '192.168.1.51', '[]', '2021-02-15 06:29:18', '2021-02-15 06:29:18'),
(49, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:24', '2021-02-15 06:29:24'),
(50, 1, 'admin/home-page/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:26', '2021-02-15 06:29:26'),
(51, 1, 'admin/home-page', 'POST', '192.168.1.51', '{\"baner1_heading\":null,\"baner2_heading\":null,\"baner3_heading\":null,\"baner1_text\":null,\"baner2_text\":null,\"baner3_text\":null,\"featured_area_heading\":null,\"featured_area_text\":null,\"fh1_heading\":null,\"fh1_text\":null,\"fh2_heading\":null,\"fh2_text\":null,\"fh3_heading\":null,\"fh3_text\":null,\"app_link\":null,\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/home-page\"}', '2021-02-15 06:29:29', '2021-02-15 06:29:29'),
(52, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:29:30', '2021-02-15 06:29:30'),
(53, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:31', '2021-02-15 06:29:31'),
(54, 1, 'admin/about-page/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:33', '2021-02-15 06:29:33'),
(55, 1, 'admin/about-page', 'POST', '192.168.1.51', '{\"heading\":null,\"content\":null,\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/about-page\"}', '2021-02-15 06:29:34', '2021-02-15 06:29:34'),
(56, 1, 'admin/about-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:29:35', '2021-02-15 06:29:35'),
(57, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:36', '2021-02-15 06:29:36'),
(58, 1, 'admin/contact-page/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:29:37', '2021-02-15 06:29:37'),
(59, 1, 'admin/contact-page', 'POST', '192.168.1.51', '{\"content\":null,\"address\":null,\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/contact-page\"}', '2021-02-15 06:29:39', '2021-02-15 06:29:39'),
(60, 1, 'admin/contact-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:29:40', '2021-02-15 06:29:40'),
(61, 1, 'admin/settings', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:30:30', '2021-02-15 06:30:30'),
(62, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:30:32', '2021-02-15 06:30:32'),
(63, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:30:34', '2021-02-15 06:30:34'),
(64, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:30:35', '2021-02-15 06:30:35'),
(65, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:30:37', '2021-02-15 06:30:37'),
(66, 1, 'admin/contact-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:32:35', '2021-02-15 06:32:35'),
(67, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:32:37', '2021-02-15 06:32:37'),
(68, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:32:41', '2021-02-15 06:32:41'),
(69, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:32:43', '2021-02-15 06:32:43'),
(70, 1, 'admin/home-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:32:46', '2021-02-15 06:32:46'),
(71, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:32:48', '2021-02-15 06:32:48'),
(72, 1, 'admin/home-page/1', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:33:18', '2021-02-15 06:33:18'),
(73, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:33:52', '2021-02-15 06:33:52'),
(74, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:34:24', '2021-02-15 06:34:24'),
(75, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:35:43', '2021-02-15 06:35:43'),
(76, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:36:04', '2021-02-15 06:36:04'),
(77, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:36:35', '2021-02-15 06:36:35'),
(78, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:36:58', '2021-02-15 06:36:58'),
(79, 1, 'admin/home-page/1', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:37:03', '2021-02-15 06:37:03'),
(80, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:37:17', '2021-02-15 06:37:17'),
(81, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:38:16', '2021-02-15 06:38:16'),
(82, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:38:21', '2021-02-15 06:38:21'),
(83, 1, 'admin/about-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:38:22', '2021-02-15 06:38:22'),
(84, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:38:25', '2021-02-15 06:38:25'),
(85, 1, 'admin/about-page/1', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:38:27', '2021-02-15 06:38:27'),
(86, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:38:30', '2021-02-15 06:38:30'),
(87, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:39:58', '2021-02-15 06:39:58'),
(88, 1, 'admin/contact-page/1', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:40:00', '2021-02-15 06:40:00'),
(89, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:40:02', '2021-02-15 06:40:02'),
(90, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:40:04', '2021-02-15 06:40:04'),
(91, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:40:08', '2021-02-15 06:40:08'),
(92, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:40:18', '2021-02-15 06:40:18'),
(93, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:41:23', '2021-02-15 06:41:23'),
(94, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:41:25', '2021-02-15 06:41:25'),
(95, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:41:26', '2021-02-15 06:41:26'),
(96, 1, 'admin/services', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:41:29', '2021-02-15 06:41:29'),
(97, 1, 'admin/settings', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:41:29', '2021-02-15 06:41:29'),
(98, 1, 'admin/settings/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:47:46', '2021-02-15 06:47:46'),
(99, 1, 'admin/settings/1', 'PUT', '192.168.1.51', '{\"name\":\"Site Name\",\"facebook\":null,\"instagram\":null,\"twitter\":null,\"linkedin\":null,\"email\":null,\"mobile\":null,\"s_color\":\"#deeeff\",\"p_color\":\"#2ad2ea\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/settings\"}', '2021-02-15 06:48:08', '2021-02-15 06:48:08'),
(100, 1, 'admin/settings', 'GET', '192.168.1.51', '[]', '2021-02-15 06:48:08', '2021-02-15 06:48:08'),
(101, 1, 'admin/home-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:56:57', '2021-02-15 06:56:57'),
(102, 1, 'admin/home-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:57:02', '2021-02-15 06:57:02'),
(103, 1, 'admin/home-page/1', 'PUT', '192.168.1.51', '{\"baner1_heading\":\"Heading 1\",\"baner2_heading\":\"Heading 2\",\"baner3_heading\":\"Heading 3\",\"baner1_text\":null,\"baner2_text\":null,\"baner3_text\":null,\"featured_area_heading\":null,\"featured_area_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fh1_heading\":null,\"fh1_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fh2_heading\":null,\"fh2_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fh3_heading\":null,\"fh3_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"app_link\":\"https:\\/\\/play.google.com\\/store\\/apps\\/details?id=\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/home-page\"}', '2021-02-15 06:58:10', '2021-02-15 06:58:10'),
(104, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:58:11', '2021-02-15 06:58:11'),
(105, 1, 'admin/home-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 06:58:15', '2021-02-15 06:58:15'),
(106, 1, 'admin/home-page/1', 'PUT', '192.168.1.51', '{\"baner1_heading\":\"Heading 1\",\"baner2_heading\":\"Heading 2\",\"baner3_heading\":\"Heading 3\",\"baner1_text\":\"Baner1 text\",\"baner2_text\":\"Baner2 text\",\"baner3_text\":\"Baner3 text\",\"featured_area_heading\":\"Featured area heading\",\"featured_area_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fh1_heading\":\"Fh1 heading\",\"fh1_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fh2_heading\":\"Fh2 heading\",\"fh2_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fh3_heading\":\"Fh3 heading\",\"fh3_text\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"app_link\":\"https:\\/\\/play.google.com\\/store\\/apps\\/details?id=\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/home-page\"}', '2021-02-15 06:58:38', '2021-02-15 06:58:38'),
(107, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 06:58:38', '2021-02-15 06:58:38'),
(108, 1, 'admin/home-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:00:33', '2021-02-15 07:00:33'),
(109, 1, 'admin/about-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:00:41', '2021-02-15 07:00:41'),
(110, 1, 'admin/about-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:00:44', '2021-02-15 07:00:44'),
(111, 1, 'admin/about-page/1', 'PUT', '192.168.1.51', '{\"heading\":\"Heading\",\"content\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/about-page\"}', '2021-02-15 07:01:03', '2021-02-15 07:01:03'),
(112, 1, 'admin/about-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:01:04', '2021-02-15 07:01:04'),
(113, 1, 'admin/about-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:01:25', '2021-02-15 07:01:25'),
(114, 1, 'admin/about-page/1', 'PUT', '192.168.1.51', '{\"heading\":\"Heading\",\"content\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/about-page\"}', '2021-02-15 07:01:47', '2021-02-15 07:01:47'),
(115, 1, 'admin/about-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:01:47', '2021-02-15 07:01:47'),
(116, 1, 'admin/contact-page', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:04:23', '2021-02-15 07:04:23'),
(117, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:04:26', '2021-02-15 07:04:26'),
(118, 1, 'admin/contact-page/1', 'PUT', '192.168.1.51', '{\"content\":null,\"address\":\"Sehat Soft - Developer Of Business Solutions\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/contact-page\"}', '2021-02-15 07:04:54', '2021-02-15 07:04:54'),
(119, 1, 'admin/contact-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:04:55', '2021-02-15 07:04:55'),
(120, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:05:11', '2021-02-15 07:05:11'),
(121, 1, 'admin/contact-page/1', 'PUT', '192.168.1.51', '{\"content\":null,\"address\":\"Sehat Soft - Developer Of Business Solutions Jawahar nagar shopping center, Rajasthan 302004\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/contact-page\"}', '2021-02-15 07:05:15', '2021-02-15 07:05:15'),
(122, 1, 'admin/contact-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:05:15', '2021-02-15 07:05:15'),
(123, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:05:19', '2021-02-15 07:05:19'),
(124, 1, 'admin/contact-page/1', 'PUT', '192.168.1.51', '{\"content\":\"<h3><strong>Country<\\/strong>&nbsp;:&nbsp;India<\\/h3>\\r\\n\\r\\n<hr \\/>\\r\\n<p><strong>Name<\\/strong>&nbsp;:&nbsp;Krushna Trading Company<\\/p>\\r\\n\\r\\n<p><strong>Email<\\/strong>&nbsp;:&nbsp;puna1710@gmail.com<\\/p>\\r\\n\\r\\n<p><strong>Phone<\\/strong>&nbsp;:&nbsp;+91-9595957579<\\/p>\\r\\n\\r\\n<p><strong>Address<\\/strong>&nbsp;:&nbsp;Oppsite Alcon Society, Dholepatil Farms Rd, Tulaja Bhawani Nagar, Kharadi, Pune, Maharashtra 411014<\\/p>\",\"address\":\"Sehat Soft - Developer Of Business Solutions Jawahar nagar shopping center, Rajasthan 302004\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/contact-page\"}', '2021-02-15 07:05:56', '2021-02-15 07:05:56'),
(125, 1, 'admin/contact-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:05:57', '2021-02-15 07:05:57'),
(126, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:06:13', '2021-02-15 07:06:13'),
(127, 1, 'admin/contact-page/1', 'PUT', '192.168.1.51', '{\"content\":\"<h3><strong>Country<\\/strong>&nbsp;:&nbsp;India<\\/h3>\\r\\n\\r\\n<hr \\/>\\r\\n<p><strong>Name<\\/strong>&nbsp;: Company Name<\\/p>\\r\\n\\r\\n<p><strong>Email<\\/strong>&nbsp;:&nbsp;xyz@abc.com<\\/p>\\r\\n\\r\\n<p><strong>Phone<\\/strong>&nbsp;:&nbsp;+91-1111111111<\\/p>\",\"address\":\"Sehat Soft - Developer Of Business Solutions Jawahar nagar shopping center, Rajasthan 302004\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/contact-page\"}', '2021-02-15 07:06:46', '2021-02-15 07:06:46'),
(128, 1, 'admin/contact-page', 'GET', '192.168.1.51', '[]', '2021-02-15 07:06:46', '2021-02-15 07:06:46'),
(129, 1, 'admin/settings', 'GET', '192.168.1.51', '[]', '2021-02-15 07:06:52', '2021-02-15 07:06:52'),
(130, 1, 'admin/settings/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:06:58', '2021-02-15 07:06:58'),
(131, 1, 'admin/contact-page/1/edit', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:07:07', '2021-02-15 07:07:07'),
(132, 1, 'admin/settings/1', 'PUT', '192.168.1.51', '{\"name\":\"Site Name\",\"facebook\":\"#\",\"instagram\":\"#\",\"twitter\":\"#\",\"linkedin\":\"#\",\"email\":\"xyz@abc.com\",\"mobile\":\"1111111111\",\"s_color\":\"#deeeff\",\"p_color\":\"#2ad2ea\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/settings\"}', '2021-02-15 07:07:49', '2021-02-15 07:07:49'),
(133, 1, 'admin/settings', 'GET', '192.168.1.51', '[]', '2021-02-15 07:07:49', '2021-02-15 07:07:49'),
(134, 1, 'admin/settings', 'GET', '192.168.1.51', '[]', '2021-02-15 07:08:15', '2021-02-15 07:08:15'),
(135, 1, 'admin/services', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:13:41', '2021-02-15 07:13:41'),
(136, 1, 'admin/services/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:13:44', '2021-02-15 07:13:44'),
(137, 1, 'admin/services', 'POST', '192.168.1.51', '{\"title\":\"Service 1\",\"content\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/services\"}', '2021-02-15 07:14:03', '2021-02-15 07:14:03'),
(138, 1, 'admin/services', 'GET', '192.168.1.51', '[]', '2021-02-15 07:14:03', '2021-02-15 07:14:03'),
(139, 1, 'admin/services/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:14:07', '2021-02-15 07:14:07'),
(140, 1, 'admin/services', 'POST', '192.168.1.51', '{\"title\":\"Service 2\",\"content\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/services\"}', '2021-02-15 07:14:20', '2021-02-15 07:14:20'),
(141, 1, 'admin/services', 'GET', '192.168.1.51', '[]', '2021-02-15 07:14:20', '2021-02-15 07:14:20'),
(142, 1, 'admin/services/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:14:23', '2021-02-15 07:14:23'),
(143, 1, 'admin/services', 'POST', '192.168.1.51', '{\"title\":\"Service 3\",\"content\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/services\"}', '2021-02-15 07:14:40', '2021-02-15 07:14:40'),
(144, 1, 'admin/services', 'GET', '192.168.1.51', '[]', '2021-02-15 07:14:41', '2021-02-15 07:14:41'),
(145, 1, 'admin/services/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:14:46', '2021-02-15 07:14:46'),
(146, 1, 'admin/services', 'POST', '192.168.1.51', '{\"title\":\"Service 4\",\"content\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/services\"}', '2021-02-15 07:15:02', '2021-02-15 07:15:02'),
(147, 1, 'admin/services', 'GET', '192.168.1.51', '[]', '2021-02-15 07:15:02', '2021-02-15 07:15:02'),
(148, 1, 'admin/teams', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:20:01', '2021-02-15 07:20:01'),
(149, 1, 'admin/teams/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:20:03', '2021-02-15 07:20:03'),
(150, 1, 'admin/teams', 'POST', '192.168.1.51', '{\"title\":\"Name 1\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/teams\"}', '2021-02-15 07:20:29', '2021-02-15 07:20:29'),
(151, 1, 'admin/teams', 'GET', '192.168.1.51', '[]', '2021-02-15 07:20:29', '2021-02-15 07:20:29'),
(152, 1, 'admin/teams/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:20:31', '2021-02-15 07:20:31'),
(153, 1, 'admin/teams', 'POST', '192.168.1.51', '{\"title\":\"Name 2\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/teams\"}', '2021-02-15 07:20:45', '2021-02-15 07:20:45'),
(154, 1, 'admin/teams', 'GET', '192.168.1.51', '[]', '2021-02-15 07:20:46', '2021-02-15 07:20:46'),
(155, 1, 'admin/teams/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:20:48', '2021-02-15 07:20:48'),
(156, 1, 'admin/teams', 'POST', '192.168.1.51', '{\"title\":\"Name 3\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/teams\"}', '2021-02-15 07:21:02', '2021-02-15 07:21:02'),
(157, 1, 'admin/teams', 'GET', '192.168.1.51', '[]', '2021-02-15 07:21:03', '2021-02-15 07:21:03'),
(158, 1, 'admin/teams/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:21:06', '2021-02-15 07:21:06'),
(159, 1, 'admin/teams', 'POST', '192.168.1.51', '{\"title\":\"Name 4\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/teams\"}', '2021-02-15 07:21:31', '2021-02-15 07:21:31'),
(160, 1, 'admin/teams', 'GET', '192.168.1.51', '[]', '2021-02-15 07:21:32', '2021-02-15 07:21:32'),
(161, 1, 'admin/services', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:21:34', '2021-02-15 07:21:34'),
(162, 1, 'admin/clients', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:21:36', '2021-02-15 07:21:36'),
(163, 1, 'admin/clients/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:21:38', '2021-02-15 07:21:38'),
(164, 1, 'admin/clients', 'POST', '192.168.1.51', '{\"title\":\"Client 1\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/clients\"}', '2021-02-15 07:21:54', '2021-02-15 07:21:54'),
(165, 1, 'admin/clients', 'GET', '192.168.1.51', '[]', '2021-02-15 07:21:54', '2021-02-15 07:21:54'),
(166, 1, 'admin/clients/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:21:56', '2021-02-15 07:21:56'),
(167, 1, 'admin/clients', 'POST', '192.168.1.51', '{\"title\":\"Client 2\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/clients\"}', '2021-02-15 07:22:10', '2021-02-15 07:22:10'),
(168, 1, 'admin/clients', 'GET', '192.168.1.51', '[]', '2021-02-15 07:22:10', '2021-02-15 07:22:10'),
(169, 1, 'admin/clients/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:22:14', '2021-02-15 07:22:14'),
(170, 1, 'admin/clients', 'POST', '192.168.1.51', '{\"title\":\"Client 3\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/clients\"}', '2021-02-15 07:22:40', '2021-02-15 07:22:40'),
(171, 1, 'admin/clients', 'GET', '192.168.1.51', '[]', '2021-02-15 07:22:40', '2021-02-15 07:22:40'),
(172, 1, 'admin/clients/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:22:45', '2021-02-15 07:22:45'),
(173, 1, 'admin/clients', 'POST', '192.168.1.51', '{\"title\":\"Client 4\",\"content\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/clients\"}', '2021-02-15 07:23:00', '2021-02-15 07:23:00'),
(174, 1, 'admin/clients', 'GET', '192.168.1.51', '[]', '2021-02-15 07:23:00', '2021-02-15 07:23:00'),
(175, 1, 'admin/contacts', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:23:04', '2021-02-15 07:23:04'),
(176, 1, 'admin/settings', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:23:05', '2021-02-15 07:23:05'),
(177, 1, 'admin/blogs', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:23:08', '2021-02-15 07:23:08'),
(178, 1, 'admin/blogs/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:23:10', '2021-02-15 07:23:10'),
(179, 1, 'admin/blogs', 'POST', '192.168.1.51', '{\"title\":\"Blog 1\",\"content\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/blogs\"}', '2021-02-15 07:23:37', '2021-02-15 07:23:37'),
(180, 1, 'admin/blogs', 'GET', '192.168.1.51', '[]', '2021-02-15 07:23:38', '2021-02-15 07:23:38'),
(181, 1, 'admin/blogs/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:23:40', '2021-02-15 07:23:40'),
(182, 1, 'admin/blogs', 'POST', '192.168.1.51', '{\"title\":\"Blog 2\",\"content\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/blogs\"}', '2021-02-15 07:23:55', '2021-02-15 07:23:55'),
(183, 1, 'admin/blogs', 'GET', '192.168.1.51', '[]', '2021-02-15 07:23:56', '2021-02-15 07:23:56'),
(184, 1, 'admin/blogs/create', 'GET', '192.168.1.51', '{\"_pjax\":\"#pjax-container\"}', '2021-02-15 07:23:58', '2021-02-15 07:23:58'),
(185, 1, 'admin/blogs', 'POST', '192.168.1.51', '{\"title\":\"Blog 3\",\"content\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"_token\":\"lqeRVqlnB7EtFYtC2pz950DKAQ0hvqUACr94QfNX\",\"_previous_\":\"https:\\/\\/192.168.1.51\\/dummy\\/admin\\/blogs\"}', '2021-02-15 07:24:09', '2021-02-15 07:24:09'),
(186, 1, 'admin/blogs', 'GET', '192.168.1.51', '[]', '2021-02-15 07:24:09', '2021-02-15 07:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-02-15 06:18:24', '2021-02-15 06:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$OuYZNuvxV4axp5uM3Jo1e.qd4GK1jAxAx1IWMOvmGiduQGO7BSKQ2', 'Administrator', NULL, 'HyFeuCpQlz1aG7GAIGLqlLYBBIjWLjXHcQNIpyISsXlj6ID8c8dUafgqzzhW', '2021-02-15 06:18:23', '2021-02-15 06:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Blog 1', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'images/1235.jpg', '2021-02-15 07:23:38', '2021-02-15 07:23:38'),
(2, 'Blog 2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'images/a82df062236ce618b3206e5dae80977a.jpg', '2021-02-15 07:23:55', '2021-02-15 07:23:55'),
(3, 'Blog 3', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'images/6af06f56c9d1f9d9c020ab47d4a110db.jpg', '2021-02-15 07:24:09', '2021-02-15 07:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Client 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/3fd20cd657e71b1462f6b52f58cd2da9.jpg', '2021-02-15 07:21:54', '2021-02-15 07:21:54'),
(2, 'Client 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/1b32ab4dce654d01b4af85ce62613752.jpg', '2021-02-15 07:22:10', '2021-02-15 07:22:10'),
(3, 'Client 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/e138716b32e1d609e63ec274f3a5f532.jpg', '2021-02-15 07:22:40', '2021-02-15 07:22:40'),
(4, 'Client 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/fc5a05a6c1af7780e9d165c418f44b33.jpg', '2021-02-15 07:23:00', '2021-02-15 07:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `content`, `address`, `created_at`, `updated_at`) VALUES
(1, '<h3><strong>Country</strong>&nbsp;:&nbsp;India</h3>\r\n\r\n<hr />\r\n<p><strong>Name</strong>&nbsp;: Company Name</p>\r\n\r\n<p><strong>Email</strong>&nbsp;:&nbsp;xyz@abc.com</p>\r\n\r\n<p><strong>Phone</strong>&nbsp;:&nbsp;+91-1111111111</p>', 'Sehat Soft - Developer Of Business Solutions Jawahar nagar shopping center, Rajasthan 302004', '2021-02-15 06:29:39', '2021-02-15 07:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baner1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_area_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_area_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fh1_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fh1_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fh2_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fh2_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fh3_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fh3_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `baner1`, `baner2`, `baner3`, `baner1_heading`, `baner2_heading`, `baner3_heading`, `baner1_text`, `baner2_text`, `baner3_text`, `featured_area_heading`, `featured_area_text`, `fh1_heading`, `fh1_text`, `fh2_heading`, `fh2_text`, `fh3_heading`, `fh3_text`, `app_link`, `app_image`, `created_at`, `updated_at`) VALUES
(1, 'images/312.jpg', 'images/565afc7a4be54c79028b006344587382.jpg', 'images/6d60431d16b6186593cc4ec81bd85713.jpg', 'Heading 1', 'Heading 2', 'Heading 3', 'Baner1 text', 'Baner2 text', 'Baner3 text', 'Featured area heading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Fh1 heading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Fh2 heading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Fh3 heading', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://play.google.com/store/apps/details?id=', 'images/android-1.png', '2021-02-15 06:29:29', '2021-02-15 06:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_02_12_125640_create_home_pages_table', 1),
(6, '2021_02_12_125657_create_about_pages_table', 1),
(7, '2021_02_12_125713_create_contact_pages_table', 1),
(8, '2021_02_12_125735_create_blogs_table', 1),
(9, '2021_02_12_125750_create_services_table', 1),
(10, '2021_02_12_131711_create_clients_table', 1),
(11, '2021_02_12_131748_create_teams_table', 1),
(12, '2021_02_13_072732_create_settings_table', 1),
(13, '2021_02_13_074143_create_contacts_table', 1),
(14, '2021_02_13_115102_add_conntect_settings', 1),
(15, '2021_02_13_124418_add_app_image_home_pages', 1),
(16, '2021_02_15_085757_add_colors_settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Service 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'images/cl3.jpg', '2021-02-15 07:14:03', '2021-02-15 07:14:03'),
(2, 'Service 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'images/7850de95f9b06d003293cdec87a40656.jpg', '2021-02-15 07:14:20', '2021-02-15 07:14:20'),
(3, 'Service 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'images/9d3344be424627270c8ccc78d0bb1efb.jpg', '2021-02-15 07:14:40', '2021-02-15 07:14:40'),
(4, 'Service 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'images/2afcfc7dd945b724194f6a0f8182b19e.jpg', '2021-02-15 07:15:02', '2021-02-15 07:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#ffdee7',
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#ea2ab0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `name`, `email`, `mobile`, `headimage`, `facebook`, `instagram`, `twitter`, `linkedin`, `s_color`, `p_color`, `created_at`, `updated_at`) VALUES
(1, 'images/flooop-removebg-preview.png', 'Site Name', 'xyz@abc.com', '1111111111', 'images/top-view-cup-tea-with-cakes-macarons-white-surface.jpg', '#', '#', '#', '#', '#deeeff', '#2ad2ea', '2021-02-15 06:29:18', '2021-02-15 07:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Name 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/6192fd731c6ffcb73eb53288d24b5db8.jpg', '2021-02-15 07:20:29', '2021-02-15 07:20:29'),
(2, 'Name 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/3b14d0f1971822edaee4f77eac6af1d7.jpg', '2021-02-15 07:20:45', '2021-02-15 07:20:45'),
(3, 'Name 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/9ad0d84da7c85402fd82bddbdc176702.jpg', '2021-02-15 07:21:02', '2021-02-15 07:21:02'),
(4, 'Name 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'images/e935c2f46806f8d39088cbc041b73ed0.jpg', '2021-02-15 07:21:32', '2021-02-15 07:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_pages`
--
ALTER TABLE `about_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_pages`
--
ALTER TABLE `about_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
