-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 01:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stackover`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `accepted` tinyint(1) NOT NULL DEFAULT 0,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `content`, `score`, `accepted`, `question_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Esse ea quia et ad corrupti. Quo accusamus vitae commodi non qui libero. Delectus asperiores impedit deleniti est dolorem voluptatum. Molestiae earum ut at est rem.', 97692627, 1, 5, 7, '2021-09-21 12:22:53', '2021-09-21 12:22:53'),
(4, 'Et ex quas perspiciatis inventore accusantium tenetur. Pariatur facere magnam praesentium quas. Earum voluptatem quis quae accusantium quo aperiam. Et cumque earum qui saepe.', 71347394, 1, 2, 1, '2021-09-21 12:22:53', '2021-09-21 12:22:53'),
(5, 'Voluptatum quam quia qui incidunt et dolorum voluptatem. Odio earum exercitationem sed. Ipsa veritatis vel qui libero delectus. Impedit eius quos dignissimos molestias.', 543764927, 0, 11, 6, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(6, 'Eius alias ut enim delectus aspernatur. Id eos modi facere et aliquam occaecati. Iusto architecto voluptatem sed molestiae. Repudiandae expedita quaerat eum tenetur necessitatibus.', 248733138, 1, 5, 8, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(7, 'At ad ullam iure et repellendus quas nesciunt. Nihil rerum laboriosam repellat vitae. Et saepe esse minus enim molestiae odio debitis deserunt. Esse sit accusamus aut tempora dolore esse.', 83, 0, 6, 1, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(8, 'Aut soluta ducimus est. In odit debitis est et voluptas at. Laborum magnam ut labore sit. Libero numquam aut repellendus repellat voluptatibus atque.', 3927723, 1, 6, 2, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(9, 'Quis et molestiae et voluptatem libero quia. Non sit vitae in quia ipsa. Et voluptatem voluptatibus reprehenderit voluptates. Et reiciendis quis similique sunt sed. Ab quia aut ea dolorem vero.', 4548, 0, 3, 4, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(10, 'Quia ea placeat quis qui. Et quis quidem porro blanditiis ipsa quia magni praesentium. Corrupti perferendis dolorem quae harum totam quasi.', 46528, 0, 9, 1, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(11, 'Doloribus odio asperiores explicabo ducimus amet quia cumque adipisci. Magni sint amet non. Earum numquam doloremque illum hic laboriosam. Ullam harum fuga sunt nihil eos voluptatibus.', 3, 1, 1, 3, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(12, 'Nostrum magni omnis qui voluptas. Ut temporibus sunt quod aliquam. Vitae unde omnis ut recusandae. Dignissimos enim ipsa sunt consequatur unde. Ut ea dolorum officiis quis ipsam sequi ut quas.', 18, 0, 10, 7, '2021-09-21 12:22:54', '2021-09-21 12:22:54'),
(35, '455555', 0, 0, 15, 7, '2021-10-10 00:43:51', '2021-10-10 00:43:51'),
(53, 'hello every body', 0, 0, 16, 17, '2021-10-12 14:08:03', '2021-10-12 14:08:03'),
(54, 'hjhjhjhj', 0, 0, 18, 17, '2021-10-18 11:52:01', '2021-10-18 11:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_12_192842_create_question_table', 1),
(6, '2021_09_12_193219_create_answer_table', 1),
(7, '2021_09_12_193307_create_votes_table', 1),
(8, '2021_09_12_193344_create_tags_table', 1),
(9, '2021_09_12_193426_create_achievements_table', 1),
(10, '2021_09_12_193452_create_badges_table', 1),
(11, '2021_09_12_193509_create_comments_table', 1),
(12, '2021_09_12_193540_create_question_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `title`, `description`, `views`, `score`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'illo', 'Ut aperiam cumque fuga dolore. Blanditiis voluptatum perspiciatis quam est recusandae nulla. Eum dolor recusandae delectus et earum repellat sit nemo.', 581569063, 5557, 'doloribus', 4, '2021-09-21 12:16:29', '2021-09-21 12:16:29'),
(2, 'necessitatibus', 'Veritatis molestiae aut impedit harum nihil cupiditate accusantium. Quis hic ut omnis et consequatur et odit. Et optio dolores et non ipsum est.', 758482, 45457434, 'hic', 5, '2021-09-21 12:16:42', '2021-09-21 12:16:42'),
(3, 'ut', 'Praesentium laboriosam aut voluptatem aut voluptatem sed. Error quia sequi quod odio rerum et voluptatum. Tempora voluptas neque voluptas nam. Provident expedita dicta aperiam quos aut expedita.', 95132, 2873455, 'autem', 9, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(4, 'quisquam', 'Adipisci laboriosam sed minima sed perspiciatis qui assumenda. Ducimus et nobis est natus vero. Quis et repudiandae accusantium qui. Expedita officiis placeat sint nisi eligendi.', 210286642, 65552137, 'autem', 3, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(5, 'reiciendis', 'Cumque magnam facere quibusdam accusantium repellendus voluptate laborum. Odio quod iste accusantium provident recusandae qui. Voluptatem sit velit fugiat facilis.', 422531, 755618, 'saepe', 9, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(6, 'eum', 'Vel ut debitis tempore dolor qui ipsa. Enim illum nihil dolorem nobis velit impedit.', 7048914, 99, 'dolores', 10, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(7, 'qui', 'Labore aut est et modi praesentium et alias. Commodi veritatis sit quo provident pariatur veniam. Ipsum maiores eius et ut voluptatem sint.', 421, 7091305, 'est', 3, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(8, 'maiores', 'Nostrum enim quo maxime similique et non assumenda. Illo nam sed soluta odio ut harum. Ipsum neque totam ut quos distinctio qui ex similique.', 3993, 869, 'sed', 10, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(9, 'tenetur', 'Qui aut velit voluptas voluptatibus quaerat ullam et unde. Consequatur nihil quia modi. Hic rerum ex doloribus molestiae optio eum autem. Sed atque praesentium minus ad ut nihil.', 7800, 58, 'unde', 1, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(10, 'et', 'Sint sit id qui dolorem quis omnis. Omnis quisquam occaecati qui animi. Aspernatur consequatur laboriosam dicta saepe.', 64064, 4, 'ab', 8, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(11, 'ut', 'Voluptas adipisci molestiae qui officia. Velit dicta et facere sit voluptatibus aut in. Facilis eum hic fugiat quis qui quos.', 389, 24, 'labore', 7, '2021-09-21 12:17:26', '2021-09-21 12:17:26'),
(13, 'pariatur', 'Dolor tenetur qui consectetur necessitatibus iusto. Sit et aperiam omnis voluptatem. Et vero sapiente est ea voluptas modi. Tenetur error est qui necessitatibus aliquam.', 9, 1309942, 'quas', 4, '2021-09-21 14:12:13', '2021-09-21 14:12:13'),
(14, 'ea', 'Ut ad voluptatem dolor et eligendi. Dignissimos qui ipsum tempore voluptatem voluptate. Voluptate temporibus sit rerum dolorem similique harum aut.', 334145139, 298, 'sequi', 9, '2021-09-21 14:12:13', '2021-09-21 14:12:13'),
(15, NULL, 'hgfgfgf', 0, 0, '0', NULL, '2021-10-06 09:04:05', '2021-10-06 09:04:05'),
(16, NULL, 'what is l', 0, 0, '0', NULL, '2021-10-06 09:07:10', '2021-10-12 00:57:27'),
(18, NULL, 'jhhghghgkgjkjjhjh', 0, 0, '0', NULL, '2021-10-15 15:56:43', '2021-10-15 15:56:43'),
(19, NULL, 'What does [\\S\\s]* mean in regex in PHP?', 0, 0, '0', NULL, '2021-10-19 10:30:56', '2021-10-19 10:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `question_tags`
--

CREATE TABLE `question_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_tags`
--

INSERT INTO `question_tags` (`id`, `tag_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 5, 3, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(2, 2, 7, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(3, 9, 7, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(4, 4, 6, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(5, 8, 9, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(6, 9, 7, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(7, 4, 3, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(8, 5, 9, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(9, 5, 6, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(10, 10, 1, '2021-09-21 12:30:56', '2021-09-21 12:30:56'),
(11, 4, 15, NULL, NULL),
(12, 1, 16, NULL, NULL),
(14, 2, 16, NULL, NULL),
(15, 4, 16, NULL, NULL),
(16, 3, 18, NULL, NULL),
(17, 7, 18, NULL, NULL),
(18, 4, 18, NULL, NULL),
(19, 2, 18, NULL, NULL),
(20, 1, 19, NULL, NULL),
(21, 3, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'php', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(2, 'laravel', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(3, 'python', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(4, 'c++', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(5, 'c#', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(6, 'nodeJS', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(7, 'java', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(8, 'java script', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(9, 'react native', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(10, 'quidem', '2021-09-17 23:45:21', '2021-09-17 23:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Otto Hermann', 'mdamore@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3TpHIqd3ZW', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(2, 'Maci Purdy', 'hvonrueden@example.org', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JrFSsR7Az0', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(3, 'Demario Huel I', 'bbraun@example.org', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r3eRsziChj', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(4, 'Sid Fahey', 'tlynch@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qRrHAyvdps', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(5, 'Mr. Easton McClure', 'stokes.hermann@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lk9aq1h15K', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(6, 'Garland Dooley', 'xstokes@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nOt1HLSCzN', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(7, 'Retta Schaden', 'frobel@example.net', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '19YWSfLVX8', '2021-09-17 23:45:20', '2021-09-17 23:45:20'),
(8, 'Dr. Brain Hudson DDS', 'ierdman@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lWhi25zeef', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(9, 'Dr. Adriana Quitzon', 'orie.grady@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hXxSbtJe3E', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(10, 'Freddy Leannon', 'tillman.nora@example.com', '2021-09-17 23:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ymg4uIrHaa', '2021-09-17 23:45:21', '2021-09-17 23:45:21'),
(17, 'marwa mohamed', 'marwamohamedd_26@yahoo.com', NULL, '$2y$10$QA0l1bahnjAYgeOju/6EkOwGHQqU/szC9/qkwYCeKfbKfBPdwhRc6', NULL, '2021-10-11 14:00:45', '2021-10-11 14:00:45'),
(20, 'dareen', 'dareen@gmail.com', NULL, '$2y$10$GLVmtewksrXUOrxJmnKSduA3PBtGmWh42x2ahjDXtgHEbAGVwP6R.', NULL, '2021-10-11 15:01:22', '2021-10-11 15:01:22'),
(22, 'hadeer ahmed', 'fatma@gmail.com', NULL, '$2y$10$oSEsaeTVB0J.SIEVk16vlOJ2LhnR1Y/blaPkM0iKQob8xAFbWjTVC', NULL, '2021-10-13 19:54:16', '2021-10-13 19:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `votable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `votable_id` bigint(20) UNSIGNED NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1: down vote, 1: up vote',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_question_id_foreign` (`question_id`),
  ADD KEY `answer_user_id_foreign` (`user_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_user_id_foreign` (`user_id`);

--
-- Indexes for table `question_tags`
--
ALTER TABLE `question_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `question_tags_question_id_foreign` (`question_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_votable_type_votable_id_index` (`votable_type`,`votable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `question_tags`
--
ALTER TABLE `question_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_tags`
--
ALTER TABLE `question_tags`
  ADD CONSTRAINT `question_tags_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
