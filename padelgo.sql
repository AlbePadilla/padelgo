-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-03-2016 a las 21:22:01
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
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
`idcategoria` int(11) NOT NULL,
  `primera` int(11) NOT NULL,
  `segunda` int(11) NOT NULL,
  `tercera` int(11) NOT NULL,
  `cuarta` int(11) NOT NULL,
  `quinta` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
`idclub` int(11) NOT NULL,
  `nombreclub` varchar(50) NOT NULL,
  `direccionclub` varchar(50) NOT NULL,
  `numpistas` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE IF NOT EXISTS `partidos` (
`idpartido` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idclub` int(11) NOT NULL,
  `fechapartido` date NOT NULL,
  `jugador1` varchar(30) NOT NULL,
  `jugador2` varchar(30) NOT NULL,
  `jugador3` varchar(30) NOT NULL,
  `jugador4` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`idusuario` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
 ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `clubs`
--
ALTER TABLE `clubs`
 ADD PRIMARY KEY (`idclub`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
 ADD PRIMARY KEY (`idpartido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clubs`
--
ALTER TABLE `clubs`
MODIFY `idclub` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
MODIFY `idpartido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
