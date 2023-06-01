-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2023 at 05:15 PM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskluck`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9750885a01a0355f690d09b30a1703aa1b847909b7627a003235c28e4ad7cf94f90fef5ff0b3afdf', 1, 1, 'Atrorahi', '[]', 0, '2023-05-31 14:52:08', '2023-05-31 14:52:09', '2024-05-31 20:22:08'),
('9caa62cd3ee8b37b34e55d752a7bd509b983983b97f13a432be7a32ae015171c894a423b5b268a27', 1, 1, 'Atrorahi', '[]', 0, '2023-05-31 14:55:17', '2023-05-31 14:55:17', '2024-05-31 20:25:17'),
('77ff99ad551f57ddcb9ba4d0b7da8532339d74022c05d3da827078288d4b193f5ba74c58bc4ad9b5', 2, 1, 'Atrorahi', '[]', 0, '2023-05-31 22:22:02', '2023-05-31 22:22:02', '2024-06-01 03:52:02'),
('0512f7cdac36208cb6af0e509c0769bed9dde3feb1375b721efbd1bd8b35e52cc8eab2ede249b542', 2, 1, 'Atrorahi', '[]', 0, '2023-06-01 06:20:48', '2023-06-01 06:20:49', '2024-06-01 11:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '0JWqEaj1MhU98pwJ86ev8jfMWl60dZk1P7fEN7c8', NULL, 'http://localhost', 1, 0, 0, '2023-05-31 13:17:45', '2023-05-31 13:17:45'),
(2, NULL, 'Laravel Password Grant Client', 'NMIaqW5urozMbkSkBquSR2rDzydLhgb8W5XubAXF', 'users', 'http://localhost', 0, 1, 0, '2023-05-31 13:17:45', '2023-05-31 13:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-31 13:17:45', '2023-05-31 13:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Atrorahi', 'b348de8dd67b1b6b0e6326922c1a10b3f63ef9a7523a84c7003823b55f9ecffe', '[\"*\"]', NULL, NULL, '2023-05-31 14:18:17', '2023-05-31 14:18:17'),
(2, 'App\\Models\\User', 1, 'Atrorahi', '807b01560ff2a30e251182e78a738b126d3a9c0226306b357a030691372bf956', '[\"*\"]', NULL, NULL, '2023-05-31 14:19:14', '2023-05-31 14:19:14'),
(3, 'App\\Models\\User', 1, 'tasklucknow', '6e09890b6bcf98457431610ec2268b0b7d5b7bcc66c294b53516fea5a34bee80', '[\"*\"]', NULL, NULL, '2023-05-31 14:22:22', '2023-05-31 14:22:22'),
(4, 'App\\Models\\User', 1, 'tasklucknow', '47da3a9d90348d450a87deba8f8f790d4f0f4e7d3ce844f7a46220a781257c8b', '[\"*\"]', NULL, NULL, '2023-05-31 14:22:25', '2023-05-31 14:22:25'),
(5, 'App\\Models\\User', 1, 'tasklucknow', '7f1dde495c95f60f49d8bc42e617b968ccd679b3ceb22a87cabe8dbf201652b8', '[\"*\"]', NULL, NULL, '2023-05-31 14:25:42', '2023-05-31 14:25:42'),
(6, 'App\\Models\\User', 1, 'tasklucknow', '8e51718aace59503bd3e18d91bdc84eb7a9d2c833c61ccbccd5d2e275795b515', '[\"*\"]', NULL, NULL, '2023-05-31 14:33:26', '2023-05-31 14:33:26'),
(7, 'App\\Models\\User', 1, 'tasklucknow', '9bf99156ae09137a6e2b461d27fef870a502de074e34f5d26a8d1afc8a81b7b0', '[\"*\"]', NULL, NULL, '2023-05-31 14:34:18', '2023-05-31 14:34:18'),
(8, 'App\\Models\\User', 1, 'tasklucknow', '177955be90c8fe4f655a0e0b3aff34cad8fb58e1b9718995bfdae1f8c3a9f6c1', '[\"*\"]', NULL, NULL, '2023-05-31 14:38:36', '2023-05-31 14:38:36'),
(9, 'App\\Models\\User', 1, 'tasklucknow', 'a2be6b12a0c06908ad339933402a53b5b595567e1a693071648f4b6bef14fcf1', '[\"*\"]', NULL, NULL, '2023-05-31 14:39:16', '2023-05-31 14:39:16'),
(10, 'App\\Models\\User', 1, 'tasklucknow', '48591e2b20e473c1a889b449c2c68d4d34eddadb254bab0186dc95f1a86c070f', '[\"*\"]', NULL, NULL, '2023-05-31 14:40:48', '2023-05-31 14:40:48'),
(11, 'App\\Models\\User', 1, 'Atrorahi', '6ef9287699184d0f4a92cca0423c65d90be3b2a1c91a6541eb32e052bfc55187', '[\"*\"]', NULL, NULL, '2023-05-31 14:45:07', '2023-05-31 14:45:07'),
(12, 'App\\Models\\User', 1, 'Atrorahi', 'd1f44fddfafce8810df879fc6f7c2c1b359d6e353a432bef58aeaf0afca474d7', '[\"*\"]', NULL, NULL, '2023-05-31 14:46:52', '2023-05-31 14:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` int(11) DEFAULT NULL,
  `otp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `wallet`, `otp`, `email_verified_at`, `api_token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '7860565244', 60, '', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOWNhYTYyY2QzZWU4YjM3YjM0ZTU1ZDc1MmE3YmQ1MDliOTgzOTgzYjk3ZjEzYTQzMmJlN2EzMmFlMDE1MTcxYzg5NGE0MjNiNWIyNjhhMjciLCJpYXQiOjE2ODU1NjQ3MTcuMzMzMjgxLCJuYmYiOjE2ODU1NjQ3MTcuMzMzMjg0LCJleHAiOjE3MTcxODcxMTcuMzIzOTY1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.O1U1bK9FHBkpTRhRHWHVBnxp8tERfW__EqgSVXWYG-w2ASL9kycO9wJ3jOOsH7vw0BaNL_ytsmhNNSakSA4hLThFxiS6KInRUrDSoFnANdxE8Uq1yYLaDCMlQEPEBJB6kxWceTqetxing46fDKA9Faxh34EqrsofkEHbPuO0M0g-Cj0WUDivzHVBU7UErVxYBLXPGodTMGtXRDp4nkvM0hQ_ubOBLeloa8yAu4m4EV2i-FwSFYt13Uwbj4-HEqU56ca9E4DtoAt-S_gxovVEioivwKmQyiKnCGRoZHzVvkJGk4EIcf6PQOE6hAvbu5RNpQwE6Rsoo9eSugvRedzKPls1p3UHKWTqnMB4TsBmsfX4N17Um38vhmbG4q1oNR422sFlNfbV39NuY4yV0MWz3_aC5J_lZcgbhipVSliQ3UImF74RmHB_o6VtPDXPhSMIqmm2DwpBK-zkpPt8Fhe5B9MTDy5Do4BBbq34_NNpw73yUnYVSb9v7NfOgFdATnh-Qwu8SwNcumpc4rnXKMSAK1NSRu1Lbm4VeGe2Br2sMvyfmJ9hS-8VW46DLU8cVhjNh4cKed4sg0RsdjAyzLg3x_duWETxT2Ua3E9vmzqha9SN3RBLCV5JIZ1sGbhMjKPgC5JjEa6uXhMmOVgvFnyL4SAMZ2Lm-a38lgC2zZnBCUo', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOWNhYTYyY2QzZWU4YjM3YjM0ZTU1ZDc1MmE3YmQ1MDliOTgzOTgzYjk3ZjEzYTQzMmJlN2EzMmFlMDE1MTcxYzg5NGE0MjNiNWIyNjhhMjciLCJpYXQiOjE2ODU1NjQ3MTcuMzMzMjgxLCJuYmYiOjE2ODU1NjQ3MTcuMzMzMjg0LCJleHAiOjE3MTcxODcxMTcuMzIzOTY1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.O1U1bK9FHBkpTRhRHWHVBnxp8tERfW__EqgSVXWYG-w2ASL9kycO9wJ3jOOsH7vw0BaNL_ytsmhNNSakSA4hLThFxiS6KInRUrDSoFnANdxE8Uq1yYLaDCMlQEPEBJB6kxWceTqetxing46fDKA9Faxh34EqrsofkEHbPuO0M0g-Cj0WUDivzHVBU7UErVxYBLXPGodTMGtXRDp4nkvM0hQ_ubOBLeloa8yAu4m4EV2i-FwSFYt13Uwbj4-HEqU56ca9E4DtoAt-S_gxovVEioivwKmQyiKnCGRoZHzVvkJGk4EIcf6PQOE6hAvbu5RNpQwE6Rsoo9eSugvRedzKPls1p3UHKWTqnMB4TsBmsfX4N17Um38vhmbG4q1oNR422sFlNfbV39NuY4yV0MWz3_aC5J_lZcgbhipVSliQ3UImF74RmHB_o6VtPDXPhSMIqmm2DwpBK-zkpPt8Fhe5B9MTDy5Do4BBbq34_NNpw73yUnYVSb9v7NfOgFdATnh-Qwu8SwNcumpc4rnXKMSAK1NSRu1Lbm4VeGe2Br2sMvyfmJ9hS-8VW46DLU8cVhjNh4cKed4sg0RsdjAyzLg3x_duWETxT2Ua3E9vmzqha9SN3RBLCV5JIZ1sGbhMjKPgC5JjEa6uXhMmOVgvFnyL4SAMZ2Lm-a38lgC2zZnBCUo', '2023-05-31 14:06:42', '2023-06-01 11:35:40'),
