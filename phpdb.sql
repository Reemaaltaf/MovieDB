-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2018 at 12:41 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mahira Khan', 'Actress', '2018-04-14 19:16:32', '2018-04-14 19:16:32'),
(2, 'Sheheryar Munawar Siddiqui', 'Actor', '2018-04-14 19:17:06', '2018-04-14 19:17:06'),
(3, 'Atif Aslam', 'Singer and Actor', '2018-04-14 19:21:50', '2018-04-14 19:21:50'),
(5, 'Shaan Shahid', 'Legend', '2018-04-14 19:36:28', '2018-04-14 19:36:28'),
(6, 'Fawad Khan', 'Famous Actor', '2018-04-14 19:37:07', '2018-04-14 19:37:07'),
(7, 'Hamza Abbasi', 'Actor', '2018-04-14 19:39:35', '2018-04-14 19:39:35'),
(9, 'Fahad Mustafa', 'Actor', '2018-04-14 19:51:33', '2018-04-14 19:51:33'),
(10, 'Mehwish Hayat', 'Actress', '2018-04-14 19:52:26', '2018-04-14 19:52:26'),
(11, 'Humayun Sayeed', 'Actor', '2018-04-14 19:53:09', '2018-04-14 19:53:09'),
(12, 'Om Puri', 'Late Actor', '2018-04-15 12:25:39', '2018-04-15 12:25:39'),
(13, 'Urwa Hocane', 'Model and Actress', '2018-04-15 21:26:22', '2018-04-15 21:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `actor_movie`
--

CREATE TABLE IF NOT EXISTS `actor_movie` (
  `id` int(10) unsigned NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  `actor_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actor_movie`
--

INSERT INTO `actor_movie` (`id`, `movie_id`, `actor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 5, 6, NULL, NULL),
(10, 6, 7, NULL, NULL),
(12, 9, 9, NULL, NULL),
(13, 9, 10, NULL, NULL),
(14, 8, 11, NULL, NULL),
(15, 3, 3, NULL, NULL),
(16, 6, 6, NULL, NULL),
(17, 7, 7, NULL, NULL),
(18, 10, 9, NULL, NULL),
(19, 8, 10, NULL, NULL),
(20, 7, 11, NULL, NULL),
(21, 9, 12, NULL, NULL),
(22, 8, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Momina Duraid', 'Pakistani Drama and Film Diector', '2018-04-14 16:12:47', '2018-04-14 16:12:47'),
(2, 'Asim Raza', 'Film Director', '2018-04-14 16:13:04', '2018-04-14 16:13:04'),
(3, 'Nabeel Quershi', 'Film Director', '2018-04-14 16:13:16', '2018-04-14 16:13:16'),
(4, 'Yasir Nawaz', 'Ex Actor and Director', '2018-04-14 16:13:36', '2018-04-14 16:13:36'),
(5, 'Bilal Lashari', 'Film Director', '2018-04-14 16:14:00', '2018-04-14 16:14:00'),
(6, 'Shoaib Mansoor', 'Film Director', '2018-04-14 16:14:13', '2018-04-14 16:14:13'),
(7, 'Nadeem Beyg', 'Film Director', '2018-04-14 16:14:28', '2018-04-14 16:14:28'),
(8, 'Syed Noor', 'Film Director', '2018-04-14 16:14:40', '2018-04-14 16:14:40'),
(9, 'Hassan Raza', 'Film Director', '2018-04-14 16:14:54', '2018-04-14 16:14:54'),
(10, 'Azfar Jaffari', 'Film Director', '2018-04-14 16:15:29', '2018-04-14 16:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Drama', '2018-04-14 16:00:24', '2018-04-14 16:00:24'),
(2, 'Comedy', '2018-04-14 16:00:38', '2018-04-14 16:00:38'),
(4, 'Action', '2018-04-14 16:02:50', '2018-04-14 16:02:50'),
(5, 'Romance', '2018-04-14 16:08:18', '2018-04-14 16:08:18'),
(6, 'Crime Film', '2018-04-14 16:09:17', '2018-04-14 16:09:17'),
(7, 'Social Drama', '2018-04-14 16:11:13', '2018-04-14 16:11:13'),
(8, 'Musical', '2018-04-14 16:11:25', '2018-04-14 16:11:25'),
(9, 'Thriller', '2018-04-15 12:26:54', '2018-04-15 12:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `genre_movie`
--

CREATE TABLE IF NOT EXISTS `genre_movie` (
  `id` int(10) unsigned NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  `genre_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre_movie`
--

INSERT INTO `genre_movie` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 7, 2, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 4, NULL, NULL),
(8, 8, 5, NULL, NULL),
(9, 4, 6, NULL, NULL),
(10, 10, 4, NULL, NULL),
(12, 9, 2, NULL, NULL),
(13, 4, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_14_155918_create_admins_table', 2),
(4, '2018_04_14_160046_create_movies_table', 2),
(5, '2018_04_14_160144_create_genres_table', 2),
(6, '2018_04_14_160236_create_genres_movies_table', 2),
(7, '2018_04_14_160308_create_actors_table', 2),
(8, '2018_04_14_160354_create_directors_table', 2),
(9, '2018_04_14_160439_create_ratings_table', 2),
(10, '2018_04_14_160549_create_actor_movie_table', 2),
(11, '2018_04_14_211403_create_genre_movie_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(10) unsigned NOT NULL,
  `cover` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `desctiption` text COLLATE utf8_unicode_ci NOT NULL,
  `runtime` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `releasedate` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `director_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `cover`, `title`, `desctiption`, `runtime`, `releasedate`, `director_id`, `created_at`, `updated_at`) VALUES
(1, 'http://www.imdb.com/title/tt5200814/mediaviewer/rm3679838464', 'Ho Mann Jahaan', 'Three college friends are passionate for music and face difficulties for their common dream.', '2h 50m', '2016', 2, '2018-04-14 19:04:17', '2018-04-14 19:04:17'),
(3, 'http://www.imdb.com/title/tt1891757/mediaviewer/rm987697408', 'Bol', 'A female convict on death row, her last wish is to tell her story to the media.', '2h 45m', '2011', 6, '2018-04-14 19:19:24', '2018-04-14 19:19:24'),
(4, 'http://www.imdb.com/title/tt6800942/mediaviewer/rm4290075392', 'Verna', 'A married couple''s life falls apart as they face extraordinary circumstances.', '2h 38m', '2017', 6, '2018-04-14 19:25:04', '2018-04-14 19:25:04'),
(5, 'http://www.imdb.com/title/tt1068956/mediaviewer/rm3409744640', 'Khuda Ka Liye', 'The movie deals with the difference of opinion between the westernized, educated, modern Muslims and their counterparts who follow their religion and live life in the name of ''God''.', '2h 48m', '2007', 6, '2018-04-14 19:27:43', '2018-04-14 19:27:43'),
(6, 'http://www.imdb.com/title/tt4139928/mediaviewer/rm1086186496', 'Maula Jatt 2', 'A stylized update to the 1979 action film in which a local hero takes on a brutal gang leader.', 'not announced', 'announced', 5, '2018-04-14 19:39:10', '2018-04-14 19:39:10'),
(7, 'http://www.imdb.com/title/tt4692368/mediaviewer/rm370139392', 'Jawani Phhir Nahi Ani', 'A single divorce lawyer takes his three married friends on a vacation to escape their wives.', '2h 36m', '2015', 7, '2018-04-14 19:43:25', '2018-04-14 19:43:25'),
(8, 'http://www.imdb.com/title/tt5597198/mediaviewer/rm539172864', 'Punjab Nahi Jaungi', 'Mehtab Khagga and his family have had generation old ties of love and friendship with Bebojee and her family despite them belonging to 2 different worlds. Fawad Khagga, grandson of Mehtab Khagga, falls in love with his beloved Bebojee''s granddaughter, Amal. He vows to win Amal through the sheer strength of his love. What follows is a test of love, friendship and family and Fawad''s ultimate quest to bring Amal with him to Punjab.', '2h 39m', '2017', 7, '2018-04-14 19:45:24', '2018-04-14 19:45:24'),
(9, 'http://www.imdb.com/title/tt5333612/mediaviewer/rm508431104', 'Actor In Law', 'Estranged from his attorney father, an aspiring actor poses as a lawyer who becomes a celebrity for taking on difficult cases.', '1h 56m', '2016', 3, '2018-04-14 19:47:27', '2018-04-14 19:47:27'),
(10, 'http://www.imdb.com/title/tt3801252/mediaviewer/rm1325328128', 'Na Maloom Afraad', 'Three men unwittingly becomes prey of a ruthless don after their quick-rich schemes goes awry.', '2h 17m', '2014', 3, '2018-04-14 19:48:56', '2018-04-14 19:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `user_id` int(10) unsigned NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 're.al', 'reema.altaf@medieinstitutet.se', '$2y$10$FR37aH7lcoLmz1SZAnGM2u.5wf0Dv6hK1nkoV3N2epPJ/5wh7g7Fa', 'bIEwibpyjoMKXX1ZydiAZ1Aiu6hSuHQ0RcG5r7z0G39yRkTPXByKv6sNuhiq', '2018-04-15 19:35:06', '2018-04-15 19:35:06'),
(6, 'RA', 'reemaaltaf@gmail.com', '$2y$10$aVAidBfDm5OuIauPufhS4.0fkSIAZSaOq6pm2SMUQYrqwYFHfSuEC', NULL, '2018-04-15 22:19:54', '2018-04-15 22:19:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actor_movie`
--
ALTER TABLE `actor_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_movie_actor_id_foreign` (`actor_id`),
  ADD KEY `actor_movie_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`);

--
-- Indexes for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movies_title_unique` (`title`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`user_id`,`movie_id`);

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
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `actor_movie`
--
ALTER TABLE `actor_movie`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `genre_movie`
--
ALTER TABLE `genre_movie`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `actor_movie`
--
ALTER TABLE `actor_movie`
  ADD CONSTRAINT `actor_movie_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `actor_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
