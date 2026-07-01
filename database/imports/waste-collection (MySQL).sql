-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 01, 2026 at 01:59 PM
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
('livewire-rate-limiter:5b5e86c7b451e5528739380cdc97d0344b1eb460', 'i:1;', 1782909630),
('livewire-rate-limiter:5b5e86c7b451e5528739380cdc97d0344b1eb460:timer', 'i:1782909630;', 1782909630),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"uuid\";s:1:\"c\";s:4:\"name\";s:1:\"d\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:14:{i:0;a:5:{s:1:\"a\";i:1;s:1:\"b\";s:36:\"a7a15ec6-7bd4-460e-8c6f-8dbedb65d701\";s:1:\"c\";s:12:\"admins:index\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:5:{s:1:\"a\";i:2;s:1:\"b\";s:36:\"f30768f0-00dc-4b68-87bc-60aaa5bdff42\";s:1:\"c\";s:13:\"admins:create\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:5:{s:1:\"a\";i:3;s:1:\"b\";s:36:\"dfbf757f-ba18-4ac7-b907-dc78cd1ce523\";s:1:\"c\";s:12:\"admins:store\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:36:\"29e74984-e2ff-4387-a778-c5c3d524943b\";s:1:\"c\";s:11:\"admins:show\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:5:{s:1:\"a\";i:5;s:1:\"b\";s:36:\"255a22be-1a54-4d89-a580-c13004485b83\";s:1:\"c\";s:11:\"admins:edit\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:5:{s:1:\"a\";i:6;s:1:\"b\";s:36:\"7b0d8c3c-bb15-46fa-af08-1eebc76f63a0\";s:1:\"c\";s:13:\"admins:update\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:5:{s:1:\"a\";i:7;s:1:\"b\";s:36:\"24704e7f-3737-4a96-8b3b-81331f316f56\";s:1:\"c\";s:14:\"admins:destroy\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:5:{s:1:\"a\";i:8;s:1:\"b\";s:36:\"7bc1a54d-d87a-4146-a3ce-6d36bb5a6410\";s:1:\"c\";s:11:\"users:index\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:8;a:5:{s:1:\"a\";i:9;s:1:\"b\";s:36:\"34977f7b-e86e-4b15-b486-91f0310f9e8d\";s:1:\"c\";s:12:\"users:create\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:9;a:5:{s:1:\"a\";i:10;s:1:\"b\";s:36:\"8f50c946-495a-4341-83d9-982dbabe5d63\";s:1:\"c\";s:11:\"users:store\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:10;a:5:{s:1:\"a\";i:11;s:1:\"b\";s:36:\"bfc6064b-5664-4d16-b07c-ab743a0a35cf\";s:1:\"c\";s:10:\"users:show\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:11;a:5:{s:1:\"a\";i:12;s:1:\"b\";s:36:\"3d602d4e-4905-4bef-9b6d-031ba37a0f1b\";s:1:\"c\";s:10:\"users:edit\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:12;a:5:{s:1:\"a\";i:13;s:1:\"b\";s:36:\"5df29e76-1f89-448e-853f-976b0605a5c9\";s:1:\"c\";s:12:\"users:update\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:13;a:5:{s:1:\"a\";i:14;s:1:\"b\";s:36:\"ffa04cea-2e9f-4ce3-9189-412f731763b4\";s:1:\"c\";s:13:\"users:destroy\";s:1:\"d\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}}s:5:\"roles\";a:2:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:36:\"c42a59ab-747f-4a5b-8438-5f6a2238e145\";s:1:\"c\";s:5:\"Admin\";s:1:\"d\";s:3:\"web\";}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:36:\"4358cf91-e383-4ae2-97c2-63a9cd9ac6fc\";s:1:\"c\";s:4:\"User\";s:1:\"d\";s:3:\"web\";}}}', 1782995970);

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
(7, 'c489a209-1f8b-433c-b356-90d38ae92611', 2, 'Bruno Bucciarati', '333.537.520-30', 'bruno.bucciarati@email.com', '(77) 9048-2384', '2024-11-14 07:35:13', '2024-12-23 11:52:35', NULL),
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
  `valor_quilo` decimal(4,2) NOT NULL,
  `quantidade_residuos` decimal(12,3) NOT NULL,
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

