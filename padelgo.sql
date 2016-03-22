-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-03-2016 a las 22:33:02
-- Versión del servidor: 5.6.27-0ubuntu0.15.04.1
-- Versión de PHP: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `padelgo`
--
CREATE DATABASE IF NOT EXISTS `padelgo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `padelgo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

CREATE TABLE IF NOT EXISTS `Categorias` (
`idCategoria` int(11) NOT NULL,
  `nombreCategoria` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clubs`
--

CREATE TABLE IF NOT EXISTS `Clubs` (
`idClub` int(11) NOT NULL,
  `nombreClub` varchar(50) NOT NULL,
  `direccionClub` varchar(50) NOT NULL,
  `numPistas` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Partidos`
--

CREATE TABLE IF NOT EXISTS `Partidos` (
`idPartido` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idClub` int(11) NOT NULL,
  `fechaPartido` date NOT NULL,
  `tipoPartido` varchar(10) NOT NULL,
  `jugador1` tinyint(1) NOT NULL,
  `jugador2` tinyint(1) NOT NULL,
  `jugador3` tinyint(1) NOT NULL,
  `jugador4` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
`idUsuario` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `fechaNac` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
 ADD PRIMARY KEY (`idPartido`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
 ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Categorias`
--
ALTER TABLE `Categorias`
MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Clubs`
--
ALTER TABLE `Clubs`
MODIFY `idClub` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Partidos`
--
ALTER TABLE `Partidos`
MODIFY `idPartido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
