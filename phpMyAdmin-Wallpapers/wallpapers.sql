-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2020 lúc 08:42 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wallpapers`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2020_06_06_082639_create_wallpapers_table', 1),
(17, '2020_06_09_104236_create_types_table', 1),
(18, '2020_06_09_142523_create_types_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(225) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `type`, `img_name`, `img_url`, `created_at`, `updated_at`) VALUES
(1, 'Anime', 'Kimi_no_Na_wa-36b5ee7b-41ce-3aa7-963c-3d16b794d62c.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Kimi_no_Na_wa-36b5ee7b-41ce-3aa7-963c-3d16b794d62c.jpg', '2020-06-22 13:32:51', '2020-06-22 13:32:51'),
(2, 'Animal', 'Abstract_Leopard-0e0276b4-7a22-31e7-a16e-57d2393624ac[1].jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Abstract_Leopard-0e0276b4-7a22-31e7-a16e-57d2393624ac[1].jpg', '2020-06-22 13:55:26', '2020-06-22 13:55:26'),
(3, 'Technology', 'chip_circuit-66106693-aee1-439e-8c6f-6c17ea98fb67.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/chip_circuit-66106693-aee1-439e-8c6f-6c17ea98fb67.jpg', '2020-06-22 14:08:36', '2020-06-22 14:08:36'),
(4, 'Beach', 'Beach-bc5abebc-18d4-4ec2-b336-b03d0c9fe2c6.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-bc5abebc-18d4-4ec2-b336-b03d0c9fe2c6.jpg', '2020-06-23 01:35:06', '2020-06-23 01:35:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wallpapers`
--

CREATE TABLE `wallpapers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wallpapers`
--

