-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 07:26 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestblog`
--

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2021_09_15_122012_create_posts_table', 1),
(11, '2021_09_16_021216_add_user_id_to_posts', 2),
(12, '2021_09_16_040206_add_image_to_posts_table', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `image`) VALUES
(1, 'first post', 'blablabla', '2021-09-15 13:20:51', '2021-09-15 23:56:27', 1, ''),
(2, 'At sit.', 'Ratione placeat sapiente doloremque neque id. Sit non consectetur et autem aperiam. Unde nihil saepe et dolor repudiandae deserunt. Est tenetur at deserunt. Beatae debitis enim est modi sed deleniti. Quaerat aut fugit atque recusandae. Illum saepe ea perferendis sapiente corrupti sit. Facere minima corrupti consequuntur officiis non occaecati tempore. Eum illum ut ut id deleniti quod ullam. Porro quis perspiciatis repellendus voluptas.', '2021-09-15 13:20:51', '2021-09-15 13:20:51', 1, ''),
(3, 'Maxime.', 'Aliquam eum molestiae incidunt quasi. Consectetur in dolorum expedita aut provident sit earum. Molestiae velit voluptas molestiae assumenda rerum rerum. Aut minus sed debitis molestiae nemo. Sequi facere rerum accusantium aut. Iste sunt ut exercitationem ducimus. Doloribus officia eveniet in id dolor sequi doloremque aut. Recusandae ab hic suscipit aut voluptas ea accusamus. Veritatis molestiae nemo accusantium quod magnam facilis praesentium. Dolorem magnam sint tempora sit sequi.', '2021-09-15 13:20:51', '2021-09-15 13:20:51', 0, ''),
(4, 'In.', 'Quia et laudantium et quis unde quo magnam. Ipsa aut illo error animi totam fugiat soluta. Aut voluptas autem sed fugit enim vero quasi. Labore alias et harum debitis doloremque deserunt. Nesciunt enim occaecati hic qui optio sunt asperiores voluptatem. Aperiam laboriosam et magni molestias ipsum id perspiciatis. Libero qui adipisci dolor fuga.', '2021-09-15 13:20:51', '2021-09-15 13:20:51', 0, ''),
(5, 'Qui cumque.', 'Sed asperiores quae rerum impedit. Quas dolore aliquid odio fuga ut numquam molestias. Explicabo unde labore aut excepturi. Beatae ut et perferendis et dolorum quia. Qui eos molestiae quia. Quia placeat hic voluptates nulla quia unde vero. Consequatur quis quaerat sed et. Adipisci expedita aliquam et quae temporibus omnis. Impedit distinctio qui sit non rerum.', '2021-09-15 13:20:52', '2021-09-15 13:20:52', 0, ''),
(6, 'Magnam.', 'Perferendis repudiandae sed sit laudantium fuga nisi molestias. Natus dolore aliquid aut in eveniet fugiat tenetur in. Aut consectetur nulla repellendus voluptatem. A consectetur reprehenderit voluptate non perferendis. In blanditiis velit eos unde nesciunt rerum voluptatem. Voluptatem voluptates minima atque optio occaecati assumenda. Dolore sint aut dolor quas cupiditate et. Sed omnis placeat molestiae. Vitae mollitia nisi quibusdam a. Autem voluptates eos eveniet amet fuga velit. Non tenetur odio non. Quod laboriosam et ut ullam.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(7, 'Quae dolores.', 'Magni qui consequatur consequatur deleniti. Eligendi placeat quidem dolorem unde omnis laboriosam. Omnis esse asperiores a vel. Velit tempore cumque deleniti voluptatum enim est. Cum officiis distinctio perspiciatis enim quis soluta quasi. Voluptatem ut dolores non debitis omnis ut suscipit. Rerum qui quis voluptatum error sapiente. Inventore qui voluptates vero eum cupiditate inventore cupiditate. Nihil itaque non amet aut. Consectetur ipsa at illum soluta. Vero expedita aut corrupti suscipit enim. Beatae sed natus est eaque ea eaque rerum beatae. Voluptatem vel saepe repudiandae voluptas qui.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(8, 'Alias.', 'Fuga aut cum cum sit reiciendis et debitis. Quas dolores amet modi rerum impedit aut incidunt. Ratione ut vel qui ea omnis minus. Vero exercitationem in incidunt. Et sunt deleniti sequi minima sit ducimus. Qui tenetur quas voluptatum cumque. Quia optio laudantium quos totam. Aut fugit dolor est error quaerat repellendus.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(9, 'Aut.', 'Qui est aut quas dolor autem. Aut dolores quibusdam amet in fugiat iure. Illo inventore deserunt vero et iure aut. Qui maiores esse aut sint. Distinctio expedita officiis nisi molestiae voluptatem. Est distinctio voluptates et voluptates omnis. Dolor ut autem sequi alias quibusdam eius nostrum et. Ea ipsum aut eius odit molestiae. Rerum maiores dicta ratione dolore accusamus.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(10, 'Totam.', 'Est et numquam et doloremque dolore est illo fugiat. Quam aut esse doloribus nihil. Ex error voluptas temporibus rerum natus et animi. Dolorem aut nam natus saepe sint voluptatem beatae. Illo tenetur veritatis dolore ipsa qui. Quos commodi nesciunt incidunt et nobis. Rerum doloribus sit possimus. Officia est aspernatur ut. Voluptatem quo qui ut. Deserunt enim excepturi ut nesciunt dolor et incidunt. Optio molestiae pariatur dolore eos et.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(11, 'Dicta.', 'In asperiores repudiandae impedit rerum quis eos. Debitis optio dolores commodi. Modi ex explicabo ipsam est occaecati vero nesciunt. Maxime voluptas eum unde et sit molestiae. Voluptatem qui dolores temporibus id necessitatibus omnis. Totam explicabo et libero aut aliquam. Qui molestiae provident nemo esse amet dolores. Voluptatum quibusdam quae eligendi velit beatae. Voluptate aliquam maiores a blanditiis officia consequuntur atque. Accusamus voluptatem aut doloribus sed possimus quos alias. Voluptatem iusto labore et exercitationem accusantium impedit exercitationem. Qui delectus et doloribus sed laudantium. Voluptates minus blanditiis ut voluptatem dolor temporibus maxime.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(12, 'Porro quasi.', 'Est occaecati architecto ipsa. Nemo quidem ad et libero quaerat. Laborum delectus quam id voluptas hic qui. Et vel at praesentium suscipit numquam necessitatibus non. Excepturi et quibusdam nam aut. Et nulla exercitationem modi eos. Ex voluptatum quidem nesciunt ad et temporibus nemo.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(13, 'Commodi accusantium.', 'Est ut voluptas voluptatem ut in ut. Quis quo tempore aperiam aut. Voluptatem illo neque nisi quod. Aperiam quis et asperiores numquam. Quidem commodi enim inventore laborum quia omnis. Vel iste impedit et vitae. Ad laboriosam ratione voluptates est eos.', '2021-09-15 13:24:53', '2021-09-15 13:24:53', 0, ''),
(19, 'post aslam', 'post aslam body', '2021-09-16 01:32:57', '2021-09-16 01:32:57', 2, ''),
(20, 'post avec image', 'post avec image body', '2021-09-16 03:42:28', '2021-09-16 03:42:28', 1, 'public/coverimages/cover_image_1631767348.png'),
(22, 'new post avec image', 'image post body', '2021-09-16 03:55:52', '2021-09-16 03:55:52', 1, 'cover_image_1631768152.png'),
(23, 'new new post avec image new', 'new new body', '2021-09-16 04:14:57', '2021-09-16 04:15:46', 1, 'cover_image_1631769346.png'),
(25, 'no image post', 'bodddddddddddddddddddy', '2021-09-16 04:20:16', '2021-09-16 04:20:16', 1, 'noimage.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'oussema', 'oussema.chaari456@gmail.com', NULL, '$2y$10$umOiwYxIglfSwutnGSRxz.D7tLPlsAR0chmX4ipr8YoVvnG591yra', 'S0BoQoTuMpGkRdrNRurnQPFTZKsoeq0yxYFJ9DJ1ezDcjqGfk5Z9wIFGZWUZ', '2021-09-16 00:37:04', '2021-09-16 00:37:04'),
(2, 'aslam', 'aslam@gmail.com', NULL, '$2y$10$vFxP/Qzm2x7UFnGvqQj6GOnEjbZkB.z5g.k4a3QhWvj2fPBtQr1I.', 'AkY0Jmd4a1moG0JsM7jZPJSTOHoCRxNrolI55eX2B4A4J8Sh264gqlFdknVl', '2021-09-16 00:54:36', '2021-09-16 00:54:36'),
(3, 'newuser', 'new@gmail.com', NULL, '$2y$10$..jVEME8v2KmHy9goiNhCuH8seBm2J3L4tEgKHEG4tvhnbJORdaXW', '2fK1imm0K2pk61nJ0LBqUgKJ5Zcj0JSL6npfieJdwWrewW8nSYeFvXxiBymJ', '2021-09-16 01:06:17', '2021-09-16 01:06:17');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
