-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 06:18 AM
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
-- Database: `pw`
--

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
-- Table structure for table `ikut_webinar`
--

CREATE TABLE `ikut_webinar` (
  `id_user` int(11) NOT NULL,
  `id_webinar` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ikut_webinar`
--

INSERT INTO `ikut_webinar` (`id_user`, `id_webinar`, `created_at`) VALUES
(4, 5, '2023-12-14'),
(4, 6, '2023-12-14'),
(4, 7, '2023-12-14'),
(4, 9, '2023-12-14'),
(19, 5, '2023-12-14'),
(19, 7, '2023-12-14'),
(47, 7, '2023-12-16'),
(68, 14, '2023-12-20'),
(72, 14, '2023-12-20'),
(72, 15, '2023-12-20'),
(80, 14, '2023-12-20'),
(80, 16, '2023-12-20'),
(80, 17, '2023-12-20'),
(80, 18, '2023-12-20'),
(80, 20, '2023-12-20'),
(83, 19, '2023-12-20'),
(87, 14, '2023-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `bahasa_pemrograman` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`id`, `title`, `bahasa_pemrograman`, `content`, `author`, `thumbnail`) VALUES
(23, '123', 'PHP', '12312', '124', '1702749118.jpg'),
(24, '1234', 'Javascript', '12412', '21', '1702750245.jpg'),
(25, '123124', 'C++', '12412125', '124124', '1703052153.jpg'),
(26, '12', 'Javascript', '1223', '124', '1702922144.jpg'),
(27, '4124', 'PHP', '124124', '512125', '1703053554.jpg'),
(28, 'Tes123', 'Python', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere mollis finibus. Mauris ut lacinia justo. Vestibulum enim sem, dapibus nec viverra vitae, dictum vel nisl. Vivamus blandit mi et erat ultricies, id sollicitudin enim porta. Phasellus mollis nulla ac arcu tristique, at ornare eros accumsan. Nam elementum vestibulum elit in cursus. Aliquam erat volutpat. Suspendisse potenti. Curabitur at nunc augue. Quisque vel finibus quam, in fringilla sapien.\r\n\r\nAliquam dictum rutrum purus in tincidunt. Sed maximus vitae lorem id viverra. Aenean sollicitudin ligula tortor, a pellentesque risus scelerisque at. Nulla dapibus ornare justo eget pretium. Donec lacinia eu est consectetur bibendum. Vivamus non fringilla ipsum. Ut urna orci, luctus non massa tincidunt, ornare convallis odio. Maecenas sit amet mauris velit. Integer mollis, nisi id congue tempor, dui mi ultrices ex, quis varius turpis enim nec dolor.\r\n\r\nMaecenas mattis molestie eros ac dignissim. Suspendisse potenti. Duis aliquet laoreet venenatis. Vestibulum a eros augue. Nulla blandit ipsum at ante imperdiet, vestibulum finibus justo suscipit. Nunc pellentesque tellus non lectus dictum varius. Nullam a blandit risus. Suspendisse iaculis arcu sit amet imperdiet venenatis. Nam suscipit iaculis lacus ac posuere. Nam et lorem urna. Pellentesque enim sem, cursus in interdum nec, gravida sit amet nunc. Morbi ut faucibus tellus, ac ultrices nisi. Curabitur efficitur scelerisque turpis, non luctus enim pharetra sit amet. Donec sit amet blandit quam, dapibus efficitur ipsum. Curabitur pharetra neque ac magna tristique, nec venenatis elit euismod.\r\n\r\nMauris cursus ante eget risus ullamcorper ultricies. Aliquam laoreet viverra sapien, euismod pulvinar tortor ornare id. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer convallis lacus a lacus dapibus, eget tincidunt risus facilisis. Aliquam nec massa orci. Donec quis posuere dolor. Suspendisse auctor mauris lorem, vel blandit ex interdum nec. Nunc rhoncus volutpat luctus. Nam efficitur malesuada urna, ut volutpat ex sollicitudin sit amet. Donec at egestas ipsum. In eget risus vitae erat porttitor tempor. Phasellus aliquam nibh quis tristique dictum. Sed feugiat dignissim eleifend. Fusce eu turpis ut purus mattis ullamcorper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent elementum lorem sit amet lectus hendrerit ullamcorper.\r\n\r\nNam non ipsum fermentum, ullamcorper magna vel, fermentum sem. Ut fermentum congue elit, dictum condimentum justo tempus consectetur. Aenean sed elit neque. Nullam dictum ligula porttitor leo mattis viverra. Sed quis turpis mollis magna pretium porta. Suspendisse euismod pharetra fermentum. Praesent mollis tortor enim, vitae tristique nibh finibus at. Aliquam at dolor vitae tortor dapibus faucibus. Integer efficitur lectus risus, quis tempor ligula vestibulum sed. Sed efficitur auctor ligula, a efficitur nunc posuere vitae. Etiam tristique urna quis molestie aliquam. Aliquam dictum consequat nisl quis venenatis. In mollis eget purus a convallis. Pellentesque iaculis sem nec nulla convallis viverra.', 'Joseph', '1703090371.jpeg'),
(29, 'hiyu', 'C++', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quam neque, sollicitudin sed scelerisque a, sagittis in odio. Nunc vitae dictum nisl, sit amet molestie erat. Sed velit risus, lacinia ac sem ac, pharetra vestibulum nibh. Vivamus consectetur, sapien et porta pharetra, lectus lorem placerat nulla, ac imperdiet dolor eros eget elit. Duis at sem et ante tristique rhoncus eget nec eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum fringilla eros id luctus tempor. Nullam dignissim purus eget nibh facilisis, vitae pulvinar neque varius. Aliquam maximus nulla sit amet sem eleifend semper. Sed iaculis ex ut tellus lobortis, sit amet pharetra dolor placerat.\r\n\r\nInteger pharetra neque id tellus ultricies, in commodo ipsum rutrum. Donec ut ipsum nunc. Aenean in mauris vel quam suscipit suscipit quis ac purus. Mauris elementum dignissim dui nec tristique. Curabitur eleifend arcu et dolor blandit, a egestas odio ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris ullamcorper nunc at tellus efficitur, at sagittis libero placerat. Nam fermentum lacinia purus eu aliquet.\r\n\r\nFusce euismod ligula orci, sed sodales turpis dapibus non. Nunc a arcu eu ligula pretium laoreet. Aliquam ornare libero nec quam fermentum pretium. Mauris condimentum placerat est sit amet consectetur. Vestibulum tempus mauris nec dui blandit volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus consequat eleifend finibus. Ut dapibus lectus volutpat commodo convallis. Integer nulla ligula, rhoncus imperdiet ornare vitae, consequat ac mi. Nunc mi purus, volutpat id ex quis, posuere suscipit ex. Ut sed mauris quam. Nullam aliquam tincidunt neque sit amet pharetra.', 'Joseph', '1703095262.jpg');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_12_09_190045_transaksi', 1),
(11, '2023_12_09_190136_kategori_kursus', 1),
(12, '2023_12_09_190210_mentor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00be063cf9f879ab58b783902f9d9d9271959be984d7607dc99a04755153409491436bf4f609921b', 3, 1, 'token', '[]', 0, '2023-12-10 07:14:54', '2023-12-10 07:14:54', '2024-12-10 14:14:54'),
('00d1ffca79f6592a48e8ec75a190aad8c3b4e6b8a3581cad5a75705aea6b14cad709039029fb702a', 77, 12, 'token', '[]', 0, '2023-12-20 17:21:25', '2023-12-20 17:21:25', '2024-12-20 17:21:25'),
('00fef7d9dee6e7b0c4ba3b6e02c5b0ebb5c9a05ac8c3465297bff59af31c9cb07b5aaab545b22fc8', 65, 12, 'token', '[]', 0, '2023-12-20 06:01:33', '2023-12-20 06:01:33', '2024-12-20 06:01:33'),
('010e7ecf2f0cbae86ffa94909fe1daabd783a2d202700ed9d61c696a943e48da64d359a755c5b2d3', 3, 1, 'token', '[]', 0, '2023-12-10 09:32:01', '2023-12-10 09:32:01', '2024-12-10 16:32:01'),
('0150ab02276b6bc71d77522300aa0ca0af70f6b5b5d369c32fa7823481948ea25c2c33c141068e68', 3, 1, 'token', '[]', 0, '2023-12-12 07:03:15', '2023-12-12 07:03:15', '2024-12-12 14:03:15'),
('0182e357f37f57eeb21689da32ff44537b6fc4646fa0ad54ac3c9b4b376dc39c073277913dc34209', 3, 1, 'token', '[]', 0, '2023-12-11 02:00:49', '2023-12-11 02:00:49', '2024-12-11 09:00:49'),
('020b48665b483e493c6ee8d743c22ca2c223f9beab66180bdfc4b36f4247c8e46636405024f8907a', 4, 1, 'token', '[]', 0, '2023-12-10 06:53:00', '2023-12-10 06:53:00', '2024-12-10 13:53:00'),
('0251f3dab98ac4024999dc45a185d9cc8f44ab979097821eb20dcb66fd59306b3364200333bb3ee2', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:21', '2023-12-10 07:05:21', '2024-12-10 14:05:21'),
('0285fa5c1538beda980455a2c701cf0c3e5318f205ab13e5a8fa5042bea72dc361bbd75714404b63', 3, 1, 'token', '[]', 0, '2023-12-10 07:06:30', '2023-12-10 07:06:30', '2024-12-10 14:06:30'),
('02865dfa79c3e4b299f5c807cc7a96181396753d56010fabd203cc01d8a28418f476809d977e42c6', 44, 12, 'token', '[]', 0, '2023-12-16 05:15:30', '2023-12-16 05:15:30', '2024-12-16 12:15:30'),
('02d08d3bc194c30f1ab2110c16020ec33eec57c3bea7e1799300ded2553127eaca18c9ba24c79409', 68, 12, 'token', '[]', 0, '2023-12-20 15:53:31', '2023-12-20 15:53:31', '2024-12-20 15:53:31'),
('03456728a0d618a12f043064c3d2e919d5016ef2840e85bd2f075a5cb8b92c1e39c42929f4acba5d', 19, 1, 'token', '[]', 0, '2023-12-13 08:11:06', '2023-12-13 08:11:06', '2024-12-13 15:11:06'),
('04240cfe160ef21ee1a22c7c42a33eac7eb3fdf31ffd17f8046a35d110060c40f7de2b7a3c86b879', 3, 1, 'token', '[]', 0, '2023-12-11 02:27:25', '2023-12-11 02:27:25', '2024-12-11 09:27:25'),
('04548cfc21266b9587e2557c5adf42c0389918838e209d182bd2beede5b853cf2e2c4b7721988f07', 73, 12, 'token', '[]', 0, '2023-12-20 16:58:39', '2023-12-20 16:58:39', '2024-12-20 16:58:39'),
('04c1f459ee79fb8fe65e521f25b1f0423171246d76afc4042b779ab9dc09854373361fef8335606b', 3, 1, 'token', '[]', 0, '2023-12-10 06:44:49', '2023-12-10 06:44:49', '2024-12-10 13:44:49'),
('053543132969a3a1b856b5da179ce1d14b0d24a0513e71437e3f9534af341ea13050017558fc08e3', 3, 1, 'token', '[]', 0, '2023-12-10 06:02:31', '2023-12-10 06:02:32', '2024-12-10 13:02:31'),
('0541913d27f48e186de345e4374ae3769165b9e2d7112948f2a9a046578b9b5b424143efaa8c8045', 19, 1, 'token', '[]', 0, '2023-12-13 09:42:38', '2023-12-13 09:42:38', '2024-12-13 16:42:38'),
('058862cd268397e7c9a9c1d202142aa003a862db665830cec0aaa3b8af9f75cc2001dcdccefb3c7f', 3, 1, 'token', '[]', 0, '2023-12-13 01:04:41', '2023-12-13 01:04:41', '2024-12-13 08:04:41'),
('062cf9c34b108e9c68c630b8c13c1f3dd70376bbe3b64ee37adbe2985004d027dbe988bc85f41a47', 44, 12, 'token', '[]', 0, '2023-12-16 05:09:04', '2023-12-16 05:09:04', '2024-12-16 12:09:04'),
('0715df7293984784d03f301d94f5a8c3a7e14cb997737ba112ad3a9789c103cde797d1443955b9e6', 4, 4, 'token', '[]', 0, '2023-12-13 23:21:40', '2023-12-13 23:21:40', '2024-12-14 06:21:40'),
('074fc651cb2e2a4277abc016627085a817c97b17fe4350b71c5d09fca4556082509396cecce3d217', 3, 1, 'token', '[]', 0, '2023-12-11 08:06:56', '2023-12-11 08:06:56', '2024-12-11 15:06:56'),
('07b4642e395aca495881c9c4fb47a603657b113ca7b6100ba1c5ad0d10acd3e5dd7e79f530dde263', 43, 12, 'token', '[]', 0, '2023-12-16 05:29:26', '2023-12-16 05:29:26', '2024-12-16 12:29:26'),
('07b6137d666518db26433d046e231f128cc78dd614fdef4ed331a749a3109a2772e854e2ce74de04', 69, 12, 'token', '[]', 0, '2023-12-20 16:16:21', '2023-12-20 16:16:21', '2024-12-20 16:16:21'),
('0a20a7d7fccdbe9e2f41f29153207001a49faae1c94ece6fbdcc387f21d50d391aa91b7e609d6cbb', 3, 1, 'token', '[]', 0, '2023-12-11 02:26:38', '2023-12-11 02:26:38', '2024-12-11 09:26:38'),
('0a60f7051d6723603d54842f0f67b1391be6c7fd833c47169e16a412c374a4e6c02731ff64e5de88', 75, 12, 'token', '[]', 0, '2023-12-20 17:11:48', '2023-12-20 17:11:48', '2024-12-20 17:11:48'),
('0aad26d20ac308b0e064374f418920d396d7fb6e6f5eec7e1da36821a2f32216794df415b2d0c17a', 3, 1, 'token', '[]', 0, '2023-12-10 06:00:50', '2023-12-10 06:00:50', '2024-12-10 13:00:50'),
('0b69988685fc868aa6602194bcee2e25346311c16969470c3f9cdac9b069651a4c9834811aff91d6', 3, 1, 'token', '[]', 0, '2023-12-10 05:56:36', '2023-12-10 05:56:36', '2024-12-10 12:56:36'),
('0b80af35efd7300a7bd8aaec6bf4e10b5861eb5f8ad6611360a7167dc93a02eaa459a858ef3b3759', 51, 12, 'token', '[]', 0, '2023-12-16 16:40:51', '2023-12-16 16:40:51', '2024-12-16 16:40:51'),
('0c4dccc0c46345c1f60f7a0a94a702822ead64b3ce1f0dca38d16bdaaedf771ee6fcd1510bd97aea', 3, 1, 'token', '[]', 0, '2023-12-11 02:07:34', '2023-12-11 02:07:34', '2024-12-11 09:07:34'),
('0c8b79b74c3a1bd3d5a67ad1e0c3c2cf59337db46e0de60929a4e4bdca9b9496df83cece82a9e076', 48, 12, 'token', '[]', 0, '2023-12-16 07:01:00', '2023-12-16 07:01:00', '2024-12-16 14:01:00'),
('0cdd6444522e3542be1c6e70ae83da498da4bdde4af0a5cf066f809ed6ed0d81b7ec20d9a52af8fa', 68, 12, 'token', '[]', 0, '2023-12-20 17:13:19', '2023-12-20 17:13:19', '2024-12-20 17:13:19'),
('0dae6579048d84a9bb35313bb25ee9cba061b717e2f202e7d021ee817d155f257e0ddf953b216eb3', 19, 1, 'token', '[]', 0, '2023-12-13 11:24:19', '2023-12-13 11:24:19', '2024-12-13 18:24:19'),
('0de450ccce72603ce0a0ae7a067ac031f5acf7aea4cc5607350c7f3bba80cbc399a4565e3cfb5ddf', 3, 1, 'token', '[]', 0, '2023-12-10 08:54:25', '2023-12-10 08:54:25', '2024-12-10 15:54:25'),
('0e05617403c9f1974070d3a16a99fbd3efbb1ca1bec6e3a040c66a2d6095a72fc9d5f8d818d6628d', 78, 12, 'token', '[]', 0, '2023-12-20 17:24:08', '2023-12-20 17:24:08', '2024-12-20 17:24:08'),
('0e2a3db665ab7c8801f502d53423ef73f70fc5e00c9266a9342fc4de52204b33f4420894fbd22190', 3, 1, 'token', '[]', 0, '2023-12-10 06:51:07', '2023-12-10 06:51:07', '2024-12-10 13:51:07'),
('10acdc8442b9c892717e9e8195eebf3c7fda85900af9dd8644357020a57a9c059f88c5a5c1ad2388', 69, 12, 'token', '[]', 0, '2023-12-20 15:09:46', '2023-12-20 15:09:46', '2024-12-20 15:09:46'),
('1172c618e779e8736dd6335e58976200f6f926df64b4e67c432888c9d1705a8ab3ab39e45ef79275', 65, 12, 'token', '[]', 0, '2023-12-20 13:49:47', '2023-12-20 13:49:47', '2024-12-20 13:49:47'),
('11e2f98b6550b94b904d1f5e11f8eeae475f998c9c74f580a28afb87383af66b5a7d2f31cdf9d4f2', 3, 1, 'token', '[]', 0, '2023-12-10 08:48:22', '2023-12-10 08:48:22', '2024-12-10 15:48:22'),
('12233ebcb3b8b391d3d618e50e80aab0ae599b709650fa3b0953beb735fdadefa1c5738ac016da27', 69, 12, 'token', '[]', 0, '2023-12-20 14:18:24', '2023-12-20 14:18:24', '2024-12-20 14:18:24'),
('12b1693b97bef3465d4d5fa49d2e205a231026508ba45dbd96a7033113296ec451b89771384153ee', 4, 1, 'token', '[]', 0, '2023-12-13 22:08:33', '2023-12-13 22:08:33', '2024-12-14 05:08:33'),
('12b464b2aed1497bd1968cccdf7558eb65f745ff28589c71706919d3035ea8f6b9533070e1b5a443', 3, 1, 'token', '[]', 0, '2023-12-11 02:24:41', '2023-12-11 02:24:41', '2024-12-11 09:24:41'),
('132450ba669994daca5c193018ad3c993d72612dcb94ef952717256774a85daa46381fc70675cd06', 85, 12, 'token', '[]', 0, '2023-12-20 18:30:17', '2023-12-20 18:30:17', '2024-12-20 18:30:17'),
('136637b991b03b3b6faa291941dbb97b95ecf56f56b167c3d79f628e96299a33796ba0a6d90314f0', 3, 1, 'token', '[]', 0, '2023-12-10 08:43:18', '2023-12-10 08:43:18', '2024-12-10 15:43:18'),
('138c8fb10a91e7853dd1276efb9b35ee414bb1376cb5fab1e4677a70b51cee77b30a4b62a0c9f6f2', 3, 1, 'token', '[]', 0, '2023-12-10 08:48:49', '2023-12-10 08:48:49', '2024-12-10 15:48:49'),
('14176334d0258e35b334bd1405548fc1fe41127e48ecbf54ac0876c36e4e87ef685d6b4bd0ea59c6', 68, 12, 'token', '[]', 0, '2023-12-20 14:13:49', '2023-12-20 14:13:49', '2024-12-20 14:13:49'),
('142fc29db041a41732a4bab6a82a3c2eb9b12bc160322a7d08b38fae410b88d45c487db1c2878ff8', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:24', '2023-12-10 07:05:24', '2024-12-10 14:05:24'),
('14e382fa599584eadd67f5f7014c6449c8e88f4bea9492f20148c8ef7a1d26700fbbbfd4572f7d36', 3, 1, 'token', '[]', 0, '2023-12-11 02:10:33', '2023-12-11 02:10:33', '2024-12-11 09:10:33'),
('1521c03c082691082d2a1fc382aee110577faecc79ec34d4d39c30ac1d8319188989b3aa831c3486', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:24', '2023-12-10 07:05:24', '2024-12-10 14:05:24'),
('1581fc4af04dc5f9a2c06cfe75e3df609283b59e3d6d15a87d6ac3de0ef3533d0adbd372f75e3314', 68, 12, 'token', '[]', 0, '2023-12-20 14:46:52', '2023-12-20 14:46:52', '2024-12-20 14:46:52'),
('15cbfb6f52e50dedfa764cbcc2f0165f85a3e8c8aa7842357f1e925e26b23164e9d1483aa93cdac3', 3, 1, 'token', '[]', 0, '2023-12-12 07:07:13', '2023-12-12 07:07:13', '2024-12-12 14:07:13'),
('161fde98dcc93f8b9f1cc012e5eb09f219d66ad0094de78c04ee6a2a75e55280f88a0652f3892d9f', 3, 1, 'token', '[]', 0, '2023-12-10 06:02:10', '2023-12-10 06:02:10', '2024-12-10 13:02:10'),
('16a81f6bb81a7c0cc28ca67f93825c32096c0b4e510b3401ba3b3b84649b05216a457ab5b5e2ea64', 3, 1, 'token', '[]', 0, '2023-12-11 01:53:22', '2023-12-11 01:53:22', '2024-12-11 08:53:22'),
('17e2b5f04645d9329d8132d056e135a07b0504a9bbc64cf549e9fe0b9f52867492cba090e6c28447', 3, 1, 'token', '[]', 0, '2023-12-10 07:01:43', '2023-12-10 07:01:43', '2024-12-10 14:01:43'),
('18044c7df58cb6e91d16c2230ff394119363c75b992a0798ad68157fbe5c3dc633afb0dcd5ed3afe', 3, 1, 'token', '[]', 0, '2023-12-11 02:26:49', '2023-12-11 02:26:49', '2024-12-11 09:26:49'),
('1823a780ca0f1edc15704e7d83a45714fea0c0701a13d1ab58bbd30392f26caf8c37a8b52e67c560', 73, 12, 'token', '[]', 0, '2023-12-20 17:07:52', '2023-12-20 17:07:52', '2024-12-20 17:07:52'),
('1845f71f7617106b20016d9bd064656aedc4513c3b999efe8030c4cc7b0c0a24f88a91d5e7c4f09e', 65, 12, 'token', '[]', 0, '2023-12-20 17:13:08', '2023-12-20 17:13:08', '2024-12-20 17:13:08'),
('18934eea2f4b2fedf250fc60039391dba0733095c076a9178c690382ef26922a4a5ec0d8ab07e48b', 65, 12, 'token', '[]', 0, '2023-12-20 16:31:26', '2023-12-20 16:31:26', '2024-12-20 16:31:26'),
('189c429ccfc80d0eeb9bdec80ece02df466929ab0cc7b7f894116469c86c87cc7b439184a71451ee', 19, 1, 'token', '[]', 0, '2023-12-13 08:10:46', '2023-12-13 08:10:46', '2024-12-13 15:10:46'),
('1962337d732bcbba103fcd806c85c22c044b3e845d585a368b888124a17b6e0b42012b7e8c8811c7', 19, 1, 'token', '[]', 0, '2023-12-13 21:11:57', '2023-12-13 21:11:57', '2024-12-14 04:11:57'),
('19afe6aa7d99564c7986ffe60b0b25f1fc58f1725dfa4d8a28e0d8f7f49f62331ada2d68f52dc4ca', 65, 12, 'token', '[]', 0, '2023-12-20 17:59:19', '2023-12-20 17:59:19', '2024-12-20 17:59:19'),
('19b2263c2d47ba2766c0fb56b2afd60ace9b606591b8e9076cc326583a9421b55a7a4d6dcf1339ff', 19, 1, 'token', '[]', 0, '2023-12-13 08:41:34', '2023-12-13 08:41:34', '2024-12-13 15:41:34'),
('1a33a3f3266a29dc9e6e3f935f36fc02907af85a7ef515b08db937cb9fe5df018f898b601e8cdb32', 3, 1, 'token', '[]', 0, '2023-12-10 09:25:46', '2023-12-10 09:25:46', '2024-12-10 16:25:46'),
('1aa18eefdd6e3e9e716a3e506450f4fc18c0c19979ec6dc82e6c61e0e00ce060ef023ec7083eeaae', 19, 1, 'token', '[]', 0, '2023-12-13 08:39:03', '2023-12-13 08:39:03', '2024-12-13 15:39:03'),
('1ae17738acb8d23b4bd3818b717687a7a1b3b7a71aff00d8579d092ec30a51ad0329155cfab5eea2', 3, 1, 'token', '[]', 0, '2023-12-11 02:51:59', '2023-12-11 02:51:59', '2024-12-11 09:51:59'),
('1b2a0cef4b4a38b7a0d4c9ae190143df86b1107ce491cdfa320e10661d847fb78fd43fdce1277861', 72, 12, 'token', '[]', 0, '2023-12-20 16:52:45', '2023-12-20 16:52:45', '2024-12-20 16:52:45'),
('1be75e89717ed3f520e9822c92d17a18924f41fe9edb6998c8bb4a6bacf95d0b5a01a774cea22765', 82, 12, 'token', '[]', 0, '2023-12-20 17:40:10', '2023-12-20 17:40:10', '2024-12-20 17:40:10'),
('1c5a476f99d0bd3442a887de0546dffb7c2738b12c441a907d2d25fe82ef3a1a7947339ff9296066', 3, 1, 'token', '[]', 0, '2023-12-11 02:43:21', '2023-12-11 02:43:21', '2024-12-11 09:43:21'),
('1c8bfa61d725a29a2c8d32675c92d87927b69af66eaf5d31be028359400fb85e108a5c60d89ad0ac', 82, 12, 'token', '[]', 0, '2023-12-20 18:06:36', '2023-12-20 18:06:36', '2024-12-20 18:06:36'),
('1ca59479fe8a22151bf9c5a9babb2c67380bdb2b54af965428de3cb1df5bffe18a0c4b619d626247', 65, 12, 'token', '[]', 0, '2023-12-20 06:50:04', '2023-12-20 06:50:04', '2024-12-20 06:50:04'),
('1d0b813d5b4adf99247071f7ee0c75246566a57ed312115dd11c69b9e88dd0e2eb176491ac199e41', 84, 12, 'token', '[]', 0, '2023-12-20 18:19:05', '2023-12-20 18:19:05', '2024-12-20 18:19:05'),
('1d7c51f129020be90e8f6e28775c0c98e157bfb6f7a2e8615327b12922a19431890b8950a9104c77', 3, 1, 'token', '[]', 0, '2023-12-10 08:44:28', '2023-12-10 08:44:28', '2024-12-10 15:44:28'),
('1e56211d0014aacd450b3faa7fb9eb80305cdb41e9fb430ebb455aa43bb2c3aae4cac91cb1df30d7', 82, 12, 'token', '[]', 0, '2023-12-20 18:16:44', '2023-12-20 18:16:44', '2024-12-20 18:16:44'),
('1fd9908d49d6cb1562cf905ec9d46e675d11dcdfbb826152151d7a1c2534dbd5d1d509a3ad0c977b', 48, 12, 'token', '[]', 0, '2023-12-16 07:00:46', '2023-12-16 07:00:46', '2024-12-16 14:00:46'),
('20017694989e6b93fb06aebd35ba8a334e73dce84fdd4edae49b634828287e5329d36e0520b4d529', 19, 1, 'token', '[]', 0, '2023-12-13 10:49:41', '2023-12-13 10:49:41', '2024-12-13 17:49:41'),
('206000b31afdfa35e794a543284439dee8d52e9f1ceffc17e68c710b0065e24e91b6d995c31d754a', 3, 1, 'token', '[]', 0, '2023-12-11 08:53:06', '2023-12-11 08:53:06', '2024-12-11 15:53:06'),
('20d04fa0dfaa332a2e4640549a284c5535fd0aaeae537c4e40a09a6ac49e494288acb2ef63e9a184', 19, 1, 'token', '[]', 0, '2023-12-13 10:24:17', '2023-12-13 10:24:17', '2024-12-13 17:24:17'),
('20f910c087130195b1212a8a48c1bef4f122b98da93f6001a133178ad68b916b8c3ac41b9e87b54d', 69, 12, 'token', '[]', 0, '2023-12-20 14:30:27', '2023-12-20 14:30:27', '2024-12-20 14:30:27'),
('2176536173bf9b56ba95d9df712654c429eb52e0a957fd519df667ef7cc47d223f0c00309a7ea96e', 3, 1, 'token', '[]', 0, '2023-12-10 07:08:10', '2023-12-10 07:08:10', '2024-12-10 14:08:10'),
('21ab0e1c80eda15d08ca816067cc9586c2dc389b7034c2af3c5b38cbbd3adf715f54df2cc5356d7d', 3, 4, 'token', '[]', 0, '2023-12-13 23:21:29', '2023-12-13 23:21:29', '2024-12-14 06:21:29'),
('22159e17a7787360506be394d7130b90ea48a569170a5ef8b98f4a900c6f18f742572bea22fe6dd6', 24, 4, 'token', '[]', 0, '2023-12-14 02:11:07', '2023-12-14 02:11:08', '2024-12-14 09:11:07'),
('23560d112f6fbfee86bc2859209b7b713af363784afe9cf0a704bbc94c6c3867d597d98fb8ae8ac5', 3, 1, 'token', '[]', 0, '2023-12-10 07:08:02', '2023-12-10 07:08:02', '2024-12-10 14:08:02'),
('23d656db3417cee46a091ceb22acb7db2dd61590d1fbb05a6a4dd38ffdd9fe9d5025f6abf7a6ac55', 3, 1, 'token', '[]', 0, '2023-12-10 08:27:48', '2023-12-10 08:27:48', '2024-12-10 15:27:48'),
('24c4f885b39b4862b09a9142df6998a8aece1e85e8e1a08ae4be65c86a226e4aca7546d20dea0121', 67, 12, 'token', '[]', 0, '2023-12-20 06:14:33', '2023-12-20 06:14:33', '2024-12-20 06:14:33'),
('24d343b223ccdd81813872c3523b0341aa0ba40514b1e30dc858a7ca0347c48d7c9f42f4dca25f59', 83, 12, 'token', '[]', 0, '2023-12-20 18:30:12', '2023-12-20 18:30:12', '2024-12-20 18:30:12'),
('24d7d5146e914467a53ed5a06dc58dbfa2c8f35a23d520a6bcfcb5a0ab576e09d86fb0d520bdb6e5', 65, 12, 'token', '[]', 0, '2023-12-17 03:24:17', '2023-12-17 03:24:17', '2024-12-17 03:24:17'),
('2547b41b1529a48649d8449df0bb15ec145d73af0de124956f831c86278db1775e7bec37dedf6ced', 3, 1, 'token', '[]', 0, '2023-12-10 07:28:00', '2023-12-10 07:28:00', '2024-12-10 14:28:00'),
('25d97b5e7c560ff0b87afa8c8ab2b428fc35170a9b2ba753ed4d1a33bfce8d77880ad35a7f7ffc0e', 3, 1, 'token', '[]', 0, '2023-12-11 02:28:26', '2023-12-11 02:28:26', '2024-12-11 09:28:26'),
('2604c16815ce20e97f312f00b99e5a7d368c95aa7df3f608382ebadbec2cb43466dec53e6850c67c', 3, 1, 'token', '[]', 0, '2023-12-11 02:30:20', '2023-12-11 02:30:20', '2024-12-11 09:30:20'),
('2646509f5d7132718ad07907cbd9bc8f629a39ff7c0329c839138231252c9afce810a60d84b93ffb', 3, 1, 'token', '[]', 0, '2023-12-10 05:54:17', '2023-12-10 05:54:17', '2024-12-10 12:54:17'),
('26a0f55747497cd175f8c190a504407bc30a4a9d99804ead8f08bdb938b401a2ecc74aaabb4663aa', 69, 12, 'token', '[]', 0, '2023-12-20 16:14:16', '2023-12-20 16:14:16', '2024-12-20 16:14:16'),
('26af903e03fef8857cf948210943424adb7641797192bee3285b34280b1216c552dcfd5b2c124eb3', 43, 12, 'token', '[]', 0, '2023-12-16 05:26:32', '2023-12-16 05:26:32', '2024-12-16 12:26:32'),
('2855e7e5aab3ef59cb9394ce7b4ad3e856a2ed19b5a7ce8801cd3a895c0a4a422bbf4eb5c594b71f', 77, 12, 'token', '[]', 0, '2023-12-20 17:27:56', '2023-12-20 17:27:57', '2024-12-20 17:27:56'),
('291ea247d431d5f9df7574da8f2157a097e4e32400301939244c668a1ca3018fbfe4381af15997fb', 80, 12, 'token', '[]', 0, '2023-12-20 17:53:20', '2023-12-20 17:53:20', '2024-12-20 17:53:20'),
('2aaeb2f8e40dd4118fdeace3c0d03f51d33728e54870f1bd83c149885a9c83c96b2079f5401b5033', 43, 12, 'token', '[]', 0, '2023-12-16 05:30:46', '2023-12-16 05:30:46', '2024-12-16 12:30:46'),
('2b8104fbdfd8379fc6bdf8cf27205e78693a51afb1ab1e341040781e577fcf9eeb910ff272ac4fbf', 3, 1, 'token', '[]', 0, '2023-12-10 06:41:38', '2023-12-10 06:41:38', '2024-12-10 13:41:38'),
('2bab27f6d70e9dc7ca497196567e933c1e31162325a04d9560805fdc5e08c5b36579400e0ccd3aef', 3, 1, 'token', '[]', 0, '2023-12-11 02:31:17', '2023-12-11 02:31:17', '2024-12-11 09:31:17'),
('2c62bf0b5976fe592245f97fcc228d6de5706faf080c29bbd49f141f7e5f6d2fcc49989a30321fb2', 65, 12, 'token', '[]', 0, '2023-12-20 12:17:41', '2023-12-20 12:17:41', '2024-12-20 12:17:41'),
('2cbd57d5225b30aa5556fb703f64e2c98b05ff9d565cb818a1c5e52ed1ed3d8e0cc2358fc19bc5be', 3, 1, 'token', '[]', 0, '2023-12-10 06:41:45', '2023-12-10 06:41:45', '2024-12-10 13:41:45'),
('2fcfe38f8c1e1d735371924b4a39e5573677d86f8347c2e75b9c7e0f611567f792a8b6bc486d5db2', 51, 12, 'token', '[]', 0, '2023-12-16 17:05:41', '2023-12-16 17:05:41', '2024-12-16 17:05:41'),
('2fd16952a50e7eb5ebd66401f20fde1f5242179a0f73bd6b15a06685bd98efe1788758c87dd2817e', 68, 12, 'token', '[]', 0, '2023-12-20 12:03:38', '2023-12-20 12:03:38', '2024-12-20 12:03:38'),
('2fecf4ea9107e4670a809f36ef42c1c36348d972a6d8c13e542a72c43b638d02e9b04f7ed6387148', 3, 1, 'token', '[]', 0, '2023-12-10 09:07:27', '2023-12-10 09:07:27', '2024-12-10 16:07:27'),
('3036de462eb20023cea5e738f2929c66d1e146b52dc579f9d67800911f19d7cbf58c9ae9923c7462', 3, 1, 'token', '[]', 0, '2023-12-11 02:03:06', '2023-12-11 02:03:06', '2024-12-11 09:03:06'),
('305de517d17e68ba07b68c6a423f8d015480d3c566669f56cf1239773fe57e293951c54e70a591ef', 65, 12, 'token', '[]', 0, '2023-12-20 11:59:09', '2023-12-20 11:59:10', '2024-12-20 11:59:09'),
('30800eeabf25c1d3cb2e8e4f17cdeac2f5891c571faecfbba5eca7faf273ea9237d5a66e09f51a02', 51, 12, 'token', '[]', 0, '2023-12-16 17:01:23', '2023-12-16 17:01:23', '2024-12-16 17:01:23'),
('30aa7f5d11e2925604069602490913be38be40bf1bca079ae3aaa2c26963e83528bc7cd447df1124', 4, 1, 'token', '[]', 0, '2023-12-10 07:03:43', '2023-12-10 07:03:43', '2024-12-10 14:03:43'),
('31c3250793d9cab254ce29d34bd53bca003abc43b7b63b274c0b0218d2f0df59ed956c28426ca806', 78, 12, 'token', '[]', 0, '2023-12-20 17:34:26', '2023-12-20 17:34:26', '2024-12-20 17:34:26'),
('333983dbb30659fdfd1bf14a0c8612f23299ff26384d27ee70599bf983a656bc880dfa88e9ace5d2', 43, 12, 'token', '[]', 0, '2023-12-16 05:37:29', '2023-12-16 05:37:29', '2024-12-16 12:37:29'),
('33a89a49741c7fe4b3fc5517e3271485b1779765e1e7a9fd1cb644ea30e2fc201f7078a36d2f6776', 72, 12, 'token', '[]', 0, '2023-12-20 16:53:27', '2023-12-20 16:53:27', '2024-12-20 16:53:27'),
('33b4fac0c58843d82b9a25b1e4c2f06e03e6d8d9aa984e664fd8ca17d3b87294088a8c60d661d7ea', 19, 1, 'token', '[]', 0, '2023-12-13 10:27:29', '2023-12-13 10:27:29', '2024-12-13 17:27:29'),
('344d5320119fc3c55c31a8aa08b07c316bb36b6d48c5f33f32a962b420791cffdfb1e4efb2597801', 3, 1, 'token', '[]', 0, '2023-12-11 02:41:07', '2023-12-11 02:41:07', '2024-12-11 09:41:07'),
('3473e3ec738378bd0b2f63ebcc7192a2ed2e9329ea3a15039e68a54d0e3791cc75ce099493021a44', 3, 1, 'token', '[]', 0, '2023-12-12 04:01:37', '2023-12-12 04:01:37', '2024-12-12 11:01:37'),
('3524c730e6786bf0336f17bcd833e968ea8a90084ae3d9ef7abc452ac1bfcd1f176f8f30ae017f2f', 4, 1, 'token', '[]', 0, '2023-12-11 01:53:58', '2023-12-11 01:53:58', '2024-12-11 08:53:58'),
('357127df167b8d94dc0d16ddfd478c1258e86954b4fcc03e3dd270c6570a09bb839ea1a652a0352b', 3, 1, 'token', '[]', 1, '2023-12-13 00:32:21', '2023-12-13 01:01:56', '2024-12-13 07:32:21'),
('35775075bdbbb9f288bdaf37ef0211f87e7cb20c1fd8a2f8e283bda8a8749302fb19616fa6a5721d', 3, 1, 'token', '[]', 0, '2023-12-12 04:31:21', '2023-12-12 04:31:21', '2024-12-12 11:31:21'),
('35c21d38a1eec87df49b3e74b5610a4bdd0b4beedbec95489885b655d7984a16242fe6010f3cad8b', 3, 1, 'token', '[]', 0, '2023-12-10 08:43:56', '2023-12-10 08:43:56', '2024-12-10 15:43:56'),
('35d43f0eca4afb506d904ca24c9b35880655b2f4883e223a2df9a148c308006e079bd0e187921f60', 76, 12, 'token', '[]', 0, '2023-12-20 17:20:04', '2023-12-20 17:20:04', '2024-12-20 17:20:04'),
('35f1ab1ae53aef20b5e580d50b77be77f2d7344c7a54b12fdac4a5f527d43b156308a0b91c8f15b6', 75, 12, 'token', '[]', 0, '2023-12-20 17:12:03', '2023-12-20 17:12:03', '2024-12-20 17:12:03'),
('366b0728140f2cc7f01899b5957e5d31cd89c432b3c3380e5147725a200209887ff1ba60d5a3cebd', 3, 1, 'token', '[]', 0, '2023-12-11 02:42:21', '2023-12-11 02:42:21', '2024-12-11 09:42:21'),
('37518b2c5f40120dbf4c0520b0fa507e1093ffe7e6d967074c6af7280822307f7e266f254e96b70f', 69, 12, 'token', '[]', 0, '2023-12-20 13:50:25', '2023-12-20 13:50:25', '2024-12-20 13:50:25'),
('380b8a8de8bb9908e7adf79ae421262c5d8b89fe10e754512ce3055132b9dc060b71f872f79fabf3', 3, 1, 'token', '[]', 0, '2023-12-13 01:09:41', '2023-12-13 01:09:41', '2024-12-13 08:09:41'),
('38526ea2b95befbdaf8e240796ea9866cb048e727d1f3e9afc5f972fd5838dadeee1f784eaa9e618', 87, 12, 'token', '[]', 0, '2023-12-20 18:41:43', '2023-12-20 18:41:43', '2024-12-20 18:41:43'),
('3902dfe39e6d5c5218f6b45dbe4cf1ad3e90772edfeaddf4c8456876c5fe9efe31ef5a65f5c1530f', 80, 12, 'token', '[]', 0, '2023-12-20 18:10:25', '2023-12-20 18:10:25', '2024-12-20 18:10:25'),
('39585343531ee36cce509d09566c7d1eed6459fdd4e4ae284be0134bfaf22537ab13d783991b5992', 68, 12, 'token', '[]', 0, '2023-12-20 13:50:18', '2023-12-20 13:50:18', '2024-12-20 13:50:18'),
('39ea6e6f2406be3d56d2bb5deaeede354ccdc12ebc26b6a3b82bd2ed00e22565115eb843c40b8201', 4, 1, 'token', '[]', 0, '2023-12-13 08:27:09', '2023-12-13 08:27:09', '2024-12-13 15:27:09'),
('3af6045e8df6be2f99bac0c50dc47eb81e799ab6ab1e96419db9d3bc477c6359e8e8f2ed9cfb91bc', 3, 1, 'token', '[]', 0, '2023-12-10 06:45:36', '2023-12-10 06:45:36', '2024-12-10 13:45:36'),
('3bb2b40559cb779ab905b550991d95cdeb2faa6d10f928311ed2c3b45db9835e797638bf3a78a55f', 82, 12, 'token', '[]', 0, '2023-12-20 18:09:52', '2023-12-20 18:09:52', '2024-12-20 18:09:52'),
('3c1f4794341606a39ab69c61ca371b12a8283586e8fb787334f20c4d7a9adf7a62cf805c978bb5ca', 4, 1, 'token', '[]', 0, '2023-12-10 07:06:26', '2023-12-10 07:06:26', '2024-12-10 14:06:26'),
('3cc50be5c89f1f09b072af28a27882dc4407b384cdb1a1ad00bd3af77a59e6dc5baef1c7bd9f4c78', 3, 1, 'token', '[]', 0, '2023-12-13 00:10:32', '2023-12-13 00:10:33', '2024-12-13 07:10:32'),
('3cfec0a7ec8a28e450db7ab87eb3aaf71590e11b83af77aa9f406980a282e8ebb63f82147ec7f3c9', 44, 12, 'token', '[]', 0, '2023-12-16 05:08:21', '2023-12-16 05:08:21', '2024-12-16 12:08:21'),
('3d32d8efeeba00cb432cefdc0d64255325fc981a6a5b21b02cfe04314ee9352cf160c767a46f2ba1', 3, 1, 'token', '[]', 0, '2023-12-11 08:02:10', '2023-12-11 08:02:11', '2024-12-11 15:02:10'),
('3d49571cb09f8ffeeae646cd34f3a5f9cb699daa4a932c4d4bb08a638866cdf43acd22bf547c7fcd', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:22', '2023-12-10 07:05:22', '2024-12-10 14:05:22'),
('3ddb77654e4b70128f858cf6a8dcdadd116855e7d8ee782345b84cc0db741f17c5bf1d3c49e06ee6', 4, 1, 'token', '[]', 0, '2023-12-13 03:37:58', '2023-12-13 03:37:58', '2024-12-13 10:37:58'),
('3e76bedddd4ba29c57af0377952a949eb1c7d89a73275d126b41ebc762036e604c093a6f33a2af76', 95, 15, 'token', '[]', 0, '2023-12-20 22:01:43', '2023-12-20 22:01:43', '2024-12-21 05:01:43'),
('3e8c0b6dc19b000378321fe10b0f175705e35fbcae03ba87b533b14b3aaeac3962aad40f65a36401', 69, 12, 'token', '[]', 0, '2023-12-20 14:23:05', '2023-12-20 14:23:05', '2024-12-20 14:23:05'),
('3f555122f97871345fc7785b40d9e357830ba368fe6c2d5427297e6ce5fbced3c23b87575dd02afe', 24, 8, 'token', '[]', 0, '2023-12-14 03:06:53', '2023-12-14 03:06:53', '2024-12-14 10:06:53'),
('3fe45a007b45b63aa8ddfea732ed1f8e34b50a3f63f2b0a46f9c45a0397ac4f531e4e449cd09e2bf', 62, 12, 'token', '[]', 0, '2023-12-16 17:31:42', '2023-12-16 17:31:42', '2024-12-16 17:31:42'),
('3feabe0402f8e3d1429fac60fa703f1c69140bb8a568199037617a5225dd7de1a2b98a4eb4066548', 3, 1, 'token', '[]', 0, '2023-12-10 07:01:42', '2023-12-10 07:01:42', '2024-12-10 14:01:42'),
('405ee96d68b2d0474aa8303182b72709b11e117748081ab166df8d288b7f2d10d5c2ae8c49a96787', 3, 1, 'token', '[]', 0, '2023-12-10 09:39:37', '2023-12-10 09:39:37', '2024-12-10 16:39:37'),
('40a9253f61eb3308cc35c29e919a944b05f673c610c699acc4a74efd6f3d9a5b69376766efbb18b9', 67, 12, 'token', '[]', 0, '2023-12-18 17:25:20', '2023-12-18 17:25:20', '2024-12-18 17:25:20'),
('40e198e380d684b4a001259f5be4e0c8b4f29f178fb4bd8566b55def5c20ef637bc0a392afef7d9d', 68, 12, 'token', '[]', 0, '2023-12-20 16:56:40', '2023-12-20 16:56:40', '2024-12-20 16:56:40'),
('41a43d03da2bb7caf92fe064ec9bddfc75053b704106a0da2602dea136d749661aaf79b84074b7ff', 4, 1, 'token', '[]', 0, '2023-12-10 07:06:25', '2023-12-10 07:06:25', '2024-12-10 14:06:25'),
('425b90715d48e0eee4db95bbc9fdb9fc9634fa26a14cd76d698c20d4645ccf2cb2752444c9f7b0bc', 4, 4, 'token', '[]', 0, '2023-12-14 00:00:50', '2023-12-14 00:00:50', '2024-12-14 07:00:50'),
('4324f4dfb4f4674ac1774bf456acbe29576139705c484094ea61fd892bf09f9b6178b13d49829267', 44, 12, 'token', '[]', 0, '2023-12-16 05:09:39', '2023-12-16 05:09:39', '2024-12-16 12:09:39'),
('433a8b3bb2102fed1fdd646ab3ebeb2eb1f48aab39d38d68626d14c62480c0f7e542b9f52b73a707', 72, 12, 'token', '[]', 0, '2023-12-20 16:54:11', '2023-12-20 16:54:11', '2024-12-20 16:54:11'),
('43fd92fb3a113e3aec9d728b9251871e96002c148faf67c5e7571a387b6641340e668b6dd01f538b', 3, 1, 'token', '[]', 0, '2023-12-10 07:01:58', '2023-12-10 07:01:58', '2024-12-10 14:01:58'),
('45a2156b566dead74352ca74ed9299c25e9902762212f609c0c282924ba6b53544f20e6333c8bd2b', 72, 12, 'token', '[]', 0, '2023-12-20 16:39:54', '2023-12-20 16:39:54', '2024-12-20 16:39:54'),
('464bd30b2f50247f7515692a22d9b826fe9ef858f1302ae742ac7558c260477c4b7f86a99ff49554', 3, 1, 'token', '[]', 0, '2023-12-10 09:23:33', '2023-12-10 09:23:33', '2024-12-10 16:23:33'),
('47314551ab96f07723d155fe9ac165df8eab2b2ffe2ce54faff3ca8636dbf6c7f9b0541901840029', 68, 12, 'token', '[]', 0, '2023-12-20 16:19:21', '2023-12-20 16:19:21', '2024-12-20 16:19:21'),
('4780b9c90052c6b56a43f4aafd90e51d91ac235a5f4775921e750937b57c652fb9ce4727d85f25c3', 4, 1, 'token', '[]', 0, '2023-12-13 04:17:14', '2023-12-13 04:17:15', '2024-12-13 11:17:14'),
('47d9530f230f64fa1b18b00285e1f83fde42c3c318c5ba5593a18f9431f963139fdea139fe8e8c14', 4, 1, 'token', '[]', 0, '2023-12-10 05:26:16', '2023-12-10 05:26:16', '2024-12-10 12:26:16'),
('48953203612bb59f4df18b9a22564b750e57cb6066887f3523d91153e34c5f9e17a0e13796d4cc21', 3, 1, 'token', '[]', 0, '2023-12-11 01:40:28', '2023-12-11 01:40:28', '2024-12-11 08:40:28'),
('491f84e20d19ca126ca1109d3ae10a394a4a5903328af95155af6461eee5332e4364393535f9d057', 46, 12, 'token', '[]', 0, '2023-12-16 05:26:23', '2023-12-16 05:26:23', '2024-12-16 12:26:23'),
('498b17ae94b529a7e8c12b1f2b73c9589034aa71896799bc7e596332d62da6336ace5ccb197ce433', 82, 12, 'token', '[]', 0, '2023-12-20 18:14:36', '2023-12-20 18:14:36', '2024-12-20 18:14:36'),
('4c851b05b17de1b3c34ab2fce1f8077656e5b15368e0d18ee1e8ef7873852fefe71a8e2d5f870385', 68, 12, 'token', '[]', 0, '2023-12-20 14:35:29', '2023-12-20 14:35:29', '2024-12-20 14:35:29'),
('4c954508b9c9b4b12cbba93378792210764f9ea5fc1056f39dc526d7d480fa4dd8084f9d90cc7506', 19, 8, 'token', '[]', 0, '2023-12-14 02:59:07', '2023-12-14 02:59:07', '2024-12-14 09:59:07'),
('4d260039c355103793881ea30ca8abe955a8685091eaceb0035bed93594562311c30a058b8feb29c', 3, 1, 'token', '[]', 0, '2023-12-11 01:58:49', '2023-12-11 01:58:49', '2024-12-11 08:58:49'),
('4dbe2c88e681db7f4c75845b633cd6c8fa3921ed6291f5da8104b47643977201e93eaaef4477cf19', 72, 12, 'token', '[]', 0, '2023-12-20 16:56:23', '2023-12-20 16:56:23', '2024-12-20 16:56:23'),
('4dd2c77983878df18e706ec4bbef206ebd4fe7a3c393d1cc36dafe4bce0d7da8f9a7bcd0f531b5c1', 44, 12, 'token', '[]', 0, '2023-12-16 05:09:50', '2023-12-16 05:09:50', '2024-12-16 12:09:50'),
('4e905d73f1587a9449de5c84b589cdeb6e500b8b9eac2eb67b3df6f7ad1f4e95c8c538e3f9a3792c', 65, 12, 'token', '[]', 0, '2023-12-16 17:45:04', '2023-12-16 17:45:04', '2024-12-16 17:45:04'),
('4fae0fc70a851a299f59bbfddab52ae315d76e2e6899bc7d2193d72b505be412a3d67f02aeeabebd', 3, 1, 'token', '[]', 0, '2023-12-10 07:06:16', '2023-12-10 07:06:16', '2024-12-10 14:06:16'),
('5007387bab3000accdc5e864ce31c9e68d0b33d8b13e7b4ac9a2e597a03fb5370f4a074917c45b12', 67, 12, 'token', '[]', 0, '2023-12-20 05:44:34', '2023-12-20 05:44:34', '2024-12-20 05:44:34'),
('503c23cd431bd2a4871320a3c1ac704126081b0c250e99c631c331219541a5d359de44d6cf5511c6', 68, 12, 'token', '[]', 0, '2023-12-20 17:11:13', '2023-12-20 17:11:13', '2024-12-20 17:11:13'),
('5066db1e7ee453e3553defd594e421da6bffaca6baa2d718c3459df24aab46bfe1bbbf0b4d406673', 3, 1, 'token', '[]', 0, '2023-12-11 02:19:33', '2023-12-11 02:19:33', '2024-12-11 09:19:33'),
('50e982e7301a505dd4e46c1563b9b626936c5c52a4401dfe18e677677bd4c54b2eb804512ef2a9a8', 51, 12, 'token', '[]', 0, '2023-12-16 07:08:23', '2023-12-16 07:08:23', '2024-12-16 14:08:23'),
('5176bb35de7398ada9460d606280112fbbfeeb9e4aa0b7fc42405809192518fb42a8ba35a27dab91', 3, 1, 'token', '[]', 0, '2023-12-11 20:59:06', '2023-12-11 20:59:06', '2024-12-12 03:59:06'),
('51a9a96479db0d64567800e18236d8bebc1f58bc88c8a25f686cdfb99dc95d4d827c134983ed1d26', 3, 1, 'token', '[]', 0, '2023-12-12 07:00:41', '2023-12-12 07:00:41', '2024-12-12 14:00:41'),
('5204419ed89dbcb1fd58bce8e1357a3696eb6d1def33c4ff686a4be84ac966c6d7bc340241e7bf8a', 4, 1, 'token', '[]', 0, '2023-12-13 03:38:44', '2023-12-13 03:38:44', '2024-12-13 10:38:44'),
('524d68cdd57aeac4206d240eb3f0bf8543ebcbb4f21f4bc8b4e8259e2e42bd5d58eee52622d5b0f7', 3, 1, 'token', '[]', 0, '2023-12-10 07:56:41', '2023-12-10 07:56:41', '2024-12-10 14:56:41'),
('52caf58aadcca584ba14678ad2c9889bb9a00d6821a7a799645f5e3aa471c4ac4c0fdc7653a12f65', 65, 12, 'token', '[]', 0, '2023-12-20 17:18:27', '2023-12-20 17:18:27', '2024-12-20 17:18:27'),
('52cd84de5c93220c8d992b14bafbb27cbf03565ee58f9a4bab3f351b72ab9b1789a4aa2104e18bab', 19, 1, 'token', '[]', 0, '2023-12-13 11:28:17', '2023-12-13 11:28:17', '2024-12-13 18:28:17'),
('53fa1e75eb14c018be4689bb676f43fe0e7d796670f028d71aea8f3464d7a524073039b037a6827b', 74, 12, 'token', '[]', 0, '2023-12-20 17:13:06', '2023-12-20 17:13:06', '2024-12-20 17:13:06'),
('5420a6534f380c01226766a47c296565b72eca7d44c04b9bac95438d9948ce8b77212cf56e2817a1', 3, 1, 'token', '[]', 0, '2023-12-11 02:30:19', '2023-12-11 02:30:19', '2024-12-11 09:30:19'),
('54d57fcd970b5bb3492df342fb55c87bfcde8c6642f39b6d1da149b0c8b78c3f5f44c2d3ab3475ac', 68, 12, 'token', '[]', 0, '2023-12-20 14:33:11', '2023-12-20 14:33:11', '2024-12-20 14:33:11'),
('5581339e836ba5ddd06c497e111a8987fa14ecaa59ce3268f0fd0331b5d06ef74b8c0965e70d2a77', 62, 12, 'token', '[]', 0, '2023-12-16 17:25:17', '2023-12-16 17:25:17', '2024-12-16 17:25:17'),
('567a1b1b3dea32db450a1f6bd55e848ffacd3419aaabf1b8fe9a24293303765ef524f3b63eda9acb', 3, 1, 'token', '[]', 0, '2023-12-10 06:45:33', '2023-12-10 06:45:33', '2024-12-10 13:45:33'),
('56aee7240ae8c2bfa14d322b9769707b278421cdf4a460b92f2f6e37dfe1fb059049ddfe22738ce2', 43, 12, 'token', '[]', 0, '2023-12-16 05:11:51', '2023-12-16 05:11:51', '2024-12-16 12:11:51'),
('56e70fbae1862def8740726d5a37fc7fbf1251a97b88af8cf03901d399e93d27cd4c7bf3078d8f55', 3, 1, 'token', '[]', 0, '2023-12-11 02:03:51', '2023-12-11 02:03:51', '2024-12-11 09:03:51'),
('57bf437b22e9ad8d6a27add96c4381ddaabbaca36126200a02ec6c351f2a76da1de9493c2c43ed51', 67, 12, 'token', '[]', 0, '2023-12-18 17:23:40', '2023-12-18 17:23:40', '2024-12-18 17:23:40'),
('57db6e26d3dd6f175b857e7e8a13a553babf42bc51c31e05873be4ab7f859578d2c516a7dda7a61f', 3, 1, 'token', '[]', 0, '2023-12-13 00:29:02', '2023-12-13 00:29:02', '2024-12-13 07:29:02'),
('5821220198f8b9876b02a2012fd1c0814d77932b3d342c3c61ad7275d4cb72957929661ad05dd067', 65, 12, 'token', '[]', 0, '2023-12-20 14:19:24', '2023-12-20 14:19:24', '2024-12-20 14:19:24'),
('5867aea701236fb98587b96503dbb1d9cb51f377df9eaaaea1a6ccbb24c1db75505a3a7c3cb0888c', 3, 1, 'token', '[]', 0, '2023-12-10 06:46:14', '2023-12-10 06:46:14', '2024-12-10 13:46:14'),
('58887b97fddce1e2fb4e6416bdb3f234a0baafa5b7b6f54c4920630f13ecbc7d3250161282677d8c', 19, 1, 'token', '[]', 0, '2023-12-13 11:31:57', '2023-12-13 11:31:57', '2024-12-13 18:31:57'),
('58a23bce845e2b05a4c422bd1d4e2309523f8cd5a172a61af1d548b7208ae7fb7f0febec1393de4a', 69, 12, 'token', '[]', 0, '2023-12-20 14:38:54', '2023-12-20 14:38:54', '2024-12-20 14:38:54'),
('58f324f7cffea6616117ace77d3ab67dc7d988d157dabeabd281be918cd6bc45cdc6e0f0995ad779', 3, 1, 'token', '[]', 0, '2023-12-11 01:57:06', '2023-12-11 01:57:06', '2024-12-11 08:57:06'),
('5915810d4817e10a14b1a98e00cbe2ce262b2a4de4450c53d5968949f3dc551bd832407c68a0f4d7', 3, 1, 'token', '[]', 0, '2023-12-10 07:25:52', '2023-12-10 07:25:52', '2024-12-10 14:25:52'),
('5a3e2accb9d99a323398ccb3374a2d8485022daebf8c55dd9479e0382a3145557f2c8d9bc15cf08a', 3, 1, 'token', '[]', 0, '2023-12-10 06:50:29', '2023-12-10 06:50:29', '2024-12-10 13:50:29'),
('5b27b091b4d82a8549ab11bdc01cdec026d41e966457d64e1c34e50f897d1f358b92a521d0a903be', 82, 12, 'token', '[]', 0, '2023-12-20 17:51:42', '2023-12-20 17:51:42', '2024-12-20 17:51:42'),
('5b3497302bd8812f4448dc8d71d87fb9cbb0a92dd132bc66f754b73d816642115ca00f8c541ba804', 3, 1, 'token', '[]', 0, '2023-12-11 02:02:07', '2023-12-11 02:02:07', '2024-12-11 09:02:07'),
('5b6ddde021f3c4439e620ebac5458842adf3463061419659d6fece7d48bcfcc473ae96e742a7cb1f', 19, 1, 'token', '[]', 0, '2023-12-13 10:54:43', '2023-12-13 10:54:43', '2024-12-13 17:54:43'),
('5ce9b06191ff8c111c3b095561aa01b53d2b9d6dd5df298e181ab3e5a43d2c9cdb1bedc712ebcd17', 65, 12, 'token', '[]', 0, '2023-12-20 17:24:54', '2023-12-20 17:24:54', '2024-12-20 17:24:54'),
('5d1d50f894337ee99171b2955e32387be9885c0be9f68eef490fa2432ccc8870d770fa4465d9564c', 68, 12, 'token', '[]', 0, '2023-12-20 15:52:45', '2023-12-20 15:52:45', '2024-12-20 15:52:45'),
('5de39d0ff277168be7b8c1c77af9a78235bcf21aede6e9aa80bae9a862b9907238f705be9d8a3962', 3, 1, 'token', '[]', 0, '2023-12-13 01:08:13', '2023-12-13 01:08:13', '2024-12-13 08:08:13'),
('5ea5728f367217f23be33e7bbc3c443c89b6ae85e8fdb5888190a690503eae99ac688a60ebba161a', 51, 12, 'token', '[]', 0, '2023-12-16 16:42:37', '2023-12-16 16:42:37', '2024-12-16 16:42:37'),
('5eb484ffd1f52c9086e9b9e14f123667def03c9680c1e5d8e52966bf29611ab1067fd9a4244f1e24', 19, 1, 'token', '[]', 0, '2023-12-13 11:29:08', '2023-12-13 11:29:08', '2024-12-13 18:29:08'),
('5f058e8243ca8b7a86c519c994a7f454470a9f903f921c63d27a6067bb7b00ca786e9daaa77e8d63', 3, 1, 'token', '[]', 0, '2023-12-11 20:40:01', '2023-12-11 20:40:02', '2024-12-12 03:40:01'),
('5f2b13c2c6cbd3c58a51fee3226c4ad520690dea86bf9e8d0990e4b547f631aad02ea792e6db7c58', 68, 12, 'token', '[]', 0, '2023-12-20 15:06:34', '2023-12-20 15:06:34', '2024-12-20 15:06:34'),
('5fb02ed41d0d805bb58ffa1f601039fe3c22b8091d1f233083ca2ca1ed23bf04ec74a7cdeea48a4e', 65, 12, 'token', '[]', 0, '2023-12-20 18:45:40', '2023-12-20 18:45:40', '2024-12-20 18:45:40'),
('6000933c28d245703987946e210658a403b85048ddf5cd8a545f10313f66a2c6b8637bfdd71f9a61', 19, 1, 'token', '[]', 0, '2023-12-13 20:33:50', '2023-12-13 20:33:51', '2024-12-14 03:33:50'),
('608e1eb309747491c738426fa130121e9ab3e198b848df823c73d1dd49f948d5824f054d4e4b615d', 3, 1, 'token', '[]', 0, '2023-12-10 08:47:59', '2023-12-10 08:47:59', '2024-12-10 15:47:59'),
('60cd9be8dc78fae37a8ee69059a4f49eb5bb4d53d934c5c5759058f592f7d5f49fc1554cf4d68a2f', 19, 1, 'token', '[]', 0, '2023-12-13 08:39:56', '2023-12-13 08:39:56', '2024-12-13 15:39:56'),
('61287cee900f0d377ed3ed35b6093ff20cf843d557ac2fafc4e08ed3939e71c5fbbfc7ba5db9b7a8', 3, 1, 'token', '[]', 0, '2023-12-11 01:35:36', '2023-12-11 01:35:36', '2024-12-11 08:35:36'),
('616b99ee89e6fc41ad97e812e5176346fbe7cbe5dbb9ed387fb5f8382ebef17f833ee1d84aad3c53', 43, 12, 'token', '[]', 0, '2023-12-16 05:28:17', '2023-12-16 05:28:17', '2024-12-16 12:28:17'),
('622d0f1eefca0bfa2c1da435ba65f64eb2d02ac37503555d5f16de636cc13b5807c66da5460777bb', 40, 8, 'token', '[]', 0, '2023-12-14 05:18:39', '2023-12-14 05:18:39', '2024-12-14 12:18:39'),
('624742e905839815431b183edde8b4bab7c1b4c4ea885908f800ea1f5c9dc3c8278ea1d5aa967881', 47, 12, 'token', '[]', 0, '2023-12-16 05:43:52', '2023-12-16 05:43:52', '2024-12-16 12:43:52'),
('62665ac2d535ea28b46318a22db629213c922284c76d3d63bc5c84079f7b68b61778a06dcc926bdb', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:19', '2023-12-10 07:05:19', '2024-12-10 14:05:19'),
('62823d53a5c2de021f985a815051cf56098fc78ba2e0205f7f615113720aeda11dc9d4bed8b15e80', 3, 1, 'token', '[]', 0, '2023-12-11 21:05:44', '2023-12-11 21:05:44', '2024-12-12 04:05:44'),
('62c8d5c280e18d2bda867d59d223f1268b3656e2597fdddddabb65ef814b68315f348e6de698c4f1', 3, 1, 'token', '[]', 0, '2023-12-10 07:14:03', '2023-12-10 07:14:03', '2024-12-10 14:14:03'),
('631ccf05d418e41da3f62c3f57de7d5876847f9ce7e8bf866212897529567b1ae54a4c163579f1c4', 46, 12, 'token', '[]', 0, '2023-12-16 05:22:45', '2023-12-16 05:22:45', '2024-12-16 12:22:45'),
('6418e0310f9668eb7d0b03926163c336eb33e6cfde4dea2ec493c9205fdcf739161adb031d039372', 68, 12, 'token', '[]', 0, '2023-12-20 15:09:28', '2023-12-20 15:09:28', '2024-12-20 15:09:28'),
('6458fbc2c61503f32ce331f294c01de39ae9db32b62ee84d070edf32f29b480354940f0583f70043', 65, 12, 'token', '[]', 0, '2023-12-16 17:40:25', '2023-12-16 17:40:25', '2024-12-16 17:40:25'),
('646246d54708d8706f78c5406241b48d140b8416968caa3bc1b1b850d32dc0797bff74b156067d59', 51, 12, 'token', '[]', 0, '2023-12-16 07:17:47', '2023-12-16 07:17:47', '2024-12-16 14:17:47'),
('64a1a2dcc2f9f9b1f8b870b3c108b864209cf5e9ba340b53038fc04999806ab55a4e4a0abbf3e0bc', 68, 12, 'token', '[]', 0, '2023-12-20 14:19:41', '2023-12-20 14:19:41', '2024-12-20 14:19:41'),
('64ee6999797f7433e73fb7a5c0c8c1dfd54edf51fb7b4534a3de4932f88b151528611faf6a304a50', 82, 12, 'token', '[]', 0, '2023-12-20 17:44:57', '2023-12-20 17:44:57', '2024-12-20 17:44:57'),
('663d3cf0bc8ec3341e1c9e8e01297dd2bb176a16bb3c84b3d2fc1c2c5964237725f94269121ab9e2', 43, 12, 'token', '[]', 0, '2023-12-16 05:15:38', '2023-12-16 05:15:38', '2024-12-16 12:15:38'),
('6657f498a43559a2dac7ae1b12e0920fde4c436583a1eb27ff21c3cbfb39d738780693393519c2b3', 4, 1, 'token', '[]', 0, '2023-12-13 08:40:03', '2023-12-13 08:40:03', '2024-12-13 15:40:03'),
('66f7265a4d742b71e8e744abcc2bec991ac75e881587c1daaa45435f9d87335f9e3920f943bcf6cc', 4, 1, 'token', '[]', 0, '2023-12-11 02:33:56', '2023-12-11 02:33:56', '2024-12-11 09:33:56'),
('68550e950d237ea4170d624ea8763bd524a4d959e8e8d71fef64c0cb0a2f69eaf762618f5c1dfeff', 70, 12, 'token', '[]', 0, '2023-12-20 16:35:46', '2023-12-20 16:35:46', '2024-12-20 16:35:46'),
('6880dae75f5e8216df4324225259c08a7cd548f2df356de4ae60f0e633d1ad30c42170606d6400f8', 69, 12, 'token', '[]', 0, '2023-12-20 14:56:01', '2023-12-20 14:56:01', '2024-12-20 14:56:01'),
('6903301f651175210b4752363ec9018f8a71809c6b64856141d588dad9f766a0c94c1120735c4fc4', 43, 12, 'token', '[]', 0, '2023-12-16 05:05:59', '2023-12-16 05:06:00', '2024-12-16 12:05:59'),
('695601c8d405392b2bebdc9b7d58ba13d30cf7248f8817eeb78a1b1440935373f5eb4a291e5c9e87', 4, 1, 'token', '[]', 0, '2023-12-13 08:40:19', '2023-12-13 08:40:19', '2024-12-13 15:40:19'),
('69862d5d94f1c8821cfd8add13513270d320dd6858bc81d85b5c14125e0f23de6ca6c5082ad74a75', 3, 1, 'token', '[]', 0, '2023-12-11 02:29:03', '2023-12-11 02:29:03', '2024-12-11 09:29:03'),
('6a39c5dd87e7115a4e7899597c727eab99fcd1cc213b72650580284e992e077bdd1180e4ca8de4c8', 68, 12, 'token', '[]', 0, '2023-12-20 15:41:54', '2023-12-20 15:41:54', '2024-12-20 15:41:54'),
('6b4188f8f4906d485569d35c3b06b808ce73978122169ef234ecb3f99c557d871b26d987332eaa41', 64, 12, 'token', '[]', 0, '2023-12-16 17:36:35', '2023-12-16 17:36:35', '2024-12-16 17:36:35'),
('6b4ddb63d3c588cd56d91427ccab05b60b9a80562a1913f99ed72eea81a019dc05aa112ca34f647d', 3, 1, 'token', '[]', 0, '2023-12-11 02:18:51', '2023-12-11 02:18:51', '2024-12-11 09:18:51'),
('6c3e98bc0b18b4f2eddb8e59e393be81e53c2ac02f9c551dd4f7f429520c779a40351bd369ed8f9a', 65, 12, 'token', '[]', 0, '2023-12-16 17:51:25', '2023-12-16 17:51:25', '2024-12-16 17:51:25'),
('6d442f0e28da3bf19a4773cb9e146b347679c5de80b25f929ceea893d06b9acd200bbbbe548f505f', 44, 12, 'token', '[]', 0, '2023-12-16 05:10:02', '2023-12-16 05:10:02', '2024-12-16 12:10:02'),
('6d4a9932cd1b53ddfcb9c766faee6c96e98d6a2c15bf7d5ad3700c32fafa295f63b4767cb1b1b11b', 3, 1, 'token', '[]', 0, '2023-12-10 06:45:42', '2023-12-10 06:45:42', '2024-12-10 13:45:42'),
('6d5fc917c6e4d4e4128ce4ef0413c9b8b27cb322a2bbbfe895b9f3980ea0a98dd74ab7445428e601', 3, 1, 'token', '[]', 0, '2023-12-11 02:32:10', '2023-12-11 02:32:10', '2024-12-11 09:32:10'),
('6e1035124b8f0f07cf15a6f875163bf747c2a48740abf9b39c187a6243451100a236561c58a8fa72', 51, 12, 'token', '[]', 0, '2023-12-16 17:00:57', '2023-12-16 17:00:57', '2024-12-16 17:00:57'),
('6e1731ba56f7f77432cc7ae10dc0857d2c7f770ca033e23f1f9a1c9d888c6e73c8a5e2dcdabcca62', 4, 8, 'token', '[]', 0, '2023-12-14 03:00:11', '2023-12-14 03:00:11', '2024-12-14 10:00:11'),
('6e4ed8767b260bf118844e6897a2ab3e4a66d6105ac7d80db679851d926ec30d6191e10267b6dcbf', 65, 12, 'token', '[]', 0, '2023-12-20 14:05:29', '2023-12-20 14:05:29', '2024-12-20 14:05:29'),
('6f677f7af5d0ce2dfa95026c26b0f1307bd75b3834b2ecdadcc20788172d177d15f0708df56187a3', 69, 12, 'token', '[]', 0, '2023-12-20 12:05:09', '2023-12-20 12:05:09', '2024-12-20 12:05:09'),
('6fb3acf38f21926a8e60031c94192e4be269151e859ef0539b1ed1a9cf08ccf2ca31d6d367b88d08', 3, 1, 'token', '[]', 0, '2023-12-10 07:08:03', '2023-12-10 07:08:03', '2024-12-10 14:08:03'),
('6fb44f3c4c7a86a82eb2725a444c869e945851d01a8ea83e63d3d0576cc13cc00df963f10d475df4', 65, 12, 'token', '[]', 0, '2023-12-20 19:02:02', '2023-12-20 19:02:02', '2024-12-20 19:02:02'),
('6fc2df986eea52478db318b77f9c54c8a16a86a74a2735e203a6163ed855173623f45b6524083acb', 87, 12, 'token', '[]', 0, '2023-12-20 18:40:57', '2023-12-20 18:40:57', '2024-12-20 18:40:57'),
('6fcd3e38e15baf7cb9f2c6b67b267ad5f76b69d3fd31f231378cd4eec48ee4437e317b60eb35578d', 3, 1, 'token', '[]', 0, '2023-12-11 01:36:29', '2023-12-11 01:36:29', '2024-12-11 08:36:29'),
('70103181db34c46bbfbb050df178932b4fc4401b6a9536d450e093e279768e22135a5d97386671f6', 3, 1, 'token', '[]', 0, '2023-12-10 09:49:23', '2023-12-10 09:49:23', '2024-12-10 16:49:23'),
('70cacc46ab79d691b083a7b6b6f90e723683a2ebd90bb4518c251111f7da0de4e8be64950846d181', 19, 1, 'token', '[]', 0, '2023-12-13 07:39:22', '2023-12-13 07:39:22', '2024-12-13 14:39:22'),
('71ddff9170d914049ca4b851a4f852345d05cb3eeb3afe92833f2e4f513d862e59ba11999252c0fa', 65, 12, 'token', '[]', 0, '2023-12-18 17:55:29', '2023-12-18 17:55:29', '2024-12-18 17:55:29'),
('72bc50ec5a4172b27ea7e60664b76f3cd5394621220c7f19c571451a299a4648a00e882302a46627', 80, 12, 'token', '[]', 0, '2023-12-20 17:43:43', '2023-12-20 17:43:43', '2024-12-20 17:43:43'),
('72e690c8aa38b5255ec51133a3b3e67f6aa902f0807b4deba06c62b395972e0f78756eab58aeda98', 3, 1, 'token', '[]', 0, '2023-12-10 07:24:20', '2023-12-10 07:24:20', '2024-12-10 14:24:20'),
('72e7cf89dd05f5e635263104943205fe479b4906333b2b7fa7a5c2e1d7551fb81047beb7b13437d8', 19, 1, 'token', '[]', 0, '2023-12-13 03:42:36', '2023-12-13 03:42:36', '2024-12-13 10:42:36'),
('733903bb67c19f9138d4758303b1ac224ead6183819dd64cfd35af58e6d0a06483518b0c80cf25b4', 3, 1, 'token', '[]', 0, '2023-12-13 00:10:34', '2023-12-13 00:10:34', '2024-12-13 07:10:34'),
('736707db1918749b76ca755bd9c0c9c2b88bff31c52500ab876a75054c9f444ae02f9425e2e9a38a', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:15', '2023-12-10 07:05:15', '2024-12-10 14:05:15'),
('740a5048200d347d5ca2acddba14c38d0b95884ccc55156f49f9f365f1ccfc9f6048736956a1bfdd', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:21', '2023-12-10 07:05:21', '2024-12-10 14:05:21'),
('744b52abc616ce16acf88accd7feb5b0c80270791e3a2b46885136871009e0ba0067433be030f331', 72, 12, 'token', '[]', 0, '2023-12-20 16:50:58', '2023-12-20 16:50:58', '2024-12-20 16:50:58'),
('74acbefb1e1e4ad376443aaadac137291ff0eb71de81154380120af5c19c35996ee6e3a85754f939', 3, 1, 'token', '[]', 0, '2023-12-13 01:19:40', '2023-12-13 01:19:40', '2024-12-13 08:19:40'),
('74f890b63ab6c77303576596df3c99be905337d79176dcdc2f5116bf3330da4227c9169cc8acf5c2', 65, 12, 'token', '[]', 0, '2023-12-20 17:54:36', '2023-12-20 17:54:36', '2024-12-20 17:54:36'),
('759e610a3187dc730dddf21a05e786215de92e1512caf6fd11381fc101a93a084fa2dc1a574842f8', 3, 1, 'token', '[]', 0, '2023-12-10 05:57:44', '2023-12-10 05:57:44', '2024-12-10 12:57:44'),
('75a19ce6468beca9f8e1e50c45ed9264b126541f6fcca30e0836745e157a96a52f0cca3d1545e847', 51, 12, 'token', '[]', 0, '2023-12-16 16:41:05', '2023-12-16 16:41:05', '2024-12-16 16:41:05'),
('76c98da56d7845a55cc478c33ee0ede320f21c5de5e4e898e54aa552343d8f44473c2224b297de75', 51, 12, 'token', '[]', 0, '2023-12-16 17:16:41', '2023-12-16 17:16:41', '2024-12-16 17:16:41'),
('76ccc4604a00a1ba2429154928dc115696cda45306cd52d5266c06a42d93fd5d6d9283586da735bb', 3, 1, 'token', '[]', 0, '2023-12-10 08:42:09', '2023-12-10 08:42:09', '2024-12-10 15:42:09'),
('777c38e6d1caf7003fd54479491e911afe8360a0fe09131f0c1ac07ddb25d009b161def705fee0c3', 3, 1, 'token', '[]', 0, '2023-12-10 08:42:26', '2023-12-10 08:42:26', '2024-12-10 15:42:26'),
('787bd68c90889b88574db4066193245e5c2f5a47336fa6e24c7ba02c2d4fb062412e7dc36c174173', 72, 12, 'token', '[]', 0, '2023-12-20 16:37:12', '2023-12-20 16:37:12', '2024-12-20 16:37:12'),
('790e91971b838fb24e5868134e89d60167d5c16095a7dfedae242f3407228c570b0a400a67b59183', 3, 1, 'token', '[]', 0, '2023-12-10 05:54:48', '2023-12-10 05:54:48', '2024-12-10 12:54:48'),
('793c56df9a6a3a5773cd729d15fc489f2f386094ff167adbc2756bc2ed2b012254750d178ac7f084', 3, 1, 'token', '[]', 0, '2023-12-13 01:22:35', '2023-12-13 01:22:35', '2024-12-13 08:22:35'),
('79af9f622db7512fe88b48d394525b1b355a034ebf788ae7fb5abf4486fe0676b98684f257c3d912', 95, 15, 'token', '[]', 0, '2023-12-20 21:56:44', '2023-12-20 21:56:44', '2024-12-21 04:56:44'),
('7a1ceb310578d57ad33617bd53bc3ad43647ed9da5c46702d95bfd7495f4ed1b42d7a32b97e10085', 69, 12, 'token', '[]', 0, '2023-12-20 16:08:18', '2023-12-20 16:08:18', '2024-12-20 16:08:18'),
('7abf57a6ff31832a2455488aa15f6afbc0d0f04b63c5aa8d74070f9bc052ecc81257dc03fffb89f8', 3, 1, 'token', '[]', 0, '2023-12-11 02:20:16', '2023-12-11 02:20:16', '2024-12-11 09:20:16'),
('7ae41160fde3d95d2f911059e42e031367381dbfcb07dcadc6edbaf15e198b4d08a4ec9c4a047e7a', 51, 12, 'token', '[]', 0, '2023-12-16 17:04:56', '2023-12-16 17:04:56', '2024-12-16 17:04:56'),
('7b3407bde31e5dcaddd826b3c5f073fa353dcd59a3f2cb0b28ec774cc4e5cac7ab11f90767a5d898', 85, 12, 'token', '[]', 0, '2023-12-20 18:24:18', '2023-12-20 18:24:18', '2024-12-20 18:24:18'),
('7ba973ee0ded24792efcae9aa8bf367ae7bd93f9a7ca33909573fe34cdc9fa5d973fcbccb8bbea66', 3, 1, 'token', '[]', 0, '2023-12-10 05:59:52', '2023-12-10 05:59:52', '2024-12-10 12:59:52'),
('7c2073add082d3c37001361e0cc7ac2361a8594174190436373cf479b4249d221f44a44fa7d3ec85', 3, 1, 'token', '[]', 0, '2023-12-11 02:25:46', '2023-12-11 02:25:46', '2024-12-11 09:25:46'),
('7c5d0cba55790e3c18cd68fb0b377d110d9917670ec5b4e8be7c5b1e66484ae6815a352375e31a31', 3, 1, 'token', '[]', 0, '2023-12-13 03:45:46', '2023-12-13 03:45:46', '2024-12-13 10:45:46'),
('7d0117807fd18859d4dcecd4cc982ed1a0d9a113c49dbfdf18e155d44cbcf99c3260662643eed574', 69, 12, 'token', '[]', 0, '2023-12-20 12:15:30', '2023-12-20 12:15:30', '2024-12-20 12:15:30'),
('7fdca0c180daa95d4c9d5a8dabba3a2267a36fcc3ee794e095a519e3ca5572eed409d0cfebef740b', 82, 12, 'token', '[]', 0, '2023-12-20 18:09:21', '2023-12-20 18:09:21', '2024-12-20 18:09:21'),
('800aad9222cdfcd553fc09c16ff745751d7b5488d730393d56bdabfc0d6a5a5080aaac40f6385e35', 3, 1, 'token', '[]', 0, '2023-12-13 01:14:10', '2023-12-13 01:14:10', '2024-12-13 08:14:10'),
('802dc73f6338d0f8cb3d434290bf30cad264a24651e200b7c6743c6bdeaac17735abcd7f4a3241aa', 3, 1, 'token', '[]', 0, '2023-12-10 07:03:36', '2023-12-10 07:03:36', '2024-12-10 14:03:36'),
('8053746db0a06e4761c0554c7057d88e4bdfd4ced8bead75c396dad7f27ea28d5c09da06bdcdea1c', 68, 12, 'token', '[]', 0, '2023-12-20 14:20:43', '2023-12-20 14:20:43', '2024-12-20 14:20:43'),
('80f623ac869222cb9685a59e2e77b0003e8136abf5698b7fe34f342aee90f9037b692b89d399b804', 80, 12, 'token', '[]', 0, '2023-12-20 17:39:37', '2023-12-20 17:39:37', '2024-12-20 17:39:37'),
('814d99424e3b3c3cdbd3af85b31e9abe3828a298d6b7f5d80ecf58666ff901444e6a607872a071e0', 3, 1, 'token', '[]', 0, '2023-12-11 02:13:54', '2023-12-11 02:13:54', '2024-12-11 09:13:54'),
('8193a8e5466c460847732003f7d1a4040d312ef5a4e1b119dd87006363a0b1b9c734a59fd325cb36', 82, 12, 'token', '[]', 0, '2023-12-20 18:09:13', '2023-12-20 18:09:13', '2024-12-20 18:09:13'),
('82696eca859e0a19ed359564e607d3d0aaa4051ae18e4c15832b67bf376f18adbc806fe52459250a', 3, 1, 'token', '[]', 0, '2023-12-11 02:12:47', '2023-12-11 02:12:48', '2024-12-11 09:12:47'),
('8293ac9e1e54a3dadf342b0cac62750d73e91a25dd8aef2b5298fb33dc0ca283f05bf2caac9c7e95', 68, 12, 'token', '[]', 0, '2023-12-20 16:17:24', '2023-12-20 16:17:24', '2024-12-20 16:17:24'),
('83166455fcef3c7aaf34f82c2412aa30493bd0d9290a21fefbd045e22d0a6ac0ce1a8a6a37df6265', 3, 1, 'token', '[]', 0, '2023-12-10 07:03:39', '2023-12-10 07:03:39', '2024-12-10 14:03:39'),
('83918c00a7cf88dd9bfd12056efcfd263c258d052343dd0d82863ab232f4499fca3c4bb6c8866a12', 3, 1, 'token', '[]', 0, '2023-12-10 08:37:09', '2023-12-10 08:37:09', '2024-12-10 15:37:09'),
('84007bdf1fa5a9b1393cd91b066b075c7c0bc11f65e612abb5903065c64178022c9b67046a135529', 20, 1, 'token', '[]', 0, '2023-12-13 08:45:30', '2023-12-13 08:45:30', '2024-12-13 15:45:30'),
('844c29ff0910ebe5457cf3f51dd940c13de0179ab3a514624cb98de20b2ebfc389fb9febcc80e0c9', 47, 12, 'token', '[]', 0, '2023-12-16 06:16:07', '2023-12-16 06:16:07', '2024-12-16 13:16:07'),
('84e993dc609cc5629676440f07f8e83c036221e29c1c8abe7a5215b9dc17275a3ba63273c0df5eda', 3, 1, 'token', '[]', 0, '2023-12-10 06:56:23', '2023-12-10 06:56:23', '2024-12-10 13:56:23'),
('8502aaaaa8cb7b52092ba4fbb983305b2bc943d7e670b2ecbe1fba85fc82926c9fe27c67174e79ea', 3, 1, 'token', '[]', 0, '2023-12-10 06:00:58', '2023-12-10 06:00:58', '2024-12-10 13:00:58');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('851bce5e1b6d4d3f910a0bedda91e47bd48f9f52960c770a7fca34c2c13a9e9503b2a289309a1318', 3, 1, 'token', '[]', 0, '2023-12-10 07:55:58', '2023-12-10 07:55:58', '2024-12-10 14:55:58'),
('85375cdf7d4b3a246638df968bf9a54ba3ccf0bc0460710ef205a079fde664b597e273044328e4a6', 3, 1, 'token', '[]', 0, '2023-12-11 01:59:50', '2023-12-11 01:59:50', '2024-12-11 08:59:50'),
('85b1f6f4db6cee989447f212cab5d0db9c4a823d2ee5f9ccbc97fad815baba05a3f6bd5e5e3c38ff', 3, 1, 'token', '[]', 0, '2023-12-11 02:46:38', '2023-12-11 02:46:38', '2024-12-11 09:46:38'),
('85ccb4d1410770f29f94d74a9abc958acc07c158d2766f2a4fe0ca4ca287eb3fee698895721ceb94', 80, 12, 'token', '[]', 0, '2023-12-20 17:44:28', '2023-12-20 17:44:28', '2024-12-20 17:44:28'),
('85f061d0a1244d7a0587a7eea148f22a352f6f3bccd4b8c59fa3052a5fd4b6a691fbc622afee921b', 86, 12, 'token', '[]', 0, '2023-12-20 18:32:20', '2023-12-20 18:32:20', '2024-12-20 18:32:20'),
('86ef317400405ac1b5e0d65494bc4968a5668ed32d074f1c84f23edf1230294f57f237ad064fff82', 72, 12, 'token', '[]', 0, '2023-12-20 16:54:42', '2023-12-20 16:54:42', '2024-12-20 16:54:42'),
('8752c5bf8a21f519975644f57cbcf85b1a37cecb098501975b60297c278dc579fc989efb04b31c28', 3, 1, 'token', '[]', 0, '2023-12-10 06:46:10', '2023-12-10 06:46:10', '2024-12-10 13:46:10'),
('8814343204670993018ad4d6fad1b59b1d567a6c82e3824a8a6fd2d01739e023fca3d31e04138055', 65, 12, 'token', '[]', 0, '2023-12-20 17:10:04', '2023-12-20 17:10:04', '2024-12-20 17:10:04'),
('891901d11d5cd30b5c9b6e021ce3d30702438d68f900cbca9ee06e44c85c0fcd809cb5f2727302c0', 3, 1, 'token', '[]', 0, '2023-12-10 09:41:33', '2023-12-10 09:41:33', '2024-12-10 16:41:33'),
('8afd585bcb1900974a2152d1b25fba10c38184b7cf6766774ad340820a6f7a752dfbcdd6131975de', 3, 1, 'token', '[]', 0, '2023-12-11 08:04:56', '2023-12-11 08:04:56', '2024-12-11 15:04:56'),
('8b0e2d772feb1d1d149ad5abe9ddbc90cdf0c47590cbdafe09bbb95f57c394dd13b54223c4521f3f', 3, 1, 'token', '[]', 0, '2023-12-11 01:35:17', '2023-12-11 01:35:17', '2024-12-11 08:35:17'),
('8b131918251d33b950f3a950e3fa0cef20873d0dd1e1d693a06ff5fecd9329847b8716449909da45', 3, 1, 'token', '[]', 0, '2023-12-10 06:49:04', '2023-12-10 06:49:04', '2024-12-10 13:49:04'),
('8b45e0c39c09b0e2faf573dda0ca8a102f3ac6c4e4a4689016c43e5b9827430fa9e5924c85f556e8', 4, 1, 'token', '[]', 0, '2023-12-10 06:51:17', '2023-12-10 06:51:17', '2024-12-10 13:51:17'),
('8b6dc93dcb37d1524b5c16df499e6b540694d984ad44143155f5dffd252c1f41380776a1a9699faf', 3, 1, 'token', '[]', 0, '2023-12-10 09:34:28', '2023-12-10 09:34:28', '2024-12-10 16:34:28'),
('8bfb223ffe95a55ab9349d1f912e54894bc6bdaea193a201fe1b2ef071827e92d232e014ee8015a4', 82, 12, 'token', '[]', 0, '2023-12-20 17:46:16', '2023-12-20 17:46:16', '2024-12-20 17:46:16'),
('8bff761b1e83a5e5a9fd0c26c7e356c165a547f3cc6a29a5151f25b7805fbc3bb630c654b727c576', 4, 1, 'token', '[]', 0, '2023-12-13 04:00:08', '2023-12-13 04:00:08', '2024-12-13 11:00:08'),
('8db4cf52a5f642e3bacf40f7534d905cc3f4f0e53c659fc204fea59af336dfb6279ea2da57e3a46d', 3, 1, 'token', '[]', 0, '2023-12-10 07:36:37', '2023-12-10 07:36:37', '2024-12-10 14:36:37'),
('8e5d1198efcde7e930acaae016874711738aa44b177b13a8406bcb8e0043b7486b9849d211059049', 47, 12, 'token', '[]', 0, '2023-12-16 06:02:00', '2023-12-16 06:02:00', '2024-12-16 13:02:00'),
('8e9604c03b68713e53c6ffcfcf58c71605032c38a7baeedbf7f636d6906dc9c309d43ff814b7a074', 65, 12, 'token', '[]', 0, '2023-12-16 17:44:14', '2023-12-16 17:44:14', '2024-12-16 17:44:14'),
('8fc3c2debdcaed94001f6279cda7c96876f1ec0d3f9d1d12048c57438572bf2fed4a4817cc242684', 69, 12, 'token', '[]', 0, '2023-12-20 14:11:17', '2023-12-20 14:11:17', '2024-12-20 14:11:17'),
('9045fe206d5649d6ab235ce204cf26af4fff27020039050e9dca061103f0f4447f387222f1a938b8', 65, 12, 'token', '[]', 0, '2023-12-20 18:13:39', '2023-12-20 18:13:39', '2024-12-20 18:13:39'),
('914b973e11b41d29a47f787bc7902c146a463a9f78141c5052804f75bdaa37c43d179cc1a1f5d5bd', 95, 15, 'token', '[]', 0, '2023-12-20 21:45:03', '2023-12-20 21:45:03', '2024-12-21 04:45:03'),
('925797305b1d43e05436d5894a559bb483149e932154abfeee080e836a03a05946e94e613f3c6f68', 3, 1, 'token', '[]', 0, '2023-12-11 01:54:52', '2023-12-11 01:54:52', '2024-12-11 08:54:52'),
('92cbcc1e32974b38bfd1063b933410154dc2a9813de4f11df3e3d8636f97e1f6de0cad4dbb5411fd', 3, 1, 'token', '[]', 0, '2023-12-11 02:00:30', '2023-12-11 02:00:30', '2024-12-11 09:00:30'),
('939d0a0e1100468edc7f0e8ec782b8c603af6f584d87ad025b976acfad49cbbf7daa8da2a5912d2b', 68, 12, 'token', '[]', 0, '2023-12-20 12:03:14', '2023-12-20 12:03:14', '2024-12-20 12:03:14'),
('93dca1b05960fa92a81f0a3a0c789f4823d1f9beaa99effaaea85448c761b843a2752e0f009d7f80', 3, 1, 'token', '[]', 0, '2023-12-11 02:16:22', '2023-12-11 02:16:22', '2024-12-11 09:16:22'),
('943c1f70115fc42a380c7d06552924087b73b36258e66cca38469028d0a931b8e2f9ab3127b3bdc8', 51, 12, 'token', '[]', 0, '2023-12-16 17:07:44', '2023-12-16 17:07:44', '2024-12-16 17:07:44'),
('94adb72f28252d9385cad4bb975f1dd1e3f2ac4cc868df5c8c7afb3eadb37a8042e7c0581763d11e', 19, 8, 'token', '[]', 0, '2023-12-14 05:18:31', '2023-12-14 05:18:31', '2024-12-14 12:18:31'),
('94c676002338fed3bd00be3c6cea187d02480384f402c3ff4fee376c5bc2d4f300c05f925fb5c5bb', 3, 1, 'token', '[]', 0, '2023-12-12 07:22:33', '2023-12-12 07:22:33', '2024-12-12 14:22:33'),
('952272d43c31ddbeb90b623bd166771784081caae7aa48085ac746364dddc572007ba1e89b1d4e9b', 3, 1, 'token', '[]', 0, '2023-12-11 01:59:31', '2023-12-11 01:59:31', '2024-12-11 08:59:31'),
('95c790e5d44c10d71ff37d8176b4bf3a979d46e8a43c42bb09d5e9229ea4634015b643d8c574218c', 63, 12, 'token', '[]', 0, '2023-12-16 17:27:43', '2023-12-16 17:27:43', '2024-12-16 17:27:43'),
('964bba9e9353b4824c0612a80d9f7a3558668998906c72790ee364c38381c096f0d7c0b7758d7049', 3, 1, 'token', '[]', 0, '2023-12-11 02:01:36', '2023-12-11 02:01:36', '2024-12-11 09:01:36'),
('96ad5a33d2fcf4106e3c2014d6ecf88cb30e596d6c757a4ba3ce4f58e1907103d0bd398d6e88ecf3', 79, 12, 'token', '[]', 0, '2023-12-20 17:32:32', '2023-12-20 17:32:32', '2024-12-20 17:32:32'),
('97247377f45900607c616fa4725f2d67cf4a7aa9031190f69e3839fc17a6717f6bb34acdd01d78a6', 68, 12, 'token', '[]', 0, '2023-12-20 14:37:58', '2023-12-20 14:37:58', '2024-12-20 14:37:58'),
('97573cf283cf7c7b3fae4ab99a3956a733cf177ba5d2ff64ca5f423b764d78bc416b894ef46978c8', 4, 1, 'token', '[]', 0, '2023-12-10 07:06:41', '2023-12-10 07:06:41', '2024-12-10 14:06:41'),
('97c5efd61868ce119f4420e614c7d9255c1f68bdb78a2823d4e1fa5702addf88c6ded7c3ecaed4e3', 3, 1, 'token', '[]', 0, '2023-12-10 09:10:25', '2023-12-10 09:10:25', '2024-12-10 16:10:25'),
('97f0cec929e874aa628a8251930bf9846ecbde20845e54c8462bc2fec7d1d2654c41b9df50cf1571', 3, 1, 'token', '[]', 0, '2023-12-13 01:19:06', '2023-12-13 01:19:06', '2024-12-13 08:19:06'),
('9830f8abd2bef34d67892645845e704117f13de50a8b244a7ca69cdc6466790ddb5e8143668da8fb', 68, 12, 'token', '[]', 0, '2023-12-20 15:17:15', '2023-12-20 15:17:15', '2024-12-20 15:17:15'),
('994571f9060ba6ca1c6a0f73ea4c7fb59c2ce60ac6142171be80f22a0acfcf177b93e14e38677dea', 19, 8, 'token', '[]', 0, '2023-12-14 03:05:43', '2023-12-14 03:05:43', '2024-12-14 10:05:43'),
('999821d290dcae2dd2f2fa9f482e654796d19b482fe328b94a9722660b28808f0ddd58552d7f6f9d', 3, 1, 'token', '[]', 0, '2023-12-11 02:34:05', '2023-12-11 02:34:05', '2024-12-11 09:34:05'),
('99cc70e356f792cf34b1e0f3831aff37b4bf28de524d672fc921946418686ac0bab57e45a45f529d', 68, 12, 'token', '[]', 0, '2023-12-20 17:10:13', '2023-12-20 17:10:13', '2024-12-20 17:10:13'),
('9a26e573e62e42d55f48f0cb7642624a78d787f7cf133f5dbdd8f7d99f5b4bfcd934ed15d15dc02d', 65, 12, 'token', '[]', 0, '2023-12-20 06:51:25', '2023-12-20 06:51:25', '2024-12-20 06:51:25'),
('9a7128ede3eb42d823242941ac87311357e88610a9eda793183c244bb692a1656e6739434e12eb5c', 69, 12, 'token', '[]', 0, '2023-12-20 14:27:47', '2023-12-20 14:27:47', '2024-12-20 14:27:47'),
('9b32cb5fd0d03ea9627dbcd883d319a5650d52398bb058a15949828bcf8e76bb9142a27349a93116', 3, 1, 'token', '[]', 0, '2023-12-10 07:03:26', '2023-12-10 07:03:26', '2024-12-10 14:03:26'),
('9bc9f030097ce6283d5453e3dfee2bfa46c1cb97399feb6b7279e51aa65f21526538b1b2186bc06a', 19, 1, 'token', '[]', 0, '2023-12-13 08:42:10', '2023-12-13 08:42:10', '2024-12-13 15:42:10'),
('9c7272fb20c5faf79bf7ca4a3df2aaec3e6f9239b55fa0e3f4938784e933b9991a96f81d6133bcf4', 82, 12, 'token', '[]', 0, '2023-12-20 17:47:29', '2023-12-20 17:47:29', '2024-12-20 17:47:29'),
('9d4d5ee87dc7a4c3a5a06239e2b95e61e58b98da9f063b4e4fbd0621cd7ceebf5a4140202897cdb3', 27, 8, 'token', '[]', 0, '2023-12-14 04:20:28', '2023-12-14 04:20:29', '2024-12-14 11:20:28'),
('9d6d2db7a3fac2b8d9e4b157d60260d153b1385b39d63bc7fbd5ac96a6aeeb2678cd47ee8d82c3f5', 3, 1, 'token', '[]', 0, '2023-12-11 02:22:09', '2023-12-11 02:22:09', '2024-12-11 09:22:09'),
('9ded71af96920e56789acc758ff959a176c17bdbf41f12dae79968ebf51e94765f85f8fb69b90bcb', 83, 12, 'token', '[]', 0, '2023-12-20 18:17:30', '2023-12-20 18:17:30', '2024-12-20 18:17:30'),
('9e2d7d62c2f6c69293dde32f591de20a981470554f2c5b4a0768a8dc94bbd08f5c481c83ff02d2eb', 4, 1, 'token', '[]', 0, '2023-12-10 07:03:48', '2023-12-10 07:03:48', '2024-12-10 14:03:48'),
('9e2f1d8d15eb469ad8f6b686b159b6c51c057e24959af7b19eec0b7b9e7c3315e5dca98df0511416', 19, 1, 'token', '[]', 0, '2023-12-13 08:15:03', '2023-12-13 08:15:03', '2024-12-13 15:15:03'),
('9e84393928bb40d7159c4d86fb82bbc7d68b96d3e88abf56de7d7b429580003957b798ca67a319e5', 65, 12, 'token', '[]', 0, '2023-12-20 16:11:40', '2023-12-20 16:11:40', '2024-12-20 16:11:40'),
('9eca6cfe3a45ce7dd84cb44175e29aecff8dbed9579cb432c699d7f30131ad9a7c3c464e6fda3dd1', 3, 1, 'token', '[]', 0, '2023-12-11 02:44:53', '2023-12-11 02:44:53', '2024-12-11 09:44:53'),
('a0209137239509c147a33824ff922318efab14ff30a9185757924cb5ec373322196f0e93e685eb65', 69, 12, 'token', '[]', 0, '2023-12-20 16:13:52', '2023-12-20 16:13:52', '2024-12-20 16:13:52'),
('a055d9d964271f2d41080e1491dbd945434bcda069e6348bdb6acd9036e0cc698a454135651e1d25', 3, 1, 'token', '[]', 0, '2023-12-13 07:39:02', '2023-12-13 07:39:02', '2024-12-13 14:39:02'),
('a0faa323033fe39f2b7be7b538503af58675349b50e8b999eaaf1bee772e812eb2edb6986c2f7b8f', 3, 1, 'token', '[]', 0, '2023-12-10 09:37:30', '2023-12-10 09:37:30', '2024-12-10 16:37:30'),
('a150c97f3598c418dc3c4db7ade7b8b60c6649fcf79f62465e95cb4ccd7a1a2c8373130135cfbb4a', 3, 1, 'token', '[]', 0, '2023-12-10 06:40:07', '2023-12-10 06:40:07', '2024-12-10 13:40:07'),
('a1cce0f03296a47fa9d4c6db690465381828a3a82c8aaa6cd6f8c8250afc564f893e2917da3c5333', 3, 1, 'token', '[]', 0, '2023-12-10 08:35:17', '2023-12-10 08:35:17', '2024-12-10 15:35:17'),
('a1cd5cd3a099b9f4629d597bf923e8da7e38f0261c83345b0e33b21660d166faf3c7fb7658d8d74e', 68, 12, 'token', '[]', 0, '2023-12-20 17:27:18', '2023-12-20 17:27:18', '2024-12-20 17:27:18'),
('a281200f7e4a421b249c5244fa8741317da059fd1a0b6d4b3813f05fa2e3db324ffbef35c1f8dbc3', 4, 1, 'token', '[]', 0, '2023-12-10 07:06:41', '2023-12-10 07:06:41', '2024-12-10 14:06:41'),
('a2fd7b3b337b61b7e12b20268c6f7d93ae53e921af8f3884067353da07dc24f9f639f786056855e4', 68, 12, 'token', '[]', 0, '2023-12-20 15:48:04', '2023-12-20 15:48:04', '2024-12-20 15:48:04'),
('a31289f14f5804256451ca59900e45a8b1d626ae1270deca6392508c62d9b8b166eb2ec1633f2433', 73, 12, 'token', '[]', 0, '2023-12-20 16:57:20', '2023-12-20 16:57:20', '2024-12-20 16:57:20'),
('a354c285b74cd7dceb83690c8a96077b272aa39aea54b2ca03de349a67419668c99c9bdf79cedce3', 94, 15, 'token', '[]', 0, '2023-12-20 20:56:26', '2023-12-20 20:56:26', '2024-12-21 03:56:26'),
('a3ca745e8ea924550afa51dfb8669b9fb0374e291624fc050d733853e7ee1a98a0cb565fb11c3d1d', 3, 1, 'token', '[]', 0, '2023-12-10 06:52:31', '2023-12-10 06:52:31', '2024-12-10 13:52:31'),
('a3f9e738e0a747f7990bf97a1ddbb30ddf807f40184c0a9d56be754311ccbf20e675da0a62067165', 3, 1, 'token', '[]', 0, '2023-12-11 03:46:05', '2023-12-11 03:46:05', '2024-12-11 10:46:05'),
('a44254807ddf95a2eb0cf628bf24e68bdef3bdb1a5c15e4457c8449cc4e7dd04c5e287ad2d02bf6f', 24, 8, 'token', '[]', 0, '2023-12-14 03:02:23', '2023-12-14 03:02:23', '2024-12-14 10:02:23'),
('a4f13ea68fe7519d82f321041d5f8c540056501c88db0e6ebd4406662bb605cc042db643a7ad174b', 3, 1, 'token', '[]', 0, '2023-12-10 07:33:02', '2023-12-10 07:33:02', '2024-12-10 14:33:02'),
('a53e69931745a53b60147a4ebd083df0f5a639abf7e4994cf709f52d75e86837c2d7ace5ee1ed354', 68, 12, 'token', '[]', 0, '2023-12-20 15:04:22', '2023-12-20 15:04:22', '2024-12-20 15:04:22'),
('a549216bbe12e8c4e676efe8acee66272fbb15983cfea1b4acb62d52cefb91f95b2ce81ce17cb663', 19, 1, 'token', '[]', 0, '2023-12-13 11:26:31', '2023-12-13 11:26:31', '2024-12-13 18:26:31'),
('a62508ac0d6ca27413ff383d18b97e7b5d2f99d53951ce5159c961e1de79af22a7cc1fe63828478a', 3, 1, 'token', '[]', 0, '2023-12-10 06:39:44', '2023-12-10 06:39:44', '2024-12-10 13:39:44'),
('a66bc62db8295c525a3f890efdb161a94f5ac20eda8c8daf0f9cdb8fd780d9ae94985ba9f7d8fc48', 3, 1, 'token', '[]', 0, '2023-12-10 07:22:55', '2023-12-10 07:22:55', '2024-12-10 14:22:55'),
('a67e1b814ef92ffcc5d41fbf27544a25a05c93a11323196b320a7bba5e5f69c2685c04579840df7d', 68, 12, 'token', '[]', 0, '2023-12-20 15:02:31', '2023-12-20 15:02:31', '2024-12-20 15:02:31'),
('a7d9edc8afacb003806c24299c2ccf5102e3a483cad90e964140e18f83b836677e508cc81e151bc8', 80, 12, 'token', '[]', 0, '2023-12-20 17:48:00', '2023-12-20 17:48:00', '2024-12-20 17:48:00'),
('aa64fe7ca73858e877b5560321306087dfdd85343d83fdaf466310dc3cb2ff83f07dadadad677a39', 19, 1, 'token', '[]', 0, '2023-12-13 11:17:35', '2023-12-13 11:17:35', '2024-12-13 18:17:35'),
('aa8bec956c3870d2fc682dc7cd287ab917c140d95a0f3bbfe2ee780a3df51602d4945df16b386ff8', 3, 1, 'token', '[]', 0, '2023-12-10 09:24:19', '2023-12-10 09:24:19', '2024-12-10 16:24:19'),
('ab397314c74ac2a268c1d1fc9e93ee6ceffdb3db81db2a08a31540dfad5086ea7a182120f7815db9', 63, 12, 'token', '[]', 0, '2023-12-16 17:26:43', '2023-12-16 17:26:43', '2024-12-16 17:26:43'),
('abeb8d7132562e01122f0c9a3a5e19ff79c912aa7d7335a68a2a973e90e5bdea676209b9df0f9029', 3, 1, 'token', '[]', 0, '2023-12-11 01:58:02', '2023-12-11 01:58:02', '2024-12-11 08:58:02'),
('ac578dadec5f144ebed093d89a7e0467f0f78aa53aaf4a3fe5697386e443443d9072a8265f7686ef', 3, 1, 'token', '[]', 0, '2023-12-10 06:43:45', '2023-12-10 06:43:45', '2024-12-10 13:43:45'),
('acfdbca1d4b8ae05e0068a167a81c104148e8f7d23d8b212d09a4c82df339b550c90182e58787888', 3, 1, 'token', '[]', 0, '2023-12-11 02:28:44', '2023-12-11 02:28:44', '2024-12-11 09:28:44'),
('ada7d74d7b95fc822aac3c332bca5fb2d0385303241119f29502c336adfa1f45ae832e5b46568a1c', 74, 12, 'token', '[]', 0, '2023-12-20 17:12:14', '2023-12-20 17:12:14', '2024-12-20 17:12:14'),
('ae41573b58f85fdd2c740622bb83d0034872c8cb28c1cce601db098e2b938bc4cf982c2430b0b8be', 68, 12, 'token', '[]', 0, '2023-12-20 14:22:15', '2023-12-20 14:22:15', '2024-12-20 14:22:15'),
('af07bf3e0a7ca54f81560b39a2517822ca4256a12088878f572a8770d43da8dfe5789ad2747c1749', 3, 1, 'token', '[]', 0, '2023-12-10 05:52:25', '2023-12-10 05:52:25', '2024-12-10 12:52:25'),
('af7bebd2f5471fda7beb839c0a62002d4cb289b14af11341c35f06123776b7ce5610b7e6c13fccb2', 65, 12, 'token', '[]', 0, '2023-12-20 17:47:53', '2023-12-20 17:47:53', '2024-12-20 17:47:53'),
('b04acaf33fd6ae2e701b3f1f77d0a96868e3c3144cabbaecfa770a0870f990c72a1673d357cafd93', 44, 12, 'token', '[]', 0, '2023-12-16 05:09:08', '2023-12-16 05:09:08', '2024-12-16 12:09:08'),
('b04c55bd0f60beda7be43765ddb6299924db16cf8a88b5bff5ab42f9617524be9fedf7b37c5b1f4d', 3, 1, 'token', '[]', 0, '2023-12-10 06:40:44', '2023-12-10 06:40:44', '2024-12-10 13:40:44'),
('b0c32a3522da6e299a5a30af09f55dd841989ea55c78581a4619cf41f4251b74095965d82e36801d', 51, 12, 'token', '[]', 0, '2023-12-16 17:18:42', '2023-12-16 17:18:42', '2024-12-16 17:18:42'),
('b0faf23d50bc6d10f3c2c65fa86d49f487532916c224260c471f8292a2e9c4a73361bf02dd9185e6', 77, 12, 'token', '[]', 0, '2023-12-20 17:22:59', '2023-12-20 17:22:59', '2024-12-20 17:22:59'),
('b114b9e439065a93646945082732689543dc1d79c957cef25c6db8c5a4471156bcb88915b99e9482', 3, 1, 'token', '[]', 0, '2023-12-11 02:30:18', '2023-12-11 02:30:19', '2024-12-11 09:30:18'),
('b2ad9954c91e4ca93f4091ebef58a23e55b09f48c973579994fe5d52bd64d1638502c4f2fea067e7', 95, 15, 'token', '[]', 0, '2023-12-20 21:46:25', '2023-12-20 21:46:25', '2024-12-21 04:46:25'),
('b2d7f78e49ccd55fe9f4f873ebad25b338686c3140c4b2563f77fa081c5d2219b2741d3b2aaf2026', 3, 1, 'token', '[]', 0, '2023-12-10 05:57:31', '2023-12-10 05:57:31', '2024-12-10 12:57:31'),
('b30be69600590a4bdf260e63107596f92a97cee5984bcadef48f3f48c127ea5c643d94e9c7389ac1', 4, 8, 'token', '[]', 0, '2023-12-14 03:06:04', '2023-12-14 03:06:04', '2024-12-14 10:06:04'),
('b3cf093f0e6bb4ca9b52fc8f38e343bee71dd212547f4351924a60753cdc42d4050edb2e85dd1663', 4, 1, 'token', '[]', 0, '2023-12-10 06:52:57', '2023-12-10 06:52:57', '2024-12-10 13:52:57'),
('b4a9d2bdd7f0be1c3e3fe2df9d32ec43c5f0e4f7cc7540635767806085827bcc0a6a5003cdbcc774', 65, 12, 'token', '[]', 0, '2023-12-20 17:13:36', '2023-12-20 17:13:36', '2024-12-20 17:13:36'),
('b598a46104ec1e6147b3cce703ff1d08b006758d5c162b1ef5f8d0acc808a403a64bc570fa314d16', 3, 1, 'token', '[]', 0, '2023-12-12 03:24:23', '2023-12-12 03:24:23', '2024-12-12 10:24:23'),
('b5ce1ed81ece6713e1f657fa9786f107b9837424fb7285e4ccfad7d2fc40ced2d7b074af751bc781', 3, 1, 'token', '[]', 0, '2023-12-10 06:49:45', '2023-12-10 06:49:45', '2024-12-10 13:49:45'),
('b603fb2309c6f9fd5a6cd38a8e467816d549c9715b9012c6667b0619badb6052d229e1e790cd6cf5', 65, 12, 'token', '[]', 0, '2023-12-16 17:48:54', '2023-12-16 17:48:54', '2024-12-16 17:48:54'),
('b62b6d6b6ddf98c9028c4938c8006ac776b0fe6030b8e2516fd320658b9d7df1e7083200b405342e', 3, 1, 'token', '[]', 0, '2023-12-11 08:19:25', '2023-12-11 08:19:25', '2024-12-11 15:19:25'),
('b66fc7f63e224499a5ef2b6ad81ee8ed41f3fae1b3b097a464653d2982c515a84052d3708ddc4071', 67, 12, 'token', '[]', 0, '2023-12-18 17:53:54', '2023-12-18 17:53:54', '2024-12-18 17:53:54'),
('b6ca7bce9f7b01445680f11ff145c089ad3b00f728ac7e6eeff5a346ddbb8d640775f341761540aa', 19, 1, 'token', '[]', 0, '2023-12-13 11:15:49', '2023-12-13 11:15:49', '2024-12-13 18:15:49'),
('b706d53abed481e97bf893b464fafce35735b355f41f9f6736c0daf03ac434c5c4c61abd0796855f', 3, 1, 'token', '[]', 0, '2023-12-10 08:25:53', '2023-12-10 08:25:53', '2024-12-10 15:25:53'),
('b7198663759c55bcc2253086530754c7644a2087b88519c1c7e3b08d1deae72c3c4533c9a1f23cde', 3, 1, 'token', '[]', 0, '2023-12-10 08:56:38', '2023-12-10 08:56:38', '2024-12-10 15:56:38'),
('b769014f48e1b5f4c91d893c2486bdd342c2822531a7328b9d756b08cd9bcc8fe9100124c6b0c9c0', 65, 12, 'token', '[]', 0, '2023-12-20 16:41:03', '2023-12-20 16:41:03', '2024-12-20 16:41:03'),
('b77760512771f6dd0417939cc8b07ce854ebf415c06d4b706cacddc494a54100b734376ed3672417', 95, 15, 'token', '[]', 0, '2023-12-20 22:12:07', '2023-12-20 22:12:07', '2024-12-21 05:12:07'),
('b982ad01349ceaf876618e0890be8e542d0ac16eae850322045d44060c4524a6a0a831600be1d36a', 47, 12, 'token', '[]', 0, '2023-12-16 06:07:55', '2023-12-16 06:07:55', '2024-12-16 13:07:55'),
('b9e6258e933bce6f9cf62de896f415a09c51a8f97e9651b4b8676ec112ad02c26145caa02fd75392', 69, 12, 'token', '[]', 0, '2023-12-20 16:19:31', '2023-12-20 16:19:31', '2024-12-20 16:19:31'),
('ba4ceafc94c9bc037b8fb3f970d8df035d3a6d407fff241a30b84672815c0d71a0f4e47af9d046da', 3, 1, 'token', '[]', 0, '2023-12-10 09:01:53', '2023-12-10 09:01:53', '2024-12-10 16:01:53'),
('babf89eb21d7accf8a2b742ce545e6113f2ee61ae5c1664ee6ad4a5d9f5a65b276177cd4a4003f30', 65, 12, 'token', '[]', 0, '2023-12-16 18:10:29', '2023-12-16 18:10:29', '2024-12-16 18:10:29'),
('baf91c1988baa3e52f34e1e31e2b7df1a3d85df8aa5ba61797d845e6c37e2f129bae03d38f5b623f', 3, 1, 'token', '[]', 0, '2023-12-13 01:15:12', '2023-12-13 01:15:12', '2024-12-13 08:15:12'),
('bb347c60e36554e5abee98e63f8a03a47732f5fb8185fc43ce07f5c79cfd5a7b2298bfd80663d3cb', 19, 8, 'token', '[]', 0, '2023-12-14 03:00:04', '2023-12-14 03:00:04', '2024-12-14 10:00:04'),
('bb3c8a07e817587e7fdf0a38afda091e92652437337eb70ff96d1ce32621453a74c246608ae44d8c', 65, 12, 'token', '[]', 0, '2023-12-20 16:17:46', '2023-12-20 16:17:46', '2024-12-20 16:17:46'),
('bbcf8f7bd14f7c1b3955e0585b94813148af4883a5670c49ac2b1083340ae9e7a5b62ceb63d20b07', 19, 1, 'token', '[]', 0, '2023-12-13 11:25:04', '2023-12-13 11:25:04', '2024-12-13 18:25:04'),
('bbe4b284b9689a7d5f95d742b45c4a61369f1bd8443dc58c614ef449c2946e4206e32090fd355f1e', 3, 1, 'token', '[]', 0, '2023-12-10 05:50:21', '2023-12-10 05:50:21', '2024-12-10 12:50:21'),
('bc59f7d1f1de0629b293007e66bc0f0a22018330fedfc05dc6be5e3d09598d139a65a5955b40efd1', 20, 1, 'token', '[]', 0, '2023-12-13 08:29:31', '2023-12-13 08:29:31', '2024-12-13 15:29:31'),
('bc78c0ce33aa967fa9d079e0988bf6dcc7ca82fa0ed1a8ecb687fe610e1d5cf5edb4f0415de7d3e8', 3, 1, 'token', '[]', 0, '2023-12-11 02:10:57', '2023-12-11 02:10:57', '2024-12-11 09:10:57'),
('bcc80f9cd5c86e84d9098039ddbdebebd46a7b341883634744eab1adb309f211040ec4bff497b207', 82, 12, 'token', '[]', 0, '2023-12-20 17:49:29', '2023-12-20 17:49:29', '2024-12-20 17:49:29'),
('bcd030d7784c356da0d06dfa4ecea7f393f99475e133ba5ff01de8b4d3bc746d363177e3da85a5ab', 65, 12, 'token', '[]', 0, '2023-12-20 14:19:32', '2023-12-20 14:19:33', '2024-12-20 14:19:32'),
('bf7741b4340870ec58e9f9fed0c9abd5bbac1888c96ee7d862bee0402ea7398e7a608d9c39cda9e5', 3, 1, 'token', '[]', 0, '2023-12-11 02:49:29', '2023-12-11 02:49:29', '2024-12-11 09:49:29'),
('bfd4c73481cf1a5781788675c8882f3e55b2d5fcff4fe46713322c0036d59c6d5ad495e1e2b9715c', 20, 8, 'token', '[]', 0, '2023-12-14 03:00:36', '2023-12-14 03:00:36', '2024-12-14 10:00:36'),
('bfec6155ed09da790c9def8e3f082217d680fd7f9574ad18733d06f9a88ce3f480f886fa99ec5108', 68, 12, 'token', '[]', 0, '2023-12-20 16:16:56', '2023-12-20 16:16:56', '2024-12-20 16:16:56'),
('c1461491527c1cfb1ed3a819b0e934340af3aca2914448d22eaca44ab6a5b8cc2e4044aa19fdcf2c', 80, 12, 'token', '[]', 0, '2023-12-20 18:10:42', '2023-12-20 18:10:42', '2024-12-20 18:10:42'),
('c15058ad9e1687539a4bdd7b1e8cf9848a221a5faf725af69bdb40abd74eecac7cdf5d9442e222a1', 33, 8, 'token', '[]', 0, '2023-12-14 04:45:58', '2023-12-14 04:45:58', '2024-12-14 11:45:58'),
('c1ab76401da1b1ffec18d275fef5bbedf29988b67c3c55fb476c3a6681f8988b9098c1088fc09981', 3, 1, 'token', '[]', 0, '2023-12-10 07:02:00', '2023-12-10 07:02:00', '2024-12-10 14:02:00'),
('c1e54092b572676ca876126292f6fc2055049fd00e46a6b2f721c2a749a0c42060912354b287bd49', 68, 12, 'token', '[]', 0, '2023-12-20 17:14:23', '2023-12-20 17:14:23', '2024-12-20 17:14:23'),
('c23cc41a3c0851200c0b2f7624c0b918d996a09aa23722362ea9c6002a37a7c0bbd02de0bdd68781', 3, 1, 'token', '[]', 0, '2023-12-11 02:15:05', '2023-12-11 02:15:05', '2024-12-11 09:15:05'),
('c28fcb81d82b9967a289e7ac6d568559ff3e92f338bf0d39bab4c7325cbb57165781a1b85566e30c', 3, 1, 'token', '[]', 0, '2023-12-10 06:56:21', '2023-12-10 06:56:21', '2024-12-10 13:56:21'),
('c2f7d43c9a97ba6c89d5982002ed00e0fa95e042167e77f293151df04607ea6f43bbb7ed42c8ac72', 68, 12, 'token', '[]', 0, '2023-12-20 17:02:20', '2023-12-20 17:02:20', '2024-12-20 17:02:20'),
('c436c9c793cecd5ebdae369591d8a10b2b2f10628330a40be3a02e63d7fcfb37ef02e4cff5af6fa2', 65, 12, 'token', '[]', 0, '2023-12-20 06:24:21', '2023-12-20 06:24:21', '2024-12-20 06:24:21'),
('c4c71a8acffb211f9ba825e78db99e985506a0dc362cd171ce0983e24ed922c7c29e9eb99bc7a54d', 3, 1, 'token', '[]', 0, '2023-12-10 08:27:03', '2023-12-10 08:27:03', '2024-12-10 15:27:03'),
('c63861af9932c7e26d71c87f7f7f1808f02f0797c45abd526abbe391452574684f29f9a843c2882f', 3, 1, 'token', '[]', 0, '2023-12-11 02:05:05', '2023-12-11 02:05:05', '2024-12-11 09:05:05'),
('c6630083c8289269602870422053369b0741bc86ada83f24900967390fff2b0645731cbcdb8ea5b7', 85, 12, 'token', '[]', 0, '2023-12-20 18:30:01', '2023-12-20 18:30:01', '2024-12-20 18:30:01'),
('c6738670b22bb51623692bdb11a864bb94f82e186074280b4650a17bbb55f1e5206a7d8cd4fd25f1', 3, 1, 'token', '[]', 0, '2023-12-10 06:55:52', '2023-12-10 06:55:52', '2024-12-10 13:55:52'),
('c6a9fca91736b32be4697c365f3c1dd7594c93db28b41b3d7c4078ce4b3ffeb3c4137907ce631f9d', 82, 12, 'token', '[]', 0, '2023-12-20 17:50:25', '2023-12-20 17:50:25', '2024-12-20 17:50:25'),
('c73cfa6e39d39ef5265470a585f2146d2d2e84813b7359fcf66659976f2167260da8c331ae03c74a', 72, 12, 'token', '[]', 0, '2023-12-20 17:03:21', '2023-12-20 17:03:21', '2024-12-20 17:03:21'),
('c7590457420dcc97f425d4c6bad6457033c88e146e224bff55b4bed9efdab1ce507ecdc4ba0f9574', 65, 12, 'token', '[]', 0, '2023-12-20 16:56:33', '2023-12-20 16:56:33', '2024-12-20 16:56:33'),
('c780d8dd78cdcc5926152cccd9cbc509851bb45dffc93c5f063cf456513df5d864e8d4d07f9da2f8', 3, 1, 'token', '[]', 0, '2023-12-12 03:58:44', '2023-12-12 03:58:44', '2024-12-12 10:58:44'),
('c815e711743c312b0ff3b39cb85b37b31c6b4f3eae1e7a911beb80f9f0e8681f7bca52f415389b9c', 3, 1, 'token', '[]', 0, '2023-12-11 02:51:46', '2023-12-11 02:51:46', '2024-12-11 09:51:46'),
('c85e9ebcc992a193db4ba82717d929d203fd4d9a20a30f99d5039f5aa26b1fd91f5e142cce791550', 77, 12, 'token', '[]', 0, '2023-12-20 17:26:09', '2023-12-20 17:26:09', '2024-12-20 17:26:09'),
('c8f30492d7c09f51e9a5d14d8c394aa34e37f8702a09158971e42142b9e21b60c343222327f3c5b2', 3, 1, 'token', '[]', 0, '2023-12-12 03:24:24', '2023-12-12 03:24:24', '2024-12-12 10:24:24'),
('c92f619b48165a86f435d179249a5c4f0ae74307e99f2ae4a68e8567a7aab932fb5c072667e51be1', 4, 1, 'token', '[]', 0, '2023-12-13 07:46:35', '2023-12-13 07:46:35', '2024-12-13 14:46:35'),
('c99cc50a3c7ca3818251ae917de0b5eec9f0d5a3a2c7e9057297359c457d97b65223e971178fc1c2', 3, 1, 'token', '[]', 0, '2023-12-10 07:26:09', '2023-12-10 07:26:09', '2024-12-10 14:26:09'),
('ca44b64931fab3fa682e724db4384c16f14d76155b1b4a84b79aed2954257f6a3abb7c20b0bcca91', 65, 12, 'token', '[]', 0, '2023-12-18 17:18:25', '2023-12-18 17:18:25', '2024-12-18 17:18:25'),
('ca6b7196ef9f14735076bdcd171166a202fc291878f4f7cced2654af1e0063a55720aedf1b0e0b2d', 80, 12, 'token', '[]', 0, '2023-12-20 17:56:30', '2023-12-20 17:56:30', '2024-12-20 17:56:30'),
('caaf654a47ad2ef5eb93646f067d1b3162b6c2dbc0c8e14584dee80b120c94b8653f1bce5ee8bf7b', 69, 12, 'token', '[]', 0, '2023-12-20 12:27:53', '2023-12-20 12:27:53', '2024-12-20 12:27:53'),
('cac9d06aec6eb84a7fe0a422d0f3b4e85b928a29d4be01f892ff62691eaaae8c6bfbbb5a824e160d', 68, 12, 'token', '[]', 0, '2023-12-20 17:10:45', '2023-12-20 17:10:45', '2024-12-20 17:10:45'),
('cae3a24f3c6242a4cb049e4e9f70d60f572f1e48ea42afec680f6ca153208c2208b604a43502a72a', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:23', '2023-12-10 07:05:23', '2024-12-10 14:05:23'),
('caeda0d10e8a10e9945edabc61880eed1e8ab7cd109441eb77561caa242fef04b8035ac33fb53785', 3, 1, 'token', '[]', 0, '2023-12-11 02:25:22', '2023-12-11 02:25:22', '2024-12-11 09:25:22'),
('cb2c1b8b42437e350e808453fd347d991d3806422fe16d2c4f3250167a6a71120914d0356da5c258', 65, 12, 'token', '[]', 0, '2023-12-20 14:19:13', '2023-12-20 14:19:13', '2024-12-20 14:19:13'),
('cb61f3ee0183cbcf7c9773493abd2979be238b08f077f790061ff597826540aff6443ae3967b3e4c', 85, 12, 'token', '[]', 0, '2023-12-20 18:26:37', '2023-12-20 18:26:37', '2024-12-20 18:26:37'),
('cc071f1a2cc5cb6f826bd7db52d787f9d9653329620b8ba15eccfa62454d72dcb8cde8d83ef58300', 3, 1, 'token', '[]', 0, '2023-12-10 06:52:10', '2023-12-10 06:52:10', '2024-12-10 13:52:10'),
('cc505b719dfd450f662e11c7cbc6935a6fafb2113a492bfc90b706884c9534aa4e17b75c2d4e10d1', 94, 15, 'token', '[]', 0, '2023-12-20 21:01:05', '2023-12-20 21:01:05', '2024-12-21 04:01:05'),
('cdca2636088f9236eed909ea0a47f007e59f228c3bb442b7ef0f21d0a1eedc064d8542aa485d684a', 3, 8, 'token', '[]', 0, '2023-12-14 03:07:18', '2023-12-14 03:07:18', '2024-12-14 10:07:18'),
('ce02d8b499940d6d6c3c701722dd9260723d1a4b343ea94e44ea397bdc77959e03b8d8b35616c2e9', 51, 12, 'token', '[]', 0, '2023-12-16 16:41:46', '2023-12-16 16:41:46', '2024-12-16 16:41:46'),
('ce328f84f71cb6178a457d90386193ca9d1a4862da22724bcee5bc5d31f9a9bceb6f36e4cd3168b8', 80, 12, 'token', '[]', 0, '2023-12-20 17:44:41', '2023-12-20 17:44:41', '2024-12-20 17:44:41'),
('cecabe14afb1f84df9879ecee451f3d11ea53d690422ad040c7a75843037b114d9a0b08e47231ddd', 19, 1, 'token', '[]', 0, '2023-12-13 10:13:24', '2023-12-13 10:13:24', '2024-12-13 17:13:24'),
('cee1d974d89a75bd3490716f5ce36e90c406608468f9176a89dbf0eae1d59e5e8522713dc997714d', 19, 1, 'token', '[]', 0, '2023-12-13 07:50:14', '2023-12-13 07:50:14', '2024-12-13 14:50:14'),
('cee77268b33c120132b5e99a45c90e1f80d9551a2a1d504df94469431dd81d4a1210a4e0befcf6f8', 69, 12, 'token', '[]', 0, '2023-12-20 14:22:26', '2023-12-20 14:22:26', '2024-12-20 14:22:26'),
('cf5fc7c370ce3df9eab89be385081a99703856a9fd9c3210256f931d3fb37e3d8aea1d508f54f68e', 4, 1, 'token', '[]', 0, '2023-12-10 06:51:36', '2023-12-10 06:51:36', '2024-12-10 13:51:36'),
('d09e33aed52f69acc89b692d279b6040de2c5967951aa3043f3bc0bd53faf09bffa094b74b2dbb5e', 3, 1, 'token', '[]', 0, '2023-12-10 07:06:20', '2023-12-10 07:06:20', '2024-12-10 14:06:20'),
('d0a3b4c70a2f81ab9cb8dfc3fa124178626b267968fd388b7896afe18ffc3be4f71b3a20982f756e', 68, 12, 'token', '[]', 0, '2023-12-20 17:13:53', '2023-12-20 17:13:53', '2024-12-20 17:13:53'),
('d1415ad46450fb467ba104faec0e8263d5557eae2534a1d96ebf36c1184b981d5f9d0cc9eca0d010', 4, 1, 'token', '[]', 0, '2023-12-13 09:20:34', '2023-12-13 09:20:34', '2024-12-13 16:20:34'),
('d1afb88c71ee717234888a0ed661d9f53df4a2509c915434892f78939314b10a074579375bc895e0', 3, 1, 'token', '[]', 0, '2023-12-10 07:03:10', '2023-12-10 07:03:10', '2024-12-10 14:03:10'),
('d221bf366ffa49b10785301ed0bc0cb07a8c7e1a09376cd1dc1c057272245d0c4b957afec4a2b142', 65, 12, 'token', '[]', 0, '2023-12-20 16:38:53', '2023-12-20 16:38:53', '2024-12-20 16:38:53'),
('d343aa04e0de8f85c2dcba36c8d10806faa5c83bdf260f5baa3e6ab18e555933c86f76d8954c22bb', 3, 1, 'token', '[]', 0, '2023-12-11 01:35:16', '2023-12-11 01:35:16', '2024-12-11 08:35:16'),
('d3c488c7bc0f5ae8bf0e2db77a0efdc0a73ab6e2da80606e9d34c4654b7538ef40325e6d1607718a', 3, 1, 'token', '[]', 0, '2023-12-11 02:30:21', '2023-12-11 02:30:21', '2024-12-11 09:30:21'),
('d4798e048367ff142a6d2c47d9f8efbf9f263f4cba8a5c4c13532c1f890da99ca852e566c1cd6ba0', 68, 12, 'token', '[]', 0, '2023-12-20 16:23:34', '2023-12-20 16:23:34', '2024-12-20 16:23:34'),
('d4af98789643cc5c403b3618160521ec13cfb329e668d48de56f9664f5c1389ec30a1c9c00861486', 65, 12, 'token', '[]', 0, '2023-12-20 17:30:14', '2023-12-20 17:30:14', '2024-12-20 17:30:14'),
('d4cd0edc09e41baad40ea30b960f5592143da618f36051b815ebd1fc30e99b87a6f25d75690b56f1', 47, 12, 'token', '[]', 0, '2023-12-16 06:07:30', '2023-12-16 06:07:30', '2024-12-16 13:07:30'),
('d4fe7e33556bbc0b28244263b0796c6938e503c73073cc35d70015cad14cf195e0e2183832d3ec6d', 65, 12, 'token', '[]', 0, '2023-12-20 18:58:49', '2023-12-20 18:58:49', '2024-12-20 18:58:49'),
('d661473f4d8362bea0b1642b2ed091902d027d3bf0b455ea4d9d8f98240c1463dfb6e1ad4b69f55b', 19, 1, 'token', '[]', 0, '2023-12-13 10:53:39', '2023-12-13 10:53:39', '2024-12-13 17:53:39'),
('d70e764fdafd02fc70d1e7342d378ed44a10065ed6ddb401cfab221f1dd7953dcbe78b5c1ed01106', 3, 1, 'token', '[]', 0, '2023-12-10 06:39:55', '2023-12-10 06:39:55', '2024-12-10 13:39:55'),
('d7842d46049b7e0e31d9ee43f915fdf1e4f09fefd95d38ed3bd8004c38220204be5a2954df536114', 3, 1, 'token', '[]', 0, '2023-12-13 01:08:44', '2023-12-13 01:08:44', '2024-12-13 08:08:44'),
('d8d575c3a3f8c6a7cdd8442c631d5e102bd8f8f99bd47e050e7dfe1b1404d902f8020b09fc963416', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:23', '2023-12-10 07:05:23', '2024-12-10 14:05:23'),
('d93a6357d7484c605efea86edaed27d9d03162c22af5b8fd6f7bd074590ed1a36829faf6300d4dff', 3, 1, 'token', '[]', 0, '2023-12-13 07:39:03', '2023-12-13 07:39:03', '2024-12-13 14:39:03'),
('d948289f80b05501e29764ca2c08a6debda5cf4f62d46cefe900cbb7eaf782ce1785818b4a57773a', 3, 1, 'token', '[]', 0, '2023-12-13 01:18:51', '2023-12-13 01:18:51', '2024-12-13 08:18:51'),
('d9a150e26e9458ce42e2bd4bdea430375ecc5565b6c72e3cc20d34d53909694b911ded7dea39ff20', 3, 1, 'token', '[]', 0, '2023-12-10 07:07:39', '2023-12-10 07:07:39', '2024-12-10 14:07:39'),
('d9c0b8fb6b5f4d3ca988d5f4b649d08e9940c23832c1431191fdf7709ad6baf4ab0564c0e34994b3', 3, 1, 'token', '[]', 0, '2023-12-10 08:28:28', '2023-12-10 08:28:28', '2024-12-10 15:28:28'),
('da78950b69547dd2a26a83aa9e53617ef7a2a438ec966eb1a3dd1d781c32cafa912c6c1817a923e7', 3, 1, 'token', '[]', 0, '2023-12-10 06:55:55', '2023-12-10 06:55:55', '2024-12-10 13:55:55'),
('daef7765b6afc4df7a1bce175b4a3a45991d20b14469228da098e74793ed44e52607e4c43624e81c', 3, 1, 'token', '[]', 0, '2023-12-10 05:18:54', '2023-12-10 05:18:54', '2024-12-10 12:18:54'),
('db678f9d3fdfffc8a2d84e3652c1407962073600f84d0596c3051fd0ac68c56ac52d00277c15fab5', 19, 1, 'token', '[]', 0, '2023-12-13 11:30:00', '2023-12-13 11:30:00', '2024-12-13 18:30:00'),
('dc1f8d55fcdb28a1ee8b5137cc6199d07df63227a641d47217e05ecf51c0a566116034bdbbe129f3', 3, 1, 'token', '[]', 0, '2023-12-10 05:53:40', '2023-12-10 05:53:40', '2024-12-10 12:53:40'),
('dc692b56102ee86f9e7b9b2b7e6ae49aba4cdc338d9e4c6929c56cbd20657a21ffabb8c2e28b5e3e', 3, 1, 'token', '[]', 0, '2023-12-10 08:51:31', '2023-12-10 08:51:31', '2024-12-10 15:51:31'),
('dc6c5496a89476b734c69ae0942d6a598cefd965d24bc0a729ae00a7efcd3a45a3c5ecac7f1ebb3e', 3, 1, 'token', '[]', 0, '2023-12-10 07:09:37', '2023-12-10 07:09:37', '2024-12-10 14:09:37'),
('dd83bdbc2fce7cb7b0496af74b90aadd4c28855cbb59c5578940a88893f2bf30949ad75e579c111e', 3, 1, 'token', '[]', 0, '2023-12-10 06:48:54', '2023-12-10 06:48:54', '2024-12-10 13:48:54'),
('de83c7264ab54dbaebca79e8b1d3f4e98e849e96b1cb61d15159a9719baf2d13e01fe725db4457eb', 82, 12, 'token', '[]', 0, '2023-12-20 18:13:11', '2023-12-20 18:13:11', '2024-12-20 18:13:11'),
('dee8aa8d1360e4a734f66c9954d634d2a00fdb9b0d4e00b32f19a1abc1588e6b2e999afb22ec4f7b', 44, 12, 'token', '[]', 0, '2023-12-16 05:10:12', '2023-12-16 05:10:12', '2024-12-16 12:10:12'),
('def0ba9c05cb50b2056cb396221c62dcc91e3d905b79107932cccfc58b0fc530b96805feac1bef8a', 4, 1, 'token', '[]', 0, '2023-12-13 01:42:54', '2023-12-13 01:42:54', '2024-12-13 08:42:54'),
('df8862a9ca90c150e00040d6864f7762ce2f57fcc26446379897d43d9b08fbb64e35bbdfd9a72d44', 69, 12, 'token', '[]', 0, '2023-12-20 15:04:48', '2023-12-20 15:04:48', '2024-12-20 15:04:48'),
('dfe0536f69bb1d505be5b5b96e4dd784e652618a65761ef7172089588680d375e791b189f5314c07', 68, 12, 'token', '[]', 0, '2023-12-20 14:21:35', '2023-12-20 14:21:35', '2024-12-20 14:21:35'),
('dfe965c6d8162cbd50264fac990fcb821ed36206c887366217ee7aa0da0670c4e84e1edf66a1d732', 95, 15, 'token', '[]', 0, '2023-12-20 22:11:04', '2023-12-20 22:11:04', '2024-12-21 05:11:04'),
('e009a619c4ef0148c1a674bb66f9f3e87a4945429da95355264f4c572da0e94aa5295049701b6a1e', 82, 12, 'token', '[]', 0, '2023-12-20 17:44:23', '2023-12-20 17:44:23', '2024-12-20 17:44:23'),
('e0267d44caed1f6a59d8f0e2a02a1c1e992993780ea4ce1f01a3ead83f63fe9fb6063c827ee2150d', 3, 1, 'token', '[]', 0, '2023-12-10 07:35:58', '2023-12-10 07:35:58', '2024-12-10 14:35:58'),
('e0a1bcdce68eff40001481e5fc2a4f979ba985ec54a6e4d8ca1cbbae688623c07b13d000bff44bd8', 44, 12, 'token', '[]', 0, '2023-12-16 05:07:50', '2023-12-16 05:07:50', '2024-12-16 12:07:50'),
('e0fbd9042b448cb2b1a6f71800ecf7cf1bbc11708f8e80f84a38cd38ae92683f7ccd09049cbbcbcc', 65, 12, 'token', '[]', 0, '2023-12-20 18:17:10', '2023-12-20 18:17:10', '2024-12-20 18:17:10'),
('e11ae0a279f28d5d9df4cedb83c5b88e48075ad4e0bf82aabbd31965f30e95c9837bcb9589f6463d', 82, 12, 'token', '[]', 0, '2023-12-20 18:08:56', '2023-12-20 18:08:56', '2024-12-20 18:08:56'),
('e127f331d79341354053c9fff9f9447cdf6bfc2289722351c7a39c1de8097cff43a5e0db7d2b551f', 69, 12, 'token', '[]', 0, '2023-12-20 14:06:57', '2023-12-20 14:06:57', '2024-12-20 14:06:57'),
('e28d88a4336bb1c7a638910f9ed7b880d370ae5dee05d833c2848484b748237cf6cd8df9dfd13d4b', 3, 1, 'token', '[]', 0, '2023-12-10 06:44:09', '2023-12-10 06:44:09', '2024-12-10 13:44:09'),
('e3f1448722304fc8d73848bf8e4d93deae51d9853585e52a82bb58114724a88991c0a4c14b9b21e0', 80, 12, 'token', '[]', 0, '2023-12-20 17:40:09', '2023-12-20 17:40:09', '2024-12-20 17:40:09'),
('e4db1034063203a03fd7d335050f459bbaabdec745d9ae8fc7a14bbbb06446c15f245b3b8cc9beb5', 3, 1, 'token', '[]', 0, '2023-12-11 20:40:02', '2023-12-11 20:40:03', '2024-12-12 03:40:02'),
('e520fe27a6367c84e8332f39583d14f2ceb3cd0b885b87375619fdb83bbbef45c57a793425d621c9', 3, 1, 'token', '[]', 0, '2023-12-10 07:06:32', '2023-12-10 07:06:32', '2024-12-10 14:06:32'),
('e554fe22b3436f2b6cab5e247e36c438bd483203a0a247ea8ff51ccf2e03ad6d9c9fee2a0c51151b', 67, 12, 'token', '[]', 0, '2023-12-18 17:22:51', '2023-12-18 17:22:51', '2024-12-18 17:22:51'),
('e5f05fb72e575cad53cb0543b07150d7874a4066c6ea7750dad9533a09940c5bf6a67bc1cfe14af5', 43, 12, 'token', '[]', 0, '2023-12-16 05:35:57', '2023-12-16 05:35:57', '2024-12-16 12:35:57'),
('e5f993de7bab75eea26ae2f46565dbb91b915f7992ad6a50e33fae7d21ab745e79c03d2d7f1d4dc9', 3, 1, 'token', '[]', 0, '2023-12-10 07:13:02', '2023-12-10 07:13:02', '2024-12-10 14:13:02'),
('e62e5a84f384ca9567e2b4ef331faa409746b728adcfef59ae6c9ac8678e6c8613fad22c6cfcce1d', 87, 12, 'token', '[]', 0, '2023-12-20 19:01:23', '2023-12-20 19:01:23', '2024-12-20 19:01:23'),
('e664adf3c7404a65f049ea4de2d19b5ef33b9a2c26427836fba79c890222859c275adaa22cb2a0de', 65, 12, 'token', '[]', 0, '2023-12-20 18:23:03', '2023-12-20 18:23:03', '2024-12-20 18:23:03'),
('e721793fdfa8fac714c46cae990ab2cc0fbec94bb1d4a1869baaf463b5d1611030b74dd392289636', 19, 8, 'token', '[]', 0, '2023-12-14 03:08:50', '2023-12-14 03:08:50', '2024-12-14 10:08:50'),
('e78b512ab96bb33c60f71d8338364aff291e8619865510456c2545c0d4b98960c41ba6a496fa609e', 3, 1, 'token', '[]', 0, '2023-12-10 07:05:47', '2023-12-10 07:05:47', '2024-12-10 14:05:47'),
('e7bbffcf73cfd2ecd65eb6d559bb50ff15e8128476fc5f9552f6ca5ce748382d9b788a7725d119a9', 3, 1, 'token', '[]', 0, '2023-12-13 04:13:37', '2023-12-13 04:13:37', '2024-12-13 11:13:37'),
('e7e1d3dcafd38002cd1e149a62b40316ff64c037e9974d9de1bb8f185cf4e92caff15522ddbcdbb8', 65, 12, 'token', '[]', 0, '2023-12-20 17:10:29', '2023-12-20 17:10:29', '2024-12-20 17:10:29'),
('e7f1fc80b9c3e003fd798f1241e6568dfbf4f6fad2e3a1d52eee775d5b070f7848da87c314961f1f', 67, 12, 'token', '[]', 0, '2023-12-18 18:02:43', '2023-12-18 18:02:43', '2024-12-18 18:02:43'),
('e83592ba6fecfc18ba249b4bc385c6cce95451da10cddd1f5b9cb88ecbe6b4db590706fd14a6004b', 67, 12, 'token', '[]', 0, '2023-12-18 17:59:38', '2023-12-18 17:59:38', '2024-12-18 17:59:38'),
('e89dda991ffd9fd947e4fd481999e7d90eccc23b9eddb5abdc2e1a61a1d3e819a4357c8e06dbf132', 3, 1, 'token', '[]', 0, '2023-12-10 07:07:54', '2023-12-10 07:07:54', '2024-12-10 14:07:54'),
('e8b6c6fadd9bf13a31a28ace628e0233b710a45d9296f494b4f5405a2dc286854b6dce92c5941a00', 51, 12, 'token', '[]', 0, '2023-12-16 17:12:05', '2023-12-16 17:12:05', '2024-12-16 17:12:05'),
('e8b85e12771b78068c0ce0b37ed7128b8223a0827abfc1ad2893db087a350033e68b242c34e15abf', 3, 1, 'token', '[]', 0, '2023-12-10 07:07:29', '2023-12-10 07:07:29', '2024-12-10 14:07:29'),
('e8c5a0ca9e244bfd25c0b42f7081078f78398a2d769e1f102bf2cf83533afc6690043fdd99d6fcea', 3, 1, 'token', '[]', 0, '2023-12-13 01:09:21', '2023-12-13 01:09:21', '2024-12-13 08:09:21'),
('e8f0ce5754d3cac4fab3bacd9f7a445bda2d91193da22b937184ab5762d4ca96b0fea33cd53ef3bb', 3, 1, 'token', '[]', 0, '2023-12-10 08:46:55', '2023-12-10 08:46:55', '2024-12-10 15:46:55'),
('e938e597021db6b629f6ba8fb2aeb4ceeb2c753499d3371722e3771a4210a35799b32760c6bdf0f9', 3, 1, 'token', '[]', 0, '2023-12-11 02:49:55', '2023-12-11 02:49:55', '2024-12-11 09:49:55'),
('e9bc1327e9d63750bc2eac755ff219276e19cad93b577db5df6824652dd506586418f0df605f2130', 3, 1, 'token', '[]', 0, '2023-12-10 07:07:52', '2023-12-10 07:07:52', '2024-12-10 14:07:52'),
('ea7a707aee6b7f12969055d2ff4bdafbc39bb738df211202ea26d68f2b9a16e6c63659336b6a197c', 65, 12, 'token', '[]', 0, '2023-12-20 14:32:58', '2023-12-20 14:32:58', '2024-12-20 14:32:58'),
('ee635f1f71684bebfd1a49cc8fc90c5e107946ab79db3960ca1dd1655574d1a040712ee15c4d0149', 3, 1, 'token', '[]', 0, '2023-12-11 02:09:24', '2023-12-11 02:09:24', '2024-12-11 09:09:24'),
('ef7020a438a76a1edf5f52ac4960bbdc1a970aa5666fee1c3c81b9c16e9db01891b05aaade313e67', 3, 1, 'token', '[]', 0, '2023-12-10 07:14:32', '2023-12-10 07:14:32', '2024-12-10 14:14:32'),
('efa167f14e906275816eee000eb76a45cda8181db18b60d868425a4f6fea05e92e130fe802eb7aee', 3, 1, 'token', '[]', 0, '2023-12-11 02:49:04', '2023-12-11 02:49:04', '2024-12-11 09:49:04'),
('f030a13e639b1322a5b51f940acbfcf77720228c3c3ab9e87124a1ebc76556759691c15ba0a228b9', 67, 12, 'token', '[]', 0, '2023-12-18 18:24:57', '2023-12-18 18:24:57', '2024-12-18 18:24:57'),
('f038e902117588bf601348ba1c4a1498a1d99bc88eec0e1b9e16d6049761196cf2ba99fabb8bbe68', 80, 12, 'token', '[]', 0, '2023-12-20 17:45:16', '2023-12-20 17:45:16', '2024-12-20 17:45:16'),
('f1078d5fc0fbf711c350dbbfe0634e0bda03284f4fe5c9e18d05a5303c3ed9672bbdbc3e747d9cca', 3, 8, 'token', '[]', 0, '2023-12-14 02:58:50', '2023-12-14 02:58:51', '2024-12-14 09:58:50'),
('f1cedd96382227a48461adeedc8937e791315f3e1b17dda4a382d2f8f219b0612b1d5b8ac41f6c34', 3, 1, 'token', '[]', 0, '2023-12-11 01:35:17', '2023-12-11 01:35:17', '2024-12-11 08:35:17'),
('f1ddce2d373c4ceb83dd00297de6cc0b21ee8703baf9a2e6a630db0bf2d624b17da5e1d4d1026f6e', 3, 1, 'token', '[]', 0, '2023-12-11 11:27:24', '2023-12-11 11:27:24', '2024-12-11 18:27:24'),
('f23643bb5163c84458cb56654298655c95313e6179e933404f8231e46be80fed55a6734dc42943ca', 65, 12, 'token', '[]', 0, '2023-12-20 18:35:10', '2023-12-20 18:35:10', '2024-12-20 18:35:10'),
('f33b38d784a6449562cf295d9fb9c863e40d110a4265c1dd4160408d9692661075cdfd2e1d7baddf', 3, 1, 'token', '[]', 0, '2023-12-10 05:59:41', '2023-12-10 05:59:41', '2024-12-10 12:59:41'),
('f3423745ecbec5b7cae764a2fc4eecd00e3dc3b8bbd01236d8843acaafc03c167a7223f9035244c3', 69, 12, 'token', '[]', 0, '2023-12-20 14:20:02', '2023-12-20 14:20:02', '2024-12-20 14:20:02'),
('f349b7ed81f9e7a15cc82d72afc136a2b16d94d0cd11865312374772f4462f35a70f9c224cc31f22', 3, 1, 'token', '[]', 0, '2023-12-12 05:43:18', '2023-12-12 05:43:18', '2024-12-12 12:43:18'),
('f495202e072eae612663297eaeb276d5e1d731e28839306a9a6a91a0028df5c2bbd971d506c0a110', 68, 12, 'token', '[]', 0, '2023-12-20 16:06:29', '2023-12-20 16:06:29', '2024-12-20 16:06:29'),
('f58d12fa1fb58c06eb660e6187c8cdf74b391992e3faa55bfe863cfc461ce000ac9309f536f193db', 95, 15, 'token', '[]', 0, '2023-12-20 21:03:17', '2023-12-20 21:03:17', '2024-12-21 04:03:17'),
('f59a2ae1bcb6e48f3d264c83b9602fab8738c583ea1cfdf3d94dcfd8e985393dd441515d7b7bfd09', 3, 1, 'token', '[]', 0, '2023-12-11 02:27:42', '2023-12-11 02:27:42', '2024-12-11 09:27:42'),
('f6443a34753bda5c9629ee8def50ec5fcb982236d3a0dcd2db0ca34895ad3a0b4d7c618202fbf2e9', 65, 12, 'token', '[]', 0, '2023-12-20 18:08:50', '2023-12-20 18:08:50', '2024-12-20 18:08:50'),
('f6aa8d15cff69b2156502a90c2406eb6adf22384f2afa4ff57dfd77cf92cefc0fd8fdc6e6e206342', 69, 12, 'token', '[]', 0, '2023-12-20 14:37:30', '2023-12-20 14:37:30', '2024-12-20 14:37:30'),
('f70fd920c8ca08e6008ad761c6803bdb3f2b66b221f968ebcf4c2ff82573d9b7c133f5c6f36a5479', 4, 1, 'token', '[]', 0, '2023-12-10 07:09:45', '2023-12-10 07:09:45', '2024-12-10 14:09:45'),
('f74b46bf20a65bff49c145c3007d407f3ee86b1931a946ed9dc71eadbd0ac3eb35b24e1caaba1bb8', 4, 1, 'token', '[]', 0, '2023-12-13 01:30:45', '2023-12-13 01:30:45', '2024-12-13 08:30:45'),
('f77160645516c2eba5274e5ecc860b659829a2d4dd2e7001c2f1143eec92bcefc18b3fff10159bc6', 3, 1, 'token', '[]', 0, '2023-12-10 06:41:07', '2023-12-10 06:41:07', '2024-12-10 13:41:07'),
('f777d8c4227f12e89df19d235d5bbdeb125ec23f24d3d297409a2299ae48a9a9c48a06110bcdf3e3', 73, 12, 'token', '[]', 0, '2023-12-20 16:59:08', '2023-12-20 16:59:08', '2024-12-20 16:59:08'),
('f86c0c479a69d7d1f47c6add7a73af0fc1ee04579ff7a8ff4dbb0b24ae961282e9a69377cd978b73', 3, 1, 'token', '[]', 0, '2023-12-12 04:25:57', '2023-12-12 04:25:57', '2024-12-12 11:25:57'),
('f95f6ddbae6286e1d6d8947cb72046dbcbf6d30d2695942ae36473a9660b0a18d4fef0cd0b19e39c', 3, 1, 'token', '[]', 0, '2023-12-11 02:19:50', '2023-12-11 02:19:50', '2024-12-11 09:19:50'),
('f9803dcc8c2d5d24f2b1e6f8ff655e99ad887936ac563fb19f8f5dfcb818171470b7c99c15c281bb', 3, 1, 'token', '[]', 0, '2023-12-11 02:52:25', '2023-12-11 02:52:25', '2024-12-11 09:52:25'),
('fa5da45d8738e0a0ca361188d45ab7739ed74552fb1d957912ae0efdbe3f27fd48f5b0b32c75866a', 69, 12, 'token', '[]', 0, '2023-12-20 14:36:44', '2023-12-20 14:36:44', '2024-12-20 14:36:44'),
('faa96db5dd859407b397d58febaddfd4f9e76a5445a3f25c718f23b781f8fc80ad73b9e11b135c40', 3, 1, 'token', '[]', 0, '2023-12-11 08:18:55', '2023-12-11 08:18:55', '2024-12-11 15:18:55'),
('fbf9c176061f0fe31900a224fabac435f0ce00a3aa788dd00ae69369dd472db404bd2f6967e5d5c2', 68, 12, 'token', '[]', 0, '2023-12-20 14:26:32', '2023-12-20 14:26:32', '2024-12-20 14:26:32'),
('fc1fda48207a714899ab05f2cfe6f26b98bb959d4e0d3b7e8255f4dd5f1ee1459141381800724bcd', 74, 12, 'token', '[]', 0, '2023-12-20 17:11:34', '2023-12-20 17:11:34', '2024-12-20 17:11:34'),
('fc4e8ca0d3acb21382bf4a659196de60ee9d015224c5631bf4cf34bceb19740ac3d1c1b7d682ae86', 70, 12, 'token', '[]', 0, '2023-12-20 16:35:56', '2023-12-20 16:35:56', '2024-12-20 16:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'user', 'gOVJt0TEqjGPk9KVGZu28uzY4RA40Vla8tqjMZxv', NULL, 'http://localhost', 1, 0, 0, '2023-12-10 05:18:50', '2023-12-10 05:18:50'),
(2, NULL, 'Laravel Personal Access Client', 'JLpPctn8iefKn4gdv8jvY4DMmrMXMHhRjUJaKYvz', NULL, 'http://localhost', 1, 0, 0, '2023-12-13 23:18:50', '2023-12-13 23:18:50'),
(3, NULL, 'Laravel Password Grant Client', 'h27zhH1tHD7KNmvVSRhCugTA33e3F5RPPpTXSki4', 'users', 'http://localhost', 0, 1, 0, '2023-12-13 23:18:50', '2023-12-13 23:18:50'),
(4, NULL, 'user', 'B0ANJKRG87503bgUWE8GtoiHuVyHcmnkVTaOgdj8', NULL, 'http://localhost', 1, 0, 0, '2023-12-13 23:20:01', '2023-12-13 23:20:01'),
(5, NULL, 'user', 'lhnR6TPfyjUWnFAWHaM1qWHMh6cj4PhjD9YuK6yn', NULL, 'http://localhost', 1, 0, 0, '2023-12-14 02:53:32', '2023-12-14 02:53:32'),
(6, NULL, 'Laravel Personal Access Client', 'k4F5ekPrtv0FhaCx7QH1Hu39rqGpfQ77vBikvrM9', NULL, 'http://localhost', 1, 0, 0, '2023-12-14 02:58:39', '2023-12-14 02:58:39'),
(7, NULL, 'Laravel Password Grant Client', 'CSG5Wz5NZnA8IfYWcm9TdAlaUqbCxVetyeTxH4T7', 'users', 'http://localhost', 0, 1, 0, '2023-12-14 02:58:39', '2023-12-14 02:58:39'),
(8, NULL, 'Laravel Personal Access Client', 'VKc12mMBkEdwLvdTa4yZJ2CqHxZrGPqTzlxdAjRH', NULL, 'http://localhost', 1, 0, 0, '2023-12-14 02:58:44', '2023-12-14 02:58:44'),
(9, NULL, 'Laravel Password Grant Client', 'b497wsCI96KhaI4uTBNMLDgMeMSYCJXpL6nwfBOb', 'users', 'http://localhost', 0, 1, 0, '2023-12-14 02:58:44', '2023-12-14 02:58:44'),
(10, NULL, 'Laravel Personal Access Client', 'Q05LRdVZq742Aqcy0PYV9WC5RxzGOZboSFAonljW', NULL, 'http://localhost', 1, 0, 0, '2023-12-16 04:59:09', '2023-12-16 04:59:09'),
(11, NULL, 'Laravel Password Grant Client', 'BmNGSGmnVMFbEWEy39YgCcY1Vre72ryuoNS23YjK', 'users', 'http://localhost', 0, 1, 0, '2023-12-16 04:59:09', '2023-12-16 04:59:09'),
(12, NULL, 'user', 'XdfC0VRDeynlp4La1owqRtbhDdULCc7YjsGpoH9E', NULL, 'http://localhost', 1, 0, 0, '2023-12-16 04:59:41', '2023-12-16 04:59:41'),
(13, NULL, 'Laravel Personal Access Client', 'FZZBrTBidl5hIxHABnYkmdjyu48RBfcD5XO2Fmye', NULL, 'http://localhost', 1, 0, 0, '2023-12-20 20:43:30', '2023-12-20 20:43:30'),
(14, NULL, 'Laravel Password Grant Client', '7zTerIHzIANQ2SKzhAsVKYoMk56jbcOwB5TfM522', 'users', 'http://localhost', 0, 1, 0, '2023-12-20 20:43:30', '2023-12-20 20:43:30'),
(15, NULL, 'user', 'Zh1wlBwRhpiHEbSKKQq3hZL7kl0XXZXcO219iJf8', NULL, 'http://localhost', 1, 0, 0, '2023-12-20 20:44:12', '2023-12-20 20:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-10 05:18:50', '2023-12-10 05:18:50'),
(2, 2, '2023-12-13 23:18:50', '2023-12-13 23:18:50'),
(3, 4, '2023-12-13 23:20:01', '2023-12-13 23:20:01'),
(4, 5, '2023-12-14 02:53:33', '2023-12-14 02:53:33'),
(5, 6, '2023-12-14 02:58:39', '2023-12-14 02:58:39'),
(6, 8, '2023-12-14 02:58:44', '2023-12-14 02:58:44'),
(7, 10, '2023-12-16 04:59:09', '2023-12-16 04:59:09'),
(8, 12, '2023-12-16 04:59:41', '2023-12-16 04:59:41'),
(9, 13, '2023-12-20 20:43:30', '2023-12-20 20:43:30'),
(10, 15, '2023-12-20 20:44:12', '2023-12-20 20:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `harga` float NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `harga`, `created_at`) VALUES
(25, 100000, '2023-12-20'),
(26, 100000, '2023-12-20'),
(27, 100000, '2023-12-20'),
(28, 100000, '2023-12-20'),
(29, 100000, '2023-12-20'),
(30, 100000, '2023-12-20'),
(31, 100000, '2023-12-20'),
(32, 100000, '2023-12-20'),
(33, 100000, '2023-12-20'),
(34, 100000, '2023-12-20'),
(35, 100000, '2023-12-21'),
(36, 100000, '2023-12-21'),
(37, 100000, '2023-12-21'),
(38, 100000, '2023-12-21'),
(39, 100000, '2023-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikasi`
--

CREATE TABLE `sertifikasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_sertifikat` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `education` varchar(255) NOT NULL,
  `coding_experience` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `id_pembelian` int(11) NOT NULL DEFAULT 0,
  `verify_key` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `education`, `coding_experience`, `role`, `email_verified_at`, `id_pembelian`, `verify_key`, `active`, `photo`) VALUES
