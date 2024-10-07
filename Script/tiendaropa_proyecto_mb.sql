-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2024 a las 22:33:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaropa_proyecto_mb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre_marca`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Bershka'),
(5, 'Zara'),
(6, 'Under Armour'),
(7, 'H&M'),
(8, 'Reebok'),
(9, 'The North Face'),
(10, 'Patagonia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prendas`
--

CREATE TABLE `prendas` (
  `id_prenda` int(11) NOT NULL,
  `nombre_prenda` varchar(100) NOT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prendas`
--

INSERT INTO `prendas` (`id_prenda`, `nombre_prenda`, `id_marca`, `stock`, `precio`) VALUES
(1, 'Camiseta Nike Pro', 1, 50, 29900),
(2, 'Zapatillas Adidas Superstar', 2, 30, 18999),
(3, 'Sudadera Puma Classic', 3, 20, 14999),
(4, 'Vaqueros Bershka 501', 4, 25, 35190),
(5, 'Chaqueta Zara Casual', 5, 15, 69799),
(6, 'Camiseta Under Armour Sportstyle', 6, 40, 24099),
(7, 'Camiseta H&M Basica', 7, 100, 18099),
(8, 'Zapatillas Reebok Classic', 8, 35, 15999),
(9, 'Chaqueta The North Face Apex', 9, 10, 19999),
(10, 'Chaqueta Patagonia Nano Puff', 10, 12, 24999),
(11, 'Pantalones Nike Training', 1, 30, 14599),
(12, 'Camiseta Adidas Originals', 2, 60, 19899),
(13, 'Mallas Puma Fitness', 3, 20, 13599),
(14, 'Chaqueta Bershka Sherpa', 4, 18, 11999),
(15, 'Pantalones Zara Cargo', 5, 22, 24999),
(16, 'Shorts Under Armour HeatGear', 6, 25, 12999),
(17, 'Pantalones H&M Jogger', 7, 75, 12599),
(18, 'Zapatillas Reebok Crossfit', 8, 20, 38999),
(19, 'Pantalones The North Face Trekking', 9, 15, 19999),
(20, 'Sudadera Patagonia Capilene', 10, 10, 18999),
(21, 'Camiseta Nike Dry-Fit', 1, 45, 12499),
(22, 'Pantalones Adidas Tiro 21', 2, 50, 34999),
(23, 'Sudadera Puma Active', 3, 30, 23999),
(24, 'Camiseta Bershka Graphic Tee', 4, 30, 19799),
(25, 'Blusa Zara Formal', 5, 10, 35099),
(26, 'Camiseta Under Armour Threadborne', 6, 35, 13499),
(27, 'Pantalones H&M Slim Fit', 7, 50, 12599),
(28, 'Zapatillas Reebok Zig Kinetica', 8, 12, 11999),
(29, 'Chaqueta The North Face Thermoball', 9, 8, 17999),
(30, 'Parka Patagonia Torrentshell', 10, 5, 12999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_prenda` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_prenda`, `cantidad`, `fecha_venta`) VALUES
(151, 1, 3, '2024-09-28'),
(152, 2, 5, '2024-09-29'),
(153, 3, 2, '2024-09-30'),
(154, 4, 1, '2024-09-28'),
(155, 5, 4, '2024-09-29'),
(156, 6, 6, '2024-09-30'),
(157, 7, 7, '2024-10-01'),
(158, 8, 2, '2024-10-01'),
(159, 9, 3, '2024-10-02'),
(160, 10, 2, '2024-10-02'),
(161, 11, 4, '2024-10-03'),
(162, 12, 5, '2024-10-03'),
(163, 13, 3, '2024-10-04'),
(164, 14, 6, '2024-10-04'),
(165, 15, 1, '2024-10-05'),
(166, 16, 7, '2024-10-05'),
(167, 17, 4, '2024-10-06'),
(168, 18, 3, '2024-10-06'),
(169, 19, 5, '2024-10-07'),
(170, 20, 6, '2024-10-07'),
(171, 21, 7, '2024-10-08'),
(172, 22, 2, '2024-10-08'),
(173, 23, 3, '2024-10-09'),
(174, 24, 4, '2024-10-09'),
(175, 25, 5, '2024-10-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD PRIMARY KEY (`id_prenda`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_prenda` (`id_prenda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `prendas`
--
ALTER TABLE `prendas`
  MODIFY `id_prenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD CONSTRAINT `prendas_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