INSERT INTO `wallpapers` (`id`, `img_name`, `img_url`, `type_id`, `img_type`, `created_at`, `updated_at`) VALUES
(1, 'Anime_boy-6bb01a43-6c0d-4c45-bba2-7c3c000ddfcc.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Anime_boy-6bb01a43-6c0d-4c45-bba2-7c3c000ddfcc.jpg', 1, 'Anime', '2020-06-22 13:33:43', '2020-06-22 13:33:43'),
(2, 'Anime_Boy-8442f2ee-da8f-4aec-8f43-911cbca25669.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Anime_Boy-8442f2ee-da8f-4aec-8f43-911cbca25669.jpg', 1, 'Anime', '2020-06-22 13:34:01', '2020-06-22 13:34:01'),
(3, 'Anime_Hot_Guy-0e5ef0ac-deed-43a6-8677-6efc4fb8270e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Anime_Hot_Guy-0e5ef0ac-deed-43a6-8677-6efc4fb8270e.jpg', 1, 'Anime', '2020-06-22 13:37:40', '2020-06-22 13:37:40'),
(4, 'black_panther-03d380af-0dcc-4233-a541-4e6c3592ca1e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/black_panther-03d380af-0dcc-4233-a541-4e6c3592ca1e.jpg', 1, 'Anime', '2020-06-22 13:37:47', '2020-06-22 13:37:47'),
(5, 'BTS_Rap_Monster-aef58eae-d8ff-4bc5-bbde-ccafb1579029.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/BTS_Rap_Monster-aef58eae-d8ff-4bc5-bbde-ccafb1579029.jpg', 1, 'Anime', '2020-06-22 13:37:56', '2020-06-22 13:37:56'),
(6, 'Dragon_ball_super-2a89a1a6-e6f4-4fe0-8a12-f537883dc644.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Dragon_ball_super-2a89a1a6-e6f4-4fe0-8a12-f537883dc644.jpg', 1, 'Anime', '2020-06-22 13:38:10', '2020-06-22 13:38:10'),
(7, 'Dragon_ball_super-42315c96-9552-47e6-a561-220f5707e4eb.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Dragon_ball_super-42315c96-9552-47e6-a561-220f5707e4eb.jpg', 1, 'Anime', '2020-06-22 13:38:24', '2020-06-22 13:38:24'),
(8, 'Girl-074564e7-7884-4eb9-b6cd-c2b5a3c723bc.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Girl-074564e7-7884-4eb9-b6cd-c2b5a3c723bc.jpg', 1, 'Anime', '2020-06-22 13:38:31', '2020-06-22 13:38:31'),
(9, 'Goku_genkidama-289b20af-49c8-44e1-8c79-a37c549c61a2.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Goku_genkidama-289b20af-49c8-44e1-8c79-a37c549c61a2.jpg', 1, 'Anime', '2020-06-22 13:38:46', '2020-06-22 13:38:46'),
(10, 'Jackson_Wang_Supreme-b3355104-07bc-4a9f-bb27-2819bf24bccf.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Jackson_Wang_Supreme-b3355104-07bc-4a9f-bb27-2819bf24bccf.jpg', 1, 'Anime', '2020-06-22 13:38:51', '2020-06-22 13:38:51'),
(11, 'Joker__-89317d54-0072-411c-8d23-2eb05c3031db.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Joker__-89317d54-0072-411c-8d23-2eb05c3031db.jpg', 1, 'Anime', '2020-06-22 13:39:03', '2020-06-22 13:39:03'),
(12, 'Joker_2019-0dc800ef-d6ed-49a4-b85e-64fe07be2a41.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Joker_2019-0dc800ef-d6ed-49a4-b85e-64fe07be2a41.jpg', 1, 'Anime', '2020-06-22 13:39:14', '2020-06-22 13:39:14'),
(13, 'Joker_-fba2d8bf-7712-4834-bc60-384661235912.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Joker_-fba2d8bf-7712-4834-bc60-384661235912.jpg', 1, 'Anime', '2020-06-22 13:39:29', '2020-06-22 13:39:29'),
(14, 'Joker_Painting-43be62e8-82ac-4a99-81a4-14215fc0c6a8.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Joker_Painting-43be62e8-82ac-4a99-81a4-14215fc0c6a8.jpg', 1, 'Anime', '2020-06-22 13:39:38', '2020-06-22 13:39:38'),
(15, 'Joker-dc8c964a-4436-4718-9fa5-547094a14065.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Joker-dc8c964a-4436-4718-9fa5-547094a14065.jpg', 1, 'Anime', '2020-06-22 13:40:26', '2020-06-22 13:40:26'),
(16, 'Kid_Goku_Cloud-e23bf632-9655-44d5-afd3-7b0db2c5b3f3.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Kid_Goku_Cloud-e23bf632-9655-44d5-afd3-7b0db2c5b3f3.jpg', 1, 'Anime', '2020-06-22 13:40:35', '2020-06-22 13:40:35'),
(17, 'Lost_in_music-a1069ec3-3384-452f-92ef-293365e70ea1.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Lost_in_music-a1069ec3-3384-452f-92ef-293365e70ea1.jpg', 1, 'Anime', '2020-06-22 13:40:43', '2020-06-22 13:40:43'),
(18, 'Luffy_One_Piece-0bc13625-20b0-3d2b-980b-1bc09f6b3b2e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Luffy_One_Piece-0bc13625-20b0-3d2b-980b-1bc09f6b3b2e.jpg', 1, 'Anime', '2020-06-22 13:40:50', '2020-06-22 13:40:50'),
(19, 'Luffy_Pics_fazenda-ca818be7-0c9e-47f7-b942-cd66ad78c32f.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Luffy_Pics_fazenda-ca818be7-0c9e-47f7-b942-cd66ad78c32f.jpg', 1, 'Anime', '2020-06-22 13:40:57', '2020-06-22 13:40:57'),
(20, 'Luffy-e3e5b9f5-ab73-4373-bbc7-fcb39831ee83.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Luffy-e3e5b9f5-ab73-4373-bbc7-fcb39831ee83.jpg', 1, 'Anime', '2020-06-22 13:41:05', '2020-06-22 13:41:05'),
(21, 'NARUTO-5d0701ad-a416-4fa3-ad79-6b8c0ce12728.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/NARUTO-5d0701ad-a416-4fa3-ad79-6b8c0ce12728.jpg', 1, 'Anime', '2020-06-22 13:41:16', '2020-06-22 13:41:16'),
(22, 'Naruto-6f5ffbb8-ded1-4915-b470-4a9bf94c647e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Naruto-6f5ffbb8-ded1-4915-b470-4a9bf94c647e.jpg', 1, 'Anime', '2020-06-22 13:41:39', '2020-06-22 13:41:39'),
(23, 'Naruto-a8d4ed43-6fec-4d53-aca5-e82d11a13452.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Naruto-a8d4ed43-6fec-4d53-aca5-e82d11a13452.jpg', 1, 'Anime', '2020-06-22 13:45:01', '2020-06-22 13:45:01'),
(24, 'Romance_-d9e6133d-3bea-4614-8bd4-12940d034957.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Romance_-d9e6133d-3bea-4614-8bd4-12940d034957.jpg', 1, 'Anime', '2020-06-22 13:45:09', '2020-06-22 13:45:09'),
(25, 'sasuke_-34717fe6-dd34-4b2b-bd5d-cb8978c26f78.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/sasuke_-34717fe6-dd34-4b2b-bd5d-cb8978c26f78.jpg', 1, 'Anime', '2020-06-22 13:45:19', '2020-06-22 13:45:19'),
(26, 'Sasuke_TECH-46e75616-90f8-4ebf-b363-99008d0fd4bc.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Sasuke_TECH-46e75616-90f8-4ebf-b363-99008d0fd4bc.jpg', 1, 'Anime', '2020-06-22 13:46:01', '2020-06-22 13:46:01'),
(27, 'Spiderman_Miles_M-745f97c9-62fe-4d52-a2fb-6890e86ad49c.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Spiderman_Miles_M-745f97c9-62fe-4d52-a2fb-6890e86ad49c.jpg', 1, 'Anime', '2020-06-22 13:46:10', '2020-06-22 13:46:10'),
(28, 'Spiderman-32c37516-3c95-4b23-b76e-04369b8e5e8d.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Spiderman-32c37516-3c95-4b23-b76e-04369b8e5e8d.jpg', 1, 'Anime', '2020-06-22 13:46:17', '2020-06-22 13:46:17'),
(29, 'spiderman-56afbd30-132e-47c8-b899-dd0f47c6c418.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/spiderman-56afbd30-132e-47c8-b899-dd0f47c6c418.jpg', 1, 'Anime', '2020-06-22 13:46:22', '2020-06-22 13:46:22'),
(30, 'Supereme_Great-3458683b-ec62-4271-94be-19840de3ea8e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Supereme_Great-3458683b-ec62-4271-94be-19840de3ea8e.jpg', 1, 'Anime', '2020-06-22 13:46:29', '2020-06-22 13:46:29'),
(31, 'Your_Name-890d6e17-debd-36f4-805e-ba87f7fa6f34.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Your_Name-890d6e17-debd-36f4-805e-ba87f7fa6f34.jpg', 1, 'Anime', '2020-06-22 13:46:37', '2020-06-22 13:46:37'),
(32, 'Your_Name-e1935c56-b286-4597-8670-6ece7a502fa9.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Your_Name-e1935c56-b286-4597-8670-6ece7a502fa9.jpg', 1, 'Anime', '2020-06-22 13:46:42', '2020-06-22 13:46:42'),
(33, 'Your_Names-a8cc69ec-0a66-4dba-9db0-4a0981a91d85.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Your_Names-a8cc69ec-0a66-4dba-9db0-4a0981a91d85.jpg', 1, 'Anime', '2020-06-22 13:46:49', '2020-06-22 13:46:49'),
(34, 'Abstract_Leopard-0e0276b4-7a22-31e7-a16e-57d2393624ac[1].jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Abstract_Leopard-0e0276b4-7a22-31e7-a16e-57d2393624ac[1].jpg', 2, 'Animal', '2020-06-22 13:59:12', '2020-06-22 13:59:12'),
(35, 'Art-41428944-ae1c-469e-8d5a-2788091bf643.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Art-41428944-ae1c-469e-8d5a-2788091bf643.jpg', 2, 'Animal', '2020-06-22 13:59:55', '2020-06-22 13:59:55'),
(36, 'Bald_Eagle-8e8599fa-2b57-3192-b332-1e18f8823d77.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Bald_Eagle-8e8599fa-2b57-3192-b332-1e18f8823d77.jpg', 2, 'Animal', '2020-06-22 14:00:03', '2020-06-22 14:00:03'),
(37, 'Bunny-0a728312-6e26-3f33-8ba5-fe10c65a641e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Bunny-0a728312-6e26-3f33-8ba5-fe10c65a641e.jpg', 2, 'Animal', '2020-06-22 14:00:13', '2020-06-22 14:00:13'),
(38, 'Bunny-7e964686-731e-3a1f-8619-f191b05adaf3.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Bunny-7e964686-731e-3a1f-8619-f191b05adaf3.jpg', 2, 'Animal', '2020-06-22 14:00:20', '2020-06-22 14:00:20'),
(39, 'Cartoon-8a46f853-d72b-4b53-83fd-a94d77d53abc.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cartoon-8a46f853-d72b-4b53-83fd-a94d77d53abc.jpg', 2, 'Animal', '2020-06-22 14:00:28', '2020-06-22 14:00:28'),
(40, 'Cartoons_wallpaper-8eb47f28-232b-4806-9537-23b4bc0e0238.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cartoons_wallpaper-8eb47f28-232b-4806-9537-23b4bc0e0238.jpg', 2, 'Animal', '2020-06-22 14:00:36', '2020-06-22 14:00:36'),
(41, 'Cat-53ff65e6-a709-4869-9dfc-475a99940197.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cat-53ff65e6-a709-4869-9dfc-475a99940197.jpg', 2, 'Animal', '2020-06-22 14:00:45', '2020-06-22 14:00:45'),
(42, 'Cat-53ff65e6-a709-4869-9dfc-475a99940197.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cat-53ff65e6-a709-4869-9dfc-475a99940197.jpg', 2, 'Animal', '2020-06-22 14:00:53', '2020-06-22 14:00:53'),
(43, 'cat-892e0e26-aeb8-44cb-9a40-39abe25da5d8.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/cat-892e0e26-aeb8-44cb-9a40-39abe25da5d8.jpg', 2, 'Animal', '2020-06-22 14:01:00', '2020-06-22 14:01:00'),
(44, 'Cat-ffc9141d-54d6-4e52-9a2c-f5db02291114.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cat-ffc9141d-54d6-4e52-9a2c-f5db02291114.jpg', 2, 'Animal', '2020-06-22 14:01:08', '2020-06-22 14:01:08'),
(45, 'Cocker_Puppy-3ea034c0-e5dd-408e-ab29-afcb14db3662.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cocker_Puppy-3ea034c0-e5dd-408e-ab29-afcb14db3662.jpg', 2, 'Animal', '2020-06-22 14:01:19', '2020-06-22 14:01:19'),
(46, 'color_reflection-4a30d3cb-02d4-47b5-9f13-dc5b46275495.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/color_reflection-4a30d3cb-02d4-47b5-9f13-dc5b46275495.jpg', 2, 'Animal', '2020-06-22 14:01:33', '2020-06-22 14:01:33'),
(47, 'Cool-734452f5-675c-4c02-8197-e2a2e64c8884.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cool-734452f5-675c-4c02-8197-e2a2e64c8884.jpg', 2, 'Animal', '2020-06-22 14:01:42', '2020-06-22 14:01:42'),
(48, 'Cute_Dog-bea72d30-74d7-4faa-ae7f-78cf3238cbdd.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cute_Dog-bea72d30-74d7-4faa-ae7f-78cf3238cbdd.jpg', 2, 'Animal', '2020-06-22 14:02:06', '2020-06-22 14:02:06'),
(49, 'Cute_Puppy-4f4ad167-f1d6-4cbc-a4c2-169c8cd10dba.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cute_Puppy-4f4ad167-f1d6-4cbc-a4c2-169c8cd10dba.jpg', 2, 'Animal', '2020-06-22 14:02:12', '2020-06-22 14:02:12'),
(50, 'Judy_Zootopia-94ba6c92-bc3a-43c9-8484-cc81e6c54151.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Judy_Zootopia-94ba6c92-bc3a-43c9-8484-cc81e6c54151.jpg', 2, 'Animal', '2020-06-22 14:02:22', '2020-06-22 14:02:22'),
(51, 'Kitten-1f7fc724-9ceb-302b-9e3f-279ffc1dd61c.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Kitten-1f7fc724-9ceb-302b-9e3f-279ffc1dd61c.jpg', 2, 'Animal', '2020-06-22 14:02:29', '2020-06-22 14:02:29'),
(52, 'Labradoor-1a81a3e3-b886-4238-b769-f4ad55041f14.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Labradoor-1a81a3e3-b886-4238-b769-f4ad55041f14.jpg', 2, 'Animal', '2020-06-22 14:02:37', '2020-06-22 14:02:37'),
(53, 'Lion_Yellow-3ec62b93-64f2-46d4-8ed6-af0bf8dce95c.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Lion_Yellow-3ec62b93-64f2-46d4-8ed6-af0bf8dce95c.jpg', 2, 'Animal', '2020-06-22 14:02:45', '2020-06-22 14:02:45'),
(54, 'Lion-52d59c6a-b2fd-4301-9bc8-fc6bd395f706.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Lion-52d59c6a-b2fd-4301-9bc8-fc6bd395f706.jpg', 2, 'Animal', '2020-06-22 14:02:51', '2020-06-22 14:02:51'),
(55, 'Lion-608d37e3-dc63-4aff-88ae-2dc3e30bb41c.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Lion-608d37e3-dc63-4aff-88ae-2dc3e30bb41c.jpg', 2, 'Animal', '2020-06-22 14:02:59', '2020-06-22 14:02:59'),
(56, 'lion-c3d6bf00-245a-4c72-8489-5a73bebf559e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/lion-c3d6bf00-245a-4c72-8489-5a73bebf559e.jpg', 2, 'Animal', '2020-06-22 14:03:08', '2020-06-22 14:03:08'),
(57, 'Lovely_cat-645005b3-49c2-4f0f-bec7-685b093f4784.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Lovely_cat-645005b3-49c2-4f0f-bec7-685b093f4784.jpg', 2, 'Animal', '2020-06-22 14:03:28', '2020-06-22 14:03:28'),
(58, 'owl-bc3ecb1a-6ad0-4a93-b4ef-993aa3f35d10.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/owl-bc3ecb1a-6ad0-4a93-b4ef-993aa3f35d10.jpg', 2, 'Animal', '2020-06-22 14:03:37', '2020-06-22 14:03:37'),
(59, 'The_Lion_King-2cc5e564-3303-45db-8f82-fd2338ece7ac.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/The_Lion_King-2cc5e564-3303-45db-8f82-fd2338ece7ac.jpg', 2, 'Animal', '2020-06-22 14:03:42', '2020-06-22 14:03:42'),
(60, 'Tiger-8e7ae03d-640c-42b3-8ac1-6513e5d3ef33.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Tiger-8e7ae03d-640c-42b3-8ac1-6513e5d3ef33.jpg', 2, 'Animal', '2020-06-22 14:03:50', '2020-06-22 14:03:50'),
(61, 'White_Tiger-f02a301d-4235-40e4-9f2c-ea702b120b3b.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/White_Tiger-f02a301d-4235-40e4-9f2c-ea702b120b3b.jpg', 2, 'Animal', '2020-06-22 14:03:57', '2020-06-22 14:03:57'),
(62, 'White_tigers-0660c948-84a7-4731-bd25-d81a14543359.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/White_tigers-0660c948-84a7-4731-bd25-d81a14543359.jpg', 2, 'Animal', '2020-06-22 14:04:03', '2020-06-22 14:04:03'),
(63, 'Zlatni_Ritriver-09ba0b66-4d0e-386e-b51b-e598c742975f.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Zlatni_Ritriver-09ba0b66-4d0e-386e-b51b-e598c742975f.jpg', 2, 'Animal', '2020-06-22 14:04:11', '2020-06-22 14:04:11'),
(64, '8K_Hacker-852ae50a-77d7-4693-b938-17899208d8a7.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/8K_Hacker-852ae50a-77d7-4693-b938-17899208d8a7.jpg', 3, 'Technology', '2020-06-22 14:10:45', '2020-06-22 14:10:45'),
(65, 'Astronaut_in_space-52c0562b-e2e6-451e-bfc3-ca53b9659ed6.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Astronaut_in_space-52c0562b-e2e6-451e-bfc3-ca53b9659ed6.jpg', 3, 'Technology', '2020-06-22 14:10:53', '2020-06-22 14:10:53'),
(66, 'astronaut_orange-dd8d041c-3962-3a78-b41d-edbc6b3467ce.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/astronaut_orange-dd8d041c-3962-3a78-b41d-edbc6b3467ce.jpg', 3, 'Technology', '2020-06-22 14:11:01', '2020-06-22 14:11:01'),
(67, 'Astronauta-5f57787f-aef6-4c07-9aed-b0cfa1f1357c.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Astronauta-5f57787f-aef6-4c07-9aed-b0cfa1f1357c.jpg', 3, 'Technology', '2020-06-22 14:11:09', '2020-06-22 14:11:09'),
(68, 'ASUS_ROG_PHONE-c7e51b9e-f28e-4ff2-a82b-90973cb1f121.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/ASUS_ROG_PHONE-c7e51b9e-f28e-4ff2-a82b-90973cb1f121.jpg', 3, 'Technology', '2020-06-22 14:11:14', '2020-06-22 14:11:14'),
(69, 'Black_Shark_2_Pro-e710fcb0-7f99-42f6-808b-4bab8afaea16.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Black_Shark_2_Pro-e710fcb0-7f99-42f6-808b-4bab8afaea16.jpg', 3, 'Technology', '2020-06-22 14:11:24', '2020-06-22 14:11:24'),
(70, 'Black_Shark_2-d63ea10c-8ba9-4bb0-b9e4-9efdd65bfda2.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Black_Shark_2-d63ea10c-8ba9-4bb0-b9e4-9efdd65bfda2.jpg', 3, 'Technology', '2020-06-22 14:11:33', '2020-06-22 14:11:33'),
(71, 'chip_circuit-66106693-aee1-439e-8c6f-6c17ea98fb67.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/chip_circuit-66106693-aee1-439e-8c6f-6c17ea98fb67.jpg', 3, 'Technology', '2020-06-22 14:11:45', '2020-06-22 14:11:45'),
(72, 'chip-ea38c9aa-401c-4efd-9338-3badae986962.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/chip-ea38c9aa-401c-4efd-9338-3badae986962.jpg', 3, 'Technology', '2020-06-22 14:12:09', '2020-06-22 14:12:09'),
(73, 'Ciudad_Tokio-5467c8c4-916a-4222-b519-9c935ea7cf22.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Ciudad_Tokio-5467c8c4-916a-4222-b519-9c935ea7cf22.jpg', 3, 'Technology', '2020-06-22 14:12:17', '2020-06-22 14:12:17'),
(74, 'Cosmonaut-2bf39c94-891f-3acc-a29c-6420f105ab3e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Cosmonaut-2bf39c94-891f-3acc-a29c-6420f105ab3e.jpg', 3, 'Technology', '2020-06-22 14:12:26', '2020-06-22 14:12:26'),
(75, 'Dark_Blue_HUD-d9e3f51e-b2b9-49d5-a2ab-9c18fb5aaea8.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Dark_Blue_HUD-d9e3f51e-b2b9-49d5-a2ab-9c18fb5aaea8.jpg', 3, 'Technology', '2020-06-22 14:13:32', '2020-06-22 14:13:32'),
(76, 'Falling_Matrix-b33749e3-aa0e-420a-a9f1-105c11a897e9.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Falling_Matrix-b33749e3-aa0e-420a-a9f1-105c11a897e9.jpg', 3, 'Technology', '2020-06-22 14:13:39', '2020-06-22 14:13:39'),
(77, 'Finger_print-e242d305-0056-4075-a2d4-0a08f49bac44.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Finger_print-e242d305-0056-4075-a2d4-0a08f49bac44.jpg', 3, 'Technology', '2020-06-22 14:13:44', '2020-06-22 14:13:44'),
(78, 'freedom_-e5a580c9-ae7a-4cf2-8e76-d1df346b3e1d.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/freedom_-e5a580c9-ae7a-4cf2-8e76-d1df346b3e1d.jpg', 3, 'Technology', '2020-06-22 14:13:51', '2020-06-22 14:13:51'),
(79, 'freedom_-e5a580c9-ae7a-4cf2-8e76-d1df346b3e1d.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/freedom_-e5a580c9-ae7a-4cf2-8e76-d1df346b3e1d.jpg', 3, 'Technology', '2020-06-22 14:13:58', '2020-06-22 14:13:58'),
(80, 'Girl-6626f64e-1483-4d51-88c7-30d228541f4b.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Girl-6626f64e-1483-4d51-88c7-30d228541f4b.jpg', 3, 'Technology', '2020-06-22 14:14:04', '2020-06-22 14:14:04'),
(81, 'Hacker-1e7df014-4c64-48f0-99df-6e284dcef656.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Hacker-1e7df014-4c64-48f0-99df-6e284dcef656.jpg', 3, 'Technology', '2020-06-22 14:14:12', '2020-06-22 14:14:12'),
(82, 'Lampadina__-6a856989-2238-4dbf-83b1-fb2e33d61318.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Lampadina__-6a856989-2238-4dbf-83b1-fb2e33d61318.jpg', 3, 'Technology', '2020-06-22 14:14:20', '2020-06-22 14:14:20'),
(83, 'Math-8107c6ee-a555-383d-83ce-05dbb0df6484.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Math-8107c6ee-a555-383d-83ce-05dbb0df6484.jpg', 3, 'Technology', '2020-06-22 14:14:28', '2020-06-22 14:14:28'),
(84, 'Matrix-b42ca6f5-4310-4c3a-8afc-74e7e1461186.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Matrix-b42ca6f5-4310-4c3a-8afc-74e7e1461186.jpg', 3, 'Technology', '2020-06-22 14:14:39', '2020-06-22 14:14:39'),
(85, 'Mfy-d6aaccda-45a0-4465-94cd-0bf424fe6a17.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Mfy-d6aaccda-45a0-4465-94cd-0bf424fe6a17.jpg', 3, 'Technology', '2020-06-22 14:15:07', '2020-06-22 14:15:07'),
(86, 'Motivation-1a67f9e6-64bf-45f5-b6b5-3adb51fef07d.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Motivation-1a67f9e6-64bf-45f5-b6b5-3adb51fef07d.jpg', 3, 'Technology', '2020-06-22 14:15:14', '2020-06-22 14:15:14'),
(87, 'Note_10_plus-e731eeea-4fcb-4c81-b480-96e0462545a9.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Note_10_plus-e731eeea-4fcb-4c81-b480-96e0462545a9.jpg', 3, 'Technology', '2020-06-22 14:15:19', '2020-06-22 14:15:19'),
(88, 'Perspective-bb410b97-95f3-4f95-92bb-edf76acd5aa4.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Perspective-bb410b97-95f3-4f95-92bb-edf76acd5aa4.jpg', 3, 'Technology', '2020-06-22 14:15:27', '2020-06-22 14:15:27'),
(89, 'Snapdragon_ultimate-938264a2-01e4-4fa5-b0b8-068e19772648.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Snapdragon_ultimate-938264a2-01e4-4fa5-b0b8-068e19772648.jpg', 3, 'Technology', '2020-06-22 14:15:35', '2020-06-22 14:15:35'),
(90, 'Techno_color-757387db-bbe8-4cfa-8e4c-ba3dd5aaeb87.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Techno_color-757387db-bbe8-4cfa-8e4c-ba3dd5aaeb87.jpg', 3, 'Technology', '2020-06-22 14:15:46', '2020-06-22 14:15:46'),
(91, 'Techno_color-757387db-bbe8-4cfa-8e4c-ba3dd5aaeb87.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Techno_color-757387db-bbe8-4cfa-8e4c-ba3dd5aaeb87.jpg', 3, 'Technology', '2020-06-22 14:15:54', '2020-06-22 14:15:54'),
(92, 'Technology-6d9a7b54-4193-4c23-960f-da046d045eed.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Technology-6d9a7b54-4193-4c23-960f-da046d045eed.jpg', 3, 'Technology', '2020-06-22 14:16:02', '2020-06-22 14:16:02'),
(93, 'World-aa02fdaf-1472-3b98-9d59-60aa3b090dee.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/World-aa02fdaf-1472-3b98-9d59-60aa3b090dee.jpg', 3, 'Technology', '2020-06-22 14:16:09', '2020-06-22 14:16:09'),
(94, 'xiaomi_black_shark-d8d23568-39d6-4d97-80c9-6c7f6d2925e5.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/xiaomi_black_shark-d8d23568-39d6-4d97-80c9-6c7f6d2925e5.jpg', 3, 'Technology', '2020-06-22 14:16:17', '2020-06-22 14:16:17'),
(95, 'Beach__-00fa6ca7-78a0-4863-82e7-90d747fff71a.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach__-00fa6ca7-78a0-4863-82e7-90d747fff71a.jpg', 4, 'Beach', '2020-06-23 01:35:37', '2020-06-23 01:35:37'),
(96, 'Beach-bc5abebc-18d4-4ec2-b336-b03d0c9fe2c6.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-bc5abebc-18d4-4ec2-b336-b03d0c9fe2c6.jpg', 4, 'Beach', '2020-06-23 01:35:47', '2020-06-23 01:35:47'),
(97, 'Beautiful_Beaches-18d2eb23-5fa5-4c95-9d64-eceebc3f4a98.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beautiful_Beaches-18d2eb23-5fa5-4c95-9d64-eceebc3f4a98.jpg', 4, 'Beach', '2020-06-23 01:35:55', '2020-06-23 01:35:55'),
(98, 'Beach_serenity-9ad3f5f7-44a7-4f9b-bcbb-f7cf9942ce47.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_serenity-9ad3f5f7-44a7-4f9b-bcbb-f7cf9942ce47.jpg', 4, 'Beach', '2020-06-23 01:36:05', '2020-06-23 01:36:05'),
(99, 'Beach-ee00d895-30d4-3830-a813-c64e4649933e.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-ee00d895-30d4-3830-a813-c64e4649933e.jpg', 4, 'Beach', '2020-06-23 01:36:16', '2020-06-23 01:36:16'),
(100, 'Sunset_Beach-92b0d568-d93e-325f-922b-42a80c29fba1.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Sunset_Beach-92b0d568-d93e-325f-922b-42a80c29fba1.jpg', 4, 'Beach', '2020-06-23 01:36:25', '2020-06-23 01:36:25'),
(101, 'Beach_Sunset-75aa37d8-8499-366b-9f2b-022b0fec7bb5.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Sunset-75aa37d8-8499-366b-9f2b-022b0fec7bb5.jpg', 4, 'Beach', '2020-06-23 01:36:37', '2020-06-23 01:36:37'),
(102, 'Beach_Waves-6cccd8dd-25ef-307f-b7d1-406ff42f616f.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Waves-6cccd8dd-25ef-307f-b7d1-406ff42f616f.jpg', 4, 'Beach', '2020-06-23 01:36:48', '2020-06-23 01:36:48'),
(103, 'Beach-8d730e3e-3bba-4a36-bb42-c4dfe9467e83.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-8d730e3e-3bba-4a36-bb42-c4dfe9467e83.jpg', 4, 'Beach', '2020-06-23 01:36:58', '2020-06-23 01:36:58'),
(104, 'Beach_Please-1c0408e5-6d97-4f93-bfe3-7fb250f4e768.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Please-1c0408e5-6d97-4f93-bfe3-7fb250f4e768.jpg', 4, 'Beach', '2020-06-23 01:37:08', '2020-06-23 01:37:08'),
(105, 'Dream_Nature-79e2a2d4-886b-3a72-af33-846f30435201.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Dream_Nature-79e2a2d4-886b-3a72-af33-846f30435201.jpg', 4, 'Beach', '2020-06-23 01:37:19', '2020-06-23 01:37:19'),
(106, 'Beach_Sunset-dba95384-2bd4-464a-8d95-01b95d0c6055.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Sunset-dba95384-2bd4-464a-8d95-01b95d0c6055.jpg', 4, 'Beach', '2020-06-23 01:37:32', '2020-06-23 01:37:32'),
(107, 'beach-aaec0947-e48f-3ec1-b578-793d6471adec.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/beach-aaec0947-e48f-3ec1-b578-793d6471adec.jpg', 4, 'Beach', '2020-06-23 01:37:42', '2020-06-23 01:37:42'),
(108, 'beach-15f10337-8f08-3f83-bd68-a42050990fda.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/beach-15f10337-8f08-3f83-bd68-a42050990fda.jpg', 4, 'Beach', '2020-06-23 01:38:11', '2020-06-23 01:38:11'),
(109, 'Beach-a0e81955-3d0a-433e-8068-f893edab77be.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-a0e81955-3d0a-433e-8068-f893edab77be.jpg', 4, 'Beach', '2020-06-23 01:38:22', '2020-06-23 01:38:22'),
(110, 'Beach_Aerial_View-9cfd8646-6099-41c8-9212-9ac3b927e6dd.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Aerial_View-9cfd8646-6099-41c8-9212-9ac3b927e6dd.jpg', 4, 'Beach', '2020-06-23 01:38:32', '2020-06-23 01:38:32'),
(111, 'iphone-b57e04c8-8e8e-4720-85d8-53ff615b22f4.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/iphone-b57e04c8-8e8e-4720-85d8-53ff615b22f4.jpg', 4, 'Beach', '2020-06-23 01:38:42', '2020-06-23 01:38:42'),
(112, 'Beach-3bc560ca-e9aa-3f9e-805c-eb76b1940d75.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-3bc560ca-e9aa-3f9e-805c-eb76b1940d75.jpg', 4, 'Beach', '2020-06-23 01:38:53', '2020-06-23 01:38:53'),
(113, 'Beach-2a8ba0aa-1c82-3695-88a3-07345f104db0.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-2a8ba0aa-1c82-3695-88a3-07345f104db0.jpg', 4, 'Beach', '2020-06-23 01:39:03', '2020-06-23 01:39:03'),
(114, 'Beach_Rest_Place-6b3b5398-0173-37ac-93e6-ec866e4dc5cd.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Rest_Place-6b3b5398-0173-37ac-93e6-ec866e4dc5cd.jpg', 4, 'Beach', '2020-06-23 01:39:15', '2020-06-23 01:39:15'),
(115, 'Beach_Landscape-4bc3820b-244e-388a-ba23-bb2db9386ec4.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach_Landscape-4bc3820b-244e-388a-ba23-bb2db9386ec4.jpg', 4, 'Beach', '2020-06-23 01:39:28', '2020-06-23 01:39:28'),
(116, 'Beach-1727da10-a126-375c-9ba8-4939930228ce.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/Beach-1727da10-a126-375c-9ba8-4939930228ce.jpg', 4, 'Beach', '2020-06-23 01:39:38', '2020-06-23 01:39:38'),
(117, 'wallpapers_1.jpg', 'https://anhtuan-it.000webhostapp.com/upload/image/wallpapers_1.jpg', 2, 'Animal', '2020-06-22 23:40:16', '2020-06-22 23:40:16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wallpapers`
--
ALTER TABLE `wallpapers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wallpapers`
--
ALTER TABLE `wallpapers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wallpapers`
--
ALTER TABLE `wallpapers`
  ADD CONSTRAINT `wallpapers_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