INSERT INTO `coletas` (`id`, `uuid`, `codigo_coleta`, `empresa_id`, `local_coleta_id`, `tipo_residuo_id`, `motorista_id`, `veiculo_id`, `deposito_residuo_id`, `valor_quilo`, `quantidade_residuos`, `data_coleta`, `hora_coleta`, `valor_coleta`, `finalidade`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '0345342f-90ca-4354-9baa-a155e4e985bf', '24111415062X989', 2, 7, 1, 11, 1, 1, 1.94, 200.000, '2024-11-19', '11:10:00', 388.00, 'Reciclagem', 'Em andamento', '2024-11-14 10:13:48', '2026-07-01 10:05:47', NULL),
(2, 'c53d1c5d-2d0d-429e-a67f-68266ed4038c', '24111486065E510', 2, 8, 1, 10, 1, 1, 1.88, 150.000, '2024-11-18', '11:00:00', 282.00, 'Reciclagem', 'Em andamento', '2024-11-14 10:14:39', '2026-07-01 10:05:10', NULL),
(3, 'a63a9218-2682-4707-b097-ed5dedaa7e38', '24111479383Z583', 2, 9, 2, 2, 2, 3, 1.88, 160.000, '2024-11-16', '08:20:00', 300.80, 'Compostagem', 'Concluído', '2024-11-14 10:16:31', '2026-07-01 10:04:55', NULL),
(4, '6e27f101-ff46-404e-9581-afa2165f7556', '24111420310J249', 2, 10, 2, 2, 2, 3, 1.88, 240.000, '2024-11-19', '11:20:00', 451.20, 'Incineiração', 'Concluído', '2024-11-14 10:17:28', '2026-07-01 10:04:31', NULL),
(5, '1ca80c63-72f7-4576-9a59-ba0071d056a8', '24111458275N787', 2, 11, 3, 8, 2, 1, 1.88, 100.000, '2024-11-26', '14:20:00', 188.00, 'Compostagem', 'Em andamento', '2024-11-14 10:18:48', '2026-07-01 10:04:01', NULL),
(6, 'd2c56fab-e85c-4274-ac15-c868c6137310', '24111466548Z508', 2, 12, 3, 8, 1, 3, 1.96, 120012.000, '2024-11-27', '16:25:00', 235.22, 'Coprocessamento', 'Concluído', '2024-11-14 10:19:52', '2026-07-01 10:30:34', NULL),
(7, 'da994f4a-8079-4595-96ae-bb8c15568ea7', '24111492220E541', 2, 13, 1, 1, 2, 1, 1.88, 180597.000, '2024-12-02', '15:25:00', 339.52, 'Aterro controlado', 'Cancelado', '2024-11-14 10:21:29', '2026-07-01 10:22:01', NULL),
(8, 'dfd7559b-6035-430b-a0c1-1421bdf00754', '24111484431L491', 3, 1, 4, 3, 4, 2, 1.88, 214.000, '2024-11-18', '15:45:00', 402.32, 'Reciclagem', 'Em andamento', '2024-11-14 10:43:35', '2026-07-01 10:57:54', NULL),
(9, '188062d4-e000-4904-b76d-d043c799efb5', '24111443020I357', 3, 2, 4, 3, 4, 2, 1.96, 112.000, '2024-11-19', '08:50:00', 219.52, 'Reciclagem', 'Em andamento', '2024-11-14 10:44:30', '2026-07-01 10:58:31', NULL),
(10, '134a94a1-4066-48fc-9625-3f24f31b3cf4', '24111483808O948', 3, 3, 5, 4, 5, 2, 1.88, 161.000, '2024-11-16', '16:45:00', 302.68, 'Incineiração', 'Concluído', '2024-11-14 10:46:01', '2026-07-01 10:44:56', NULL),
(11, '589304ac-9a06-414c-93ad-cbc33f997b60', '24111458844O378', 3, 4, 5, 4, 5, 2, 1.96, 180005.000, '2024-11-20', '09:00:00', 352.81, 'Incineiração', 'Concluído', '2024-11-14 10:46:58', '2026-07-01 10:47:27', NULL),
(12, 'a1811e1c-f620-41a2-9227-a4d8bcbec1bb', '24111448857N447', 3, 5, 6, 4, 4, 2, 1.88, 187569.000, '2024-11-26', '08:50:00', 352.63, 'Coprocessamento', 'Concluído', '2024-11-14 10:48:40', '2026-07-01 10:50:17', NULL),
(13, '9cc50985-1e55-466d-8549-8ca7ce055fb9', '24111415328W990', 3, 6, 6, 3, 5, 2, 1.88, 170147.000, '2024-11-30', '14:50:00', 319.88, 'Aterro controlado', 'Cancelado', '2024-11-14 10:49:30', '2026-07-01 10:42:36', NULL),
(14, '40c6c27a-00e2-4e89-b83e-a346f756f249', '24111455620A462', 3, 14, 5, 5, 4, 12, 1.88, 151.000, '2024-12-04', '20:35:00', 283.88, 'Coprocessamento', 'Em andamento', '2024-11-14 14:31:49', '2026-07-01 10:57:19', NULL),
(15, 'd612b19f-2f7d-49af-ad78-88358fd7661e', '24111425240D441', 3, 15, 6, 4, 5, 4, 1.88, 201.000, '2024-12-03', '08:30:00', 377.88, 'Aterro controlado', 'Em andamento', '2024-11-14 19:12:07', '2026-07-01 10:56:56', NULL),
(16, '4c9c7135-a69c-4a5f-8fe9-dc023c07a259', '24111585890B515', 3, 16, 5, 9, 6, 11, 1.88, 251.000, '2024-12-04', '11:15:00', 471.88, 'Reciclagem', 'Concluído', '2024-11-15 10:12:31', '2026-07-01 10:49:49', NULL),
(17, 'e9f3410b-1ff7-469a-887e-5b34fda1cc9c', '24111510231L522', 3, 17, 4, 9, 6, 11, 1.88, 254.000, '2024-12-06', '16:15:00', 477.52, 'Reciclagem', 'Concluído', '2024-11-15 10:13:48', '2026-07-01 10:48:55', NULL),
(18, 'f1e48ab0-9e7f-4e3c-b286-398686a164f2', '24111523821Z637', 3, 18, 5, 9, 6, 11, 1.78, 189.000, '2024-11-22', '11:25:00', 336.42, 'Aterro controlado', 'Concluído', '2024-11-15 10:21:17', '2026-07-01 10:48:13', NULL),
(19, '513cb078-c0ae-457c-a500-a28dcc16c99b', '24111836151X625', 3, 19, 5, 4, 6, 5, 1.88, 157.000, '2024-11-22', '08:25:00', 295.16, 'Incineiração', 'Em andamento', '2024-11-18 11:59:03', '2026-07-01 10:56:24', NULL),
(20, 'b6ee9cf2-0a9f-468c-b9ae-4efd5428b93a', '24112439129X336', 3, 20, 5, 4, 6, 5, 1.88, 119.000, '2024-11-28', '16:35:00', 223.72, 'Incineiração', 'Em andamento', '2024-11-24 15:33:07', '2026-07-01 10:55:36', NULL),
(21, '89550623-b661-43c0-90fa-dec0b3a9c050', '24112429296J457', 3, 21, 4, 4, 6, 4, 1.92, 118.000, '2024-11-26', '17:30:00', 226.56, 'Incineiração', 'Em andamento', '2024-11-24 15:34:12', '2026-07-01 10:55:12', NULL),
(22, 'eaaca17c-9bba-4039-9748-77a728f35fc6', '24112680297A878', 3, 22, 5, 9, 6, 11, 1.88, 127.000, '2024-12-04', '09:40:00', 238.76, 'Coprocessamento', 'Concluído', '2024-11-26 08:37:38', '2026-07-01 10:50:56', NULL),
(23, '3aed9ed0-ea1e-492b-9106-ab5c35a467b4', '24112658584M518', 3, 23, 6, 9, 6, 11, 1.88, 126.000, '2024-12-07', '09:40:00', 236.88, 'Reciclagem', 'Concluído', '2024-11-26 08:38:26', '2026-07-01 10:48:31', NULL),
(24, '4dcda0fb-2138-4090-b62e-2bfa27ae9b3a', '24120265095H982', 3, 24, 5, 4, 6, 4, 1.88, 118.000, '2024-12-18', '10:10:00', 221.84, 'Incineiração', 'Em andamento', '2024-12-02 09:05:31', '2026-07-01 10:54:51', NULL),
(25, 'a1d99795-d356-4bbd-a5f0-a840dce3b3c6', '24120264704X856', 3, 25, 5, 4, 5, 5, 1.88, 128.000, '2024-12-12', '10:00:00', 240.64, 'Reciclagem', 'Concluído', '2024-12-02 09:07:13', '2026-07-01 10:43:50', NULL),
(26, 'b9099fbb-7e0c-4415-a1e7-349b8457db38', '24120266295I566', 3, 26, 5, 4, 4, 5, 1.88, 103.000, '2024-12-16', '15:30:00', 193.64, 'Aterro controlado', 'Em andamento', '2024-12-02 09:11:11', '2026-07-01 10:54:32', NULL),
(27, '59af55af-f944-477a-a4b6-2a6b994e4f57', '24121225183L848', 3, 27, 6, 4, 5, 5, 1.88, 119.000, '2024-12-20', '09:45:00', 223.72, 'Coprocessamento', 'Cancelado', '2024-12-12 19:43:47', '2026-07-01 10:41:58', NULL),
(28, 'eb311f96-ca5f-488f-aabd-c16f533d5649', '24122860539O165', 3, 28, 4, 4, 4, 5, 1.88, 106.000, '2024-12-31', '21:40:00', 199.28, 'Aterro controlado', 'Em andamento', '2024-12-28 14:31:56', '2026-07-01 10:54:12', NULL),
(29, 'af1ca522-e4ea-42ab-acce-eb670d32eaab', '24123066965Q997', 3, 29, 6, 4, 5, 4, 1.82, 98.000, '2024-12-31', '20:40:00', 178.36, 'Reciclagem', 'Concluído', '2024-12-30 19:13:48', '2026-07-01 10:49:16', NULL),
(30, '0f7e4a62-d692-4d19-aff2-9309f5fa80e6', '25011292601C786', 4, 30, 7, 15, 11, 10, 1.88, 120.000, '2025-01-15', '09:20:00', 225.60, 'Reciclagem', 'Em andamento', '2025-01-12 09:56:54', '2026-07-01 09:51:44', NULL),
(31, 'e625a1c5-62ae-4c1c-9cbd-2a93d9d9db51', '25011291896Q684', 4, 31, 9, 16, 12, 9, 1.92, 125.000, '2025-01-15', '10:25:00', 240.00, 'Reciclagem', 'Em andamento', '2025-01-12 09:58:02', '2026-07-01 09:52:57', NULL),
(32, '060cfb9b-5dfb-4735-b18f-bea2e5ec2e80', '25011259532N575', 4, 32, 8, 15, 11, 10, 1.88, 201.000, '2025-01-17', '09:10:00', 377.88, 'Compostagem', 'Concluído', '2025-01-12 15:03:47', '2026-07-01 09:58:25', NULL),
(33, 'ff0e8efc-0d66-451b-915e-36d2255cb2b8', '25020840136U808', 3, 33, 4, 4, 6, 5, 1.79, 88004.000, '2025-02-10', '08:10:00', 157.53, 'Reciclagem', 'Em andamento', '2025-02-08 19:55:42', '2026-07-01 10:58:53', NULL),
(34, 'ad22f1ad-2884-4aef-8e4b-4d6b275db502', '25020872252X972', 3, 34, 4, 4, 5, 4, 1.88, 117.000, '2025-02-11', '10:00:00', 219.96, 'Reciclagem', 'Concluído', '2025-02-08 19:56:53', '2026-07-01 10:43:58', NULL),
(35, '8ddef76e-1603-4346-b8ff-a036294339d8', '25020872813Z369', 3, 35, 4, 4, 6, 4, 1.85, 105.000, '2025-02-10', '16:40:00', 194.25, 'Reciclagem', 'Cancelado', '2025-02-08 19:58:11', '2026-07-01 10:42:51', NULL),
(36, '0801d851-ed86-4097-8eb6-958b3d0e00df', '25021125858M337', 3, 36, 5, 7, 5, 12, 1.88, 121.000, '2025-02-14', '09:20:00', 227.48, 'Reciclagem', 'Em andamento', '2025-02-11 08:17:12', '2026-07-01 10:51:50', NULL),
(37, '75324d8e-0109-423d-80a1-c8f9aefe98e8', '25022588851H403', 3, 37, 5, 4, 4, 5, 1.88, 161.000, '2025-02-26', '11:00:00', 302.68, 'Reciclagem', 'Em andamento', '2025-02-25 10:50:42', '2026-07-01 10:51:36', NULL);

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
(1, '1756c1f0-387e-4c2a-b1fc-214f44af76f8', 'Scarlet Overdrive', '92.772.051/0001-50', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Phantom Blood', 140, 'scarlet.overdrive@email.com', '(77) 9090-5021', NULL, NULL, NULL),
(2, '76f43ef2-999a-4db6-bba7-d298ef39af31', 'The World', '68.611.034/0001-56', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Stardust Crusaders', 138, 'the.world@email.com', '(77) 9980-9747', NULL, NULL, NULL),
(3, 'f2f829fd-0dea-4456-b3e0-44bfb306bff0', 'Tusk', '56.891.048/0001-91', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Steel Ball Run', 159, 'tusk@email.com', '(77) 9804-7001', NULL, NULL, NULL),
(4, '7952a4d8-b71c-4baa-a653-cb6a85eaed47', 'Ball Breaker', '21.972.182/0001-32', '46430-000', 'BA', 'Lucky Land', 'JoJo\'s Bizarre Adventure', 'Steel Ball Run', 128, 'ball.breaker@email.com', '(77) 9940-6801', NULL, NULL, NULL);

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"e13e6628-d236-42b5-b68d-0437841c855b\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25022588851H403 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"4f64b987-b5d7-4772-a8fb-d7088af90a96\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910118, 1782910118),
(2, 'default', '{\"uuid\":\"c5450df1-84ea-492b-b613-0707926d7f96\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25011259532N575 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"4cbd3de8-ad46-424d-aafe-6b834ff53824\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910290, 1782910290),
(3, 'default', '{\"uuid\":\"17dac6c9-ea01-4b5c-bd2e-3ea7e46994d1\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25011291896Q684 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"ee1d6ff5-dc2e-44a9-903b-76f7950718c2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910297, 1782910297),
(4, 'default', '{\"uuid\":\"8cf060cc-d949-4730-9e54-54afe4a1f2d8\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25011292601C786 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"917ee3b4-f538-448a-b759-110d11eb1d67\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910304, 1782910304),
(5, 'default', '{\"uuid\":\"5f4a70c4-d880-4ab2-99e3-c2a3720cf007\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25011291896Q684 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"ebe42fd5-fa08-457a-be53-b34f90e87ce8\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910367, 1782910367),
(6, 'default', '{\"uuid\":\"fa4b8c04-0298-4bf5-b8f1-76f29ec054b3\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25011291896Q684 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"4fcd6dfd-6811-4bde-96ce-74a38dc5abed\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910377, 1782910377),
(7, 'default', '{\"uuid\":\"405f062b-e4a6-485d-bb15-429dbf37270f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25011259532N575 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"9c60703e-c1eb-4f48-80d5-7ecd7c8af0ba\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910705, 1782910705),
(8, 'default', '{\"uuid\":\"b652f98d-9ed1-472c-a723-4921b5792e6f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25021125858M337 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"668d143d-ebfb-47ff-820c-913c5701f806\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910832, 1782910832),
(9, 'default', '{\"uuid\":\"e4803b70-b19a-4af4-bdef-9ef9ff01577c\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020872813Z369 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"b6663ef4-5056-4dcc-8873-35a8e70b1208\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910844, 1782910844),
(10, 'default', '{\"uuid\":\"fffe56ee-d512-45e3-99ad-f1faaaa0670a\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020872252X972 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"bdad92bc-ba56-49b9-b384-ab935a85fce6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910866, 1782910866),
(11, 'default', '{\"uuid\":\"ba997f19-8ec9-4f16-9bad-a778e0c8597c\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020840136U808 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"5e6536e0-d939-48db-9c17-4fe568ae43fd\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910883, 1782910883),
(12, 'default', '{\"uuid\":\"3001ee62-b2cc-4dc6-849f-b263f84312d7\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24122860539O165 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"dd798f93-ec50-443f-9363-77b80a66f054\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910898, 1782910898),
(13, 'default', '{\"uuid\":\"8b1bd109-c32a-4f43-8b3f-95126563052f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24121225183L848 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"0dac7af8-6cff-42f8-bda3-4f84153b5c0e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910911, 1782910911),
(14, 'default', '{\"uuid\":\"ed862644-c7ba-4dfd-b168-ccc2cb1af068\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24120266295I566 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"e4954373-031a-4ce0-a9bd-4c08b83de717\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910925, 1782910925),
(15, 'default', '{\"uuid\":\"bfd2b4f0-7d1c-4ebc-8643-6f20b39f9977\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24120264704X856 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"f232ca0f-ea64-4aef-b6d1-6c96b8522057\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782910939, 1782910939),
(16, 'default', '{\"uuid\":\"2ba1ad33-a279-4a15-a874-0f761ec45e1b\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111492220E541 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"f8b64519-d4c5-4513-9e1b-61f77e3aa58d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911029, 1782911029),
(17, 'default', '{\"uuid\":\"e2c3a99b-4f33-4473-ba08-399ac92344a7\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111466548Z508 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"107cd5ab-8c95-4a3b-8f95-7194393efb0b\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911035, 1782911035),
(18, 'default', '{\"uuid\":\"52c5eb54-fe9f-4c7e-b716-5801b190a587\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111458275N787 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"64d4a3a6-f335-4d8a-8f15-0ad880874feb\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911041, 1782911041),
(19, 'default', '{\"uuid\":\"fd195969-a6ea-4e43-a30b-deab60ae0f11\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111420310J249 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"7a74aedc-61ca-473a-845a-14a111a3c7b4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911071, 1782911071),
(20, 'default', '{\"uuid\":\"41de20ec-81a0-4c2a-ada1-e0e3c64df491\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111479383Z583 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"ada80be1-f1b5-4618-abeb-8276ba352184\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911080, 1782911080),
(21, 'default', '{\"uuid\":\"ebaa9b9d-f1a4-4620-9734-45209400a868\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111479383Z583 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"82661b64-5a84-4d7c-ac9b-333768c22daa\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911095, 1782911095),
(22, 'default', '{\"uuid\":\"4a5aa70a-7c47-4951-9885-6bab3207fd09\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111486065E510 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"ac183ff2-1108-4742-8fb0-4c045785772c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911110, 1782911110),
(23, 'default', '{\"uuid\":\"18ec3b6b-8453-4dbc-aae1-dfe7077015dc\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111415062X989 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d21b883b-6c52-4ac6-b4a9-ced772c9eccd\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911121, 1782911121),
(24, 'default', '{\"uuid\":\"01c43472-6e21-41c2-b186-2c07dc7b771f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111415062X989 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"161c3284-0d6f-4bbf-9791-39dbbd0e35b3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911147, 1782911147),
(25, 'default', '{\"uuid\":\"dea03400-6a03-44d9-8431-a8b122b2d875\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111492220E541 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"0612fc81-c417-4585-b239-846e5996de89\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782911996, 1782911996),
(26, 'default', '{\"uuid\":\"a789dd87-9ab5-4521-af8d-fb3e99e6992f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111492220E541 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"10dcef75-add7-4f9a-b489-7f64211c18c9\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782912121, 1782912121),
(27, 'default', '{\"uuid\":\"1fb84e85-cbdc-414d-bfbe-2c6edf9364c3\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111466548Z508 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"6e8286e3-b415-455b-be46-00c108229f74\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782912535, 1782912535),
(28, 'default', '{\"uuid\":\"c3778ebc-35c7-49f1-b436-46ca8dd8b579\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111466548Z508 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"fde39678-e27f-44d5-8f68-3bee86c4070c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782912556, 1782912556),
(29, 'default', '{\"uuid\":\"1319646b-07ae-4810-a57a-b748a08448ef\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111466548Z508 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"08c7f3ef-e3ed-4ce6-bd29-8df8ba15b262\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782912616, 1782912616),
(30, 'default', '{\"uuid\":\"4b3e0dc6-3142-47ac-a81e-d53efa4b1eac\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111466548Z508 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"b39b9903-8273-4630-920a-3bf90102522f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782912634, 1782912634),
(31, 'default', '{\"uuid\":\"793dd1e8-da9b-4e99-ae3f-ea027f84a986\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020872813Z369 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"817959ba-8f48-43d8-a540-abe347c63889\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913309, 1782913309),
(32, 'default', '{\"uuid\":\"2249fc1e-34da-42bc-a7e0-f9a4fb2195a3\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24121225183L848 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"73b355f1-7cbd-46c0-a8b7-2f7f4737e129\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913318, 1782913318);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(33, 'default', '{\"uuid\":\"4f3cb446-a6f6-4a1b-94c3-2963351f33d5\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111415328W990 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"f920d946-a9a3-40cb-b155-d833128c9e98\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913332, 1782913332),
(34, 'default', '{\"uuid\":\"d79679c4-b95a-4412-b8d1-11b83c7e4718\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111415328W990 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"bf1edf96-87cd-460c-82a2-98b6737d2430\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913356, 1782913356),
(35, 'default', '{\"uuid\":\"eaa07e28-0f1c-463f-9e36-76c96663ac41\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020872813Z369 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"efb0e651-ca1c-4139-be9f-93bb7867cbac\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913371, 1782913371),
(36, 'default', '{\"uuid\":\"94fd5303-5f0f-4efd-a82e-015a6d42dcbb\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020872252X972 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"5359e181-f1e0-4edc-ba6f-a35a54a6ee05\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913390, 1782913390),
(37, 'default', '{\"uuid\":\"7b2735e1-0051-4915-9f00-cd6eab7e61f3\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24123066965Q997 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"eece2f5e-07c7-493d-a4ca-eb9d4140ac1f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913408, 1782913408),
(38, 'default', '{\"uuid\":\"1f13d3a7-f487-47e2-944a-0706b31adffe\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24120264704X856 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d56b892a-363b-4423-b4a5-3a742f603082\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913430, 1782913430),
(39, 'default', '{\"uuid\":\"21e09eca-1388-4f38-a8d0-8669795530ad\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020872252X972 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"8e6d94ae-7928-4184-880f-aa8b968a1626\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913438, 1782913438),
(40, 'default', '{\"uuid\":\"345b303d-9344-4b53-a264-1750c91c3931\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111483808O948 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"ed813ce5-618b-4ac5-a863-06b18ccf6e51\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913481, 1782913481),
(41, 'default', '{\"uuid\":\"77c02228-6195-45e1-bf60-dfded8302bca\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111483808O948 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"ef6af98f-e96c-4078-871e-73ed29d283ae\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913496, 1782913496),
(42, 'default', '{\"uuid\":\"b2e7f0e8-9cd3-4f5a-9649-777d1800bb70\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111458844O378 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"0da8954a-9e9d-4d5b-be22-792c41f178fe\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913519, 1782913519),
(43, 'default', '{\"uuid\":\"8f803f8e-0648-48f6-8777-16a8545d965f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24112680297A878 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"cbb6b225-2f1a-4e5e-a2f9-9bbb68ea9979\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913551, 1782913551),
(44, 'default', '{\"uuid\":\"26ecc810-0b2d-4b0e-9664-c97a15d12a5f\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111458844O378 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"aa5a7153-c762-4b74-975d-d4bd3c719c32\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913570, 1782913570),
(45, 'default', '{\"uuid\":\"fcdbf301-b41d-4e0f-b2da-e982bd61e0b1\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24112680297A878 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"e800cec7-35a5-46f3-9d65-4461ab2fa1bc\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913600, 1782913600),
(46, 'default', '{\"uuid\":\"965dcf10-1aa3-4a99-87f1-74673ced818b\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111458844O378 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"116e9a20-4af8-4f3e-ab46-85ccaf587fd7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913628, 1782913628),
(47, 'default', '{\"uuid\":\"3c1b19a9-4b05-49d2-b435-1e852730228d\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111458844O378 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"b04e3559-9e80-4436-8883-ee897b34d9b1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913647, 1782913647),
(48, 'default', '{\"uuid\":\"37091b0a-0be8-4af9-a091-b187eeb59ced\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111523821Z637 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"9853267a-cb59-4acf-999b-32da3b6b2d1a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913693, 1782913693),
(49, 'default', '{\"uuid\":\"cd60eb08-6aea-4a08-bc22-aeb42e123c9d\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24112658584M518 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d48fd8fc-c502-4834-af5a-e9325ff05ca6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913711, 1782913711),
(50, 'default', '{\"uuid\":\"48f8948b-83b3-4ed6-b87e-09581859dae4\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111510231L522 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"8a0df209-9a7a-4ac0-ab2e-6cbfb72535a9\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913735, 1782913735),
(51, 'default', '{\"uuid\":\"e83d4c09-4571-4755-8ae8-d7cd7407ed6c\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24123066965Q997 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"c090c448-61fa-44f2-94f7-a9a47932d0eb\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913756, 1782913756),
(52, 'default', '{\"uuid\":\"3e391baa-90a0-4476-8159-8ad08c92d14b\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111585890B515 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"284997da-4fde-4bf1-9b3b-6f73b7fe85b0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913789, 1782913789),
(53, 'default', '{\"uuid\":\"d3226faa-5292-4c97-9f72-046dab3e6d01\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111448857N447 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"cded8c98-8f45-40d4-9d8d-0b56b9cba2a7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913817, 1782913817),
(54, 'default', '{\"uuid\":\"a6a13dbc-ab84-4181-b6a3-5d5d15b493a3\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24112680297A878 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"1db1bf65-e4a8-4ad5-a367-5ecf1637405d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913856, 1782913856),
(55, 'default', '{\"uuid\":\"afac6f0b-a5d1-4e58-bbe9-db2553649817\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25022588851H403 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"cdfce527-6697-412a-8716-630fa4aeeae9\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913896, 1782913896),
(56, 'default', '{\"uuid\":\"a3212383-b719-41fc-961a-49040be26345\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25021125858M337 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d5d498a1-9c74-4fd6-a923-433e0d81d2ea\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913910, 1782913910),
(57, 'default', '{\"uuid\":\"05c06262-1ac9-4aa3-95b4-27d5280216f1\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020840136U808 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"7a6b8e7c-4655-48f2-829d-0303255d1d3c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913941, 1782913941),
(58, 'default', '{\"uuid\":\"f031f1c9-571a-4fd1-89d9-55e12f31fa56\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24122860539O165 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"c5af02ec-35e8-4a7a-8733-55a3f748c130\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782913966, 1782913966),
(59, 'default', '{\"uuid\":\"1c30a94b-913b-471b-8159-7763a231a038\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020840136U808 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d37becb4-9114-4df7-ab59-fb1d0295fd1e\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914000, 1782914000),
(60, 'default', '{\"uuid\":\"07177b19-03c5-431a-8b87-c011b3bee31d\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020840136U808 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"eeb40fbd-2562-46a5-8a35-349025212c31\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914029, 1782914029),
(61, 'default', '{\"uuid\":\"04ee1853-5963-45b4-a6b3-527db9a5af94\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24122860539O165 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"6483f76c-964e-4ac9-8ca3-021dccdc33fa\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914052, 1782914052),
(62, 'default', '{\"uuid\":\"51187c65-337d-40ac-a93a-ffe678543838\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24120266295I566 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"2f451324-c76c-480c-b18a-63d4a5e20fd9\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914072, 1782914072),
(63, 'default', '{\"uuid\":\"e35ab4e8-8e55-45ac-a488-8401f8c9d211\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24120265095H982 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"360bc8b6-3328-4129-ba08-4e7289839486\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914091, 1782914091),
(64, 'default', '{\"uuid\":\"cb4cc169-c2ae-425b-9241-d963dd4bbd9c\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24112429296J457 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"2afac783-f788-417e-8bd2-4bdfe6a93790\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914112, 1782914112);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(65, 'default', '{\"uuid\":\"291e134d-81ba-4fe4-9314-85dafe9fd700\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24112439129X336 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"4316642c-cc37-4ead-b7a3-e4aa84404227\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914136, 1782914136),
(66, 'default', '{\"uuid\":\"ccecce2b-e84c-40a5-ad8c-4298cf539a3a\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111836151X625 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"86754543-710a-4e42-b4c4-aa90dd3250c3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914158, 1782914158),
(67, 'default', '{\"uuid\":\"1576018c-cbe2-4422-ab03-877047554337\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111836151X625 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"4ab364ed-4524-4e12-9534-902fcfd1d946\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914184, 1782914184),
(68, 'default', '{\"uuid\":\"efb7966e-6db8-480c-8b45-4e42eac94975\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111425240D441 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"96f2d334-c20a-4fca-bbd5-35a9c663ef40\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914216, 1782914216),
(69, 'default', '{\"uuid\":\"9ff0f0f4-4b88-4b76-b8e3-d822bd625787\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111455620A462 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"6cf8f82e-939a-4d26-afdf-9e237c877fa2\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914239, 1782914239),
(70, 'default', '{\"uuid\":\"e82e5bf2-9ca4-4d80-8cc3-1b153ba5abd9\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111443020I357 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"445dd3c0-14ed-48ed-b943-c9667a8095c6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914258, 1782914258),
(71, 'default', '{\"uuid\":\"bc07274b-2e7b-4292-899f-2b89c5b7bcb9\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111484431L491 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"c2da3da2-6272-4226-b990-6c2148c3705c\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914274, 1782914274),
(72, 'default', '{\"uuid\":\"cf51c48f-e159-47a6-82b4-d20881432c6a\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111443020I357 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"1df4adc4-20c8-4e10-9e0f-7b9a50935498\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914293, 1782914293),
(73, 'default', '{\"uuid\":\"614ed4d9-8ac8-4fdf-8f9e-f71c164fca6b\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"24111443020I357 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"a7538dc2-4e46-4cd7-8f3b-01d010e7ace4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914311, 1782914311),
(74, 'default', '{\"uuid\":\"c8f97073-7777-4b9b-a29b-f398189fb896\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:1:{i:0;s:5:\\\"roles\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:31:\\\"25020840136U808 foi atualizada.\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:29:\\\"heroicon-o-information-circle\\\";s:9:\\\"iconColor\\\";s:4:\\\"info\\\";s:6:\\\"status\\\";s:4:\\\"info\\\";s:5:\\\"title\\\";s:17:\\\"Coleta atualizada\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"1894d37c-669c-45a6-9c8f-4607d9cdbcde\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1782914333, 1782914333);

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
(1, '0001_01_01_000000_create_empresas_table', 1),
(2, '0001_01_01_000000_create_users_table', 1),
(3, '0001_01_01_000001_create_cache_table', 1),
(4, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_08_31_102921_create_clientes_table', 1),
(6, '2024_08_31_102921_create_depositos_residuos_table', 1),
(7, '2024_08_31_102921_create_tipos_residuos_table', 1),
(8, '2024_08_31_104423_create_locais_coleta_table', 1),
(9, '2024_08_31_114932_create_motoristas_table', 1),
(10, '2024_08_31_115535_create_veiculos_table', 1),
(11, '2024_09_02_082901_create_coletas_table', 1),
(12, '2024_09_06_144200_create_ufs_table', 1),
(13, '2024_09_27_150651_create_permission_tables', 1),
(14, '2024_09_29_180549_create_users_empresas_table', 1),
(15, '2024_11_30_113525_create_notifications_table', 1),
(16, '2026_04_13_091001_add_custom_fields_to_users_table', 1),
(17, '2026_04_13_091002_add_avatar_url_to_users_table', 1),
(18, '2026_04_13_093402_create_personal_access_tokens_table', 1),
(19, '2026_07_01_085425_add_valor_quilo_to_coletas_table', 1);

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
(2, 'App\\Models\\User', 5);

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
(1, 'a7a15ec6-7bd4-460e-8c6f-8dbedb65d701', 'admins:index', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(2, 'f30768f0-00dc-4b68-87bc-60aaa5bdff42', 'admins:create', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(3, 'dfbf757f-ba18-4ac7-b907-dc78cd1ce523', 'admins:store', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(4, '29e74984-e2ff-4387-a778-c5c3d524943b', 'admins:show', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(5, '255a22be-1a54-4d89-a580-c13004485b83', 'admins:edit', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(6, '7b0d8c3c-bb15-46fa-af08-1eebc76f63a0', 'admins:update', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(7, '24704e7f-3737-4a96-8b3b-81331f316f56', 'admins:destroy', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(8, '7bc1a54d-d87a-4146-a3ce-6d36bb5a6410', 'users:index', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(9, '34977f7b-e86e-4b15-b486-91f0310f9e8d', 'users:create', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(10, '8f50c946-495a-4341-83d9-982dbabe5d63', 'users:store', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(11, 'bfc6064b-5664-4d16-b07c-ab743a0a35cf', 'users:show', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(12, '3d602d4e-4905-4bef-9b6d-031ba37a0f1b', 'users:edit', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(13, '5df29e76-1f89-448e-853f-976b0605a5c9', 'users:update', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(14, 'ffa04cea-2e9f-4ce3-9189-412f731763b4', 'users:destroy', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL);

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
(1, 'c42a59ab-747f-4a5b-8438-5f6a2238e145', 'Admin', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL),
(2, '4358cf91-e383-4ae2-97c2-63a9cd9ac6fc', 'User', 'web', '2026-07-01 09:38:22', '2026-07-01 09:38:22', NULL);

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
(14, 2);

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
('w99qnvasE3Y1qp3QfPFiSqkB1vsy1MvGi9zzN09v', 2, '172.19.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJamg1VGtOd1dHcEtPQ3RsYjNVck0yTllRMEpVZVhjOVBTSXNJblpoYkhWbElqb2lRbmxMVlZsNlJFcG1RV1JqWVRCRE1tcHJlSFV2UkVwdmJrSTVlVE4zVlV0UU1YSlpZVW93ZVZOWFZrWnlZa3hKZDA1blVVVkpaVVkzU1V0SlZEZDFWamRoTVVkaFRGQTRZMkUyUWpVME5tTXpOazVxYjBKMlIyVnFNa2x3ZVdkQ1drbExSM0ZVYm5KQmJXODJhWGxXVHpKMVZpOVJkREZwZVhaQk5VdExVVXRIZVZGUWFUVktlbEpwTURCYU0yb3ljbTVRUTFwR1IzaDBkakJHVG5velRrRlNNMkptUVVsRFJtZE5lRWszUmxwUldHaFJTV0l3WWtneVVVVlpXVnB2VjI5MU1UUkJiM1ZUV1VwSmExQjRSVk5vVEdSQ1JtOHZORXhoYmpoNGIwVjZWRkF6Um1SMlZtMXVSbEYzUjNSQlV6TnpRbmRaWTJSWlpuSnBZVEpGTnpaTE5GZEtOSGdyZG5ob1N5dG1ZbTVLVVRsMmNsWlVOekpGWW5ObFNtRk1LemRwYTNGWVFXcG9Zbk54YlRWNmFUTkZUa0pST0drelNWbEtjVEZNUlRGMFJIQmtjemhtU2tkaFRXRmlXbTl6VWtFeVVEWjFNVWt6YjFBNVdVOHZkRFk1U0dWdWJWa3ZUVFp3WldKdFZEbEVORXBQVjNkUVlqZEtXSFpyY2xweFRGWTJhMlJRT1RadWFVeDVSME5WV25CNGVqRldVMk5rTkZGd01sUkZZMWt6WkVkb1UzaDFaR2RtV2tWbE5TdFZhWElyVTB0aU1raFJTMDlaVWxSQ1JuQkxVSGwyWVdscVNGTlRTRzFQYlVGcFowVjNTSEJOVm5GWFRuZEZiSHBhY1hRMlVuSnRRWEJQTDB4Q1RGRndUM1JKYm1vMGVpc3ZZbkppTlUwdlZtRlhWbXB5WjA1VlptUlFPVEpVWjBzd2FubEpZVEJ4Y2tJNFlVaGtkM3BUYlUxSlowZGpibkk0Tm05M1RuQXpSVUUyWWk5SE9HNUhNREJ0VVVOeVpGbEVaR016ZERKQ01rSk5Oa0pRVkZsdFdsQjFiRGhLWWpGd2NWbGFibmRLZDJ0Mk1YSjFjMEUxWTBGVlEwTmhlakIyTW1jMVdGbDJkVWRwTkcxV2RXZGpUbWRLU1VRNFNUbE1TMWxJU25obVdWYzNRVWMzTkhOdVpYSXlRbWxsVFc1dmRtOVROWGxoTVhnelVVVTlJaXdpYldGaklqb2lNRFE1WldJelltUm1ObUpoTTJZMk5qQTVZell4TTJWbU5UWXdabVl4WlRsak4yVTNOemhqTkdGalpXWm1PVEEwTmpFeU9EWXdOemxoT1RFME5UazRNQ0lzSW5SaFp5STZJaUo5', 1782914343);

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
(1, 'eaf2827b-c951-40b2-a64a-2ad7d8f348c9', 'Jonathan Joestar', 'jonathan.joestar@email.com', '2026-07-01 09:38:23', '$2y$12$tAGkk2lqVTkeM9kTPHM/guOCN/.cwlVnlzrrbpv8Szl8aeLG/nu0u', NULL, '2026-07-01 09:38:23', '2026-07-01 09:38:23', NULL, NULL, NULL),
(2, '05106b67-45e5-4103-b1b4-723675aa9087', 'Dio Brando', 'dio.brando@email.com', '2026-07-01 09:38:23', '$2y$12$3yNCiP97RwKekGB76uaoeeMy6x.bXV77tYj94BDCQFaq3822F5xWe', NULL, '2026-07-01 09:38:24', '2026-07-01 09:38:24', NULL, NULL, NULL),
(3, '0bb363ab-08a4-4ef2-8111-59f7f371f867', 'Johnny Joestar', 'johnny.joestar@email.com', '2026-07-01 09:38:24', '$2y$12$xcpN7h09cCjBpH2EZ.2AdOVxG2yQ4RbBsnTwleGOnUxfc8GObKoq.', NULL, '2026-07-01 09:38:25', '2026-07-01 09:38:25', NULL, NULL, NULL),
(4, 'dbdbbb88-ebf2-4e92-b7fd-3a5c65cb3895', 'Gyro Zeppeli', 'gyro.zeppeli@email.com', '2026-07-01 09:38:25', '$2y$12$jGxBNEbnTRvgeXvTShQsTOiD9vmbKVjptxd.vg3R.PUf4F8QjZxDa', NULL, '2026-07-01 09:38:25', '2026-07-01 09:38:25', NULL, NULL, NULL),
(5, '9b73da72-8a87-425a-ab05-5422cd74939e', 'Diego Brando', 'diego.brando@email.com', '2026-07-01 09:38:25', '$2y$12$.sa2qOoT2pb6/WYnmMvfp.e/YbyKqEhXF.U6lwJ5VBgvBiEzcSx6K', NULL, '2026-07-01 09:38:26', '2026-07-01 09:38:26', NULL, NULL, NULL);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `locais_coleta`
--
ALTER TABLE `locais_coleta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `motoristas`
--
ALTER TABLE `motoristas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
