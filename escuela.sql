-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2023 a las 00:30:45
-- Versión del servidor: 10.4.24-MariaDB-log
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellidomat` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellidopat` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_23_024803_adddocente', 1),
(6, '2023_02_24_020744_hola', 1),
(7, '2023_03_02_024852_alumnos_migracion', 1),
(8, '2023_03_14_201351_create_trabajadors_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadors`
--

CREATE TABLE `trabajadors` (
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoPaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoMaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trabajadors`
--

INSERT INTO `trabajadors` (`nombre`, `apellidoPaterno`, `apellidoMaterno`, `userId`, `created_at`, `updated_at`) VALUES
('5', 'Delia Boyle', 'Brycen Oberbrunner', 'Prof. Enoch Heaney', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Orville Lind', 'Dr. Mervin Conn', 'Prof. Nathanael Stiedemann', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('7', 'Mr. Wilmer Smitham IV', 'Walter Kessler', 'Mrs. Aaliyah Mohr II', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Mr. Elmer Kuhn III', 'Burdette Roob', 'Tommie Schulist', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Lonie Gislason', 'Edmund Kovacek', 'Ova Smith', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Miss Jane Kunde', 'Ms. Marcelina Stroman', 'Dr. Tevin Kirlin', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Mr. Jamie Padberg Jr.', 'Mr. Tobin Grady', 'Laron Kuvalis', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Ms. Felicita Walsh PhD', 'Elenora Schmidt V', 'Dr. Gianni Altenwerth', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Kylee Corwin', 'Merritt Buckridge V', 'Dr. Max Medhurst Sr.', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Denis McKenzie', 'Stuart Pfannerstill', 'Isabelle Rippin', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Norris Pacocha DVM', 'Keven Zieme', 'Prof. Evans Hamill', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Lavada Stroman DVM', 'Prof. Nathan DuBuque', 'Prof. Harold Kerluke', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Earl McDermott IV', 'Eino Rohan', 'Grayce O\'Keefe', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Jerrold Kuhn MD', 'Cathrine Strosin', 'David Mohr', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Dr. Una Rice', 'Lula Rath', 'Jacques Russel', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Alexis Emard', 'Porter Borer', 'Kali Spinka', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Arden Keebler', 'Lula Homenick', 'Ms. Salma Hahn IV', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Mariela Jones', 'Eliseo Mills', 'Ms. Izabella Weissnat MD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Murl Crist', 'Dr. Bryon Fay Sr.', 'Hester Block', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Emily Barrows', 'Malcolm O\'Reilly', 'Gail Hettinger PhD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Prof. Shanie Ritchie', 'Ernest Pollich Sr.', 'Nicholaus Ernser', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Prof. Grover Block III', 'Guillermo Cronin', 'Jerry Quitzon Sr.', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Grayce Reichel', 'Valentina Zboncak II', 'Charlotte Bahringer', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Mr. Hazle Terry', 'Robert Bins', 'Dr. Dorris Zboncak III', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Casper Torp Jr.', 'Myah Halvorson', 'Nettie Jakubowski', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Prof. Edgardo Pacocha', 'Ezekiel Goyette', 'Christa Kiehn', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Miss Olga Carroll II', 'Woodrow Dicki', 'Prof. Blanca Sauer', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('7', 'Katlyn Feil Sr.', 'Ophelia Johns', 'Tyler Kassulke', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Kolby Walker', 'Rosalyn Nicolas III', 'Gaetano Rice', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Prof. Regan Kohler IV', 'Miss Roxane Quigley DDS', 'Wiley Kilback', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Oswaldo O\'Conner', 'Scotty Cummerata DDS', 'Naomi Dickinson', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Marta Barton', 'Casandra Koss', 'Ms. Dora Spinka V', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Ralph Glover', 'Cloyd Boyer', 'Prof. Candice Mann III', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Coralie Jenkins', 'Diana Windler', 'Dr. Holden Crooks DDS', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Mrs. Cara O\'Hara', 'Luigi West', 'Mrs. Lela Koelpin DVM', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Tiara Stark', 'Kurt Pacocha II', 'Jerome Rath', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Jena Bechtelar', 'Mrs. Elza Beier', 'Mr. Ari Trantow III', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Dr. Lourdes Greenfelder DDS', 'Herta Gislason', 'Grayce Bartell', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Ottilie Hintz', 'Prof. Bettie Shields III', 'Hannah McDermott', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Dr. Eudora Rohan II', 'Anibal Brakus IV', 'Eladio Von DDS', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Julien McDermott', 'Lavina Emmerich', 'Terrance Padberg', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Prof. Cristopher Schuster PhD', 'Mr. Walton Mueller', 'Kasandra Gleichner', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Monty Collier', 'Prof. Eulalia Smith I', 'Aiden Legros', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Jack Gislason', 'Mr. Joaquin Ruecker Sr.', 'Lucienne Kihn', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Roel Krajcik', 'Federico Deckow Jr.', 'Prof. Tamara Purdy', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Madie Bins', 'Mr. Ricky Schimmel', 'Prof. Germaine Waelchi', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Palma Nienow IV', 'Doug Fritsch', 'Judah Bruen', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Fanny Howell', 'Evelyn Gerhold', 'Marilou Bernhard', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Arden Swaniawski', 'Prof. Hermina Schiller III', 'Ms. Destini Mitchell DVM', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Travon Bailey', 'Donavon Schmitt', 'Alessandra Luettgen', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'April Dickinson I', 'Mr. Merle Cronin', 'Dayton Rippin Sr.', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Desmond Swift', 'Lucile Fay', 'Shanon Green', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Coy Dicki PhD', 'Miss Sister Jacobson PhD', 'Gwen Stark', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Melany Gleichner', 'Jeffery Monahan', 'Cleta Kuhn', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Dr. Adrain Rodriguez PhD', 'Hannah Howell', 'Dr. Nia Johns II', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Prof. Palma Turcotte', 'Flo Lowe', 'Mr. Gabriel Schaden', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('7', 'Carlo Abernathy MD', 'Francisca Raynor', 'Dr. Caleb Swift PhD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Mckenzie Muller', 'Tracy Rau', 'Dr. Abner Murphy', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Dandre Zulauf', 'Jed Simonis DVM', 'Miss Ally Paucek III', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Gerald Rippin', 'Yvonne Gorczany', 'Reilly Zieme', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Dr. Holly Funk PhD', 'Prof. Daron Jacobs Sr.', 'Porter O\'Hara', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Gage Monahan', 'Ms. Nakia Kling', 'Harrison Tremblay', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Prof. Timmy Schmitt', 'Anjali Terry', 'Jayce Rutherford', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Palma Koelpin', 'Victoria Kessler', 'Mr. Cleveland Crist Jr.', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Mr. Alexander Predovic V', 'Miss Aniyah Cartwright PhD', 'Dr. Danielle Bogan', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Dr. Rolando Torphy', 'Lorine Stark', 'Nicolas Harvey', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Prof. Ernest Terry V', 'Deborah Rogahn', 'Evans Baumbach', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Naomi Quigley', 'Jacinthe Rodriguez', 'Clay Wyman', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Evans Wolf', 'Darryl Wuckert', 'Miss Valentine Wehner Jr.', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Cortney Donnelly', 'Mylene Friesen', 'Ms. Rachelle Kub II', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Vickie Moore', 'Lou Schulist', 'Jaqueline Cronin DDS', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Herbert Green', 'Eleazar Rogahn', 'Mr. Greyson Kuhlman', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Dr. Myron Wilderman PhD', 'Jaquelin Corwin', 'Jett Metz Sr.', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Dejuan Crona V', 'Philip Kub', 'Prof. Nash Kunde', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Mrs. Arlene Thiel', 'Dr. German Murphy Sr.', 'Prof. Ephraim Kunze V', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Roman Ryan Jr.', 'Magnolia Cassin', 'Andrew Schoen', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Jaylon Lind', 'Loma Nikolaus', 'Berry Kunde', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('7', 'Jammie Rolfson', 'Clementine Altenwerth', 'Rosendo Runolfsson', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Max Brekke MD', 'Carley Graham', 'Dedrick Osinski', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Dr. Birdie Heller', 'Mr. Newell Champlin Sr.', 'Scarlett Rutherford IV', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Eve Howe', 'Gloria Lehner', 'Misty Wyman', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('5', 'Mrs. Daisy Hodkiewicz Sr.', 'Dereck Lueilwitz', 'Florencio Goyette', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Jo Terry Jr.', 'Guadalupe Beahan III', 'Nico Reilly', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Aidan Bins', 'Alexis Stokes', 'Odell Carroll', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('6', 'Cletus Waelchi', 'Selina Rutherford', 'Dr. Matilda Ortiz MD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Rebeca Cremin', 'Jonatan Huel IV', 'Terrence Ledner', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Rahsaan Wyman', 'Mr. Rodrick Veum', 'Ocie Skiles', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Ellie Haley', 'Marianne Luettgen', 'Sim Morar', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Mr. Roel Bins DVM', 'Charlie Wyman', 'Queen Eichmann MD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Lydia Corkery', 'Mrs. Flavie Stokes PhD', 'Laura Kilback', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Ms. Kitty Hudson', 'Brigitte Wyman', 'Rodrick Schimmel', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Anais Quigley', 'Laurie Mertz', 'Beatrice Denesik', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Noemie Morar I', 'Prof. Daija Davis DDS', 'Chaya Yost', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('10', 'Miss Sincere Rosenbaum', 'Jerry Herman', 'Dr. Colton Hyatt MD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('8', 'Jerry Gislason', 'Ezra Cremin III', 'Dr. Christop Nitzsche MD', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('2', 'Annie Bergnaum', 'Quinton Rice', 'Boyd Cronin', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('3', 'Naomi Lynch', 'Queen Schuster IV', 'Joseph Luettgen', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('4', 'Prof. Haskell Schmidt DDS', 'Yesenia Fadel', 'Amelie VonRueden', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('1', 'Cade Gusikowski', 'Maybelle Hackett', 'Clint Kirlin', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
('9', 'Leo Ondricka MD', 'Dahlia Hayes', 'Amaya Hagenes III', '2023-03-15 08:59:33', '2023-03-15 08:59:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pansy Fritsch', 'creola.cormier@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YweKsHdgc3', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(2, 'Rosalinda Jaskolski', 'johnathan20@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cT6n2yeqDg', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(3, 'Alycia Runolfsdottir', 'baylee.mclaughlin@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cixbFKBRP0', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(4, 'Lucie Huel Jr.', 'orville.beahan@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7PA8VMNQJ', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(5, 'Dr. Fannie Veum', 'nitzsche.malachi@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZEhZ7JrDP3', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(6, 'Bella Quigley', 'ukrajcik@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zEakLwNRsK', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(7, 'Tatum Botsford', 'jaron.reichert@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RMI35LtDZe', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(8, 'Emmitt Buckridge', 'meredith.mccullough@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YpyZGHrCVs', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(9, 'Leland Carter PhD', 'xwalsh@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HJXk8WH6Jk', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(10, 'Miss Yazmin Douglas DVM', 'mjohnson@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8zzDeObVIJ', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(11, 'Dr. Crystel Jenkins', 'bria.stark@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q2AxzpEKEt', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(12, 'Celestino Abernathy', 'metz.ramon@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2NL29i7IkN', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(13, 'Howard Batz', 'jmoore@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8DZPGL1oCl', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(14, 'Christian Kessler', 'cgleichner@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Meb3f6fOOQ', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(15, 'Prof. Shaun Renner DDS', 'keebler.penelope@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vloyMRO435', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(16, 'Ms. Margaretta Carroll III', 'gaylord.gayle@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ui1qJ2aUXt', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(17, 'Barney Macejkovic', 'heller.karley@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IfN6tRNcg8', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(18, 'Lelah Leuschke Sr.', 'huel.haskell@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ac82giP4BH', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(19, 'Shyann Kassulke', 'dominique51@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7bora3LN4g', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(20, 'Tristin Mitchell', 'lesly75@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wFshsWVDGL', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(21, 'Vernie Jakubowski II', 'bschulist@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eGugVyAE2L', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(22, 'Prof. Kaia Hoppe', 'runte.amalia@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bq4YazwCV6', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(23, 'Mollie Bogisich', 'skovacek@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SJ2TWzsQ4o', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(24, 'Destiney Aufderhar', 'ihickle@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z6Tifcwo3T', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(25, 'Zoe Vandervort', 'garrick75@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hte8UpKNXX', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(26, 'Danny Vandervort II', 'else.beahan@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aTeRLoMXIj', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(27, 'Noemi Reilly', 'harvey67@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XJKNhqevWJ', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(28, 'Mr. Spencer Brekke', 'qkuhn@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'paWSGgUufA', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(29, 'Cristopher Keeling', 'mohr.lexi@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o9cwpaWP5A', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(30, 'Mrs. Zena Wintheiser IV', 'monserrat.rolfson@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WTvdMVAtGi', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(31, 'Dr. Alexis Lindgren', 'qkshlerin@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'epnoVbFZtx', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(32, 'Prof. Dalton Kemmer PhD', 'brianne.wuckert@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'boxOcPJUSf', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(33, 'Laurence Funk', 'larson.jacky@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3mR4mxzSYz', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(34, 'Raphael Prosacco V', 'guillermo.hagenes@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XUfbjwKGWl', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(35, 'Ms. Kiana Lubowitz MD', 'amara.hahn@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7JEQGEr2if', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(36, 'Cassandra Wintheiser', 'justice71@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JoNIrKYnLQ', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(37, 'Dr. Pietro Schneider', 'cummings.amina@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YB9rvYrTaR', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(38, 'Yasmine Treutel', 'vbruen@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DNorpZzc8i', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(39, 'Terrell Oberbrunner', 'kturcotte@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vKKG9ceQRn', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(40, 'Dr. Ursula Hayes DDS', 'arely37@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hhjCmAAjhd', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(41, 'Mrs. Emmalee Shanahan Sr.', 'oschultz@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9jxnS1IDAp', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(42, 'Queenie Tremblay', 'daniel.kaitlyn@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rty9fV0gdA', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(43, 'Miss Dandre Hill Jr.', 'pschimmel@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xVtGseGDx9', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(44, 'Mr. Pete Hill', 'xsanford@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IhIEGvq7ua', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(45, 'Lelah Emard', 'jmiller@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '210slHTiA8', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(46, 'Quincy Hintz', 'hegmann.green@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '47QTL3EHck', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(47, 'Kory Mertz', 'sawayn.emmanuelle@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6bLmQOLcmM', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(48, 'Breana Spencer', 'jfadel@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RDVUWKCEiE', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(49, 'Prof. Ardith O\'Reilly DVM', 'lschmitt@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1C22wfHTsQ', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(50, 'Ms. Ashlee Bartell Sr.', 'watsica.noah@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZsGZyCY2Gz', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(51, 'Scot Kuphal', 'whansen@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CrSnDht1Ly', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(52, 'Jedediah Greenfelder IV', 'lyla.ritchie@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mOeGMKvbQe', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(53, 'Larry Bayer Jr.', 'hcarroll@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EAtbufEyPi', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(54, 'Amari Keeling DVM', 'hodkiewicz.wendell@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j5shjWEUOa', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(55, 'Katharina Cruickshank', 'valerie16@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NfcAFojjq3', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(56, 'Ambrose Anderson', 'ngibson@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'REUXJaW5fK', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(57, 'Lea Lemke', 'tschroeder@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pLuWbIVALB', '2023-03-15 08:59:32', '2023-03-15 08:59:32'),
(58, 'Ruthie Jakubowski', 'jwuckert@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vJOhGy1VAP', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(59, 'Lura Purdy', 'agreenfelder@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rmPdgxblKz', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(60, 'Pearline Klein', 'yundt.vernie@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bg2sCr0JBh', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(61, 'Prof. Jeanette Bailey', 'joelle40@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZSlEAHyyH0', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(62, 'Shirley Hudson', 'rowe.darwin@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dyOgqKtLH0', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(63, 'Kris Maggio', 'pfeffer.buford@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lUduLAK7O0', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(64, 'Jerrell Jones', 'domingo84@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gHamfzW74z', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(65, 'Jillian Quitzon Sr.', 'oupton@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ACN4L9nQei', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(66, 'Lavon Waters DVM', 'price.trey@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wD8FfNkm0l', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(67, 'Mrs. Helene Larson', 'kuhic.kaylin@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cZ9QR3Lx6e', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(68, 'Prof. Tod McGlynn DDS', 'tdubuque@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JKFy1UhWMd', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(69, 'Dr. Rylan Kihn', 'kelley.padberg@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k4Ih3cZr6s', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(70, 'Mr. Kelley Pfannerstill', 'eileen59@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'akmX05kQBF', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(71, 'Lilly Koss', 'rortiz@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wjOIupAqCU', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(72, 'Mr. Ronaldo Olson I', 'kgreenfelder@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sF2FA5rYBi', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(73, 'Dr. Alexandra Lesch', 'donnie31@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y8lbbP6spB', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(74, 'Dr. Marco Emard', 'judah64@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMFEMZHLJs', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(75, 'Prof. Maryjane Christiansen', 'melany39@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2AzZlM3Lwc', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(76, 'Mariam Braun', 'barton.eleazar@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RkfvUAGO69', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(77, 'Emil Huels', 'irwin41@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yksiQbWgkV', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(78, 'Michael Johns', 'vbatz@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '80aK6QXiL5', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(79, 'Mrs. Lavada Bartoletti', 'rhea.herzog@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zatUcfYwFB', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(80, 'Mr. Houston McLaughlin V', 'ndavis@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5lT7NpNu2D', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(81, 'Hanna Mitchell', 'gruecker@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LVETpvonaW', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(82, 'Mrs. Cara Rogahn V', 'jberge@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G8yP7ZUorl', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(83, 'Dagmar Schmitt PhD', 'courtney.kovacek@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dnzO72CC9X', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(84, 'Ms. Kirsten Gusikowski', 'oaufderhar@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ozomryMRM', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(85, 'Nickolas Wolf', 'beverly53@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B4IMxnmTrQ', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(86, 'Norbert Cruickshank', 'bridgette.hickle@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ho7dCBw4OH', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(87, 'Ms. Cynthia Predovic', 'schiller.rocio@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TagSqH1y9e', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(88, 'Gennaro Christiansen PhD', 'crosenbaum@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eLHqbsI7u0', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(89, 'Pink Flatley', 'mruecker@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BbKuOJcDDJ', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(90, 'Mrs. Beverly Nikolaus V', 'johnson.brando@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5UWdno63wm', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(91, 'Miss Lillian Grant IV', 'kaitlin94@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q3YYvkABUu', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(92, 'Christopher Russel', 'jbalistreri@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EzQ5SHR9qy', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(93, 'Dr. Muhammad Heller Sr.', 'wolff.velma@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PF6pwsungt', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(94, 'Adeline Nader Jr.', 'zmraz@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '29MlQu9F7V', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(95, 'Ulises Spencer DVM', 'flossie97@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mCZU6Tgzj0', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(96, 'Rosario Kreiger', 'shanie53@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hYwEcVjl1u', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(97, 'Dariana Weissnat', 'hintz.richard@example.net', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uXpitYT2x2', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(98, 'Dr. Jamarcus Koelpin', 'akessler@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H1wGvU0vTE', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(99, 'Isac King', 'sierra57@example.com', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y1mAAQOnK2', '2023-03-15 08:59:33', '2023-03-15 08:59:33'),
(100, 'Wilton Kuhlman', 'rhett.rippin@example.org', '2023-03-15 08:59:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tdaebnrY2N', '2023-03-15 08:59:33', '2023-03-15 08:59:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
