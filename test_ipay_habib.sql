-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 07:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_ipay_habib`
--

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
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_resets_table', 1),
(51, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `pekerjaan`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
('06a0b07e-1f37-410d-ac6a-daca50b502e0', 'Talia Uli Purwanti S.T.', 'Karyawan Honorer', '2020-02-01', NULL, NULL),
('076163f6-4a5e-4e0f-a56a-ca31d32bfdb5', 'Aris Damar Gunarto', 'Penata Rambut', '1952-02-18', NULL, NULL),
('08fa0e14-4a71-44bb-b99b-fb59b3605967', 'Ade Galuh Permadi', 'Pilot', '1941-09-25', NULL, NULL),
('0a2254e9-4abf-48aa-977a-71ca5cebc99f', 'galih', 'tukang kayu', '1990-12-12', NULL, NULL),
('0d940e8a-92ed-4179-8be3-3746daf6080a', 'Puti Astuti', 'Jaksa', '1939-09-21', NULL, NULL),
('12671220-386c-46fa-8a76-6f5ea48c85dc', 'Kambali Tampubolon S.E.I', 'Akuntan', '1965-12-17', NULL, NULL),
('14838e29-b352-43e5-9376-89fc32591d30', 'Jelita Nuraini', 'Kepolisian RI (POLRI)', '1985-09-20', NULL, NULL),
('1c5823a7-ebdb-49f6-bde8-b37dad2a1bdb', 'Bajragin Adriansyah', 'Wakil Presiden', '1944-01-14', NULL, NULL),
('2187fe6b-6401-4ea4-bf46-718303d1d0ea', 'Gamani Widodo', 'Transportasi', '1951-09-12', NULL, NULL),
('2339601b-0a44-4912-84a5-b1d89f970ec1', 'Sakura Agustina', 'Guru', '1946-05-22', NULL, NULL),
('290ec52e-2401-456b-b211-48d09912ec74', 'Raina Yance Pertiwi M.Kom.', 'Montir', '1979-09-30', NULL, NULL),
('2972bfa0-304f-4a4e-871e-0131fc09f5d4', 'Devi Uchita Mulyani M.Ak', 'Satpam', '1964-06-04', NULL, NULL),
('320d61ca-5ec7-439f-a048-86a1c99ef814', 'Maya Tania Uyainah', 'Hakim', '1948-03-18', NULL, NULL),
('32277b73-2f40-4078-93d8-be15852e23d6', 'Radika Nainggolan', 'Nahkoda', '1985-03-03', NULL, NULL),
('371615e7-8e6e-4b9b-ad28-fcfa2c677a83', 'Pangestu Najmudin M.Ak', 'Karyawan BUMD', '1923-10-24', NULL, NULL),
('376e4d4a-b228-44e7-af8f-6f1a577600c6', 'Taswir Firmansyah', 'Masinis', '1955-01-04', NULL, NULL),
('37935e72-fc92-41d1-b1cd-296d7e2c79bd', 'Aurora Mandasari', 'Buruh Harian Lepas', '1940-03-19', NULL, NULL),
('495e8e37-de3e-43cf-9b78-e4d7633c841b', 'Asmadi Jagaraga Halim', 'Pramugari', '1954-01-30', NULL, NULL),
('4d191753-afb0-4ae3-bd71-6084c61cc409', 'Yunita Yuniar', 'Pramugari', '1930-10-30', NULL, NULL),
('5a0a669b-b010-43c5-99cf-5536a00808fb', 'Lukman Budiyanto', 'Tukang Cukur', '1993-08-01', NULL, NULL),
('5a692f14-4948-4674-b8f5-2c6f76d84129', 'Violet Melinda Sudiati S.T.', 'Pastor', '1999-01-26', NULL, NULL),
('5c9b9ed3-28b3-403a-b8e0-a2fbc3e6b799', 'Raina Pratiwi S.Gz', 'Pastor', '1980-07-21', NULL, NULL),
('5d6b8d65-615d-495e-aa8e-d1ac41c1daf8', 'Maria Novitasari', 'Karyawan Swasta', '1939-04-14', NULL, NULL),
('5fdc6332-30fc-47b3-aa34-a619450a2723', 'Kania Gawati Hassanah', 'Buruh Peternakan', '1979-06-14', NULL, NULL),
('63e3a224-651e-41a6-b6bb-d60256e549a5', 'Elisa Lailasari', 'Penambang', '2017-12-11', NULL, NULL),
('6b8bd042-0ae1-4a18-80bf-ff543cb2e54f', 'Leo Santoso S.IP', 'Mekanik', '1977-11-22', NULL, NULL),
('6f9101db-24e2-4852-9284-c0758288b99f', 'Yulia Nilam Wahyuni S.T.', 'Tukang Cukur', '1965-04-27', NULL, NULL),
('7a13d38c-be36-411e-88d7-85cfa5fdabe4', 'Cakrabuana Megantara', 'Penata Rias', '1935-07-01', NULL, NULL),
('7ff41136-70d7-4256-aee5-97f4d2d63137', 'Salimah Aryani S.T.', 'Hakim', '2010-03-29', NULL, NULL),
('8043f9c7-1242-4d82-b5ce-bdd8eb99cb0d', 'Galiono Gunarto', 'Pemandu Wisata', '1938-11-24', NULL, NULL),
('833f9977-0a31-43f1-a3bd-ae230aa8b2d9', 'Heru Marbun S.Farm', 'Notaris', '1953-06-07', NULL, NULL),
('837019e8-0d1d-4cbc-99c3-7e75c0b92f83', 'Devi Farah Fujiati S.Sos', 'Perangkat Desa', '1932-02-27', NULL, NULL),
('89a13b6e-1a7a-4fbb-9d85-b135c30dbef7', 'Jaga Waluyo', 'Notaris', '1994-08-12', NULL, NULL),
('8cc210a1-e74d-4bf2-8c00-08cc7855a561', 'Lembah Permadi M.Ak', 'Desainer', '1956-02-11', NULL, NULL),
('8d166978-5c1d-40cd-bac3-f033813a8eea', 'habib', 'programmer', '2001-05-31', NULL, NULL),
('9013ef44-bcaa-45af-9437-6b6dc0c8123e', 'Tania Handayani', 'Penerjemah', '1985-01-28', NULL, NULL),
('907dd441-ab53-44f3-b094-2b04151e5773', 'Agnes Nova Riyanti', 'Tukang Batu', '1923-06-20', NULL, NULL),
('98664844-0837-4179-9eb4-5918b5d91dd7', 'Kasiyah Agustina', 'Buruh Peternakan', '1957-02-14', NULL, NULL),
('a594545f-8042-4092-8d91-15dabb5b3185', 'Yoga Gunawan', 'Seniman', '1944-03-11', NULL, NULL),
('af221f3d-b5a3-44ad-92b5-579a9abed70f', 'Rina Rika Sudiati', 'Pramusaji', '1936-07-08', NULL, NULL),
('b2dc649f-716b-48ff-a045-39c2ed3af969', 'Yani Talia Oktaviani', 'Petani / Pekebun', '1954-03-08', NULL, NULL),
('b863f739-55d5-41cd-a5a1-291aab8b0458', 'Adiarja Setiawan', 'Pensiunan', '1974-07-10', NULL, NULL),
('c738b422-12d3-4e47-8448-7753e3d58b7f', 'Silvia Mandasari', 'Penambang', '1946-04-19', NULL, NULL),
('ce945b5f-6845-4820-b930-0fb353415cd8', 'Nasab Tamba', 'Penyelam', '1985-08-18', NULL, NULL),
('d1fac78e-c31b-4cf6-aeb2-c6fb8609c0e7', 'Kasiyah Agustina', 'Pengacara', '1996-06-24', NULL, NULL),
('e295238d-114d-457c-8232-a1977dc469ad', 'Nilam Ade Wahyuni', 'Imam Masjid', '2001-04-04', NULL, NULL),
('eaca50f7-708e-4252-82d6-8774e1d6c0a8', 'Paramita Natalia Nurdiyanti S.IP', 'Tukang Kayu', '1923-12-17', NULL, NULL),
('ec0dec8c-5b01-4dfd-88a8-4bbebf2aefb8', 'Zahra Bella Lestari S.H.', 'Biarawati', '1994-10-04', NULL, NULL),
('f32d7ad4-8262-49d9-90c6-ca41f17314ef', 'Siska Lestari', 'Wiraswasta', '1975-11-29', NULL, NULL),
('f4d3dcdd-0b77-4ba2-8279-20c838c2cd9b', 'Farah Wahyuni', 'Tukang Cukur', '2001-12-28', NULL, NULL),
('f9d82bbd-1e85-40f6-9f8d-37cf42b04315', 'Yuliana Laksita S.Sos', 'Dosen', '2004-02-05', NULL, NULL),
('fd5d763c-4034-40f7-b89e-49e2e4b248ed', 'Maria Hariyah M.Farm', 'Penyelam', '1980-10-29', NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_id_unique` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
