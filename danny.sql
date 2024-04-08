-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-04-2024 a las 21:05:51
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `danny`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `nombre`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Juguete', NULL, 1, '2024-03-01 20:37:53', '2024-03-01 20:37:53'),
(2, 'N/A', NULL, 1, '2024-03-01 20:43:55', '2024-03-01 20:43:55'),
(3, 'Blister', NULL, 1, '2024-03-01 20:44:27', '2024-03-01 20:44:27'),
(4, 'Cosmetico', NULL, 1, '2024-03-15 22:44:14', '2024-03-15 22:44:14'),
(5, 'Otros', NULL, 1, '2024-03-15 22:44:21', '2024-03-15 22:44:21'),
(6, 'Individual', NULL, 1, '2024-03-15 22:59:09', '2024-03-15 22:59:09'),
(7, 'mole', NULL, 1, '2024-04-03 19:30:04', '2024-04-03 19:30:04'),
(8, 'Pacote', NULL, 0, '2024-04-04 19:24:23', '2024-04-05 22:17:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint UNSIGNED NOT NULL,
  `caracteristica_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `caracteristica_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-01 20:37:54', '2024-03-01 20:37:54'),
(2, 4, '2024-03-15 22:44:14', '2024-03-15 22:44:14'),
(3, 5, '2024-03-15 22:44:21', '2024-03-15 22:44:21'),
(4, 8, '2024-04-04 19:24:23', '2024-04-04 19:24:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `id` bigint UNSIGNED NOT NULL,
  `producto_id` bigint UNSIGNED NOT NULL,
  `categoria_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-03-01 20:44:49', '2024-03-01 20:44:49'),
(4, 4, 1, '2024-03-16 00:29:06', '2024-03-16 00:29:06'),
(5, 6, 1, '2024-03-16 00:46:41', '2024-03-16 00:46:41'),
(6, 45, 1, '2024-03-16 00:47:04', '2024-03-16 00:47:04'),
(7, 44, 1, '2024-03-16 00:47:21', '2024-03-16 00:47:21'),
(8, 48, 1, '2024-03-16 00:47:33', '2024-03-16 00:47:33'),
(9, 47, 1, '2024-03-16 00:48:28', '2024-03-16 00:48:28'),
(10, 46, 1, '2024-03-16 00:48:41', '2024-03-16 00:48:41'),
(11, 9, 1, '2024-03-16 00:55:38', '2024-03-16 00:55:38'),
(12, 10, 1, '2024-03-16 00:55:48', '2024-03-16 00:55:48'),
(13, 57, 1, '2024-03-16 01:11:06', '2024-03-16 01:11:06'),
(14, 8, 1, '2024-03-16 01:12:15', '2024-03-16 01:12:15'),
(15, 11, 1, '2024-03-16 01:12:25', '2024-03-16 01:12:25'),
(16, 12, 1, '2024-03-16 01:12:34', '2024-03-16 01:12:34'),
(17, 58, 1, '2024-03-16 01:35:22', '2024-03-16 01:35:22'),
(18, 59, 2, '2024-03-16 01:37:31', '2024-03-16 01:37:31'),
(19, 60, 2, '2024-03-16 01:38:00', '2024-03-16 01:38:00'),
(20, 61, 2, '2024-03-16 01:38:29', '2024-03-16 01:38:29'),
(21, 62, 2, '2024-03-16 01:38:44', '2024-03-16 01:38:44'),
(22, 63, 2, '2024-03-16 01:39:26', '2024-03-16 01:39:26'),
(23, 64, 2, '2024-03-16 01:39:56', '2024-03-16 01:39:56'),
(24, 65, 2, '2024-03-16 01:40:14', '2024-03-16 01:40:14'),
(25, 66, 2, '2024-03-16 01:40:37', '2024-03-16 01:40:37'),
(26, 67, 2, '2024-03-16 01:41:04', '2024-03-16 01:41:04'),
(27, 68, 2, '2024-03-16 01:41:19', '2024-03-16 01:41:19'),
(28, 69, 2, '2024-03-16 01:42:15', '2024-03-16 01:42:15'),
(29, 70, 2, '2024-03-16 01:50:35', '2024-03-16 01:50:35'),
(30, 71, 3, '2024-03-16 01:51:06', '2024-03-16 01:51:06'),
(31, 72, 2, '2024-03-16 01:51:56', '2024-03-16 01:51:56'),
(32, 73, 1, '2024-04-05 17:02:34', '2024-04-05 17:02:34'),
(33, 74, 2, '2024-04-05 17:14:24', '2024-04-05 17:14:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint UNSIGNED NOT NULL,
  `persona_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `persona_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-03-01 20:53:51', '2024-03-01 20:53:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` bigint UNSIGNED NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(8,2) UNSIGNED NOT NULL,
  `numero_comprobante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(8,2) UNSIGNED NOT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `comprobante_id` bigint UNSIGNED DEFAULT NULL,
  `proveedore_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `fecha_hora`, `impuesto`, `numero_comprobante`, `total`, `estado`, `comprobante_id`, `proveedore_id`, `created_at`, `updated_at`) VALUES
(1, '2024-03-01 13:48:46', 32.00, '1', 232.00, 1, 2, 1, '2024-03-01 20:49:03', '2024-03-01 20:49:03'),
(2, '2024-03-15 18:52:58', 3.20, '2', 23.20, 1, 1, 1, '2024-03-16 00:53:24', '2024-03-16 00:53:24'),
(3, '2024-04-05 16:19:27', 0.80, '20', 5.80, 1, 2, 1, '2024-04-05 22:19:44', '2024-04-05 22:19:44'),
(4, '2024-04-08 15:20:29', 32.00, '3', 232.00, 1, 2, 1, '2024-04-08 21:20:41', '2024-04-08 21:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_producto`
--

CREATE TABLE `compra_producto` (
  `id` bigint UNSIGNED NOT NULL,
  `compra_id` bigint UNSIGNED NOT NULL,
  `producto_id` bigint UNSIGNED NOT NULL,
  `cantidad` int UNSIGNED NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compra_producto`
--

INSERT INTO `compra_producto` (`id`, `compra_id`, `producto_id`, `cantidad`, `precio_compra`, `precio_venta`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, 20.00, 40.00, '2024-03-01 20:49:03', '2024-03-01 20:49:03'),
(2, 2, 6, 10, 2.00, 10.00, '2024-03-16 00:53:24', '2024-03-16 00:53:24'),
(3, 3, 25, 1, 5.00, 15.00, '2024-04-05 22:19:44', '2024-04-05 22:19:44'),
(4, 4, 22, 20, 10.00, 30.00, '2024-04-08 21:20:41', '2024-04-08 21:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id` bigint UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`id`, `tipo_comprobante`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Boleta', 1, NULL, NULL),
(2, 'Factura', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` bigint UNSIGNED NOT NULL,
  `tipo_documento` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `tipo_documento`, `created_at`, `updated_at`) VALUES
(1, 'DNI', NULL, NULL),
(2, 'Pasaporte', NULL, NULL),
(3, 'RUC', NULL, NULL),
(4, 'Pasaporte de extranjero', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_10_011515_create_documentos_table', 1),
(6, '2023_03_10_012149_create_personas_table', 1),
(7, '2023_03_10_015030_create_proveedores_table', 1),
(8, '2023_03_10_015806_create_clientes_table', 1),
(9, '2023_03_10_020010_create_comprobantes_table', 1),
(10, '2023_03_10_020257_create_compras_table', 1),
(11, '2023_03_10_022517_create_ventas_table', 1),
(12, '2023_03_10_023329_create_caracteristicas_table', 1),
(13, '2023_03_10_023555_create_categorias_table', 1),
(14, '2023_03_10_023818_create_marcas_table', 1),
(15, '2023_03_10_023953_create_presentaciones_table', 1),
(16, '2023_03_10_024112_create_productos_table', 1),
(17, '2023_03_10_025418_create_categoria_producto_table', 1),
(18, '2023_03_10_025748_create_compra_producto_table', 1),
(19, '2023_03_10_030137_create_producto_venta_table', 1),
(20, '2023_05_02_214216_update_colums_to_documentos_table', 1),
(21, '2023_05_02_214713_update_colums_to_personas_table', 1),
(22, '2023_06_16_224734_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2);

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
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ver-categoria', 'web', '2024-02-21 18:38:44', '2024-02-21 18:38:44'),
(2, 'crear-categoria', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(3, 'editar-categoria', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(4, 'eliminar-categoria', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(5, 'ver-cliente', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(6, 'crear-cliente', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(7, 'editar-cliente', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(8, 'eliminar-cliente', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(9, 'ver-compra', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(10, 'crear-compra', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(11, 'mostrar-compra', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(12, 'eliminar-compra', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(13, 'ver-marca', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(14, 'crear-marca', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(15, 'editar-marca', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(16, 'eliminar-marca', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(17, 'ver-presentacione', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(18, 'crear-presentacione', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(19, 'editar-presentacione', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(20, 'eliminar-presentacione', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(21, 'ver-producto', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(22, 'crear-producto', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(23, 'editar-producto', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(24, 'eliminar-producto', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(25, 'ver-proveedore', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(26, 'crear-proveedore', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(27, 'editar-proveedore', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(28, 'eliminar-proveedore', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(29, 'ver-venta', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(30, 'crear-venta', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(31, 'mostrar-venta', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(32, 'eliminar-venta', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(33, 'ver-role', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(34, 'crear-role', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(35, 'editar-role', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(36, 'eliminar-role', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(37, 'ver-user', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(38, 'crear-user', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(39, 'editar-user', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(40, 'eliminar-user', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(41, 'ver-perfil', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45'),
(42, 'editar-perfil', 'web', '2024-02-21 18:38:45', '2024-02-21 18:38:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` bigint UNSIGNED NOT NULL,
  `razon_social` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_persona` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `documento_id` bigint UNSIGNED NOT NULL,
  `numero_documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `razon_social`, `direccion`, `tipo_persona`, `estado`, `documento_id`, `numero_documento`, `created_at`, `updated_at`) VALUES
(1, 'Gus', 'Su casa', 'natural', 1, 1, '1', '2024-03-01 20:47:11', '2024-03-01 20:47:11'),
(2, 'Comprador ordinario', 'Su casa', 'fisica', 1, 1, '2', '2024-03-01 20:53:51', '2024-04-06 00:38:09'),
(3, 'vendedor de mexico', 'Ciudad de mexico.', 'natural', 0, 4, '3', '2024-04-06 05:36:18', '2024-04-06 05:36:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint UNSIGNED NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int UNSIGNED NOT NULL DEFAULT '0',
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `stock`, `descripcion`, `fecha_vencimiento`, `img_path`, `estado`, `created_at`, `updated_at`) VALUES
(1, '1', 'Huevo De dragón Lego', 1, NULL, NULL, NULL, 1, '2024-03-01 20:44:49', '2024-03-01 20:44:49'),
(4, '2', 'Laser de caja', 0, NULL, NULL, NULL, 1, '2024-01-24 20:40:52', '2024-02-10 23:20:10'),
(5, '3', 'Huevo dragón', 0, NULL, NULL, NULL, 1, '2024-01-24 20:40:57', '2024-02-10 23:20:10'),
(6, '4', 'Squishy mediano surtido', 6, NULL, NULL, NULL, 1, '2024-01-24 20:41:00', '2024-02-10 23:20:10'),
(7, '5', 'Pollo chillón chico', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:03', '2024-02-10 23:20:10'),
(8, '6', 'Teléfonos de agua', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:05', '2024-02-10 23:20:10'),
(9, '7', 'Pistola burbujas', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-02-10 23:20:10'),
(10, '8', 'Mini squishi', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-02-10 23:20:10'),
(11, '9', 'Carro blister', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-02-10 23:20:10'),
(12, '10', 'Medusa de luz', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-02-10 23:20:10'),
(13, '11', 'Resorte mini', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:07', '2024-02-10 23:20:10'),
(14, '12', 'Bici amortiguador', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:08', '2024-02-10 23:20:10'),
(15, '13', 'Chicles de toque', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:10', '2024-02-10 23:20:10'),
(16, '14', 'Plumas de toque', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:12', '2024-02-10 23:20:10'),
(17, '15', 'Patineta', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:14', '2024-02-10 23:20:10'),
(18, '16', 'Resorte transparente', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:16', '2024-02-10 23:20:10'),
(19, '17', 'Cubo mediano', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:18', '2024-02-10 23:20:10'),
(20, '18', 'Chango de arena', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:20', '2024-02-10 23:20:10'),
(21, '19', 'Resorte mediano', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:22', '2024-02-10 23:20:10'),
(22, '20', 'Arena diamante', 10, NULL, NULL, NULL, 1, '2024-01-24 20:41:23', '2024-02-10 23:20:10'),
(23, '21', 'Patineta de luz', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:25', '2024-02-10 23:20:10'),
(24, '22', 'Cosmeticos mariposa', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:27', '2024-02-10 23:20:10'),
(25, '23', 'Kid escolar', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:28', '2024-02-10 23:20:10'),
(26, '24', 'paquete de tatuajes', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:29', '2024-02-10 23:20:10'),
(27, '25', 'Pila AA', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:31', '2024-02-10 23:28:05'),
(28, '26', 'Liga pulsera', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:32', '2024-02-10 23:20:10'),
(29, '27', 'Resorte bicolor', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:34', '2024-02-10 23:20:10'),
(30, '28', 'Lampara cromada', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:35', '2024-02-10 23:27:52'),
(31, '29', 'Rompecocos', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:37', '2024-02-10 23:20:10'),
(32, '30', 'Pistolita de balines', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:38', '2024-02-10 23:20:10'),
(33, '31', 'Slime abeja', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:40', '2024-02-10 23:20:10'),
(34, '32', 'Chango de arena ch', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:42', '2024-02-10 23:20:10'),
(35, '33', 'Pokebola grande', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:43', '2024-02-10 23:20:10'),
(36, '34', 'Lagartijas', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:46', '2024-02-10 23:20:10'),
(37, '35', 'Chicle agua', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:47', '2024-02-10 23:20:10'),
(38, '36', 'Planilla pokebolas chicas', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:49', '2024-02-10 23:20:10'),
(39, '37', 'Sticker muñeca', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:50', '2024-02-10 23:20:10'),
(40, '38', 'Espejo cuadrado', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:52', '2024-02-10 23:20:10'),
(41, '39', 'Pokebola planilla', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:54', '2024-02-10 23:27:47'),
(42, '40', 'Cortauñas ch', 0, NULL, NULL, NULL, 1, '2024-01-24 20:41:55', '2024-02-10 23:20:10'),
(43, '41', 'Miniblocks', 0, NULL, NULL, NULL, 1, '2024-01-24 20:55:46', '2024-02-10 23:20:10'),
(44, '42', 'Unicornio chico', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-03-16 00:47:21'),
(45, '43', 'Lego constructor', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-03-16 00:47:04'),
(46, '44', 'Arena magica', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-03-16 00:48:41'),
(47, '45', 'Huevo dinosaurio', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-02-10 23:20:10'),
(48, '46', 'Huevo de agua', 0, NULL, NULL, NULL, 1, '2024-01-29 04:38:54', '2024-03-16 00:47:33'),
(49, '47', 'Muñeca de caja ch', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(50, '48', 'Robot de control rosa', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(51, '49', 'Cubo rubik', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(52, '50', 'Autobus camión', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(53, '51', 'Plumón marcador', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(54, '52', 'Stickers', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(55, '53', 'Fomi de bebe', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(56, '54', 'Slime mediano', 0, NULL, NULL, NULL, 1, '2024-01-24 21:04:44', '2024-02-10 23:20:10'),
(57, '55', 'pluma invisible', 0, NULL, NULL, NULL, 1, '2024-03-16 01:11:06', '2024-03-16 01:11:06'),
(58, '56', 'Pollo lego', 0, NULL, NULL, NULL, 1, '2024-03-16 01:35:22', '2024-03-16 01:35:22'),
(59, '57', 'Delineador blanco', 0, NULL, NULL, NULL, 1, '2024-03-16 01:37:31', '2024-03-16 01:38:08'),
(60, '58', 'Delineador negro', 0, NULL, NULL, NULL, 1, '2024-03-16 01:38:00', '2024-03-16 01:38:00'),
(61, '59', 'Delineador negro Gato', 0, NULL, NULL, NULL, 1, '2024-03-16 01:38:29', '2024-03-16 01:38:29'),
(62, '60', 'Pluma de ceja', 0, NULL, NULL, NULL, 1, '2024-03-16 01:38:44', '2024-03-16 01:38:44'),
(63, '61', 'Correctores', 0, NULL, NULL, NULL, 1, '2024-03-16 01:39:26', '2024-03-16 01:39:26'),
(64, '62', 'Pestañas', 0, NULL, NULL, NULL, 1, '2024-03-16 01:39:56', '2024-03-16 01:39:56'),
(65, '63', 'Corta uñas', 0, NULL, NULL, NULL, 1, '2024-03-16 01:40:14', '2024-03-16 01:40:14'),
(66, '64', 'Rimel', 0, NULL, NULL, NULL, 1, '2024-03-16 01:40:37', '2024-03-16 01:40:37'),
(67, '65', 'Pinza de cabello', 0, NULL, NULL, NULL, 1, '2024-03-16 01:41:04', '2024-03-16 01:41:04'),
(68, '66', 'Moño de cabello', 0, NULL, NULL, NULL, 1, '2024-03-16 01:41:19', '2024-03-16 01:41:19'),
(69, '67', 'Bálsamo labial', 0, 'nose', NULL, NULL, 1, '2024-03-16 01:42:15', '2024-04-05 23:35:04'),
(70, '68', 'Polvo de hadas', 0, NULL, NULL, NULL, 1, '2024-03-16 01:50:35', '2024-03-16 01:50:35'),
(71, '69', 'Brillo de labios', 0, NULL, NULL, NULL, 1, '2024-03-16 01:51:06', '2024-04-04 20:21:09'),
(72, '70', 'Aretes', 0, NULL, NULL, NULL, 1, '2024-03-16 01:51:56', '2024-04-04 22:39:38'),
(73, '201', 'Pato para cabeza', 0, 'Pato de nieve seca que se coloca con un resorte', '1434-02-12', NULL, 1, '2024-04-05 17:02:34', '2024-04-05 17:02:34'),
(74, '202', 'Libro de pestañas', 0, NULL, NULL, NULL, 1, '2024-04-05 17:14:24', '2024-04-05 23:41:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_venta`
--

CREATE TABLE `producto_venta` (
  `id` bigint UNSIGNED NOT NULL,
  `venta_id` bigint UNSIGNED NOT NULL,
  `producto_id` bigint UNSIGNED NOT NULL,
  `cantidad` int UNSIGNED NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_venta`
--

INSERT INTO `producto_venta` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_venta`, `descuento`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 40.00, 0.00, '2024-03-01 21:52:37', '2024-03-01 21:52:37'),
(6, 5, 22, 10, 30.00, 0.00, '2024-04-08 21:21:04', '2024-04-08 21:21:04'),
(7, 6, 1, 2, 40.00, 0.00, '2024-04-08 21:21:26', '2024-04-08 21:21:26'),
(8, 7, 6, 4, 10.00, 0.00, '2024-04-08 21:26:16', '2024-04-08 21:26:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint UNSIGNED NOT NULL,
  `persona_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `persona_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-01 20:47:11', '2024-03-01 20:47:11'),
(2, 3, '2024-04-06 05:36:18', '2024-04-06 05:36:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrosemanal`
--

CREATE TABLE `registrosemanal` (
  `id` bigint UNSIGNED NOT NULL,
  `inicio_semana` date NOT NULL,
  `ingresos` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registrosemanal`
--

INSERT INTO `registrosemanal` (`id`, `inicio_semana`, `ingresos`, `created_at`, `updated_at`) VALUES
(1, '2023-10-20', 1904, NULL, NULL),
(2, '2023-10-27', 3993, NULL, NULL),
(3, '2023-11-03', 2540, NULL, NULL),
(4, '2023-11-10', 3210, NULL, NULL),
(5, '2023-11-17', 2712, NULL, NULL),
(6, '2023-11-24', 2735, NULL, NULL),
(7, '2023-12-01', 2395, NULL, NULL),
(8, '2023-12-08', 2605, NULL, NULL),
(9, '2023-12-15', 4582, NULL, NULL),
(10, '2023-12-22', 12300, NULL, NULL),
(11, '2023-12-29', 2360, NULL, NULL),
(12, '2024-01-05', 1115, NULL, NULL),
(13, '2024-01-12', 2370, NULL, NULL),
(14, '2024-01-19', -700, NULL, NULL),
(15, '2024-01-26', 1235, NULL, NULL),
(16, '2024-02-02', 1595, NULL, NULL),
(17, '2024-02-09', 1950, NULL, NULL),
(18, '2024-02-16', 1950, NULL, NULL),
(19, '2024-02-23', 2625, NULL, NULL),
(20, '2024-03-01', 2680, NULL, NULL),
(21, '2024-03-08', 2160, NULL, NULL),
(22, '2024-03-15', 3720, NULL, NULL),
(23, '2024-03-22', 1365, NULL, NULL),
(24, '2024-03-29', 2452, NULL, NULL),
(25, '2024-04-05', 2285, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'web', '2024-02-21 18:38:45', '2024-04-05 22:16:01'),
(3, 'gefe', 'web', '2024-04-05 22:16:48', '2024-04-05 22:16:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(21, 3),
(22, 3),
(23, 3),
(24, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(2, 'Kevin', 'Kevinsanchezpdtb@gmail.com', NULL, '$2y$10$5l2wIsEyt3e43c.UiOJp3eQV2hp0gUFQllTqyI0gQtHiNeT3B2iMi', NULL, '2024-02-21 18:40:56', '2024-02-21 18:40:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint UNSIGNED NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(8,2) UNSIGNED NOT NULL,
  `numero_comprobante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(8,2) UNSIGNED NOT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `cliente_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `comprobante_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha_hora`, `impuesto`, `numero_comprobante`, `total`, `estado`, `cliente_id`, `user_id`, `comprobante_id`, `created_at`, `updated_at`) VALUES
(1, '2024-03-01 14:52:22', 12.80, '1', 92.80, 1, 1, 2, 1, '2024-03-01 21:52:37', '2024-03-01 21:52:37'),
(5, '2024-04-08 15:20:51', 48.00, '2', 348.00, 1, 1, 2, 2, '2024-04-08 21:21:04', '2024-04-08 21:21:04'),
(6, '2024-04-08 15:21:17', 12.80, '3', 92.80, 1, 1, 2, 2, '2024-04-08 21:21:26', '2024-04-08 21:21:26'),
(7, '2024-04-08 15:26:03', 6.40, '4', 46.40, 1, 1, 2, 2, '2024-04-08 21:26:16', '2024-04-08 21:26:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_caracteristica_id_unique` (`caracteristica_id`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_producto_producto_id_foreign` (`producto_id`),
  ADD KEY `categoria_producto_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_persona_id_unique` (`persona_id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_comprobante_id_foreign` (`comprobante_id`),
  ADD KEY `compras_proveedore_id_foreign` (`proveedore_id`);

--
-- Indices de la tabla `compra_producto`
--
ALTER TABLE `compra_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compra_producto_compra_id_foreign` (`compra_id`),
  ADD KEY `compra_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
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
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personas_documento_id_foreign` (`documento_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_venta_venta_id_foreign` (`venta_id`),
  ADD KEY `producto_venta_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedores_persona_id_unique` (`persona_id`);

--
-- Indices de la tabla `registrosemanal`
--
ALTER TABLE `registrosemanal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `ventas_user_id_foreign` (`user_id`),
  ADD KEY `ventas_comprobante_id_foreign` (`comprobante_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `compra_producto`
--
ALTER TABLE `compra_producto`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registrosemanal`
--
ALTER TABLE `registrosemanal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_caracteristica_id_foreign` FOREIGN KEY (`caracteristica_id`) REFERENCES `caracteristicas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD CONSTRAINT `categoria_producto_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categoria_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_comprobante_id_foreign` FOREIGN KEY (`comprobante_id`) REFERENCES `comprobantes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `compras_proveedore_id_foreign` FOREIGN KEY (`proveedore_id`) REFERENCES `proveedores` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `compra_producto`
--
ALTER TABLE `compra_producto`
  ADD CONSTRAINT `compra_producto_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compra_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_documento_id_foreign` FOREIGN KEY (`documento_id`) REFERENCES `documentos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD CONSTRAINT `producto_venta_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `producto_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_persona_id_foreign` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ventas_comprobante_id_foreign` FOREIGN KEY (`comprobante_id`) REFERENCES `comprobantes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `ventas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
