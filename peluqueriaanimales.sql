-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2023 a las 03:37:47
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peluqueriaanimales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duenio`
--

CREATE TABLE `duenio` (
  `ID_DUENIO` int(11) NOT NULL,
  `CELDUENIO` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `duenio`
--

INSERT INTO `duenio` (`ID_DUENIO`, `CELDUENIO`, `NOMBRE`) VALUES
(1, '934387785', 'Barbara Carvajal'),
(2, '934387785', 'Camilin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `NUM_CLIENTE` int(11) NOT NULL,
  `ALERGICO` varchar(255) DEFAULT NULL,
  `ATENCIONESPECIAL` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `OBSERVACIONES` varchar(255) DEFAULT NULL,
  `TIPOANIMAL` varchar(255) DEFAULT NULL,
  `UNDUENIO_ID_DUENIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`NUM_CLIENTE`, `ALERGICO`, `ATENCIONESPECIAL`, `COLOR`, `NOMBRE`, `OBSERVACIONES`, `TIPOANIMAL`, `UNDUENIO_ID_DUENIO`) VALUES
(1, '- No', '-Sí', 'negro y blanco', 'Mokita', 'Una gatita muy regalona que se portará bien si le hablan bonito y le dan churitos ', 'Gato', 1),
(2, '- No', '-Sí', 'Blanca con manchas negras', 'Laikita', 'Perrita enojona y dormilonam que le da la locura', 'Perro', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `duenio`
--
ALTER TABLE `duenio`
  ADD PRIMARY KEY (`ID_DUENIO`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`NUM_CLIENTE`),
  ADD KEY `FK_MASCOTA_UNDUENIO_ID_DUENIO` (`UNDUENIO_ID_DUENIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `duenio`
--
ALTER TABLE `duenio`
  MODIFY `ID_DUENIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `NUM_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `FK_MASCOTA_UNDUENIO_ID_DUENIO` FOREIGN KEY (`UNDUENIO_ID_DUENIO`) REFERENCES `duenio` (`ID_DUENIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
