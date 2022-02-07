-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-01-2022 a las 10:34:49
-- Versión del servidor: 5.7.33-log-cll-lve
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iexinst1_appquiniela`
--
CREATE DATABASE IF NOT EXISTS `aginfor1_appqiniela` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `aginfor1_appqiniela`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `escudo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_liga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `escudo`, `estadio`, `id_liga`, `created_at`, `updated_at`) VALUES
(1, 'Cruz Azul', '', 'Estadio Azteca', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(2, 'America', '', 'Estadio Azteca', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(3, 'Puebla', '', 'Estadio Cuauhtémoc', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(4, 'Monterrey', '', 'Estadio BBVA', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(5, 'Santos', '', 'Estadio TSM Corona', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(6, 'Leon', '', 'Estadio Nou Camp', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(7, 'Atlas', '', 'Estadio Jalisco', 1, '2021-05-27 18:53:13', '2021-05-27 18:53:13'),
(8, 'Pachuca', '', 'Estadio Hidalgo', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(9, 'Guadalajara', '', 'Estadio AKRON', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(10, 'Tigres', '', 'Estadio Universitario', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(11, 'Toluca', '', 'Estadio Nemesio Diez', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(12, 'Queretaro', '', 'Estadio La Corregidora', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(13, 'Mazatlan', '', 'Estadio Mazatlán', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(14, 'Xolos', '', 'Estadio Caliente', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(15, 'Pumas UNAM', '', 'Estadio Olímpico Universitario', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(16, 'Juarez FC', '', 'Estadio Olímpico Benito Juárez', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(17, 'Atletico San Luis', '', 'Estadio Alfonso Lastras Ramírez', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47'),
(18, 'Necaxa', '', 'Estadio Victoria', 1, '2021-05-27 19:55:47', '2021-05-27 19:55:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_jornada` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL,
  `id_torneo` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id`, `num_jornada`, `estatus`, `id_torneo`, `created_at`, `updated_at`) VALUES
(1, 'Jornada 1', 1, 2, '2021-05-27 20:16:06', '2021-05-27 20:16:06'),
(2, 'Jornada 2', 1, 2, '2021-05-27 20:21:20', '2021-05-27 20:21:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegojornada`
--

CREATE TABLE `juegojornada` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_equipolocal` int(11) UNSIGNED NOT NULL,
  `id_equipovisitante` int(11) UNSIGNED NOT NULL,
  `id_jornada` int(11) UNSIGNED NOT NULL,
  `fecha_juego` datetime NOT NULL,
  `estatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `juegojornada`
--

INSERT INTO `juegojornada` (`id`, `id_equipolocal`, `id_equipovisitante`, `id_jornada`, `fecha_juego`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 3, 9, 1, '2021-05-28 10:30:09', 1, '2021-05-27 20:30:09', '2021-05-27 20:30:09'),
(2, 14, 15, 1, '2021-05-29 10:31:10', 1, '2021-05-27 20:31:10', '2021-05-27 20:31:10'),
(3, 13, 18, 1, '2021-05-29 10:37:21', 1, '2021-05-27 20:37:21', '2021-05-27 20:37:21'),
(4, 7, 4, 1, '2021-05-29 10:38:03', 1, '2021-05-27 20:38:03', '2021-05-27 20:38:03'),
(5, 10, 6, 1, '2021-05-29 10:38:30', 1, '2021-05-27 20:38:30', '2021-05-27 20:38:30'),
(6, 2, 17, 1, '2021-05-29 10:39:24', 1, '2021-05-27 20:39:24', '2021-05-27 20:39:24'),
(7, 11, 12, 1, '2021-05-30 10:39:48', 1, '2021-05-27 20:39:48', '2021-05-27 20:39:48'),
(8, 5, 1, 1, '2021-05-30 10:40:17', 1, '2021-05-27 20:40:17', '2021-05-27 20:40:17'),
(9, 8, 16, 1, '2021-05-30 10:40:45', 1, '2021-05-27 20:40:45', '2021-05-27 20:40:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liga`
--

CREATE TABLE `liga` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `liga`
--

INSERT INTO `liga` (`id`, `nombre`, `pais`, `estatus`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Liga BBVA', 'Mexico', 1, '', '2021-05-27 07:31:54', '2021-05-27 07:31:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_05_26_011104_create_usuarios_table', 1),
(2, '2021_05_26_011145_create_liga_table', 1),
(3, '2021_05_26_011159_create_torneo_table', 1),
(4, '2021_05_26_011236_create_equipo_table', 1),
(5, '2021_05_26_011247_create_jornada_table', 1),
(6, '2021_05_26_011301_create_juegojornada_table', 1),
(7, '2021_05_26_011332_create_participante_table', 1),
(8, '2021_05_26_011347_create_torneo_organizado_table', 1),
(10, '2021_05_26_130935_add_estatus_to_table', 2),
(11, '2021_05_27_031230_add_id_usuario', 3),
(12, '2021_05_27_031513_add_foreign_key_torneo_table', 4),
(13, '2021_05_27_134827_add_escudoimagen_to_table', 5),
(14, '2021_05_27_151743_add_foreign_id_torneo_to_table', 6),
(15, '2021_05_27_152408_add_foreign_id_equipo_jornada_to_table', 7),
(18, '2021_06_01_190107_add_image_torneneos_organizados', 10),
(20, '2021_06_02_020208_add_foreign_uusuario_to_table_torneoorganizado', 11),
(25, '2021_05_27_153338_add_foreign_keys_to_table', 12),
(26, '2021_06_03_031731_nombreparticipante_to_pronosticoparticipante', 13),
(27, '2016_06_01_000001_create_oauth_auth_codes_table', 14),
(28, '2016_06_01_000002_create_oauth_access_tokens_table', 14),
(29, '2016_06_01_000003_create_oauth_refresh_tokens_table', 14),
(30, '2016_06_01_000004_create_oauth_clients_table', 14),
(31, '2016_06_01_000005_create_oauth_personal_access_clients_table', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante_pronostico`
--

CREATE TABLE `participante_pronostico` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_juegojornada` int(10) UNSIGNED NOT NULL,
  `id_torneoorganizado` int(10) UNSIGNED NOT NULL,
  `id_participante` int(10) UNSIGNED NOT NULL,
  `pronostico` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `total_goles` int(11) NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `participante_pronostico`
--

INSERT INTO `participante_pronostico` (`id`, `id_juegojornada`, `id_torneoorganizado`, `id_participante`, `pronostico`, `total_goles`, `estatus`) VALUES
(1, 1, 2, 1, '{\r\n  \"juego1\": {\"equipolocal\": \"3\" , \"equipovisitante\": \"9\", \"resultado\": \"E\"},\r\n  \"juego2\": {\"equipolocal\": \"14\" , \"equipovisitante\": \"15\", \"resultado\": \"G\"},\r\n  \"juego3\": {\"equipolocal\": \"13\" , \"equipovisitante\": \"18\", \"resultado\": \"E\"},\r\n  \"juego4\": {\"equipolocal\": \"7\" , \"equipovisitante\": \"4\", \"resultado\": \"P\"},\r\n  \"juego5\": {\"equipolocal\": \"10\" , \"equipovisitante\": \"6\", \"resultado\": \"P\"},\r\n  \"juego6\": {\"equipolocal\": \"2\" , \"equipovisitante\": \"17\", \"resultado\": \"G\"},\r\n  \"juego7\": {\"equipolocal\": \"11\" , \"equipovisitante\": \"12\", \"resultado\": \"G\"},\r\n  \"juego8\": {\"equipolocal\": \"5\" , \"equipovisitante\": \"1\", \"resultado\": \"E\"},\r\n  \"juego9\": {\"equipolocal\": \"8\" , \"equipovisitante\": \"16\", \"resultado\": \"P\"}\r\n}', 20, 1),
(2, 1, 5, 2, '{\r\n  \"juego1\": {\"equipolocal\": \"3\" , \"equipovisitante\": \"9\", \"resultado\": \"E\"},\r\n  \"juego2\": {\"equipolocal\": \"14\" , \"equipovisitante\": \"15\", \"resultado\": \"G\"},\r\n  \"juego3\": {\"equipolocal\": \"13\" , \"equipovisitante\": \"18\", \"resultado\": \"E\"},\r\n  \"juego4\": {\"equipolocal\": \"7\" , \"equipovisitante\": \"4\", \"resultado\": \"P\"},\r\n  \"juego5\": {\"equipolocal\": \"10\" , \"equipovisitante\": \"6\", \"resultado\": \"P\"},\r\n  \"juego6\": {\"equipolocal\": \"2\" , \"equipovisitante\": \"17\", \"resultado\": \"G\"},\r\n  \"juego7\": {\"equipolocal\": \"11\" , \"equipovisitante\": \"12\", \"resultado\": \"G\"},\r\n  \"juego8\": {\"equipolocal\": \"5\" , \"equipovisitante\": \"1\", \"resultado\": \"E\"},\r\n  \"juego9\": {\"equipolocal\": \"8\" , \"equipovisitante\": \"16\", \"resultado\": \"P\"}\r\n}', 13, 1),
(3, 1, 2, 1, '{\r\n  \"juego1\": {\"equipolocal\": \"3\" , \"equipovisitante\": \"9\", \"resultado\": \"E\"},\r\n  \"juego2\": {\"equipolocal\": \"14\" , \"equipovisitante\": \"15\", \"resultado\": \"G\"},\r\n  \"juego3\": {\"equipolocal\": \"13\" , \"equipovisitante\": \"18\", \"resultado\": \"E\"},\r\n  \"juego4\": {\"equipolocal\": \"7\" , \"equipovisitante\": \"4\", \"resultado\": \"P\"},\r\n  \"juego5\": {\"equipolocal\": \"10\" , \"equipovisitante\": \"6\", \"resultado\": \"P\"},\r\n  \"juego6\": {\"equipolocal\": \"2\" , \"equipovisitante\": \"17\", \"resultado\": \"G\"},\r\n  \"juego7\": {\"equipolocal\": \"11\" , \"equipovisitante\": \"12\", \"resultado\": \"G\"},\r\n  \"juego8\": {\"equipolocal\": \"5\" , \"equipovisitante\": \"1\", \"resultado\": \"E\"},\r\n  \"juego9\": {\"equipolocal\": \"8\" , \"equipovisitante\": \"16\", \"resultado\": \"P\"}\r\n}', 14, 1),
(4, 1, 5, 2, '{\r\n  \"juego1\": {\"equipolocal\": \"3\" , \"equipovisitante\": \"9\", \"resultado\": \"E\"},\r\n  \"juego2\": {\"equipolocal\": \"14\" , \"equipovisitante\": \"15\", \"resultado\": \"G\"},\r\n  \"juego3\": {\"equipolocal\": \"13\" , \"equipovisitante\": \"18\", \"resultado\": \"E\"},\r\n  \"juego4\": {\"equipolocal\": \"7\" , \"equipovisitante\": \"4\", \"resultado\": \"P\"},\r\n  \"juego5\": {\"equipolocal\": \"10\" , \"equipovisitante\": \"6\", \"resultado\": \"P\"},\r\n  \"juego6\": {\"equipolocal\": \"2\" , \"equipovisitante\": \"17\", \"resultado\": \"G\"},\r\n  \"juego7\": {\"equipolocal\": \"11\" , \"equipovisitante\": \"12\", \"resultado\": \"G\"},\r\n  \"juego8\": {\"equipolocal\": \"5\" , \"equipovisitante\": \"1\", \"resultado\": \"E\"},\r\n  \"juego9\": {\"equipolocal\": \"8\" , \"equipovisitante\": \"16\", \"resultado\": \"P\"}\r\n}', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pronostico_participante`
--

CREATE TABLE `pronostico_participante` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_juegojornada` int(10) UNSIGNED NOT NULL,
  `id_torneoorganizado` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `pronostico` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nombreparticipante` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_goles` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pronostico_participante`
--

INSERT INTO `pronostico_participante` (`id`, `id_juegojornada`, `id_torneoorganizado`, `id_usuario`, `pronostico`, `nombreparticipante`, `total_goles`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '{\n  \"juego1\": {\"equipolocal\": \"3\" , \"equipovisitante\": \"9\", \"resultado\": \"E\"},\n  \"juego2\": {\"equipolocal\": \"14\" , \"equipovisitante\": \"15\", \"resultado\": \"G\"},\n  \"juego3\": {\"equipolocal\": \"13\" , \"equipovisitante\": \"18\", \"resultado\": \"E\"},\n  \"juego4\": {\"equipolocal\": \"7\" , \"equipovisitante\": \"4\", \"resultado\": \"P\"},\n  \"juego5\": {\"equipolocal\": \"10\" , \"equipovisitante\": \"6\", \"resultado\": \"P\"},\n  \"juego6\": {\"equipolocal\": \"2\" , \"equipovisitante\": \"17\", \"resultado\": \"G\"},\n  \"juego7\": {\"equipolocal\": \"11\" , \"equipovisitante\": \"12\", \"resultado\": \"G\"},\n  \"juego8\": {\"equipolocal\": \"5\" , \"equipovisitante\": \"1\", \"resultado\": \"E\"},\n  \"juego9\": {\"equipolocal\": \"8\" , \"equipovisitante\": \"16\", \"resultado\": \"P\"}\n}\n', '', 15, 1, '2021-06-03 08:03:25', '2021-06-03 08:03:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneo`
--

CREATE TABLE `torneo` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `temporada` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio` year(4) NOT NULL,
  `estatus` int(11) NOT NULL,
  `id_liga` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `torneo`
--

INSERT INTO `torneo` (`id`, `nombre`, `temporada`, `anio`, `estatus`, `id_liga`, `created_at`, `updated_at`) VALUES
(2, 'Guardianes', 'Clausura', 2021, 1, 1, '2021-05-27 08:01:48', '2021-05-27 08:01:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneo_organizado`
--

CREATE TABLE `torneo_organizado` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_torneo` int(11) UNSIGNED NOT NULL,
  `id_usuario` int(11) UNSIGNED NOT NULL,
  `estatus` int(11) NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `torneo_organizado`
--

INSERT INTO `torneo_organizado` (`id`, `nombre`, `codigo`, `id_torneo`, `id_usuario`, `estatus`, `image`, `created_at`, `updated_at`) VALUES
(2, 'La oficina', 771612, 2, 2, 1, '0', '2021-05-28 01:44:40', '2021-05-28 01:44:40'),
(5, 'la empresa', 223498, 2, 1, 1, '0', '2021-05-28 01:49:47', '2021-05-28 01:49:47'),
(6, 'los chidos de gdl', 332112, 2, 1, 1, 'miimagen.jpg', '2021-06-02 07:16:48', '2021-06-02 07:16:48'),
(7, 'los perrunos', 434222, 2, 3, 1, 'sdsds.jpg', '2021-06-02 08:01:59', '2021-06-02 08:01:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `estatus`, `created_at`, `updated_at`) VALUES
(1, 'Angel Aceves', 'arag007@gmail.com', '$2y$10$khe.EyP5kcemCaWXRrHEnO9mppemcguDQonGB5ANX8CiDCCDtRmDW', 1, '2021-05-26 21:34:14', '2021-05-27 03:15:47'),
(2, 'Erika Alejandra', 'erika.alexa2912@gmail.com', '$2y$10$khe.EyP5kcemCaWXRrHEnO9mppemcguDQonGB5ANX8CiDCCDtRmDW', 1, '2021-05-27 03:22:53', '2021-05-27 03:22:53'),
(3, 'Kira kirandas', 'kira@gmail.com', '1234', 1, '2021-06-02 08:01:07', '2021-06-02 08:01:07'),
(4, 'Kira', 'kira12@gmail.com', '$2y$10$U3aqN7Xy3yDsy.kY7S1cwuEADvV5LxrQWlvv6G0q79.pF4Ap3wJma', 1, '2021-06-02 20:24:50', '2021-06-02 20:24:50'),
(5, 'Ramon Aceves', 'ramon.aceves@gmail.com', '$2y$10$oPBBUxS/osd0jCdLmHDT7evA9gFqWVUaAeROFrwVmzOa8elZmZUZq', 1, '2021-06-02 20:31:03', '2021-06-02 20:31:03'),
(6, 'arag', 'arag000@gmail.com', '$2y$10$0ZiyVHvoDlE4MeUE2rQ6x.SkZgAEsW00vSjzU.xyhqkN4mOpmrIIG', 1, '2021-06-05 09:44:55', '2021-06-05 09:44:55'),
(7, 'arag', 'aceves@gmail.com', '12345678', 1, '2021-06-06 04:08:23', '2021-06-06 04:08:23'),
(8, 'arag', 'luna@gmail.com', '$2y$10$khe.EyP5kcemCaWXRrHEnO9mppemcguDQonGB5ANX8CiDCCDtRmDW', 1, '2021-06-06 04:17:58', '2021-06-06 04:17:58'),
(9, 'ddsds', 'sddsdsd@gmail.com', '$2y$10$9h44S6cGKa8ibM69ixdRT.tgQSDQ/iGfF9zjB/R4cXmn./uK5HfSu', 1, '2021-07-07 17:02:43', '2021-07-07 17:02:43'),
(10, 'Kira', 'kira1234@gmail.com', '$2y$10$36b0049bnyvaTUBD2KzE4OkX8cXlR4/SHES4pICIBweqHc5unWsoG', 1, '2021-07-07 17:09:50', '2021-07-07 17:09:50'),
(11, 'angel', 'arag007@unisap.coop', '$2y$10$bulR6JYARqL8SEEJ/4rLue8n0/.KhqvShExLKk.udmJcCCipdZDM6', 1, '2021-08-18 16:02:40', '2021-08-18 16:02:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jornada_id_torneo_foreign` (`id_torneo`);

--
-- Indices de la tabla `juegojornada`
--
ALTER TABLE `juegojornada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `juegojornada_id_equipolocal_foreign` (`id_equipolocal`),
  ADD KEY `juegojornada_id_equipovisitante_foreign` (`id_equipovisitante`),
  ADD KEY `juegojornada_id_jornada_foreign` (`id_jornada`);

--
-- Indices de la tabla `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `participante_pronostico`
--
ALTER TABLE `participante_pronostico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participante_pronostico_id_juegojornada_foreign` (`id_juegojornada`) USING BTREE,
  ADD KEY `participante_pronostico_id_torneoorganizado_foreign` (`id_torneoorganizado`) USING BTREE,
  ADD KEY `participante_pronostico_id_participante_foreign` (`id_participante`) USING BTREE;

--
-- Indices de la tabla `pronostico_participante`
--
ALTER TABLE `pronostico_participante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pronostico_participante_id_juegojornada_foreign` (`id_juegojornada`),
  ADD KEY `pronostico_participante_id_torneoorganizado_foreign` (`id_torneoorganizado`),
  ADD KEY `pronostico_participante_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torneo_id_liga_foreign` (`id_liga`);

--
-- Indices de la tabla `torneo_organizado`
--
ALTER TABLE `torneo_organizado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `torneo_organizado_codigo_unique` (`codigo`),
  ADD KEY `torneo_organizado_id_usuario_foreign` (`id_usuario`),
  ADD KEY `torneo_organizado_id_torneo_foreign` (`id_torneo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `juegojornada`
--
ALTER TABLE `juegojornada`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `liga`
--
ALTER TABLE `liga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `participante_pronostico`
--
ALTER TABLE `participante_pronostico`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pronostico_participante`
--
ALTER TABLE `pronostico_participante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `torneo`
--
ALTER TABLE `torneo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `torneo_organizado`
--
ALTER TABLE `torneo_organizado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD CONSTRAINT `jornada_id_torneo_foreign` FOREIGN KEY (`id_torneo`) REFERENCES `torneo` (`id`);

--
-- Filtros para la tabla `juegojornada`
--
ALTER TABLE `juegojornada`
  ADD CONSTRAINT `juegojornada_id_equipolocal_foreign` FOREIGN KEY (`id_equipolocal`) REFERENCES `equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `juegojornada_id_equipovisitante_foreign` FOREIGN KEY (`id_equipovisitante`) REFERENCES `equipo` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `juegojornada_id_jornada_foreign` FOREIGN KEY (`id_jornada`) REFERENCES `jornada` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pronostico_participante`
--
ALTER TABLE `pronostico_participante`
  ADD CONSTRAINT `pronostico_participante_id_juegojornada_foreign` FOREIGN KEY (`id_juegojornada`) REFERENCES `juegojornada` (`id`),
  ADD CONSTRAINT `pronostico_participante_id_torneoorganizado_foreign` FOREIGN KEY (`id_torneoorganizado`) REFERENCES `torneo_organizado` (`id`),
  ADD CONSTRAINT `pronostico_participante_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `torneo_id_liga_foreign` FOREIGN KEY (`id_liga`) REFERENCES `liga` (`id`);

--
-- Filtros para la tabla `torneo_organizado`
--
ALTER TABLE `torneo_organizado`
  ADD CONSTRAINT `torneo_organizado_id_torneo_foreign` FOREIGN KEY (`id_torneo`) REFERENCES `torneo` (`id`),
  ADD CONSTRAINT `torneo_organizado_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
