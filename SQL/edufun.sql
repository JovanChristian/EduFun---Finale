-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 03:14 AM
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
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-22 18:59:06', '2024-11-22 18:59:06'),
(2, 'Network Security', '2024-11-22 18:59:06', '2024-11-22 18:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `writer_id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Machine Learning', 'Adipisci et voluptatem nisi quaerat dolores ducimus sunt. Quos doloribus saepe cum consequuntur laboriosam consectetur. Nemo aliquam debitis inventore sed voluptatem. Corporis cum tempore praesentium. Tenetur consequatur aut quia in nostrum autem dolor. Magni fugit voluptates ut neque. Cumque cupiditate modi beatae rerum est incidunt. Qui et non officia vel. Tempora eveniet dicta fugit repudiandae quibusdam ea.\n\nCumque quia esse voluptatem sequi minus consequatur impedit autem. Ut iusto quam libero ea libero. A sapiente corrupti facilis corporis soluta quo. Et magnam rem ab maxime sint. Accusantium est ut iure exercitationem corrupti aut autem. Minus facilis et autem non omnis veniam nostrum impedit. Ut sequi optio dolore officiis. Accusamus voluptatem modi esse aut. Earum quam ut amet est et. Quod autem doloribus enim sed ea.', 'Machine Learning.png', '2024-11-22 18:59:06', '2024-11-22 18:59:06'),
(2, 1, 2, 'Deep Learning', 'Illo tenetur eos aliquid quisquam. Vitae laborum et nihil magnam. Incidunt veritatis eos ut provident. Libero dolorem consequatur ut commodi illum quis unde. Ipsum delectus aut asperiores adipisci praesentium ut odit. Aliquam quo tempore omnis nostrum totam consectetur magni hic. Sapiente ratione doloremque iure perferendis dolorum minima. Voluptate quia minima vel et repudiandae doloribus est.\n\nNihil expedita ipsam nam architecto molestiae similique rerum delectus. Nesciunt autem ipsa repellendus alias soluta minus dolor. Est et ad perferendis. Non optio ut perferendis asperiores. Et laborum vitae et quisquam est. Ratione eveniet voluptas sapiente minus temporibus. Nobis quibusdam voluptas quia laboriosam. Expedita aut quidem ratione optio ut numquam.', 'Deep Learning.jpeg', '2024-11-22 18:59:07', '2024-11-22 18:59:07'),
(3, 1, 2, 'Natural Language Processing', 'Eius consequuntur sit optio qui est. Accusantium aut non tenetur itaque iure. Sed et sunt voluptas at voluptatem dolores alias ullam. Harum repudiandae neque dolor laudantium. Adipisci rerum alias et. Veritatis nostrum accusantium enim aut deleniti. Neque cupiditate et autem consequatur. At rem nihil eveniet illo. Expedita necessitatibus aliquid rem dignissimos recusandae ipsum dolorem. Aut autem enim facere molestias illum facilis at qui. Repudiandae qui voluptatem exercitationem ipsa ut repellendus. Fugit totam officia ut optio.\n\nAssumenda sequi consequatur omnis mollitia quae tempore voluptas. Quia excepturi adipisci aut quod accusantium. Sequi voluptas quia et. Adipisci et accusantium numquam aut quo et. Soluta ea iste exercitationem eum sit harum est mollitia. Illum similique et saepe rerum sit voluptas. Possimus qui maxime omnis et itaque. Autem recusandae praesentium at facilis ex rerum. Quaerat est sed eaque iure ut quia enim. Debitis itaque quo iste omnis. Eaque voluptates tempore voluptatibus distinctio omnis ratione maxime. Aut quia voluptas eveniet inventore dolor consequuntur. Et distinctio et ut dicta mollitia.', 'Natural Language Processing.jpg', '2024-11-22 18:59:07', '2024-11-22 18:59:07'),
(4, 2, 3, 'Software Security', 'Dolorum numquam eligendi dolores iste voluptatum labore deserunt dolor. Quia corrupti quia voluptas blanditiis error sequi omnis est. Labore ducimus omnis consectetur. Odit accusamus error est enim sapiente. Nihil sunt qui et aperiam officia harum assumenda atque. Fugit facilis exercitationem quia quia id. Fugiat excepturi quaerat et.\n\nQuasi beatae ea voluptate voluptatum accusantium consequuntur quibusdam. Animi id laudantium dolores natus adipisci quam. Exercitationem pariatur aliquid recusandae. Ratione rerum neque autem asperiores laudantium. Quia ipsa ducimus placeat voluptas et. Dolorem nostrum et rerum voluptatem ad non rem. Quidem nobis laborum laudantium qui. Incidunt delectus ea totam animi. Quia ab id consequatur repellat. Magnam eveniet tempore ut at nam incidunt voluptatum quo. Itaque autem delectus incidunt ut. Dolorum possimus asperiores aspernatur natus iusto. Assumenda cumque dolores ab explicabo veniam.', 'Software Security.jpg', '2024-11-22 18:59:07', '2024-11-22 18:59:07'),
(5, 2, 3, 'Network Administration', 'Et inventore quia velit praesentium. Cupiditate et perspiciatis ratione. Minima quia et quo vero est eligendi. Enim ut soluta ea odit. Quaerat alias magnam quae eum omnis illo. Repellendus consectetur eos quia eius dignissimos temporibus. Officiis nisi mollitia voluptates unde ab accusantium modi cupiditate. Dolorem ipsa qui dolor nam. At voluptatibus incidunt quidem. Et minima adipisci autem nihil animi.\n\nEligendi natus dolore placeat eum nihil excepturi sit. Odio aperiam assumenda nam omnis odio ut et. Molestiae commodi totam qui. Voluptatem vel exercitationem quasi corrupti culpa. Eveniet nemo quam consequuntur. Tenetur quos et voluptate. Pariatur rerum reiciendis dolores eligendi sunt nobis. Nobis voluptates veritatis harum optio harum.', 'Network Administration.jpg', '2024-11-22 18:59:07', '2024-11-22 18:59:07'),
(6, 2, 3, 'Popular Network Technology', 'Eveniet assumenda quis amet architecto quidem. Nisi distinctio nihil omnis vel numquam. Dolore odit suscipit excepturi quia molestiae officia. Maiores vero sit id est in. Nobis unde eos reprehenderit sequi et. Quibusdam maiores vel ex voluptas alias esse. Ad animi eum fugiat. Alias est quas consequatur aut.\n\nSit aut ad voluptas vel aut. Consequatur vel vel necessitatibus eos ab. Perspiciatis aliquam numquam ut minus. Officiis deserunt maiores placeat porro assumenda. Quia dicta ea ullam. Totam qui consequatur eos pariatur nostrum minus et. Fugit error et explicabo.', 'Popular Network Technology.jpg', '2024-11-22 18:59:07', '2024-11-22 18:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_15_161838_create_categories_table', 1),
(5, '2024_11_15_162028_create_writers_table', 1),
(6, '2024_11_15_162049_create_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('Z3O8w1b4n7JGFNnuMa1Sz77Nbx0CMNnmVgzP0xEE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXY3UURYWHlCNHhYNlg1eVhjVlFiMWZhUjlUMkFKdzlkNEdWSlVhUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732327909);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `profession`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', 'Spesialis Interactive Multimedia', 'Raka Putra Wicaksono.jpg', '2024-11-22 18:59:06', '2024-11-22 18:59:06'),
(2, 'Bia Mecca Annisa', 'Spesialis Data Science', 'Bia Mecca Annisa.jpg', '2024-11-22 18:59:06', '2024-11-22 18:59:06'),
(3, 'Abi Firmansyah', 'Spesialis Network Security', 'Abi Firmansyah.png', '2024-11-22 18:59:06', '2024-11-22 18:59:06');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