(2, NULL, NULL, '7860565544', 3200, '7559', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMDUxMmY3Y2RhYzM2MjA4Y2I2YWYwZTUwOWMwNzY5YmVkOWRkZTNmZWIxMzc1YjcyMWVmYmQxYmQ4YjM1ZTUyY2M4ZWFiMmVkZTI0OWI1NDIiLCJpYXQiOjE2ODU2MjAyNDkuMDI3ODc3LCJuYmYiOjE2ODU2MjAyNDkuMDI3ODgxLCJleHAiOjE3MTcyNDI2NDguNjkwNzg4LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.wcbXEOqBU_XSROhTOtfzAALKcKVM5q-nl4fGTw_SdwTv89io9neFElh24ArOZ11px3QmI4NU0GuVYq2K-sjAVMvPtCj5jLjrbxiV-oFCfYfysQs7o4nua0sptTvOkUF6LltrHmmCKYp3RmbrwEiB5abovY9yNz0JxDIGZiWZcWLDJCKFa_OWJ2gHxs0jPXvemNYNHpQ39uIDptmxDxsYpzJ0BjPO909Ds9CvEdj3Pangt6YiLmwSvwhbNgGo6xYxpB6IpybUNlzOPRPtFREBIRXhkzTV18h3v_of88nGsk4PQFtkhuwJfJNuBKswE2QxUKR-JLAi7Ga8vMy9VblLIXAwFb7z2cBwykh1Q3KOSwokw7FqwatQrSSWklS1CnV7dWOoeJozqephkVv-OTP_NtqQC_zanB7-PkQJSm4YgMnptlE8F9-tRlnUUWFOS38k3I4828NA4YL_BA6uGHw9kerjz0mBh0sjBy3wMuL-Xu5wxL6reW5ajAn7f4QzrJYnB8b127tdSr8ZmKCKbXO418-e3lcr3D-kCTCRPOs1h6xPVYXPbNjyF7SVJwlZlGgkxLyZ7z8Z_Q_o2JooOKBsrNiC2ql_R9bNl_BfiVd0AU0TCIT0EIu7zhTn2IlzRZNvwuxy2Z3fM0DJnCp5BSTjh3CRRsWb72PHYkNsE5aQK9E', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMDUxMmY3Y2RhYzM2MjA4Y2I2YWYwZTUwOWMwNzY5YmVkOWRkZTNmZWIxMzc1YjcyMWVmYmQxYmQ4YjM1ZTUyY2M4ZWFiMmVkZTI0OWI1NDIiLCJpYXQiOjE2ODU2MjAyNDkuMDI3ODc3LCJuYmYiOjE2ODU2MjAyNDkuMDI3ODgxLCJleHAiOjE3MTcyNDI2NDguNjkwNzg4LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.wcbXEOqBU_XSROhTOtfzAALKcKVM5q-nl4fGTw_SdwTv89io9neFElh24ArOZ11px3QmI4NU0GuVYq2K-sjAVMvPtCj5jLjrbxiV-oFCfYfysQs7o4nua0sptTvOkUF6LltrHmmCKYp3RmbrwEiB5abovY9yNz0JxDIGZiWZcWLDJCKFa_OWJ2gHxs0jPXvemNYNHpQ39uIDptmxDxsYpzJ0BjPO909Ds9CvEdj3Pangt6YiLmwSvwhbNgGo6xYxpB6IpybUNlzOPRPtFREBIRXhkzTV18h3v_of88nGsk4PQFtkhuwJfJNuBKswE2QxUKR-JLAi7Ga8vMy9VblLIXAwFb7z2cBwykh1Q3KOSwokw7FqwatQrSSWklS1CnV7dWOoeJozqephkVv-OTP_NtqQC_zanB7-PkQJSm4YgMnptlE8F9-tRlnUUWFOS38k3I4828NA4YL_BA6uGHw9kerjz0mBh0sjBy3wMuL-Xu5wxL6reW5ajAn7f4QzrJYnB8b127tdSr8ZmKCKbXO418-e3lcr3D-kCTCRPOs1h6xPVYXPbNjyF7SVJwlZlGgkxLyZ7z8Z_Q_o2JooOKBsrNiC2ql_R9bNl_BfiVd0AU0TCIT0EIu7zhTn2IlzRZNvwuxy2Z3fM0DJnCp5BSTjh3CRRsWb72PHYkNsE5aQK9E', '2023-05-31 22:21:27', '2023-06-01 11:40:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
