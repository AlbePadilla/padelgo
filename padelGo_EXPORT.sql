-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-03-2016 a las 01:01:20
-- Versión del servidor: 5.6.27-0ubuntu0.15.04.1
-- Versión de PHP: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `padelGo`
--
CREATE DATABASE IF NOT EXISTS `padelGo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `padelGo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

DROP TABLE IF EXISTS `Categorias`;
CREATE TABLE IF NOT EXISTS `Categorias` (
`idCategoria` int(1) NOT NULL,
  `nombreCategoria` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Categorias`
--

INSERT INTO `Categorias` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'Primera'),
(2, 'Segunda'),
(3, 'Tercera'),
(4, 'Cuarta'),
(5, 'Quinta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clubs`
--

DROP TABLE IF EXISTS `Clubs`;
CREATE TABLE IF NOT EXISTS `Clubs` (
`idClub` int(9) NOT NULL,
  `nombreClub` varchar(50) NOT NULL,
  `direccionClub` varchar(50) NOT NULL,
  `numPistas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Partidos`
--

DROP TABLE IF EXISTS `Partidos`;
CREATE TABLE IF NOT EXISTS `Partidos` (
`idPartido` int(9) NOT NULL,
  `tipoPartido` varchar(10) NOT NULL,
  `fechaPartido` date NOT NULL,
  `horaPartido` time NOT NULL,
  `jugador1` tinyint(1) NOT NULL,
  `jugador2` tinyint(1) NOT NULL,
  `jugador3` tinyint(1) NOT NULL,
  `jugador4` tinyint(1) NOT NULL,
  `idCategoria` int(1) NOT NULL,
  `idUsuario` int(9) NOT NULL,
  `idClub` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `Partidos`:
--   `idCategoria`
--       `Categorias` -> `idCategoria`
--   `idUsuario`
--       `Usuarios` -> `idUsuario`
--   `idClub`
--       `Clubs` -> `idClub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
CREATE TABLE IF NOT EXISTS `Usuarios` (
`idUsuario` int(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `fechaNac` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `idCategoria` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `Usuarios`:
--   `idCategoria`
--       `Categorias` -> `idCategoria`
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categorias`
--
ALTER TABLE `Categorias`
 ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `Clubs`
--
ALTER TABLE `Clubs`
 ADD PRIMARY KEY (`idClub`);

--
-- Indices de la tabla `Partidos`
--
ALTER TABLE `Partidos`
 ADD PRIMARY KEY (`idPartido`), ADD KEY `idCategoria` (`idCategoria`), ADD KEY `idUsuario` (`idUsuario`), ADD KEY `idClub` (`idClub`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
 ADD PRIMARY KEY (`idUsuario`), ADD UNIQUE KEY `email` (`email`), ADD KEY `idCategoria` (`idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Categorias`
--
ALTER TABLE `Categorias`
MODIFY `idCategoria` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `Clubs`
--
ALTER TABLE `Clubs`
MODIFY `idClub` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Partidos`
--
ALTER TABLE `Partidos`
MODIFY `idPartido` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
MODIFY `idUsuario` int(9) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Partidos`
--
ALTER TABLE `Partidos`
ADD CONSTRAINT `Partidos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `Categorias` (`idCategoria`),
ADD CONSTRAINT `Partidos_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios` (`idUsuario`),
ADD CONSTRAINT `Partidos_ibfk_3` FOREIGN KEY (`idClub`) REFERENCES `Clubs` (`idClub`);

--
-- Filtros para la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
ADD CONSTRAINT `Usuarios_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `Categorias` (`idCategoria`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
