-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2017 a las 01:08:39
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `frut`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_attemps`
--

CREATE TABLE IF NOT EXISTS `can_attemps` (
  `id_can_attemps` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_usuarios` int(11) NOT NULL,
  `can_attemps` int(11) NOT NULL,
  PRIMARY KEY (`id_can_attemps`),
  KEY `id_can_usuarios` (`id_can_usuarios`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `can_attemps`
--

INSERT INTO `can_attemps` (`id_can_attemps`, `id_can_usuarios`, `can_attemps`) VALUES
(1, 1, 0),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_categorias`
--

CREATE TABLE IF NOT EXISTS `can_categorias` (
  `id_can_categorias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `identifier` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `url_path` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `content` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'txt_upload, img_upload, pdf_upload, doc_upload',
  `metatags` text COLLATE utf8_spanish_ci,
  `limite_max` int(11) DEFAULT NULL,
  `editable` varchar(8) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1|1' COMMENT 'x|y  x = can_categorias y = contenido  0 = No permitido 1 = Full 2 = Editar Contenido',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `icon_class` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_can_categorias`),
  KEY `parent` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=76 ;

--
-- Volcar la base de datos para la tabla `can_categorias`
--

INSERT INTO `can_categorias` (`id_can_categorias`, `nombre`, `identifier`, `descripcion`, `url_path`, `content`, `metatags`, `limite_max`, `editable`, `parent_id`, `icon_class`, `status`) VALUES
(-8, 'Contenido', 'content', 'Contenido', 'home_category.php?identifier=content', 'text_editor|img_upload', NULL, NULL, '1|1', 0, '', 1),
(-7, 'Galería', 'gallery', 'Galerias', 'home_category.php?identifier=gallery', 'img_upload', NULL, NULL, '1|1', 0, 'icon32x32-color icon32x32-gallery', 1),
(-3, 'Usuarios', 'usuarios', 'Administra los usuarios del panel', 'users.php', '', NULL, NULL, '1|1', 0, '', 1),
(-2, 'Mi Cuenta', 'micuenta', NULL, 'mi_cuenta.php', '', NULL, NULL, '1|1', 0, '', 1),
(1, 'Crear Usuarios', 'new_users', 'Creación de nuevos usuarios', 'users_new.php', '', NULL, NULL, '1|1', -3, '', 1),
(3, 'Desbloquear Usuarios', 'desbloquear_usuarios', NULL, '', '', NULL, NULL, '1|1', -3, '', 1),
(2, 'Banners', 'banners', '', 'banner_detail.php?id=2', '', NULL, NULL, '1|1', -5, NULL, 1),
(61, 'Clientes', 'clientes', '', 'gallery_detail.php?id=61', '', NULL, NULL, '1|1', -7, NULL, 1),
(60, 'Aliados', 'aliados', '', 'gallery_detail.php?id=60', '', NULL, NULL, '1|1', -7, NULL, 1),
(69, '', '', '', '', '', NULL, NULL, '1|1', 0, NULL, 1),
(70, '', NULL, '', '', '', NULL, NULL, '1|1', 0, NULL, 1),
(71, '', NULL, '', '', '', NULL, NULL, '1|1', 0, NULL, 1),
(72, '', NULL, '', '', '', NULL, NULL, '1|1', 0, NULL, 1),
(73, '', NULL, '', '', '', NULL, NULL, '1|1', 0, NULL, 1),
(74, '', NULL, '', '', '', NULL, NULL, '1|1', 0, NULL, 1),
(75, '', NULL, '', '', '', NULL, NULL, '1|1', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_categorias_documentos`
--

CREATE TABLE IF NOT EXISTS `can_categorias_documentos` (
  `id_can_categorias_documentos` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorias` int(11) NOT NULL,
  `tipo_documento` varchar(40) CHARACTER SET utf8 NOT NULL,
  `archivo` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuarios` int(11) NOT NULL,
  PRIMARY KEY (`id_can_categorias_documentos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `can_categorias_documentos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_config`
--

CREATE TABLE IF NOT EXISTS `can_config` (
  `id_can_config` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `label` varchar(256) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish2_ci,
  `value` text CHARACTER SET utf8 NOT NULL,
  `options` text COLLATE utf8_spanish2_ci,
  PRIMARY KEY (`id_can_config`),
  UNIQUE KEY `nombre_config` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=10003 ;

--
-- Volcar la base de datos para la tabla `can_config`
--

INSERT INTO `can_config` (`id_can_config`, `name`, `label`, `description`, `value`, `options`) VALUES
(1, 'session', 'Duración de la sesión', NULL, '3600', NULL),
(2, 'max_attemps', 'Intentos fallidos antes de bloquear', 'Límite máximo de intentos fallidos para iniciar sesión.', '20', NULL),
(101, 'page_title', 'Título de la Página', 'Nombre que aparecerá en la barra de título del navegador', 'Lorem ipsum ad his scripta blandit partiendo, eum ...	', NULL),
(104, 'correo', 'Correo', NULL, 'aca va el correo1aaa', NULL),
(103, 'telefono', 'Telefono', NULL, 'numeroaa', NULL),
(102, 'contacto', 'Contacto', NULL, '0', NULL),
(9995, 'enable_add_category', 'enable_add_category', NULL, '1', '1=habilitado,0=deshabilitado'),
(9996, 'cat_content_image', 'cat_content_image', 'Categorías de contenido con imagenes', '0', '1=habilitado,0=deshabilitado'),
(9997, 'aspect_ratio_default', 'aspect_ratio_default', 'Relación de aspecto de las imagenes por defecto', '4:3|3:4|16:9|1:1', NULL),
(9998, 'img_sizes', 'img_sizes', NULL, '640x480|320x240', NULL),
(9999, 'content_default', 'content_default', NULL, 'text_editor|img_upload', NULL),
(9001, 'galeria_obras_img_sizes', 'galeria_obras_img_sizes', NULL, 'thumb:100x100:crop|thumb:240x240:crop|full:600x900:maximun', NULL),
(9002, 'productos_img_sizes', 'productos_img_sizes', NULL, 'thumb:132x132:crop|thumb:80x80:crop|thumb:100x100:crop|full:600x900:maximun|thumb:150x200:crop|thumb:310x350:crop', NULL),
(10001, 'content_img_sizes', 'content_img_sizes', NULL, 'thumb:100x100:crop|full:600x900:maximun|thumb:220x225:crop|thumb:260x180:auto', NULL),
(105, 'direccion', 'Dirección', NULL, 'aca va la direccion ', NULL),
(10002, 'categorias_img_sizes', 'categorias_img_sizes', NULL, 'thumb:100x100:crop|full:231x217:maximun', NULL),
(106, 'correo_envio_formulario', 'Correo para envio de formulario', NULL, '', NULL),
(107, 'facebook', 'facebook', NULL, 'http://www.facebook.com', NULL),
(108, 'twitter', 'twitter', NULL, 'http://www.twitter.com', NULL),
(110, 'youtube', 'YouTube', NULL, 'http://www.youtube.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_contacto`
--

CREATE TABLE IF NOT EXISTS `can_contacto` (
  `id_can_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '1',
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `mapa` text CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `contenido2` text CHARACTER SET utf8 NOT NULL,
  `contenido3` text CHARACTER SET utf8 NOT NULL,
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `metatags` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_contacto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `can_contacto`
--

INSERT INTO `can_contacto` (`id_can_contacto`, `id_can_secciones`, `estatus`, `idioma`, `identifier`, `mapa`, `titulo1`, `contenido1`, `contenido2`, `contenido3`, `descripcion`, `metatags`, `content`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(5, 0, 1, 'esp', 'lorem_ipsum_dolor_sit_amet_consectetur_', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3040.244170927916!2d-3.6708386847000947!3d40.35910997937189!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd42269bea83a8d7%3A0xa2daad62837f39a0!2sMercamadrid!5e0!3m2!1ses!2sve!4v1489767019433" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Lorem ipsum dolor sit amet, consectetur ', 'email@email.com', '123 - 1234 1212 / 124 - 1244 1244', '', 'asas', 'ass', 'asasas', '2017-03-17 12:21:14', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_contenido`
--

CREATE TABLE IF NOT EXISTS `can_contenido` (
  `id_can_contenido` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorias` int(11) NOT NULL,
  `id_can_secciones` int(11) NOT NULL,
  `titulo` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `identifier` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL,
  `metatags` text COLLATE utf8_spanish_ci,
  `imagen` text COLLATE utf8_spanish_ci,
  `contenido_adicional` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Contenido adicional serializado',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `id_can_usuarios` int(11) NOT NULL,
  `fecha_mod` timestamp NULL DEFAULT NULL,
  `id_can_usuarios_mod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_can_contenido`),
  UNIQUE KEY `identifier` (`identifier`),
  KEY `id_categorias` (`id_categorias`),
  KEY `titulo` (`titulo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=105 ;

--
-- Volcar la base de datos para la tabla `can_contenido`
--

INSERT INTO `can_contenido` (`id_can_contenido`, `id_categorias`, `id_can_secciones`, `titulo`, `identifier`, `contenido`, `metatags`, `imagen`, `contenido_adicional`, `fecha`, `status`, `id_can_usuarios`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(1, 52, 0, 'titulo', 'identificador', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(66, 0, 61, '222', '61_it', '<p>222</p>', '222', NULL, '<p>22</p>', '2016-11-29 01:42:28', 1, 1, NULL, NULL),
(65, 0, 61, '333', '61_eng', '<p>3</p>', '333', NULL, '<p>3</p>', '2016-11-29 01:42:28', 1, 0, NULL, NULL),
(64, 0, 61, '444aa', '61_esp', '<p>44</p>', '444', NULL, '<p>444</p>', '2016-11-29 01:42:28', 1, 0, NULL, NULL),
(74, 75, 75, 'Hostelería', '75_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(73, 74, 74, 'Comunicación', '74_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(72, 73, 73, 'Recetas', '73_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(71, 72, 72, 'Portada', '72_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(75, 72, 72, 'Portada', '72_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(76, 73, 73, 'Recetas', '73_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(77, 74, 74, 'Comunicación', '74_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(78, 75, 75, 'Conócenos', '75_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(79, 72, 72, 'Portada', '72_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(80, 73, 73, 'Recetas', '73_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(81, 74, 74, 'Comunicación', '74_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(82, 75, 75, 'Conócenos', '75_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(83, 76, 76, 'Inicio Central', '76_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(84, 76, 76, 'Inicio Central', '76_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(85, 76, 76, 'Inicio Central', '76_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(86, 77, 77, 'Historia', '77_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(87, 77, 77, 'Historia', '77_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(88, 77, 77, 'Historia', '77_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(89, 78, 78, 'instalaciones', '78_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(90, 78, 78, 'instalaciones', '78_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(91, 78, 78, 'instalaciones', '78_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(92, 79, 79, 'Nuestro Producto', '79_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(93, 79, 79, 'Nuestro Producto', '79_it', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(94, 79, 79, 'Nuestro Producto', '79_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(95, 80, 80, 'Clientes', '80_esp', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(96, 80, 60, 'Clientes', '80_it', '', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(97, 80, 80, 'Clientes', '80_eng', 'contenido', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(98, 81, 81, 'asasas', '81_esp', '<p>contenido</p>', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(99, 81, 81, 'Comercio Exterior', '81_it', '<p>contenido</p>', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(100, 81, 81, 'Comercio Exterior', '81_eng', '<p>contenido</p>', '', NULL, '', '2012-04-12 12:48:10', 1, 1, '2012-04-13 12:22:00', 1),
(101, 0, 0, 'asas', '<br />\r\n<b>Notice</b>:  Undefined variable: id_secciones in <b>C', '', '', NULL, '', '2017-03-15 09:36:59', 1, 0, NULL, NULL),
(102, 0, 0, '', '_esp', '', '', NULL, '', '2017-03-15 10:32:22', 1, 0, NULL, NULL),
(103, 0, 0, '', '_eng', '', '', NULL, '', '2017-03-15 10:32:22', 0, 0, NULL, NULL),
(104, 0, 0, '', '_it', '', '', NULL, '', '2017-03-15 10:32:22', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_distribucion`
--

CREATE TABLE IF NOT EXISTS `can_distribucion` (
  `id_can_distribucion` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_distribucion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `can_distribucion`
--

INSERT INTO `can_distribucion` (`id_can_distribucion`, `id_can_secciones`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `imagen2`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(2, 77, 'esp', 'can_distribucion', '', 'imagen1', '<p class="text_dt_pro text_pro6">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class="espacio_menu">&nbsp;</div>', 'imagen2', '2017-03-16 11:05:06', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_galerias`
--

CREATE TABLE IF NOT EXISTS `can_galerias` (
  `id_can_galerias` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorias` int(11) NOT NULL,
  `titulo` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `img_galerias` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `url_destino` varchar(256) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo` text COLLATE utf8_spanish_ci,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_can_galerias`),
  KEY `id_categorias` (`id_categorias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=141 ;

--
-- Volcar la base de datos para la tabla `can_galerias`
--

INSERT INTO `can_galerias` (`id_can_galerias`, `id_categorias`, `titulo`, `img_galerias`, `url_destino`, `codigo`, `fecha`, `status`) VALUES
(119, 13, 'rec_imagen1', '65ee1141c415a24e26cea9372d199938.png', NULL, '', '2017-03-17 13:19:42', 1),
(118, 10, 'rec_imagen1', '47147125800f2c1702d761e7b21747a1.png', NULL, '', '2017-03-17 13:19:28', 1),
(117, 9, 'rec_imagen1', '0385b402eb681227dfd6ae826a58061b.png', NULL, '', '2017-03-17 13:19:14', 1),
(116, 8, 'rec_imagen1', 'e742834fff389202f4eacdcfcd116b36.png', NULL, '', '2017-03-17 13:19:03', 1),
(115, 7, 'rec_imagen1', '02e7e7c41bc2a84c0e3a6439f151668c.png', NULL, '', '2017-03-17 11:31:31', 1),
(114, 14, 'notc_imagen1', '4b3b2b5661de24a0a37998f123104114.jpg', NULL, '', '2017-03-17 11:18:24', 1),
(113, 13, 'notc_imagen1', '2fd3481a88d1fd11a84ddf21df323e4d.png', NULL, '', '2017-03-17 11:17:40', 1),
(112, 10, 'notc_imagen1', '280ba93f032d3d0730142a0f368ac56f.png', NULL, '', '2017-03-17 11:17:22', 1),
(111, 9, 'notc_imagen1', '75e4d19521ceb8977f8450551ed80373.png', NULL, '', '2017-03-17 11:17:00', 1),
(110, 7, 'notc_imagen1', '65ed8d4c4263d07cd9c8a4dbd10e3157.png', NULL, '', '2017-03-17 11:16:47', 1),
(109, 8, 'notc_imagen1', 'aa44fe2ec2ddb10eed3acf4e69fdeba6.jpg', NULL, '', '2017-03-17 11:06:30', 1),
(104, 0, 'prod_imagen1', '63c7248f1a09a614be5ca56ba6c54cda.png', NULL, '', '2017-03-16 16:46:16', 1),
(103, 13, 'prod_imagen1', '1252257cd49489f5c690965c7ae8b521.jpg', NULL, '', '2017-03-16 16:37:43', 1),
(102, 12, 'prod_imagen1', '01c26ba84f8aa54241813e293b9ee3f5.png', NULL, '', '2017-03-16 16:37:27', 1),
(107, 7, 'prod_imagen1', '6387f9e6b16753e578960b1845ec10ac.png', NULL, '', '2017-03-17 09:19:31', 1),
(108, 8, 'prod_imagen1', '8f328ca38e0ba0768ef8791040cecfab.jpg', NULL, '', '2017-03-17 09:19:48', 1),
(100, 10, 'prod_imagen1', '7d626183dfd5a7ddc06f3a9d5213fd5b.png', NULL, '', '2017-03-16 15:27:33', 1),
(98, 77, 'imagen2', '56d3820b1f5f45dab70f32d2707d0e27.png', NULL, '', '2017-03-16 10:21:59', 1),
(99, 9, 'prod_imagen1', '52c83289da4b7fdb9e52b346224dc873.jpg', NULL, '', '2017-03-16 14:57:29', 1),
(97, 77, 'imagen1', '82d3b6d5940bff83f0d033a5ad143667.png', NULL, '', '2017-03-16 10:21:59', 1),
(95, 75, 'imagen1', '55617bbea1ac992adf857fe2604ecc7c.png', NULL, '', '2017-03-16 10:06:01', 1),
(96, 75, 'imagen2', '09c4453f20554a768daa170a8bdb6acc.png', NULL, '', '2017-03-16 10:06:01', 1),
(94, 52, 'imagen4', '2a785e18372950e2515bac5f0c64fa50.jpg', NULL, '', '2017-03-16 05:54:08', 1),
(92, 52, 'imagen2', '9b97aa4c5ff2666e8d3b6ee1de76a54c.jpg', NULL, '', '2017-03-16 05:54:08', 1),
(93, 52, 'imagen3', '7be2cd48fffc75e9ec0a0f1c776ca44c.jpg', NULL, '', '2017-03-16 05:54:08', 1),
(90, 81, 'paralax3', '545216b8e03e90328739923945b3fb9f.jpg', NULL, '', '2017-03-16 04:06:30', 1),
(91, 52, 'Lorem ipsum dolor ', '299c0d2ef1ff2c1603982b8fbbc8e463.png', NULL, '', '2017-03-16 05:50:44', 1),
(89, 81, 'paralax2', '0f9a290e75c09f2e1d6b309b5a4c555c.jpg', NULL, '', '2017-03-16 04:06:30', 1),
(88, 81, 'paralax1', '238241c284346ccc2bc9119e1f5c2447.jpg', NULL, '', '2017-03-16 04:06:30', 1),
(120, 7, 'prod_eco_imagen1', 'eea7f902dcffb258b7cca671b5e66747.png', NULL, '', '2017-03-17 21:06:22', 1),
(121, 13, 'prod_eco_imagen1', 'f02d81eca4c05b7a5d21558765c569b1.png', NULL, '', '2017-03-17 21:07:11', 1),
(122, 10, 'prod_eco_imagen1', '52264c876f0c3a7b8fbd110e33efc4fa.png', NULL, '', '2017-03-17 21:07:38', 1),
(125, 21, 'rec_imagen1', '3b55415671ca81e029b25b7bdf3b2486.jpg', NULL, '', '2017-03-20 18:33:11', 1),
(132, 19, 'prod_eco_imagen1', 'f32a5bcd336bd99032cbee14eea9c3e6.png', NULL, '', '2017-04-07 11:34:26', 1),
(133, 20, 'prod_eco_imagen1', '96d7ecfc4b3344b290b8f4b6c0f6e195.png', NULL, '', '2017-04-07 11:41:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_hosteleria`
--

CREATE TABLE IF NOT EXISTS `can_hosteleria` (
  `id_can_hosteleria` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_hosteleria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `can_hosteleria`
--

INSERT INTO `can_hosteleria` (`id_can_hosteleria`, `id_can_secciones`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `imagen2`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(2, 75, 'esp', 'can_hosteleria', 'titulo1', 'imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '2017-03-16 10:57:07', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_inicio`
--

CREATE TABLE IF NOT EXISTS `can_inicio` (
  `id_can_inicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `paralax1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `paralax2` text CHARACTER SET utf8 NOT NULL,
  `contenido2` text CHARACTER SET utf8 NOT NULL,
  `paralax3` text CHARACTER SET utf8 NOT NULL,
  `titulo3` varchar(256) CHARACTER SET utf8 NOT NULL,
  `contenido3` text CHARACTER SET utf8 NOT NULL,
  `titulo4` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo5` varchar(256) CHARACTER SET utf32 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_inicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `can_inicio`
--

INSERT INTO `can_inicio` (`id_can_inicio`, `id_can_secciones`, `idioma`, `identifier`, `paralax1`, `contenido1`, `paralax2`, `contenido2`, `paralax3`, `titulo3`, `contenido3`, `titulo4`, `titulo5`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(1, 81, 'esp', 'cont_inicio', 'paralax1', '																																																																																																																																																																																																																																																																																																																																																																																																																					Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua																																																																																																																																																																																																																																																																																																																																																																														', 'paralax2', '																																																																																																																																																																																																																																																																																																																																																																																																																					Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua																																																																																																																																																																																																																																																																																																																																																																								', 'paralax3', 'Pasión por la fruta', '																																																																																																																																																																																																																																																																																																																																																																																																																					Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua																																																																																																																																																																																																																																																																																																																																																																													', 'Pasión por la hostelería', 'Pasión por la ecología', '2017-03-20 16:52:08', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_noticias`
--

CREATE TABLE IF NOT EXISTS `can_noticias` (
  `id_can_noticias` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '1',
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `metatags` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_noticias`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcar la base de datos para la tabla `can_noticias`
--

INSERT INTO `can_noticias` (`id_can_noticias`, `id_can_secciones`, `estatus`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `imagen2`, `descripcion`, `metatags`, `content`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(7, 0, 1, 'esp', 'titulo', 'Titulo', 'notc_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', 'aaa', 'aaa', 'aaa', '2017-03-20 14:31:06', 0),
(8, 0, 1, 'esp', 'titulo', 'noticia ', 'notc_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class="col-xs-12 col-sm-9">&nbsp;</div>', 'imagen2', 'bb', 'bb', 'bb', '2017-03-17 11:04:51', 0),
(9, 0, 1, 'esp', 'titulo', 'Titulo', 'notc_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 10:08:41', 0),
(10, 0, 0, 'esp', 'as', 'as', 'notc_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 09:21:10', 0),
(13, 0, 1, 'esp', 'asas', 'asas', 'notc_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'notc_imagen2', '', '', '', '2017-03-17 09:21:23', 0),
(14, 0, 1, 'esp', 'demo', 'demo', 'notc_imagen1', '<p>demo</p>', 'notc_imagen2', 'demo', 'demo', 'demo', '2017-03-17 11:18:24', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_nuestra_empresa`
--

CREATE TABLE IF NOT EXISTS `can_nuestra_empresa` (
  `id_can_nuestra_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `titulo2` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `contenido2` text CHARACTER SET utf8 NOT NULL,
  `titulo3` text CHARACTER SET utf8 NOT NULL,
  `imagen3` text CHARACTER SET utf8 NOT NULL,
  `contenido3` text CHARACTER SET utf8 NOT NULL,
  `titulo4` text CHARACTER SET utf8 NOT NULL,
  `imagen4` text CHARACTER SET utf8 NOT NULL,
  `contenido4` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_nuestra_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `can_nuestra_empresa`
--

INSERT INTO `can_nuestra_empresa` (`id_can_nuestra_empresa`, `id_can_secciones`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `titulo2`, `imagen2`, `contenido2`, `titulo3`, `imagen3`, `contenido3`, `titulo4`, `imagen4`, `contenido4`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(2, 52, 'esp', 'can_nuestra_empresa', 'Nuestra Empresa', 'Lorem ipsum dolor ', '																																																																																																																																							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa																																																																																																																														', 'Titulo 2', 'imagen2', '<p>2Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa</p>', 'Experiencia', 'imagen3', '																																																																																																																																							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa																																																																																																																															', 'Servicios', 'imagen4', '																																																																																																																																							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa																																																																																																																														', '2017-03-20 17:15:34', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_privilegios`
--

CREATE TABLE IF NOT EXISTS `can_privilegios` (
  `id_can_privilegios` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_usuarios` int(11) NOT NULL,
  `id_categorias` int(11) NOT NULL,
  `permisos` tinyint(4) NOT NULL DEFAULT '2' COMMENT '0: Ninguno, 1: Agregar/Modificar, 2: Full',
  PRIMARY KEY (`id_can_privilegios`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=23 ;

--
-- Volcar la base de datos para la tabla `can_privilegios`
--

INSERT INTO `can_privilegios` (`id_can_privilegios`, `id_can_usuarios`, `id_categorias`, `permisos`) VALUES
(1, 1, -9, 2),
(2, 1, -8, 2),
(3, 1, -7, 2),
(4, 1, -6, 2),
(5, 1, -5, 2),
(6, 1, -4, 2),
(7, 1, -3, 2),
(8, 1, -2, 2),
(9, 1, -1, 2),
(10, 1, -10, 2),
(11, 2, -8, 2),
(12, 2, -6, 2),
(13, 2, -5, 2),
(14, 2, -4, 2),
(15, 2, -3, 2),
(16, 2, -2, 2),
(17, 2, -1, 2),
(18, 2, -10, 2),
(19, 2, -7, 2),
(20, 2, -9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_producto`
--

CREATE TABLE IF NOT EXISTS `can_producto` (
  `id_can_producto` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '1',
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `metatags` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `can_producto`
--

INSERT INTO `can_producto` (`id_can_producto`, `id_can_secciones`, `estatus`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `imagen2`, `descripcion`, `metatags`, `content`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(7, 0, 1, 'esp', 'titulo', 'Titulo', 'prod_imagen1', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>								', 'imagen2', 'aaa', 'aaa', 'aaa', '2017-03-27 09:59:39', 0),
(8, 0, 1, 'esp', 'titulo', 'Titulo', 'prod_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class="col-xs-12 col-sm-9">&nbsp;</div>', 'imagen2', 'bb', 'bb', 'bb', '2017-03-17 10:25:32', 0),
(9, 0, 1, 'esp', 'titulo', 'Titulo', 'prod_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 10:08:41', 0),
(10, 0, 0, 'esp', 'as', 'as', 'prod_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 09:21:10', 0),
(13, 0, 1, 'esp', 'asas', 'asas', 'prod_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'prod_imagen2', '', '', '', '2017-03-17 09:21:23', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_producto_ecologico`
--

CREATE TABLE IF NOT EXISTS `can_producto_ecologico` (
  `id_can_producto_ecologico` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '1',
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `metatags` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_producto_ecologico`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcar la base de datos para la tabla `can_producto_ecologico`
--

INSERT INTO `can_producto_ecologico` (`id_can_producto_ecologico`, `id_can_secciones`, `estatus`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `imagen2`, `descripcion`, `metatags`, `content`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(7, 0, 1, 'esp', 'titulo', 'Titulo eco', 'prod_eco_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', 'aaa', 'aaa', 'aaa', '2017-03-17 21:05:46', 0),
(10, 0, 0, 'esp', 'as', 'as', 'prod_eco_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 09:21:10', 0),
(13, 0, 1, 'esp', 'asas', 'asas', 'prod_eco_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'prod_eco_imagen2', '', '', '', '2017-03-17 09:21:23', 0),
(19, 0, 1, 'esp', '', '', 'prod_eco_imagen1', '', 'prod_eco_imagen2', 'ass', '', '', '2017-04-07 11:34:25', 0),
(20, 0, 1, 'esp', '', '', 'prod_eco_imagen1', '', 'prod_eco_imagen2', 'ass', '', '', '2017-04-07 11:41:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_recetas`
--

CREATE TABLE IF NOT EXISTS `can_recetas` (
  `id_can_recetas` int(11) NOT NULL AUTO_INCREMENT,
  `id_can_secciones` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT '1',
  `idioma` varchar(256) NOT NULL,
  `identifier` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titulo1` text CHARACTER SET utf8 NOT NULL,
  `imagen1` text CHARACTER SET utf8 NOT NULL,
  `contenido1` text CHARACTER SET utf8 NOT NULL,
  `imagen2` text CHARACTER SET utf8 NOT NULL,
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `metatags` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_can_usuarios_mod` int(11) NOT NULL,
  PRIMARY KEY (`id_can_recetas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcar la base de datos para la tabla `can_recetas`
--

INSERT INTO `can_recetas` (`id_can_recetas`, `id_can_secciones`, `estatus`, `idioma`, `identifier`, `titulo1`, `imagen1`, `contenido1`, `imagen2`, `descripcion`, `metatags`, `content`, `fecha_mod`, `id_can_usuarios_mod`) VALUES
(7, 0, 1, 'esp', 'titulo', 'receta', 'rec_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', 'aaa', 'aaa', 'aaa', '2017-03-17 13:16:57', 0),
(8, 0, 1, 'esp', 'titulo', 'Titulo', 'rec_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class="col-xs-12 col-sm-9">&nbsp;</div>', 'imagen2', 'bb', 'bb', 'bb', '2017-03-17 10:25:32', 0),
(9, 0, 1, 'esp', 'titulo', 'Titulo', 'rec_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 10:08:41', 0),
(10, 0, 0, 'esp', 'as', 'as', 'rec_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'imagen2', '', '', '', '2017-03-17 09:21:10', 0),
(13, 0, 1, 'esp', 'asas', 'asas', 'rec_imagen1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'rec_imagen2', '', '', '', '2017-03-17 09:21:23', 0),
(21, 0, 1, 'esp', 't', 't', 'rec_imagen1', '<p>t</p>', 'rec_imagen2', 'Tt', 't', 'tt', '2017-03-20 18:33:10', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_secciones`
--

CREATE TABLE IF NOT EXISTS `can_secciones` (
  `id_can_secciones` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `identifier` varchar(128) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `url_path` varchar(256) COLLATE utf8_spanish_ci NOT NULL,
  `content` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'txt_upload, img_upload, pdf_upload, doc_upload',
  `metatags` text COLLATE utf8_spanish_ci,
  `limite_max` int(11) DEFAULT NULL,
  `editable` varchar(8) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1|1' COMMENT 'x|y  x = can_secciones y = can_contenido  0 = No permitido 1 = Full 2 = Editar Contenido',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `icon_class` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_can_secciones`),
  KEY `parent` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=82 ;

--
-- Volcar la base de datos para la tabla `can_secciones`
--

INSERT INTO `can_secciones` (`id_can_secciones`, `nombre`, `identifier`, `descripcion`, `url_path`, `content`, `metatags`, `limite_max`, `editable`, `parent_id`, `icon_class`, `status`) VALUES
(70, 'qqqqq', NULL, '<p>qq</p>', '', '', NULL, NULL, '1|1', 61, NULL, 3),
(69, 'interna demoaaa', 'clientes_contenido', '<p>dasdaa00</p>', 'gallery_detail.php?id=61', '', 'ffff', NULL, '1|1', 61, NULL, 3),
(61, 'Clientesaa', 'clientes', '<p>dasd</p>', 'gallery_detail.php?id=61', '', 'ffff', NULL, '1|1', 0, NULL, 1),
(52, ' Nuestra Empresa', 'nuestra_empresa', 'Title', 'content_detail.php?id=52', 'Description', 'Metatags', NULL, '1|1', 0, NULL, 1),
(72, 'Portada', 'portada', 'descripcion', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(73, 'Producto Ecológico', 'producto_ecologico', 'descripcion', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(74, 'Comunicación', 'comunicacion', 'descripcion', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(75, 'Hostelería', 'hosteleria', 'descripcion', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(76, 'Recetas', 'recetas', 'inicio_central', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(77, 'Distribución', 'distribucion', 'historia', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(78, 'Noticias', 'noticias', 'instalaciones', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(79, 'Nuestro Producto', 'nuestro_producto', 'nuestro_producto Producto', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(80, 'Contacto', 'contacto', 'contacto', '', 'content', 'metatags', NULL, '1|1', 0, NULL, 1),
(81, 'Inicio', 'Inicio', 'Title', '', 'Description', 'Metatags', NULL, '1|1', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_tipo_usuario`
--

CREATE TABLE IF NOT EXISTS `can_tipo_usuario` (
  `id_can_tipo_usuario` int(4) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_can_tipo_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `can_tipo_usuario`
--

INSERT INTO `can_tipo_usuario` (`id_can_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_usuario`
--

CREATE TABLE IF NOT EXISTS `can_usuario` (
  `id_can_usuarios` int(10) NOT NULL AUTO_INCREMENT,
  `id_can_tipo_usuario` int(10) NOT NULL,
  `nombres` varchar(256) NOT NULL,
  `apellidos` varchar(256) NOT NULL,
  `login` varchar(256) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `imagen` varchar(40) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_can_usuarios`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `can_usuario`
--

INSERT INTO `can_usuario` (`id_can_usuarios`, `id_can_tipo_usuario`, `nombres`, `apellidos`, `login`, `pass`, `email`, `last_access`, `parent_id`, `imagen`, `fecha`, `status`) VALUES
(1, 1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@mipaginademo.com', '2016-12-02 07:27:07', 0, NULL, '0000-00-00 00:00:00', 1),
(7, 0, 'aabaaa', 'aaa', 'aa', '47bce5c74f589f4867dbd57e9ca9f808', 'aa@hotmail.com', NULL, NULL, NULL, '2016-11-22 21:38:27', 1),
(8, 0, 'bb', 'bb', 'bb', '08f8e0260c64418510cefb2b06eee5cd', 'bb@example.com', NULL, NULL, NULL, '2016-11-22 21:38:44', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `can_usuarios`
--

CREATE TABLE IF NOT EXISTS `can_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `tipo` int(1) DEFAULT '1',
  `estado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `can_usuarios`
--

INSERT INTO `can_usuarios` (`id`, `usuario`, `nombres`, `apellidos`, `password`, `tipo`, `estado`) VALUES
(1, 'admin', 'administrador', 'administrador', 'c893bad68927b457dbed39460e6afd62', 1, 1);
