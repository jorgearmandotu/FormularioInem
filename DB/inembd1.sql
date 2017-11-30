-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-11-2017 a las 02:20:05
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inembd1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `id_estudiante` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Identificación Estudiante',
  `prim_apellido` varchar(100) NOT NULL COMMENT 'Primer Apellido Estudiante',
  `seg_apellido` varchar(100) NOT NULL COMMENT 'Segundo Apellido Estudiante',
  `prim_nom_est` varchar(100) NOT NULL COMMENT 'Primer nombre estudiante',
  `seg_nom_est` varchar(100) NOT NULL COMMENT 'Segundo nombre estudiante',
  `tipo_doc` varchar(100) NOT NULL COMMENT 'Tipo Documento',
  `tipo_sangre` varchar(100) NOT NULL COMMENT 'Tipo de sangre',
  `lugar_na` varchar(100) NOT NULL COMMENT 'Lugar de nacimiento',
  `fecha_na` date NOT NULL COMMENT 'Fecha nacimiento',
  `fecha_reg` timestamp NOT NULL COMMENT 'Fecha de registro',
  `sexo` varchar(100) NOT NULL COMMENT 'sexo',
  `dir_recidencia` varchar(100) NOT NULL COMMENT 'Direccion Residencia',
  `barrio_vereda` varchar(100) NOT NULL COMMENT 'Barrio o vereda',
  `estrato` varchar(100) NOT NULL COMMENT 'Estrato',
  `telefono` varchar(100) NOT NULL COMMENT 'Telefono',
  `celular` varchar(100) NOT NULL COMMENT 'Celular',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `sisben` varchar(100) NOT NULL COMMENT 'sisben ',
  `nivel_sisben` varchar(100) NOT NULL COMMENT 'nivel sisben',
  `desplazado` varchar(100) NOT NULL COMMENT 'desplazado',
  `Municipio` varchar(100) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `etnia` varchar(100) NOT NULL,
  `afro` varchar(100) NOT NULL,
  `indigena` varchar(100) NOT NULL,
  `cabildo_res` varchar(100) NOT NULL,
  `nom_padre` varchar(100) NOT NULL,
  `nom_madre` varchar(100) NOT NULL,
  `id_padre` varchar(100) NOT NULL,
  `id_madre` varchar(100) NOT NULL,
  `ocu_padre` varchar(100) NOT NULL COMMENT 'ocupacion padre',
  `ocu_madre` varchar(100) NOT NULL COMMENT 'ocupacion madre',
  `dir_padre` varchar(100) NOT NULL COMMENT 'dir padre',
  `dir_madre` varchar(100) NOT NULL COMMENT 'dir madre',
  `tel_padre` varchar(100) NOT NULL,
  `tel_madre` varchar(100) NOT NULL,
  `tel_tra_padre` varchar(100) NOT NULL,
  `tel_tra_madre` varchar(100) NOT NULL,
  `dir_tra_padre` varchar(100) NOT NULL,
  `dir_tra_madre` varchar(100) NOT NULL,
  `inst_procedencia` varchar(100) NOT NULL,
  `municipio_pro` varchar(100) NOT NULL,
  `dep_pro` varchar(100) NOT NULL,
  `ultimo_grado` varchar(100) NOT NULL,
  `nom_her_1` varchar(100) NOT NULL,
  `nom_her_2` varchar(100) NOT NULL,
  `nom_her_3` varchar(100) NOT NULL,
  `nom_her_4` varchar(100) NOT NULL,
  `ape_her_1` varchar(100) NOT NULL,
  `ape_her_2` varchar(100) NOT NULL,
  `ape_her_3` varchar(100) NOT NULL,
  `ape_her_4` varchar(100) NOT NULL,
  `grado_her_1` varchar(100) NOT NULL,
  `grado_her_2` varchar(100) NOT NULL,
  `grado_her_3` varchar(100) NOT NULL,
  `grado_her_4` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
