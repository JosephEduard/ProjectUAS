-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 04:19 AM
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
-- Database: `backenddatabase`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:2;', 1736997338),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1736997338;', 1736997338),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1736995541),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1736995541;', 1736995541);

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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price_at_time` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `thumbnail`, `slug`, `platform`, `genre`, `price`, `stock`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Black Myth: Wukong', 'game-thumbnails/01JHJ3HDCCTMH8CT61TJH0SS73.jpg', 'black-myth-wukong', 'PS4', 'Action, Open-World, Adventure', 899999.00, 995, 'Black Myth: Wukong is a 2024 action role-playing game developed and published by Game Science. The game is inspired by the classical Chinese novel Journey to the West and follows an anthropomorphic monkey based on Sun Wukong from the novel.', NULL, '2025-01-14 02:50:25', '2025-01-15 10:53:01'),
(2, 'Asphalt 8', 'game-thumbnails/01JHJ3M28Q4TRV9BTGF4188FSJ.jpg', 'asphalt-8', 'PC', 'Racing', 199999.00, 999, 'Asphalt 8: Airborne is a 2013 racing video game developed by Gameloft Barcelona and published by Gameloft. It is the tenth major game of the Asphalt series.', NULL, '2025-01-14 02:51:52', '2025-01-14 02:51:52'),
(3, 'Battlefield 2042', 'game-thumbnails/01JHJ3Q3BWXJB860B4TK5Z0CK5.avif', 'battlefield-2042', 'PC', 'First-Person Shooter', 649999.00, 995, 'Battlefield 2042 is a 2021 first-person shooter, developed by DICE and published by Electronic Arts.', NULL, '2025-01-14 02:53:32', '2025-01-15 18:46:09'),
(4, 'Burnout', 'game-thumbnails/01JHJ3TG5N9XH0X2MJ86AYHKFZ.jpg', 'burnout', 'PS4', 'Racing', 249999.00, 999, 'Burnout Paradise is a 2008 racing video game developed by Criterion Games and published by Electronic Arts for PlayStation 3, Xbox 360 and Microsoft Windows. It was also released on the PlayStation Store and via Xbox Live Marketplace\'s Games on Demand.', NULL, '2025-01-14 02:55:23', '2025-01-14 02:55:23'),
(5, 'Valorant', 'game-thumbnails/01JHJ3ZXN0CCVK7FZB272H0G0D.jpg', 'valorant', 'PS4', 'First-Person Shooter, Strategy', 0.00, 997, 'Valorant is a 2020 first-person tactical hero shooter video game developed and published by Riot Games.[3] A free-to-play game, Valorant takes inspiration from the Counter-Strike series, borrowing several mechanics such as the buy menu, spray patterns, and inaccuracy while moving.', NULL, '2025-01-14 02:58:21', '2025-01-15 10:53:01'),
(6, 'The Legend of Zelda', 'game-thumbnails/01JHJ43P5RN6X211Q7Q5J9H8Y5.jpg', 'the-legend-of-zelda', 'Nintendo', 'Action, Adventure', 959999.00, 999, 'The Legend of Zelda, originally released in Japan as The Hyrule Fantasy: Zelda no Densetsu, is an action-adventure game developed and published by Nintendo.', NULL, '2025-01-14 03:00:24', '2025-01-14 03:12:26'),
(7, 'Cyberpunk 2077', 'game-thumbnails/01JHJ4ANYT89CVPWTRD7PV7SAX.jpg', 'cyberpunk-2077', 'PC', 'RPG, Action', 929999.00, 997, 'Cyberpunk 2077 is a 2020 action role-playing game developed by the Polish studio CD Projekt Red and published by CD Projekt. Based on Mike Pondsmith\'s Cyberpunk tabletop game series, the plot is set in the fictional metropolis of Night City, California, within the dystopian Cyberpunk universe.', NULL, '2025-01-14 03:04:13', '2025-01-15 18:46:09'),
(8, 'Dark Souls III', 'game-thumbnails/01JHJ4D8VRMNQ2W0P11DW2QNBE.jpg', 'dark-souls-iii', 'PS4', 'Action, RPG, Adventure', 899999.00, 999, 'Dark Souls III is a 2016 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment for Microsoft Windows, PlayStation 4, and Xbox One. The third and final entry in the Dark Souls series, the game follows an unkindled character on a quest to prevent the end of the world.', NULL, '2025-01-14 03:05:38', '2025-01-14 03:05:38'),
(9, 'Cities: Skyline II', 'game-thumbnails/01JHJ4J6RFR4TD02WZ7CA23WB8.jpg', 'cities-skyline-ii', 'PS4', 'Simulation', 779999.00, 999, 'Cities: Skylines II is a 2023 city-building game developed by Colossal Order and published by Paradox Interactive. The game is a sequel to 2015\'s Cities: Skylines and expands upon many of its simulation factors such as simulated city and population sizes with improved traffic AI and management schemes.', NULL, '2025-01-14 03:08:20', '2025-01-14 03:12:42'),
(10, 'Grand Theft Auto V', 'game-thumbnails/01JHJ51TFWZ627SP6JG3SPYQA4.webp', 'grand-theft-auto-v', 'PC', 'First-Person Shooter, Action', 299999.00, 999, 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008\'s Grand Theft Auto IV, and the fifteenth instalment overall.', NULL, '2025-01-14 03:16:51', '2025-01-14 03:16:51'),
(11, 'CarX Drift Racing', 'game-thumbnails/01JHJ54XNG8Q2TYWMYHJ7JWP63.jpg', 'carx-drift-racing', 'PC', 'Racing', 250000.00, 999, 'CarX Drift Racing Online is your chance to immerse yourself in the real world of drifting. Get together with friends, tune your car and burn some tires!', NULL, '2025-01-14 03:18:33', '2025-01-14 03:18:33'),
(12, 'Euro Truck Simulator 2', 'game-thumbnails/01JHJ5AAZM7MGFPM3XA7JHBYGY.jpg', 'euro-truck-simulator-2', 'PC', 'Simulation', 99000.00, 999, 'Travel across Europe as king of the road, a trucker who delivers important cargo across impressive distances!', NULL, '2025-01-14 03:21:31', '2025-01-14 03:21:31'),
(13, 'F1 24', 'game-thumbnails/01JHJ5GHXBKWMR44MDWXPABT5W.avif', 'f1-24', 'PS4', 'Racing', 1119999.00, 999, 'F1 24 is a racing video game developed by Codemasters and published by EA Sports. It is the seventeenth entry in the F1 series and holds the license for the 2024 Formula One and Formula 2 championships. The game was released on 31 May, or three days earlier for users who pre-ordered the Champions\' Edition.', NULL, '2025-01-14 03:24:54', '2025-01-14 03:24:54'),
(14, 'Resident Evil 7', 'game-thumbnails/01JHJ5JX73WFVS64G0NDA1NF44.jpg', 'resident-evil-7', 'PS4', 'Horror, Action, Adventure', 679999.00, 999, 'Google users\nResident Evil 7: Biohazard is a 2017 survival horror game developed and published by Capcom. The player controls Ethan Winters as he searches for his long-missing wife in a derelict plantation occupied by an infected family, solving puzzles and fighting enemies.', NULL, '2025-01-14 03:26:11', '2025-01-14 03:26:11'),
(15, 'Age of Empire IV', 'game-thumbnails/01JHPG8HQ26E99NZMVG6X149GQ.png', 'age-of-empire-iv', 'PC', 'Strategy', 655999.00, 999, 'Age of Empires IV is a real-time strategy video game developed by Relic Entertainment in partnership with World\'s Edge and published by Xbox Game Studios. It is the fourth installment of the Age of Empires series, and the first installment not developed by Ensemble Studios.', NULL, '2025-01-15 19:49:44', '2025-01-15 19:49:44'),
(16, 'Assassin\'s Creed Valhalla', 'game-thumbnails/01JHPGQF0P9X9S912DC961V9J2.avif', 'assassins-creed-valhalla', 'PS4', 'RPG, Action, Adventure', 965345.00, 999, 'Assassin\'s Creed Valhalla is a 2020 action role-playing game developed by Ubisoft Montreal and published by Ubisoft. It is the twelfth major installment in the Assassin\'s Creed series, and the successor to 2018\'s Assassin\'s Creed Odyssey.', NULL, '2025-01-15 19:57:53', '2025-01-15 19:57:53'),
(17, 'Dead by Daylight', 'game-thumbnails/01JHPGT8XWDVGFVX2K35CF4WG7.jpg', 'dead-by-daylight', 'PS5', 'Horror', 310023.00, 999, 'Dead by Daylight is an online asymmetric multiplayer survival horror video game developed and published by Canadian studio Behaviour Interactive.', NULL, '2025-01-15 19:59:25', '2025-01-15 19:59:25'),
(18, 'Forza Horizon 5', 'game-thumbnails/01JHPGX1BXDM4H71X1Y087DDV5.webp', 'forza-horizon-5', 'Xbox', 'Racing, Adventure, Action', 981234.00, 999, 'Forza Horizon 5 is a 2021 racing video game developed by Playground Games and published by Xbox Game Studios. It is the fifth Forza Horizon title and twelfth main instalment in the Forza series. The game is set in a fictionalised representation of Mexico.', NULL, '2025-01-15 20:00:55', '2025-01-15 20:00:55'),
(19, ' Flight simulator', 'game-thumbnails/01JHPGZ7NCK4JDSQZ8HZ6VHXC8.png', 'flight-simulator', 'PS4', 'Simulation', 981234.00, 999, 'A flight simulator is a device that artificially re-creates aircraft flight and the environment in which it flies, for pilot training, design, or other purposes.', NULL, '2025-01-15 20:02:07', '2025-01-15 20:02:07'),
(20, ' Marvel Rivals', 'game-thumbnails/01JHPH1X9V4CJWC18PXR602XY8.png', 'marvel-rivals', 'PS5', 'Action, First-Person Shooter', 0.00, 999, '\nModes\nPlayable characters\nSeasonal content\nPremise\nDevelopment\nRelease and marketing\n\nPlaytests\nRelease\nTie-in media\nReception\n\nAccolades\nCensorship\nNotes\nReferences\nExternal links\nMarvel Rivals\n\nArticle\nTalk\nRead\nEdit\nView history\n\nTools\nAppearance hide\nText\n\nSmall\n\nStandard\n\nLarge\nWidth\n\nStandard\n\nWide\nColor (beta)\n\nAutomatic\n\nLight\n\nDark\nFrom Wikipedia, the free encyclopedia\nMarvel Rivals\n\nDeveloper(s)	NetEase Games\nPublisher(s)	NetEase Games\nDirector(s)	Guangyun Chen[1][2]\nProducer(s)	Stephen Wu[3][4]\nDesigner(s)	Aden[5]\nZhiyong[5]\nArtist(s)	Dino Ma[6]\nWriter(s)	Jinghua Duan[6]\nDonger Gan[6]\nMarc Sumerak[7]\nComposer(s)	Masahiro Aoki[8]\nEngine	Unreal Engine 5[9]\nPlatform(s)	PlayStation 5[10]\nWindows\nXbox Series X/S[11]\nRelease	December 6, 2024\nGenre(s)	Hero shooter\nMode(s)	Multiplayer\nMarvel Rivals (Chinese: 漫威争锋; pinyin: Mànwēi Zhēngfēng) is a 2024 third-person hero shooter video game developed and published by Chinese developer NetEase Games in collaboration with Marvel Games. Th', NULL, '2025-01-15 20:03:35', '2025-01-15 20:03:35'),
(21, 'Civilization V', 'game-thumbnails/01JHPH41KWH9H3717G0ZD4ARWZ.jpg', 'civilization-v', 'PC', 'Strategy', 490512.00, 999, 'Sid Meier\'s Civilization V is a 4X turn-based strategy video game in the Civilization series developed by Firaxis Games. The game was released for Windows in September 2010, for Mac OS X on November 23, 2010, and for Linux on June 10, 2014.', NULL, '2025-01-15 20:04:45', '2025-01-15 20:04:45'),
(22, 'Farming Simulator 22', 'game-thumbnails/01JHPHDAH3GFC8CYZDKNPHAYGY.jpg', 'farming-simulator-22', 'PS4', 'Simulation', 490232.00, 999, 'Create your farm and let the good times grow! Harvest crops, tend to animals, manage productions, and take on seasonal challenges.', NULL, '2025-01-15 20:09:49', '2025-01-15 20:09:49'),
(23, 'Need for Speed Heat', 'game-thumbnails/01JHPHFGPD4T6J9YD6QHBR6VQM.jpg', 'need-for-speed-heat', 'PS4', 'Racing, Adventure, Open-World', 989213.00, 999, 'Need for Speed Heat is a 2019 racing video game developed by Ghost Games and published by Electronic Arts for PlayStation 4, Windows, and Xbox One. It is the twenty-fourth installment in the Need for Speed series and commemorates the series\' 25th anniversary.', NULL, '2025-01-15 20:11:01', '2025-01-15 20:11:01'),
(24, 'Hogwarts Legacy', 'game-thumbnails/01JHPHJ1JZGRBSAR23T4AKGV1H.avif', 'hogwarts-legacy', 'PS4', 'Strategy, Adventure', 934533.00, 999, 'Hogwarts Legacy is a 2023 action role-playing game developed by Avalanche Software and published by Warner Bros. Games under its Portkey Games label. It is part of the Wizarding World franchise, taking place a century prior to the Harry Potter novels.', NULL, '2025-01-15 20:12:24', '2025-01-15 20:12:24'),
(25, 'Dota 2', 'game-thumbnails/01JHPHMZG1EC5X2Q3FDBEWR25A.jpg', 'dota-2', 'PC', 'MOBA, Strategy, Action, RPG', 0.00, 999, 'Dota 2 is a 2013 multiplayer online battle arena video game by Valve. The game is a sequel to Defense of the Ancients, a community-created mod for Blizzard Entertainment\'s Warcraft III: Reign of Chaos.', NULL, '2025-01-15 20:14:00', '2025-01-15 20:14:00'),
(26, 'Phasmophobia', 'game-thumbnails/01JHPHQXV1377PR63WW7WR9QZ3.jpg', 'phasmophobia', 'PC', 'Horror, Adventure', 327866.00, 999, 'Phasmophobia is a paranormal horror game by British indie game studio Kinetic Games. The game became available in early access for Microsoft Windows with virtual reality support in September 2020.', NULL, '2025-01-15 20:15:36', '2025-01-15 20:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `game_images`
--

CREATE TABLE `game_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_images`
--

INSERT INTO `game_images` (`id`, `game_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'game-images/01JHJ3HDDQZBDGB0R83V90DADE.jpg', '2025-01-14 02:50:25', '2025-01-14 02:50:25'),
(2, 2, 'game-images/01JHJ3M293YN0FXDFNMPKJ7Q3W.jpg', '2025-01-14 02:51:52', '2025-01-14 02:51:52'),
(3, 3, 'game-images/01JHJ3Q3C3SMN842F0J1B2N6SG.avif', '2025-01-14 02:53:32', '2025-01-14 02:53:32'),
(4, 4, 'game-images/01JHJ3TG5XWH8MES5E0SH78S74.jpg', '2025-01-14 02:55:23', '2025-01-14 02:55:23'),
(5, 5, 'game-images/01JHJ3ZXNAMPMW3KX8GBVW8R9D.jpg', '2025-01-14 02:58:21', '2025-01-14 02:58:21'),
(6, 6, 'game-images/01JHJ43P5ZADCCK7V028VGV6SJ.jpg', '2025-01-14 03:00:24', '2025-01-14 03:00:24'),
(7, 7, 'game-images/01JHJ4ANZ2GHXETHFS5P47G9TM.jpg', '2025-01-14 03:04:13', '2025-01-14 03:04:13'),
(8, 8, 'game-images/01JHJ4D8VZXK0QZGBVXM3NFZGT.jpg', '2025-01-14 03:05:38', '2025-01-14 03:05:38'),
(9, 9, 'game-images/01JHJ4J6RQ1TN2BJ18QQ1GYF39.jpg', '2025-01-14 03:08:20', '2025-01-14 03:08:20'),
(10, 10, 'game-images/01JHJ51TG3D8BMNWDNG1HY1K39.webp', '2025-01-14 03:16:51', '2025-01-14 03:16:51'),
(11, 11, 'game-images/01JHJ54XNSMNY5HVRD3JAC0Q4B.jpg', '2025-01-14 03:18:33', '2025-01-14 03:18:33'),
(12, 12, 'game-images/01JHJ5AAZX5N20W2MC3C9MBQ0D.jpg', '2025-01-14 03:21:31', '2025-01-14 03:21:31'),
(13, 13, 'game-images/01JHJ5GHXNKQ86XJEE5Q8APPSJ.avif', '2025-01-14 03:24:54', '2025-01-14 03:24:54'),
(14, 14, 'game-images/01JHJ5JX7A2GSTAZC4EZJ1A2Z9.jpg', '2025-01-14 03:26:11', '2025-01-14 03:26:11'),
(15, 15, 'game-images/01JHPG8HR5889KWB8NQEXYHQHW.png', '2025-01-15 19:49:44', '2025-01-15 19:49:44'),
(16, 16, 'game-images/01JHPGQF0ZPMTQZ7VE2R3M0ZS3.avif', '2025-01-15 19:57:53', '2025-01-15 19:57:53'),
(17, 17, 'game-images/01JHPGT8Y62P1A44K0VWA94E1N.jpg', '2025-01-15 19:59:25', '2025-01-15 19:59:25'),
(18, 18, 'game-images/01JHPGX1C6PGHSTZGKMKRAQQFD.webp', '2025-01-15 20:00:55', '2025-01-15 20:00:55'),
(19, 19, 'game-images/01JHPGZ7NNNDSKVY3V112J1S7P.png', '2025-01-15 20:02:07', '2025-01-15 20:02:07'),
(20, 20, 'game-images/01JHPH1XA40V7KR2N0W24A1B0J.png', '2025-01-15 20:03:35', '2025-01-15 20:03:35'),
(21, 21, 'game-images/01JHPH41M5R9ZTMWX1K6PR89MW.jpg', '2025-01-15 20:04:45', '2025-01-15 20:04:45'),
(22, 22, 'game-images/01JHPHDAHD3WBT11S2FMXQ911S.jpg', '2025-01-15 20:09:49', '2025-01-15 20:09:49'),
(23, 23, 'game-images/01JHPHFGPNVRNXP4R9TBCV4AXN.jpg', '2025-01-15 20:11:01', '2025-01-15 20:11:01'),
(24, 24, 'game-images/01JHPHJ1K7NBSFEB8S3H2DZV8B.avif', '2025-01-15 20:12:24', '2025-01-15 20:12:24'),
(25, 25, 'game-images/01JHPHMZG9W63QWKPNVVMQ3G90.jpg', '2025-01-15 20:14:00', '2025-01-15 20:14:00'),
(26, 26, 'game-images/01JHPHQXV933TJ000NSEGCHR8E.jpg', '2025-01-15 20:15:36', '2025-01-15 20:15:36');

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
(4, '2025_01_11_024204_create_games_table', 1),
(5, '2025_01_11_024214_create_game_images_table', 1),
(6, '2025_01_11_024221_create_orders_table', 1),
(7, '2025_01_11_024240_create_order_details_table', 1),
(8, '2025_01_11_033434_create_personal_access_tokens_table', 1),
(9, '2025_01_15_104026_create_wishlists_table', 2),
(10, '2025_01_15_142407_create_carts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','canceled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 899999.00, 'completed', '2025-01-15 10:53:01', '2025-01-15 10:53:01', NULL),
(3, 3, 649999.00, 'completed', '2025-01-15 10:55:33', '2025-01-15 10:55:33', NULL),
(4, 4, 899999.00, 'pending', '2025-01-15 10:57:31', '2025-01-15 10:57:31', NULL),
(5, 6, 1579998.00, 'completed', '2025-01-15 18:46:09', '2025-01-15 18:46:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `game_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 2, 5, 1, 0.00, '2025-01-15 10:53:01', '2025-01-15 10:53:01'),
(3, 2, 1, 1, 899999.00, '2025-01-15 10:53:01', '2025-01-15 10:53:01'),
(4, 3, 3, 1, 649999.00, '2025-01-15 10:55:33', '2025-01-15 10:55:33'),
(5, 4, 1, 1, 899999.00, '2025-01-15 10:57:57', '2025-01-15 10:57:57'),
(6, 5, 7, 1, 929999.00, '2025-01-15 18:46:09', '2025-01-15 18:46:09'),
(7, 5, 3, 1, 649999.00, '2025-01-15 18:46:09', '2025-01-15 18:46:09');

--
-- Triggers `order_details`
--
DELIMITER $$
CREATE TRIGGER `kurangistok` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
    -- Kurangi stok game berdasarkan game_id dan quantity
    UPDATE games
    SET stock = stock - NEW.quantity
    WHERE id = NEW.game_id;

    -- Tambahkan validasi jika stok menjadi negatif
    IF (SELECT stock FROM games WHERE id = NEW.game_id) < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stok game tidak mencukupi!';
    END IF;
END
$$
DELIMITER ;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', '1a683c0c8ccfb09526f871d137901c276abffb6a28ffd29df71eb0e2b86e709d', '[\"*\"]', '2025-01-15 06:13:18', NULL, '2025-01-15 06:12:35', '2025-01-15 06:13:18'),
(2, 'App\\Models\\User', 3, 'auth_token', '2f04ba8d5cd1a7b88f4506cc80de801c788d5d4619a119267ae26639b65db73b', '[\"*\"]', '2025-01-15 06:15:22', NULL, '2025-01-15 06:15:07', '2025-01-15 06:15:22'),
(3, 'App\\Models\\User', 2, 'auth_token', '16548ea99fd2a37f972120c6076b301a3126ccba45c44722e1ef02f528f43d77', '[\"*\"]', '2025-01-15 06:26:06', NULL, '2025-01-15 06:15:43', '2025-01-15 06:26:06'),
(4, 'App\\Models\\User', 4, 'auth_token', '3f65b720d5ee76304d8afbf4fab34d740895ba9c5ec7da6548f3de9b1b432f52', '[\"*\"]', '2025-01-15 06:30:24', NULL, '2025-01-15 06:29:22', '2025-01-15 06:30:24'),
(5, 'App\\Models\\User', 3, 'auth_token', '7b6254814c1c2d1b7e9e37a10bff27f505d79d4acb2179cfa8e61752ef7ad7d9', '[\"*\"]', '2025-01-15 09:38:28', NULL, '2025-01-15 06:34:15', '2025-01-15 09:38:28'),
(6, 'App\\Models\\User', 2, 'auth_token', '885052e9547ac122b128fc25b5dbe196392a541242f2ec5bb27586e7f9a1e07b', '[\"*\"]', '2025-01-15 09:44:01', NULL, '2025-01-15 09:39:58', '2025-01-15 09:44:01'),
(7, 'App\\Models\\User', 3, 'auth_token', '0c1689fffc4fb9a56a8e6575c792796c675e7ba805097f95b660944daa0ccf93', '[\"*\"]', '2025-01-15 10:44:10', NULL, '2025-01-15 09:44:14', '2025-01-15 10:44:10'),
(8, 'App\\Models\\User', 3, 'auth_token', '942a43a957eaf86d2940f127acf3e6d7c6fe3920d2c560e06b3c2034bcd4de4d', '[\"*\"]', '2025-01-15 11:30:11', NULL, '2025-01-15 10:44:22', '2025-01-15 11:30:11'),
(9, 'App\\Models\\User', 4, 'auth_token', '19a7b4a76855020e9c7fb805dd477d866bc684d181595b624d4ab4f813e95c11', '[\"*\"]', '2025-01-15 16:55:21', NULL, '2025-01-15 11:30:24', '2025-01-15 16:55:21'),
(10, 'App\\Models\\User', 4, 'auth_token', 'd0b4215a913c9e94e24007d8f6a9048bff657bff420f258fcdddb9a7d00dc78c', '[\"*\"]', '2025-01-15 17:27:56', NULL, '2025-01-15 16:59:27', '2025-01-15 17:27:56'),
(11, 'App\\Models\\User', 4, 'auth_token', 'b066808ffeb8e0e71c00dca66b3cc0ea284f4609971668d0dea7e7be69d75ef1', '[\"*\"]', NULL, NULL, '2025-01-15 17:28:38', '2025-01-15 17:28:38'),
(12, 'App\\Models\\User', 3, 'auth_token', 'c825ca6bb03ad28878d374bc85249f87a6489506b4eb84ea7cc4ff795b1b4956', '[\"*\"]', NULL, NULL, '2025-01-15 17:30:08', '2025-01-15 17:30:08'),
(13, 'App\\Models\\User', 4, 'auth_token', 'd0e8f8972c976b61dd631ba9fcf29525cdbc9a1ad942822375b494d203a92d64', '[\"*\"]', NULL, NULL, '2025-01-15 17:40:23', '2025-01-15 17:40:23'),
(14, 'App\\Models\\User', 4, 'auth_token', 'e2fd3123b58b8c5bda0d9193d68e30f4debb4c543e31e8928ebd5834d6659778', '[\"*\"]', '2025-01-15 18:25:39', NULL, '2025-01-15 17:47:15', '2025-01-15 18:25:39'),
(15, 'App\\Models\\User', 6, 'auth_token', '12a169a72e277886b7d55e354043fd692c6c50b09cd0392bbebbee480c6cbeba', '[\"*\"]', '2025-01-15 18:40:03', NULL, '2025-01-15 18:26:06', '2025-01-15 18:40:03'),
(16, 'App\\Models\\User', 6, 'auth_token', '63cb159b4a72d49c479b9a4aab36684658ddc9e811ac57027027a6b40a219f6e', '[\"*\"]', '2025-01-15 19:20:30', NULL, '2025-01-15 18:41:00', '2025-01-15 19:20:30');

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
('vgCt9WawHwaFofEcUeyAKvrt4lluDeBSFSfo1y6w', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT2duWDBwSml5MnMwb1BXVWlJOWhUdkFmVjJrQ0NjOEFlalp4c214ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9nYW1lLWltYWdlcy8wMUpIUEhRWFY5MzNUSjAwME5TRUdDSFI4RS5qcGciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkZjNNa2hkeTNXTVVGZWl1dGIuY1F4T1Q1ZnhxN3ppN1BpZGJKWURtOWMwUXNEUzg4N2NiMG0iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fXM6NjoidGFibGVzIjthOjE6e3M6MTg6Ikxpc3RHYW1lc19wZXJfcGFnZSI7czozOiJhbGwiO319', 1736997445);

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@admin.com', NULL, '$2y$12$f3Mkhdy3WMUFeiutb.cQxOT5fxq7zi7PidbJYDm9c0QsDS887cb0m', NULL, '2025-01-15 02:45:17', '2025-01-15 02:45:17'),
(3, 'tes', 'tes@gmail.com', NULL, '$2y$12$w5FIlzS96GGL3iyneVHTc.Ufstmwqgp.BjlxKVj1jx1FWpdxUMhdm', NULL, '2025-01-15 03:09:38', '2025-01-15 03:09:38'),
(4, 'Joseph', 'jos@gmail.com', NULL, '$2y$12$B7AKt.Ghq37XP/q24mZYYeVax9YaI.uyY2XCj4kzFOD3an/J2RA9m', NULL, '2025-01-15 06:28:14', '2025-01-15 06:28:14'),
(6, 'Dhafa', 'dhafa@gmail.com', NULL, '$2y$12$6eQadnKbEANpJ69YHrfGl.RhXjQVSYsO3JMjfEXB7nF6to4FPXUEC', NULL, '2025-01-15 18:18:52', '2025-01-15 18:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `game_id`, `created_at`, `updated_at`) VALUES
(3, 2, 3, '2025-01-15 06:16:39', '2025-01-15 06:16:39'),
(4, 4, 5, '2025-01-15 06:29:48', '2025-01-15 06:29:48'),
(11, 6, 1, '2025-01-15 18:43:53', '2025-01-15 18:43:53'),
(12, 6, 13, '2025-01-15 18:44:22', '2025-01-15 18:44:22');

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_user_id_game_id_unique` (`user_id`,`game_id`),
  ADD KEY `carts_game_id_foreign` (`game_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_slug_unique` (`slug`);

--
-- Indexes for table `game_images`
--
ALTER TABLE `game_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_images_game_id_foreign` (`game_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_game_id_foreign` (`game_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_user_id_game_id_unique` (`user_id`,`game_id`),
  ADD KEY `wishlists_game_id_foreign` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `game_images`
--
ALTER TABLE `game_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_images`
--
ALTER TABLE `game_images`
  ADD CONSTRAINT `game_images_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
