-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Aug 24, 2026 at 12:24 PM
-- Server version: 8.0.46
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waste-collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:287b58015ec6ed41cc45119562d7402bb1069aed', 'i:1;', 1787573889),
('livewire-rate-limiter:287b58015ec6ed41cc45119562d7402bb1069aed:timer', 'i:1787573889;', 1787573889),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"uuid\";s:1:\"c\";s:4:\"name\";s:1:\"d\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:21:{i:0;a:5:{s:1:\"a\";i:1;s:1:\"b\";s:36:\"f95479d5-ee5c-4f52-be46-12d759a9452d\";s:1:\"c\";s:12:\"admins:index\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:5:{s:1:\"a\";i:2;s:1:\"b\";s:36:\"f22e18f9-39c6-48c4-a220-185b78063c75\";s:1:\"c\";s:13:\"admins:create\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:5:{s:1:\"a\";i:3;s:1:\"b\";s:36:\"dd46826e-c1e2-40bd-8988-07e1a51828a8\";s:1:\"c\";s:12:\"admins:store\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:36:\"34c64b82-47f1-4553-b2bd-65d5e28714d2\";s:1:\"c\";s:11:\"admins:show\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:5:{s:1:\"a\";i:5;s:1:\"b\";s:36:\"d6b468a9-ba6b-4a7d-8079-849815fdc67f\";s:1:\"c\";s:11:\"admins:edit\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:5:{s:1:\"a\";i:6;s:1:\"b\";s:36:\"9b1a4bd6-4c78-4310-be45-f4f9424b2751\";s:1:\"c\";s:13:\"admins:update\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:5:{s:1:\"a\";i:7;s:1:\"b\";s:36:\"d118355f-ebd7-4700-a7c2-2d41cbbf4268\";s:1:\"c\";s:14:\"admins:destroy\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:5:{s:1:\"a\";i:8;s:1:\"b\";s:36:\"58544000-52b6-4f16-999a-b5a2373166fe\";s:1:\"c\";s:11:\"users:index\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:8;a:5:{s:1:\"a\";i:9;s:1:\"b\";s:36:\"e27f1aed-b079-4415-81ea-c6435e722066\";s:1:\"c\";s:12:\"users:create\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:9;a:5:{s:1:\"a\";i:10;s:1:\"b\";s:36:\"37a89056-238f-4107-a993-67ef779c84cd\";s:1:\"c\";s:11:\"users:store\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:10;a:5:{s:1:\"a\";i:11;s:1:\"b\";s:36:\"eb795bb3-99db-42d3-a53c-3c0aee96da22\";s:1:\"c\";s:10:\"users:show\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:11;a:5:{s:1:\"a\";i:12;s:1:\"b\";s:36:\"56d25af3-cf0b-4b5f-a03f-3ef778848f04\";s:1:\"c\";s:10:\"users:edit\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:12;a:5:{s:1:\"a\";i:13;s:1:\"b\";s:36:\"a628a13d-9011-4652-a9e8-12906710161b\";s:1:\"c\";s:12:\"users:update\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:13;a:5:{s:1:\"a\";i:14;s:1:\"b\";s:36:\"83a08cab-ffe8-44b6-8e53-b1445745eb33\";s:1:\"c\";s:13:\"users:destroy\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:14;a:5:{s:1:\"a\";i:15;s:1:\"b\";s:36:\"dda87f15-33be-4eff-9098-092844ad8dab\";s:1:\"c\";s:17:\"superadmins:index\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:15;a:5:{s:1:\"a\";i:16;s:1:\"b\";s:36:\"aa2fe32d-c1dd-478e-b68a-034c2f08a308\";s:1:\"c\";s:18:\"superadmins:create\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:16;a:5:{s:1:\"a\";i:17;s:1:\"b\";s:36:\"16eb2f3e-767a-4274-8eef-dd9e56260e08\";s:1:\"c\";s:17:\"superadmins:store\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:17;a:5:{s:1:\"a\";i:18;s:1:\"b\";s:36:\"c9b33460-af89-4fc6-a247-8a2875a9f481\";s:1:\"c\";s:16:\"superadmins:show\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:18;a:5:{s:1:\"a\";i:19;s:1:\"b\";s:36:\"a261e3c3-eb1f-44d3-be57-721332a63f00\";s:1:\"c\";s:16:\"superadmins:edit\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:19;a:5:{s:1:\"a\";i:20;s:1:\"b\";s:36:\"52904f5c-629a-4bde-9522-1156eedc76f6\";s:1:\"c\";s:18:\"superadmins:update\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}i:20;a:5:{s:1:\"a\";i:21;s:1:\"b\";s:36:\"6cb8ff5e-f96f-4532-ac4f-7552985d9206\";s:1:\"c\";s:19:\"superadmins:destroy\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:3;}}}s:5:\"roles\";a:3:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:36:\"885df822-3974-420f-badb-042ee818e51c\";s:1:\"c\";s:5:\"Admin\";s:1:\"d\";s:3:\"web\";}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:36:\"ac4527b2-8907-4615-a1e0-38ee138e71d0\";s:1:\"c\";s:4:\"User\";s:1:\"d\";s:3:\"web\";}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:36:\"093fa50c-7f43-46ea-90ea-411142e93751\";s:1:\"c\";s:11:\"Super Admin\";s:1:\"d\";s:3:\"web\";}}}', 1787660230);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `uuid`, `empresa_id`, `nome`, `cpf`, `email`, `telefone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '7a9e59a4-0aa2-45b5-8587-55c7b80e64a8', 3, 'Jotaro Kujo', '632.651.150-03', 'jotaro.kujo@email.com', '(77) 9074-1892', '2024-11-14 07:20:18', '2024-11-14 07:20:18', NULL),
(2, '4caac55e-fdce-4b2e-b31e-4055744a636a', 3, 'Joseph Joestar', '675.613.900-25', 'joseph.joestar@email.com', '(77) 8722-8729', '2024-11-14 07:21:13', '2024-11-14 07:21:13', NULL),
(3, 'ae43f4b1-fff1-4ad8-a00c-281c31fe314c', 3, 'Muhammad Avdol', '525.175.730-18', 'muhammad.avdol@email.com', '(77) 9728-2781', '2024-11-14 07:22:23', '2024-11-14 07:22:23', NULL),
(4, 'b1757db9-1dea-4c67-a9e8-78889a2a2ced', 3, 'Noriaki Kakyoin', '105.491.080-41', 'noriaki.kakyoin@email.com', '(77) 8898-0892', '2024-11-14 07:23:27', '2024-11-14 07:23:27', NULL),
(5, 'cd79e476-00ac-452e-a280-3b95aba2d48f', 3, 'Jean Pierre Polnareff', '689.588.630-30', 'jean.polnareff@email.com', '(77) 9089-0758', '2024-11-14 07:24:07', '2024-11-14 07:24:07', NULL),
(6, '14189f91-9b67-43c3-9139-e9fbc111c228', 3, 'Iggy', '755.128.680-20', 'iggy@email.com', '(77) 9891-7230', '2024-11-14 07:25:25', '2024-11-14 07:25:25', NULL),
(7, 'c489a209-1f8b-433c-b356-90d38ae92611', 2, 'Bruno Bucciarati', '333.537.520-30', 'bruno.bucciarati@email.com', '(77) 9048-2672', '2024-11-14 07:35:13', '2026-08-24 09:21:16', NULL),
(8, '4456bfa7-fc83-4ba6-bcbf-d6756e0b1ae7', 2, 'Giorno Giovanna', '173.348.740-99', 'giorno.giovanna@email.com', '(77) 9890-8910', '2024-11-14 07:36:00', '2024-11-14 07:36:00', NULL),
(9, '7bf4fd71-2517-4215-a141-848ba7263110', 2, 'Leone Abbacchio', '612.465.190-46', 'leone.abbacchio@email.com', '(77) 9078-9612', '2024-11-14 07:36:39', '2024-11-14 07:36:39', NULL),
(10, '28a2b54f-b8c5-4c0b-bf50-bb9ac945d977', 2, 'Narancia Ghirga', '943.824.780-73', 'narancia.ghirga@email.com', '(77) 8890-8781', '2024-11-14 07:37:44', '2024-11-14 07:37:44', NULL),
(11, 'ddb1eb24-e9f1-4232-950f-504d5dc53c2e', 2, 'Pannacotta Fugo', '244.940.770-70', 'pannacotta.fugo@email.com', '(77) 9929-8129', '2024-11-14 07:38:27', '2024-11-14 07:38:27', NULL),
(12, '03c09adb-2ea3-493b-b08f-857151d0fb4f', 2, 'Guido Mista', '092.357.230-94', 'guido.mista@email.com', '(77) 9809-4784', '2024-11-14 07:39:14', '2024-11-14 07:39:14', NULL),
(13, '1d7e00da-1796-4cca-8d0c-1b5a8e5e6eb9', 2, 'Trish Una', '647.580.390-11', 'trish.una@email.com', '(77) 9089-2318', '2024-11-14 07:40:16', '2024-11-14 07:40:16', NULL),
(14, '86491601-c514-47d6-88d5-756896398c1d', 3, 'Lisa Lisa', '875.843.970-69', 'lisa.lisa@email.com', '(77) 9908-9878', '2024-11-14 09:34:34', '2024-11-14 09:34:34', NULL),
(15, 'df4dc188-c134-44a2-a92f-88a215eaa0e5', 3, 'Josuke Higashikata', '160.235.630-07', 'josuke.higashikata@email.com', '(77) 8809-5468', '2024-11-14 14:33:05', '2024-11-14 14:33:05', NULL),
(16, '56ba1c5f-2e20-4430-81a3-46c04d6d0a31', 3, 'Jolyne Kujo', '776.065.250-05', 'jolyne.kujo@email.com', '(77) 9995-0040', '2024-11-15 10:06:10', '2024-11-15 10:06:10', NULL),
(17, 'de9ac93f-6650-46e0-ac4b-3ea098959ee4', 3, 'Ermes Costello', '697.977.940-08', 'ermes.costello@email.com', '(77) 9996-6840', '2024-11-15 10:07:21', '2024-11-15 10:07:21', NULL),
(18, '69bf3453-31c6-4c38-87f2-230f4921a129', 3, 'Weather Report', '530.873.820-35', 'weather.report@email.com', '(77) 9890-9656', '2024-11-15 10:18:26', '2024-11-15 10:18:26', NULL),
(19, '5ec0e679-a08d-4868-9a68-ea4cdbd970ff', 3, 'Mikitaka Hazekura', '911.816.420-00', 'mikitaka.hazekura@email.com', '(77) 8897-6889', '2024-11-18 11:55:39', '2024-11-18 11:55:39', NULL),
(20, 'ce344dac-e102-490d-ae60-6447bc957d16', 3, 'Tonio Trussardi', '348.665.530-22', 'tonio.trussardi@email.com', '(77) 9980-5656', '2024-11-24 15:28:34', '2024-11-24 15:28:34', NULL),
(21, '1a82cbbf-3d8d-4866-89ea-36c943e80344', 3, 'Aya Tsuji', '496.262.920-40', 'aya.tsuji@email.com', '(77) 9895-6895', '2024-11-24 15:29:28', '2024-11-24 15:29:28', NULL),
(22, '7f463624-2b5f-427a-a341-f645c3cd7d93', 3, 'Narciso Anasui', '075.428.320-85', 'narciso.anasui@email.com', '(77) 8905-8345', '2024-11-26 08:33:39', '2024-11-26 08:33:39', NULL),
(23, 'e93c1bc9-1cc3-4dc5-9d29-3c9fee82e836', 3, 'Emporio Alnino', '456.486.860-80', 'emporio.alnino@email.com', '(77) 9898-9045', '2024-11-26 08:34:32', '2024-11-26 08:34:32', NULL),
(24, '54875faf-3609-4631-9d0c-2155dc1a7ec0', 3, 'Rohan Kishibe', '013.096.480-85', 'roha.kishibe@email.com', '(77) 8996-7976', '2024-12-02 08:43:41', '2024-12-02 08:43:41', NULL),
(25, '50800c19-47e2-410d-ac65-919d513b69fd', 3, 'Okuyasu Nijimura', '152.880.990-49', 'okuyasu.nijimura@email.com', '(77) 8979-8780', '2024-12-02 08:46:44', '2024-12-02 08:46:44', NULL),
(26, 'ca62e453-9f99-4a96-a180-896f04a5441b', 3, 'Koichi Hirose', '249.573.110-48', 'koichi.hirose@email.com', '(77) 9898-0795', '2024-12-02 09:02:19', '2024-12-02 09:02:19', NULL),
(27, 'e87f90ec-2802-421c-b88a-3c832c7b0cbc', 3, 'Shigekiyo Yangu', '551.588.440-03', 'shigekiyo.yangu@email.com', '(77) 9790-7568', '2024-12-12 19:40:50', '2024-12-12 19:40:50', NULL),
(28, '05f10394-88b2-4386-893e-38271efe1d2e', 3, 'Yuya Fungami', '059.984.775-10', 'yuya.fungami@email.com', '(77) 8909-4482', '2024-12-26 15:10:04', '2024-12-26 15:10:04', NULL),
(29, '3dcb7437-2f51-4b18-af2e-4b6d3cc5828e', 3, 'Yukako Yamagishi', '529.216.690-13', 'yukako.yamagishi@email.com', '(77) 9980-9058', '2024-12-30 19:11:30', '2024-12-30 19:11:30', NULL),
(30, 'a875c276-26d4-402d-9f1c-4eda4c8ae5ee', 4, 'Hot Pants', '982.800.800-90', 'hot.pants@email.com', '(77) 8809-7986', '2025-01-12 09:19:22', '2025-01-12 09:19:22', NULL),
(31, '3cde7c69-42be-4e28-a55e-22314b61b5c4', 4, 'Midler', '108.247.030-90', 'midler@email.com', '(77) 9908-7999', '2025-01-12 09:21:23', '2025-01-12 09:21:23', NULL),
(32, '735e404c-0bbc-41c4-b108-5d2bd6b48741', 4, 'Lucy Steel', '483.567.720-01', 'lucy.steel@email.com', '(77) 8809-0679', '2025-01-12 14:59:13', '2025-01-12 14:59:13', NULL),
(33, '1d40685a-f33a-4c3b-bc44-bc0e9d0268e4', 3, 'Tamami Kobayashi', '403.666.250-39', 'tamani.kobayashi@email.com', '(77) 9908-9608', '2025-02-08 19:47:26', '2025-02-08 19:47:26', NULL),
(34, 'bb0d0d88-3b4a-46ee-ad39-302164fe7d18', 3, 'Toshikazu Hazamada', '304.175.500-90', 'toshikazu.hazamada@email.com', '(77) 8989-9680', '2025-02-08 19:48:08', '2025-02-08 19:48:08', NULL),
(35, '128090e8-c7bd-4bff-8d97-30b683ece381', 3, 'Shizuka Joestar', '869.405.035-87', 'shizuka.joestar@email.com', '(77) 8890-5861', '2025-02-08 19:49:08', '2025-02-08 19:49:08', NULL),
(36, 'db25326e-348b-4862-84eb-7a0c83d0ec4e', 3, 'Caesar Zeppeli', '865.016.700-47', 'caesar.zeppeli@email.com', '(77) 9880-7978', '2025-02-11 08:11:35', '2025-02-11 08:11:35', NULL),
(37, '5b944ebf-01bb-4d1b-aaf7-0916d3358a28', 3, 'Keicho Nijimura', '084.411.855-90', 'keicho.nijimura@email.com', '(77) 9980-8979', '2025-02-25 10:47:37', '2025-02-25 10:47:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coletas`
--

CREATE TABLE `coletas` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_coleta` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `local_coleta_id` bigint UNSIGNED NOT NULL,
  `tipo_residuo_id` bigint UNSIGNED NOT NULL,
  `motorista_id` bigint UNSIGNED NOT NULL,
  `veiculo_id` bigint UNSIGNED NOT NULL,
  `deposito_residuo_id` bigint UNSIGNED NOT NULL,
  `valor_diaria` decimal(6,2) NOT NULL,
  `dias_diaria` int NOT NULL,
  `data_coleta` date NOT NULL,
  `hora_coleta` time NOT NULL,
  `valor_coleta` decimal(9,2) NOT NULL,
  `finalidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coletas`
--

INSERT INTO `coletas` (`id`, `uuid`, `codigo_coleta`, `empresa_id`, `local_coleta_id`, `tipo_residuo_id`, `motorista_id`, `veiculo_id`, `deposito_residuo_id`, `valor_diaria`, `dias_diaria`, `data_coleta`, `hora_coleta`, `valor_coleta`, `finalidade`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '0345342f-90ca-4354-9baa-a155e4e985bf', '24111415062X989', 2, 7, 1, 11, 1, 1, 60.00, 2, '2024-11-19', '11:10:00', 120.00, 'Reciclagem', 'Em andamento', '2024-11-14 10:13:48', '2026-07-14 14:19:57', NULL),
(2, 'c53d1c5d-2d0d-429e-a67f-68266ed4038c', '24111486065E510', 2, 8, 1, 10, 1, 1, 90.00, 5, '2024-11-18', '11:00:00', 450.00, 'Reciclagem', 'Em andamento', '2024-11-14 10:14:39', '2026-07-14 14:19:44', NULL),
(3, 'a63a9218-2682-4707-b097-ed5dedaa7e38', '24111479383Z583', 2, 9, 2, 2, 2, 3, 70.00, 4, '2024-11-16', '08:20:00', 280.00, 'Compostagem', 'Concluído', '2024-11-14 10:16:31', '2026-07-14 14:19:30', NULL),
(4, '6e27f101-ff46-404e-9581-afa2165f7556', '24111420310J249', 2, 10, 2, 2, 2, 3, 80.00, 6, '2024-11-19', '11:20:00', 480.00, 'Incineiração', 'Concluído', '2024-11-14 10:17:28', '2026-07-14 14:19:14', NULL),
(5, '1ca80c63-72f7-4576-9a59-ba0071d056a8', '24111458275N787', 2, 11, 3, 8, 2, 1, 80.00, 3, '2024-11-26', '14:20:00', 240.00, 'Compostagem', 'Em andamento', '2024-11-14 10:18:48', '2026-07-14 14:19:02', NULL),
(6, 'd2c56fab-e85c-4274-ac15-c868c6137310', '24111466548Z508', 2, 12, 3, 10, 1, 6, 85.00, 3, '2024-11-27', '16:25:00', 255.00, 'Coprocessamento', 'Concluído', '2024-11-14 10:19:52', '2026-08-07 08:34:41', NULL),
(7, 'da994f4a-8079-4595-96ae-bb8c15568ea7', '24111492220E541', 2, 13, 1, 1, 2, 1, 80.00, 5, '2024-12-02', '15:25:00', 400.00, 'Aterro controlado', 'Cancelado', '2024-11-14 10:21:29', '2026-07-14 14:18:37', NULL),
(8, 'dfd7559b-6035-430b-a0c1-1421bdf00754', '24111484431L491', 3, 1, 4, 3, 4, 2, 90.00, 3, '2024-11-18', '15:45:00', 270.00, 'Reciclagem', 'Em andamento', '2024-11-14 10:43:35', '2026-07-14 14:36:39', NULL),
(9, '188062d4-e000-4904-b76d-d043c799efb5', '24111443020I357', 3, 2, 4, 3, 4, 2, 80.00, 3, '2024-11-19', '08:50:00', 240.00, 'Reciclagem', 'Em andamento', '2024-11-14 10:44:30', '2026-07-14 14:36:20', NULL),
(10, '134a94a1-4066-48fc-9625-3f24f31b3cf4', '24111483808O948', 3, 3, 5, 4, 5, 2, 50.00, 8, '2024-11-16', '16:45:00', 400.00, 'Incineiração', 'Concluído', '2024-11-14 10:46:01', '2026-07-14 14:34:27', NULL),
(11, '589304ac-9a06-414c-93ad-cbc33f997b60', '24111458844O378', 3, 4, 5, 4, 5, 2, 50.00, 7, '2024-11-20', '09:00:00', 350.00, 'Incineiração', 'Concluído', '2024-11-14 10:46:58', '2026-07-14 14:34:13', NULL),
(12, 'a1811e1c-f620-41a2-9227-a4d8bcbec1bb', '24111448857N447', 3, 5, 6, 4, 4, 2, 90.00, 3, '2024-11-26', '08:50:00', 270.00, 'Coprocessamento', 'Concluído', '2024-11-14 10:48:40', '2026-07-14 14:34:01', NULL),
(13, '9cc50985-1e55-466d-8549-8ca7ce055fb9', '24111415328W990', 3, 6, 6, 3, 5, 2, 70.00, 5, '2024-11-30', '14:50:00', 350.00, 'Aterro controlado', 'Cancelado', '2024-11-14 10:49:30', '2026-07-14 14:33:49', NULL),
(14, '40c6c27a-00e2-4e89-b83e-a346f756f249', '24111455620A462', 3, 14, 5, 5, 4, 12, 80.00, 7, '2024-12-04', '20:35:00', 560.00, 'Coprocessamento', 'Em andamento', '2024-11-14 14:31:49', '2026-07-14 14:32:49', NULL),
(15, 'd612b19f-2f7d-49af-ad78-88358fd7661e', '24111425240D441', 3, 15, 6, 4, 5, 4, 50.00, 6, '2024-12-03', '08:30:00', 300.00, 'Aterro controlado', 'Em andamento', '2024-11-14 19:12:07', '2026-07-14 14:32:33', NULL),
(16, '4c9c7135-a69c-4a5f-8fe9-dc023c07a259', '24111585890B515', 3, 16, 5, 9, 6, 11, 80.00, 5, '2024-12-04', '11:15:00', 400.00, 'Reciclagem', 'Concluído', '2024-11-15 10:12:31', '2026-07-14 14:32:18', NULL),
(17, 'e9f3410b-1ff7-469a-887e-5b34fda1cc9c', '24111510231L522', 3, 17, 4, 9, 6, 11, 70.00, 5, '2024-12-06', '16:15:00', 350.00, 'Reciclagem', 'Concluído', '2024-11-15 10:13:48', '2026-07-14 14:31:57', NULL),
(18, 'f1e48ab0-9e7f-4e3c-b286-398686a164f2', '24111523821Z637', 3, 18, 5, 9, 6, 11, 80.00, 5, '2024-11-22', '11:25:00', 400.00, 'Aterro controlado', 'Concluído', '2024-11-15 10:21:17', '2026-07-14 14:31:42', NULL),
(19, '513cb078-c0ae-457c-a500-a28dcc16c99b', '24111836151X625', 3, 19, 5, 4, 6, 5, 90.00, 3, '2024-11-22', '08:25:00', 270.00, 'Incineiração', 'Em andamento', '2024-11-18 11:59:03', '2026-07-14 14:31:21', NULL),
(20, 'b6ee9cf2-0a9f-468c-b9ae-4efd5428b93a', '24112439129X336', 3, 20, 5, 4, 6, 5, 80.00, 6, '2024-11-28', '16:35:00', 480.00, 'Incineiração', 'Em andamento', '2024-11-24 15:33:07', '2026-07-14 14:31:07', NULL),
(21, '89550623-b661-43c0-90fa-dec0b3a9c050', '24112429296J457', 3, 21, 4, 4, 6, 4, 80.00, 4, '2024-11-26', '17:30:00', 320.00, 'Incineiração', 'Em andamento', '2024-11-24 15:34:12', '2026-07-14 14:30:50', NULL),
(22, 'eaaca17c-9bba-4039-9748-77a728f35fc6', '24112680297A878', 3, 22, 5, 9, 6, 11, 80.00, 2, '2024-12-04', '09:40:00', 160.00, 'Coprocessamento', 'Concluído', '2024-11-26 08:37:38', '2026-07-14 14:30:19', NULL),
(23, '3aed9ed0-ea1e-492b-9106-ab5c35a467b4', '24112658584M518', 3, 23, 6, 9, 6, 11, 80.00, 9, '2024-12-07', '09:40:00', 720.00, 'Reciclagem', 'Concluído', '2024-11-26 08:38:26', '2026-07-14 14:30:04', NULL),
(24, '4dcda0fb-2138-4090-b62e-2bfa27ae9b3a', '24120265095H982', 3, 24, 5, 4, 6, 4, 80.00, 3, '2024-12-18', '10:10:00', 240.00, 'Incineiração', 'Em andamento', '2024-12-02 09:05:31', '2026-07-14 14:29:48', NULL),
(25, 'a1d99795-d356-4bbd-a5f0-a840dce3b3c6', '24120264704X856', 3, 25, 5, 4, 5, 5, 85.00, 5, '2024-12-12', '10:00:00', 425.00, 'Reciclagem', 'Concluído', '2024-12-02 09:07:13', '2026-07-14 14:28:45', NULL),
(26, 'b9099fbb-7e0c-4415-a1e7-349b8457db38', '24120266295I566', 3, 26, 5, 4, 4, 5, 100.00, 7, '2024-12-16', '15:30:00', 700.00, 'Aterro controlado', 'Em andamento', '2024-12-02 09:11:11', '2026-07-14 14:27:07', NULL),
(27, '59af55af-f944-477a-a4b6-2a6b994e4f57', '24121225183L848', 3, 27, 6, 4, 5, 5, 80.00, 3, '2024-12-20', '09:45:00', 240.00, 'Coprocessamento', 'Cancelado', '2024-12-12 19:43:47', '2026-07-14 14:25:45', NULL),
(28, 'eb311f96-ca5f-488f-aabd-c16f533d5649', '24122860539O165', 3, 28, 4, 4, 4, 5, 80.00, 8, '2024-12-31', '21:40:00', 640.00, 'Aterro controlado', 'Em andamento', '2024-12-28 14:31:56', '2026-07-14 14:25:30', NULL),
(29, 'af1ca522-e4ea-42ab-acce-eb670d32eaab', '24123066965Q997', 3, 29, 6, 4, 5, 4, 80.00, 4, '2024-12-31', '20:40:00', 320.00, 'Reciclagem', 'Concluído', '2024-12-30 19:13:48', '2026-07-14 14:25:04', NULL),
(30, '0f7e4a62-d692-4d19-aff2-9309f5fa80e6', '25011292601C786', 4, 30, 7, 15, 11, 10, 80.00, 3, '2025-01-15', '09:20:00', 240.00, 'Reciclagem', 'Em andamento', '2025-01-12 09:56:54', '2026-07-14 14:21:11', NULL),
(31, 'e625a1c5-62ae-4c1c-9cbd-2a93d9d9db51', '25011291896Q684', 4, 31, 8, 16, 12, 10, 70.00, 5, '2025-01-15', '10:25:00', 350.00, 'Reciclagem', 'Em andamento', '2025-01-12 09:58:02', '2026-08-07 08:35:13', NULL),
(32, '060cfb9b-5dfb-4735-b18f-bea2e5ec2e80', '25011259532N575', 4, 32, 8, 15, 11, 10, 75.00, 4, '2025-01-17', '09:10:00', 300.00, 'Compostagem', 'Concluído', '2025-01-12 15:03:47', '2026-07-14 14:20:56', NULL),
(33, 'ff0e8efc-0d66-451b-915e-36d2255cb2b8', '25020840136U808', 3, 33, 4, 4, 6, 5, 90.00, 6, '2025-02-10', '08:10:00', 540.00, 'Reciclagem', 'Em andamento', '2025-02-08 19:55:42', '2026-07-14 14:23:37', NULL),
(34, 'ad22f1ad-2884-4aef-8e4b-4d6b275db502', '25020872252X972', 3, 34, 4, 4, 5, 4, 80.00, 7, '2025-02-11', '10:00:00', 560.00, 'Reciclagem', 'Concluído', '2025-02-08 19:56:53', '2026-07-14 14:23:20', NULL),
(35, '8ddef76e-1603-4346-b8ff-a036294339d8', '25020872813Z369', 3, 35, 4, 4, 6, 4, 80.00, 10, '2025-02-10', '16:40:00', 800.00, 'Reciclagem', 'Cancelado', '2025-02-08 19:58:11', '2026-07-14 14:23:05', NULL),
(36, '0801d851-ed86-4097-8eb6-958b3d0e00df', '25021125858M337', 3, 36, 5, 7, 6, 4, 80.00, 5, '2025-02-14', '09:20:00', 400.00, 'Reciclagem', 'Em andamento', '2025-02-11 08:17:12', '2026-08-07 08:34:09', NULL),
(37, '75324d8e-0109-423d-80a1-c8f9aefe98e8', '25022588851H403', 3, 37, 5, 4, 4, 5, 60.00, 3, '2025-02-26', '11:00:00', 180.00, 'Reciclagem', 'Em andamento', '2025-02-25 10:50:42', '2026-07-14 14:22:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `depositos_residuos`
--

CREATE TABLE `depositos_residuos` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depositos_residuos`
--

INSERT INTO `depositos_residuos` (`id`, `uuid`, `empresa_id`, `nome`, `cnpj`, `cep`, `uf`, `cidade`, `bairro`, `logradouro`, `numero`, `email`, `telefone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'e7c4e335-ba8d-4e99-8d3e-cf1199f9580f', 2, 'Stone Arrow', '80.758.002/0001-83', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Golden Wind', 15, 'stone.arrow@email.com', '(77) 9849-6087', '2024-11-14 07:08:01', '2024-11-18 14:13:09', NULL),
(2, '8306ae41-a0bc-411c-ada0-7f4052f4b311', 3, 'Oingo Boingo Brothers', '45.142.027/0001-57', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Stardust Crusaders', 188, 'oingo.boingo@email.com', '(77) 9089-0728', '2024-11-14 07:17:17', '2024-11-14 07:17:17', NULL),
(3, '36e50248-b753-4727-b663-c85fd744f69c', 2, 'Coco Jumbo', '41.779.174/0001-81', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Golden Wind', 46, 'coco.jumbo@email.com', '(77) 9091-7891', '2024-11-14 07:34:02', '2025-03-01 15:11:06', NULL),
(4, '45f2c555-b723-4f4f-9e2a-2787135580dd', 3, 'Cheap Trick', '93.381.133/0001-36', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Diamond is Unbreakable', 150, 'cheap.trick@email.com', '(77) 8890-6478', '2024-11-17 13:51:47', '2024-12-06 17:22:58', NULL),
(5, '21fa4cdc-2587-493f-93a0-71430ee714cf', 3, 'Atom Heart Father', '25.772.385/0001-36', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Diamond is Unbreakable', 131, 'atom.heart@email.com', '(77) 8990-8790', '2024-11-17 13:53:18', '2024-12-06 17:23:10', NULL),
(6, '16fafad9-24a7-4532-a943-567c5a2f6cf6', 2, 'Rolling Stones', '18.588.828/0001-78', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Golden Wind', 58, 'rolling.stones@email.com', '(77) 8890-7890', '2025-01-04 06:53:09', '2025-01-04 06:53:09', NULL),
(7, '7bd5fcc8-2b6e-4d34-beb7-a2de20f1399b', 2, 'Chariot Requiem', '17.122.636/0001-09', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Golden Wind', 47, 'chariot.requiem@email.com', '(77) 9971-9860', '2025-01-04 07:19:46', '2025-01-04 07:19:46', NULL),
(8, '5f82aec5-e8fc-4f9a-accc-e8ff66b28517', 2, 'Notorious B.I.G', '80.180.096/0001-56', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Golden Wind', 174, 'notorious.big@email.com', '(77) 8909-9989', '2025-01-04 07:22:15', '2025-01-04 07:22:15', NULL),
(9, '9c9da044-ff53-49c0-916d-95333e118d8d', 4, 'Anubis', '85.528.786/0001-77', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Stardust Crusaders', 36, 'anubis@email.com', '(77) 8998-7999', '2025-01-12 09:52:38', '2025-01-12 09:52:38', NULL),
(10, '1eccaff1-4a5b-466e-b1ae-90213e9e8544', 4, 'Saint\'s Corpse', '11.518.843/0001-09', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Steel Ball Run', 33, 'saint.corpse@email.com', '(77) 9980-0879', '2025-01-12 09:55:12', '2025-01-12 09:55:12', NULL),
(11, 'f2d1a3d0-a527-41a4-b5a8-bdb1a131c79d', 3, 'Foo Fighters', '30.728.180/0001-93', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Stone Ocean', 116, 'foo.fighters@email.com', '(77) 9898-0990', '2025-01-13 13:00:09', '2025-01-13 13:00:09', NULL),
(12, 'd2e31f59-434a-43a3-8c7d-cd9df96fbc35', 3, 'Super Aja', '78.312.166/0001-30', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Battle Tendency', 97, 'super.aja@email.com', '(77) 9979-6064', '2025-02-11 08:08:44', '2025-02-11 08:08:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`id`, `uuid`, `nome`, `cnpj`, `cep`, `uf`, `cidade`, `bairro`, `logradouro`, `numero`, `email`, `telefone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3bf5d31e-af11-4b63-a5a9-74f0aea589b2', 'Scarlet Overdrive', '92.772.051/0001-50', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Phantom Blood', 140, 'scarlet.overdrive@email.com', '(77) 9090-5021', NULL, NULL, NULL),
(2, 'cb1b2d11-aaa1-44c0-8902-0e2a301552ba', 'The World', '68.611.034/0001-56', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Stardust Crusaders', 138, 'the.world@email.com', '(77) 9980-9747', NULL, NULL, NULL),
(3, 'bf7ad11c-58c8-480e-b4dd-41dfa72a692e', 'Tusk', '56.891.048/0001-91', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Steel Ball Run', 159, 'tusk@email.com', '(77) 9804-7001', NULL, NULL, NULL),
(4, '645eeac3-4e69-4493-b8b5-b4d0485df357', 'Ball Breaker', '21.972.182/0001-32', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Steel Ball Run', 128, 'ball.breaker@email.com', '(77) 9940-6801', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locais_coleta`
--

CREATE TABLE `locais_coleta` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `cliente_id` bigint UNSIGNED NOT NULL,
  `cep` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locais_coleta`
--

INSERT INTO `locais_coleta` (`id`, `uuid`, `empresa_id`, `cliente_id`, `cep`, `uf`, `cidade`, `bairro`, `logradouro`, `numero`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3e3ec932-54a0-4e1e-b901-a30323e8c757', 3, 1, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Star Platinum', 57, '2024-11-14 07:26:16', '2024-11-14 07:26:16', NULL),
(2, '113f7444-6dd9-482b-b106-9a4ea7894f8d', 3, 2, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Hermit Purple', 81, '2024-11-14 07:26:37', '2024-11-14 07:26:37', NULL),
(3, '359c8c3e-3f4a-42c0-8a07-da006ba3ac86', 3, 3, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Magician\'s Red', 118, '2024-11-14 07:27:14', '2024-11-14 07:27:14', NULL),
(4, '1304cd58-0ae2-4513-9435-7fe380315797', 3, 4, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Hierophant Green', 39, '2024-11-14 07:28:02', '2024-11-14 07:30:15', NULL),
(5, 'ed619da9-13a6-4142-827c-ad20ea07c70f', 3, 5, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Silver Chariot', 78, '2024-11-14 07:28:50', '2024-11-14 07:28:50', NULL),
(6, 'c836d9f1-7e7c-40e4-82ca-4d59101437c1', 3, 6, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'The Fool', 46, '2024-11-14 07:29:50', '2024-11-14 07:29:50', NULL),
(7, '2c8b8c2c-3b43-47f5-9970-a96cef452edb', 2, 7, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Sticky Fingers', 31, '2024-11-14 07:41:18', '2024-11-14 07:41:28', NULL),
(8, 'bf8087d1-1105-4cf1-a87e-c2ea9fd9ddaa', 2, 8, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Gold Experience', 75, '2024-11-14 07:42:04', '2024-11-14 07:42:04', NULL),
(9, 'd7b38cb6-275e-41bd-961f-5858716fe273', 2, 9, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Moody Blues', 90, '2024-11-14 07:42:39', '2024-11-14 07:42:39', NULL),
(10, '339ff282-dfe2-49b1-9426-786b803bb72f', 2, 10, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Aerosmith', 54, '2024-11-14 07:43:27', '2024-11-14 07:43:27', NULL),
(11, 'a9ee3bce-94d3-4ed7-a486-ddf4b5b0e547', 2, 11, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Purple Haze', 58, '2024-11-14 07:44:32', '2024-11-14 07:44:32', NULL),
(12, 'ed1537cb-ef92-435c-bdab-d6902d71b86f', 2, 12, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Sex Pistols', 70, '2024-11-14 07:45:24', '2024-11-14 07:45:38', NULL),
(13, '95cfd467-1f6e-4da5-9258-bf58920f1a50', 2, 13, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Spice Girl', 120, '2024-11-14 07:46:26', '2024-11-14 07:46:26', NULL),
(14, 'ef279435-d19e-4284-830f-1d6a2dfed590', 3, 14, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'The House of Earth', 108, '2024-11-14 14:30:38', '2025-02-11 08:06:15', NULL),
(15, 'b6c1ecd8-d2a1-4644-b62b-be6e3174084a', 3, 15, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Crazy Diamond', 77, '2024-11-14 19:11:10', '2024-11-14 19:11:10', NULL),
(16, 'cc69bbea-4e94-419e-bba2-ed427495ee0d', 3, 16, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Stone Free', 376, '2024-11-15 10:10:26', '2024-11-15 10:10:26', NULL),
(17, '71d18aae-deb3-4eee-b77c-b8b1ca7e49c1', 3, 17, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Kiss', 311, '2024-11-15 10:10:57', '2024-11-15 10:15:46', NULL),
(18, 'c4f28966-7f53-4896-ab5e-51b51c52573d', 3, 18, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Heavy Weather', 10, '2024-11-15 10:20:06', '2024-11-15 10:20:06', NULL),
(19, '52e2a88c-b26d-4f75-b5a7-4752694287eb', 3, 19, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Earth Wind and Fire', 276, '2024-11-18 11:57:10', '2024-11-18 11:57:10', NULL),
(20, '06ba1ae3-ae38-4711-9e56-b1176ea854cc', 3, 20, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Pearl Jam', 311, '2024-11-24 15:31:46', '2024-11-24 15:31:46', NULL),
(21, 'd67a3276-66bf-42b4-b03e-f209d01734ef', 3, 21, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Cinderella', 107, '2024-11-24 15:31:56', '2024-11-24 15:31:56', NULL),
(22, 'f89d209c-07c9-4972-ab04-eea59a401a2e', 3, 22, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Diver Down', 19, '2024-11-26 08:35:38', '2024-11-26 08:35:38', NULL),
(23, '3cbe17e6-c3bf-4d76-8e00-886e433e839e', 3, 23, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Burning Down the House', 119, '2024-11-26 08:36:21', '2024-11-26 08:36:21', NULL),
(24, '73b2e74f-c344-44c5-97b2-cd33a7a0430e', 3, 24, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Heaven\'s Door', 178, '2024-12-02 08:44:56', '2024-12-02 08:44:56', NULL),
(25, '81b862f0-44d7-474e-9535-d283828e59ac', 3, 25, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'The Hand', 257, '2024-12-02 08:47:21', '2024-12-02 08:47:21', NULL),
(26, '398e5b7a-e6eb-4a75-8696-8cc8a710a5e3', 3, 26, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Echoes', 49, '2024-12-02 09:02:56', '2024-12-02 09:02:56', NULL),
(27, '150ab308-1810-407d-8dc8-4d26d034961b', 3, 27, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Harvest', 114, '2024-12-12 19:41:56', '2024-12-12 19:41:56', NULL),
(28, '96e1e04e-a954-4659-863e-1aa0acbe5e0c', 3, 28, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Highway Star', 135, '2024-12-27 19:14:16', '2024-12-27 19:14:16', NULL),
(29, '74df4b7b-ed77-4131-89cb-bdff8eaf708d', 3, 29, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Love Deluxe', 80, '2024-12-30 19:12:32', '2024-12-30 19:12:32', NULL),
(30, 'a95d3482-f8fa-4506-9a47-9ee672695a5e', 4, 30, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Cream Starter', 14, '2025-01-12 09:23:17', '2025-01-12 09:23:39', NULL),
(31, 'b3cc377d-6628-4d04-88d2-ce07a3810406', 4, 31, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'High Priestess', 58, '2025-01-12 09:24:33', '2025-01-12 09:24:33', NULL),
(32, '7a4c5107-5ebe-40a5-9d03-712610caca94', 4, 32, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Ticket to Ride', 140, '2025-01-12 15:00:24', '2025-01-12 15:00:24', NULL),
(33, 'ef983fee-caba-4c76-856b-0b9f7b8b69fa', 3, 33, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'The Lock', 46, '2025-02-08 19:50:16', '2025-02-08 19:50:16', NULL),
(34, 'b01dae2a-0e98-4664-87d8-fa3934c7ad39', 3, 34, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Surface', 196, '2025-02-08 19:51:00', '2025-02-08 19:51:00', NULL),
(35, '78a250f7-0f67-4b41-ac61-5782e0195a16', 3, 35, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Achtung Baby', 94, '2025-02-08 19:51:50', '2025-02-08 19:51:50', NULL),
(36, 'e83eb971-edf9-4a2e-9408-98fd29e75b82', 3, 36, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Bubble Launcher\'s', 20, '2025-02-11 08:13:19', '2025-02-11 08:13:19', NULL),
(37, '8100432c-6231-44b1-9d7b-926469d42600', 3, 37, '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Bad Company', 145, '2025-02-25 10:49:19', '2025-02-25 10:49:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(101, '0001_01_01_000000_create_empresas_table', 1),
(102, '0001_01_01_000000_create_users_table', 1),
(103, '0001_01_01_000001_create_cache_table', 1),
(104, '0001_01_01_000002_create_jobs_table', 1),
(105, '2024_08_31_102921_create_clientes_table', 1),
(106, '2024_08_31_102921_create_depositos_residuos_table', 1),
(107, '2024_08_31_102921_create_tipos_residuos_table', 1),
(108, '2024_08_31_104423_create_locais_coleta_table', 1),
(109, '2024_08_31_114932_create_motoristas_table', 1),
(110, '2024_08_31_115535_create_veiculos_table', 1),
(111, '2024_09_02_082901_create_coletas_table', 1),
(112, '2024_09_06_144200_create_ufs_table', 1),
(113, '2024_09_27_150651_create_permission_tables', 1),
(114, '2024_09_29_180549_create_users_empresas_table', 1),
(115, '2024_11_30_113525_create_notifications_table', 1),
(116, '2026_04_13_091001_add_custom_fields_to_users_table', 1),
(117, '2026_04_13_091002_add_avatar_url_to_users_table', 1),
(118, '2026_04_13_093402_create_personal_access_tokens_table', 1),
(119, '2026_07_01_085425_add_valor_quilo_to_coletas_table', 1),
(120, '2026_07_14_134652_change_columns_to_coletas_table', 1),
(121, '2026_07_26_085919_alter_valor_diaria_precision_on_coletas_table', 1),
(122, '2026_08_05_133247_create_activity_log_table', 1),
(123, '2026_08_05_133248_add_event_column_to_activity_log_table', 1),
(124, '2026_08_05_133249_add_batch_uuid_column_to_activity_log_table', 1),
(125, '2026_08_06_095353_add_uuid_to_activity_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `motoristas`
--

CREATE TABLE `motoristas` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnh` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `motoristas`
--

INSERT INTO `motoristas` (`id`, `uuid`, `empresa_id`, `nome`, `cpf`, `cnh`, `categoria`, `email`, `telefone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dbdfb426-14fb-4cc3-bc4f-d0322942da96', 2, 'Diavolo', '215.574.400-50', '54720368965', 'C', 'diavolo@email.com', '(77) 8909-9783', '2024-11-14 07:11:46', '2024-12-26 09:04:06', NULL),
(2, 'f0029904-bed0-4943-8489-fb2daa862218', 2, 'Vinegar Doppio', '726.918.470-47', '20595006458', 'C', 'vinegar.doppio@email.com', '(77) 9989-7283', '2024-11-14 07:12:57', '2024-11-25 07:14:38', NULL),
(3, '28fbd50d-9ddb-408b-ae1c-adf3343ebfd7', 3, 'Funny Valentine', '807.008.180-57', '09441120840', 'C', 'funny.valentine@email.com', '(77) 8998-9687', '2024-11-14 07:14:40', '2025-01-08 14:02:33', NULL),
(4, 'a0a53d99-6380-4b4e-bc60-c170be817c9e', 3, 'Yoshikage Kira', '725.976.030-32', '93965366955', 'C', 'yoshikage.kira@email.com', '(77) 8884-0123', '2024-11-14 07:15:33', '2024-11-14 07:15:33', NULL),
(5, '5526818c-ccab-4f65-b81b-71756ef6ed23', 3, 'Kars', '933.720.200-06', '43479785062', 'C', 'kars.pillar-men@email.com', '(77) 8889-2107', '2024-11-14 07:56:04', '2025-02-11 08:09:23', NULL),
(6, '1ca497db-5a26-4627-8b74-d41b8a53f7aa', 3, 'Esidisi', '702.751.000-65', '73860001388', 'C', 'esidisi.pillar-men@email.com', '(77) 9082-7311', '2024-11-14 07:57:15', '2025-02-11 08:09:23', NULL),
(7, '9887f021-61d9-449b-ae54-4f706da73c2a', 3, 'Wamuu', '804.251.990-70', '00166458102', 'C', 'wamuu.pillar-men@email.com', '(77) 9909-0901', '2024-11-14 07:58:18', '2025-02-11 08:09:23', NULL),
(8, '517a0f92-d2e9-4644-8d7a-ca93558b4ed2', 2, 'Risotto Nero', '007.860.710-87', '64999749974', 'C', 'risotto.nero@email.com', '(77) 9997-8912', '2024-11-14 09:32:35', '2024-11-14 09:32:35', NULL),
(9, 'cd15cc94-f275-4c7b-b1a6-cfa7231747e6', 3, 'Enrico Pucci', '819.850.770-19', '76054677888', 'C', 'enrico.pucci@email.com', '(77) 9809-5698', '2024-11-15 09:58:40', '2024-11-15 09:58:40', NULL),
(10, 'c6387789-c672-47ae-a6bf-15cd8100ec11', 2, 'Cioccolata', '935.074.870-39', '66624704036', 'C', 'cioccolata@email.com', '(77) 8899-8897', '2024-11-17 15:07:05', '2024-11-17 15:07:05', NULL),
(11, '3e58bad9-8f39-4f48-86ba-fdae421ed285', 2, 'Secco', '457.573.910-30', '50787284851', 'C', 'secco@email.com', '(77) 8987-9979', '2024-11-17 15:09:19', '2024-11-17 15:09:19', NULL),
(12, 'dd089144-9c52-4b31-a7c9-ac5721570c6e', 3, 'Vanilla Ice', '611.653.380-92', '92773542745', 'C', 'vanilla.ice@email.com', '(77) 9092-8790', '2024-11-19 07:48:25', '2024-11-19 07:48:25', NULL),
(13, '74e1786c-1b13-4d17-ad18-014f4add039f', 3, 'Toru', '306.516.860-08', '89697235827', 'C', 'toru@email.com', '(77) 8980-9700', '2024-12-18 08:06:45', '2024-12-18 08:08:08', NULL),
(14, '8d9238d8-f03c-4468-8a9e-3524585ec445', 2, 'Polpo', '420.445.220-55', '21666728197', 'C', 'polpo@email.com', '(77) 9998-8909', '2025-01-04 07:15:31', '2025-01-04 07:15:31', NULL),
(15, '531e3505-c515-4fe7-b2a2-026ef9f6026d', 4, 'Ringo Roadagain', '213.187.200-36', '55949451300', 'C', 'ringo.roadagain@email.com', '(77) 8890-9658', '2025-01-12 09:26:40', '2025-02-22 15:39:28', NULL),
(16, '0e9b3b9e-d2a7-43e0-a464-23ee42ee0862', 4, 'Hol Horse', '989.030.170-99', '49418012465', 'C', 'hol.horse@email.com', '(77) 8989-0890', '2025-01-12 09:28:03', '2025-01-12 09:50:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `uuid`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'f95479d5-ee5c-4f52-be46-12d759a9452d', 'admins:index', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(2, 'f22e18f9-39c6-48c4-a220-185b78063c75', 'admins:create', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(3, 'dd46826e-c1e2-40bd-8988-07e1a51828a8', 'admins:store', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(4, '34c64b82-47f1-4553-b2bd-65d5e28714d2', 'admins:show', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(5, 'd6b468a9-ba6b-4a7d-8079-849815fdc67f', 'admins:edit', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(6, '9b1a4bd6-4c78-4310-be45-f4f9424b2751', 'admins:update', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(7, 'd118355f-ebd7-4700-a7c2-2d41cbbf4268', 'admins:destroy', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(8, '58544000-52b6-4f16-999a-b5a2373166fe', 'users:index', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(9, 'e27f1aed-b079-4415-81ea-c6435e722066', 'users:create', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(10, '37a89056-238f-4107-a993-67ef779c84cd', 'users:store', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(11, 'eb795bb3-99db-42d3-a53c-3c0aee96da22', 'users:show', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(12, '56d25af3-cf0b-4b5f-a03f-3ef778848f04', 'users:edit', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(13, 'a628a13d-9011-4652-a9e8-12906710161b', 'users:update', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(14, '83a08cab-ffe8-44b6-8e53-b1445745eb33', 'users:destroy', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(15, 'dda87f15-33be-4eff-9098-092844ad8dab', 'superadmins:index', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(16, 'aa2fe32d-c1dd-478e-b68a-034c2f08a308', 'superadmins:create', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(17, '16eb2f3e-767a-4274-8eef-dd9e56260e08', 'superadmins:store', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(18, 'c9b33460-af89-4fc6-a247-8a2875a9f481', 'superadmins:show', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(19, 'a261e3c3-eb1f-44d3-be57-721332a63f00', 'superadmins:edit', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(20, '52904f5c-629a-4bde-9522-1156eedc76f6', 'superadmins:update', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(21, '6cb8ff5e-f96f-4532-ac4f-7552985d9206', 'superadmins:destroy', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `uuid`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '885df822-3974-420f-badb-042ee818e51c', 'Admin', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(2, 'ac4527b2-8907-4615-a1e0-38ee138e71d0', 'User', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL),
(3, '093fa50c-7f43-46ea-90ea-411142e93751', 'Super Admin', 'web', '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4adfTsuNWuvYNv6Yoi8c1UnWSQIY1EtM7wPGErLL', 2, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJbXA2TTB3eGEzVjJVbTA0UVZOdGRHNWxWbEIyVjJjOVBTSXNJblpoYkhWbElqb2lhR1ZpTlhWbVdFaFJkRU4wZGt4WVdXTjRZMGRaWldWbGNsZG9NaTl0Y2xvNU1qZEROeXQ0ZVZKNFpTOWFiVVk0VTBJMGFqQjBkbk5OWlVGQldWWjVSMVJ1WlRjemVHdEJORnBKT0dnMGJqSmFRMFE0VTA1clYxUklaQzk2TXpoM1ducHBaa1JFVlVwdVYxWXZhMWhwVTJ0VVduSjBkRU5LWjJGU1ZUZG1lRlJCWldaMFNFMUNla0poY2poSllUbDJSVWcxYlhOeFVrRTVXR0lyZWpWblFXWjVSRW8wSzB3MFdVdFFTR3RCUWtwSGVUZEZaWEEyY1Vsb2R6QnlSWEoxVFd4UmNHSkhLMFYwTm5obWN6aFJSRlV4WmxsM1EwVnNLMlZuU3k5RWVYUkNkRzlhYWswelUyOTNXWGhKVlRaa2RHczNXVmxHV2pJclFYTXJVSFEwZEVKSFZEZGlhM0ppVmxaTFJVbFpVMDQwV0dJd1FrdE1NM2gyY1ZsYWMydEpkbTkzVjJkbFEwWXJWVFZsTDBkNWJYSkhRbW94VTFCWmQxbHdRbXBoV0Roa1QwNHJWblkxVkhnNVpERm1lWE50ZDNvcldFVnhWakkxYzI1cFFXSjJTM0JtZFdwVFRrNW5ObFZSV0RSWmFYa3daa3c0Y1dZMGNYSktaVWRsUVdGb1NsaFJUR0pQWTNCUVRsSnpiVUpuVm0xMlJrRXJlRlJ3YUdZdlRFbzJhMHRqTmtkVlZYWmtXV1p4ZG5aNVoxZDJWM0JuYVZCTGRHODBjME5NWVV0c2JHZFhWVU5oYzNaMVVEVnhObVJ3VFRJeVdUTldURmszV1UxaWNFUnllRWR4ZURRelZtUnhTVkpIWW5aS2JGcElRVEZESzNaeFdrRTBkMko1THl0cVlqSlFlbXRWYkVkaUwyaGpTazV1ZWxwdWVFdE1Xbk15V1U5TlkyeFFOR3hZZDFCc1RXUm9USGRhYzBGYWQzRlpTM1ZWVjBSRkwyOU1URzVaVUhsNWFVMVJJaXdpYldGaklqb2laR1V6TVRWbU16VTRPRFEzTkRSaE5ERTRZMlJqTVRObE9UTm1OVGxoWVRaa01qZzVNVEUxT0RRek16UmtORFUwTkRZeVpqUXlZV00zWW1Zd09HVXdZaUlzSW5SaFp5STZJaUo5', 1787574225);

-- --------------------------------------------------------

--
-- Table structure for table `tipos_residuos`
--

CREATE TABLE `tipos_residuos` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipos_residuos`
--

INSERT INTO `tipos_residuos` (`id`, `uuid`, `empresa_id`, `descricao`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'efb1ad83-2b34-444a-a423-f86af9028e6b', 2, 'Classe A', '2024-11-14 07:08:12', '2025-02-22 15:36:43', NULL),
(2, 'b459536b-42ad-499b-aeec-21e186927afe', 2, 'Classe B', '2024-11-14 07:08:22', '2025-02-22 15:36:55', NULL),
(3, '6c71fe85-f3ac-44c9-bc49-f2f95afe0737', 2, 'Classe C', '2024-11-14 07:08:31', '2025-02-22 15:37:08', NULL),
(4, '70276117-43f4-466e-9369-943f0a2bf86b', 3, 'Classe D', '2024-11-14 07:17:30', '2025-02-22 15:37:31', NULL),
(5, '38881130-121b-4ba0-b440-c59065d98ba8', 3, 'Classe E', '2024-11-14 07:17:39', '2025-02-22 15:37:41', NULL),
(6, 'ceb2a885-396a-48f7-9905-0e9168167a97', 3, 'Classe F', '2024-11-14 07:17:49', '2025-02-22 15:37:53', NULL),
(7, '9900f90d-0b88-4a72-9474-664f4c23807b', 4, 'Classe G', '2025-01-12 09:32:33', '2025-02-22 15:38:27', NULL),
(8, 'e9814200-2ab2-4354-b647-691094409458', 4, 'Classe F', '2025-01-12 09:32:47', '2025-02-22 15:38:39', NULL),
(9, '222cdade-ae08-4ef3-8a04-5d4f26f03583', 4, 'Classe I', '2025-01-30 19:55:01', '2025-02-22 15:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ufs`
--

CREATE TABLE `ufs` (
  `id` bigint UNSIGNED NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ufs`
--

INSERT INTO `ufs` (`id`, `estado`, `sigla`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Acre', 'AC', NULL, NULL, NULL),
(2, 'Alagoas', 'AL', NULL, NULL, NULL),
(3, 'Amapá', 'AP', NULL, NULL, NULL),
(4, 'Amazonas', 'AM', NULL, NULL, NULL),
(5, 'Bahia', 'BA', NULL, NULL, NULL),
(6, 'Ceará', 'CE', NULL, NULL, NULL),
(7, 'Distrito Federal', 'DF', NULL, NULL, NULL),
(8, 'Espírito Santo', 'ES', NULL, NULL, NULL),
(9, 'Goiás', 'GO', NULL, NULL, NULL),
(10, 'Maranhão', 'MA', NULL, NULL, NULL),
(11, 'Mato Grosso', 'MT', NULL, NULL, NULL),
(12, 'Mato Grosso do Sul', 'MS', NULL, NULL, NULL),
(13, 'Minas Gerais', 'MG', NULL, NULL, NULL),
(14, 'Pará', 'PA', NULL, NULL, NULL),
(15, 'Paraíba', 'PB', NULL, NULL, NULL),
(16, 'Paraná', 'PR', NULL, NULL, NULL),
(17, 'Pernambuco', 'PE', NULL, NULL, NULL),
(18, 'Piauí', 'PI', NULL, NULL, NULL),
(19, 'Rio de Janeiro', 'RJ', NULL, NULL, NULL),
(20, 'Rio Grande do Norte', 'RN', NULL, NULL, NULL),
(21, 'Rio Grande do Sul', 'RS', NULL, NULL, NULL),
(22, 'Rondônia', 'RO', NULL, NULL, NULL),
(23, 'Roraima', 'RR', NULL, NULL, NULL),
(24, 'Santa Catarina', 'SC', NULL, NULL, NULL),
(25, 'São Paulo', 'SP', NULL, NULL, NULL),
(26, 'Sergipe', 'SE', NULL, NULL, NULL),
(27, 'Tocantins', 'TO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `custom_fields` json DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `custom_fields`, `avatar_url`) VALUES
(1, 'aba0f5aa-d476-4795-ac73-982887429614', 'Jonathan Joestar', 'jonathan.joestar@email.com', '2026-08-24 09:16:55', '$2y$12$FQnkfRyJJEMC9pj/mmPogeWMlThHanCxyOtZnryyVrjKaP8ILvRs6', NULL, '2026-08-24 09:16:55', '2026-08-24 09:16:55', NULL, NULL, NULL),
(2, 'e10ec504-0bc6-4828-9378-8fca9369039f', 'Dio Brando', 'dio.brando@email.com', '2026-08-24 09:16:55', '$2y$12$t0ufJ72v4rZbMHIAq/mGM.p7S6185umwtO6B97eK01TKSb/Tn9/0W', NULL, '2026-08-24 09:16:56', '2026-08-24 09:16:56', NULL, NULL, NULL),
(3, '5485b30d-6433-4f9d-9ab2-3aaa6845d712', 'Johnny Joestar', 'johnny.joestar@email.com', '2026-08-24 09:16:56', '$2y$12$8hS9ezcMigubw1OmLyKmlO3GJ7D3w.Wa9oPzvl425a7.2Z21cxvnq', NULL, '2026-08-24 09:16:57', '2026-08-24 09:16:57', NULL, NULL, NULL),
(4, '15bedd84-347b-4ed5-8c06-188929fe31a1', 'Gyro Zeppeli', 'gyro.zeppeli@email.com', '2026-08-24 09:16:57', '$2y$12$WmSp5gpISBzrPUh.Wxa9NeHOqOr2UXD6L/pJStvEKmdLsoWRo6Hw6', NULL, '2026-08-24 09:16:57', '2026-08-24 09:16:57', NULL, NULL, NULL),
(5, 'dd63f28a-499f-4edc-b2c2-2e6618e7ef9d', 'Diego Brando', 'diego.brando@email.com', '2026-08-24 09:16:57', '$2y$12$HrNMAqGGXkkpzYX5Frv5zOfatBJ9bkudqisPYZkJ6mzpgH.BbhsbS', NULL, '2026-08-24 09:16:58', '2026-08-24 09:16:58', NULL, NULL, NULL),
(6, 'efa430ce-13d6-4198-aa1b-94e4466d23e2', 'Hirohiko Araki', 'hirohiko.araki@email.com', '2026-08-24 09:16:58', '$2y$12$Dmh8YKWkldOZGu8xfL1jIejRWoksvS508nfUhwDCD73NbblEfGAQa', NULL, '2026-08-24 09:16:59', '2026-08-24 09:16:59', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_empresas`
--

CREATE TABLE `users_empresas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_empresas`
--

INSERT INTO `users_empresas` (`id`, `user_id`, `empresa_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL),
(3, 2, 3, NULL, NULL, NULL),
(4, 2, 4, NULL, NULL, NULL),
(5, 3, 3, NULL, NULL, NULL),
(6, 4, 4, NULL, NULL, NULL),
(7, 5, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `veiculos`
--

CREATE TABLE `veiculos` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` bigint UNSIGNED NOT NULL,
  `placa_veiculo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `veiculos`
--

INSERT INTO `veiculos` (`id`, `uuid`, `empresa_id`, `placa_veiculo`, `modelo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ff6d9116-efbb-4655-b02b-fd78004dded8', 2, 'JSL-3270', 'Modelo JSL-3270', 'Disponível', '2024-11-14 07:09:51', '2024-11-14 07:09:51', NULL),
(2, 'eaf2e877-6b00-46c1-a3de-2e2ec08e40dd', 2, 'JPD-2205', 'Modelo JPD-2205', 'Disponível', '2024-11-14 07:10:16', '2024-11-14 07:10:16', NULL),
(3, '0c96a08a-ac32-4d80-aa2f-54aa9a937130', 2, 'JMD-5706', 'Modelo JMD-5706', 'Em manutenção', '2024-11-14 07:10:36', '2025-01-11 19:13:39', NULL),
(4, 'dea02c03-03bc-44a5-94e0-2020c2d0e106', 3, 'JCA-5548', 'Modelo JCA-5548', 'Disponível', '2024-11-14 07:18:33', '2024-11-14 07:18:33', NULL),
(5, 'b97f298f-660a-457b-9fdb-be5b7c2a9c4f', 3, 'MOI-9612', 'Modelo MOI-9612', 'Disponível', '2024-11-14 07:18:50', '2024-11-14 07:18:50', NULL),
(6, '0a205ed9-6c5f-45e8-8ae0-61f03e41546b', 3, 'IMM-7586', 'Modelo IMM-7586', 'Disponível', '2024-11-15 09:59:19', '2024-11-15 09:59:19', NULL),
(7, '38c729e9-7d5f-4e19-90a6-e9402e37cd4f', 2, 'HPU-4962', 'Modelo HPU-4962', 'Disponível', '2024-11-21 14:11:11', '2024-11-21 14:11:11', NULL),
(8, '512d210c-d545-4067-8e5d-6504b013c6d9', 2, 'NES-9309', 'Modelo NES-9309', 'Disponível', '2024-11-21 14:11:44', '2025-01-11 19:12:57', NULL),
(9, '610ab164-d9d0-4182-b3cd-2eab9ca72d1f', 3, 'KRL8R16', 'Modelo KRL8R16', 'Em manutenção', '2024-12-06 12:58:52', '2024-12-06 12:58:52', NULL),
(10, '2da8062e-f0d7-4014-bafc-31033e0da1f0', 3, 'USS9D89', 'Modelo USS9D89', 'Em manutenção', '2024-12-06 12:59:30', '2024-12-06 12:59:30', NULL),
(11, '5980015a-89cd-4574-8aba-0652046dcf8e', 4, 'AGK-9742', 'Modelo AGK-9742', 'Disponível', '2025-01-12 09:31:03', '2025-01-12 09:31:03', NULL),
(12, 'b19c87f6-5e55-4f95-a0b0-81eb8bb0781d', 4, 'FPY-0515', 'Modelo FPY-0515', 'Disponível', '2025-01-12 09:31:50', '2025-01-12 09:31:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activity_log_uuid_unique` (`uuid`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

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
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_uuid_unique` (`uuid`),
  ADD KEY `clientes_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `coletas`
--
ALTER TABLE `coletas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coletas_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `coletas_codigo_coleta_unique` (`codigo_coleta`),
  ADD KEY `coletas_empresa_id_foreign` (`empresa_id`),
  ADD KEY `coletas_local_coleta_id_foreign` (`local_coleta_id`),
  ADD KEY `coletas_tipo_residuo_id_foreign` (`tipo_residuo_id`),
  ADD KEY `coletas_motorista_id_foreign` (`motorista_id`),
  ADD KEY `coletas_veiculo_id_foreign` (`veiculo_id`),
  ADD KEY `coletas_deposito_residuo_id_foreign` (`deposito_residuo_id`);

--
-- Indexes for table `depositos_residuos`
--
ALTER TABLE `depositos_residuos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `depositos_residuos_uuid_unique` (`uuid`),
  ADD KEY `depositos_residuos_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empresas_uuid_unique` (`uuid`);

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
-- Indexes for table `locais_coleta`
--
ALTER TABLE `locais_coleta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locais_coleta_uuid_unique` (`uuid`),
  ADD KEY `locais_coleta_empresa_id_foreign` (`empresa_id`),
  ADD KEY `locais_coleta_cliente_id_foreign` (`cliente_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `motoristas`
--
ALTER TABLE `motoristas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `motoristas_uuid_unique` (`uuid`),
  ADD KEY `motoristas_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD UNIQUE KEY `permissions_uuid_unique` (`uuid`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  ADD UNIQUE KEY `roles_uuid_unique` (`uuid`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tipos_residuos`
--
ALTER TABLE `tipos_residuos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipos_residuos_uuid_unique` (`uuid`),
  ADD KEY `tipos_residuos_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `ufs`
--
ALTER TABLE `ufs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_empresas`
--
ALTER TABLE `users_empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_empresas_user_id_foreign` (`user_id`),
  ADD KEY `users_empresas_empresa_id_foreign` (`empresa_id`);

--
-- Indexes for table `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `veiculos_uuid_unique` (`uuid`),
  ADD KEY `veiculos_empresa_id_foreign` (`empresa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `coletas`
--
ALTER TABLE `coletas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `depositos_residuos`
--
ALTER TABLE `depositos_residuos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locais_coleta`
--
ALTER TABLE `locais_coleta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `motoristas`
--
ALTER TABLE `motoristas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipos_residuos`
--
ALTER TABLE `tipos_residuos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ufs`
--
ALTER TABLE `ufs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_empresas`
--
ALTER TABLE `users_empresas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `coletas`
--
ALTER TABLE `coletas`
  ADD CONSTRAINT `coletas_deposito_residuo_id_foreign` FOREIGN KEY (`deposito_residuo_id`) REFERENCES `depositos_residuos` (`id`),
  ADD CONSTRAINT `coletas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `coletas_local_coleta_id_foreign` FOREIGN KEY (`local_coleta_id`) REFERENCES `locais_coleta` (`id`),
  ADD CONSTRAINT `coletas_motorista_id_foreign` FOREIGN KEY (`motorista_id`) REFERENCES `motoristas` (`id`),
  ADD CONSTRAINT `coletas_tipo_residuo_id_foreign` FOREIGN KEY (`tipo_residuo_id`) REFERENCES `tipos_residuos` (`id`),
  ADD CONSTRAINT `coletas_veiculo_id_foreign` FOREIGN KEY (`veiculo_id`) REFERENCES `veiculos` (`id`);

--
-- Constraints for table `depositos_residuos`
--
ALTER TABLE `depositos_residuos`
  ADD CONSTRAINT `depositos_residuos_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `locais_coleta`
--
ALTER TABLE `locais_coleta`
  ADD CONSTRAINT `locais_coleta_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `locais_coleta_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `motoristas`
--
ALTER TABLE `motoristas`
  ADD CONSTRAINT `motoristas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tipos_residuos`
--
ALTER TABLE `tipos_residuos`
  ADD CONSTRAINT `tipos_residuos_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `users_empresas`
--
ALTER TABLE `users_empresas`
  ADD CONSTRAINT `users_empresas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `users_empresas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `veiculos`
--
ALTER TABLE `veiculos`
  ADD CONSTRAINT `veiculos_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
