-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 11:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bidding`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `starting_price` varchar(255) NOT NULL,
  `ending_price` varchar(255) NOT NULL DEFAULT 'Not start',
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Not Approve',
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bidder_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `name`, `description`, `starting_price`, `ending_price`, `starting_date`, `ending_date`, `image`, `status`, `delivery_status`, `user_id`, `bidder_id`) VALUES
(1, 'samsung s10', 'original Vietnam version', '10000', '12000', '2024-09-16', '2024-09-17', '1726418580.jpg', 'running', 'Pending', 2, 3),
(2, 'samsung s11', 'original Vietnam version2', '11000', 'No Bid', '2024-09-17', '2024-09-17', '1726465412.jpg', 'running', 'Pending', 3, NULL),
(3, 'Hp Laptop', 'Original Product', '99999', 'Not start', '2024-09-17', '2024-09-17', '1726475829.jpg', 'Not Approve', 'Pending', 3, NULL),
(4, 'Mac book', 'Original Product', '115000', '117000', '2024-09-17', '2024-09-17', '1726476094.jpg', 'running', 'Pending', 21, 19),
(5, 'mobile10', 'Original Product', '15000', 'No Bid', '2024-09-17', '2024-09-18', '1726476187.jpg', 'running', 'Pending', 19, NULL),
(6, 'mobile11', 'Original Product', '20000', 'Not start', '2024-09-17', '2024-09-18', '1726476255.jpg', 'Not Approve', 'Pending', 9, NULL),
(7, 'Xbox Gamepad', 'Original PlayStation Product', '4500', '5000', '2024-09-17', '2024-09-18', '1726476339.jpg', 'running', 'Pending', 10, 21),
(8, 'Headphone M2', 'Experience immersive sound with our premium headphones, designed for crystal-clear audio and deep bass.', '2000', 'No Bid', '2024-09-17', '2024-09-20', '1726476587.jpg', 'running', 'Pending', 23, NULL),
(9, 'Headphone M3', 'Experience immersive sound with our premium headphones.', '4500', 'Not start', '2024-09-17', '2024-09-18', '1726476782.jpg', 'Not Approve', 'Pending', 22, NULL),
(10, 'gamepad M7', 'Original Product', '5000', 'Not start', '2024-09-18', '2024-09-19', '1726476988.webp', 'Not Approve', 'Pending', 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('ovi01@gmail.com|127.0.0.1', 'i:1;', 1726418216),
('ovi01@gmail.com|127.0.0.1:timer', 'i:1726418216;', 1726418216);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '2024_09_03_174248_create_bids_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tqik1kSxkESx33g67yupILkXGUVtvabo0r6v2cmu', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiekE1U200TTkyU2JMMHBjMVlkT3p0TDdkNDM3U3RqQUlyMUJjWEROdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MjY0Nzk3OTc7fX0=', 1726479883);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Ovi Das', 'user', 'ovidas01@gmail.com', '01621111111', NULL, '$2y$12$tOlNiXOgNhIcsR5gvCW0y.azOUYHCE2hkejUO5FX75E5uo4z8IGHe', 'fipxkPUBw4jWzBwh2MtmrBQ0AJiuPGfMk3tcVk9VAhZMzZ6KS8w6QtNh1M3t', '2024-09-15 10:33:42', '2024-09-15 10:33:42'),
(3, 'Lija Khan', 'user', 'lija01@gmail.com', '01511111111', NULL, '$2y$12$FU4wcIhy3N7A4pB9SZJUWej07V1HHn3A2zHHAFojLwP/W1lSq5IhW', NULL, '2024-09-15 10:46:08', '2024-09-15 10:46:08'),
(7, 'Md Akash', 'admin', 'admin@gmail.com', '018********', '2024-09-15 12:02:51', '$2y$12$7UGAM1z7hdpBUQMySyoDE.R/mwEHeIjXVobHutiZ6iWMEU4toNnWy', '16FHTJu1AW', '2024-09-15 12:02:52', '2024-09-15 12:02:52'),
(8, 'Ovi Das', 'admin', 'admin1@gmail.com', '016********', '2024-09-15 12:02:52', '$2y$12$SZSePPLVKMMQ96TLaIB4oOFvWKzBxPWKIv6OpayVy59LKFH8PtIAe', 'TrH8Eq7FkTvb54Weguy4mX4te5n4RIl0xOfJdmj14lLbU9fniYnE6A6D7Q6c', '2024-09-15 12:02:52', '2024-09-15 12:02:52'),
(9, 'sajia', 'user', 'sajia01@gmail.com', '01621111112', NULL, '$2y$12$MdoscnEmi1F1AxYXog61huzGWDUegGevfKHzh48NnpwlOFuISbeWS', NULL, '2024-09-15 13:31:35', '2024-09-15 13:31:35'),
(10, 'refatul Islam', 'user', 'refatul01@gmail.com', '01511111113', NULL, '$2y$12$7Og2FDF8Du45UyezNQpHpOcJTQpYB5tTBt1OAGN5DN8Hkvbadn5uu', NULL, '2024-09-16 01:48:42', '2024-09-16 01:48:42'),
(11, 'Anik Sen', 'user', 'anik01@gmail.com', '01511111114', NULL, '$2y$12$zmn9SUG0lmuhLjBVwq8vauVx6n4B2jNWNTD34WBMcdJttNsl2G/em', NULL, '2024-09-16 01:49:56', '2024-09-16 01:49:56'),
(12, 'Robi Das', 'user', 'robi01@gmail.com', '01511111115', NULL, '$2y$12$QigQqueA4Ua801VdyaErAuEN1cYvmvD7wCzQ7ZM8YgREVsKe5/qIC', NULL, '2024-09-16 01:50:57', '2024-09-16 01:50:57'),
(14, 'Rina Roy', 'user', 'rina01@gmail.com', '01511111116', NULL, '$2y$12$C6u2BEfVSmKaXvskRBLGNOOsxoPOqwry.7s5jvToylAQZ.LoA8rGO', NULL, '2024-09-16 01:52:32', '2024-09-16 01:52:32'),
(15, 'Rahul Khan', 'user', 'rahul01@gmail.com', '01511111117', NULL, '$2y$12$CjEcNANMdeYYazu4lJ2G/ehBDKi1m4hb/R1dj9qHFs.tP0d7TqMyy', NULL, '2024-09-16 01:53:25', '2024-09-16 01:53:25'),
(16, 'Munna Khan', 'user', 'munna01@gmail.com', '01511111118', NULL, '$2y$12$BrZvlaIbdDhGnVgo7R8JxeIC6KzkhnKZteM4nHikeDwtv6sfsCyku', NULL, '2024-09-16 01:54:12', '2024-09-16 01:54:12'),
(17, 'Munni Khatun', 'user', 'munni01@gmail.com', '01511111119', NULL, '$2y$12$wAabirccFTMPXRS0qe0RRuvZg54RbCpQt5NrrXZLtt7rZFy8KJZ1W', NULL, '2024-09-16 01:55:14', '2024-09-16 01:55:14'),
(18, 'Samiha Sami', 'user', 'samiha01@gmail.com', '01511111110', NULL, '$2y$12$jZfkT5Ki7nwAJhNh2g9tB.T7pAqWr3PijekXKtZ3ZXLvI95thuDCi', NULL, '2024-09-16 01:56:09', '2024-09-16 01:56:09'),
(19, 'Anikesh Nath', 'user', 'anikesh01@gmail.com', '01511111121', NULL, '$2y$12$Yg7nA4rPmsMm.CmQYJdM/uqT9gZky/kNBOA2Q0yPhPp6EmjNVp2ea', NULL, '2024-09-16 01:57:12', '2024-09-16 01:57:12'),
(20, 'Sobuj Solaiman', 'user', 'sobuj01@gmail.com', '01511111122', NULL, '$2y$12$nO2h347TsOdMNzKYj1RI1Ov/BBAIJp850oQOJ4JADEn162DFYIE6.', NULL, '2024-09-16 01:58:34', '2024-09-16 01:58:34'),
(21, 'Pratim Das', 'user', 'pratim01@gmail.com', '01511111123', NULL, '$2y$12$rh7Y36XrCHonLpONv8jREurTyRjKTI4sgjUPkbdDrmIbOZaAfnDXK', 'BSSstBb20TETbKX2Mz6nVIutXwDFiUdl9Y8AKAy8w3lY1p0fGq0FnBAsjDIq', '2024-09-16 01:59:18', '2024-09-16 01:59:18'),
(22, 'Saidul Islam Shuvo', 'user', 'shuvo01@gmail.com', '01511111124', NULL, '$2y$12$1464bwgxWDmecpRYpDravufoFdRpeGkdwudXc4otVhiXZHhEt82RO', 'Vv73fXdmEh1ykcMaWCMyWCk9H8injX3XQzct399c9Em0lXuQAT1d3Gf87Wlt', '2024-09-16 02:00:11', '2024-09-16 02:00:11'),
(23, 'Jahed Hossain Tajek', 'user', 'jahed01@gmail.com', '01511111225', NULL, '$2y$12$GPSDoqcrWDh76u19DSk1CugFMzdNppatVCIZoGifc71KxR/LmOz4S', 'y5JVP16w2BIhdwEREi75HwoEUZl2ZS3WaWOydIsl5Of0u5YQALBOovszhWKf', '2024-09-16 02:00:54', '2024-09-16 02:00:54'),
(24, 'Rajesh Chowdhury', 'user', 'rajesh01@gmail.com', '01511111126', NULL, '$2y$12$yz5ulCw5d.PbTWBqLApoMOtt9t3g05.i47SD.gN4TCxc2RS9wQ3Tm', NULL, '2024-09-16 02:01:55', '2024-09-16 02:01:55'),
(25, 'Dipesh Das', 'user', 'dipesh01@gmail.com', '01511111127', NULL, '$2y$12$MaDbZAmrlQGUoTQaCucAh.1P4MX/kDX2PefcLdnk1.TDG6xqmuIky', NULL, '2024-09-16 02:02:44', '2024-09-16 02:02:44'),
(26, 'Abdul Awall', 'user', 'awall01@gmail.com', '01511111220', NULL, '$2y$12$TIwKns4gnJafLu5h1yKxBOe9sLeMBbHjRxC4woj4jiDcEckV5.aYC', 'X77jAl1R1EcbUqnAlGxikWIUskl0CecSZZcKrWIakB1ZZcD6Qt4qcmvAy1j2', '2024-09-16 02:54:00', '2024-09-16 02:54:29'),
(27, 'Sajia Rahman', 'user', 'sajia001@gmail.com', '01511111221', NULL, '$2y$12$h8TYVPRNaI1SJ9xGR26G5.Cza0FJ4y6pwu8VgajqsATqgpgm/DDo.', NULL, '2024-09-16 03:11:08', '2024-09-16 03:11:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_user_id_foreign` (`user_id`),
  ADD KEY `bids_bidder_id_foreign` (`bidder_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_bidder_id_foreign` FOREIGN KEY (`bidder_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
