-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-12-2017 a las 02:05:55
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
  `id_estudiante` varchar(20) NOT NULL COMMENT 'Identificación Estudiante',
  `prim_apellido` varchar(100) DEFAULT NULL COMMENT 'Primer Apellido Estudiante',
  `seg_apellido` varchar(100) DEFAULT NULL COMMENT 'Segundo Apellido Estudiante',
  `prim_nom_est` varchar(100) DEFAULT NULL COMMENT 'Primer nombre estudiante',
  `seg_nom_est` varchar(100) DEFAULT NULL COMMENT 'Segundo nombre estudiante',
  `tipo_doc` varchar(100) DEFAULT NULL COMMENT 'Tipo Documento',
  `tipo_sangre` varchar(100) DEFAULT NULL COMMENT 'Tipo de sangre',
  `lugar_na` varchar(100) DEFAULT NULL COMMENT 'Lugar de nacimiento',
  `fecha_na` date DEFAULT NULL COMMENT 'Fecha nacimiento',
  `fecha_reg` timestamp NULL DEFAULT NULL COMMENT 'Fecha de registro',
  `sexo` varchar(100) DEFAULT NULL COMMENT 'sexo',
  `dir_recidencia` varchar(100) DEFAULT NULL COMMENT 'Direccion Residencia',
  `barrio_vereda` varchar(100) DEFAULT NULL COMMENT 'Barrio o vereda',
  `estrato` varchar(100) DEFAULT NULL COMMENT 'Estrato',
  `telefono` varchar(100) DEFAULT NULL COMMENT 'Telefono',
  `celular` varchar(100) DEFAULT NULL COMMENT 'Celular',
  `email` varchar(100) DEFAULT NULL COMMENT 'email',
  `sisben` varchar(100) DEFAULT NULL COMMENT 'sisben ',
  `nivel_sisben` varchar(100) DEFAULT NULL COMMENT 'nivel sisben',
  `desplazado` varchar(100) DEFAULT NULL COMMENT 'desplazado',
  `Municipio` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `etnia` varchar(100) DEFAULT NULL,
  `afro` varchar(100) DEFAULT NULL,
  `indigena` varchar(100) DEFAULT NULL,
  `cabildo_res` varchar(100) DEFAULT NULL,
  `nom_padre` varchar(100) DEFAULT NULL,
  `nom_madre` varchar(100) DEFAULT NULL,
  `id_padre` varchar(100) DEFAULT NULL,
  `id_madre` varchar(100) DEFAULT NULL,
  `ocu_padre` varchar(100) DEFAULT NULL COMMENT 'ocupacion padre',
  `ocu_madre` varchar(100) DEFAULT NULL COMMENT 'ocupacion madre',
  `dir_padre` varchar(100) DEFAULT NULL COMMENT 'dir padre',
  `dir_madre` varchar(100) DEFAULT NULL COMMENT 'dir madre',
  `tel_padre` varchar(100) DEFAULT NULL,
  `tel_madre` varchar(100) DEFAULT NULL,
  `tel_tra_padre` varchar(100) DEFAULT NULL,
  `tel_tra_madre` varchar(100) DEFAULT NULL,
  `dir_tra_padre` varchar(100) DEFAULT NULL,
  `dir_tra_madre` varchar(100) DEFAULT NULL,
  `inst_procedencia` varchar(100) DEFAULT NULL,
  `municipio_pro` varchar(100) DEFAULT NULL,
  `dep_pro` varchar(100) DEFAULT NULL,
  `ultimo_grado` varchar(100) DEFAULT NULL,
  `nom_her_1` varchar(100) DEFAULT NULL,
  `nom_her_2` varchar(100) DEFAULT NULL,
  `nom_her_3` varchar(100) DEFAULT NULL,
  `nom_her_4` varchar(100) DEFAULT NULL,
  `ape_her_1` varchar(100) DEFAULT NULL,
  `ape_her_2` varchar(100) DEFAULT NULL,
  `ape_her_3` varchar(100) DEFAULT NULL,
  `ape_her_4` varchar(100) DEFAULT NULL,
  `grado_her_1` varchar(100) DEFAULT NULL,
  `grado_her_2` varchar(100) DEFAULT NULL,
  `grado_her_3` varchar(100) DEFAULT NULL,
  `grado_her_4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  UNIQUE KEY `id_estudiante` (`id_estudiante`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `prim_apellido`, `seg_apellido`, `prim_nom_est`, `seg_nom_est`, `tipo_doc`, `tipo_sangre`, `lugar_na`, `fecha_na`, `fecha_reg`, `sexo`, `dir_recidencia`, `barrio_vereda`, `estrato`, `telefono`, `celular`, `email`, `sisben`, `nivel_sisben`, `desplazado`, `Municipio`, `departamento`, `etnia`, `afro`, `indigena`, `cabildo_res`, `nom_padre`, `nom_madre`, `id_padre`, `id_madre`, `ocu_padre`, `ocu_madre`, `dir_padre`, `dir_madre`, `tel_padre`, `tel_madre`, `tel_tra_padre`, `tel_tra_madre`, `dir_tra_padre`, `dir_tra_madre`, `inst_procedencia`, `municipio_pro`, `dep_pro`, `ultimo_grado`, `nom_her_1`, `nom_her_2`, `nom_her_3`, `nom_her_4`, `ape_her_1`, `ape_her_2`, `ape_her_3`, `ape_her_4`, `grado_her_1`, `grado_her_2`, `grado_her_3`, `grado_her_4`) VALUES
('123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