(94, 'drapce22', 'nicholas.ivan.christ@gmail.com', '$2y$12$6mMfQx/auA07k0mJjugZM.otBMP5KrV7.aNzrNi8tQ0FG0Bi/Hpdm', 'High School', 'Intermediete', 'admin', '2023-12-20 20:56:16', 35, 'EzMpUBBKusM74eZHb5PkDtZRoDBen6YmR17joBCfUD2gVtJleVWoImr3KsekZidH9RyHnpD7kjiuOR6qhfGYja7MiQnbldK7oES5', 1, '1703131186.jpg'),
(95, 'draco.captain.000@gmail.com', 'draco.captain.000@gmail.com', '$2y$12$uEnxMLypgU8G3HHJkVR21.Dt/Mn98Kbna.fipSYurG0yfSvXoQSZm', 'Under Graduate', 'Intermediete', 'user', '2023-12-20 21:03:08', 0, 'gDKHRV0uswfHm64Ll1YZ77n2QWUpP1OWYXuU3K4Ahe8lIG1IdyiSrxIESNyxneKqx5rV9ElFvfeBe1olvkvAAM1uMxCEB4gPIIRG', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar`
--

CREATE TABLE `webinar` (
  `id` int(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pengisi_acara` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `webinar`
--

INSERT INTO `webinar` (`id`, `tanggal`, `title`, `pengisi_acara`, `content`, `thumbnail`) VALUES
(14, '2023-12-04', '123123', '12124', '124124', '1703052284.jpg'),
(17, '2023-12-05', 'few', 'wew', 'ewwef', '1703090589.jpg'),
(18, '2023-12-05', 'yang muda kaya', 'qwddqw', '123122', '1703090610.jpg'),
(19, '2023-12-25', 'yang muda miskin', '1241', 'oke om', '1703090640.jpg'),
(20, '2023-12-23', 'Muda Karya', 'Abdul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere mollis finibus. Mauris ut lacinia justo. Vestibulum enim sem, dapibus nec viverra vitae, dictum vel nisl. Vivamus blandit mi et erat ultricies, id sollicitudin enim porta.', '1703090871.jpeg');

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
-- Indexes for table `ikut_webinar`
--
ALTER TABLE `ikut_webinar`
  ADD PRIMARY KEY (`id_user`,`id_webinar`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sertifikasi`
--
ALTER TABLE `sertifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sertifikasi_id_user_foreign` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webinar`
--
ALTER TABLE `webinar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sertifikasi`
--
ALTER TABLE `sertifikasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `webinar`
--
ALTER TABLE `webinar`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sertifikasi`
--
ALTER TABLE `sertifikasi`
  ADD CONSTRAINT `sertifikasi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
