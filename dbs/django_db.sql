-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 05, 2015 at 07:20 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `django_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=163 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add Ejecutivo de Medio', 7, 'add_ejecutivo'),
(20, 'Can change Ejecutivo de Medio', 7, 'change_ejecutivo'),
(21, 'Can delete Ejecutivo de Medio', 7, 'delete_ejecutivo'),
(22, 'Can add Miembro Directorio', 8, 'add_empresario'),
(23, 'Can change Miembro Directorio', 8, 'change_empresario'),
(24, 'Can delete Miembro Directorio', 8, 'delete_empresario'),
(25, 'Can add Género Medio Escrito', 9, 'add_generoescrito'),
(26, 'Can change Género Medio Escrito', 9, 'change_generoescrito'),
(27, 'Can delete Género Medio Escrito', 9, 'delete_generoescrito'),
(28, 'Can add Región', 10, 'add_region'),
(29, 'Can change Región', 10, 'change_region'),
(30, 'Can delete Región', 10, 'delete_region'),
(31, 'Can add Ciudad', 11, 'add_ciudad'),
(32, 'Can change Ciudad', 11, 'change_ciudad'),
(33, 'Can delete Ciudad', 11, 'delete_ciudad'),
(34, 'Can add Sector de Actividad Socio', 12, 'add_sector'),
(35, 'Can change Sector de Actividad Socio', 12, 'change_sector'),
(36, 'Can delete Sector de Actividad Socio', 12, 'delete_sector'),
(37, 'Can add Periodicidad', 13, 'add_periodicidad'),
(38, 'Can change Periodicidad', 13, 'change_periodicidad'),
(39, 'Can delete Periodicidad', 13, 'delete_periodicidad'),
(40, 'Can add Tipo Sociedad', 14, 'add_tiposociedad'),
(41, 'Can change Tipo Sociedad', 14, 'change_tiposociedad'),
(42, 'Can delete Tipo Sociedad', 14, 'delete_tiposociedad'),
(43, 'Can add Socio', 15, 'add_sociedad'),
(44, 'Can change Socio', 15, 'change_sociedad'),
(45, 'Can delete Socio', 15, 'delete_sociedad'),
(46, 'Can add Empresa Controladora', 16, 'add_propietario'),
(47, 'Can change Empresa Controladora', 16, 'change_propietario'),
(48, 'Can delete Empresa Controladora', 16, 'delete_propietario'),
(49, 'Can add Medio Escrito', 17, 'add_escrito'),
(50, 'Can change Medio Escrito', 17, 'change_escrito'),
(51, 'Can delete Medio Escrito', 17, 'delete_escrito'),
(52, 'Can add Género Radio', 18, 'add_generoradio'),
(53, 'Can change Género Radio', 18, 'change_generoradio'),
(54, 'Can delete Género Radio', 18, 'delete_generoradio'),
(55, 'Can add Radio', 19, 'add_radio'),
(56, 'Can change Radio', 19, 'change_radio'),
(57, 'Can delete Radio', 19, 'delete_radio'),
(58, 'Can add Género Canal TV', 20, 'add_generocanaltv'),
(59, 'Can change Género Canal TV', 20, 'change_generocanaltv'),
(60, 'Can delete Género Canal TV', 20, 'delete_generocanaltv'),
(61, 'Can add Canal de TV', 21, 'add_canaltv'),
(62, 'Can change Canal de TV', 21, 'change_canaltv'),
(63, 'Can delete Canal de TV', 21, 'delete_canaltv'),
(64, 'Can add Género Medio Digital', 22, 'add_generomediodigital'),
(65, 'Can change Género Medio Digital', 22, 'change_generomediodigital'),
(66, 'Can delete Género Medio Digital', 22, 'delete_generomediodigital'),
(67, 'Can add Medio Digital', 23, 'add_mediodigital'),
(68, 'Can change Medio Digital', 23, 'change_mediodigital'),
(69, 'Can delete Medio Digital', 23, 'delete_mediodigital'),
(70, 'Can add Autor', 24, 'add_autor'),
(71, 'Can change Autor', 24, 'change_autor'),
(72, 'Can delete Autor', 24, 'delete_autor'),
(73, 'Can add Fuente', 25, 'add_fuente'),
(74, 'Can change Fuente', 25, 'change_fuente'),
(75, 'Can delete Fuente', 25, 'delete_fuente'),
(76, 'Can add Ejecutivo de Medio', 26, 'add_ejecutivo'),
(77, 'Can change Ejecutivo de Medio', 26, 'change_ejecutivo'),
(78, 'Can delete Ejecutivo de Medio', 26, 'delete_ejecutivo'),
(79, 'Can add Miembro Directorio', 27, 'add_empresario'),
(80, 'Can change Miembro Directorio', 27, 'change_empresario'),
(81, 'Can delete Miembro Directorio', 27, 'delete_empresario'),
(82, 'Can add Género Medio Escrito', 28, 'add_generoescrito'),
(83, 'Can change Género Medio Escrito', 28, 'change_generoescrito'),
(84, 'Can delete Género Medio Escrito', 28, 'delete_generoescrito'),
(85, 'Can add Departamento', 29, 'add_region'),
(86, 'Can change Departamento', 29, 'change_region'),
(87, 'Can delete Departamento', 29, 'delete_region'),
(88, 'Can add Municipio', 30, 'add_ciudad'),
(89, 'Can change Municipio', 30, 'change_ciudad'),
(90, 'Can delete Municipio', 30, 'delete_ciudad'),
(91, 'Can add Sector de Actividad Socio', 31, 'add_sector'),
(92, 'Can change Sector de Actividad Socio', 31, 'change_sector'),
(93, 'Can delete Sector de Actividad Socio', 31, 'delete_sector'),
(94, 'Can add Periodicidad', 32, 'add_periodicidad'),
(95, 'Can change Periodicidad', 32, 'change_periodicidad'),
(96, 'Can delete Periodicidad', 32, 'delete_periodicidad'),
(97, 'Can add Tipo Sociedad', 33, 'add_tiposociedad'),
(98, 'Can change Tipo Sociedad', 33, 'change_tiposociedad'),
(99, 'Can delete Tipo Sociedad', 33, 'delete_tiposociedad'),
(100, 'Can add Socio', 34, 'add_sociedad'),
(101, 'Can change Socio', 34, 'change_sociedad'),
(102, 'Can delete Socio', 34, 'delete_sociedad'),
(103, 'Can add Empresa Controladora', 35, 'add_propietario'),
(104, 'Can change Empresa Controladora', 35, 'change_propietario'),
(105, 'Can delete Empresa Controladora', 35, 'delete_propietario'),
(106, 'Can add Medio Escrito', 36, 'add_escrito'),
(107, 'Can change Medio Escrito', 36, 'change_escrito'),
(108, 'Can delete Medio Escrito', 36, 'delete_escrito'),
(109, 'Can add Género Radio', 37, 'add_generoradio'),
(110, 'Can change Género Radio', 37, 'change_generoradio'),
(111, 'Can delete Género Radio', 37, 'delete_generoradio'),
(112, 'Can add Radio', 38, 'add_radio'),
(113, 'Can change Radio', 38, 'change_radio'),
(114, 'Can delete Radio', 38, 'delete_radio'),
(115, 'Can add Género Canal TV', 39, 'add_generocanaltv'),
(116, 'Can change Género Canal TV', 39, 'change_generocanaltv'),
(117, 'Can delete Género Canal TV', 39, 'delete_generocanaltv'),
(118, 'Can add Canal de TV', 40, 'add_canaltv'),
(119, 'Can change Canal de TV', 40, 'change_canaltv'),
(120, 'Can delete Canal de TV', 40, 'delete_canaltv'),
(121, 'Can add Género Medio Digital', 41, 'add_generomediodigital'),
(122, 'Can change Género Medio Digital', 41, 'change_generomediodigital'),
(123, 'Can delete Género Medio Digital', 41, 'delete_generomediodigital'),
(124, 'Can add Medio Digital', 42, 'add_mediodigital'),
(125, 'Can change Medio Digital', 42, 'change_mediodigital'),
(126, 'Can delete Medio Digital', 42, 'delete_mediodigital'),
(127, 'Can add Autor', 43, 'add_autor'),
(128, 'Can change Autor', 43, 'change_autor'),
(129, 'Can delete Autor', 43, 'delete_autor'),
(130, 'Can add Fuente', 44, 'add_fuente'),
(131, 'Can change Fuente', 44, 'change_fuente'),
(132, 'Can delete Fuente', 44, 'delete_fuente'),
(133, 'Can add Tipo de Regulación', 45, 'add_tipodocumento'),
(134, 'Can change Tipo de Regulación', 45, 'change_tipodocumento'),
(135, 'Can delete Tipo de Regulación', 45, 'delete_tipodocumento'),
(136, 'Can add Regulación', 46, 'add_regulacion'),
(137, 'Can change Regulación', 46, 'change_regulacion'),
(138, 'Can delete Regulación', 46, 'delete_regulacion'),
(139, 'Can add Tipo de Regulación', 47, 'add_tipodocumento'),
(140, 'Can change Tipo de Regulación', 47, 'change_tipodocumento'),
(141, 'Can delete Tipo de Regulación', 47, 'delete_tipodocumento'),
(142, 'Can add Regulación', 48, 'add_regulacion'),
(143, 'Can change Regulación', 48, 'change_regulacion'),
(144, 'Can delete Regulación', 48, 'delete_regulacion'),
(145, 'Can add Comuna', 49, 'add_comuna'),
(146, 'Can change Comuna', 49, 'change_comuna'),
(147, 'Can delete Comuna', 49, 'delete_comuna'),
(148, 'Can add País', 50, 'add_paissociedad'),
(149, 'Can change País', 50, 'change_paissociedad'),
(150, 'Can delete País', 50, 'delete_paissociedad'),
(151, 'Can add País', 51, 'add_paissociedad'),
(152, 'Can change País', 51, 'change_paissociedad'),
(153, 'Can delete País', 51, 'delete_paissociedad'),
(154, 'Can add porcentaje propietario', 52, 'add_porcentajepropietario'),
(155, 'Can change porcentaje propietario', 52, 'change_porcentajepropietario'),
(156, 'Can delete porcentaje propietario', 52, 'delete_porcentajepropietario'),
(157, 'Can add Cargo', 53, 'add_cargo'),
(158, 'Can change Cargo', 53, 'change_cargo'),
(159, 'Can delete Cargo', 53, 'delete_cargo'),
(160, 'Can add Cargo Ejectutivo', 54, 'add_cargoejecutivo'),
(161, 'Can change Cargo Ejectutivo', 54, 'change_cargoejecutivo'),
(162, 'Can delete Cargo Ejectutivo', 54, 'delete_cargoejecutivo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$hRxCzW4aqEPL$dsaoIhV7ZtI5Ss7X2tjc6IQke4zrW+tPpxYvZcqj67g=', '2015-02-03 15:35:33', 1, 'admin', '', '', 'felipe.perry@gmail.com', 1, 1, '2015-01-07 21:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1085 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-01-08 21:38:57', '1', 'lllllll', 1, '', 36, 1),
(2, '2015-01-08 21:39:07', '1', 'lllllll', 3, '', 36, 1),
(3, '2015-01-09 03:16:26', '11', 'Teleantioquia', 2, 'Changed sitioweb.', 40, 1),
(4, '2015-01-09 03:16:45', '10', 'CANAL TRO - TRO LTDA', 2, 'Changed sitioweb.', 40, 1),
(5, '2015-01-09 03:17:00', '9', 'Telecafe ', 2, 'Changed sitioweb.', 40, 1),
(6, '2015-01-09 03:20:34', '160', 'Ondas del Meta 1170 AM ', 2, 'Changed sitioweb.', 38, 1),
(7, '2015-01-09 03:21:02', '160', 'Ondas del Meta 1170 AM ', 2, 'No fields changed.', 38, 1),
(8, '2015-01-09 03:21:23', '154', 'Emisora Policía Nacional', 2, 'Changed sitioweb.', 38, 1),
(9, '2015-01-09 03:31:48', '1', 'Johanna Molano', 1, '', 26, 1),
(10, '2015-01-09 03:32:00', '2', 'Elsa Patricia Peniche Martinez', 1, '', 26, 1),
(11, '2015-01-09 03:32:11', '3', 'Gustavo Pérez Mier', 1, '', 26, 1),
(12, '2015-01-09 03:32:21', '4', 'William Salleg Tabaoda', 1, '', 26, 1),
(13, '2015-01-09 03:32:31', '5', 'Alfonso José Luna Geller', 1, '', 26, 1),
(14, '2015-01-09 03:32:38', '6', 'María Pia Duque Rengifo', 1, '', 26, 1),
(15, '2015-01-09 03:32:46', '7', 'Miguel Angel Rojas Arias', 1, '', 26, 1),
(16, '2015-01-09 03:32:55', '8', 'Deyanira Castro Cárdenas', 1, '', 26, 1),
(17, '2015-01-09 03:33:03', '9', 'María Elvira Dominguez Lloreda', 1, '', 26, 1),
(18, '2015-01-09 03:33:11', '10', 'Rosa María Agudelo Ayerbe', 1, '', 26, 1),
(19, '2015-01-09 03:33:22', '11', 'Marco Leonardo Esponosa', 1, '', 26, 1),
(20, '2015-01-09 03:33:45', '12', 'Climaco Rojas Atencio', 1, '', 26, 1),
(21, '2015-01-09 03:40:49', '181', 'Emisora Policía Nacional', 2, 'Changed sitioweb.', 38, 1),
(22, '2015-01-09 03:41:01', '195', 'Radio Activa', 2, 'Changed sitioweb.', 38, 1),
(23, '2015-01-09 03:41:15', '187', 'Ondas del Meta 1170 AM ', 2, 'Changed sitioweb.', 38, 1),
(24, '2015-01-09 22:04:29', '1', 'Generalista', 1, '', 39, 1),
(25, '2015-01-09 22:04:38', '2', 'Infantil', 1, '', 39, 1),
(26, '2015-01-09 22:04:49', '3', 'Musical', 1, '', 39, 1),
(27, '2015-01-09 22:05:23', '3', 'Música', 2, 'Changed genero.', 39, 1),
(28, '2015-01-09 22:05:33', '4', 'Deportes', 1, '', 39, 1),
(29, '2015-01-09 22:05:42', '5', 'Noticias', 1, '', 39, 1),
(30, '2015-01-09 22:06:04', '1', 'Generalista', 1, '', 28, 1),
(31, '2015-01-09 22:06:21', '2', 'Economía y Empresas', 1, '', 28, 1),
(32, '2015-01-09 22:06:30', '3', 'Deportes', 1, '', 28, 1),
(33, '2015-01-09 22:09:37', '4', 'Espectáculos', 1, '', 28, 1),
(34, '2015-01-09 22:10:52', '5', 'Medio Ambiente', 1, '', 28, 1),
(35, '2015-01-09 22:15:30', '1', 'I Región de Tarapacá', 1, '', 10, 1),
(36, '2015-01-09 22:15:56', '2', 'II Región de Antofagasta', 1, '', 10, 1),
(37, '2015-01-09 22:16:09', '3', 'III Región de Atacama', 1, '', 10, 1),
(38, '2015-01-09 22:16:23', '4', 'IV Región de Coquimbo', 1, '', 10, 1),
(39, '2015-01-09 22:16:38', '5', 'V Región de Valparaíso', 1, '', 10, 1),
(40, '2015-01-09 22:16:47', '6', 'Región Metropolitana', 1, '', 10, 1),
(41, '2015-01-09 22:49:37', '7', 'VI Región del Libertador General Bernardo O''Higgins', 1, '', 10, 1),
(42, '2015-01-13 00:25:58', '6', 'Madres', 1, '', 28, 1),
(43, '2015-01-13 00:30:21', '157', 'ABC del Bebé', 2, 'Changed genero and sitioweb.', 36, 1),
(44, '2015-01-13 00:32:12', '7', 'Hombres', 1, '', 28, 1),
(45, '2015-01-13 00:33:34', '156', 'Don Juan', 2, 'Changed genero and sitioweb.', 36, 1),
(46, '2015-01-13 00:38:15', '1', 'Casa Editorial El Tiempo', 1, '', 35, 1),
(47, '2015-01-13 00:38:51', '155', 'Revista Alo', 2, 'Changed inicioyear, sitioweb and propietario.', 36, 1),
(48, '2015-01-13 00:40:41', '1', 'Mensual', 1, '', 32, 1),
(49, '2015-01-13 00:40:49', '157', 'ABC del Bebé', 2, 'Changed periodicidad and propietario.', 36, 1),
(50, '2015-01-13 00:41:16', '156', 'Don Juan', 2, 'Changed periodicidad and propietario.', 36, 1),
(51, '2015-01-13 00:47:07', '2', 'Casa Editorial Welcome', 1, '', 35, 1),
(52, '2015-01-13 00:47:26', '154', 'El Isleño', 2, 'Changed tipo, genero and propietario.', 36, 1),
(53, '2015-01-13 00:56:00', '13', 'Hernando Suárez Burgos', 1, '', 26, 1),
(54, '2015-01-13 00:56:26', '153', 'Diario del Sur', 2, 'Changed tipo and gerentegeneral.', 36, 1),
(55, '2015-01-13 01:01:59', '152', 'El Líder Diario Caqueteño', 2, 'Changed tipo and genero.', 36, 1),
(56, '2015-01-13 01:02:17', '153', 'Diario del Sur', 2, 'Changed tipo.', 36, 1),
(57, '2015-01-13 01:02:32', '154', 'El Isleño', 2, 'Changed tipo.', 36, 1),
(58, '2015-01-13 01:02:51', '153', 'Diario del Sur', 2, 'Changed genero.', 36, 1),
(59, '2015-01-13 01:07:43', '151', 'La Guajira Hoy', 2, 'Changed tipo and genero.', 36, 1),
(60, '2015-01-13 01:11:33', '14', 'Amalia Sampedro Laguna', 1, '', 26, 1),
(61, '2015-01-13 01:12:18', '151', 'La Guajira Hoy', 2, 'Changed director and gerentegeneral.', 36, 1),
(62, '2015-01-13 01:15:22', '150', 'El Heraldo La Guajira', 2, 'Changed tipo and genero.', 36, 1),
(63, '2015-01-13 01:16:18', '149', 'Q´hubo Valledupar', 2, 'Changed tipo.', 36, 1),
(64, '2015-01-13 01:16:36', '149', 'Q´hubo Valledupar', 2, 'Changed genero.', 36, 1),
(65, '2015-01-13 01:18:14', '148', 'El Pilón', 2, 'Changed tipo and genero.', 36, 1),
(66, '2015-01-13 01:23:06', '3', 'Galvis Ramírez Y Cia S.A', 1, '', 35, 1),
(67, '2015-01-13 01:24:00', '147', 'Q´hubo Ibagué', 2, 'Changed tipo, genero and propietario.', 36, 1),
(68, '2015-01-13 02:27:28', '1', 'Noticioso', 1, '', 41, 1),
(69, '2015-01-13 02:54:28', '2', 'Generalista', 1, '', 41, 1),
(70, '2015-01-13 02:57:47', '1', 'El Tiempo.com', 1, '', 42, 1),
(71, '2015-01-13 02:59:21', '15', 'Roberto Pombo Holguín', 1, '', 26, 1),
(72, '2015-01-13 03:04:24', '1', 'El Tiempo.com', 2, 'Changed director and asociadoaescrito.', 42, 1),
(73, '2015-01-13 03:10:38', '16', 'Fidel Cano Correa', 1, '', 26, 1),
(74, '2015-01-13 03:11:30', '17', 'Wilson Santiago Diaz Castro', 1, '', 26, 1),
(75, '2015-01-13 03:13:22', '2', 'El Espectador', 1, '', 42, 1),
(76, '2015-01-13 03:21:51', '2', 'El Espectador', 2, 'Changed inicio and inicioyear.', 42, 1),
(78, '2015-01-14 18:00:39', '1', 'Pasteleria', 1, '', 15, 1),
(79, '2015-01-14 18:00:53', '1', 'Pasteleria', 3, '', 15, 1),
(81, '2015-01-14 18:04:00', '1', 'uno', 1, '', 34, 1),
(82, '2015-01-14 18:04:13', '1', 'uno', 3, '', 34, 1),
(83, '2015-01-14 18:23:23', '3', 'Canal RCN', 1, '', 42, 1),
(84, '2015-01-14 18:41:11', '1', 'Antioquia', 1, '', 29, 1),
(85, '2015-01-14 18:41:36', '18', 'Jorge Iván Pareja Castaño', 1, '', 26, 1),
(86, '2015-01-14 18:41:52', '19', 'Mauricio Tobón Franco', 1, '', 26, 1),
(87, '2015-01-14 18:42:18', '4', 'Minuto 30', 1, '', 42, 1),
(88, '2015-01-14 18:49:02', '2', 'Cundinamarca', 1, '', 29, 1),
(89, '2015-01-14 18:49:21', '1', 'Bogotá', 1, '', 30, 1),
(90, '2015-01-14 18:49:33', '5', 'Semana.com', 1, '', 42, 1),
(91, '2015-01-14 18:50:18', '20', 'Alejandro Santos', 1, '', 26, 1),
(92, '2015-01-14 18:50:35', '21', 'Isabel Cristina Valle Villa', 1, '', 26, 1),
(93, '2015-01-14 18:52:09', '5', 'Semana.com', 2, 'Changed director, gerentegeneral and asociadoaescrito.', 42, 1),
(94, '2015-01-14 19:28:23', '6', 'Noticiasrcn.com', 1, '', 42, 1),
(95, '2015-01-14 19:45:34', '4', 'Publicaciones Semana S.A.', 1, '', 35, 1),
(96, '2015-01-14 19:48:54', '22', 'Armando Neira', 1, '', 26, 1),
(97, '2015-01-14 19:49:12', '23', 'Elena Mesa Zuleta', 1, '', 26, 1),
(98, '2015-01-14 19:50:44', '5', 'Semana.com', 2, 'Changed direccion, director, gerentegeneral and propietario.', 42, 1),
(99, '2015-01-14 21:41:02', '156', 'Don Juan', 2, 'Changed direccion and telefono.', 36, 1),
(100, '2015-01-14 22:00:04', '157', 'ABC del Bebé', 2, 'Changed direccion and telefono.', 36, 1),
(101, '2015-01-14 22:02:01', '156', 'Don Juan', 2, 'Changed direccion and telefono.', 36, 1),
(102, '2015-01-14 22:03:13', '8', 'Entretenimiento', 1, '', 28, 1),
(103, '2015-01-14 22:14:00', '155', 'Revista Alo', 2, 'Changed genero.', 36, 1),
(104, '2015-01-15 14:07:26', '150', 'El Heraldo La Guajira', 3, '', 36, 1),
(105, '2015-01-15 14:07:42', '118', 'El Heraldo Magdalena', 3, '', 36, 1),
(106, '2015-01-15 14:08:05', '112', 'El Heraldo Bolívar', 3, '', 36, 1),
(107, '2015-01-15 15:06:17', '2', 'Semanal', 1, '', 32, 1),
(108, '2015-01-15 15:11:47', '24', 'Marco Leonardo Espinosa', 1, '', 26, 1),
(109, '2015-01-15 15:13:36', '146', 'Entérese', 2, 'Changed tipo, periodicidad, director and telefono.', 36, 1),
(110, '2015-01-15 16:25:46', '145', 'El Diario', 2, 'Changed tipo, periodicidad and telefono.', 36, 1),
(111, '2015-01-15 16:26:07', '146', 'Entérese', 2, 'Changed genero.', 36, 1),
(112, '2015-01-15 16:26:28', '145', 'El Diario', 2, 'Changed genero.', 36, 1),
(113, '2015-01-15 16:28:02', '144', 'Puente Boyacense', 2, 'Changed tipo and genero.', 36, 1),
(114, '2015-01-15 16:37:37', '143', 'Boyacá Siete Días', 2, 'Changed tipo and genero.', 36, 1),
(115, '2015-01-15 16:41:41', '3', 'Diario', 1, '', 32, 1),
(116, '2015-01-15 16:41:47', '142', 'Extra Cali', 2, 'Changed tipo, genero and periodicidad.', 36, 1),
(117, '2015-01-15 16:42:57', '144', 'Puente Boyacense', 2, 'Changed periodicidad.', 36, 1),
(118, '2015-01-15 16:44:54', '5', 'Grupo Editorial del Periódico SAS', 1, '', 35, 1),
(119, '2015-01-15 16:46:27', '142', 'Extra Cali', 2, 'Changed tipo and propietario.', 36, 1),
(120, '2015-01-15 16:50:35', '4', 'Lunes a sábado', 1, '', 32, 1),
(121, '2015-01-15 16:50:50', '143', 'Boyacá Siete Días', 2, 'Changed tipo and periodicidad.', 36, 1),
(122, '2015-01-15 16:58:01', '25', 'Mauricio Ríos Giraldo', 1, '', 26, 1),
(123, '2015-01-15 16:59:59', '139', 'El Diario de Occidente', 2, 'Changed tipo and director.', 36, 1),
(124, '2015-01-15 17:08:21', '138', 'El País de Cali', 2, 'Changed tipo, genero, director and gerentegeneral.', 36, 1),
(125, '2015-01-15 17:12:20', '26', 'Rubén Darío Valencia', 1, '', 26, 1),
(126, '2015-01-15 17:12:51', '137', 'Q´hubo Cali', 2, 'Changed tipo, genero, director and gerentegeneral.', 36, 1),
(127, '2015-01-15 17:19:57', '136', 'ADN Cali', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(128, '2015-01-15 17:23:42', '135', 'Q´hubo Villavicencio', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(129, '2015-01-15 17:24:57', '134', 'Llano Siete Días', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(130, '2015-01-15 17:26:50', '133', 'Extra Llanos', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(131, '2015-01-15 18:14:36', '6', 'La Crónica SAS', 1, '', 35, 1),
(132, '2015-01-15 18:16:55', '27', 'Sandra Cecilia Macias Palacio', 1, '', 26, 1),
(133, '2015-01-15 18:17:05', '132', 'Crónica del Quindio', 2, 'Changed tipo, genero, periodicidad, director, gerentegeneral, propietario and telefono.', 36, 1),
(134, '2015-01-15 18:19:54', '131', 'El Nuevo Día', 2, 'Changed tipo, genero and telefono.', 36, 1),
(135, '2015-01-15 18:31:47', '130', 'Extra Huila', 2, 'Changed tipo, genero, direccion, sitioweb, propietario and telefono.', 36, 1),
(136, '2015-01-15 18:32:07', '130', 'Extra Huila', 2, 'Changed tipo.', 36, 1),
(137, '2015-01-15 18:33:04', '7', 'Editora del Huila Ltda', 1, '', 35, 1),
(138, '2015-01-15 18:34:37', '28', 'Luisa María Duque Cerón', 1, '', 26, 1),
(139, '2015-01-15 18:34:53', '129', 'Diario del Huila', 2, 'Changed tipo, genero, periodicidad, director, gerentegeneral and propietario.', 36, 1),
(140, '2015-01-15 18:37:44', '29', 'David Luna', 1, '', 26, 1),
(141, '2015-01-15 18:38:10', '128', 'Proclama del Cauca', 2, 'Changed tipo, genero, periodicidad, director and gerentegeneral.', 36, 1),
(142, '2015-01-15 18:41:21', '127', 'Diario del Cauca', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(143, '2015-01-15 18:44:08', '8', 'Casa Editorial de la Sabana SAS', 1, '', 35, 1),
(144, '2015-01-15 18:49:31', '126', 'El Meridiano de Córdoba', 2, 'Changed tipo, genero, periodicidad, director and propietario.', 36, 1),
(145, '2015-01-15 18:51:30', '125', 'El Propio de Córdoba', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(146, '2015-01-15 18:52:51', '124', 'El Propio de Sucre', 2, 'Changed tipo, genero, periodicidad, director and propietario.', 36, 1),
(147, '2015-01-15 18:55:12', '30', 'Luis Germán Rubiano Farak', 1, '', 26, 1),
(148, '2015-01-15 18:55:22', '123', 'El Meridiano de Sucre', 2, 'Changed tipo, medio, genero, director, gerentegeneral and propietario.', 36, 1),
(149, '2015-01-15 18:57:36', '31', 'Javier Ignacio Ramírez Munera', 1, '', 26, 1),
(150, '2015-01-15 18:58:44', '9', 'El Diario del Otún', 1, '', 35, 1),
(151, '2015-01-15 18:58:50', '122', 'El Diario del Otún', 2, 'Changed tipo, genero, periodicidad, direccion, director, gerentegeneral, propietario and telefono.', 36, 1),
(152, '2015-01-15 20:28:43', '2', 'Medellín', 1, '', 30, 1),
(153, '2015-01-15 20:29:32', '10', 'El Colombiano S.A. & CIA. S.C.A.', 1, '', 35, 1),
(154, '2015-01-15 20:29:46', '7', 'El Colombiano.com', 1, '', 42, 1),
(155, '2015-01-15 20:34:08', '3', 'Bolívar', 1, '', 29, 1),
(156, '2015-01-15 20:34:20', '3', 'Cartagena', 1, '', 30, 1),
(157, '2015-01-15 20:35:05', '8', 'El Universal.com', 1, '', 42, 1),
(158, '2015-01-15 20:42:59', '11', 'Editora del Mar S.A.', 1, '', 35, 1),
(159, '2015-01-15 20:44:28', '1', 'Sociedad Anónima ', 1, '', 33, 1),
(160, '2015-01-15 20:59:05', '121', 'Vea Pues', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(161, '2015-01-15 21:05:58', '12', 'Comunicadores de Risaralda', 1, '', 35, 1),
(162, '2015-01-15 21:06:53', '32', 'Juan Guillermo Ángel', 1, '', 26, 1),
(163, '2015-01-15 21:07:04', '120', 'La Tarde de Pereira', 2, 'Changed tipo, genero, periodicidad, director and propietario.', 36, 1),
(164, '2015-01-15 21:08:32', '8', 'El Universal.com', 2, 'Changed inicioyear and propietario.', 42, 1),
(165, '2015-01-15 21:14:03', '13', 'Grupo de Medios de Risaralda', 1, '', 35, 1),
(166, '2015-01-15 21:15:11', '33', 'María Eugenia Velásquez Zapata', 1, '', 26, 1),
(167, '2015-01-15 21:15:50', '119', 'Q´hubo Pereira', 2, 'Changed tipo, genero, director, propietario and telefono.', 36, 1),
(168, '2015-01-15 21:17:08', '34', 'José Gregorio Esquea', 1, '', 26, 1),
(169, '2015-01-15 21:17:17', '117', 'Hoy Diario del Magdalena', 2, 'Changed tipo, genero and director.', 36, 1),
(170, '2015-01-15 21:18:40', '8', 'El Universal.com', 2, 'No fields changed.', 42, 1),
(171, '2015-01-15 21:19:00', '14', 'Casa Editorial El Heraldo', 1, '', 35, 1),
(172, '2015-01-15 21:19:51', '116', 'Al Día Santa Marta', 2, 'Changed tipo, genero and propietario.', 36, 1),
(173, '2015-01-15 21:21:14', '35', 'Rosa Paulina Vives', 1, '', 26, 1),
(174, '2015-01-15 21:21:40', '115', 'El Informador', 2, 'Changed tipo, genero, gerentegeneral and telefono.', 36, 1),
(175, '2015-01-15 21:23:13', '114', 'Al Día Cartagena', 2, 'Changed tipo, genero and propietario.', 36, 1),
(176, '2015-01-15 21:24:32', '113', 'Q´hubo Cartagena', 2, 'Changed tipo, genero, propietario and telefono.', 36, 1),
(177, '2015-01-15 21:25:58', '111', 'El Universal', 2, 'Changed tipo, genero, periodicidad, propietario and asociadoamediodigital.', 36, 1),
(178, '2015-01-15 21:28:09', '36', 'Helman Villamizar', 1, '', 26, 1),
(179, '2015-01-15 21:28:12', '110', 'Q´hubo de Barrancabermeja', 2, 'Changed tipo, genero, director and propietario.', 36, 1),
(180, '2015-01-15 21:31:07', '108', 'Q´hubo Bucaramanga', 2, 'Changed tipo, genero, director and propietario.', 36, 1),
(181, '2015-01-15 21:32:26', '109', 'Q´hubo Sur de Santander', 2, 'Changed tipo, genero and propietario.', 36, 1),
(182, '2015-01-15 21:32:44', '108', 'Q´hubo Bucaramanga', 2, 'No fields changed.', 36, 1),
(183, '2015-01-15 21:32:57', '109', 'Q´hubo Sur de Santander', 2, 'Changed director.', 36, 1),
(184, '2015-01-15 21:34:09', '107', 'El Frente', 2, 'Changed tipo and genero.', 36, 1),
(185, '2015-01-15 21:38:12', '106', 'El Tiempo Bucaramanga', 2, 'Changed tipo, genero and propietario.', 36, 1),
(186, '2015-01-15 21:38:53', '15', 'Caracol Televisión S.A', 1, '', 35, 1),
(187, '2015-01-15 21:41:49', '37', 'Sebastián Hiler', 1, '', 26, 1),
(188, '2015-01-15 21:43:36', '38', 'Alejandro Galvis Blanco', 1, '', 26, 1),
(189, '2015-01-15 21:43:46', '39', 'Gonzalo Córdoba Mallarino', 1, '', 26, 1),
(190, '2015-01-15 21:43:53', '105', 'Vanguardia Liberal', 2, 'Changed tipo, genero, periodicidad, director, gerentegeneral and propietario.', 36, 1),
(191, '2015-01-15 21:45:13', '104', 'La Opinión de Cúcuta', 2, 'Changed tipo, genero and periodicidad.', 36, 1),
(192, '2015-01-15 21:46:03', '9', 'Caracol tv.com', 1, '', 42, 1),
(193, '2015-01-15 21:46:26', '16', 'Grupo Nacional de Medios', 1, '', 35, 1),
(194, '2015-01-15 21:47:02', '40', 'Alejandro Samper', 1, '', 26, 1),
(195, '2015-01-15 21:47:41', '103', 'Q´hubo Manizales', 2, 'Changed tipo, genero, periodicidad, director and propietario.', 36, 1),
(196, '2015-01-15 21:48:07', '102', 'El Tiempo Manizales', 2, 'Changed tipo, genero and propietario.', 36, 1),
(197, '2015-01-15 21:52:31', '101', 'La Patria de Manizales ', 2, 'Changed tipo, genero and periodicidad.', 36, 1),
(198, '2015-01-15 21:53:11', '41', 'Tatiana Restrepo Pelaez', 1, '', 26, 1),
(199, '2015-01-15 21:54:16', '9', 'Caracol tv.com', 2, 'Changed director and observaciones.', 42, 1),
(200, '2015-01-15 21:55:37', '42', 'Alejandro Delgado', 1, '', 26, 1),
(201, '2015-01-15 21:55:40', '100', 'Q´hubo Barranquilla', 2, 'Changed tipo, genero, gerentegeneral and propietario.', 36, 1),
(202, '2015-01-15 21:55:49', '4', 'Valle del Cauca ', 1, '', 29, 1),
(203, '2015-01-15 21:56:34', '99', 'El Tiempo Barranquilla', 2, 'Changed tipo, genero and propietario.', 36, 1),
(204, '2015-01-15 21:58:43', '4', 'Cali', 1, '', 30, 1),
(205, '2015-01-15 21:58:58', '5', 'Cartago', 1, '', 30, 1),
(206, '2015-01-15 21:58:58', '98', 'El Heraldo', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(207, '2015-01-15 21:59:01', '6', 'Buga', 1, '', 30, 1),
(208, '2015-01-15 21:59:22', '7', 'Sevilla', 1, '', 30, 1),
(209, '2015-01-15 21:59:27', '8', 'Tulua', 1, '', 30, 1),
(210, '2015-01-15 21:59:46', '43', 'Marco Schwartz', 1, '', 26, 1),
(211, '2015-01-15 21:59:58', '98', 'El Heraldo', 2, 'Changed director.', 36, 1),
(212, '2015-01-15 22:00:19', '9', 'Roldanillo', 1, '', 30, 1),
(213, '2015-01-15 22:00:44', '10', 'Buenaventura', 1, '', 30, 1),
(214, '2015-01-15 22:00:55', '11', 'Ginebra', 1, '', 30, 1),
(215, '2015-01-15 22:02:13', '12', 'Palmira', 1, '', 30, 1),
(216, '2015-01-15 22:04:00', '5', 'Lunes a viernes', 1, '', 32, 1),
(217, '2015-01-15 22:04:23', '97', 'Diario ADN Barranquilla', 2, 'Changed tipo, genero and periodicidad.', 36, 1),
(218, '2015-01-15 22:05:00', '17', 'El País. S.A', 1, '', 35, 1),
(219, '2015-01-15 22:05:38', '6', 'Dos o tres veces por semana', 1, '', 32, 1),
(220, '2015-01-15 22:05:44', '96', 'Diario Mio Medellín', 2, 'Changed tipo, genero, periodicidad and propietario.', 36, 1),
(221, '2015-01-15 22:06:06', '97', 'Diario ADN Barranquilla', 2, 'Changed propietario.', 36, 1),
(222, '2015-01-15 22:06:12', '10', 'El País.com.co', 1, '', 42, 1),
(223, '2015-01-15 22:09:35', '44', 'Rodrigo Morales', 1, '', 26, 1),
(224, '2015-01-15 22:09:46', '95', 'Q´hubo Medellín', 2, 'Changed tipo, genero, director and propietario.', 36, 1),
(225, '2015-01-15 22:10:12', '94', 'El Tiempo Medellín', 2, 'Changed tipo, genero and propietario.', 36, 1),
(226, '2015-01-15 22:12:58', '45', 'Juan David Correa', 1, '', 26, 1),
(227, '2015-01-15 22:13:07', '46', 'Felipe Lloreda', 1, '', 26, 1),
(228, '2015-01-15 22:13:15', '47', 'Alexandra Plata', 1, '', 26, 1),
(229, '2015-01-15 22:13:32', '93', 'ADN Medellin', 2, 'Changed tipo, genero, ciudad, director, gerentegeneral and propietario.', 36, 1),
(230, '2015-01-15 22:14:11', '10', 'El País.com.co', 2, 'Changed director and gerentegeneral.', 42, 1),
(231, '2015-01-15 22:14:34', '92', 'El Colombiano', 2, 'Changed tipo, genero, region, periodicidad and propietario.', 36, 1),
(232, '2015-01-15 22:14:48', '10', 'El País.com.co', 2, 'Changed inicioyear.', 42, 1),
(233, '2015-01-15 22:15:34', '48', 'Martha Ortiz Gómez', 1, '', 26, 1),
(234, '2015-01-15 22:15:41', '92', 'El Colombiano', 2, 'Changed director.', 36, 1),
(235, '2015-01-15 22:16:48', '92', 'El Colombiano', 2, 'Changed asociadoamediodigital.', 36, 1),
(236, '2015-01-15 22:19:03', '49', 'Irene Gaviria Correa', 1, '', 26, 1),
(237, '2015-01-15 22:19:27', '50', 'Ángela María Marulanda Maya', 1, '', 26, 1),
(238, '2015-01-15 22:20:10', '91', 'El Mundo', 2, 'Changed tipo, genero, region, director and gerentegeneral.', 36, 1),
(239, '2015-01-15 22:22:09', '51', 'Ricardo Avila Pinto', 1, '', 26, 1),
(240, '2015-01-15 22:22:17', '90', 'Portafolio', 2, 'Changed tipo, genero, periodicidad, director and propietario.', 36, 1),
(241, '2015-01-15 22:24:33', '18', 'Comunican S.A.', 1, '', 35, 1),
(242, '2015-01-15 22:26:07', '7', 'Quincenal', 1, '', 32, 1),
(243, '2015-01-15 22:26:40', '52', 'Jairo Dueñas Villamil', 1, '', 26, 1),
(244, '2015-01-15 22:27:03', '89', 'Revista Cromos', 2, 'Changed genero, periodicidad, director and propietario.', 36, 1),
(245, '2015-01-15 22:49:16', '11', '90 minutos.com', 1, '', 42, 1),
(246, '2015-01-15 22:50:36', '11', '90 minutos.com', 2, 'Changed region.', 42, 1),
(247, '2015-01-15 22:50:57', '11', '90 minutos.com', 2, 'Changed ciudad.', 42, 1),
(248, '2015-01-15 23:10:03', '19', 'Sociedad Televisión del Pacífico -Telepacífico-', 1, '', 35, 1),
(249, '2015-01-15 23:14:32', '2', 'Sociedad Limitada ', 1, '', 33, 1),
(250, '2015-01-15 23:16:24', '20', 'Sociedad Canal Regional de Televisión del Pacífico Ltda.', 1, '', 35, 1),
(251, '2015-01-15 23:17:24', '53', 'Andrés Mauricio Prieto Calambás', 1, '', 26, 1),
(252, '2015-01-15 23:18:45', '11', '90 minutos.com', 2, 'Changed gerentegeneral, propietario and asociadoacanaltv.', 42, 1),
(253, '2015-01-15 23:19:31', '3', 'Deportivo', 1, '', 41, 1),
(254, '2015-01-15 23:26:18', '54', 'Óscar Ostos', 1, '', 26, 1),
(255, '2015-01-15 23:26:38', '12', 'Futbolred.com', 1, '', 42, 1),
(256, '2015-01-15 23:31:25', '55', 'David Matoses', 1, '', 26, 1),
(257, '2015-01-15 23:31:28', '12', 'Futbolred.com', 2, 'Changed gerentegeneral.', 42, 1),
(258, '2015-01-15 23:59:33', '56', ' María Elvira Bonilla ', 1, '', 26, 1),
(259, '2015-01-16 00:01:37', '13', 'Las 2 Orillas.co', 1, '', 42, 1),
(260, '2015-01-16 00:12:55', '14', 'Vanguardia.com', 1, '', 42, 1),
(261, '2015-01-16 00:23:05', '1', 'Generalista', 1, '', 37, 1),
(262, '2015-01-16 00:23:27', '2', 'Música', 1, '', 37, 1),
(263, '2015-01-16 02:25:19', '196', 'Oasis', 1, '', 38, 1),
(264, '2015-01-16 02:25:32', '196', 'Oasis', 2, 'No fields changed.', 38, 1),
(265, '2015-01-16 02:25:50', '196', 'Oasis', 2, 'No fields changed.', 38, 1),
(266, '2015-01-16 02:26:04', '196', 'Oasis', 2, 'No fields changed.', 38, 1),
(267, '2015-01-16 02:26:19', '196', 'Oasis', 2, 'Changed frecuencia.', 38, 1),
(268, '2015-01-16 02:26:29', '196', 'Oasis', 2, 'Changed ciudad.', 38, 1),
(269, '2015-01-16 02:26:53', '196', 'Oasis', 2, 'Changed sitioweb.', 38, 1),
(270, '2015-01-16 02:27:29', '196', 'Oasis', 2, 'No fields changed.', 38, 1),
(271, '2015-01-16 02:42:13', '145', 'El Diario', 2, 'Changed region.', 36, 1),
(272, '2015-01-16 02:56:03', '145', 'El Diario', 2, 'Changed region.', 36, 1),
(273, '2015-01-16 03:38:01', '162', 'Cartagena De Indias - Bolívar', 3, '', 30, 1),
(274, '2015-01-16 03:38:09', '3', 'Cartagena de Indias - Bolívar', 2, 'Changed ciudad.', 30, 1),
(275, '2015-01-16 03:40:43', '1053', 'Tuluá - Valle del Cauca', 3, '', 30, 1),
(276, '2015-01-16 03:40:43', '1050', 'Sevilla - Valle del Cauca', 3, '', 30, 1),
(277, '2015-01-16 03:40:43', '1048', 'Roldanillo - Valle del Cauca', 3, '', 30, 1),
(278, '2015-01-16 03:40:43', '1044', 'Palmira - Valle del Cauca', 3, '', 30, 1),
(279, '2015-01-16 03:40:43', '1037', 'Ginebra - Valle del Cauca', 3, '', 30, 1),
(280, '2015-01-16 03:40:43', '1030', 'Cartago - Valle del Cauca', 3, '', 30, 1),
(281, '2015-01-16 03:40:43', '1025', 'Guadalajara De Buga - Valle del Cauca', 3, '', 30, 1),
(282, '2015-01-16 03:40:43', '1024', 'Buenaventura - Valle del Cauca', 3, '', 30, 1),
(283, '2015-01-16 03:40:43', '1018', 'Cali - Valle del Cauca', 3, '', 30, 1),
(284, '2015-01-16 03:40:53', '12', 'Palmira - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(285, '2015-01-16 03:41:07', '11', 'Ginebra - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(286, '2015-01-16 03:41:13', '10', 'Buenaventura - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(287, '2015-01-16 03:41:18', '9', 'Roldanillo - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(288, '2015-01-16 03:41:24', '8', 'Tuluá - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(289, '2015-01-16 03:41:29', '7', 'Sevilla - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(290, '2015-01-16 03:41:36', '6', 'Guadalajara De Buga - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(291, '2015-01-16 03:41:41', '5', 'Cartago - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(292, '2015-01-16 03:41:46', '4', 'Cali - Valle del Cauca', 2, 'Changed ciudad.', 30, 1),
(293, '2015-01-16 13:10:14', '1', 'Los Andes', 1, '', 11, 1),
(294, '2015-01-16 13:10:48', '16', 'VTV2 Valle Televisión', 2, 'Changed region, ciudad and direccion.', 21, 1),
(295, '2015-01-16 13:11:24', '2', 'San Antonio', 1, '', 11, 1),
(296, '2015-01-16 13:13:27', '18', 'Giro Visual', 2, 'Changed region and ciudad.', 21, 1),
(297, '2015-01-16 13:13:46', '3', 'Isla Negra', 1, '', 11, 1),
(298, '2015-01-16 13:14:58', '19', 'Litoral de los Poetas TV', 2, 'Changed cobertura, region and ciudad.', 21, 1),
(299, '2015-01-16 13:15:17', '20', 'Canal 2', 2, 'Changed region and ciudad.', 21, 1),
(300, '2015-01-16 13:15:50', '4', 'Vicuña', 1, '', 11, 1),
(301, '2015-01-16 13:15:53', '22', 'Canal 5', 2, 'Changed region and ciudad.', 21, 1),
(302, '2015-01-16 13:16:39', '8', 'VIII Región del Biobío', 1, '', 10, 1),
(303, '2015-01-16 13:16:56', '5', 'Concepción', 1, '', 11, 1),
(305, '2015-01-16 13:58:21', '25', 'Tele Angol', 2, 'Changed comuna.', 21, 1),
(306, '2015-01-16 14:23:21', '9', 'Política', 1, '', 28, 1),
(307, '2015-01-16 14:27:09', '57', 'Juan Mario Laserna', 1, '', 26, 1),
(308, '2015-01-16 14:28:12', '88', 'Revista Dinero', 2, 'Changed genero, periodicidad, gerentegeneral and propietario.', 36, 1),
(309, '2015-01-16 14:30:19', '87', 'Revista Semana', 2, 'Changed genero, periodicidad, director, gerentegeneral, propietario and asociadoamediodigital.', 36, 1),
(310, '2015-01-16 14:31:40', '58', 'Fernando Quijano', 1, '', 26, 1),
(311, '2015-01-16 14:32:06', '86', 'La República', 2, 'Changed tipo, genero, director, propietario and lectoria.', 36, 1),
(312, '2015-01-16 14:33:31', '59', 'Alberto Abello', 1, '', 26, 1),
(313, '2015-01-16 14:33:55', '60', 'Jaime Eduardo Hoyos', 1, '', 26, 1),
(314, '2015-01-16 14:34:26', '85', 'El Nuevo Siglo', 2, 'Changed tipo, genero, periodicidad, direccion, director and gerentegeneral.', 36, 1),
(315, '2015-01-16 14:35:26', '21', 'Metro Internacional', 1, '', 35, 1),
(316, '2015-01-16 14:35:59', '61', 'Claudio Garrido', 1, '', 26, 1),
(317, '2015-01-16 14:36:21', '62', 'Lina María Molina', 1, '', 26, 1),
(318, '2015-01-16 14:36:39', '84', 'Publimetro', 2, 'Changed tipo, genero, periodicidad, director, gerentegeneral and propietario.', 36, 1),
(319, '2015-01-16 14:37:12', '14', 'Vanguardia.com', 2, 'Changed nativoasociado, region, ciudad, direccion, propietario and asociadoaescrito.', 42, 1),
(320, '2015-01-16 14:38:35', '63', 'José Fernando Millan', 1, '', 26, 1),
(321, '2015-01-16 14:38:56', '83', 'ADN Bogotá', 2, 'Changed tipo, genero, periodicidad, direccion, director and propietario.', 36, 1),
(322, '2015-01-16 14:39:44', '82', 'Diario Mío Bogotá', 2, 'Changed tipo, genero, region and propietario.', 36, 1),
(323, '2015-01-16 14:40:30', '82', 'Diario Mío Bogotá', 2, 'Changed periodicidad.', 36, 1),
(324, '2015-01-16 14:40:44', '83', 'ADN Bogotá', 2, 'Changed region.', 36, 1),
(325, '2015-01-16 14:41:28', '83', 'ADN Bogotá', 2, 'Changed ciudad.', 36, 1),
(326, '2015-01-16 14:41:59', '82', 'Diario Mío Bogotá', 2, 'Changed ciudad.', 36, 1),
(327, '2015-01-16 14:43:25', '81', 'El Tiempo', 2, 'Changed tipo, genero, periodicidad, director, gerentegeneral, propietario and asociadoamediodigital.', 36, 1),
(328, '2015-01-16 14:43:52', '14', 'Vanguardia.com', 2, 'Changed director, gerentegeneral and telefono.', 42, 1),
(329, '2015-01-16 14:44:48', '80', 'El Espectador', 2, 'Changed tipo, genero, periodicidad, director, gerentegeneral, propietario and asociadoamediodigital.', 36, 1),
(330, '2015-01-16 15:37:10', '22', 'Caracol Radio', 1, '', 35, 1),
(331, '2015-01-16 15:43:42', '195', 'Radio Activa', 2, 'Changed genero, propietario and indiceaudiencia.', 38, 1),
(332, '2015-01-16 15:48:04', '194', 'Tolima Stereo', 2, 'Changed genero and region.', 38, 1),
(333, '2015-01-16 15:49:07', '193', 'Arauca Stereo', 2, 'Changed genero and region.', 38, 1),
(334, '2015-01-16 15:50:25', '23', 'Grupo Editorial El Rayo', 1, '', 35, 1),
(335, '2015-01-16 15:51:10', '192', 'Archipielago Radio', 2, 'Changed genero, region and propietario.', 38, 1),
(336, '2015-01-16 15:52:10', '191', 'Radio Guatapuri', 2, 'Changed genero and region.', 38, 1),
(337, '2015-01-16 15:58:23', '24', 'RCN Radio', 1, '', 35, 1),
(338, '2015-01-16 16:00:41', '64', 'Fernando Molina Soto', 1, '', 26, 1),
(339, '2015-01-16 16:00:48', '189', 'Radio Calidad Cali', 2, 'Changed medio, genero, frecuencia, cobertura, ciudad, gerentegeneral and propietario.', 38, 1),
(340, '2015-01-16 16:31:01', '65', 'Wilinton Andrade', 1, '', 26, 1),
(341, '2015-01-16 16:31:09', '25', 'Interlatin Corporation', 1, '', 35, 1),
(342, '2015-01-16 16:34:58', '26', 'www.colombia.com Ltda', 1, '', 35, 1),
(343, '2015-01-16 16:39:37', '15', 'Colombia.com', 1, '', 42, 1),
(344, '2015-01-16 16:48:01', '15', 'Colombia.com', 2, 'Changed telefono and observaciones.', 42, 1),
(345, '2015-01-16 16:54:33', '27', 'Caracol S.A.', 1, '', 35, 1),
(346, '2015-01-16 17:02:39', '66', 'Ricardo Alarcón', 1, '', 26, 1),
(347, '2015-01-16 17:02:49', '67', 'Cristian Diebb', 1, '', 26, 1),
(348, '2015-01-16 17:11:28', '16', 'Caracol.com.co', 1, '', 42, 1),
(349, '2015-01-16 17:14:19', '16', 'Caracol.com.co', 2, 'Changed cobertura, region, ciudad and asociadoaradio.', 42, 1),
(351, '2015-01-16 17:52:34', '2', 'Sociedad Española de Radiodifusión S.L.', 1, '', 34, 1),
(352, '2015-01-16 17:53:47', '27', 'Caracol S.A.', 2, 'Changed sociedadcontroladora.', 35, 1),
(353, '2015-01-16 18:00:11', '68', 'Ana Arciniegas', 1, '', 26, 1),
(354, '2015-01-16 18:01:48', '17', 'Pulzo.com', 1, '', 42, 1),
(355, '2015-01-16 18:09:57', '4', 'Economía y Negocios', 1, '', 41, 1),
(356, '2015-01-16 18:12:35', '18', 'Portafolio.co', 1, '', 42, 1),
(357, '2015-01-16 18:45:29', '1', 'Acción AG', 3, '', 23, 1),
(358, '2015-01-16 18:45:47', '2', 'Acuerdos', 3, '', 23, 1),
(359, '2015-01-16 18:47:01', '1', 'Generalista', 1, '', 20, 1),
(360, '2015-01-16 18:49:16', '1', 'Cristián Bofill', 1, '', 7, 1),
(361, '2015-01-16 18:53:43', '1', 'Canal 13 S.A.', 1, '', 16, 1),
(362, '2015-01-16 19:01:36', '1', 'Canal 13 S.A.', 2, 'Changed utilidades.', 16, 1),
(363, '2015-01-16 19:02:41', '1', 'Carolina García de la Huerta Aguirre', 1, '', 8, 1),
(364, '2015-01-16 19:03:20', '2', 'Rodrigo Álvarez Zenteno', 1, '', 8, 1),
(365, '2015-01-16 19:03:37', '3', 'Soledad Alvear Valenzuela', 1, '', 8, 1),
(366, '2015-01-16 19:03:55', '4', 'René Cortazar', 1, '', 8, 1),
(367, '2015-01-16 19:04:11', '5', 'Patricio Donoso Ibañez', 1, '', 8, 1),
(368, '2015-01-16 19:04:29', '6', 'Alejandro Jadresic Marinovic', 1, '', 8, 1),
(369, '2015-01-16 19:04:57', '7', 'Rodrigo Jordán Fuchs', 1, '', 8, 1),
(370, '2015-01-16 19:05:11', '8', 'Silvia Pellegrini Ripamonti', 1, '', 8, 1),
(371, '2015-01-16 19:05:25', '9', 'Rodrigo Terré Fontbona', 1, '', 8, 1),
(372, '2015-01-16 19:05:41', '10', 'Fabio Valdés Correa', 1, '', 8, 1),
(373, '2015-01-16 19:05:56', '11', 'Marcelo Von Chrismar Werth', 1, '', 8, 1),
(374, '2015-01-16 19:08:52', '2', 'Inversiones Canal 13 SpA', 1, '', 15, 1),
(375, '2015-01-16 19:10:04', '3', 'Inversiones TV-Medios Ltda.', 1, '', 15, 1),
(376, '2015-01-16 19:11:23', '4', 'Pontificia Universidad Católica de Chile', 1, '', 15, 1),
(377, '2015-01-16 19:45:41', '4', 'Canal 13', 2, 'Changed tipo, genero, direccion, sitioweb, director and propietario.', 21, 1),
(378, '2015-01-16 19:46:21', '6', 'Santiago', 1, '', 11, 1),
(379, '2015-01-16 19:46:25', '4', 'Canal 13', 2, 'Changed cobertura, region and ciudad.', 21, 1),
(380, '2015-01-16 19:46:47', '1', 'Canal 13 S.A.', 2, 'Changed presidentedirectorio, miembrosdirectorio, infoutilidades, sociedadcontroladora, pcentsociedadcontroladora, otrasociedada, pcentsociedada, otrasociedadb and pcentsociedadb.', 16, 1),
(381, '2015-01-16 19:49:32', '2', 'Inversiones Canal 13 SpA', 2, 'Changed sociedadcontroladora, pcentsociedadcontroladora, otrasociedada and pcentsociedada.', 15, 1),
(382, '2015-01-16 19:50:51', '12', 'Andrónico Luksic Craig', 1, '', 8, 1),
(383, '2015-01-16 19:51:18', '5', 'Inversiones Consolidadas', 1, '', 15, 1),
(384, '2015-01-16 19:55:32', '6', 'Grupo Luksic', 1, '', 15, 1),
(385, '2015-01-16 19:55:52', '5', 'Inversiones Consolidadas', 2, 'Changed presidentedirectorio, sociedadcontroladora and pcentsociedadcontroladora.', 15, 1),
(386, '2015-01-16 19:56:47', '3', 'Inversiones TV-Medios Ltda.', 2, 'Changed sociedadcontroladora and pcentsociedadcontroladora.', 15, 1),
(387, '2015-01-16 19:58:11', '1', 'Energía y Combustibles', 1, '', 12, 1),
(388, '2015-01-16 19:58:51', '5', 'Inversiones Consolidadas', 2, 'Changed sectores.', 15, 1),
(389, '2015-01-16 20:02:00', '2', 'Alimentos y Bebidas', 1, '', 12, 1),
(390, '2015-01-16 20:02:14', '3', 'Minería', 1, '', 12, 1),
(391, '2015-01-16 20:02:40', '4', 'Finanzas', 1, '', 12, 1),
(392, '2015-01-16 20:02:54', '5', 'Sanitario', 1, '', 12, 1),
(393, '2015-01-16 20:03:32', '6', 'Grupo Luksic', 2, 'Changed sectores.', 15, 1),
(394, '2015-01-16 20:13:25', '4', 'Canal 13', 2, 'Changed rating and inforating.', 21, 1),
(395, '2015-01-16 20:51:18', '1', 'hgjgkjhkj', 1, '', 14, 1),
(396, '2015-01-16 21:03:56', '18', 'Portafolio.co', 2, 'No fields changed.', 42, 1),
(397, '2015-01-16 21:06:23', '15', 'Colombia.com', 2, 'Changed cobertura, visitasunicas and infovisitas.', 42, 1),
(398, '2015-01-16 21:14:13', '2', 'Sociedad Anónima', 1, '', 14, 1),
(399, '2015-01-16 21:14:42', '2', 'Patricio Fernández Chadwick', 1, '', 7, 1),
(400, '2015-01-16 21:15:09', '3', 'Pablo Dittborn', 1, '', 7, 1),
(401, '2015-01-16 21:15:34', '2', 'Comercial The Clinic S.A.', 1, '', 16, 1),
(402, '2015-01-16 21:15:57', '36', 'The Clinic Online', 2, 'Changed medio, sitioweb, nativoasociado, director, gerentegeneral and propietario.', 23, 1),
(403, '2015-01-16 21:17:09', '2', 'Comercial The Clinic S.A.', 2, 'Changed representantelegal.', 16, 1),
(404, '2015-01-16 21:35:31', '52', 'Contrainformate', 2, 'Changed sitioweb.', 23, 1),
(405, '2015-01-16 21:38:00', '54', 'El Bulnensino', 2, 'Changed sitioweb.', 23, 1),
(406, '2015-01-16 21:40:07', '69', 'Daniel Samper Ospina', 1, '', 26, 1),
(407, '2015-01-16 21:44:49', '158', 'Revista Soho', 1, '', 36, 1),
(408, '2015-01-16 21:46:22', '19', 'Soho.com', 1, '', 42, 1),
(409, '2015-01-16 22:12:32', '20', 'El Heraldo.co', 1, '', 42, 1),
(410, '2015-01-16 22:20:37', '21', 'Noticias Caracol.com', 1, '', 42, 1),
(411, '2015-01-16 22:23:44', '9', 'Caracol tv.com', 2, 'No fields changed.', 42, 1),
(412, '2015-01-16 22:27:17', '22', 'Gol Caracol', 1, '', 42, 1),
(413, '2015-01-16 22:37:07', '23', 'Liga Postobon.com.co', 1, '', 42, 1),
(414, '2015-01-16 22:42:58', '24', 'Diario ADN', 1, '', 42, 1),
(415, '2015-01-16 22:53:46', '25', 'Blu Radio.com', 1, '', 42, 1),
(416, '2015-01-16 22:54:11', '25', 'Blu Radio.com', 2, 'Changed region and ciudad.', 42, 1),
(417, '2015-01-16 23:00:22', '26', 'Dinero.com', 1, '', 42, 1),
(418, '2015-01-16 23:18:32', '27', 'Publimetro.co', 1, '', 42, 1),
(419, '2015-01-16 23:40:24', '28', 'La FM.com.co', 1, '', 42, 1),
(420, '2015-01-16 23:43:10', '70', 'Vicky Dávila', 1, '', 26, 1),
(421, '2015-01-16 23:43:53', '28', 'La FM.com.co', 2, 'Changed director and gerentegeneral.', 42, 1),
(422, '2015-01-17 00:10:25', '71', 'Mauricio Correa Peña', 1, '', 26, 1),
(423, '2015-01-17 00:10:37', '29', 'Winsports.co', 1, '', 42, 1),
(424, '2015-01-17 00:13:25', '30', 'La W Radio.com.co', 1, '', 42, 1),
(425, '2015-01-17 00:17:37', '72', 'Julio Sánchez Cristo', 1, '', 26, 1),
(426, '2015-01-17 00:20:42', '30', 'La W Radio.com.co', 2, 'Changed genero, director, gerentegeneral, propietario and telefono.', 42, 1),
(427, '2015-01-17 00:25:35', '31', 'La República.co', 1, '', 42, 1),
(428, '2015-01-17 00:30:45', '5', 'Tecnología', 1, '', 41, 1),
(429, '2015-01-17 00:38:56', '32', 'Enter.co', 1, '', 42, 1),
(430, '2015-01-17 00:47:08', '73', 'Nicolás Restrepo Escobar', 1, '', 26, 1),
(431, '2015-01-17 00:47:54', '33', 'La Patria', 1, '', 42, 1),
(432, '2015-01-17 00:50:21', '6', 'Radio en vivo', 1, '', 41, 1),
(433, '2015-01-17 00:52:04', '34', 'RCN mundo.com', 1, '', 42, 1),
(434, '2015-01-17 00:52:40', '35', 'Antena 2.com.co', 1, '', 42, 1),
(435, '2015-01-17 00:53:01', '34', 'RCN mundo.com', 2, 'Changed asociadoaradio.', 42, 1),
(436, '2015-01-17 01:05:17', '74', 'Luis Alfredo Céspedes', 1, '', 26, 1),
(437, '2015-01-17 01:06:59', '35', 'Antena 2.com.co', 2, 'Changed cobertura, region, ciudad, direccion, director and telefono.', 42, 1),
(438, '2015-01-17 01:14:23', '36', 'Rcn Radio.com', 1, '', 42, 1),
(439, '2015-01-17 01:24:00', '37', 'Terra.com.co', 1, '', 42, 1),
(440, '2015-01-17 01:25:43', '7', 'Político', 1, '', 41, 1),
(441, '2015-01-17 01:34:51', '75', 'Juanita León', 1, '', 26, 1),
(442, '2015-01-17 01:36:03', '38', 'La Silla Vacia.com', 1, '', 42, 1),
(443, '2015-01-17 01:40:30', '76', 'José Eustorgio Colmenares O.', 1, '', 26, 1),
(444, '2015-01-17 01:52:18', '39', 'La Opinión.com.co', 1, '', 42, 1),
(445, '2015-01-17 01:53:54', '8', 'Músical', 1, '', 41, 1),
(446, '2015-01-17 01:59:30', '40', 'Radioactiva.com', 1, '', 42, 1),
(447, '2015-01-17 02:04:26', '77', 'José Clopatofsky L.', 1, '', 26, 1),
(448, '2015-01-17 02:08:03', '9', 'Automotor', 1, '', 41, 1),
(449, '2015-01-17 02:10:29', '10', 'Automotor', 1, '', 28, 1),
(450, '2015-01-17 02:10:43', '159', 'Revista Motor', 1, '', 36, 1),
(451, '2015-01-17 02:12:03', '41', 'Motor.com.co', 1, '', 42, 1),
(452, '2015-01-17 02:16:41', '78', 'María Alejandra Villamizar', 1, '', 26, 1),
(453, '2015-01-17 02:21:22', '42', 'Confidencial Colombia', 1, '', 42, 1),
(454, '2015-01-17 02:46:28', '43', 'Opanoticias.com', 1, '', 42, 1),
(455, '2015-01-17 02:49:23', '79', 'Jerson Ortiz', 1, '', 26, 1),
(456, '2015-01-17 02:49:29', '43', 'Opanoticias.com', 2, 'Changed inicioyear and director.', 42, 1),
(457, '2015-01-17 03:01:28', '10', 'Investigativo', 1, '', 41, 1),
(458, '2015-01-17 03:06:26', '80', 'David González', 1, '', 26, 1),
(459, '2015-01-17 03:08:35', '44', 'La Otra Orilla. co', 1, '', 42, 1),
(460, '2015-01-17 03:10:36', '11', 'Narrativo-investigativo', 1, '', 41, 1),
(461, '2015-01-17 03:11:03', '12', 'Crónica', 1, '', 41, 1),
(462, '2015-01-17 03:15:31', '45', 'Revista Sole.com', 1, '', 42, 1),
(463, '2015-01-17 03:22:53', '81', 'Abelardo Gómez Molina', 1, '', 26, 1),
(464, '2015-01-17 03:32:52', '46', 'Tras la Cola de la Rata.com', 1, '', 42, 1),
(465, '2015-01-17 03:37:37', '47', 'Excelsio.co', 1, '', 42, 1),
(466, '2015-01-17 03:40:33', '82', 'Nelson Alarcón', 1, '', 26, 1),
(467, '2015-01-17 03:42:41', '47', 'Excelsio.co', 2, 'Changed director.', 42, 1),
(468, '2015-01-17 03:49:27', '38', 'R R Editores Ramirez Y Ramirez Ltda', 1, '', 35, 1),
(469, '2015-01-17 03:52:20', '48', 'Diario del Otún.com.co', 1, '', 42, 1),
(470, '2015-01-17 03:57:24', '39', 'uuuuuuuuuuuu', 1, '', 35, 1),
(471, '2015-01-17 03:57:33', '39', 'uuuuuuuuuuuu', 3, '', 35, 1),
(472, '2015-01-17 04:46:20', '298', 'Computerworld', 1, '', 17, 1),
(473, '2015-01-17 04:46:33', '298', 'Computerworld', 3, '', 17, 1),
(474, '2015-01-19 15:43:12', '49', 'El Mundo.com', 1, '', 42, 1),
(475, '2015-01-19 15:45:08', '49', 'El Mundo.com', 2, 'Changed cobertura, region and ciudad.', 42, 1),
(476, '2015-01-19 15:52:30', '13', 'Conflicto Armado', 1, '', 41, 1),
(477, '2015-01-19 16:04:30', '83', 'Martha Ruíz', 1, '', 26, 1),
(478, '2015-01-19 16:05:51', '50', 'Verdad Abierta.com', 1, '', 42, 1),
(479, '2015-01-19 16:18:33', '84', 'Edgar Alfonso Aroca Campo', 1, '', 26, 1),
(480, '2015-01-19 16:23:36', '51', 'Noticias de Villavicencio.com', 1, '', 42, 1),
(481, '2015-01-19 16:32:27', '51', 'Noticias de Villavicencio.com', 2, 'Changed region, ciudad, direccion, gerentegeneral and telefono.', 42, 1),
(482, '2015-01-19 16:45:06', '52', 'Mario en tu radio.com', 1, '', 42, 1),
(483, '2015-01-19 16:57:13', '85', 'Hernando Gómez Buendía', 1, '', 26, 1),
(484, '2015-01-19 16:59:18', '53', 'Razón Pública.com', 1, '', 42, 1),
(485, '2015-01-19 17:00:31', '40', 'Fundación Razón Pública', 1, '', 35, 1),
(486, '2015-01-19 17:00:54', '53', 'Razón Pública.com', 2, 'Changed propietario.', 42, 1),
(487, '2015-01-19 17:16:55', '54', 'Soy de Buenaventura.com', 1, '', 42, 1),
(488, '2015-01-19 17:18:52', '41', ' Casa Editorial Welcome', 1, '', 35, 1),
(489, '2015-01-19 17:23:17', '154', 'El Isleño', 2, 'Changed region and ciudad.', 36, 1),
(490, '2015-01-19 17:23:51', '153', 'Diario del Sur', 2, 'Changed region.', 36, 1),
(491, '2015-01-19 17:24:36', '55', 'El Isleño', 1, '', 42, 1),
(492, '2015-01-19 17:25:35', '152', 'El Líder Diario Caqueteño', 2, 'Changed region.', 36, 1),
(493, '2015-01-19 17:26:08', '153', 'Diario del Sur', 2, 'Changed region.', 36, 1),
(494, '2015-01-19 17:28:19', '56', 'San Andrés Hoy', 1, '', 42, 1),
(495, '2015-01-19 17:40:02', '57', 'El Diario.com', 1, '', 42, 1),
(496, '2015-01-19 17:45:21', '58', 'El Líder', 1, '', 42, 1),
(497, '2015-01-19 17:53:06', '42', 'Agenda Propia', 1, '', 35, 1),
(498, '2015-01-19 17:56:29', '59', 'Agenda Propia.com', 1, '', 42, 1),
(499, '2015-01-19 18:07:25', '60', 'Diario del Huila', 1, '', 42, 1),
(500, '2015-01-19 18:10:29', '151', 'La Guajira Hoy', 2, 'Changed region.', 36, 1),
(501, '2015-01-19 18:10:47', '86', 'James Arles Ruiz Medina', 1, '', 26, 1),
(502, '2015-01-19 18:12:01', '61', 'Periodico Virtual.com', 1, '', 42, 1),
(503, '2015-01-19 18:12:03', '149', 'Q´hubo Valledupar', 2, 'Changed region and ciudad.', 36, 1),
(504, '2015-01-19 18:12:31', '148', 'El Pilón', 2, 'Changed region.', 36, 1),
(505, '2015-01-19 18:13:19', '147', 'Q´hubo Ibagué', 2, 'Changed region and ciudad.', 36, 1),
(506, '2015-01-19 18:14:10', '146', 'Entérese', 2, 'Changed region.', 36, 1),
(507, '2015-01-19 18:14:41', '145', 'El Diario', 2, 'Changed region.', 36, 1),
(508, '2015-01-19 18:15:06', '144', 'Puente Boyacense', 2, 'Changed region.', 36, 1),
(509, '2015-01-19 18:15:50', '143', 'Boyacá Siete Días', 2, 'Changed region.', 36, 1),
(510, '2015-01-19 18:16:44', '142', 'Extra Cali', 2, 'Changed region and ciudad.', 36, 1),
(511, '2015-01-19 18:17:25', '141', 'Diario Mio Cali', 2, 'Changed tipo, region and ciudad.', 36, 1),
(512, '2015-01-19 18:18:38', '62', 'A la Luz Pública.com', 1, '', 42, 1),
(513, '2015-01-19 18:18:47', '139', 'El Diario de Occidente', 2, 'Changed tipo, region and ciudad.', 36, 1),
(514, '2015-01-19 18:19:30', '138', 'El País de Cali', 2, 'Changed region and ciudad.', 36, 1),
(515, '2015-01-19 18:20:03', '137', 'Q´hubo Cali', 2, 'Changed region and ciudad.', 36, 1),
(516, '2015-01-19 18:20:27', '136', 'ADN Cali', 2, 'Changed region and ciudad.', 36, 1),
(517, '2015-01-19 18:21:15', '135', 'Q´hubo Villavicencio', 2, 'Changed region and ciudad.', 36, 1),
(518, '2015-01-19 18:21:58', '134', 'Llano Siete Días', 2, 'Changed region.', 36, 1),
(519, '2015-01-19 18:22:42', '133', 'Extra Llanos', 2, 'Changed region.', 36, 1),
(520, '2015-01-19 18:23:03', '87', 'Luis Carlos Chamorro Burbano', 1, '', 26, 1),
(521, '2015-01-19 18:23:24', '132', 'Crónica del Quindio', 2, 'Changed region.', 36, 1),
(522, '2015-01-19 18:23:55', '131', 'El Nuevo Día', 2, 'Changed region.', 36, 1),
(523, '2015-01-19 18:27:48', '130', 'Extra Huila', 2, 'Changed region and ciudad.', 36, 1),
(524, '2015-01-19 18:28:11', '129', 'Diario del Huila', 2, 'Changed region.', 36, 1),
(525, '2015-01-19 18:28:39', '128', 'Proclama del Cauca', 2, 'Changed region.', 36, 1),
(526, '2015-01-19 18:29:20', '127', 'Diario del Cauca', 2, 'Changed region.', 36, 1),
(527, '2015-01-19 18:29:57', '126', 'El Meridiano de Córdoba', 2, 'Changed region.', 36, 1),
(528, '2015-01-19 18:30:21', '125', 'El Propio de Córdoba', 2, 'Changed region.', 36, 1),
(529, '2015-01-19 18:31:00', '124', 'El Propio de Sucre', 2, 'Changed region.', 36, 1),
(530, '2015-01-19 18:31:25', '123', 'El Meridiano de Sucre', 2, 'Changed region.', 36, 1),
(531, '2015-01-19 18:31:27', '63', 'Mi Putumayo.com', 1, '', 42, 1),
(532, '2015-01-19 18:32:06', '122', 'El Diario del Otún', 2, 'Changed region.', 36, 1),
(533, '2015-01-19 18:34:16', '121', 'Vea Pues', 2, 'Changed region and ciudad.', 36, 1),
(534, '2015-01-19 18:34:54', '120', 'La Tarde de Pereira', 2, 'Changed region and ciudad.', 36, 1),
(535, '2015-01-19 18:35:32', '119', 'Q´hubo Pereira', 2, 'Changed region and ciudad.', 36, 1),
(536, '2015-01-19 18:36:08', '117', 'Hoy Diario del Magdalena', 2, 'Changed region.', 36, 1),
(537, '2015-01-19 18:37:37', '116', 'Al Día Santa Marta', 2, 'Changed region and ciudad.', 36, 1),
(538, '2015-01-19 18:39:55', '115', 'El Informador', 2, 'Changed region.', 36, 1),
(539, '2015-01-19 18:40:59', '114', 'Al Día Cartagena', 2, 'Changed region and ciudad.', 36, 1),
(540, '2015-01-19 18:41:36', '113', 'Q´hubo Cartagena', 2, 'Changed region and ciudad.', 36, 1),
(541, '2015-01-19 18:42:17', '111', 'El Universal', 2, 'Changed region.', 36, 1),
(542, '2015-01-19 18:43:26', '110', 'Q´hubo de Barrancabermeja', 2, 'Changed region and ciudad.', 36, 1),
(543, '2015-01-19 18:44:11', '109', 'Q´hubo Sur de Santander', 2, 'Changed region and ciudad.', 36, 1),
(544, '2015-01-19 18:44:46', '108', 'Q´hubo Bucaramanga', 2, 'Changed region and ciudad.', 36, 1),
(545, '2015-01-19 18:45:38', '107', 'El Frente', 2, 'Changed region and ciudad.', 36, 1),
(546, '2015-01-19 18:46:13', '105', 'Vanguardia Liberal', 2, 'Changed region.', 36, 1),
(547, '2015-01-19 18:46:59', '104', 'La Opinión de Cúcuta', 2, 'Changed region.', 36, 1),
(548, '2015-01-19 18:47:46', '103', 'Q´hubo Manizales', 2, 'Changed region and ciudad.', 36, 1),
(549, '2015-01-19 18:48:33', '101', 'La Patria de Manizales ', 2, 'Changed region.', 36, 1),
(550, '2015-01-19 18:49:08', '100', 'Q´hubo Barranquilla', 2, 'Changed region and ciudad.', 36, 1),
(551, '2015-01-19 18:50:40', '98', 'El Heraldo', 2, 'Changed region.', 36, 1),
(552, '2015-01-19 18:51:22', '97', 'Diario ADN Barranquilla', 2, 'Changed region and ciudad.', 36, 1),
(553, '2015-01-19 18:52:26', '96', 'Diario Mio Medellín', 2, 'Changed region and ciudad.', 36, 1),
(554, '2015-01-19 18:52:57', '95', 'Q´hubo Medellín', 2, 'Changed region and ciudad.', 36, 1),
(555, '2015-01-19 18:53:25', '93', 'ADN Medellin', 2, 'Changed region.', 36, 1),
(556, '2015-01-19 18:53:46', '92', 'El Colombiano', 2, 'No fields changed.', 36, 1),
(557, '2015-01-19 19:07:52', '187', 'Ondas del Meta 1170 AM ', 2, 'Changed region.', 38, 1),
(558, '2015-01-19 19:08:49', '185', 'Sogamoso', 2, 'Changed region.', 38, 1),
(559, '2015-01-19 19:09:21', '184', 'Boyacá 95.6', 2, 'Changed region.', 38, 1),
(560, '2015-01-19 19:09:47', '183', 'Javeriana Stereo', 2, 'Changed genero.', 38, 1),
(561, '2015-01-19 19:10:53', '187', 'Ondas del Meta 1170 AM ', 2, 'Changed genero.', 38, 1),
(562, '2015-01-19 19:11:13', '181', 'Emisora Policía Nacional', 2, 'No fields changed.', 38, 1),
(563, '2015-01-19 19:12:24', '179', 'Emisora UIS Stereo', 2, 'Changed region.', 38, 1),
(564, '2015-01-19 19:12:52', '178', 'Emisora del Atlántico ', 2, 'Changed region and sitioweb.', 38, 1),
(565, '2015-01-19 19:13:23', '178', 'Emisora del Atlántico ', 2, 'Changed genero.', 38, 1),
(566, '2015-01-19 19:16:08', '177', 'Olímpica Stereo', 2, 'Changed genero and indiceaudiencia.', 38, 1),
(567, '2015-01-19 19:18:28', '175', 'Radio Santa Fé', 2, 'Changed region and ciudad.', 38, 1),
(568, '2015-01-19 19:18:53', '176', 'Candela Stereo', 2, 'Changed genero.', 38, 1),
(569, '2015-01-19 19:22:56', '1135', 'Túmaco-Chocó', 1, '', 30, 1),
(570, '2015-01-19 19:34:14', '173', 'Blu Radio ', 2, 'Changed genero, frecuencia and sitioweb.', 38, 1),
(571, '2015-01-19 19:34:25', '172', 'La FM ', 2, 'Changed genero and sitioweb.', 38, 1),
(572, '2015-01-19 19:35:30', '171', 'La W Radio ', 2, 'Changed genero and sitioweb.', 38, 1),
(573, '2015-01-19 19:35:39', '170', 'RCN Radio', 2, 'Changed genero and sitioweb.', 38, 1),
(574, '2015-01-19 19:36:08', '169', 'Caracol Radio', 2, 'Changed sitioweb and indiceaudiencia.', 38, 1),
(575, '2015-01-19 20:14:40', '64', 'Tumacopopolo', 1, '', 42, 1),
(576, '2015-01-19 20:26:18', '65', 'TeleOrinoco Noticias.com', 1, '', 42, 1),
(577, '2015-01-19 21:51:58', '88', 'Miguel Ángel Cristancho', 1, '', 26, 1),
(578, '2015-01-19 21:59:24', '66', 'Prensa Libre Casanare.com', 1, '', 42, 1),
(579, '2015-01-19 22:03:30', '67', 'El diario del Llano.com', 1, '', 42, 1),
(580, '2015-01-20 05:32:34', '297', 'HoyxHoy', 2, 'No fields changed.', 17, 1),
(581, '2015-01-20 05:32:44', '296', 'Sol de Arica', 2, 'Changed propietario.', 17, 1),
(582, '2015-01-20 05:32:51', '296', 'Sol de Arica', 2, 'Changed propietario.', 17, 1),
(583, '2015-01-20 05:36:57', '26', 'Pucón TV', 2, 'No fields changed.', 21, 1),
(584, '2015-01-20 05:37:19', '28', 'Canal 89', 1, '', 21, 1),
(585, '2015-01-20 05:37:30', '28', 'Canal 89', 3, '', 21, 1),
(586, '2015-01-20 05:40:10', '109', 'Universidad del Bío Bío ', 2, 'No fields changed.', 19, 1),
(587, '2015-01-20 05:43:44', '70', 'sipo', 1, '', 23, 1),
(588, '2015-01-20 05:43:52', '70', 'sipo', 2, 'No fields changed.', 23, 1),
(589, '2015-01-20 05:43:58', '70', 'sipo', 3, '', 23, 1),
(590, '2015-01-20 05:44:03', '66', 'Soy Tomé', 2, 'Changed sitioweb.', 23, 1),
(591, '2015-01-20 05:48:59', '6', 'Grupo Luksic', 2, 'No fields changed.', 15, 1),
(592, '2015-01-20 05:51:58', '4', 'uuuuuuuuuuuu', 1, '', 16, 1),
(593, '2015-01-20 05:52:08', '4', 'uuuuuuuuuuuu', 3, '', 16, 1),
(594, '2015-01-20 05:52:34', '1', 'hgjgkjhkj', 3, '', 14, 1),
(595, '2015-01-20 06:04:26', '161', 'oppppp', 1, '', 36, 1),
(596, '2015-01-20 06:04:36', '161', 'oppppp', 3, '', 36, 1),
(597, '2015-01-20 06:04:49', '162', 'lllllllllllll', 1, '', 36, 1),
(598, '2015-01-20 06:04:56', '162', 'lllllllllllll', 3, '', 36, 1),
(599, '2015-01-20 06:06:46', '28', 'Canal 13', 1, '', 40, 1),
(600, '2015-01-20 06:06:54', '28', 'Canal 13', 3, '', 40, 1),
(601, '2015-01-20 06:08:38', '199', 'oppppp', 1, '', 38, 1),
(602, '2015-01-20 06:08:55', '199', 'oppppp', 3, '', 38, 1),
(603, '2015-01-20 06:08:55', '196', 'Oasis', 3, '', 38, 1),
(604, '2015-01-20 06:11:05', '70', 'ññññññññññññ', 1, '', 42, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(605, '2015-01-20 06:11:14', '67', 'El diario del Llano.com', 2, 'Changed cobertura.', 42, 1),
(606, '2015-01-20 06:11:21', '70', 'ññññññññññññ', 3, '', 42, 1),
(607, '2015-01-20 06:14:05', '42', 'Agenda Propia', 2, 'No fields changed.', 35, 1),
(608, '2015-01-20 06:14:33', '2', 'Sociedad Española de Radiodifusión S.L.', 2, 'No fields changed.', 34, 1),
(609, '2015-01-20 06:15:20', '3', 'UC', 1, '', 34, 1),
(610, '2015-01-20 06:15:38', '3', 'UC', 2, 'No fields changed.', 34, 1),
(611, '2015-01-20 06:15:48', '3', 'UC', 3, '', 34, 1),
(612, '2015-01-20 06:16:16', '43', 'jio', 1, '', 35, 1),
(613, '2015-01-20 06:16:24', '43', 'jio', 3, '', 35, 1),
(614, '2015-01-20 15:40:02', '89', 'Gabriel Reyes Copello', 1, '', 26, 1),
(615, '2015-01-20 15:43:41', '1', 'Canal RCN ', 2, 'Changed tipo, genero, inicioyear, direccion, sitioweb, director, cobertura, asociadoaradio and telefono.', 40, 1),
(616, '2015-01-20 15:59:43', '2', 'Caracol TV ', 2, 'Changed tipo, genero, inicioyear, direccion, sitioweb, director, cobertura, asociadoaescrito, asociadoaradio, asociadoamediodigital, telefono and observaciones.', 40, 1),
(617, '2015-01-20 16:09:57', '4', 'Canal Uno ', 2, 'Changed tipo, genero, inicioyear and direccion.', 40, 1),
(618, '2015-01-20 16:11:33', '1', 'Estudio General de Medios', 1, '', 44, 1),
(619, '2015-01-20 16:11:38', '1', 'Canal RCN ', 2, 'Changed rating, inforating and fuenterating.', 40, 1),
(620, '2015-01-20 16:12:16', '2', 'Caracol TV ', 2, 'Changed rating, inforating and fuenterating.', 40, 1),
(621, '2015-01-20 16:19:14', '4', 'Canal Uno ', 2, 'Changed cobertura, telefono and observaciones.', 40, 1),
(622, '2015-01-20 16:28:18', '90', 'Alejandro Suárez Parada', 1, '', 26, 1),
(623, '2015-01-20 16:28:23', '5', 'Canal Capital ', 2, 'Changed tipo, genero, inicioyear, direccion, gerentegeneral, cobertura, region, ciudad, rating, inforating and telefono.', 40, 1),
(624, '2015-01-20 16:40:22', '4', 'Canal Uno ', 2, 'Changed telefono.', 40, 1),
(625, '2015-01-20 16:43:12', '91', 'Juan Manuel Vuelvas Díaz', 1, '', 26, 1),
(626, '2015-01-20 16:44:55', '6', 'Telecaribe', 2, 'Changed tipo, genero, inicioyear, direccion, sitioweb, gerentegeneral and telefono.', 40, 1),
(627, '2015-01-20 16:46:44', '15', 'City TV', 2, 'Changed medio and tipo.', 40, 1),
(628, '2015-01-20 16:47:30', '6', 'Telecaribe', 2, 'Changed rating.', 40, 1),
(629, '2015-01-20 16:49:34', '92', 'Mauricio Prieto Calambas', 1, '', 26, 1),
(630, '2015-01-20 16:51:17', '7', 'Telepacífico', 2, 'Changed tipo, genero, inicioyear, direccion, sitioweb, gerentegeneral, cobertura and telefono.', 40, 1),
(631, '2015-01-20 16:53:51', '6', 'Telecaribe', 2, 'Changed cobertura.', 40, 1),
(632, '2015-01-20 16:56:39', '7', 'Telepacífico', 2, 'No fields changed.', 40, 1),
(633, '2015-01-20 16:57:31', '6', 'Telecaribe', 2, 'Changed cobertura.', 40, 1),
(634, '2015-01-20 16:57:48', '6', 'Telecaribe', 2, 'No fields changed.', 40, 1),
(635, '2015-01-20 16:57:57', '7', 'Telepacífico', 2, 'No fields changed.', 40, 1),
(636, '2015-01-20 18:33:01', '1', 'Generalista', 1, '', 9, 1),
(637, '2015-01-20 18:35:20', '1', 'Lunes a Domingo', 1, '', 13, 1),
(638, '2015-01-20 18:41:38', '4', 'Agustín Edwards Eastman', 1, '', 7, 1),
(639, '2015-01-20 18:46:45', '5', 'Cristián Zegers Ariztía', 1, '', 7, 1),
(640, '2015-01-20 18:52:24', '6', 'Alejandro Arancibia Bulboa', 1, '', 7, 1),
(641, '2015-01-20 19:00:41', '13', 'Agustín Edwards Eastman', 1, '', 8, 1),
(642, '2015-01-20 19:02:35', '5', 'El Mercurio S.A.P.', 1, '', 16, 1),
(643, '2015-01-20 19:10:01', '199', 'El Mercurio', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral and propietario.', 17, 1),
(644, '2015-01-20 19:10:50', '4', 'Agustín Edwards Eastman', 3, '', 7, 1),
(645, '2015-01-20 19:16:47', '1', 'Sitio WEB institucional', 1, '', 25, 1),
(646, '2015-01-20 21:35:11', '2', 'Boletín de Circulación y Lectoría Valida - 1er semestre 2014', 1, '', 25, 1),
(647, '2015-01-20 21:53:36', '199', 'El Mercurio', 2, 'Changed fuentepropiedad, circulacion, lectoria, infolectoria and fuentelectoria.', 17, 1),
(648, '2015-01-20 22:03:23', '6', 'El Mercurio de Valparaíso S.A.P.', 1, '', 16, 1),
(649, '2015-01-20 22:04:07', '7', 'Carlos Vergara Ehrenberg', 1, '', 7, 1),
(650, '2015-01-20 22:08:11', '3', 'Sitio WEB Medios Regionales', 1, '', 25, 1),
(651, '2015-01-20 22:09:07', '8', 'Ian McPherson Springmüller', 1, '', 7, 1),
(652, '2015-01-20 22:09:38', '8', 'Ian MacPherson Springmüller', 2, 'Changed ejecutivo.', 7, 1),
(653, '2015-01-20 22:10:51', '1', 'Valparaíso', 1, '', 49, 1),
(654, '2015-01-20 22:11:10', '2', 'Viña del Mar', 1, '', 49, 1),
(655, '2015-01-20 22:20:39', '241', 'El Mercurio de Valparaíso', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje.', 17, 1),
(656, '2015-01-20 22:32:36', '3', 'Persona Natural', 1, '', 14, 1),
(657, '2015-01-20 22:37:30', '6', 'Agrícola', 1, '', 12, 1),
(658, '2015-01-20 22:37:51', '7', 'Agustín Edwards Eastman', 1, '', 15, 1),
(659, '2015-01-20 22:42:15', '5', 'El Mercurio S.A.P.', 2, 'Changed sociedadcontroladora and pcentsociedadcontroladora.', 16, 1),
(660, '2015-01-20 22:42:42', '1', 'Chile', 1, '', 50, 1),
(661, '2015-01-20 22:43:02', '7', 'Agustín Edwards Eastman', 2, 'Changed rutsociedad and paissocio.', 15, 1),
(662, '2015-01-21 02:22:50', '9', 'Javier Orellana Vera', 1, '', 7, 1),
(663, '2015-01-21 02:23:12', '10', 'Carlos Rodríguez Pérez', 1, '', 7, 1),
(664, '2015-01-21 02:47:23', '7', 'Publicidad', 1, '', 12, 1),
(665, '2015-01-21 03:10:50', '7', 'Publicidad e Imprenta', 2, 'Changed sector.', 12, 1),
(666, '2015-01-21 03:11:23', '8', 'Medios Regionales', 1, '', 15, 1),
(667, '2015-01-21 03:11:35', '7', 'Empresa Periodística El Norte S.A.', 1, '', 16, 1),
(668, '2015-01-21 03:11:57', '219', 'El Mercurio de Calama', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral and propietario.', 17, 1),
(669, '2015-01-21 03:15:37', '7', 'Calama', 1, '', 11, 1),
(670, '2015-01-21 03:17:01', '219', 'El Mercurio de Calama', 2, 'Changed circulacion, region, comuna, ciudad, tiraje, infotiraje and fuentetiraje.', 17, 1),
(671, '2015-01-21 13:33:35', '11', 'Víctor Toloza Jiménez', 1, '', 7, 1),
(672, '2015-01-21 13:38:44', '217', 'El Mercurio de Antofagasta', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje.', 17, 1),
(673, '2015-01-21 13:41:15', '12', 'Eduardo Campos Correa', 1, '', 7, 1),
(674, '2015-01-21 13:42:57', '13', 'David Doll Pinto', 1, '', 7, 1),
(675, '2015-01-21 13:43:29', '14', 'Annalise Binder Giammarino', 1, '', 7, 1),
(676, '2015-01-21 13:43:51', '14', 'Annalisse Binder Giammarino', 2, 'Changed ejecutivo.', 7, 1),
(677, '2015-01-21 13:45:37', '9', 'XV Región de Arica y Parinacota', 1, '', 10, 1),
(678, '2015-01-21 13:49:21', '294', 'La Estrella de Arica', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje.', 17, 1),
(679, '2015-01-21 13:53:01', '15', 'Sebastián Bottaro', 1, '', 7, 1),
(680, '2015-01-21 13:55:12', '214', 'La Estrella de Iquique', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje.', 17, 1),
(681, '2015-01-21 14:05:47', '16', 'Sergio Mercado Richards', 1, '', 7, 1),
(682, '2015-01-21 14:14:36', '218', 'La Estrella de Antofagasta', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje.', 17, 1),
(683, '2015-01-21 18:30:12', '220', 'La Estrella del Loa', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral, propietario, tiraje, infotiraje and fuentetiraje.', 17, 1),
(684, '2015-01-21 19:53:08', '220', 'La Estrella del Loa', 2, 'Changed fuentepropiedad, circulacion, region and comuna.', 17, 1),
(685, '2015-01-21 21:35:20', '28', 'Realismo Visceral', 3, '', 23, 1),
(686, '2015-01-22 02:17:20', '52', 'Contrainformate', 3, '', 23, 1),
(687, '2015-01-22 02:18:21', '40', 'El Fracaso', 3, '', 23, 1),
(688, '2015-01-22 02:34:56', '26', 'Portalnet', 3, '', 23, 1),
(689, '2015-01-22 02:34:56', '25', 'Panorama News', 3, '', 23, 1),
(690, '2015-01-22 02:34:56', '22', 'La Pulenta', 3, '', 23, 1),
(691, '2015-01-22 02:37:08', '58', 'Metiendo Ruido', 3, '', 23, 1),
(692, '2015-01-22 02:42:24', '18', 'Gamba', 3, '', 23, 1),
(693, '2015-01-22 02:46:50', '37', 'Verdad Ahora', 3, '', 23, 1),
(694, '2015-01-22 02:46:50', '31', 'Santiago Times', 3, '', 23, 1),
(695, '2015-01-22 02:46:50', '14', 'El Pilín', 3, '', 23, 1),
(696, '2015-01-22 02:47:56', '1', 'Generalista', 1, '', 22, 1),
(697, '2015-01-22 02:58:28', '17', 'Christian Díaz R.', 1, '', 7, 1),
(698, '2015-01-22 02:59:31', '17', 'Christian Díaz Ramírez', 2, 'Changed ejecutivo.', 7, 1),
(699, '2015-01-22 03:01:49', '18', 'Jorge Domínguez Larraín', 1, '', 7, 1),
(700, '2015-01-22 03:08:07', '8', 'Publicidad y Marketing', 1, '', 12, 1),
(701, '2015-01-22 03:08:38', '9', 'Asesorías', 1, '', 12, 1),
(702, '2015-01-22 03:09:02', '8', 'Asesorías e Inversiones y Comunidades Ciudadanas S. A.', 1, '', 16, 1),
(703, '2015-01-22 03:42:16', '14', 'Paula Rojo Almarza', 1, '', 8, 1),
(704, '2015-01-22 03:42:33', '15', 'Enrique García Fernández', 1, '', 8, 1),
(705, '2015-01-22 03:43:04', '16', 'Enrique Bravo Rocco', 1, '', 8, 1),
(706, '2015-01-22 03:43:23', '17', 'Camilo Herrera Barros', 1, '', 8, 1),
(707, '2015-01-22 03:43:55', '18', 'Jorge Domínguez Larraín', 1, '', 8, 1),
(708, '2015-01-22 03:44:31', '8', 'Asesorías e Inversiones y Comunidades Ciudadanas S. A.', 2, 'Changed presidentedirectorio and miembrosdirectorio.', 16, 1),
(709, '2015-01-22 17:08:20', '2', 'Lunes a Viernes', 1, '', 13, 1),
(710, '2015-01-22 17:08:27', '297', 'HoyxHoy', 2, 'Changed tipo, pagado_gratuito, genero, periodicidad and propietario.', 17, 1),
(711, '2015-01-22 17:08:37', '297', 'HoyxHoy', 2, 'Changed fuentepropiedad.', 17, 1),
(712, '2015-01-22 17:08:58', '19', 'Juan Pablo Meneses', 1, '', 7, 1),
(713, '2015-01-22 17:09:00', '297', 'HoyxHoy', 2, 'Changed director.', 17, 1),
(714, '2015-01-22 17:26:43', '10', 'Imprenta', 1, '', 12, 1),
(715, '2015-01-22 17:27:31', '11', 'Producción de Eventos', 1, '', 12, 1),
(716, '2015-01-22 17:29:08', '9', 'Gestión Regional de Medios S.A.', 1, '', 16, 1),
(717, '2015-01-22 18:37:29', '157', 'ABC del Bebé', 3, '', 36, 1),
(718, '2015-01-22 18:43:17', '163', 'ADN Barranquilla', 1, '', 36, 1),
(719, '2015-01-22 18:45:42', '20', 'Eduardo Marin Soto', 1, '', 7, 1),
(720, '2015-01-22 18:45:56', '20', 'Eduardo Marín Soto', 2, 'Changed ejecutivo.', 7, 1),
(721, '2015-01-22 18:46:55', '297', 'HoyxHoy', 2, 'Changed inicioyear, direccion, sitioweb, gerentegeneral and propietario.', 17, 1),
(722, '2015-01-22 18:48:14', '11', 'Judicial', 1, '', 28, 1),
(723, '2015-01-22 18:49:12', '164', 'Ambito Jurídico', 1, '', 36, 1),
(724, '2015-01-22 18:50:04', '114', 'Al Día Cartagena', 3, '', 36, 1),
(725, '2015-01-22 18:50:04', '116', 'Al Día Santa Marta', 3, '', 36, 1),
(726, '2015-01-22 18:52:56', '165', 'Choco 7 días', 1, '', 36, 1),
(727, '2015-01-22 18:53:26', '164', 'Ambito Jurídico', 2, 'Changed sitioweb.', 36, 1),
(728, '2015-01-22 18:58:51', '122', 'Diario del Otún', 2, 'Changed medio and pagado_gratuito.', 36, 1),
(729, '2015-01-22 19:08:25', '166', 'Semanario Voz', 1, '', 36, 1),
(730, '2015-01-22 19:10:02', '145', 'El Diario', 3, '', 36, 1),
(731, '2015-01-22 19:11:30', '139', 'Diario Occidente', 2, 'Changed medio.', 36, 1),
(732, '2015-01-22 19:12:06', '7', 'Empresa Periodística El Norte S.A.', 2, 'Changed sectores.', 16, 1),
(733, '2015-01-22 19:12:45', '98', 'El Heraldo', 2, 'Changed pagado_gratuito.', 36, 1),
(734, '2015-01-22 19:13:30', '6', 'El Mercurio de Valparaíso S.A.P.', 2, 'Changed rutpropietario and sectores.', 16, 1),
(735, '2015-01-22 19:15:39', '5', 'El Mercurio S.A.P.', 2, 'No fields changed.', 16, 1),
(736, '2015-01-22 19:16:16', '131', 'El Nuevo Día', 2, 'Changed pagado_gratuito.', 36, 1),
(737, '2015-01-22 19:20:59', '167', 'El Nuevo Liberal', 1, '', 36, 1),
(738, '2015-01-22 19:23:07', '167', 'El Nuevo Liberal', 2, 'Changed sitioweb.', 36, 1),
(739, '2015-01-22 19:24:30', '6', 'El Mercurio de Valparaíso S.A.P.', 2, 'Changed sociedadcontroladora.', 16, 1),
(740, '2015-01-22 19:24:54', '5', 'El Mercurio S.A.P.', 2, 'Changed pcentsociedadcontroladora.', 16, 1),
(741, '2015-01-22 19:27:29', '168', 'El Nuevo Oriente', 1, '', 36, 1),
(742, '2015-01-22 19:29:10', '21', 'Francisco Puga Vergara', 1, '', 7, 1),
(743, '2015-01-22 19:31:00', '4', 'Sociedad de Responsabilidad Limitada', 1, '', 14, 1),
(744, '2015-01-22 19:32:14', '10', 'Antonio Puga y Cía Ltda.', 1, '', 16, 1),
(745, '2015-01-22 19:32:37', '7', 'Publicidad e Imprenta', 3, '', 12, 1),
(746, '2015-01-22 20:53:34', '4', 'Página en Wikipedia Diario El Día', 1, '', 25, 1),
(747, '2015-01-22 20:55:15', '230', 'El Día', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, propietario, fuentepropiedad, circulacion, region, tiraje, infotiraje and fuentetiraje.', 17, 1),
(748, '2015-01-23 05:07:02', '1', 'Norma Constitucional', 1, '', 45, 1),
(749, '2015-01-23 05:14:31', '2', 'Ley', 1, '', 45, 1),
(750, '2015-01-23 05:17:51', '1', 'Regulacion object', 1, '', 46, 1),
(751, '2015-01-23 05:26:23', '22', 'Verónica Montero Aguilera', 1, '', 7, 1),
(752, '2015-01-23 05:27:09', '23', 'Rodrigo Prado Lira', 1, '', 7, 1),
(753, '2015-01-23 05:29:53', '11', 'Sociedad Periodística Araucanía', 1, '', 16, 1),
(754, '2015-01-23 05:32:55', '293', 'El Diario Austral Región de Los Ríos', 2, 'Changed medio, tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, director, gerentegeneral and propietario.', 17, 1),
(755, '2015-01-23 05:33:34', '293', 'El Diario Austral Región de Los Ríos', 2, 'Changed fuentepropiedad.', 17, 1),
(756, '2015-01-23 05:36:19', '198', 'La Hora', 2, 'Changed tipo, pagado_gratuito and genero.', 17, 1),
(757, '2015-01-23 05:51:06', '12', 'Diariosenred.com', 1, '', 16, 1),
(758, '2015-01-23 05:51:39', '71', 'Red Arica', 1, '', 23, 1),
(759, '2015-01-23 05:57:53', '24', 'Patricio Huaiquín M.', 1, '', 7, 1),
(760, '2015-01-23 06:02:59', '13', 'Sociedad Inet Televisión Digital Limitada', 1, '', 16, 1),
(761, '2015-01-23 06:04:29', '5', 'Portal Chile Proveedores', 1, '', 25, 1),
(762, '2015-01-23 06:14:39', '24', 'Patricio Huaiquín Montalva', 2, 'Changed ejecutivo.', 7, 1),
(763, '2015-01-23 06:15:55', '10', 'IX Región de la Araucanía', 1, '', 10, 1),
(764, '2015-01-23 06:17:53', '11', 'IVX Región de Los Ríos', 1, '', 10, 1),
(765, '2015-01-23 06:18:11', '11', 'XIV Región de Los Ríos', 2, 'Changed region.', 10, 1),
(766, '2015-01-23 06:18:41', '12', 'X Región de Los Lagos', 1, '', 10, 1),
(767, '2015-01-23 06:18:59', '13', 'XI Región de Aysén', 1, '', 10, 1),
(768, '2015-01-23 06:19:24', '14', 'VII Región del Maule', 1, '', 10, 1),
(769, '2015-01-23 06:19:56', '15', 'XII Región de Magallanes', 1, '', 10, 1),
(770, '2015-01-23 06:20:49', '27', 'TVINET Televisión Digital', 2, 'Changed medio, tipo, genero, direccion, sitioweb, director, propietario, fuentepropiedad, cobertura and region.', 21, 1),
(771, '2015-01-23 06:24:21', '27', 'TvInet Televisión Digital', 2, 'Changed medio and inicioyear.', 21, 1),
(772, '2015-01-23 06:26:55', '27', 'TvInet Televisión Digital', 2, 'No fields changed.', 21, 1),
(773, '2015-01-23 06:31:13', '25', 'Natalia Arcaya Bakit', 1, '', 7, 1),
(774, '2015-01-23 06:33:15', '26', 'Pucón T.V.', 2, 'Changed medio, tipo, genero, inicioyear, direccion, sitioweb, director, cobertura and comuna.', 21, 1),
(775, '2015-01-23 06:52:32', '14', 'Broadcasting & Telecomunicaciones Limitada', 1, '', 16, 1),
(776, '2015-01-23 06:56:17', '25', 'Tele Angol', 2, 'Changed tipo, genero, direccion, sitioweb, propietario, cobertura and comuna.', 21, 1),
(777, '2015-01-23 06:58:59', '1', 'Música y Noticias', 1, '', 18, 1),
(778, '2015-01-23 07:03:14', '110', 'Radio Caramelo', 1, '', 19, 1),
(779, '2015-01-23 07:05:01', '2', 'Universitaria', 1, '', 18, 1),
(780, '2015-01-23 07:06:42', '109', 'Universidad del Bío Bío ', 2, 'Changed genero, frecuencia, inicioyear, direccion and sitioweb.', 19, 1),
(781, '2015-01-24 19:38:41', '16', 'Emol', 2, 'Changed sitioweb and asociadoaescrito.', 23, 1),
(782, '2015-01-25 23:22:53', '143', 'Boyacá 7 Días', 2, 'Changed medio and pagado_gratuito.', 36, 1),
(783, '2015-01-25 23:47:07', '169', 'El Periódico', 1, '', 36, 1),
(784, '2015-01-25 23:48:55', '169', 'El Periódico', 2, 'Changed direccion and telefono.', 36, 1),
(785, '2015-01-25 23:59:04', '170', 'El Periódico Deportivo', 1, '', 36, 1),
(786, '2015-01-25 23:59:58', '106', 'El Tiempo Bucaramanga', 3, '', 36, 1),
(787, '2015-01-25 23:59:58', '140', 'El Tiempo Cali', 3, '', 36, 1),
(788, '2015-01-25 23:59:58', '102', 'El Tiempo Manizales', 3, '', 36, 1),
(789, '2015-01-25 23:59:58', '94', 'El Tiempo Medellín', 3, '', 36, 1),
(790, '2015-01-26 00:00:23', '99', 'El Tiempo Barranquilla', 3, '', 36, 1),
(791, '2015-01-26 00:25:59', '111', 'El Universal', 2, 'Changed pagado_gratuito.', 36, 1),
(792, '2015-01-26 00:26:22', '146', 'Entérese', 3, '', 36, 1),
(793, '2015-01-26 00:44:25', '171', 'Extra Boyacá', 1, '', 36, 1),
(794, '2015-01-26 01:08:54', '128', 'Proclama del Cauca', 3, '', 36, 1),
(795, '2015-01-26 01:09:15', '144', 'Puente Boyacense', 3, '', 36, 1),
(796, '2015-01-26 01:11:03', '110', 'Q´hubo Barrancabermeja', 2, 'Changed medio and pagado_gratuito.', 36, 1),
(797, '2015-01-26 01:14:06', '93', 'Roberto Vargas Galvis', 1, '', 26, 1),
(798, '2015-01-26 01:16:23', '172', 'Q´hubo Cúcuta', 1, '', 36, 1),
(799, '2015-01-26 01:21:49', '173', 'Revista 15 Minutos', 1, '', 36, 1),
(800, '2015-01-26 13:38:46', '12', 'Cultura', 1, '', 28, 1),
(801, '2015-01-26 13:51:13', '174', 'Revista Arcadia', 1, '', 36, 1),
(802, '2015-01-26 13:51:39', '174', 'Revista Arcadia', 2, 'Changed inicioyear.', 36, 1),
(803, '2015-01-26 13:52:18', '174', 'Revista Arcadia', 2, 'Changed inicioyear.', 36, 1),
(804, '2015-01-26 13:52:35', '172', 'Q´hubo Cúcuta', 2, 'Changed inicioyear.', 36, 1),
(805, '2015-01-26 13:53:28', '164', 'Ambito Jurídico', 2, 'Changed inicioyear.', 36, 1),
(806, '2015-01-26 13:53:44', '169', 'El Periódico', 2, 'Changed inicioyear.', 36, 1),
(807, '2015-01-26 13:53:53', '165', 'Choco 7 días', 2, 'Changed inicioyear.', 36, 1),
(808, '2015-01-26 13:54:07', '170', 'El Periódico Deportivo', 2, 'Changed inicioyear.', 36, 1),
(809, '2015-01-26 13:54:27', '171', 'Extra Boyacá', 2, 'Changed inicioyear.', 36, 1),
(810, '2015-01-26 13:54:49', '173', 'Revista 15 Minutos', 2, 'Changed inicioyear.', 36, 1),
(811, '2015-01-26 13:55:52', '158', 'Revista Soho', 2, 'Changed pagado_gratuito and inicioyear.', 36, 1),
(812, '2015-01-26 13:58:43', '13', 'Entrevistas', 1, '', 28, 1),
(813, '2015-01-26 14:04:40', '94', 'Fernando Gómez Echeverri', 1, '', 26, 1),
(814, '2015-01-26 14:05:35', '175', 'Revista Bocas', 1, '', 36, 1),
(815, '2015-01-26 14:15:40', '88', 'Revista Dinero', 2, 'Changed pagado_gratuito, direccion, director, propietario, lectoria and telefono.', 36, 1),
(816, '2015-01-26 14:20:57', '95', 'Mario Jursich', 1, '', 26, 1),
(817, '2015-01-26 14:22:03', '176', 'El Malpensante', 1, '', 36, 1),
(818, '2015-01-26 14:27:36', '96', 'Diego León Giraldo', 1, '', 26, 1),
(819, '2015-01-26 14:27:56', '177', 'Revista Elenco', 1, '', 36, 1),
(820, '2015-01-26 14:35:04', '97', 'Olga Viviana Guerrero Campo', 1, '', 26, 1),
(821, '2015-01-26 14:36:12', '178', 'Jet Set', 1, '', 36, 1),
(822, '2015-01-26 14:36:56', '178', 'Jet Set', 2, 'No fields changed.', 36, 1),
(823, '2015-01-26 14:39:14', '87', 'Revista Semana', 2, 'Changed pagado_gratuito, lectoria, telefono, observaciones and check.', 36, 1),
(824, '2015-01-26 14:40:21', '174', 'Revista Arcadia', 2, 'No fields changed.', 36, 1),
(825, '2015-01-26 14:41:37', '88', 'Revista Dinero', 2, 'No fields changed.', 36, 1),
(826, '2015-01-26 14:46:35', '80', 'El Espectador', 2, 'Changed pagado_gratuito and propietario.', 36, 1),
(827, '2015-01-26 14:50:11', '98', 'Mariangela Rubbini', 1, '', 26, 1),
(828, '2015-01-26 14:50:19', '179', 'Shock', 1, '', 36, 1),
(829, '2015-01-26 14:53:51', '158', 'Revista Soho', 2, 'Changed director.', 36, 1),
(830, '2015-01-26 15:05:02', '158', 'Soho', 2, 'Changed medio, inicioyear, periodicidad, direccion, propietario, asociadoamediodigital and telefono.', 36, 1),
(831, '2015-01-26 15:08:56', '180', 'El Extra, Semanario Popular', 1, '', 36, 1),
(832, '2015-01-26 15:10:06', '180', 'El Extra, Semanario Popular', 2, 'Changed circulacion and region.', 36, 1),
(833, '2015-01-26 15:19:39', '99', 'Carlos Lozano Guillen', 1, '', 26, 1),
(834, '2015-01-26 15:21:25', '166', 'Semanario Voz', 2, 'Changed inicioyear, direccion, director and telefono.', 36, 1),
(835, '2015-01-26 15:27:08', '181', 'Siglo 21', 1, '', 36, 1),
(836, '2015-01-26 15:30:41', '182', 'Sur Noticias', 1, '', 36, 1),
(837, '2015-01-26 15:30:58', '182', 'Sur Noticias', 2, 'Changed inicioyear.', 36, 1),
(838, '2015-01-26 15:31:24', '121', 'Vea Pues', 3, '', 36, 1),
(839, '2015-01-26 15:34:57', '183', 'The Archipielago Press', 1, '', 36, 1),
(840, '2015-01-26 16:33:03', '44', 'Cadena Súper', 1, '', 35, 1),
(841, '2015-01-26 16:34:37', '186', 'La Superestación ', 2, 'Changed medio, genero, frecuencia and propietario.', 38, 1),
(842, '2015-01-26 16:37:43', '186', 'La Superestación ', 2, 'Changed cobertura and region.', 38, 1),
(843, '2015-01-26 16:49:06', '200', 'Caracol Radio Cauca', 1, '', 38, 1),
(844, '2015-01-26 16:50:04', '201', 'Caracol Radio Chocó', 1, '', 38, 1),
(845, '2015-01-26 16:52:01', '202', 'Caracol Radio San Andrés', 1, '', 38, 1),
(846, '2015-01-26 16:52:17', '202', 'Caracol Radio San Andrés', 2, 'Changed region.', 38, 1),
(847, '2015-01-26 16:58:44', '100', 'Hamilton Daza Gutiérrez', 1, '', 26, 1),
(848, '2015-01-26 17:02:57', '203', 'Cardenal Stereo', 1, '', 38, 1),
(849, '2015-01-26 17:13:06', '204', 'Ecos del Atrato', 1, '', 38, 1),
(850, '2015-01-26 17:17:22', '205', 'Caracol Radio Yopal', 1, '', 38, 1),
(851, '2015-01-26 17:25:31', '206', 'El Sol Medellín RCN Radio', 1, '', 38, 1),
(852, '2015-01-26 18:52:28', '207', 'Violeta Stereo', 1, '', 38, 1),
(853, '2015-01-26 18:58:07', '208', 'Guajira Estéreo', 1, '', 38, 1),
(854, '2015-01-26 19:02:38', '209', 'La Voz de Yopal', 1, '', 38, 1),
(855, '2015-01-26 19:15:48', '45', 'Todelar Radio', 1, '', 35, 1),
(856, '2015-01-26 19:17:17', '210', 'La X', 1, '', 38, 1),
(857, '2015-01-26 19:21:52', '211', 'Olímpica Stereo Ibagué', 1, '', 38, 1),
(858, '2015-01-26 19:30:50', '190', 'Radio Súper Cali', 2, 'Changed medio, genero, frecuencia, sitioweb, propietario, cobertura and ciudad.', 38, 1),
(859, '2015-01-26 19:34:27', '212', 'Radio Súper Popayán', 1, '', 38, 1),
(860, '2015-01-26 19:37:43', '213', 'RCN La Radio San Andrés', 1, '', 38, 1),
(861, '2015-01-26 19:45:22', '214', 'Rumba', 1, '', 38, 1),
(862, '2015-01-26 19:48:20', '194', 'Tolima FM Stereo', 2, 'Changed medio.', 38, 1),
(863, '2015-01-26 19:54:05', '215', 'Tropicana', 1, '', 38, 1),
(864, '2015-01-26 19:54:46', '174', 'Todelar ', 3, '', 38, 1),
(865, '2015-01-26 19:56:50', '216', 'Tropicana Medellín', 1, '', 38, 1),
(866, '2015-01-26 19:58:53', '101', 'Radiopolis', 1, '', 26, 1),
(867, '2015-01-26 20:00:42', '217', 'Vibra Bogotá', 1, '', 38, 1),
(868, '2015-01-26 20:02:12', '46', 'Radiopolis', 1, '', 35, 1),
(869, '2015-01-26 20:02:18', '217', 'Vibra Bogotá', 2, 'Changed director and propietario.', 38, 1),
(870, '2015-01-26 22:56:37', '6', 'Juvenil', 1, '', 39, 1),
(871, '2015-01-26 23:00:36', '102', 'Lennart Eliseo Rodríguez Lozano', 1, '', 26, 1),
(872, '2015-01-26 23:58:53', '29', 'Canal TR3CE', 1, '', 40, 1),
(873, '2015-01-26 23:59:55', '9', 'Telecafe ', 2, 'Changed cobertura and region.', 40, 1),
(874, '2015-01-27 00:00:59', '14', 'Canal El Tiempo', 2, 'Changed genero.', 40, 1),
(875, '2015-01-27 00:05:32', '7', 'Religioso', 1, '', 39, 1),
(876, '2015-01-27 00:09:29', '30', 'Telesantiago', 1, '', 40, 1),
(877, '2015-01-27 00:21:34', '31', 'TV Cinco Monteria', 1, '', 40, 1),
(878, '2015-01-27 00:27:36', '103', 'Waldir Albeiro Ochoa Jimenez', 1, '', 26, 1),
(879, '2015-01-27 00:28:12', '32', 'Telemedellín', 1, '', 40, 1),
(880, '2015-01-27 00:37:19', '33', 'Cejes Vallevisión', 1, '', 40, 1),
(881, '2015-01-27 00:39:34', '104', 'Ángel Flórez León', 1, '', 26, 1),
(882, '2015-01-27 00:40:17', '33', 'Cejes Vallevisión', 2, 'Changed gerentegeneral.', 40, 1),
(883, '2015-01-27 00:56:59', '105', 'Ángel Rodríguez Bermúdez Vitalicio', 1, '', 26, 1),
(884, '2015-01-27 00:58:38', '34', 'ABN TV', 1, '', 40, 1),
(885, '2015-01-27 01:09:55', '106', 'Claudia Patricia Torres Navarro', 1, '', 26, 1),
(886, '2015-01-27 01:12:07', '35', 'ATN Televisión', 1, '', 40, 1),
(887, '2015-01-27 02:02:43', '36', 'Canal TVC', 1, '', 40, 1),
(888, '2015-01-27 02:13:16', '37', 'Canal DC TV', 1, '', 40, 1),
(889, '2015-01-27 02:13:55', '36', 'Canal TVC', 2, 'Changed inicioyear.', 40, 1),
(890, '2015-01-27 02:23:45', '107', 'Andrea Laudicina', 1, '', 26, 1),
(891, '2015-01-27 02:24:49', '38', 'Hogar Televisión', 1, '', 40, 1),
(892, '2015-01-27 02:35:38', '39', 'Canal 2 de Yopal', 1, '', 40, 1),
(893, '2015-01-27 02:58:15', '19', 'Teleamiga ', 2, 'Changed tipo, genero, direccion, cobertura, region, ciudad and telefono.', 40, 1),
(894, '2015-01-27 03:15:40', '40', 'Cali TV', 1, '', 40, 1),
(895, '2015-01-27 03:22:29', '41', 'Tele Vid', 1, '', 40, 1),
(896, '2015-01-27 13:47:16', '42', 'TeleUnidad', 1, '', 40, 1),
(897, '2015-01-27 13:59:08', '43', 'CMB Televisión', 1, '', 40, 1),
(898, '2015-01-27 14:07:36', '44', 'HSB Televisión', 1, '', 40, 1),
(899, '2015-01-27 14:16:27', '45', 'Uniautónoma Televisión', 1, '', 40, 1),
(900, '2015-01-27 14:33:09', '46', 'UdeC TV', 1, '', 40, 1),
(901, '2015-01-27 14:38:45', '25', 'Enlace Televisión', 3, '', 40, 1),
(902, '2015-01-27 14:38:45', '24', 'Opanoticias', 3, '', 40, 1),
(903, '2015-01-27 14:38:45', '23', 'Notivisión Popayán ', 3, '', 40, 1),
(904, '2015-01-27 14:38:45', '22', 'Canal CNC Arauca', 3, '', 40, 1),
(905, '2015-01-27 14:38:45', '21', 'Canal CNC Pasto', 3, '', 40, 1),
(906, '2015-01-27 14:38:45', '20', 'Canal CNC Estrella Television', 3, '', 40, 1),
(907, '2015-01-27 14:39:40', '8', 'Cultural', 1, '', 39, 1),
(908, '2015-01-27 14:42:24', '47', 'Telepasto', 1, '', 40, 1),
(909, '2015-01-27 14:52:13', '48', 'Canal Universitario', 1, '', 40, 1),
(910, '2015-01-27 14:58:52', '108', 'Johana Jaramillo Palacio', 1, '', 26, 1),
(911, '2015-01-27 14:58:58', '49', 'Canal U. Canal Universitario de Antioquia. ', 1, '', 40, 1),
(912, '2015-01-27 15:08:02', '3', 'CM& Noticias ', 3, '', 40, 1),
(913, '2015-01-27 16:15:32', '62', 'A la Luz Pública.com', 3, '', 42, 1),
(914, '2015-01-27 16:16:11', '59', 'Agenda Propia.com', 3, '', 42, 1),
(915, '2015-01-27 16:19:34', '67', 'El diario del Llano.com', 3, '', 42, 1),
(916, '2015-01-27 16:22:30', '55', 'El Isleño', 3, '', 42, 1),
(917, '2015-01-27 16:22:30', '58', 'El Líder', 3, '', 42, 1),
(918, '2015-01-27 16:22:30', '49', 'El Mundo.com', 3, '', 42, 1),
(919, '2015-01-27 16:23:09', '47', 'Excelsio.co', 3, '', 42, 1),
(920, '2015-01-27 16:25:25', '44', 'La Otra Orilla. co', 3, '', 42, 1),
(921, '2015-01-27 16:26:36', '23', 'Liga Postobon.com.co', 3, '', 42, 1),
(922, '2015-01-27 16:26:36', '52', 'Mario en tu radio.com', 3, '', 42, 1),
(923, '2015-01-27 16:26:36', '63', 'Mi Putumayo.com', 3, '', 42, 1),
(924, '2015-01-27 16:27:28', '51', 'Noticias de Villavicencio.com', 3, '', 42, 1),
(925, '2015-01-27 16:28:30', '66', 'Prensa Libre Casanare.com', 3, '', 42, 1),
(926, '2015-01-27 16:30:09', '45', 'Revista Sole.com', 3, '', 42, 1),
(927, '2015-01-27 16:30:09', '56', 'San Andrés Hoy', 3, '', 42, 1),
(928, '2015-01-27 16:30:09', '54', 'Soy de Buenaventura.com', 3, '', 42, 1),
(929, '2015-01-27 16:30:09', '65', 'TeleOrinoco Noticias.com', 3, '', 42, 1),
(930, '2015-01-27 16:30:09', '46', 'Tras la Cola de la Rata.com', 3, '', 42, 1),
(931, '2015-01-27 16:30:09', '64', 'Tumacopopolo', 3, '', 42, 1),
(932, '2015-01-27 16:30:09', '14', 'Vanguardia.com', 3, '', 42, 1),
(933, '2015-01-27 16:30:51', '61', 'Periodico Virtual.com', 3, '', 42, 1),
(934, '2015-01-27 16:36:53', '109', 'Ignacio Greiffenstein', 1, '', 26, 1),
(935, '2015-01-27 16:37:53', '71', 'Kien & Ke', 1, '', 42, 1),
(936, '2015-01-27 16:40:06', '60', 'Diario del Huila', 3, '', 42, 1),
(937, '2015-01-27 16:40:06', '48', 'Diario del Otún.com.co', 3, '', 42, 1),
(938, '2015-01-27 16:53:02', '97', 'Diario ADN Barranquilla', 3, '', 36, 1),
(939, '2015-01-27 16:53:13', '163', 'ADN Barranquilla', 2, 'Changed sitioweb.', 36, 1),
(940, '2015-01-27 17:19:25', '184', 'Q´hubo Bogotá', 1, '', 36, 1),
(941, '2015-01-27 17:21:16', '159', 'Revista Motor', 3, '', 36, 1),
(942, '2015-01-27 17:26:05', '185', 'Prensa Libre Casanare', 1, '', 36, 1),
(943, '2015-01-27 17:28:28', '186', 'Revista TV y Novelas', 1, '', 36, 1),
(944, '2015-01-27 17:34:17', '187', 'La Nación', 1, '', 36, 1),
(945, '2015-01-27 22:13:27', '110', 'Alfonso Ospina', 1, '', 26, 1),
(946, '2015-01-27 22:15:50', '188', 'Colprensa', 1, '', 36, 1),
(947, '2015-01-27 22:36:30', '189', 'Diario Extra Putumayo', 1, '', 36, 1),
(948, '2015-01-27 22:40:32', '190', 'Extra Bogotá', 1, '', 36, 1),
(949, '2015-01-27 22:42:42', '191', 'TV y Novelas', 1, '', 36, 1),
(950, '2015-01-28 03:32:40', '134', 'Llano 7 Días', 2, 'Changed medio and pagado_gratuito.', 36, 1),
(951, '2015-01-28 03:40:36', '186', 'Revista TV y Novelas', 3, '', 36, 1),
(952, '2015-01-28 05:49:37', '1', 'Director', 1, '', 53, 1),
(953, '2015-01-28 05:49:39', '297', 'HoyxHoy', 2, 'Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(954, '2015-01-28 05:52:51', '7', 'Empresa Periodística El Norte S.A.', 2, 'Added porcentaje propietario "PorcentajePropietario object".', 16, 1),
(955, '2015-01-28 05:53:36', '8', 'Medios Regionales', 2, 'Changed controlador.', 15, 1),
(956, '2015-01-28 05:55:00', '6', 'Memoria Canal 13 - Año 2013', 1, '', 25, 1),
(957, '2015-01-28 06:01:27', '17', 'Inversiones Canal 13 SpA', 1, '', 16, 1),
(958, '2015-01-28 06:02:26', '2', 'Director Ejecutivo', 1, '', 53, 1),
(959, '2015-01-28 06:02:28', '4', 'Canal 13', 2, 'Changed propietario and fuentepropiedad. Added Cargo Ejectutivo "CargoEjecutivo object".', 21, 1),
(960, '2015-01-28 06:05:18', '9', 'Andrónico Luksic Craig', 1, '', 15, 1),
(961, '2015-01-28 06:05:25', '5', 'Inversiones Consolidadas', 2, 'Changed controlador and presidentedirectorio.', 15, 1),
(962, '2015-01-28 06:06:07', '9', 'Andrónico Luksic Craig', 2, 'Changed tiposociedad, rutsociedad and paissocio.', 15, 1),
(963, '2015-01-28 06:09:22', '3', 'Gerente', 1, '', 53, 1),
(964, '2015-01-28 06:09:55', '4', 'Representante Legal', 1, '', 53, 1),
(965, '2015-01-28 06:09:58', '294', 'La Estrella de Arica', 2, 'Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(966, '2015-01-28 06:11:07', '294', 'La Estrella de Arica', 2, 'No fields changed.', 17, 1),
(967, '2015-01-28 06:32:14', '72', 'Soy Arica', 1, '', 23, 1),
(968, '2015-01-28 06:32:35', '72', 'Soy Arica', 2, 'No fields changed.', 23, 1),
(969, '2015-01-28 06:35:59', '72', 'Soy Arica', 2, 'Changed asociadoaescrito and asociadoamediodigital.', 23, 1),
(970, '2015-01-28 06:36:13', '72', 'Soy Arica', 2, 'No fields changed.', 23, 1),
(971, '2015-01-28 06:38:59', '72', 'Soy Arica', 2, 'No fields changed.', 23, 1),
(972, '2015-01-28 06:39:58', '18', 'Sociedad Periodística Araucanía S.A.', 1, '', 16, 1),
(973, '2015-01-28 06:40:59', '26', 'Víctor Hugo Palma Pérez', 1, '', 7, 1),
(974, '2015-01-28 06:41:26', '27', 'Roberto Vega Carrasco', 1, '', 7, 1),
(975, '2015-01-28 06:48:41', '281', 'La Estrella de Chiloé', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, propietario, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(976, '2015-01-28 06:49:37', '281', 'La Estrella de Chiloé', 2, 'Changed sitioweb.', 17, 1),
(977, '2015-01-28 06:52:10', '281', 'La Estrella de Chiloé', 2, 'Changed direccion.', 17, 1),
(978, '2015-01-28 06:53:18', '269', 'La Estrella de Concepción', 2, 'Changed tipo, pagado_gratuito, genero, periodicidad and sitioweb.', 17, 1),
(979, '2015-01-28 07:05:34', '29', 'Positiva FM ', 2, 'Changed sitioweb, propietario and asociadoaescrito.', 19, 1),
(980, '2015-01-28 13:37:55', '6', 'Memoria Canal 13 - Año 2013', 2, 'Changed linkfuente.', 25, 1),
(981, '2015-01-28 13:43:28', '7', 'Amarillas.com', 1, '', 25, 1),
(982, '2015-01-28 15:17:00', '1', 'Diego Fernando Barrero Castañeda', 1, '', 27, 1),
(983, '2015-01-28 15:17:31', '111', 'Diego Fernando Barrero Castañeda', 1, '', 26, 1),
(984, '2015-01-28 16:13:24', '164', 'Ambito Jurídico', 2, 'Changed direccion.', 36, 1),
(985, '2015-01-29 01:47:34', '296', 'Sol de Arica', 3, '', 17, 1),
(986, '2015-01-29 01:52:47', '295', 'El Chinchorro', 3, '', 17, 1),
(987, '2015-01-29 02:17:47', '292', 'El Fortín del Estrecho', 3, '', 17, 1),
(988, '2015-01-29 02:43:15', '28', 'Carlos Skarmeta Oyarzún', 1, '', 7, 1),
(989, '2015-01-29 02:44:00', '29', 'Juan Ignacio Ortíz Reyes', 1, '', 7, 1),
(990, '2015-01-29 02:44:14', '5', 'Editor General', 1, '', 53, 1),
(991, '2015-01-29 02:46:19', '19', 'Patagónica Publicaciones S.A.', 1, '', 16, 1),
(992, '2015-01-29 03:06:09', '8', 'Página en Wikipedia Diario El Pingüino', 1, '', 25, 1),
(993, '2015-01-29 04:01:49', '19', 'Mauricio Vidal Guerra', 1, '', 8, 1),
(994, '2015-01-29 04:04:48', '30', 'Mauricio Vidal Guerra', 1, '', 7, 1),
(995, '2015-01-29 04:05:41', '291', 'El Pingüino', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion, region, lectoria and fuentelectoria. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(996, '2015-01-29 04:09:25', '19', 'Patagónica Publicaciones S.A.', 2, 'Changed rutpropietario and sectores.', 16, 1),
(997, '2015-01-29 04:09:34', '293', 'El Diario Austral Región de Los Ríos', 2, 'Changed circulacion and region.', 17, 1),
(998, '2015-01-29 04:11:21', '22', 'Verónica Moreno Aguilera', 2, 'Changed ejecutivo.', 7, 1),
(999, '2015-01-29 04:21:54', '73', 'Valdivia Capital', 1, '', 23, 1),
(1000, '2015-01-29 04:22:40', '111', 'Signos', 1, '', 19, 1),
(1001, '2015-01-29 04:26:44', '293', 'El Diario Austral Región de Los Ríos', 2, 'Changed tiraje, infotiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1002, '2015-01-29 04:27:11', '294', 'La Estrella de Arica', 2, 'Changed region.', 17, 1),
(1003, '2015-01-29 04:30:09', '293', 'El Diario Austral Región de Los Ríos', 2, 'Changed comuna.', 17, 1),
(1004, '2015-01-29 04:30:56', '281', 'La Estrella de Chiloé', 2, 'Changed fuentepropiedad.', 17, 1),
(1005, '2015-01-29 04:34:02', '269', 'La Estrella de Concepción', 2, 'Changed circulacion, region, comuna, tiraje, infotiraje and fuentetiraje.', 17, 1),
(1006, '2015-01-29 04:35:27', '20', 'Diario El Sur S.A.', 1, '', 16, 1),
(1007, '2015-01-29 04:36:18', '31', 'Felipe Saavedra Arellano', 1, '', 7, 1),
(1008, '2015-01-29 04:37:18', '290', 'El Magallanes', 2, 'No fields changed.', 17, 1),
(1009, '2015-01-29 05:07:07', '269', 'La Estrella de Concepción', 2, 'No fields changed.', 17, 1),
(1010, '2015-01-30 20:37:57', '188', 'Colprensa', 2, 'Changed tipo.', 36, 1),
(1011, '2015-01-30 20:45:25', '112', 'José Dil Gutiérrez', 1, '', 26, 1),
(1012, '2015-01-30 20:46:04', '113', 'Mónica Marcela Gutiérrez', 1, '', 26, 1),
(1013, '2015-01-30 20:46:26', '192', 'El Mirador', 1, '', 36, 1),
(1014, '2015-02-03 16:06:04', '173', 'Blu Radio ', 2, 'Changed propietario.', 38, 1),
(1015, '2015-02-03 16:07:29', '215', 'Tropicana', 2, 'Changed propietario.', 38, 1),
(1016, '2015-02-03 16:11:17', '176', 'Candela Stereo', 2, 'Changed propietario.', 38, 1),
(1017, '2015-02-03 16:15:49', '173', 'Blu Radio ', 2, 'No fields changed.', 38, 1),
(1018, '2015-02-03 16:37:13', '134', 'Llano 7 Días', 3, '', 36, 1),
(1019, '2015-02-04 18:19:55', '3', 'Domingo', 1, '', 13, 1),
(1020, '2015-02-04 18:22:54', '21', 'Empresa de Publicaciones La Prensa Austral Ltda.', 1, '', 16, 1),
(1021, '2015-02-04 18:28:11', '32', 'Francisco Karelovic Car', 1, '', 7, 1),
(1022, '2015-02-04 18:28:53', '33', 'Jorge Babarovic Novakovic', 1, '', 7, 1),
(1023, '2015-02-04 18:29:08', '290', 'El Magallanes', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, propietario, fuentepropiedad, circulacion, region, tiraje, infotiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1024, '2015-02-04 18:31:23', '290', 'El Magallanes', 2, 'Changed sitioweb.', 17, 1),
(1025, '2015-02-04 18:39:43', '4', 'Lunes a Sábado', 1, '', 13, 1),
(1026, '2015-02-04 18:41:30', '289', 'La Prensa Austral', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion, region, tiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1027, '2015-02-04 18:42:02', '290', 'El Magallanes', 2, 'Changed asociadoaescrito.', 17, 1),
(1028, '2015-02-04 18:42:30', '297', 'HoyxHoy', 2, 'Changed circulacion and region.', 17, 1),
(1029, '2015-02-04 18:50:46', '20', 'Francisco Karelovic Car', 1, '', 8, 1),
(1030, '2015-02-04 18:52:48', '10', 'Estanislao Karelovic', 1, '', 15, 1),
(1031, '2015-02-04 18:53:34', '9', 'Página en Wikipedia Diario La Prensa Austral', 1, '', 25, 1),
(1032, '2015-02-04 18:54:19', '11', 'Jorge Babarovic Novakovic', 1, '', 15, 1),
(1033, '2015-02-04 18:54:48', '21', 'Empresa de Publicaciones La Prensa Austral Ltda.', 2, 'Changed rutpropietario, presidentedirectorio and sectores. Added porcentaje propietario "PorcentajePropietario object". Added porcentaje propietario "PorcentajePropietario object".', 16, 1),
(1034, '2015-02-04 19:07:57', '22', 'Sociedad Editora y Periodística La Verdad', 1, '', 16, 1),
(1035, '2015-02-04 19:08:32', '10', 'Página en Wikipedia Diario El Divisadero', 1, '', 25, 1),
(1036, '2015-02-04 19:13:25', '21', 'Eduardo Vera Wandersleben', 1, '', 8, 1),
(1037, '2015-02-04 19:13:27', '12', 'Compañía Periodística e ImprentaTamango S.A.', 1, '', 15, 1),
(1038, '2015-02-04 19:14:14', '11', 'Revista ANP Nº 40', 1, '', 25, 1),
(1039, '2015-02-04 19:16:10', '22', 'Sociedad Editora y Periodística La Verdad', 2, 'Added porcentaje propietario "PorcentajePropietario object".', 16, 1),
(1040, '2015-02-04 19:20:52', '34', 'Hugo Araya', 1, '', 7, 1),
(1041, '2015-02-04 19:21:16', '35', 'Nancy Puchi', 1, '', 7, 1),
(1042, '2015-02-04 19:21:24', '288', 'Diario El Divisadero', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion and region. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1043, '2015-02-04 19:23:33', '287', 'Aysén Domingo', 3, '', 17, 1),
(1044, '2015-02-04 19:25:47', '36', 'Gabriela Vicentini Rogel', 1, '', 7, 1),
(1045, '2015-02-04 19:26:14', '23', 'Sociedad Periodística de Aysén', 1, '', 16, 1),
(1046, '2015-02-04 19:28:57', '286', 'Diario de Aysén', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion and region. Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1047, '2015-02-04 19:33:12', '284', 'Dato Sur', 3, '', 17, 1),
(1048, '2015-02-04 19:37:05', '5', 'Cada 3 días', 1, '', 13, 1),
(1049, '2015-02-04 19:38:45', '24', 'Troya Comunicaciones', 1, '', 16, 1),
(1050, '2015-02-04 19:41:55', '24', 'Troya Comunicaciones', 2, 'Changed rutpropietario.', 16, 1),
(1051, '2015-02-04 19:42:36', '24', 'Troya Comunicaciones Lmtda.', 2, 'Changed propietario and tiposociedad.', 16, 1),
(1052, '2015-02-04 19:43:14', '37', 'Jorge Barría Mancilla', 1, '', 7, 1),
(1053, '2015-02-04 19:43:21', '283', 'El Insular', 2, 'Changed tipo, pagado_gratuito, genero, periodicidad, direccion, sitioweb and propietario. Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1054, '2015-02-04 19:44:00', '38', 'Ivonne Vásquez J.', 1, '', 7, 1),
(1055, '2015-02-04 19:44:07', '283', 'El Insular', 2, 'Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1056, '2015-02-04 19:46:07', '283', 'El Insular', 2, 'Changed circulacion, region and comuna.', 17, 1),
(1057, '2015-02-04 19:47:44', '282', 'El Correo del Lago', 3, '', 17, 1),
(1058, '2015-02-04 19:58:31', '39', 'Roberto Gaete Parraguéz', 1, '', 7, 1),
(1059, '2015-02-04 19:59:45', '280', 'Llanquihue de Puerto Montt', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1060, '2015-02-04 20:01:49', '18', 'Sociedad Periodística Araucanía S.A.', 2, 'Changed rutpropietario and sectores.', 16, 1),
(1061, '2015-02-04 20:15:08', '40', 'Guido Rodríguez Avilés', 1, '', 7, 1),
(1062, '2015-02-04 20:35:43', '279', 'El Diario Austral de Osorno', 2, 'Changed tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1063, '2015-02-04 20:43:09', '41', 'Marco Salazar Pardo', 1, '', 7, 1),
(1064, '2015-02-04 20:43:29', '278', 'El Diario Austral de la Araucanía', 2, 'Changed medio, tipo, pagado_gratuito, genero, inicioyear, periodicidad, direccion, sitioweb, propietario, fuentepropiedad, circulacion, region, comuna, tiraje, infotiraje and fuentetiraje. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1065, '2015-02-04 20:43:47', '213', 'Padre Las Casas', 2, 'Changed comuna.', 49, 1),
(1066, '2015-02-04 20:44:40', '278', 'El Austral de la Araucanía', 2, 'Changed medio.', 17, 1),
(1067, '2015-02-04 20:47:00', '280', 'El Llanquihue', 2, 'Changed medio.', 17, 1),
(1068, '2015-02-04 20:48:36', '288', 'El Divisadero', 2, 'Changed medio.', 17, 1),
(1069, '2015-02-04 20:48:55', '293', 'Diario Austral Región de Los Ríos', 2, 'Changed medio.', 17, 1),
(1070, '2015-02-04 20:49:21', '279', 'El Austral de Osorno', 2, 'Changed medio.', 17, 1),
(1071, '2015-02-04 20:54:18', '42', 'Chistian Rauld Souyris', 1, '', 7, 1),
(1072, '2015-02-04 20:56:26', '269', 'La Estrella de Concepción', 2, 'Changed inicioyear, direccion, sitioweb, propietario, fuentepropiedad and observaciones. Added Cargo Ejectutivo "CargoEjecutivo object". Added Cargo Ejectutivo "CargoEjecutivo object".', 17, 1),
(1073, '2015-02-04 20:58:36', '12', 'Página en Wikipedia Diario El Sur', 1, '', 25, 1),
(1074, '2015-02-04 21:02:02', '20', 'Diario El Sur S.A.', 2, 'Added porcentaje propietario "PorcentajePropietario object".', 16, 1),
(1075, '2015-02-04 21:02:38', '9', 'Gestión Regional de Medios S.A.', 2, 'Added porcentaje propietario "PorcentajePropietario object".', 16, 1),
(1076, '2015-02-04 21:05:33', '293', 'Diario Austral Región de Los Ríos', 2, 'Changed propietario.', 17, 1),
(1077, '2015-02-04 21:07:28', '280', 'El Llanquihue', 2, 'Changed propietario.', 17, 1),
(1078, '2015-02-04 21:10:56', '11', 'Sociedad Periodística Araucanía', 2, 'Changed sectores.', 16, 1),
(1079, '2015-02-04 21:11:10', '11', 'Sociedad Periodística Araucanía', 3, '', 16, 1),
(1080, '2015-02-04 21:12:12', '9', 'Gestión Regional de Medios S.A.', 2, 'Changed socioporcentaje and fechaporcentaje for porcentaje propietario "PorcentajePropietario object".', 16, 1),
(1081, '2015-02-04 21:12:31', '9', 'Gestión Regional de Medios S.A.', 2, 'Changed sectores.', 16, 1),
(1082, '2015-02-04 21:14:28', '9', 'Gestión Regional de Medios S.A.', 2, 'No fields changed.', 16, 1),
(1083, '2015-02-04 21:16:42', '9', 'Gestión Regional de Medios S.A.', 2, 'Changed tiposociedad.', 16, 1),
(1084, '2015-02-04 22:00:58', '29', 'Positiva FM ', 2, 'Changed propietario.', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'Ejecutivo de Medio', 'medioschile', 'ejecutivo'),
(8, 'Miembro Directorio', 'medioschile', 'empresario'),
(9, 'Género Medio Escrito', 'medioschile', 'generoescrito'),
(10, 'Región', 'medioschile', 'region'),
(11, 'Ciudad', 'medioschile', 'ciudad'),
(12, 'Sector de Actividad Socio', 'medioschile', 'sector'),
(13, 'Periodicidad', 'medioschile', 'periodicidad'),
(14, 'Tipo Sociedad', 'medioschile', 'tiposociedad'),
(15, 'Socio', 'medioschile', 'sociedad'),
(16, 'Empresa Controladora', 'medioschile', 'propietario'),
(17, 'Medio Escrito', 'medioschile', 'escrito'),
(18, 'Género Radio', 'medioschile', 'generoradio'),
(19, 'Radio', 'medioschile', 'radio'),
(20, 'Género Canal TV', 'medioschile', 'generocanaltv'),
(21, 'Canal de TV', 'medioschile', 'canaltv'),
(22, 'Género Medio Digital', 'medioschile', 'generomediodigital'),
(23, 'Medio Digital', 'medioschile', 'mediodigital'),
(24, 'Autor', 'medioschile', 'autor'),
(25, 'Fuente', 'medioschile', 'fuente'),
(26, 'Ejecutivo de Medio', 'medioscolombia', 'ejecutivo'),
(27, 'Miembro Directorio', 'medioscolombia', 'empresario'),
(28, 'Género Medio Escrito', 'medioscolombia', 'generoescrito'),
(29, 'Departamento', 'medioscolombia', 'region'),
(30, 'Municipio', 'medioscolombia', 'ciudad'),
(31, 'Sector de Actividad Socio', 'medioscolombia', 'sector'),
(32, 'Periodicidad', 'medioscolombia', 'periodicidad'),
(33, 'Tipo Sociedad', 'medioscolombia', 'tiposociedad'),
(34, 'Socio', 'medioscolombia', 'sociedad'),
(35, 'Empresa Controladora', 'medioscolombia', 'propietario'),
(36, 'Medio Escrito', 'medioscolombia', 'escrito'),
(37, 'Género Radio', 'medioscolombia', 'generoradio'),
(38, 'Radio', 'medioscolombia', 'radio'),
(39, 'Género Canal TV', 'medioscolombia', 'generocanaltv'),
(40, 'Canal de TV', 'medioscolombia', 'canaltv'),
(41, 'Género Medio Digital', 'medioscolombia', 'generomediodigital'),
(42, 'Medio Digital', 'medioscolombia', 'mediodigital'),
(43, 'Autor', 'medioscolombia', 'autor'),
(44, 'Fuente', 'medioscolombia', 'fuente'),
(45, 'Tipo de Regulación', 'medioschile', 'tipodocumento'),
(46, 'Regulación', 'medioschile', 'regulacion'),
(47, 'Tipo de Regulación', 'medioscolombia', 'tipodocumento'),
(48, 'Regulación', 'medioscolombia', 'regulacion'),
(49, 'Comuna', 'medioschile', 'comuna'),
(50, 'País', 'medioschile', 'paissociedad'),
(51, 'País', 'medioscolombia', 'paissociedad'),
(52, 'porcentaje propietario', 'medioschile', 'porcentajepropietario'),
(53, 'Cargo', 'medioschile', 'cargo'),
(54, 'Cargo Ejectutivo', 'medioschile', 'cargoejecutivo');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-01-07 21:48:58'),
(2, 'auth', '0001_initial', '2015-01-07 21:48:58'),
(3, 'admin', '0001_initial', '2015-01-07 21:48:58'),
(4, 'sessions', '0001_initial', '2015-01-07 21:48:58'),
(5, 'medioschile', '0001_initial', '2015-01-14 17:43:44'),
(6, 'medioschile', '0002_auto_20150116_1354', '2015-01-16 13:57:38'),
(7, 'medioschile', '0003_auto_20150116_1943', '2015-01-16 19:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ec3ur0eav240qxyg5givg7z8k41c4gw', 'ZDM5MTU4NmI1YTE4MjE2MWY2NjI4YWNjMWIxY2ZhMWZlNTIyMjI5YTp7fQ==', '2015-02-08 23:13:49'),
('60141tfjvu18qkc3v7i6ru2ssidgyjcd', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-27 13:31:09'),
('69lkhvesfjxacj6oypr1actbf6aah998', 'ZDM5MTU4NmI1YTE4MjE2MWY2NjI4YWNjMWIxY2ZhMWZlNTIyMjI5YTp7fQ==', '2015-01-24 11:49:07'),
('7kxyk4hmtjn49t2cz6cnoaslr8beba5c', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-30 20:22:31'),
('8mtw2vz7sqe7y82dec9rv41flvsn0ewx', 'ZDM5MTU4NmI1YTE4MjE2MWY2NjI4YWNjMWIxY2ZhMWZlNTIyMjI5YTp7fQ==', '2015-02-17 17:01:36'),
('avtzxk5yv0jx7900stahkpcjx9ly0f1w', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-05 16:29:55'),
('bfiybna04mt4ee5kwkm8tobqbxgtemv8', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-02 20:45:38'),
('cu9hixqbow0lx6qolzchhmpb7fajqvfw', 'ZDM5MTU4NmI1YTE4MjE2MWY2NjI4YWNjMWIxY2ZhMWZlNTIyMjI5YTp7fQ==', '2015-02-11 18:09:11'),
('fe8o2ajvp6w4uptbtuphdvrjtntjnf7u', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-30 00:19:41'),
('flvu5somqpcyicbyy821g9u0d2bjj2pc', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-08 23:14:02'),
('fwfota1yvprnlfv52qq0g5prm6qmulka', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-30 20:22:36'),
('gsvkv7x11bg17v40fwodhnfqfjb0k5pl', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-27 02:23:09'),
('i65c98lcm5gb1no1nf4fe9873cxsl3yr', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-22 01:56:39'),
('l1r1sdbyvojkqsdo23ofam8qbmqx0v3g', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-09 22:51:26'),
('lydm2j6cgx28mctmr9c27l4j767jfecf', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-06 16:47:21'),
('n73mcv67nl2tr0wyu01x63dplwfu9m6y', 'ZDM5MTU4NmI1YTE4MjE2MWY2NjI4YWNjMWIxY2ZhMWZlNTIyMjI5YTp7fQ==', '2015-02-12 18:59:38'),
('ooivxw58m3jspz6utetapuihiri8t0wo', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-22 14:32:56'),
('qtjst8jykeumzyp0owpp5xgj7dun210i', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-11 13:36:38'),
('tq9te4hpdwb1ba1lkmz7dut3gipo7lbc', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-27 14:52:10'),
('wuv5gisyoyksze5zyq46dfyhmctliw0n', 'YWQ5MmI2OGVhYWNlYWUwZTljNmY0ODRkM2ZlMmFlYjAyOWU2NmVjYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5ZjRkM2M0Y2UyZjFiNzM4Y2QzMmVmY2RiYmRiOTIyMWE4OWQ2YjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-02-09 13:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_autor`
--

CREATE TABLE IF NOT EXISTS `medioschile_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(255) NOT NULL,
  `datosautor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `autor` (`autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_canaltv`
--

CREATE TABLE IF NOT EXISTS `medioschile_canaltv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `medio` varchar(255) NOT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `inforating` varchar(255) NOT NULL,
  `fuenterating_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioschile_canaltv_cb19349f` (`asociadoaescrito_id`),
  KEY `medioschile_canaltv_c298a1ee` (`asociadoaradio_id`),
  KEY `medioschile_canaltv_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioschile_canaltv_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioschile_canaltv_7bcc6f63` (`genero_id`),
  KEY `medioschile_canaltv_55a4ce96` (`region_id`),
  KEY `medioschile_canaltv_67a22d87` (`ciudad_id`),
  KEY `medioschile_canaltv_c2e8d443` (`director_id`),
  KEY `medioschile_canaltv_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioschile_canaltv_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `medioschile_canaltv`
--

INSERT INTO `medioschile_canaltv` (`id`, `tipo`, `medio`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `genero_id`, `inicio`, `inicioyear`, `cobertura`, `rating`, `inforating`, `fuenterating_id`, `region_id`, `ciudad_id`, `direccion`, `sitioweb`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(1, NULL, 'Televisión Nacional de Chile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, NULL, 'Mega', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, NULL, 'Chilevisión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Abierto', 'Canal 13', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Nacional', '8,3 - Rating Hogares', 'Información en Memoria Anual 2013', NULL, 6, 6, 'Inés Matte Urrejola 0848 - Providencia - Santiago', 'http://www.13.cl/', 1, NULL, 1, 6, '', '', '', 0),
(5, NULL, 'La Red', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, NULL, 'UCV Televisión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, NULL, 'Telecanal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, NULL, '24 Horas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, NULL, 'CNN Chile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, NULL, 'Zona Latina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, NULL, 'Via X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, NULL, 'Etc TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, NULL, 'ARTV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, NULL, 'Bang TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, NULL, 'Arica TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, NULL, 'VTV2 Valle Televisión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 5, 1, 'Chacabuco 281 - Los Andes', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(17, NULL, 'Contivisión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, NULL, 'Giro Visual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 5, 2, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(19, NULL, 'Litoral de los Poetas TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Comunal', '', '', NULL, 5, 3, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(20, NULL, 'Canal 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 5, 2, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(21, NULL, 'Canal 11 Curicó', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, NULL, 'Canal 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 4, 4, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(23, NULL, 'TVU ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, NULL, 'Universidad Autónoma de Chile Televisión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 'Abierto', 'Tele Angol', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Comunal', '', '', NULL, NULL, NULL, 'Pedro Aguirre Cerda 125 - Angol', 'http://www.teleangol.cl/', NULL, NULL, NULL, NULL, '', '', '', 0),
(26, 'Abierto', 'Pucón T.V.', NULL, NULL, NULL, NULL, 1, NULL, 2005, 'Comunal', '', '', NULL, NULL, NULL, 'Camino Pasarela Quelhue km 1,5 - Pucón', 'http://www.pucontv.com/', 25, NULL, NULL, NULL, '', '', '', 0),
(27, 'Abierto y Cable', 'TvInet Televisión Digital', NULL, NULL, NULL, NULL, 1, NULL, 2009, 'Regional', '', '', NULL, NULL, NULL, 'Bilbao 1129 Oficina 1602 - Osorno', 'http://www.tvinet.cl/', 24, NULL, NULL, 5, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_canaltv_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioschile_canaltv_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_canaltv_comuna`
--

CREATE TABLE IF NOT EXISTS `medioschile_canaltv_comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `medioschile_canaltv_comuna`
--

INSERT INTO `medioschile_canaltv_comuna` (`id`, `canaltv_id`, `comuna_id`) VALUES
(1, 26, 216),
(2, 26, 221),
(3, 25, 223);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_canaltv_propietario`
--

CREATE TABLE IF NOT EXISTS `medioschile_canaltv_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medioschile_canaltv_propietario`
--

INSERT INTO `medioschile_canaltv_propietario` (`id`, `canaltv_id`, `propietario_id`) VALUES
(3, 27, 13),
(4, 25, 14),
(5, 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_canaltv_region`
--

CREATE TABLE IF NOT EXISTS `medioschile_canaltv_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `medioschile_canaltv_region`
--

INSERT INTO `medioschile_canaltv_region` (`id`, `canaltv_id`, `region_id`) VALUES
(13, 27, 6),
(14, 27, 8),
(15, 27, 10),
(16, 27, 11),
(17, 27, 12),
(18, 27, 13);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_cargo`
--

CREATE TABLE IF NOT EXISTS `medioschile_cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cargo` (`cargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medioschile_cargo`
--

INSERT INTO `medioschile_cargo` (`id`, `cargo`) VALUES
(1, 'Director'),
(2, 'Director Ejecutivo'),
(5, 'Editor General'),
(3, 'Gerente'),
(4, 'Representante Legal');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_cargoejecutivo`
--

CREATE TABLE IF NOT EXISTS `medioschile_cargoejecutivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ejecutivocargo_id` int(11) DEFAULT NULL,
  `fechacargo` date DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `escrito_id` int(11) DEFAULT NULL,
  `canaltv_id` int(11) DEFAULT NULL,
  `radio_id` int(11) DEFAULT NULL,
  `mediodigital_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medioschile_cargoejecutivo_2c2af455` (`ejecutivocargo_id`),
  KEY `medioschile_cargoejecutivo_7b821f35` (`cargo_id`),
  KEY `medioschile_cargoejecutivo_aa6e6fa9` (`escrito_id`),
  KEY `medioschile_cargoejecutivo_9b63ca81` (`canaltv_id`),
  KEY `medioschile_cargoejecutivo_fb254052` (`radio_id`),
  KEY `medioschile_cargoejecutivo_bc9ababc` (`mediodigital_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `medioschile_cargoejecutivo`
--

INSERT INTO `medioschile_cargoejecutivo` (`id`, `ejecutivocargo_id`, `fechacargo`, `cargo_id`, `escrito_id`, `canaltv_id`, `radio_id`, `mediodigital_id`) VALUES
(1, 19, '2012-12-31', 1, 297, NULL, NULL, NULL),
(2, 1, '2015-01-01', 2, NULL, 4, NULL, NULL),
(3, 13, '2015-01-28', 1, 294, NULL, NULL, NULL),
(4, 14, '2015-01-28', 3, 294, NULL, NULL, NULL),
(5, 10, '2015-01-28', 4, 294, NULL, NULL, NULL),
(6, 26, '2015-01-28', 1, 281, NULL, NULL, NULL),
(7, 27, '2015-01-28', 3, 281, NULL, NULL, NULL),
(8, 23, '2015-01-28', 4, 281, NULL, NULL, NULL),
(9, 28, '2015-01-28', 1, 291, NULL, NULL, NULL),
(10, 29, '2015-01-28', 5, 291, NULL, NULL, NULL),
(11, 30, '2015-01-29', 3, 291, NULL, NULL, NULL),
(12, 30, '2015-01-29', 1, NULL, NULL, 111, NULL),
(13, 22, '2015-01-29', 1, 293, NULL, NULL, NULL),
(14, 23, '2015-01-29', 4, 293, NULL, NULL, NULL),
(15, 32, '2015-02-04', 1, 290, NULL, NULL, NULL),
(16, 33, '2015-02-04', 3, 290, NULL, NULL, NULL),
(17, 32, '2015-02-04', 1, 289, NULL, NULL, NULL),
(18, 33, '2015-02-04', 3, 289, NULL, NULL, NULL),
(19, 34, '2015-02-04', 1, 288, NULL, NULL, NULL),
(20, 35, '2015-02-04', 3, 288, NULL, NULL, NULL),
(21, 36, '2015-02-04', 1, 286, NULL, NULL, NULL),
(22, 37, '2015-02-04', 1, 283, NULL, NULL, NULL),
(23, 38, '2015-02-04', 3, 283, NULL, NULL, NULL),
(24, 39, '2015-02-04', 1, 280, NULL, NULL, NULL),
(25, 23, '2015-02-04', 4, 280, NULL, NULL, NULL),
(26, 40, '2015-02-04', 1, 279, NULL, NULL, NULL),
(27, 23, '2015-02-04', 4, 279, NULL, NULL, NULL),
(28, 41, '2015-02-04', 1, 278, NULL, NULL, NULL),
(29, 23, '2015-02-04', 4, 278, NULL, NULL, NULL),
(30, 31, '2015-02-04', 1, 269, NULL, NULL, NULL),
(31, 42, '2015-02-04', 4, 269, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioschile_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `medioschile_ciudad`
--

INSERT INTO `medioschile_ciudad` (`id`, `ciudad`) VALUES
(7, 'Calama'),
(5, 'Concepción'),
(3, 'Isla Negra'),
(1, 'Los Andes'),
(2, 'San Antonio'),
(6, 'Santiago'),
(4, 'Vicuña');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_comuna`
--

CREATE TABLE IF NOT EXISTS `medioschile_comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comuna` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comuna` (`comuna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=349 ;

--
-- Dumping data for table `medioschile_comuna`
--

INSERT INTO `medioschile_comuna` (`id`, `comuna`) VALUES
(278, 'Aisén'),
(70, 'Algarrobo'),
(340, 'Alhué'),
(180, 'Alto Biobío'),
(29, 'Alto del Carmen'),
(8, 'Alto Hospicio'),
(256, 'Ancud'),
(34, 'Andacollo'),
(223, 'Angol'),
(291, 'Antártica'),
(14, 'Antofagasta'),
(168, 'Antuco'),
(161, 'Arauco'),
(3, 'Arica'),
(336, 'Buin'),
(182, 'Bulnes'),
(60, 'Cabildo'),
(290, 'Cabo de Hornos (Ex Navarino)'),
(169, 'Cabrero'),
(18, 'Calama'),
(247, 'Calbuco'),
(24, 'Caldera'),
(65, 'Calera'),
(337, 'Calera de Tango'),
(56, 'Calle Larga'),
(4, 'Camarones'),
(10, 'Camiña'),
(39, 'Canela'),
(162, 'Cañete'),
(203, 'Carahue'),
(71, 'Cartagena'),
(48, 'Casablanca'),
(255, 'Castro'),
(76, 'Catemu'),
(128, 'Cauquenes'),
(298, 'Cerrillos'),
(299, 'Cerro Navia'),
(272, 'Chaitén'),
(26, 'Chañaral'),
(129, 'Chanco'),
(109, 'Chépica'),
(150, 'Chiguayante'),
(284, 'Chile Chico'),
(181, 'Chillán'),
(186, 'Chillán Viejo'),
(110, 'Chimbarongo'),
(222, 'Cholchol'),
(257, 'Chonchi'),
(279, 'Cisnes'),
(183, 'Cobquecura'),
(248, 'Cochamó'),
(281, 'Cochrane'),
(86, 'Codegua'),
(184, 'Coelemu'),
(276, 'Coihaique'),
(185, 'Coihueco'),
(87, 'Coinco'),
(141, 'Colbún'),
(11, 'Colchane'),
(332, 'Colina'),
(224, 'Collipulli'),
(88, 'Coltauco'),
(43, 'Combarbalá'),
(148, 'Concepción'),
(300, 'Conchalí'),
(49, 'Concón'),
(119, 'Constitución'),
(163, 'Contulmo'),
(23, 'Copiapó'),
(33, 'Coquimbo'),
(149, 'Coronel'),
(235, 'Corral'),
(204, 'Cunco'),
(225, 'Curacautín'),
(341, 'Curacaví'),
(258, 'Curaco de Vélez'),
(164, 'Curanilahue'),
(205, 'Curarrehue'),
(120, 'Curepto'),
(131, 'Curicó'),
(259, 'Dalcahue'),
(27, 'Diego de Almagro'),
(89, 'Doñihue'),
(301, 'El Bosque'),
(187, 'El Carmen'),
(345, 'El Monte'),
(72, 'El Quisco'),
(73, 'El Tabo'),
(121, 'Empedrado'),
(226, 'Ercilla'),
(302, 'Estación Central'),
(151, 'Florida'),
(206, 'Freire'),
(30, 'Freirina'),
(249, 'Fresia'),
(250, 'Frutillar'),
(273, 'Futaleufú'),
(243, 'Futrono'),
(207, 'Galvarino'),
(6, 'General Lagos'),
(208, 'Gorbea'),
(90, 'Graneros'),
(280, 'Guaitecas'),
(66, 'Hijuelas'),
(274, 'Hualaihué'),
(132, 'Hualañé'),
(159, 'Hualpén'),
(152, 'Hualqui'),
(12, 'Huara'),
(31, 'Huasco'),
(303, 'Huechuraba'),
(38, 'Illapel'),
(304, 'Independencia'),
(7, 'Iquique'),
(346, 'Isla de Maipo'),
(54, 'Isla de Pascua'),
(50, 'Juan Fernández'),
(305, 'La Cisterna'),
(67, 'La Cruz'),
(103, 'La Estrella'),
(306, 'La Florida'),
(307, 'La Granja'),
(35, 'La Higuera'),
(59, 'La Ligua'),
(308, 'La Pintana'),
(309, 'La Reina'),
(32, 'La Serena'),
(242, 'La Unión'),
(244, 'Lago Ranco'),
(277, 'Lago Verde'),
(287, 'Laguna Blanca'),
(170, 'Laja'),
(333, 'Lampa'),
(236, 'Lanco'),
(91, 'Las Cabras'),
(310, 'Las Condes'),
(209, 'Lautaro'),
(160, 'Lebu'),
(133, 'Licantén'),
(82, 'Limache'),
(140, 'Linares'),
(104, 'Litueche'),
(77, 'Llaillay'),
(252, 'Llanquihue'),
(311, 'Lo Barnechea'),
(312, 'Lo Espejo'),
(313, 'Lo Prado'),
(111, 'Lolol'),
(210, 'Loncoche'),
(142, 'Longaví'),
(227, 'Lonquimay'),
(165, 'Los Álamos'),
(55, 'Los Andes'),
(167, 'Los Ángeles'),
(237, 'Los Lagos'),
(251, 'Los Muermos'),
(228, 'Los Sauces'),
(40, 'Los Vilos'),
(153, 'Lota'),
(229, 'Lumaco'),
(92, 'Machalí'),
(314, 'Macul'),
(238, 'Máfil'),
(315, 'Maipú'),
(93, 'Malloa'),
(105, 'Marchihue'),
(22, 'María Elena'),
(342, 'María Pinto'),
(239, 'Mariquina'),
(122, 'Maule'),
(253, 'Maullín'),
(15, 'Mejillones'),
(211, 'Melipeuco'),
(339, 'Melipilla'),
(134, 'Molina'),
(44, 'Monte Patria'),
(94, 'Mostazal'),
(171, 'Mulchén'),
(172, 'Nacimiento'),
(112, 'Nancagua'),
(295, 'Natales'),
(106, 'Navidad'),
(173, 'Negrete'),
(188, 'Ninhue'),
(189, 'Ñiquén'),
(68, 'Nogales'),
(212, 'Nueva Imperial'),
(316, 'Ñuñoa'),
(95, 'Olivar'),
(19, 'Ollagüe'),
(83, 'Olmué'),
(265, 'Osorno'),
(42, 'Ovalle'),
(282, 'O’Higgins'),
(347, 'Padre Hurtado'),
(213, 'Padre Las Casas'),
(36, 'Paiguano'),
(240, 'Paillaco'),
(338, 'Paine'),
(275, 'Palena'),
(113, 'Palmilla'),
(241, 'Panguipulli'),
(78, 'Panquehue'),
(61, 'Papudo'),
(107, 'Paredones'),
(143, 'Parral'),
(317, 'Pedro Aguirre Cerda'),
(123, 'Pelarco'),
(130, 'Pelluhue'),
(190, 'Pemuco'),
(348, 'Peñaflor'),
(318, 'Peñalolén'),
(124, 'Pencahue'),
(154, 'Penco'),
(114, 'Peralillo'),
(214, 'Perquenco'),
(62, 'Petorca'),
(96, 'Peumo'),
(13, 'Pica'),
(97, 'Pichidegua'),
(102, 'Pichilemu'),
(191, 'Pinto'),
(330, 'Pirque'),
(215, 'Pitrufquén'),
(115, 'Placilla'),
(192, 'Portezuelo'),
(292, 'Porvenir'),
(9, 'Pozo Almonte'),
(293, 'Primavera'),
(319, 'Providencia'),
(51, 'Puchuncaví'),
(216, 'Pucón'),
(320, 'Pudahuel'),
(329, 'Puente Alto'),
(246, 'Puerto Montt'),
(266, 'Puerto Octay'),
(254, 'Puerto Varas'),
(116, 'Pumanque'),
(45, 'Punitaqui'),
(286, 'Punta Arenas'),
(260, 'Puqueldón'),
(230, 'Purén'),
(267, 'Purranque'),
(79, 'Putaendo'),
(5, 'Putre'),
(268, 'Puyehue'),
(261, 'Queilén'),
(262, 'Quellón'),
(263, 'Quemchi'),
(174, 'Quilaco'),
(321, 'Quilicura'),
(175, 'Quilleco'),
(193, 'Quillón'),
(64, 'Quillota'),
(81, 'Quilpué'),
(264, 'Quinchao'),
(98, 'Quinta de Tilcoco'),
(322, 'Quinta Normal'),
(52, 'Quintero'),
(194, 'Quirihue'),
(85, 'Rancagua'),
(195, 'Ránquil'),
(135, 'Rauco'),
(323, 'Recoleta'),
(231, 'Renaico'),
(324, 'Renca'),
(99, 'Rengo'),
(100, 'Requínoa'),
(144, 'Retiro'),
(57, 'Rinconada'),
(245, 'Río Bueno'),
(125, 'Río Claro'),
(46, 'Río Hurtado'),
(285, 'Río Ibáñez'),
(269, 'Río Negro'),
(288, 'Río Verde'),
(136, 'Romeral'),
(217, 'Saavedra'),
(137, 'Sagrada Familia'),
(41, 'Salamanca'),
(69, 'San Antonio'),
(335, 'San Bernardo'),
(196, 'San Carlos'),
(126, 'San Clemente'),
(58, 'San Esteban'),
(197, 'San Fabián'),
(75, 'San Felipe'),
(108, 'San Fernando'),
(289, 'San Gregorio'),
(198, 'San Ignacio'),
(145, 'San Javier'),
(325, 'San Joaquín'),
(331, 'San José de Maipo'),
(270, 'San Juan de la Costa'),
(326, 'San Miguel'),
(199, 'San Nicolás'),
(271, 'San Pablo'),
(343, 'San Pedro'),
(20, 'San Pedro de Atacama'),
(155, 'San Pedro de la Paz'),
(127, 'San Rafael'),
(327, 'San Ramón'),
(176, 'San Rosendo'),
(101, 'San Vicente'),
(177, 'Santa Bárbara'),
(117, 'Santa Cruz'),
(156, 'Santa Juana'),
(80, 'Santa María'),
(297, 'Santiago'),
(74, 'Santo Domingo'),
(16, 'Sierra Gorda'),
(344, 'Talagante'),
(118, 'Talca'),
(157, 'Talcahuano'),
(17, 'Taltal'),
(202, 'Temuco'),
(138, 'Teno'),
(218, 'Teodoro Schmidt'),
(25, 'Tierra Amarilla'),
(334, 'Tiltil'),
(294, 'Timaukel'),
(166, 'Tirúa'),
(21, 'Tocopilla'),
(219, 'Toltén'),
(158, 'Tomé'),
(296, 'Torres del Paine'),
(283, 'Tortel'),
(232, 'Traiguén'),
(200, 'Treguaco'),
(178, 'Tucapel'),
(234, 'Valdivia'),
(28, 'Vallenar'),
(47, 'Valparaíso'),
(139, 'Vichuquén'),
(233, 'Victoria'),
(37, 'Vicuña'),
(220, 'Vilcún'),
(146, 'Villa Alegre'),
(84, 'Villa Alemana'),
(221, 'Villarrica'),
(53, 'Viña del Mar'),
(328, 'Vitacura'),
(147, 'Yerbas Buenas'),
(179, 'Yumbel'),
(201, 'Yungay'),
(63, 'Zapallar');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_ejecutivo`
--

CREATE TABLE IF NOT EXISTS `medioschile_ejecutivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ejecutivo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ejecutivo` (`ejecutivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `medioschile_ejecutivo`
--

INSERT INTO `medioschile_ejecutivo` (`id`, `ejecutivo`) VALUES
(6, 'Alejandro Arancibia Bulboa'),
(14, 'Annalisse Binder Giammarino'),
(10, 'Carlos Rodríguez Pérez'),
(28, 'Carlos Skarmeta Oyarzún'),
(7, 'Carlos Vergara Ehrenberg'),
(42, 'Chistian Rauld Souyris'),
(17, 'Christian Díaz Ramírez'),
(1, 'Cristián Bofill'),
(5, 'Cristián Zegers Ariztía'),
(13, 'David Doll Pinto'),
(12, 'Eduardo Campos Correa'),
(20, 'Eduardo Marín Soto'),
(31, 'Felipe Saavedra Arellano'),
(32, 'Francisco Karelovic Car'),
(21, 'Francisco Puga Vergara'),
(36, 'Gabriela Vicentini Rogel'),
(40, 'Guido Rodríguez Avilés'),
(34, 'Hugo Araya'),
(8, 'Ian MacPherson Springmüller'),
(38, 'Ivonne Vásquez J.'),
(9, 'Javier Orellana Vera'),
(33, 'Jorge Babarovic Novakovic'),
(37, 'Jorge Barría Mancilla'),
(18, 'Jorge Domínguez Larraín'),
(29, 'Juan Ignacio Ortíz Reyes'),
(19, 'Juan Pablo Meneses'),
(41, 'Marco Salazar Pardo'),
(30, 'Mauricio Vidal Guerra'),
(35, 'Nancy Puchi'),
(25, 'Natalia Arcaya Bakit'),
(3, 'Pablo Dittborn'),
(2, 'Patricio Fernández Chadwick'),
(24, 'Patricio Huaiquín Montalva'),
(39, 'Roberto Gaete Parraguéz'),
(27, 'Roberto Vega Carrasco'),
(23, 'Rodrigo Prado Lira'),
(15, 'Sebastián Bottaro'),
(16, 'Sergio Mercado Richards'),
(22, 'Verónica Moreno Aguilera'),
(26, 'Víctor Hugo Palma Pérez'),
(11, 'Víctor Toloza Jiménez');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_empresario`
--

CREATE TABLE IF NOT EXISTS `medioschile_empresario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresario` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empresario` (`empresario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `medioschile_empresario`
--

INSERT INTO `medioschile_empresario` (`id`, `empresario`) VALUES
(13, 'Agustín Edwards Eastman'),
(6, 'Alejandro Jadresic Marinovic'),
(12, 'Andrónico Luksic Craig'),
(17, 'Camilo Herrera Barros'),
(1, 'Carolina García de la Huerta Aguirre'),
(21, 'Eduardo Vera Wandersleben'),
(16, 'Enrique Bravo Rocco'),
(15, 'Enrique García Fernández'),
(10, 'Fabio Valdés Correa'),
(20, 'Francisco Karelovic Car'),
(18, 'Jorge Domínguez Larraín'),
(11, 'Marcelo Von Chrismar Werth'),
(19, 'Mauricio Vidal Guerra'),
(5, 'Patricio Donoso Ibañez'),
(14, 'Paula Rojo Almarza'),
(4, 'René Cortazar'),
(2, 'Rodrigo Álvarez Zenteno'),
(7, 'Rodrigo Jordán Fuchs'),
(9, 'Rodrigo Terré Fontbona'),
(8, 'Silvia Pellegrini Ripamonti'),
(3, 'Soledad Alvear Valenzuela');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_escrito`
--

CREATE TABLE IF NOT EXISTS `medioschile_escrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `medio` varchar(255) NOT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `pagado_gratuito` varchar(100) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `circulacion` varchar(100) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `periodicidad_id` int(11) DEFAULT NULL,
  `lectoria` varchar(100) DEFAULT NULL,
  `infolectoria` varchar(255) NOT NULL,
  `fuentelectoria_id` int(11) DEFAULT NULL,
  `tiraje` varchar(100) DEFAULT NULL,
  `infotiraje` varchar(255) DEFAULT NULL,
  `fuentetiraje_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioschile_escrito_cb19349f` (`asociadoaescrito_id`),
  KEY `medioschile_escrito_c298a1ee` (`asociadoaradio_id`),
  KEY `medioschile_escrito_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioschile_escrito_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioschile_escrito_7bcc6f63` (`genero_id`),
  KEY `medioschile_escrito_55a4ce96` (`region_id`),
  KEY `medioschile_escrito_67a22d87` (`ciudad_id`),
  KEY `medioschile_escrito_4a43cba4` (`periodicidad_id`),
  KEY `medioschile_escrito_c2e8d443` (`director_id`),
  KEY `medioschile_escrito_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioschile_escrito_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `medioschile_escrito`
--

INSERT INTO `medioschile_escrito` (`id`, `tipo`, `medio`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `genero_id`, `pagado_gratuito`, `inicio`, `inicioyear`, `circulacion`, `region_id`, `ciudad_id`, `periodicidad_id`, `lectoria`, `infolectoria`, `fuentelectoria_id`, `tiraje`, `infotiraje`, `fuentetiraje_id`, `direccion`, `sitioweb`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(150, NULL, 'Revista El Periodista', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(151, NULL, 'Punto Final', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, NULL, 'Qué Pasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(153, NULL, 'Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(154, NULL, 'ED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(155, NULL, 'Cosas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(156, NULL, 'Casas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(157, NULL, 'Revista Empresas y Poder ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(158, NULL, 'Paula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(159, NULL, 'Vanidades', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(160, NULL, 'Dato Avisos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(161, NULL, 'El Gráfico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(162, NULL, 'The Clinic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, NULL, 'Caras', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(164, NULL, 'TVGrama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(165, NULL, 'Cosmopolitan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, NULL, 'Revista Tú', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(167, NULL, 'Ercilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(168, NULL, 'Vea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(169, NULL, 'Miss 17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(170, NULL, 'América Economía', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(171, NULL, 'Uno Mismo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(172, NULL, 'Cada Día Mejor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(173, NULL, 'Cine-Grama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(174, NULL, 'Muy Interesante', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(175, NULL, 'Women’s health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(176, NULL, 'Ser Padres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(177, NULL, 'Seventeen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(178, NULL, 'National Geographic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(179, NULL, 'Men’s Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(180, NULL, 'Club Nintendo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(181, NULL, 'Condorito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(182, NULL, 'Princesas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(183, NULL, 'Hadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(184, NULL, 'Disney Junior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(185, NULL, 'Arte al Límite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(186, NULL, 'Revista Tell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(187, NULL, 'Revista Nos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(188, NULL, 'Somos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(189, NULL, 'Platos & Copas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(190, NULL, 'De Novios', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(191, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(192, NULL, 'De 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(193, NULL, 'Minería Chilena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(194, NULL, 'Qué Pasa Minería', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(195, NULL, 'Revista Mensaje', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(196, NULL, 'La Tercera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(197, NULL, 'La Cuarta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(198, 'Diario', 'La Hora', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(199, 'Diario', 'El Mercurio', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1900, 'Nacional', NULL, NULL, 1, 'Lectoría en Santiago - Lunes a Viernes: 296.751 - Sábado y Domingo: 495.693', 'Promedios Boletín de Circulación y Lectoría Valida - 1er semestre 2014 - Corresponde a la lectoría en Santiago del diario papel.', 2, '', '', NULL, 'Av. Santa María 5542 - Vitacura - Santiago', 'http://www.elmercurio.cl/', 5, 6, NULL, 1, '', '', '', 0),
(200, NULL, 'Las Ultimas Noticias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(201, NULL, 'La Segunda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(202, NULL, 'Diario Financiero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(203, NULL, 'Diario Estrategia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(204, NULL, 'Publimetro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(205, NULL, 'Pulso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(206, NULL, 'El Siglo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(207, NULL, 'Cambio 21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(208, NULL, 'El Ciudadano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(209, NULL, 'Diario 21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(210, NULL, 'El Salitre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(211, NULL, 'Longino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(212, NULL, 'Iquique Express', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(213, NULL, 'ExtraIquique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(214, 'Diario', 'La Estrella de Iquique', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1966, 'Regional', 1, NULL, 1, '', '', NULL, 'Semana: 10.300 - Sábado: 13.700 - Domingo: 14.900', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Luis Uribe 452 - Iquique', 'http://www.estrellaiquique.cl/', 12, 15, NULL, 1, '', '', '', 0),
(215, NULL, 'Licankoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(216, NULL, 'El Polémico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(217, 'Diario', 'El Mercurio de Antofagasta', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1906, 'Regional', 2, NULL, 1, '', '', NULL, 'Semana: 6.700  - Sábado: 9.500 - Domingo: 21.800', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Manuel Antonio Matta 2112 - Antofagasta', 'http://www.mercurioantofagasta.cl/', 11, 10, NULL, 1, '', '', '', 0),
(218, 'Diario', 'La Estrella de Antofagasta', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1966, 'Regional', 2, NULL, 1, '', '', NULL, 'Semana: 7.100 - Sábado: 8.100', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Manuel Antonio Matta 2112 - Antofagasta', 'http://www.estrellaantofagasta.cl/', 16, 10, NULL, 1, '', '', '', 0),
(219, 'Diario', 'El Mercurio de Calama', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1968, 'Regional', 2, NULL, 1, '', '', NULL, 'Semana: 2.800 - Sábado: 3.200 - Domingo: 6.400', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Abaroa 2051 - Calama', 'http://www.mercuriocalama.cl/', 9, 10, NULL, NULL, '', '', '', 0),
(220, 'Diario', 'La Estrella del Loa', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1989, 'Regional', 2, NULL, 1, '', '', NULL, 'Semana: 7.100 - Sábado: 8.100', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Abaroa 2051 - Calama', 'http://www.estrellaloa.cl/', 16, 10, NULL, 1, '', '', '', 0),
(221, NULL, 'La Estrella de Tocopilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(222, NULL, 'Añañuca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(223, NULL, 'El Diario de Atacama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(224, NULL, 'El Chañarcillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(225, NULL, 'La Provincia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(226, NULL, 'La Voz de Choapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(227, NULL, 'El Valle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(228, NULL, 'El Tiempo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(229, NULL, 'La Región', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(230, 'Diario', 'El Día', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1944, 'Regional', 4, NULL, 1, '', '', NULL, 'Semana: 6.500 - Sábado: 9.200 - Domingo: 17.000', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Brasil 431 - La Serena', 'http://www.diarioeldia.cl/', 21, NULL, NULL, 4, '', '', '', 0),
(231, NULL, 'El Ovallino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(232, NULL, 'El Proa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(233, NULL, 'El Espectador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(234, NULL, 'Impacto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(235, NULL, 'El Andino de Los Andes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(236, NULL, 'El Trabajo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(237, NULL, 'Futuro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(238, NULL, 'Página 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(239, NULL, 'El Observador de Quillota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(240, NULL, 'El Observador de Los Andes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(241, 'Diario', 'El Mercurio de Valparaíso', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1827, 'Regional', 5, NULL, 1, '', '', NULL, 'Semana: 13.000 - Sábado: 16.000 - Domingo: 32.000', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Esmeralda 1002 - Valparaíso - Chile', 'http://www.mercuriovalpo.cl/', 7, 8, NULL, 1, '', '', '', 0),
(242, NULL, 'La Estrella de Valparaíso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(243, NULL, 'El Líder de San Antonio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(244, NULL, 'Contra Plano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(245, NULL, 'Vmás V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(246, NULL, 'El Colchagüino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(247, NULL, 'Opinión Regional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(248, NULL, 'Diario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(249, NULL, 'El Rancagüino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(250, NULL, 'El Tipógrafo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(251, NULL, 'El Renguino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(252, NULL, 'Diario VI Región', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(253, NULL, 'El Cóndor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(254, NULL, 'El Libertador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(255, NULL, 'Diario La Prensa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(256, NULL, 'Diario El Centro de Talca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(257, NULL, 'Diario El Centro de Curicó', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(258, NULL, 'Diario El Centro de Linares', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(259, NULL, 'El Heraldo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(260, NULL, 'La Voz de la Provincia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(261, NULL, 'La Verdad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(262, NULL, 'El Litoral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(263, NULL, 'La Opinión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(264, NULL, 'El Lector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(265, NULL, 'El Sol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(266, NULL, 'La Prensa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(267, NULL, 'Diario La Discusión', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(268, NULL, 'Diario El Sur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(269, 'Diario', 'La Estrella de Concepción', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1995, 'Regional', NULL, NULL, 1, '', '', NULL, 'Semana: 11.200 - Sábado: 11.200 ', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Caupolicán 518 piso 7 - Concepción', 'http://www.estrellaconce.cl/', NULL, NULL, NULL, 1, '', 'Es el ex diario Cónica', '', 0),
(270, NULL, 'La Crónica de Chillán', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(271, NULL, 'Diario Concepción', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(272, NULL, 'La Tribuna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(273, NULL, 'El Renacer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(274, NULL, 'El Golfo de Arauco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(275, NULL, 'Malleco 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(276, NULL, 'El Espejo de Malleco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(277, NULL, 'Diario Las Noticias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(278, 'Diario', 'El Austral de la Araucanía', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1916, 'Regional', NULL, NULL, 1, '', '', NULL, 'Semana: 8.900 - Sábado: 12.500 - Domingo: 15.500', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Antonio Varas 945 - Temuco', 'http://www.australtemuco.cl/', NULL, NULL, NULL, 1, '', '', '', 0),
(279, 'Diario', 'El Austral de Osorno', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1982, 'Comunal', NULL, NULL, 1, '', '', NULL, 'Semana: 4.800 - Sábado:6.500 - Domingo: 7.300', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'O''Higgins 870 - Osorno', 'http://www.australosorno.cl/', NULL, NULL, NULL, 1, '', '', '', 0),
(280, 'Diario', 'El Llanquihue', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1885, 'Regional', NULL, NULL, 1, '', '', NULL, 'Semana: 7.600 - Sábado: 9.500 - Domingo: 10.900', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Antonio Varas 167 - Puerto Montt', 'http://www.ellanquihue.cl/', NULL, NULL, NULL, 1, '', '', '', 0),
(281, 'Diario', 'La Estrella de Chiloé', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 2004, 'Comunal', NULL, NULL, 1, '', '', NULL, 'Semana: 3.200 - Sábado: 3.300 - Domingo: 3.400', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Blanco Encalada 324 of. 203 - Castro', 'http://www.laestrellachiloe.cl/', NULL, NULL, NULL, 1, '', '', '', 0),
(283, 'Diario', 'El Insular', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Comunal', NULL, NULL, 5, '', '', NULL, '', '', NULL, 'Eyzaguirre 447 - Castro', 'http://www.elinsular.cl/', NULL, NULL, NULL, NULL, '', '', '', 0),
(285, NULL, 'Mundo Acuícola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(286, 'Diario', 'Diario de Aysén', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1975, 'Regional', NULL, NULL, 1, '', '', NULL, '', '', NULL, '21 de Mayo 410 - Coyhaique', 'http://diarioaysen.cl/', NULL, NULL, NULL, 1, '', '', '', 0),
(288, 'Diario', 'El Divisadero', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1994, 'Regional', NULL, NULL, 1, '', '', NULL, '', '', NULL, 'Bilbao 597 - Coyhaique', 'http://www.eldivisadero.cl/', NULL, NULL, NULL, 10, '', '', '', 0),
(289, 'Diario', 'La Prensa Austral', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1941, 'Regional', NULL, NULL, 4, '', '', NULL, 'Lunes a Sábado: 8.000', '', 1, 'Waldo Seguel 636 - Punta Arenas', 'http://www.laprensaaustral.cl/', NULL, NULL, NULL, 1, '', '', '', 0),
(290, 'Diario', 'El Magallanes', 289, NULL, NULL, NULL, 1, 'Pagado', NULL, 1894, 'Regional', NULL, NULL, 3, '', '', NULL, 'Domingo: 9.500', 'El Magallanes es la edición dominical de La Prensa Austral', 1, 'Waldo Seguel 636 - Punta Arenas', 'http://www.laprensaaustral.cl/el-magallanes', NULL, NULL, NULL, 1, '', '', '', 0),
(291, 'Diario', 'El Pingüino', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 2008, 'Regional', NULL, NULL, 1, 'Diario de mayor venta en la XII Región', '', 8, '', '', NULL, 'Avenida España 959 - Punta Arenas', 'http://elpinguino.com/digital/', NULL, NULL, NULL, 1, '', '', '', 0),
(293, 'Diario', 'Diario Austral Región de Los Ríos', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1982, 'Regional', NULL, NULL, 1, '', '', NULL, 'Semana: 4.900 - Sábado: 6.800 - Domingo: 8.800', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'Yungay 449 - Valdivia', 'http://www.australdelosrios.cl/', 22, 23, NULL, 1, '', '', '', 0),
(294, 'Diario', 'La Estrella de Arica', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1976, 'Regional', 9, NULL, 1, '', '', NULL, 'Semana: 7.300 - Sábado: 8.400 - Domingo: 9.100', 'Datos de Medios Regionales, empresa de El Mercurio', 3, 'San Marcos 580 - Arica', 'http://www.estrellaarica.cl/', 13, 14, NULL, 1, '', '', '', 0),
(297, 'Diario', 'HoyxHoy', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, 2012, 'Regional', NULL, NULL, 2, '', '', NULL, '', '', NULL, 'Pérez Valenzuela 1620 - Providencia - Santiago', 'http://www.hoyxhoy.cl/', 19, 20, NULL, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_escrito_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioschile_escrito_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioschile_escrito_ciudad`
--

INSERT INTO `medioschile_escrito_ciudad` (`id`, `escrito_id`, `ciudad_id`) VALUES
(1, 219, 7);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_escrito_comuna`
--

CREATE TABLE IF NOT EXISTS `medioschile_escrito_comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=298 ;

--
-- Dumping data for table `medioschile_escrito_comuna`
--

INSERT INTO `medioschile_escrito_comuna` (`id`, `escrito_id`, `comuna_id`) VALUES
(1, 241, 64),
(2, 241, 65),
(3, 241, 69),
(4, 241, 70),
(5, 241, 72),
(6, 241, 75),
(7, 241, 77),
(8, 241, 47),
(9, 241, 48),
(10, 241, 81),
(11, 241, 82),
(12, 241, 52),
(13, 241, 53),
(14, 241, 84),
(15, 219, 18),
(16, 219, 20),
(17, 217, 14),
(18, 217, 15),
(19, 217, 16),
(20, 217, 17),
(21, 217, 21),
(22, 217, 22),
(27, 214, 7),
(28, 214, 8),
(29, 214, 9),
(30, 214, 10),
(31, 214, 11),
(32, 214, 12),
(33, 214, 13),
(34, 218, 16),
(35, 218, 17),
(36, 218, 14),
(37, 218, 22),
(38, 218, 15),
(39, 220, 14),
(40, 220, 15),
(41, 220, 16),
(42, 220, 17),
(43, 220, 18),
(44, 220, 20),
(45, 220, 21),
(46, 220, 22),
(82, 294, 3),
(83, 294, 4),
(84, 294, 5),
(85, 294, 6),
(98, 281, 256),
(99, 281, 257),
(100, 281, 258),
(101, 281, 259),
(102, 281, 260),
(103, 281, 261),
(104, 281, 263),
(105, 281, 264),
(106, 281, 255),
(125, 283, 256),
(126, 283, 258),
(127, 283, 259),
(128, 283, 255),
(186, 278, 202),
(187, 278, 204),
(188, 278, 205),
(189, 278, 206),
(190, 278, 207),
(191, 278, 208),
(192, 278, 209),
(193, 278, 210),
(194, 278, 211),
(195, 278, 212),
(196, 278, 213),
(197, 278, 214),
(198, 278, 215),
(199, 278, 216),
(200, 278, 218),
(201, 278, 219),
(202, 278, 220),
(203, 278, 221),
(204, 278, 223),
(205, 278, 224),
(206, 278, 225),
(207, 278, 226),
(208, 278, 227),
(209, 278, 228),
(210, 278, 229),
(211, 278, 230),
(212, 278, 231),
(213, 278, 232),
(214, 278, 233),
(249, 279, 265),
(250, 279, 266),
(251, 279, 268),
(252, 279, 269),
(253, 279, 270),
(254, 279, 271),
(255, 269, 148),
(256, 269, 149),
(257, 269, 150),
(258, 269, 153),
(259, 269, 154),
(260, 269, 155),
(261, 269, 157),
(262, 269, 158),
(263, 269, 159),
(264, 293, 234),
(265, 293, 235),
(266, 293, 236),
(267, 293, 237),
(268, 293, 238),
(269, 293, 239),
(270, 293, 240),
(271, 293, 241),
(272, 293, 242),
(273, 293, 243),
(274, 293, 244),
(275, 293, 245),
(276, 280, 256),
(277, 280, 257),
(278, 280, 258),
(279, 280, 259),
(280, 280, 260),
(281, 280, 261),
(282, 280, 262),
(283, 280, 263),
(284, 280, 272),
(285, 280, 273),
(286, 280, 274),
(287, 280, 275),
(288, 280, 246),
(289, 280, 247),
(290, 280, 248),
(291, 280, 249),
(292, 280, 250),
(293, 280, 251),
(294, 280, 252),
(295, 280, 253),
(296, 280, 254),
(297, 280, 255);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_escrito_propietario`
--

CREATE TABLE IF NOT EXISTS `medioschile_escrito_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `medioschile_escrito_propietario`
--

INSERT INTO `medioschile_escrito_propietario` (`id`, `escrito_id`, `propietario_id`) VALUES
(3, 199, 5),
(4, 241, 6),
(6, 219, 7),
(7, 217, 7),
(9, 214, 7),
(10, 218, 7),
(12, 220, 7),
(17, 230, 10),
(26, 291, 19),
(29, 294, 7),
(31, 281, 18),
(34, 289, 21),
(35, 290, 21),
(36, 297, 9),
(38, 286, 23),
(41, 283, 24),
(45, 278, 18),
(47, 288, 22),
(49, 279, 18),
(50, 269, 20),
(51, 293, 18),
(52, 280, 18);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_escrito_region`
--

CREATE TABLE IF NOT EXISTS `medioschile_escrito_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `medioschile_escrito_region`
--

INSERT INTO `medioschile_escrito_region` (`id`, `escrito_id`, `region_id`) VALUES
(4, 291, 15),
(7, 294, 9),
(9, 281, 12),
(14, 289, 15),
(15, 290, 15),
(16, 297, 6),
(18, 286, 13),
(19, 283, 12),
(23, 278, 10),
(25, 288, 13),
(27, 279, 12),
(28, 269, 8),
(29, 293, 11),
(30, 280, 12);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_fuente`
--

CREATE TABLE IF NOT EXISTS `medioschile_fuente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuente` varchar(255) NOT NULL,
  `descripcionfuente` longtext,
  `linkfuente` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuente` (`fuente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `medioschile_fuente`
--

INSERT INTO `medioschile_fuente` (`id`, `fuente`, `descripcionfuente`, `linkfuente`) VALUES
(1, 'Sitio WEB institucional', 'Es el sitio WEB del medio que se está registrando.', ''),
(2, 'Boletín de Circulación y Lectoría Valida - 1er semestre 2014', '', 'http://www.valida-chile.cl/cph_upl/Diarios_primer_Semestre_2014.pdf'),
(3, 'Sitio WEB Medios Regionales', 'Sitio WEB Medios Regionales, empresa El Mercurio', 'http://grm.cl/'),
(4, 'Página en Wikipedia Diario El Día', '', 'http://es.wikipedia.org/wiki/El_D%C3%ADa_%28Chile%29'),
(5, 'Portal Chile Proveedores', '', 'http://www.chileproveedores.cl/chprovdnn/'),
(6, 'Memoria Canal 13 - Año 2013', '', 'http://www.13.cl/inversionistas/sites/default/files/memoria/archivos/MEMORIA%202013%20PLIEGO.pdf'),
(7, 'Amarillas.com', 'Portal de Negocios del Grupo El Mercurio', 'http://www.amarillas.com/'),
(8, 'Página en Wikipedia Diario El Pingüino', '', 'http://es.wikipedia.org/wiki/El_Ping%C3%BCino_%28diario%29'),
(9, 'Página en Wikipedia Diario La Prensa Austral', '', 'http://es.wikipedia.org/wiki/La_Prensa_Austral'),
(10, 'Página en Wikipedia Diario El Divisadero', '', 'http://es.wikipedia.org/wiki/El_Divisadero_%28diario%29'),
(11, 'Revista ANP Nº 40', '', 'https://www.scribd.com/doc/53695310/Revista-ANP-40'),
(12, 'Página en Wikipedia Diario El Sur', '', 'http://es.wikipedia.org/wiki/Diario_El_Sur_S.A.');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_fuente_autor`
--

CREATE TABLE IF NOT EXISTS `medioschile_fuente_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuente_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuente_id` (`fuente_id`,`autor_id`),
  KEY `medioschile_fuente_autor_407650da` (`fuente_id`),
  KEY `medioschile_fuente_autor_40e8bcf3` (`autor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_generocanaltv`
--

CREATE TABLE IF NOT EXISTS `medioschile_generocanaltv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioschile_generocanaltv`
--

INSERT INTO `medioschile_generocanaltv` (`id`, `genero`) VALUES
(1, 'Generalista');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_generoescrito`
--

CREATE TABLE IF NOT EXISTS `medioschile_generoescrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioschile_generoescrito`
--

INSERT INTO `medioschile_generoescrito` (`id`, `genero`) VALUES
(1, 'Generalista');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_generomediodigital`
--

CREATE TABLE IF NOT EXISTS `medioschile_generomediodigital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioschile_generomediodigital`
--

INSERT INTO `medioschile_generomediodigital` (`id`, `genero`) VALUES
(1, 'Generalista');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_generoradio`
--

CREATE TABLE IF NOT EXISTS `medioschile_generoradio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioschile_generoradio`
--

INSERT INTO `medioschile_generoradio` (`id`, `genero`) VALUES
(1, 'Música y Noticias'),
(2, 'Universitaria');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_mediodigital`
--

CREATE TABLE IF NOT EXISTS `medioschile_mediodigital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medio` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `nativoasociado` varchar(100) DEFAULT NULL,
  `pagado_gratuito` varchar(100) DEFAULT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `visitaspaginasvistas` int(11) DEFAULT NULL,
  `visitasunicas` int(11) DEFAULT NULL,
  `infovisitas` varchar(255) NOT NULL,
  `fuentevisitas_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioschile_mediodigital_7bcc6f63` (`genero_id`),
  KEY `medioschile_mediodigital_cb19349f` (`asociadoaescrito_id`),
  KEY `medioschile_mediodigital_c298a1ee` (`asociadoaradio_id`),
  KEY `medioschile_mediodigital_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioschile_mediodigital_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioschile_mediodigital_55a4ce96` (`region_id`),
  KEY `medioschile_mediodigital_67a22d87` (`ciudad_id`),
  KEY `medioschile_mediodigital_c2e8d443` (`director_id`),
  KEY `medioschile_mediodigital_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioschile_mediodigital_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `medioschile_mediodigital`
--

INSERT INTO `medioschile_mediodigital` (`id`, `medio`, `sitioweb`, `genero_id`, `cobertura`, `nativoasociado`, `pagado_gratuito`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `inicio`, `inicioyear`, `visitaspaginasvistas`, `visitasunicas`, `infovisitas`, `fuentevisitas_id`, `region_id`, `ciudad_id`, `direccion`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(3, 'Cambio 21', 'http://www.cambio21.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Chile B', 'http://www.chileb.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'CIPER Chile', 'http://www.ciperchile.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'Diario Financiero', 'http://www.df.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'Diario U de Chile', 'http://www.radio.uchile.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'El Ciudadano', 'http://www.elciudadano.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'El Clarin', 'http://www.elclarin.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'El Dínamo', 'http://www.eldinamo.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'El Mostrador', 'http://www.elmostrador.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'El Paradiario 14', 'http://www.elparadiario14.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'El Periodista', 'http://www.elperiodistaonline.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'El Quinto Poder', 'http://www.elquintopoder.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'Emol', 'http://www.emol.com/', NULL, NULL, NULL, NULL, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', 0),
(17, 'Estrategia', 'http://www.estrategia.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'La Cuarta', 'http://www.lacuarta.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'La Hora', 'http://www.lahora.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'La Nación', 'http://www.lanacion.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 'La Tercera', 'http://www.latercera.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'La Voz de Maipu', 'http://www.lavozdemaipu.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'Publimetro', 'http://www.publimetro.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 'Revista Capital', 'http://www.capital.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 'Revista Qué Pasa', 'http://www.quepasa.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'Sentidos Comunes', 'http://www.sentidoscomunes.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'Sitio Cero', 'http://www.sitiocero.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, 'Soy Chile', 'http://www.soychile.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, 'Terra Chile', 'http://www.terra.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, 'The Clinic Online', 'http://www.theclinic.cl/', NULL, NULL, 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 2, 3, 2, NULL, '', '', '', 0),
(38, 'Aconcagua news', 'http://www.aconcaguanews.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 'Ciudad Invisible', 'http://www.ciudadinvisible.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, 'El Martutino', 'http://www.elmartutino.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(42, 'El Observador', 'http://www.observador.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, 'Gran Valparaíso', 'http://www.granvalparaiso.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, 'La Otra Voz', 'http://www.laotravoz.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 'La Unión MC', 'http://www.launionmc.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, 'La Voz de Valparaíso', 'http://www.lavozdevalpo.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 'Putaendo Informa', 'http://www.putaendoinforma.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(48, 'Soy Quillota', 'http://www.soyquillota.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(49, 'Soy San Antonio', 'http://www.soysanantonio.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(50, 'Soy Valparaíso', 'http://www.soyvalparaiso.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(51, 'Carta Abierta', 'http://www.cartaabierta.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 'Dichato al Día', 'http://www.dichatoaldia.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 'El Bulnensino', 'http://www.elbulnensino.blogspot.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', 0),
(55, 'El Concecuente', 'http://www.elconcecuente.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 'La Discusión', 'http://www.ladiscusion.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, 'Medio a Medio', 'http://www.agenciadenoticias.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'Resumen', 'http://www.resumen.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'Soy Arauco', 'http://www.soyarauco.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'Soy Chillán', 'http://www.soychillan.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'Soy Concepción', 'http://www.soyconcepcion.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'Soy Coronel', 'http://www.soycoronel.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'Soy San Carlos', 'http://www.soysancarlos.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'Soy Talcahuano', 'http://www.soytalcahuano.cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, 'Soy Tomé', 'http://www.soytome.cl/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', 0),
(71, 'Red Arica', 'http://redarica.com/', 1, 'Regional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, 9, NULL, '', NULL, NULL, NULL, 1, '', '', '', 0),
(72, 'Soy Arica', 'http://www.soychile.cl/arica/', 1, NULL, 'Asociado', NULL, 294, NULL, NULL, 34, NULL, 2011, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, 1, '', '', '', 0),
(73, 'Valdivia Capital', 'http://www.valdiviacapital.cl/', 1, NULL, 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_mediodigital_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioschile_mediodigital_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_mediodigital_comuna`
--

CREATE TABLE IF NOT EXISTS `medioschile_mediodigital_comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_mediodigital_propietario`
--

CREATE TABLE IF NOT EXISTS `medioschile_mediodigital_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `medioschile_mediodigital_propietario`
--

INSERT INTO `medioschile_mediodigital_propietario` (`id`, `mediodigital_id`, `propietario_id`) VALUES
(1, 71, 12),
(6, 72, 9);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_mediodigital_region`
--

CREATE TABLE IF NOT EXISTS `medioschile_mediodigital_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_paissociedad`
--

CREATE TABLE IF NOT EXISTS `medioschile_paissociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paissociedad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paissociedad` (`paissociedad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioschile_paissociedad`
--

INSERT INTO `medioschile_paissociedad` (`id`, `paissociedad`) VALUES
(1, 'Chile');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_periodicidad`
--

CREATE TABLE IF NOT EXISTS `medioschile_periodicidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodicidad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `periodicidad` (`periodicidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medioschile_periodicidad`
--

INSERT INTO `medioschile_periodicidad` (`id`, `periodicidad`) VALUES
(5, 'Cada 3 días'),
(3, 'Domingo'),
(1, 'Lunes a Domingo'),
(4, 'Lunes a Sábado'),
(2, 'Lunes a Viernes');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_porcentajepropietario`
--

CREATE TABLE IF NOT EXISTS `medioschile_porcentajepropietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socioporcentaje_id` int(11) DEFAULT NULL,
  `porcentajesocio` int(11) DEFAULT NULL,
  `fechaporcentaje` date DEFAULT NULL,
  `fuenteporcentajesocio_id` int(11) DEFAULT NULL,
  `propietarioporcentaje_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medioschile_porcentajepropietario_8419c96d` (`socioporcentaje_id`),
  KEY `medioschile_porcentajepropietario_720d6719` (`fuenteporcentajesocio_id`),
  KEY `medioschile_porcentajepropietario_81cda17a` (`propietarioporcentaje_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `medioschile_porcentajepropietario`
--

INSERT INTO `medioschile_porcentajepropietario` (`id`, `socioporcentaje_id`, `porcentajesocio`, `fechaporcentaje`, `fuenteporcentajesocio_id`, `propietarioporcentaje_id`) VALUES
(1, 8, 100, '2015-01-01', NULL, 7),
(2, 3, 67, '2013-12-31', 6, 17),
(3, 4, 33, '2013-12-31', 6, 17),
(4, 8, NULL, '2015-01-28', NULL, 18),
(5, 10, 75, '2015-02-04', 9, 21),
(6, 11, 25, '2015-02-04', 9, 21),
(7, 12, NULL, '2015-02-04', 11, 22),
(8, 8, NULL, '2015-02-04', 12, 20),
(9, NULL, NULL, NULL, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_propietario`
--

CREATE TABLE IF NOT EXISTS `medioschile_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propietario` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `tiposociedad_id` int(11) DEFAULT NULL,
  `presidentedirectorio_id` int(11) DEFAULT NULL,
  `representantelegal_id` int(11) DEFAULT NULL,
  `utilidades` int(11) DEFAULT NULL,
  `infoutilidades` varchar(255) DEFAULT NULL,
  `fuenteutilidades_id` int(11) DEFAULT NULL,
  `sociedadcontroladora_id` int(11) DEFAULT NULL,
  `pcentsociedadcontroladora` varchar(100) DEFAULT NULL,
  `otrasociedada_id` int(11) DEFAULT NULL,
  `pcentsociedada` varchar(100) DEFAULT NULL,
  `otrasociedadb_id` int(11) DEFAULT NULL,
  `pcentsociedadb` varchar(100) DEFAULT NULL,
  `otrasociedadc_id` int(11) DEFAULT NULL,
  `pcentsociedadc` varchar(100) DEFAULT NULL,
  `otrasociedadd_id` int(11) DEFAULT NULL,
  `pcentsociedadd` varchar(100) DEFAULT NULL,
  `otrasociedade_id` int(11) DEFAULT NULL,
  `pcentsociedade` varchar(100) DEFAULT NULL,
  `fuentepropietario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietario` (`propietario`),
  KEY `medioschile_propietario_e9a02f0c` (`tiposociedad_id`),
  KEY `medioschile_propietario_5f91a1f5` (`presidentedirectorio_id`),
  KEY `medioschile_propietario_f0eb20d7` (`representantelegal_id`),
  KEY `medioschile_propietario_5016b70d` (`sociedadcontroladora_id`),
  KEY `medioschile_propietario_b1d51043` (`otrasociedada_id`),
  KEY `medioschile_propietario_9b75c310` (`otrasociedadb_id`),
  KEY `medioschile_propietario_da5e7ff8` (`otrasociedadc_id`),
  KEY `medioschile_propietario_3d7488bc` (`otrasociedadd_id`),
  KEY `medioschile_propietario_f8949abe` (`otrasociedade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `medioschile_propietario`
--

INSERT INTO `medioschile_propietario` (`id`, `propietario`, `rutpropietario`, `tiposociedad_id`, `presidentedirectorio_id`, `representantelegal_id`, `utilidades`, `infoutilidades`, `fuenteutilidades_id`, `sociedadcontroladora_id`, `pcentsociedadcontroladora`, `otrasociedada_id`, `pcentsociedada`, `otrasociedadb_id`, `pcentsociedadb`, `otrasociedadc_id`, `pcentsociedadc`, `otrasociedadd_id`, `pcentsociedadd`, `otrasociedade_id`, `pcentsociedade`, `fuentepropietario_id`) VALUES
(1, 'Canal 13 S.A.', NULL, NULL, 1, NULL, 7192000, 'Utilidades según Memoria Anual 2013', NULL, 2, '', 3, '0', 4, '0,0000005', NULL, '', NULL, '', NULL, '', NULL),
(2, 'Comercial The Clinic S.A.', NULL, 2, NULL, 3, NULL, '', NULL, NULL, '', NULL, '0', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(5, 'El Mercurio S.A.P.', '90.193.000-7', 2, 13, NULL, NULL, '', NULL, 7, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(6, 'El Mercurio de Valparaíso S.A.P.', '96.705.640-5', 2, NULL, NULL, NULL, '', NULL, 7, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(7, 'Empresa Periodística El Norte S.A.', '84.295.700-1', 2, NULL, 10, NULL, '', NULL, 8, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(8, 'Asesorías e Inversiones y Comunidades Ciudadanas S. A.', '76.652.970-4', 2, 18, 18, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(9, 'Gestión Regional de Medios S.A.', '76.047.103-8', NULL, NULL, NULL, NULL, '', NULL, 7, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(10, 'Antonio Puga y Cía Ltda.', '80.764.900-0', 4, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(12, 'Diariosenred.com', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(13, 'Sociedad Inet Televisión Digital Limitada', '76.020.026-3', 4, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(14, 'Broadcasting & Telecomunicaciones Limitada', '77.357.500-2', 4, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(17, 'Inversiones Canal 13 SpA', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Sociedad Periodística Araucanía S.A.', '87.778.800-8', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Patagónica Publicaciones S.A.', '76.000.759-5', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Diario El Sur S.A.', '', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Empresa de Publicaciones La Prensa Austral Ltda.', '85.732.200-2', 4, 20, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Sociedad Editora y Periodística La Verdad', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Sociedad Periodística de Aysén', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Troya Comunicaciones Lmtda.', '77.469.770-5', 4, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_propietario_miembrosdirectorio`
--

CREATE TABLE IF NOT EXISTS `medioschile_propietario_miembrosdirectorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propietario_id` int(11) NOT NULL,
  `empresario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietario_id` (`propietario_id`,`empresario_id`),
  KEY `medioschile_propietario_miembrosdirectorio_4cace989` (`propietario_id`),
  KEY `medioschile_propietario_miembrosdirectorio_91f3d441` (`empresario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `medioschile_propietario_miembrosdirectorio`
--

INSERT INTO `medioschile_propietario_miembrosdirectorio` (`id`, `propietario_id`, `empresario_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 6),
(6, 1, 7),
(7, 1, 8),
(8, 1, 9),
(9, 1, 10),
(10, 1, 11),
(13, 8, 14),
(14, 8, 15),
(11, 8, 16),
(12, 8, 17);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_propietario_sectores`
--

CREATE TABLE IF NOT EXISTS `medioschile_propietario_sectores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propietario_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietario_id` (`propietario_id`,`sector_id`),
  KEY `medioschile_propietario_sectores_4cace989` (`propietario_id`),
  KEY `medioschile_propietario_sectores_663ed8c9` (`sector_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `medioschile_propietario_sectores`
--

INSERT INTO `medioschile_propietario_sectores` (`id`, `propietario_id`, `sector_id`) VALUES
(14, 6, 8),
(15, 6, 10),
(21, 7, 8),
(22, 7, 10),
(23, 7, 11),
(4, 8, 8),
(5, 8, 9),
(16, 10, 8),
(19, 13, 8),
(20, 14, 8),
(28, 18, 8),
(29, 18, 10),
(30, 18, 11),
(24, 19, 8),
(25, 21, 8),
(26, 21, 10),
(27, 21, 11);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_radio`
--

CREATE TABLE IF NOT EXISTS `medioschile_radio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medio` varchar(255) NOT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `frecuencia` varchar(100) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `indiceaudiencia` varchar(100) DEFAULT NULL,
  `infoaudiencia` varchar(255) NOT NULL,
  `fuenteaudiencia_id` int(11) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioschile_radio_cb19349f` (`asociadoaescrito_id`),
  KEY `medioschile_radio_c298a1ee` (`asociadoaradio_id`),
  KEY `medioschile_radio_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioschile_radio_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioschile_radio_7bcc6f63` (`genero_id`),
  KEY `medioschile_radio_55a4ce96` (`region_id`),
  KEY `medioschile_radio_67a22d87` (`ciudad_id`),
  KEY `medioschile_radio_c2e8d443` (`director_id`),
  KEY `medioschile_radio_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioschile_radio_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `medioschile_radio`
--

INSERT INTO `medioschile_radio` (`id`, `medio`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `genero_id`, `frecuencia`, `inicio`, `inicioyear`, `indiceaudiencia`, `infoaudiencia`, `fuenteaudiencia_id`, `cobertura`, `region_id`, `ciudad_id`, `direccion`, `sitioweb`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(1, 'Bío Bío ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'Cooperativa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'Corazón ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'FM Dos ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Oasis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, '40 Principales ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'ADN Radio ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Agricultura ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Armonia ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'Beethoven ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Cámara de Diputados ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'Carnaval ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'Carolina ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Coléricos ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Concierto ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'Digital FM ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'Duna ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'El Conquistador ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'FM Tiempo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'Folclórica de Chile ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'Futuro ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 'Horizonte ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 'Imagina ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'Infinita ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 'Montecarlo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 'Nuevo Mundo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'Paula FM ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 'Play FM ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 'Positiva FM ', 281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '', 'http://www.positivafm.cl/', NULL, NULL, NULL, NULL, '', '', '', 0),
(30, 'Pudahuel ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 'Punto 7 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'Radio X ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'RadioActiva ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, 'Rock & Pop ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, 'Romántica ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, 'Tierra ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(37, 'Universo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, 'Uno ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 'Zero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, 'Bravissima de Iquique ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, 'Canal 95 de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(42, 'Caribe de Iquique ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, 'Carillón de Calama ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, 'Centro de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 'Definitiva de Tocopilla ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, 'Desierto de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 'FM Plus de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(48, 'FmMas de Arica ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(49, 'Genesis de Copiapó ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(50, 'Illapel FM ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(51, 'Maray de Copiapó ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(52, 'Maxima FM de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 'Milenio de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 'Nostalgica FM de Atacama ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(55, 'Paulina de Iquique ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 'Radio Calama ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, 'San Bartolomé de La Serena ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, 'Sol de Antofagasta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'Vanguardia ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'Aconcagua de San Felipe ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'Alfaomega de Curicó ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'Azul de San Felipe ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'Buena Nueva de Linares ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'Chilena FM de San Antonio ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'Congreso de Valparaíso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, 'Contemporanea del Valle de Aconcagua ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(67, 'Festival de Viña del Mar ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, 'Futura de Talca ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, 'La Radioneta de Valparaíso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, 'Libra Fm ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, 'Magica de Talca ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, 'Máxima de San Bernardo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, 'Okey de Los Andes ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, 'Orocoipo de Rancagua ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, 'Paloma de Talca ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, 'Portales de Valparaíso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, 'Primordial FM de Rancagua ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, 'Punto Nueve San Fernando ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, 'Radio Joven ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, 'Radio Rancagua ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, 'Radio Tropical Latina ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, 'Radio Valparaíso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, 'Ritoque de Valparaíso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, 'UCV de Valparaíso ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, 'Universidad de Chile ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'Universidad de Santiago ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, 'Universidad de Viña del Mar ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'Vacaciones de El Quisco ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, 'Ainil Sonido Nacional de Valdivia ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'Alborada de Chillán ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'Amiga de Calbuco ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, 'Camila de Los Angeles ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, 'Cariñosa de Chillán ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, 'Contigo de San Carlos ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, 'Isadora de Chillán ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, 'La Ciudad Puerto de Lebu ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, 'Las Nieves de Puerto Aysén ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 'Macarena de Chillán ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, 'Magallanes de la XII región ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, 'Ñuble de Chillán ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, 'Polar de Punta Arenas ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 'Puelche FM de Pucón ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 'Quellón FM ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 'Reloncaví de Puerto Montt ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, 'Stellar de Chillán ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, 'Stylo de Quellón ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, 'Universal de Curacautín ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, 'Universidad de Concepción ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, 'Universidad del Bío Bío ', NULL, NULL, NULL, NULL, 2, 'AM', NULL, 1963, '', '', NULL, NULL, NULL, NULL, 'Avda. Collao Nº 1202 - Concepción', 'http://www.radioubb.cl/', NULL, NULL, NULL, NULL, '', '', '', 0),
(110, 'Radio Caramelo', NULL, NULL, NULL, NULL, 1, 'FM', NULL, 2006, '', '', NULL, 'Comunal', NULL, NULL, 'Julio Sepúlveda 1193 - Angol', '', NULL, NULL, NULL, 1, '', '', '', 0),
(111, 'Signos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015, '', '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_radio_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioschile_radio_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_radio_comuna`
--

CREATE TABLE IF NOT EXISTS `medioschile_radio_comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioschile_radio_comuna`
--

INSERT INTO `medioschile_radio_comuna` (`id`, `radio_id`, `comuna_id`) VALUES
(1, 110, 256),
(2, 110, 223);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_radio_propietario`
--

CREATE TABLE IF NOT EXISTS `medioschile_radio_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioschile_radio_propietario`
--

INSERT INTO `medioschile_radio_propietario` (`id`, `radio_id`, `propietario_id`) VALUES
(1, 110, 14);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_radio_region`
--

CREATE TABLE IF NOT EXISTS `medioschile_radio_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_region`
--

CREATE TABLE IF NOT EXISTS `medioschile_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region` (`region`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `medioschile_region`
--

INSERT INTO `medioschile_region` (`id`, `region`) VALUES
(1, 'I Región de Tarapacá'),
(2, 'II Región de Antofagasta'),
(3, 'III Región de Atacama'),
(4, 'IV Región de Coquimbo'),
(10, 'IX Región de la Araucanía'),
(6, 'Región Metropolitana'),
(5, 'V Región de Valparaíso'),
(7, 'VI Región del Libertador General Bernardo O''Higgins'),
(14, 'VII Región del Maule'),
(8, 'VIII Región del Biobío'),
(12, 'X Región de Los Lagos'),
(13, 'XI Región de Aysén'),
(15, 'XII Región de Magallanes'),
(11, 'XIV Región de Los Ríos'),
(9, 'XV Región de Arica y Parinacota');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_regulacion`
--

CREATE TABLE IF NOT EXISTS `medioschile_regulacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(255) NOT NULL,
  `tipodocumento_id` int(11) DEFAULT NULL,
  `descripciondocumento` longtext,
  `linkdocumento` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`documento`),
  KEY `medioschile_regulacion_f9ba3e61` (`tipodocumento_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioschile_regulacion`
--

INSERT INTO `medioschile_regulacion` (`id`, `documento`, `tipodocumento_id`, `descripciondocumento`, `linkdocumento`) VALUES
(1, 'Ley 19.733 Sobre Libertad de Opinión e Información y Ejercicio del Periodismo', 2, 'Ultima Modificación: 23-DIC-2013', 'http://bcn.cl/1i06e');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_sector`
--

CREATE TABLE IF NOT EXISTS `medioschile_sector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sector` (`sector`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `medioschile_sector`
--

INSERT INTO `medioschile_sector` (`id`, `sector`) VALUES
(6, 'Agrícola'),
(2, 'Alimentos y Bebidas'),
(9, 'Asesorías'),
(1, 'Energía y Combustibles'),
(4, 'Finanzas'),
(10, 'Imprenta'),
(3, 'Minería'),
(11, 'Producción de Eventos'),
(8, 'Publicidad y Marketing'),
(5, 'Sanitario');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_sociedad`
--

CREATE TABLE IF NOT EXISTS `medioschile_sociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad` varchar(255) NOT NULL,
  `rutsociedad` varchar(255) DEFAULT NULL,
  `tiposociedad_id` int(11) DEFAULT NULL,
  `paissocio_id` int(11) DEFAULT NULL,
  `controlador_id` int(11) DEFAULT NULL,
  `presidentedirectorio_id` int(11) DEFAULT NULL,
  `representantelegal_id` int(11) DEFAULT NULL,
  `utilidades` int(11) DEFAULT NULL,
  `infoutilidades` varchar(255) DEFAULT NULL,
  `fuenteutilidades_id` int(11) DEFAULT NULL,
  `sociedadcontroladora_id` int(11) DEFAULT NULL,
  `pcentsociedadcontroladora` varchar(100) DEFAULT NULL,
  `otrasociedada_id` int(11) DEFAULT NULL,
  `pcentsociedada` varchar(100) DEFAULT NULL,
  `otrasociedadb_id` int(11) DEFAULT NULL,
  `pcentsociedadb` varchar(100) DEFAULT NULL,
  `otrasociedadc_id` int(11) DEFAULT NULL,
  `pcentsociedadc` varchar(100) DEFAULT NULL,
  `otrasociedadd_id` int(11) DEFAULT NULL,
  `pcentsociedadd` varchar(100) DEFAULT NULL,
  `otrasociedade_id` int(11) DEFAULT NULL,
  `pcentsociedade` varchar(100) DEFAULT NULL,
  `fuentesociedad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sociedad` (`sociedad`),
  KEY `medioschile_sociedad_e9a02f0c` (`tiposociedad_id`),
  KEY `medioschile_sociedad_5f91a1f5` (`presidentedirectorio_id`),
  KEY `medioschile_sociedad_f0eb20d7` (`representantelegal_id`),
  KEY `medioschile_sociedad_5016b70d` (`sociedadcontroladora_id`),
  KEY `medioschile_sociedad_b1d51043` (`otrasociedada_id`),
  KEY `medioschile_sociedad_9b75c310` (`otrasociedadb_id`),
  KEY `medioschile_sociedad_da5e7ff8` (`otrasociedadc_id`),
  KEY `medioschile_sociedad_3d7488bc` (`otrasociedadd_id`),
  KEY `medioschile_sociedad_f8949abe` (`otrasociedade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `medioschile_sociedad`
--

INSERT INTO `medioschile_sociedad` (`id`, `sociedad`, `rutsociedad`, `tiposociedad_id`, `paissocio_id`, `controlador_id`, `presidentedirectorio_id`, `representantelegal_id`, `utilidades`, `infoutilidades`, `fuenteutilidades_id`, `sociedadcontroladora_id`, `pcentsociedadcontroladora`, `otrasociedada_id`, `pcentsociedada`, `otrasociedadb_id`, `pcentsociedadb`, `otrasociedadc_id`, `pcentsociedadc`, `otrasociedadd_id`, `pcentsociedadd`, `otrasociedade_id`, `pcentsociedade`, `fuentesociedad_id`) VALUES
(2, 'Inversiones Canal 13 SpA', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, 3, '67', 4, '33', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(3, 'Inversiones TV-Medios Ltda.', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, 5, '99', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(4, 'Pontificia Universidad Católica de Chile', NULL, NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Inversiones Consolidadas', '', NULL, NULL, 9, NULL, NULL, NULL, '', NULL, 6, '100', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(6, 'Grupo Luksic', '', NULL, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(7, 'Agustín Edwards Eastman', '2.150.830-6', 3, 1, 0, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(8, 'Medios Regionales', '', 2, 1, 7, NULL, NULL, NULL, '', NULL, 7, '100', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(9, 'Andrónico Luksic Craig', '6.062.786-K', 3, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Estanislao Karelovic', '', 3, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Jorge Babarovic Novakovic', '', 3, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Compañía Periodística e ImprentaTamango S.A.', '', 2, 1, NULL, 21, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_sociedad_miembrosdirectorio`
--

CREATE TABLE IF NOT EXISTS `medioschile_sociedad_miembrosdirectorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `empresario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sociedad_id` (`sociedad_id`,`empresario_id`),
  KEY `medioschile_sociedad_miembrosdirectorio_fb9c860f` (`sociedad_id`),
  KEY `medioschile_sociedad_miembrosdirectorio_91f3d441` (`empresario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_sociedad_sectores`
--

CREATE TABLE IF NOT EXISTS `medioschile_sociedad_sectores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sociedad_id` (`sociedad_id`,`sector_id`),
  KEY `medioschile_sociedad_sectores_fb9c860f` (`sociedad_id`),
  KEY `medioschile_sociedad_sectores_663ed8c9` (`sector_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `medioschile_sociedad_sectores`
--

INSERT INTO `medioschile_sociedad_sectores` (`id`, `sociedad_id`, `sector_id`) VALUES
(14, 5, 1),
(7, 6, 1),
(8, 6, 2),
(9, 6, 3),
(10, 6, 4),
(11, 6, 5),
(13, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `medioschile_tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodocumento` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipodocumento` (`tipodocumento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioschile_tipodocumento`
--

INSERT INTO `medioschile_tipodocumento` (`id`, `tipodocumento`) VALUES
(2, 'Ley'),
(1, 'Norma Constitucional');

-- --------------------------------------------------------

--
-- Table structure for table `medioschile_tiposociedad`
--

CREATE TABLE IF NOT EXISTS `medioschile_tiposociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiposociedad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tiposociedad` (`tiposociedad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `medioschile_tiposociedad`
--

INSERT INTO `medioschile_tiposociedad` (`id`, `tiposociedad`) VALUES
(3, 'Persona Natural'),
(2, 'Sociedad Anónima'),
(4, 'Sociedad de Responsabilidad Limitada');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_autor`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(255) NOT NULL,
  `datosautor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `autor` (`autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_canaltv`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_canaltv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `medio` varchar(255) NOT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `inforating` varchar(255) NOT NULL,
  `fuenterating_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioscolombia_canaltv_cb19349f` (`asociadoaescrito_id`),
  KEY `medioscolombia_canaltv_c298a1ee` (`asociadoaradio_id`),
  KEY `medioscolombia_canaltv_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioscolombia_canaltv_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioscolombia_canaltv_7bcc6f63` (`genero_id`),
  KEY `medioscolombia_canaltv_67a22d87` (`ciudad_id`),
  KEY `medioscolombia_canaltv_c2e8d443` (`director_id`),
  KEY `medioscolombia_canaltv_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioscolombia_canaltv_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `medioscolombia_canaltv`
--

INSERT INTO `medioscolombia_canaltv` (`id`, `tipo`, `medio`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `genero_id`, `inicio`, `inicioyear`, `cobertura`, `rating`, `inforating`, `fuenterating_id`, `region_id`, `ciudad_id`, `direccion`, `sitioweb`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(1, 'Abierto', 'Canal RCN ', NULL, 170, NULL, NULL, 1, NULL, 1998, 'Nacional', '12211800', 'Tomado del EGM Tercera Ola 2012', 1, NULL, NULL, 'Av. Americas # 65 - 82', 'http://www.canalrcnmsn.com/', 89, NULL, NULL, NULL, '(1) 4269292', '', '', 0),
(2, 'Abierto', 'Caracol TV ', 80, 173, NULL, 2, 1, NULL, 1998, 'Nacional', '12058200', 'Tomado del EGM Tercera Ola 2012', 1, NULL, NULL, 'Calle 103 69 B -43 ', 'http://www.noticiascaracol.com/', 39, NULL, NULL, NULL, '(1) 6430430 Ext. 2118', 'Preguntar en comunicaciones por Carolina Herrera. ', '', 0),
(4, 'Abierto', 'Canal Uno ', NULL, NULL, NULL, NULL, 1, NULL, 1998, 'Nacional', '', '', NULL, NULL, NULL, 'AV Calle 26 Nº 85 D – 55 Local 107', 'http://www.canaluno.com.co/', NULL, NULL, NULL, NULL, '(1) 2200700 Ext. 128', 'Falta el rating. ', '', 0),
(5, 'Abierto', 'Canal Capital ', NULL, NULL, NULL, NULL, 1, NULL, 1995, 'Regional', '1069100', 'Suministrada por Canal Capital', NULL, 73, NULL, 'Av. el Dorado Nº 66-63 Piso 5', 'http://www.canalcapital.gov.co/', NULL, 90, NULL, NULL, '(1) 457830', '', '', 0),
(6, 'Abierto', 'Telecaribe', NULL, NULL, NULL, NULL, 1, NULL, 1986, 'Regional', '9189468', '', NULL, NULL, NULL, 'Carrera 30 Nº 1-2487 al lado de la Universidad del Atlántico, Km 7 Corredor Universitario sector de sabanilla', 'http://www.telecaribe.com.co/', NULL, 91, NULL, NULL, '(5) 3185050/ 52/53/ 54/55/56/57/58/59', '', '', 0),
(7, 'Abierto', 'Telepacífico', NULL, NULL, NULL, NULL, 1, NULL, 1988, 'Regional', '', '', NULL, NULL, NULL, 'Calle 5 Nº 38 A-14 Piso 3. Cali', 'http://www.telepacifico.com/', NULL, 92, NULL, NULL, '(2) 5184000', '', '', 0),
(8, NULL, 'Teleislas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.teleislas.com.co/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, NULL, 'Telecafe ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Regional', '', '', NULL, NULL, NULL, '', 'http://www.telecafe.gov.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(10, NULL, 'CANAL TRO - TRO LTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.canaltro.com/', NULL, NULL, NULL, NULL, NULL, '', '', 0),
(11, NULL, 'Teleantioquia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.teleantioquia.co/', NULL, NULL, NULL, NULL, NULL, '', '', 0),
(12, 'Cable', 'NTN 24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.ntn24.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'Cable', 'Cable Noticias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.cablenoticias.tv/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Cable', 'Canal El Tiempo', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'http://www.canaleltiempo.tv/', NULL, NULL, NULL, NULL, '', '', '', 0),
(15, NULL, 'City TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', 'http://www.citytv.com.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(16, 'Cable', 'Winsports', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.winsports.co/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'Abierta', 'Canal Institucional ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.senalinstitucional.gov.co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'Abierta', 'Señal Colombia ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 'http://www.senalcolombia.tv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'Abierto', 'Teleamiga ', NULL, NULL, NULL, NULL, 7, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Carrera 13 Nº 49-63 Frente ala Clinica Marly', 'http://www.teleamiga.com/', NULL, NULL, NULL, NULL, '(1) 5781888', '', '', 0),
(29, 'Abierto', 'Canal TR3CE', NULL, NULL, NULL, NULL, 6, NULL, 1998, 'Regional', '', '', NULL, NULL, NULL, 'Transversal 28A No. 39-29', 'http://www.canaltr3ce.co/', NULL, 102, NULL, NULL, '(1) 5702454 ', '', '', 0),
(30, 'Abierto', 'Telesantiago', NULL, NULL, NULL, NULL, 7, NULL, 2000, 'Departamental', '', '', NULL, NULL, NULL, 'Carrera 2ª Nº 59-390 Tunja', 'http://www.arquidiocesisdetunja.org/en/medios/telesantiago', NULL, NULL, NULL, NULL, '(8) 7452099  / 7455455', '', '', 0),
(31, 'Abierto', 'TV Cinco Monteria', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Calle 21 No. 1-30	Monteria,	Córdoba', 'http://www.tvcincomonteria.co/index.php', NULL, NULL, NULL, NULL, '', '', '', 0),
(32, 'Abierto', 'Telemedellín', NULL, NULL, NULL, NULL, 1, NULL, 1997, 'Departamental', '', '', NULL, NULL, NULL, '', 'http://telemedellin.tv/#2', NULL, 103, NULL, NULL, '', '', '', 0),
(33, 'Abierto', 'Cejes Vallevisión', NULL, NULL, NULL, NULL, 7, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Calle 13A Nº 9 - 26 Valledupar ', 'http://www.cejes.com/', NULL, 104, NULL, NULL, '(5) 571 2334', '', '', 0),
(34, 'Abierto', 'ABN TV', NULL, NULL, NULL, NULL, 7, NULL, 2001, 'Local', '', '', NULL, NULL, NULL, 'Avenida Carrera 68 Nº 13 - 80', 'http://www.avivamiento.com/abntv.php', NULL, 105, NULL, NULL, '(1) 4173333', '', '', 0),
(35, 'Abierto', 'ATN Televisión', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, '', 'http://atntelevision.com.co/', NULL, 106, NULL, NULL, '', '', '', 0),
(36, 'Abierto', 'Canal TVC', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, '', 'http://www.canaltvc.com.co/#&slider1=3', NULL, NULL, NULL, NULL, '', '', '', 0),
(37, 'Abierto', 'Canal DC TV', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Calle 129 Nº 56 C – 22', 'http://www.canaldc.tv/sitio/index.php?option=com_content&view=frontpage&Itemid=1', NULL, NULL, NULL, NULL, '(1) 6439200 / 6439777', '', '', 0),
(38, 'Abierto', 'Hogar Televisión', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Calle 36 Nº 28-28 Barrio la Soledad - Bogotá', 'http://www.hogartv.tv/index.html', 107, NULL, NULL, NULL, '(1) 4100183 / 4100164 Cel. 3112291319', '', '', 0),
(39, 'Abierto', 'Canal 2 de Yopal', NULL, NULL, NULL, NULL, 1, NULL, 2002, 'Local', '', '', NULL, NULL, NULL, 'Calle 9 Nº 22-30 Yopal', 'http://micanal2.tv/', NULL, NULL, NULL, NULL, '', '', '', 0),
(40, 'Abierto', 'Cali TV', NULL, NULL, NULL, NULL, 1, NULL, 2003, 'Local', '', '', NULL, NULL, NULL, 'Calle 21n Nº 3n-49 Cali ', 'http://www.canalcalitv.com/index.html', NULL, NULL, NULL, NULL, '(2) 661 8635', '', '', 0),
(41, 'Abierto', 'Tele Vid', NULL, NULL, NULL, NULL, 1, '2000-10-26', 2000, 'Local', '', '', NULL, NULL, NULL, 'Calle 19 Nº 42-05	Medellín', 'http://televid.tv/televid/', NULL, NULL, NULL, NULL, '(4) 604 1010', '', '', 0),
(42, 'Abierto', 'TeleUnidad', NULL, NULL, NULL, NULL, 7, '2000-08-18', 2000, 'Departamental', '', '', NULL, NULL, NULL, 'Avenida 6 A Nº #28N-98 PISO 5 EDF. EL CRISTAL', 'http://teleunidad.jimdo.com/', NULL, NULL, NULL, NULL, '(2) 6679921 Ext 700', '', '', 0),
(43, 'Abierto', 'CMB Televisión', NULL, NULL, NULL, NULL, 7, '2004-01-01', 2004, 'Local', '', '', NULL, NULL, NULL, 'CALLE 2 a Nº 9-67 Bogotá', 'http://www.cmbcolombia.tv/portaltv/', NULL, NULL, NULL, NULL, '(1) 2332222', '', '', 0),
(44, 'Abierto', 'HSB Televisión', NULL, NULL, NULL, NULL, 1, NULL, 2003, 'Local', '', '', NULL, NULL, NULL, 'Calle 100 No. 69B - 40                                                             ', '', NULL, NULL, NULL, NULL, '(1) 6134000', '', '', 0),
(45, 'Abierto', 'Uniautónoma Televisión', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Dirección Calle 90 Nº 46-112 ', 'http://www.uniautonoma.tv/', NULL, NULL, NULL, NULL, '(5) 3575944', '', '', 0),
(46, 'Abierto', 'UdeC TV', NULL, NULL, NULL, NULL, 1, NULL, 2005, 'Local', '', '', NULL, NULL, NULL, 'Centro, Claustro de la Merced, Cra. 4ª. Nº 38-40 Segundo Piso', 'http://udectv.unicartagena.edu.co/', NULL, NULL, NULL, NULL, '(5) 6600686 / Cel 300-2046164', '', '', 0),
(47, 'Abierto', 'Telepasto', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 'Ciudad Universitaria Torobajo - Calle 18 Cr 50', '', NULL, NULL, NULL, NULL, '(2) 7291406/ 7311449/ 7316837', '', '', 0),
(48, 'Abierto', 'Canal Universitario', NULL, NULL, NULL, NULL, 6, NULL, NULL, 'Local', '', '', NULL, NULL, NULL, 'Calle 13 No. 100-00 Cali. ', 'http://cms.univalle.edu.co/canaluniversitario/', NULL, NULL, NULL, NULL, '(2) 3397295 / 3306721', '', '', 0),
(49, 'Abierto', 'Canal U. Canal Universitario de Antioquia. ', NULL, NULL, NULL, NULL, 6, NULL, 1999, 'Departamental', '', '', NULL, NULL, NULL, 'Calle 41 Nº 55 - 35 Av. Ferrocarril, Portería 1, Pabellón Amarillo, Plaza Mayor. Medellín - Colombia', 'http://www.igualavos.com.co/', 108, NULL, NULL, NULL, '(4) 576 42 00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_canaltv_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_canaltv_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `medioscolombia_canaltv_ciudad`
--

INSERT INTO `medioscolombia_canaltv_ciudad` (`id`, `canaltv_id`, `ciudad_id`) VALUES
(1, 5, 1),
(2, 31, 441),
(3, 32, 2),
(5, 33, 416),
(6, 34, 1),
(7, 35, 792),
(9, 37, 1),
(10, 36, 858),
(11, 38, 1),
(12, 39, 1067),
(13, 19, 1),
(14, 40, 4),
(15, 41, 2),
(16, 42, 4),
(17, 43, 1),
(18, 44, 1),
(19, 45, 138),
(20, 46, 3),
(21, 48, 4),
(22, 49, 2);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_canaltv_propietario`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_canaltv_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_canaltv_region`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_canaltv_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canaltv_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canaltv_id` (`canaltv_id`,`region_id`),
  KEY `medioscolombia_canaltv_region_9b63ca81` (`canaltv_id`),
  KEY `medioscolombia_canaltv_region_55a4ce96` (`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `medioscolombia_canaltv_region`
--

INSERT INTO `medioscolombia_canaltv_region` (`id`, `canaltv_id`, `region_id`) VALUES
(2, 9, 91),
(10, 19, 73),
(1, 29, 73),
(3, 30, 75),
(4, 32, 1),
(6, 33, 79),
(7, 34, 73),
(8, 37, 73),
(9, 38, 73),
(11, 42, 4),
(12, 43, 73),
(13, 44, 73),
(14, 49, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1136 ;

--
-- Dumping data for table `medioscolombia_ciudad`
--

INSERT INTO `medioscolombia_ciudad` (`id`, `ciudad`) VALUES
(14, 'Abejorral - Antioquia'),
(793, 'Ábrego - Norte de Santander'),
(15, 'Abriaquí - Antioquia'),
(700, 'Acacías - Meta'),
(588, 'Acandí - Chocó'),
(618, 'Acevedo - Huila'),
(163, 'Achí - Bolívar'),
(619, 'Agrado - Huila'),
(471, 'Agua De Dios - Cundinamarca'),
(417, 'Aguachica - Cesar'),
(859, 'Aguada - Santander'),
(332, 'Aguadas - Caldas'),
(1068, 'Aguazul - Casanare'),
(418, 'Agustín Codazzi - Cesar'),
(620, 'Aipe - Huila'),
(472, 'Albán - Cundinamarca'),
(729, 'Albán - Nariño'),
(359, 'Albania - Caquetá'),
(655, 'Albania - La Guajira'),
(860, 'Albania - Santander'),
(1019, 'Alcalá - Valle del Cauca'),
(730, 'Aldana - Nariño'),
(16, 'Alejandría - Antioquia'),
(670, 'Algarrobo - Magdalena'),
(621, 'Algeciras - Huila'),
(375, 'Almaguer - Cauca'),
(209, 'Almeida - Boyacá'),
(972, 'Alpujarra - Tolima'),
(622, 'Altamira - Huila'),
(589, 'Alto Baudó - Chocó'),
(164, 'Altos Del Rosario - Bolívar'),
(973, 'Alvarado - Tolima'),
(17, 'Amagá - Antioquia'),
(18, 'Amalfi - Antioquia'),
(974, 'Ambalema - Tolima'),
(473, 'Anapoima - Cundinamarca'),
(731, 'Ancuyá - Nariño'),
(1020, 'Andalucía - Valle del Cauca'),
(19, 'Andes - Antioquia'),
(20, 'Angelópolis - Antioquia'),
(21, 'Angostura - Antioquia'),
(474, 'Anolaima - Cundinamarca'),
(22, 'Anorí - Antioquia'),
(333, 'Anserma - Caldas'),
(1021, 'Ansermanuevo - Valle del Cauca'),
(24, 'Anzá - Antioquia'),
(975, 'Anzoátegui - Tolima'),
(25, 'Apartadó - Antioquia'),
(845, 'Apía - Risaralda'),
(545, 'Apulo - Cundinamarca'),
(210, 'Aquitania - Boyacá'),
(671, 'Aracataca - Magdalena'),
(334, 'Aranzazu - Caldas'),
(861, 'Aratoca - Santander'),
(1060, 'Arauca - Arauca'),
(1061, 'Arauquita - Arauca'),
(475, 'Arbeláez - Cundinamarca'),
(732, 'Arboleda - Nariño'),
(794, 'Arboledas - Norte de Santander'),
(26, 'Arboletes - Antioquia'),
(211, 'Arcabuco - Boyacá'),
(165, 'Arenal - Bolívar'),
(27, 'Argelia - Antioquia'),
(376, 'Argelia - Cauca'),
(1022, 'Argelia - Valle del Cauca'),
(672, 'Ariguaní - Magdalena'),
(166, 'Arjona - Bolívar'),
(28, 'Armenia - Antioquia'),
(832, 'Armenia - Quindio'),
(976, 'Armero Guayabal - Tolima'),
(167, 'Arroyohondo - Bolívar'),
(419, 'Astrea - Cesar'),
(977, 'Ataco - Tolima'),
(590, 'Atrato - Chocó'),
(442, 'Ayapel - Córdoba'),
(591, 'Bagadó - Chocó'),
(592, 'Bahía Solano - Chocó'),
(593, 'Bajo Baudó - Chocó'),
(377, 'Balboa - Cauca'),
(846, 'Balboa - Risaralda'),
(139, 'Baranoa - Atlántico'),
(623, 'Baraya - Huila'),
(733, 'Barbacoas - Nariño'),
(29, 'Barbosa - Antioquia'),
(862, 'Barbosa - Santander'),
(863, 'Barichara - Santander'),
(701, 'Barranca De Upía - Meta'),
(864, 'Barrancabermeja - Santander'),
(656, 'Barrancas - La Guajira'),
(168, 'Barranco De Loba - Bolívar'),
(1113, 'Barranco Minas - Guainía'),
(138, 'Barranquilla - Atlántico'),
(420, 'Becerril - Cesar'),
(335, 'Belalcázar - Caldas'),
(212, 'Belén - Boyacá'),
(734, 'Belén - Nariño'),
(360, 'Belén De Los Andaquíes - Caquetá'),
(847, 'Belén De Umbría - Risaralda'),
(31, 'Bello - Antioquia'),
(30, 'Belmira - Antioquia'),
(476, 'Beltrán - Cundinamarca'),
(213, 'Berbeo - Boyacá'),
(32, 'Betania - Antioquia'),
(214, 'Betéitiva - Boyacá'),
(33, 'Betulia - Antioquia'),
(865, 'Betulia - Santander'),
(477, 'Bituima - Cundinamarca'),
(215, 'Boavita - Boyacá'),
(795, 'Bochalema - Norte de Santander'),
(1, 'Bogotá - D.C. - Bogotá - D.C.'),
(478, 'Bojacá - Cundinamarca'),
(594, 'Bojayá - Chocó'),
(378, 'Bolívar - Cauca'),
(866, 'Bolívar - Santander'),
(1023, 'Bolívar - Valle del Cauca'),
(421, 'Bosconia - Cesar'),
(216, 'Boyacá - Boyacá'),
(35, 'Briceño - Antioquia'),
(217, 'Briceño - Boyacá'),
(858, 'Bucaramanga - Santander'),
(796, 'Bucarasica - Norte de Santander'),
(10, 'Buenaventura - Valle del Cauca'),
(218, 'Buenavista - Boyacá'),
(443, 'Buenavista - Córdoba'),
(833, 'Buenavista - Quindio'),
(946, 'Buenavista - Sucre'),
(379, 'Buenos Aires - Cauca'),
(735, 'Buesaco - Nariño'),
(1026, 'Bugalagrande - Valle del Cauca'),
(36, 'Buriticá - Antioquia'),
(219, 'Busbanzá - Boyacá'),
(479, 'Cabrera - Cundinamarca'),
(867, 'Cabrera - Santander'),
(702, 'Cabuyaro - Meta'),
(1118, 'Cacahual - Guainía'),
(37, 'Cáceres - Antioquia'),
(480, 'Cachipay - Cundinamarca'),
(798, 'Cáchira - Norte de Santander'),
(797, 'Cácota - Norte de Santander'),
(38, 'Caicedo - Antioquia'),
(1027, 'Caicedonia - Valle del Cauca'),
(947, 'Caimito - Sucre'),
(978, 'Cajamarca - Tolima'),
(380, 'Cajibío - Cauca'),
(481, 'Cajicá - Cundinamarca'),
(169, 'Calamar - Bolívar'),
(1122, 'Calamar - Guaviare'),
(834, 'Calarcá - Quindio'),
(39, 'Caldas - Antioquia'),
(220, 'Caldas - Boyacá'),
(381, 'Caldono - Cauca'),
(4, 'Cali - Valle del Cauca'),
(868, 'California - Santander'),
(1028, 'Calima - Valle del Cauca'),
(382, 'Caloto - Cauca'),
(40, 'Campamento - Antioquia'),
(140, 'Campo De La Cruz - Atlántico'),
(624, 'Campoalegre - Huila'),
(221, 'Campohermoso - Boyacá'),
(444, 'Canalete - Córdoba'),
(41, 'Cañasgordas - Antioquia'),
(141, 'Candelaria - Atlántico'),
(1029, 'Candelaria - Valle del Cauca'),
(170, 'Cantagallo - Bolívar'),
(482, 'Caparrapí - Cundinamarca'),
(869, 'Capitanejo - Santander'),
(483, 'Cáqueza - Cundinamarca'),
(42, 'Caracolí - Antioquia'),
(43, 'Caramanta - Antioquia'),
(870, 'Carcasí - Santander'),
(44, 'Carepa - Antioquia'),
(979, 'Carmen De Apicalá - Tolima'),
(484, 'Carmen De Carupa - Cundinamarca'),
(596, 'Carmen Del Darién - Chocó'),
(46, 'Carolina - Antioquia'),
(3, 'Cartagena de Indias - Bolívar'),
(361, 'Cartagena Del Chairá - Caquetá'),
(5, 'Cartago - Valle del Cauca'),
(1126, 'Carurú - Vaupés'),
(980, 'Casabianca - Tolima'),
(703, 'Castilla La Nueva - Meta'),
(47, 'Caucasia - Antioquia'),
(871, 'Cepitá - Santander'),
(445, 'Cereté - Córdoba'),
(222, 'Cerinza - Boyacá'),
(872, 'Cerrito - Santander'),
(673, 'Cerro De San Antonio - Magdalena'),
(597, 'Cértegui - Chocó'),
(743, 'Chachagüí - Nariño'),
(485, 'Chaguaní - Cundinamarca'),
(951, 'Chalán - Sucre'),
(1069, 'Chámeza - Casanare'),
(981, 'Chaparral - Tolima'),
(873, 'Charalá - Santander'),
(874, 'Charta - Santander'),
(486, 'Chía - Cundinamarca'),
(48, 'Chigorodó - Antioquia'),
(446, 'Chimá - Córdoba'),
(875, 'Chima - Santander'),
(422, 'Chimichagua - Cesar'),
(799, 'Chinácota - Norte de Santander'),
(223, 'Chinavita - Boyacá'),
(336, 'Chinchiná - Caldas'),
(447, 'Chinú - Córdoba'),
(487, 'Chipaque - Cundinamarca'),
(876, 'Chipatá - Santander'),
(224, 'Chiquinquirá - Boyacá'),
(237, 'Chíquiza - Boyacá'),
(423, 'Chiriguaná - Cesar'),
(225, 'Chiscas - Boyacá'),
(226, 'Chita - Boyacá'),
(800, 'Chitagá - Norte de Santander'),
(227, 'Chitaraque - Boyacá'),
(228, 'Chivatá - Boyacá'),
(674, 'Chivolo - Magdalena'),
(238, 'Chivor - Boyacá'),
(488, 'Choachí - Cundinamarca'),
(489, 'Chocontá - Cundinamarca'),
(171, 'Cicuco - Bolívar'),
(675, 'Ciénaga - Magdalena'),
(448, 'Ciénaga De Oro - Córdoba'),
(229, 'Ciénega - Boyacá'),
(877, 'Cimitarra - Santander'),
(835, 'Circasia - Quindio'),
(49, 'Cisneros - Antioquia'),
(34, 'Ciudad Bolívar - Antioquia'),
(173, 'Clemencia - Bolívar'),
(50, 'Cocorná - Antioquia'),
(982, 'Coello - Tolima'),
(490, 'Cogua - Cundinamarca'),
(625, 'Colombia - Huila'),
(736, 'Colón - Nariño'),
(1087, 'Colón - Putumayo'),
(948, 'Colosó - Sucre'),
(230, 'Cómbita - Boyacá'),
(51, 'Concepción - Antioquia'),
(878, 'Concepción - Santander'),
(52, 'Concordia - Antioquia'),
(676, 'Concordia - Magdalena'),
(598, 'Condoto - Chocó'),
(879, 'Confines - Santander'),
(737, 'Consacá - Nariño'),
(738, 'Contadero - Nariño'),
(880, 'Contratación - Santander'),
(801, 'Convención - Norte de Santander'),
(53, 'Copacabana - Antioquia'),
(231, 'Coper - Boyacá'),
(172, 'Córdoba - Bolívar'),
(739, 'Córdoba - Nariño'),
(836, 'Córdoba - Quindio'),
(383, 'Corinto - Cauca'),
(881, 'Coromoro - Santander'),
(949, 'Corozal - Sucre'),
(232, 'Corrales - Boyacá'),
(491, 'Cota - Cundinamarca'),
(449, 'Cotorra - Córdoba'),
(233, 'Covarachía - Boyacá'),
(950, 'Coveñas - Sucre'),
(983, 'Coyaima - Tolima'),
(1062, 'Cravo Norte - Arauca'),
(740, 'Cuaspúd - Nariño'),
(234, 'Cubará - Boyacá'),
(704, 'Cubarral - Meta'),
(235, 'Cucaita - Boyacá'),
(492, 'Cucunubá - Cundinamarca'),
(792, 'Cúcuta - Norte de Santander'),
(802, 'Cucutilla - Norte de Santander'),
(236, 'Cuítiva - Boyacá'),
(705, 'Cumaral - Meta'),
(1134, 'Cumaribo - Vichada'),
(741, 'Cumbal - Nariño'),
(742, 'Cumbitara - Nariño'),
(984, 'Cunday - Tolima'),
(362, 'Curillo - Caquetá'),
(882, 'Curití - Santander'),
(424, 'Curumaní - Cesar'),
(54, 'Dabeiba - Antioquia'),
(1031, 'Dagua - Valle del Cauca'),
(657, 'Dibulla - La Guajira'),
(658, 'Distracción - La Guajira'),
(985, 'Dolores - Tolima'),
(55, 'Donmatías - Antioquia'),
(848, 'Dosquebradas - Risaralda'),
(239, 'Duitama - Boyacá'),
(803, 'Durania - Norte de Santander'),
(56, 'Ebéjico - Antioquia'),
(1032, 'El Águila - Valle del Cauca'),
(57, 'El Bagre - Antioquia'),
(677, 'El Banco - Magdalena'),
(1033, 'El Cairo - Valle del Cauca'),
(706, 'El Calvario - Meta'),
(595, 'El Cantón Del San Pablo - Chocó'),
(804, 'El Carmen - Norte de Santander'),
(599, 'El Carmen De Atrato - Chocó'),
(174, 'El Carmen De Bolívar - Bolívar'),
(883, 'El Carmen De Chucurí - Santander'),
(45, 'El Carmen De Viboral - Antioquia'),
(707, 'El Castillo - Meta'),
(1034, 'El Cerrito - Valle del Cauca'),
(744, 'El Charco - Nariño'),
(240, 'El Cocuy - Boyacá'),
(493, 'El Colegio - Cundinamarca'),
(425, 'El Copey - Cesar'),
(363, 'El Doncello - Caquetá'),
(708, 'El Dorado - Meta'),
(1035, 'El Dovio - Valle del Cauca'),
(1102, 'El Encanto - Amazonas'),
(241, 'El Espino - Boyacá'),
(884, 'El Guacamayo - Santander'),
(175, 'El Guamo - Bolívar'),
(600, 'El Litoral Del San Juan - Chocó'),
(659, 'El Molino - La Guajira'),
(426, 'El Paso - Cesar'),
(364, 'El Paujíl - Caquetá'),
(745, 'El Peñol - Nariño'),
(176, 'El Peñón - Bolívar'),
(494, 'El Peñón - Cundinamarca'),
(885, 'El Peñón - Santander'),
(678, 'El Piñón - Magdalena'),
(886, 'El Playón - Santander'),
(679, 'El Retén - Magdalena'),
(1123, 'El Retorno - Guaviare'),
(952, 'El Roble - Sucre'),
(495, 'El Rosal - Cundinamarca'),
(746, 'El Rosario - Nariño'),
(116, 'El Santuario - Antioquia'),
(747, 'El Tablón De Gómez - Nariño'),
(384, 'El Tambo - Cauca'),
(748, 'El Tambo - Nariño'),
(805, 'El Tarra - Norte de Santander'),
(806, 'El Zulia - Norte de Santander'),
(626, 'Elías - Huila'),
(887, 'Encino - Santander'),
(888, 'Enciso - Santander'),
(58, 'Entrerríos - Antioquia'),
(59, 'Envigado - Antioquia'),
(986, 'Espinal - Tolima'),
(496, 'Facatativá - Cundinamarca'),
(987, 'Falan - Tolima'),
(337, 'Filadelfia - Caldas'),
(837, 'Filandia - Quindio'),
(242, 'Firavitoba - Boyacá'),
(988, 'Flandes - Tolima'),
(358, 'Florencia - Caquetá'),
(385, 'Florencia - Cauca'),
(243, 'Floresta - Boyacá'),
(889, 'Florián - Santander'),
(1036, 'Florida - Valle del Cauca'),
(890, 'Floridablanca - Santander'),
(497, 'Fómeque - Cundinamarca'),
(660, 'Fonseca - La Guajira'),
(1063, 'Fortul - Arauca'),
(498, 'Fosca - Cundinamarca'),
(770, 'Francisco Pizarro - Nariño'),
(60, 'Fredonia - Antioquia'),
(989, 'Fresno - Tolima'),
(61, 'Frontino - Antioquia'),
(709, 'Fuente De Oro - Meta'),
(680, 'Fundación - Magdalena'),
(749, 'Funes - Nariño'),
(499, 'Funza - Cundinamarca'),
(500, 'Fúquene - Cundinamarca'),
(501, 'Fusagasugá - Cundinamarca'),
(502, 'Gachalá - Cundinamarca'),
(503, 'Gachancipá - Cundinamarca'),
(244, 'Gachantivá - Boyacá'),
(504, 'Gachetá - Cundinamarca'),
(891, 'Galán - Santander'),
(142, 'Galapa - Atlántico'),
(953, 'Galeras - Sucre'),
(505, 'Gama - Cundinamarca'),
(427, 'Gamarra - Cesar'),
(892, 'Gámbita - Santander'),
(245, 'Gámeza - Boyacá'),
(246, 'Garagoa - Boyacá'),
(627, 'Garzón - Huila'),
(838, 'Génova - Quindio'),
(628, 'Gigante - Huila'),
(11, 'Ginebra - Valle del Cauca'),
(62, 'Giraldo - Antioquia'),
(506, 'Girardot - Cundinamarca'),
(63, 'Girardota - Antioquia'),
(893, 'Girón - Santander'),
(64, 'Gómez Plata - Antioquia'),
(428, 'González - Cesar'),
(807, 'Gramalote - Norte de Santander'),
(65, 'Granada - Antioquia'),
(507, 'Granada - Cundinamarca'),
(710, 'Granada - Meta'),
(894, 'Guaca - Santander'),
(247, 'Guacamayas - Boyacá'),
(1038, 'Guacarí - Valle del Cauca'),
(386, 'Guachené - Cauca'),
(508, 'Guachetá - Cundinamarca'),
(750, 'Guachucal - Nariño'),
(6, 'Guadalajara De Buga - Valle del Cauca'),
(66, 'Guadalupe - Antioquia'),
(629, 'Guadalupe - Huila'),
(895, 'Guadalupe - Santander'),
(509, 'Guaduas - Cundinamarca'),
(751, 'Guaitarilla - Nariño'),
(752, 'Gualmatán - Nariño'),
(681, 'Guamal - Magdalena'),
(711, 'Guamal - Meta'),
(990, 'Guamo - Tolima'),
(387, 'Guapí - Cauca'),
(896, 'Guapotá - Santander'),
(954, 'Guaranda - Sucre'),
(67, 'Guarne - Antioquia'),
(510, 'Guasca - Cundinamarca'),
(68, 'Guatapé - Antioquia'),
(511, 'Guataquí - Cundinamarca'),
(512, 'Guatavita - Cundinamarca'),
(248, 'Guateque - Boyacá'),
(849, 'Guática - Risaralda'),
(897, 'Guavatá - Santander'),
(513, 'Guayabal De Síquima - Cundinamarca'),
(514, 'Guayabetal - Cundinamarca'),
(249, 'Guayatá - Boyacá'),
(515, 'Gutiérrez - Cundinamarca'),
(898, 'Güepsa - Santander'),
(250, 'Güicán - Boyacá'),
(808, 'Hacarí - Norte de Santander'),
(177, 'Hatillo De Loba - Bolívar'),
(899, 'Hato - Santander'),
(1070, 'Hato Corozal - Casanare'),
(661, 'Hatonuevo - La Guajira'),
(69, 'Heliconia - Antioquia'),
(809, 'Herrán - Norte de Santander'),
(991, 'Herveo - Tolima'),
(70, 'Hispania - Antioquia'),
(630, 'Hobo - Huila'),
(992, 'Honda - Tolima'),
(971, 'Ibagué - Tolima'),
(993, 'Icononzo - Tolima'),
(753, 'Iles - Nariño'),
(754, 'Imués - Nariño'),
(1112, 'Inírida - Guainía'),
(388, 'Inzá - Cauca'),
(755, 'Ipiales - Nariño'),
(631, 'Íquira - Huila'),
(632, 'Isnos - Huila'),
(601, 'Istmina - Chocó'),
(71, 'Itagüí - Antioquia'),
(72, 'Ituango - Antioquia'),
(251, 'Iza - Boyacá'),
(389, 'Jambaló - Cauca'),
(1039, 'Jamundí - Valle del Cauca'),
(73, 'Jardín - Antioquia'),
(252, 'Jenesano - Boyacá'),
(74, 'Jericó - Antioquia'),
(253, 'Jericó - Boyacá'),
(516, 'Jerusalén - Cundinamarca'),
(900, 'Jesús María - Santander'),
(901, 'Jordán - Santander'),
(143, 'Juan De Acosta - Atlántico'),
(517, 'Junín - Cundinamarca'),
(602, 'Juradó - Chocó'),
(450, 'La Apartada - Córdoba'),
(633, 'La Argentina - Huila'),
(902, 'La Belleza - Santander'),
(518, 'La Calera - Cundinamarca'),
(255, 'La Capilla - Boyacá'),
(75, 'La Ceja - Antioquia'),
(850, 'La Celia - Risaralda'),
(1103, 'La Chorrera - Amazonas'),
(756, 'La Cruz - Nariño'),
(1040, 'La Cumbre - Valle del Cauca'),
(338, 'La Dorada - Caldas'),
(811, 'La Esperanza - Norte de Santander'),
(76, 'La Estrella - Antioquia'),
(757, 'La Florida - Nariño'),
(429, 'La Gloria - Cesar'),
(1117, 'La Guadalupe - Guainía'),
(430, 'La Jagua De Ibirico - Cesar'),
(662, 'La Jagua Del Pilar - La Guajira'),
(758, 'La Llanada - Nariño'),
(714, 'La Macarena - Meta'),
(339, 'La Merced - Caldas'),
(519, 'La Mesa - Cundinamarca'),
(365, 'La Montañita - Caquetá'),
(520, 'La Palma - Cundinamarca'),
(436, 'La Paz - Cesar'),
(904, 'La Paz - Santander'),
(1104, 'La Pedrera - Amazonas'),
(521, 'La Peña - Cundinamarca'),
(77, 'La Pintada - Antioquia'),
(634, 'La Plata - Huila'),
(812, 'La Playa - Norte de Santander'),
(1132, 'La Primavera - Vichada'),
(1071, 'La Salina - Casanare'),
(390, 'La Sierra - Cauca'),
(839, 'La Tebaida - Quindio'),
(759, 'La Tola - Nariño'),
(78, 'La Unión - Antioquia'),
(760, 'La Unión - Nariño'),
(955, 'La Unión - Sucre'),
(1041, 'La Unión - Valle del Cauca'),
(257, 'La Uvita - Boyacá'),
(391, 'La Vega - Cauca'),
(522, 'La Vega - Cundinamarca'),
(1105, 'La Victoria - Amazonas'),
(256, 'La Victoria - Boyacá'),
(1042, 'La Victoria - Valle del Cauca'),
(851, 'La Virginia - Risaralda'),
(810, 'Labateca - Norte de Santander'),
(254, 'Labranzagrande - Boyacá'),
(903, 'Landázuri - Santander'),
(905, 'Lebrija - Santander'),
(761, 'Leiva - Nariño'),
(716, 'Lejanías - Meta'),
(523, 'Lenguazaque - Cundinamarca'),
(994, 'Lérida - Tolima'),
(1101, 'Leticia - Amazonas'),
(995, 'Líbano - Tolima'),
(79, 'Liborina - Antioquia'),
(762, 'Linares - Nariño'),
(603, 'Lloró - Chocó'),
(392, 'López De Micay - Cauca'),
(451, 'Lorica - Córdoba'),
(763, 'Los Andes - Nariño'),
(452, 'Los Córdobas - Córdoba'),
(956, 'Los Palmitos - Sucre'),
(813, 'Los Patios - Norte de Santander'),
(906, 'Los Santos - Santander'),
(814, 'Lourdes - Norte de Santander'),
(144, 'Luruaco - Atlántico'),
(259, 'Macanal - Boyacá'),
(907, 'Macaravita - Santander'),
(80, 'Maceo - Antioquia'),
(524, 'Machetá - Cundinamarca'),
(525, 'Madrid - Cundinamarca'),
(178, 'Magangué - Bolívar'),
(764, 'Magüí - Nariño'),
(179, 'Mahates - Bolívar'),
(663, 'Maicao - La Guajira'),
(957, 'Majagual - Sucre'),
(908, 'Málaga - Santander'),
(145, 'Malambo - Atlántico'),
(765, 'Mallama - Nariño'),
(146, 'Manatí - Atlántico'),
(664, 'Manaure - La Guajira'),
(431, 'Manaure Balcón Del Cesar - Cesar'),
(1072, 'Maní - Casanare'),
(331, 'Manizales - Caldas'),
(526, 'Manta - Cundinamarca'),
(340, 'Manzanares - Caldas'),
(712, 'Mapiripán - Meta'),
(1114, 'Mapiripana - Guainía'),
(180, 'Margarita - Bolívar'),
(181, 'María La Baja - Bolívar'),
(81, 'Marinilla - Antioquia'),
(260, 'Maripí - Boyacá'),
(341, 'Marmato - Caldas'),
(342, 'Marquetalia - Caldas'),
(852, 'Marsella - Risaralda'),
(343, 'Marulanda - Caldas'),
(909, 'Matanza - Santander'),
(2, 'Medellín - Antioquia'),
(527, 'Medina - Cundinamarca'),
(604, 'Medio Atrato - Chocó'),
(605, 'Medio Baudó - Chocó'),
(606, 'Medio San Juan - Chocó'),
(997, 'Melgar - Tolima'),
(393, 'Mercaderes - Cauca'),
(713, 'Mesetas - Meta'),
(366, 'Milán - Caquetá'),
(261, 'Miraflores - Boyacá'),
(1124, 'Miraflores - Guaviare'),
(394, 'Miranda - Cauca'),
(1106, 'Mirití - Paraná - Amazonas'),
(853, 'Mistrató - Risaralda'),
(1125, 'Mitú - Vaupés'),
(1086, 'Mocoa - Putumayo'),
(910, 'Mogotes - Santander'),
(911, 'Molagavita - Santander'),
(453, 'Momil - Córdoba'),
(183, 'Mompós - Bolívar'),
(262, 'Mongua - Boyacá'),
(263, 'Monguí - Boyacá'),
(264, 'Moniquirá - Boyacá'),
(455, 'Moñitos - Córdoba'),
(82, 'Montebello - Antioquia'),
(182, 'Montecristo - Bolívar'),
(454, 'Montelíbano - Córdoba'),
(840, 'Montenegro - Quindio'),
(441, 'Montería - Córdoba'),
(1073, 'Monterrey - Casanare'),
(184, 'Morales - Bolívar'),
(395, 'Morales - Cauca'),
(367, 'Morelia - Caquetá'),
(1120, 'Morichal - Guainía'),
(958, 'Morroa - Sucre'),
(528, 'Mosquera - Cundinamarca'),
(766, 'Mosquera - Nariño'),
(265, 'Motavita - Boyacá'),
(998, 'Murillo - Tolima'),
(83, 'Murindó - Antioquia'),
(84, 'Mutatá - Antioquia'),
(815, 'Mutiscua - Norte de Santander'),
(266, 'Muzo - Boyacá'),
(85, 'Nariño - Antioquia'),
(529, 'Nariño - Cundinamarca'),
(767, 'Nariño - Nariño'),
(635, 'Nátaga - Huila'),
(999, 'Natagaima - Tolima'),
(87, 'Nechí - Antioquia'),
(86, 'Necoclí - Antioquia'),
(344, 'Neira - Caldas'),
(617, 'Neiva - Huila'),
(530, 'Nemocón - Cundinamarca'),
(531, 'Nilo - Cundinamarca'),
(532, 'Nimaima - Cundinamarca'),
(267, 'Nobsa - Boyacá'),
(533, 'Nocaima - Cundinamarca'),
(345, 'Norcasia - Caldas'),
(185, 'Norosí - Bolívar'),
(607, 'Nóvita - Chocó'),
(682, 'Nueva Granada - Magdalena'),
(268, 'Nuevo Colón - Boyacá'),
(1074, 'Nunchía - Casanare'),
(608, 'Nuquí - Chocó'),
(1043, 'Obando - Valle del Cauca'),
(912, 'Ocamonte - Santander'),
(816, 'Ocaña - Norte de Santander'),
(913, 'Oiba - Santander'),
(269, 'Oicatá - Boyacá'),
(88, 'Olaya - Antioquia'),
(768, 'Olaya Herrera - Nariño'),
(914, 'Onzaga - Santander'),
(636, 'Oporapa - Huila'),
(1088, 'Orito - Putumayo'),
(1075, 'Orocué - Casanare'),
(1000, 'Ortega - Tolima'),
(769, 'Ospina - Nariño'),
(270, 'Otanche - Boyacá'),
(959, 'Ovejas - Sucre'),
(271, 'Pachavita - Boyacá'),
(535, 'Pacho - Cundinamarca'),
(1127, 'Pacoa - Vaupés'),
(346, 'Pácora - Caldas'),
(396, 'Padilla - Cauca'),
(272, 'Páez - Boyacá'),
(397, 'Páez - Cauca'),
(637, 'Paicol - Huila'),
(432, 'Pailitas - Cesar'),
(536, 'Paime - Cundinamarca'),
(273, 'Paipa - Boyacá'),
(274, 'Pajarito - Boyacá'),
(638, 'Palermo - Huila'),
(347, 'Palestina - Caldas'),
(639, 'Palestina - Huila'),
(915, 'Palmar - Santander'),
(147, 'Palmar De Varela - Atlántico'),
(916, 'Palmas Del Socorro - Santander'),
(12, 'Palmira - Valle del Cauca'),
(960, 'Palmito - Sucre'),
(1001, 'Palocabildo - Tolima'),
(817, 'Pamplona - Norte de Santander'),
(818, 'Pamplonita - Norte de Santander'),
(1119, 'Pana Pana - Guainía'),
(537, 'Pandi - Cundinamarca'),
(275, 'Panqueba - Boyacá'),
(1129, 'Papunaua - Vaupés'),
(917, 'Páramo - Santander'),
(538, 'Paratebueno - Cundinamarca'),
(539, 'Pasca - Cundinamarca'),
(728, 'Pasto - Nariño'),
(398, 'Patía - Cauca'),
(276, 'Pauna - Boyacá'),
(277, 'Paya - Boyacá'),
(1076, 'Paz De Ariporo - Casanare'),
(278, 'Paz De Río - Boyacá'),
(683, 'Pedraza - Magdalena'),
(433, 'Pelaya - Cesar'),
(89, 'Peñol - Antioquia'),
(348, 'Pensilvania - Caldas'),
(90, 'Peque - Antioquia'),
(844, 'Pereira - Risaralda'),
(279, 'Pesca - Boyacá'),
(399, 'Piamonte - Cauca'),
(918, 'Piedecuesta - Santander'),
(1002, 'Piedras - Tolima'),
(400, 'Piendamó - Cauca'),
(841, 'Pijao - Quindio'),
(684, 'Pijiño Del Carmen - Magdalena'),
(919, 'Pinchote - Santander'),
(186, 'Pinillos - Bolívar'),
(148, 'Piojó - Atlántico'),
(280, 'Pisba - Boyacá'),
(640, 'Pital - Huila'),
(641, 'Pitalito - Huila'),
(685, 'Pivijay - Magdalena'),
(1003, 'Planadas - Tolima'),
(456, 'Planeta Rica - Córdoba'),
(686, 'Plato - Magdalena'),
(771, 'Policarpa - Nariño'),
(149, 'Polonuevo - Atlántico'),
(150, 'Ponedera - Atlántico'),
(374, 'Popayán - Cauca'),
(1077, 'Pore - Casanare'),
(772, 'Potosí - Nariño'),
(1045, 'Pradera - Valle del Cauca'),
(1004, 'Prado - Tolima'),
(1100, 'Providencia - Archipiélago de San Andrés - Providencia - Santa Catalina'),
(773, 'Providencia - Nariño'),
(434, 'Pueblo Bello - Cesar'),
(457, 'Pueblo Nuevo - Córdoba'),
(854, 'Pueblo Rico - Risaralda'),
(91, 'Pueblorrico - Antioquia'),
(687, 'Puebloviejo - Magdalena'),
(920, 'Puente Nacional - Santander'),
(774, 'Puerres - Nariño'),
(1107, 'Puerto Alegría - Amazonas'),
(1108, 'Puerto Arica - Amazonas'),
(1089, 'Puerto Asís - Putumayo'),
(92, 'Puerto Berrío - Antioquia'),
(281, 'Puerto Boyacá - Boyacá'),
(1090, 'Puerto Caicedo - Putumayo'),
(1131, 'Puerto Carreño - Vichada'),
(151, 'Puerto Colombia - Atlántico'),
(1116, 'Puerto Colombia - Guainía'),
(717, 'Puerto Concordia - Meta'),
(458, 'Puerto Escondido - Córdoba'),
(718, 'Puerto Gaitán - Meta'),
(1091, 'Puerto Guzmán - Putumayo'),
(1092, 'Puerto Leguízamo - Putumayo'),
(459, 'Puerto Libertador - Córdoba'),
(720, 'Puerto Lleras - Meta'),
(719, 'Puerto López - Meta'),
(93, 'Puerto Nare - Antioquia'),
(1109, 'Puerto Nariño - Amazonas'),
(921, 'Puerto Parra - Santander'),
(368, 'Puerto Rico - Caquetá'),
(721, 'Puerto Rico - Meta'),
(1064, 'Puerto Rondón - Arauca'),
(540, 'Puerto Salgar - Cundinamarca'),
(1110, 'Puerto Santander - Amazonas'),
(819, 'Puerto Santander - Norte de Santander'),
(401, 'Puerto Tejada - Cauca'),
(94, 'Puerto Triunfo - Antioquia'),
(922, 'Puerto Wilches - Santander'),
(541, 'Pulí - Cundinamarca'),
(775, 'Pupiales - Nariño'),
(402, 'Puracé - Cauca'),
(1005, 'Purificación - Tolima'),
(460, 'Purísima De La Concepción - Córdoba'),
(542, 'Quebradanegra - Cundinamarca'),
(543, 'Quetame - Cundinamarca'),
(587, 'Quibdó - Chocó'),
(842, 'Quimbaya - Quindio'),
(855, 'Quinchía - Risaralda'),
(282, 'Quípama - Boyacá'),
(544, 'Quipile - Cundinamarca'),
(820, 'Ragonvalia - Norte de Santander'),
(283, 'Ramiriquí - Boyacá'),
(284, 'Ráquira - Boyacá'),
(1078, 'Recetor - Casanare'),
(187, 'Regidor - Bolívar'),
(95, 'Remedios - Antioquia'),
(688, 'Remolino - Magdalena'),
(152, 'Repelón - Atlántico'),
(722, 'Restrepo - Meta'),
(1046, 'Restrepo - Valle del Cauca'),
(96, 'Retiro - Antioquia'),
(546, 'Ricaurte - Cundinamarca'),
(776, 'Ricaurte - Nariño'),
(435, 'Río De Oro - Cesar'),
(609, 'Río Iró - Chocó'),
(610, 'Río Quito - Chocó'),
(188, 'Río Viejo - Bolívar'),
(1006, 'Rioblanco - Tolima'),
(1047, 'Riofrío - Valle del Cauca'),
(654, 'Riohacha - La Guajira'),
(97, 'Rionegro - Antioquia'),
(923, 'Rionegro - Santander'),
(349, 'Riosucio - Caldas'),
(611, 'Riosucio - Chocó'),
(350, 'Risaralda - Caldas'),
(642, 'Rivera - Huila'),
(777, 'Roberto Payán - Nariño'),
(9, 'Roldanillo - Valle del Cauca'),
(1007, 'Roncesvalles - Tolima'),
(285, 'Rondón - Boyacá'),
(403, 'Rosas - Cauca'),
(1008, 'Rovira - Tolima'),
(924, 'Sabana De Torres - Santander'),
(153, 'Sabanagrande - Atlántico'),
(98, 'Sabanalarga - Antioquia'),
(154, 'Sabanalarga - Atlántico'),
(1079, 'Sabanalarga - Casanare'),
(689, 'Sabanas De San Ángel - Magdalena'),
(99, 'Sabaneta - Antioquia'),
(286, 'Saboyá - Boyacá'),
(1080, 'Sácama - Casanare'),
(287, 'Sáchica - Boyacá'),
(461, 'Sahagún - Córdoba'),
(643, 'Saladoblanco - Huila'),
(351, 'Salamina - Caldas'),
(690, 'Salamina - Magdalena'),
(821, 'Salazar - Norte de Santander'),
(1009, 'Saldaña - Tolima'),
(843, 'Salento - Quindio'),
(100, 'Salgar - Antioquia'),
(288, 'Samacá - Boyacá'),
(352, 'Samaná - Caldas'),
(778, 'Samaniego - Nariño'),
(961, 'Sampués - Sucre'),
(644, 'San Agustín - Huila'),
(437, 'San Alberto - Cesar'),
(1099, 'San Andrés - Archipiélago de San Andrés - Providencia - Santa Catalina'),
(925, 'San Andrés - Santander'),
(101, 'San Andrés De Cuerquía - Antioquia'),
(462, 'San Andrés De Sotavento - Córdoba'),
(789, 'San Andrés De Tumaco - Nariño'),
(463, 'San Antero - Córdoba'),
(1010, 'San Antonio - Tolima'),
(547, 'San Antonio Del Tequendama - Cundinamarca'),
(926, 'San Benito - Santander'),
(962, 'San Benito Abad - Sucre'),
(548, 'San Bernardo - Cundinamarca'),
(780, 'San Bernardo - Nariño'),
(464, 'San Bernardo Del Viento - Córdoba'),
(822, 'San Calixto - Norte de Santander'),
(102, 'San Carlos - Antioquia'),
(465, 'San Carlos - Córdoba'),
(723, 'San Carlos De Guaroa - Meta'),
(549, 'San Cayetano - Cundinamarca'),
(823, 'San Cayetano - Norte de Santander'),
(189, 'San Cristóbal - Bolívar'),
(438, 'San Diego - Cesar'),
(289, 'San Eduardo - Boyacá'),
(190, 'San Estanislao - Bolívar'),
(1115, 'San Felipe - Guainía'),
(191, 'San Fernando - Bolívar'),
(103, 'San Francisco - Antioquia'),
(550, 'San Francisco - Cundinamarca'),
(1094, 'San Francisco - Putumayo'),
(927, 'San Gil - Santander'),
(192, 'San Jacinto - Bolívar'),
(193, 'San Jacinto Del Cauca - Bolívar'),
(104, 'San Jerónimo - Antioquia'),
(928, 'San Joaquín - Santander'),
(353, 'San José - Caldas'),
(105, 'San José De La Montaña - Antioquia'),
(929, 'San José De Miranda - Santander'),
(290, 'San José De Pare - Boyacá'),
(466, 'San José De Uré - Córdoba'),
(369, 'San José Del Fragua - Caquetá'),
(1121, 'San José Del Guaviare - Guaviare'),
(612, 'San José Del Palmar - Chocó'),
(724, 'San Juan De Arama - Meta'),
(963, 'San Juan De Betulia - Sucre'),
(551, 'San Juan De Rioseco - Cundinamarca'),
(106, 'San Juan De Urabá - Antioquia'),
(665, 'San Juan Del Cesar - La Guajira'),
(194, 'San Juan Nepomuceno - Bolívar'),
(725, 'San Juanito - Meta'),
(781, 'San Lorenzo - Nariño'),
(107, 'San Luis - Antioquia'),
(1011, 'San Luis - Tolima'),
(291, 'San Luis De Gaceno - Boyacá'),
(1081, 'San Luis De Palenque - Casanare'),
(967, 'San Luis De Sincé - Sucre'),
(964, 'San Marcos - Sucre'),
(439, 'San Martín - Cesar'),
(726, 'San Martín - Meta'),
(195, 'San Martín De Loba - Bolívar'),
(292, 'San Mateo - Boyacá'),
(1095, 'San Miguel - Putumayo'),
(930, 'San Miguel - Santander'),
(293, 'San Miguel De Sema - Boyacá'),
(965, 'San Onofre - Sucre'),
(196, 'San Pablo - Bolívar'),
(782, 'San Pablo - Nariño'),
(294, 'San Pablo De Borbur - Boyacá'),
(966, 'San Pedro - Sucre'),
(1049, 'San Pedro - Valle del Cauca'),
(783, 'San Pedro De Cartago - Nariño'),
(108, 'San Pedro De Los Milagros - Antioquia'),
(109, 'San Pedro De Urabá - Antioquia'),
(467, 'San Pelayo - Córdoba'),
(110, 'San Rafael - Antioquia'),
(111, 'San Roque - Antioquia'),
(404, 'San Sebastián - Cauca'),
(691, 'San Sebastián De Buenavista - Magdalena'),
(996, 'San Sebastián De Mariquita - Tolima'),
(931, 'San Vicente De Chucurí - Santander'),
(370, 'San Vicente Del Caguán - Caquetá'),
(112, 'San Vicente Ferrer - Antioquia'),
(692, 'San Zenón - Magdalena'),
(779, 'Sandoná - Nariño'),
(693, 'Santa Ana - Magdalena'),
(113, 'Santa Bárbara - Antioquia'),
(784, 'Santa Bárbara - Nariño'),
(932, 'Santa Bárbara - Santander'),
(694, 'Santa Bárbara De Pinto - Magdalena'),
(197, 'Santa Catalina - Bolívar'),
(23, 'Santa Fé De Antioquia - Antioquia'),
(933, 'Santa Helena Del Opón - Santander'),
(1012, 'Santa Isabel - Tolima'),
(155, 'Santa Lucía - Atlántico'),
(296, 'Santa María - Boyacá'),
(645, 'Santa María - Huila'),
(669, 'Santa Marta - Magdalena'),
(198, 'Santa Rosa - Bolívar'),
(406, 'Santa Rosa - Cauca'),
(856, 'Santa Rosa De Cabal - Risaralda'),
(114, 'Santa Rosa De Osos - Antioquia'),
(297, 'Santa Rosa De Viterbo - Boyacá'),
(199, 'Santa Rosa Del Sur - Bolívar'),
(1133, 'Santa Rosalía - Vichada'),
(298, 'Santa Sofía - Boyacá'),
(785, 'Santacruz - Nariño'),
(295, 'Santana - Boyacá'),
(405, 'Santander De Quilichao - Cauca'),
(824, 'Santiago - Norte de Santander'),
(1096, 'Santiago - Putumayo'),
(969, 'Santiago De Tolú - Sucre'),
(115, 'Santo Domingo - Antioquia'),
(156, 'Santo Tomás - Atlántico'),
(857, 'Santuario - Risaralda'),
(786, 'Sapuyes - Nariño'),
(1065, 'Saravena - Arauca'),
(825, 'Sardinata - Norte de Santander'),
(552, 'Sasaima - Cundinamarca'),
(299, 'Sativanorte - Boyacá'),
(300, 'Sativasur - Boyacá'),
(117, 'Segovia - Antioquia'),
(553, 'Sesquilé - Cundinamarca'),
(7, 'Sevilla - Valle del Cauca'),
(301, 'Siachoque - Boyacá'),
(554, 'Sibaté - Cundinamarca'),
(1093, 'Sibundoy - Putumayo'),
(826, 'Silos - Norte de Santander'),
(555, 'Silvania - Cundinamarca'),
(407, 'Silvia - Cauca'),
(934, 'Simacota - Santander'),
(556, 'Simijaca - Cundinamarca'),
(200, 'Simití - Bolívar'),
(945, 'Sincelejo - Sucre'),
(613, 'Sipí - Chocó'),
(695, 'Sitionuevo - Magdalena'),
(557, 'Soacha - Cundinamarca'),
(302, 'Soatá - Boyacá'),
(304, 'Socha - Boyacá'),
(935, 'Socorro - Santander'),
(303, 'Socotá - Boyacá'),
(305, 'Sogamoso - Boyacá'),
(371, 'Solano - Caquetá'),
(157, 'Soledad - Atlántico'),
(372, 'Solita - Caquetá'),
(306, 'Somondoco - Boyacá'),
(118, 'Sonsón - Antioquia'),
(119, 'Sopetrán - Antioquia'),
(201, 'Soplaviento - Bolívar'),
(558, 'Sopó - Cundinamarca'),
(307, 'Sora - Boyacá'),
(309, 'Soracá - Boyacá'),
(308, 'Sotaquirá - Boyacá'),
(408, 'Sotara - Cauca'),
(936, 'Suaita - Santander'),
(158, 'Suan - Atlántico'),
(409, 'Suárez - Cauca'),
(1013, 'Suárez - Tolima'),
(646, 'Suaza - Huila'),
(559, 'Subachoque - Cundinamarca'),
(410, 'Sucre - Cauca'),
(937, 'Sucre - Santander'),
(968, 'Sucre - Sucre'),
(560, 'Suesca - Cundinamarca'),
(561, 'Supatá - Cundinamarca'),
(354, 'Supía - Caldas'),
(938, 'Suratá - Santander'),
(562, 'Susa - Cundinamarca'),
(310, 'Susacón - Boyacá'),
(311, 'Sutamarchán - Boyacá'),
(563, 'Sutatausa - Cundinamarca'),
(312, 'Sutatenza - Boyacá'),
(564, 'Tabio - Cundinamarca'),
(614, 'Tadó - Chocó'),
(202, 'Talaigua Nuevo - Bolívar'),
(440, 'Tamalameque - Cesar'),
(1082, 'Támara - Casanare'),
(1066, 'Tame - Arauca'),
(120, 'Támesis - Antioquia'),
(787, 'Taminango - Nariño'),
(788, 'Tangua - Nariño'),
(1128, 'Taraira - Vaupés'),
(1111, 'Tarapacá - Amazonas'),
(121, 'Tarazá - Antioquia'),
(647, 'Tarqui - Huila'),
(122, 'Tarso - Antioquia'),
(313, 'Tasco - Boyacá'),
(1083, 'Tauramena - Casanare'),
(565, 'Tausa - Cundinamarca'),
(649, 'Tello - Huila'),
(566, 'Tena - Cundinamarca'),
(696, 'Tenerife - Magdalena'),
(567, 'Tenjo - Cundinamarca'),
(314, 'Tenza - Boyacá'),
(827, 'Teorama - Norte de Santander'),
(650, 'Teruel - Huila'),
(648, 'Tesalia - Huila'),
(568, 'Tibacuy - Cundinamarca'),
(315, 'Tibaná - Boyacá'),
(316, 'Tibasosa - Boyacá'),
(569, 'Tibirita - Cundinamarca'),
(828, 'Tibú - Norte de Santander'),
(468, 'Tierralta - Córdoba'),
(651, 'Timaná - Huila'),
(411, 'Timbío - Cauca'),
(412, 'Timbiquí - Cauca'),
(317, 'Tinjacá - Boyacá'),
(318, 'Tipacoque - Boyacá'),
(203, 'Tiquisio - Bolívar'),
(123, 'Titiribí - Antioquia'),
(319, 'Toca - Boyacá'),
(570, 'Tocaima - Cundinamarca'),
(571, 'Tocancipá - Cundinamarca'),
(320, 'Togüí - Boyacá'),
(124, 'Toledo - Antioquia'),
(829, 'Toledo - Norte de Santander'),
(970, 'Tolú Viejo - Sucre'),
(939, 'Tona - Santander'),
(321, 'Tópaga - Boyacá'),
(572, 'Topaipí - Cundinamarca'),
(413, 'Toribío - Cauca'),
(1051, 'Toro - Valle del Cauca'),
(322, 'Tota - Boyacá'),
(414, 'Totoró - Cauca'),
(1084, 'Trinidad - Casanare'),
(1052, 'Trujillo - Valle del Cauca'),
(159, 'Tubará - Atlántico'),
(469, 'Tuchín - Córdoba'),
(8, 'Tuluá - Valle del Cauca'),
(1135, 'Túmaco-Chocó'),
(208, 'Tunja - Boyacá'),
(323, 'Tununguá - Boyacá'),
(790, 'Túquerres - Nariño'),
(204, 'Turbaco - Bolívar'),
(205, 'Turbaná - Bolívar'),
(125, 'Turbo - Antioquia'),
(324, 'Turmequé - Boyacá'),
(325, 'Tuta - Boyacá'),
(326, 'Tutazá - Boyacá'),
(573, 'Ubalá - Cundinamarca'),
(574, 'Ubaque - Cundinamarca'),
(1054, 'Ulloa - Valle del Cauca'),
(327, 'Úmbita - Boyacá'),
(576, 'Une - Cundinamarca'),
(615, 'Unguía - Chocó'),
(616, 'Unión Panamericana - Chocó'),
(126, 'Uramita - Antioquia'),
(715, 'Uribe - Meta'),
(666, 'Uribia - La Guajira'),
(127, 'Urrao - Antioquia'),
(667, 'Urumita - La Guajira'),
(160, 'Usiacurí - Atlántico'),
(577, 'Útica - Cundinamarca'),
(128, 'Valdivia - Antioquia'),
(470, 'Valencia - Córdoba'),
(940, 'Valle De San José - Santander'),
(1014, 'Valle De San Juan - Tolima'),
(1097, 'Valle Del Guamuez - Putumayo'),
(416, 'Valledupar - Cesar'),
(129, 'Valparaíso - Antioquia'),
(373, 'Valparaíso - Caquetá'),
(130, 'Vegachí - Antioquia'),
(941, 'Vélez - Santander'),
(1015, 'Venadillo - Tolima'),
(131, 'Venecia - Antioquia'),
(534, 'Venecia - Cundinamarca'),
(328, 'Ventaquemada - Boyacá'),
(578, 'Vergara - Cundinamarca'),
(1055, 'Versalles - Valle del Cauca'),
(942, 'Vetas - Santander'),
(579, 'Vianí - Cundinamarca'),
(355, 'Victoria - Caldas'),
(132, 'Vigía Del Fuerte - Antioquia'),
(1056, 'Vijes - Valle del Cauca'),
(830, 'Villa Caro - Norte de Santander'),
(258, 'Villa De Leyva - Boyacá'),
(575, 'Villa De San Diego De Ubaté - Cundinamarca'),
(831, 'Villa Del Rosario - Norte de Santander'),
(415, 'Villa Rica - Cauca'),
(1098, 'Villagarzón - Putumayo'),
(580, 'Villagómez - Cundinamarca'),
(1016, 'Villahermosa - Tolima'),
(356, 'Villamaría - Caldas'),
(206, 'Villanueva - Bolívar'),
(1085, 'Villanueva - Casanare'),
(668, 'Villanueva - La Guajira'),
(943, 'Villanueva - Santander'),
(581, 'Villapinzón - Cundinamarca'),
(1017, 'Villarrica - Tolima'),
(699, 'Villavicencio - Meta'),
(652, 'Villavieja - Huila'),
(582, 'Villeta - Cundinamarca'),
(583, 'Viotá - Cundinamarca'),
(329, 'Viracachá - Boyacá'),
(727, 'Vistahermosa - Meta'),
(357, 'Viterbo - Caldas'),
(584, 'Yacopí - Cundinamarca'),
(791, 'Yacuanquer - Nariño'),
(653, 'Yaguará - Huila'),
(133, 'Yalí - Antioquia'),
(134, 'Yarumal - Antioquia'),
(1130, 'Yavaraté - Vaupés'),
(135, 'Yolombó - Antioquia'),
(136, 'Yondó - Antioquia'),
(1067, 'Yopal - Casanare'),
(1057, 'Yotoco - Valle del Cauca'),
(1058, 'Yumbo - Valle del Cauca'),
(207, 'Zambrano - Bolívar'),
(944, 'Zapatoca - Santander'),
(697, 'Zapayán - Magdalena'),
(137, 'Zaragoza - Antioquia'),
(1059, 'Zarzal - Valle del Cauca'),
(330, 'Zetaquira - Boyacá'),
(585, 'Zipacón - Cundinamarca'),
(586, 'Zipaquirá - Cundinamarca'),
(698, 'Zona Bananera - Magdalena');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_ejecutivo`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_ejecutivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ejecutivo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ejecutivo` (`ejecutivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `medioscolombia_ejecutivo`
--

INSERT INTO `medioscolombia_ejecutivo` (`id`, `ejecutivo`) VALUES
(56, ' María Elvira Bonilla '),
(81, 'Abelardo Gómez Molina'),
(59, 'Alberto Abello'),
(42, 'Alejandro Delgado'),
(38, 'Alejandro Galvis Blanco'),
(40, 'Alejandro Samper'),
(20, 'Alejandro Santos'),
(90, 'Alejandro Suárez Parada'),
(47, 'Alexandra Plata'),
(5, 'Alfonso José Luna Geller'),
(110, 'Alfonso Ospina'),
(14, 'Amalia Sampedro Laguna'),
(68, 'Ana Arciniegas'),
(107, 'Andrea Laudicina'),
(53, 'Andrés Mauricio Prieto Calambás'),
(104, 'Ángel Flórez León'),
(105, 'Ángel Rodríguez Bermúdez Vitalicio'),
(50, 'Ángela María Marulanda Maya'),
(22, 'Armando Neira'),
(99, 'Carlos Lozano Guillen'),
(106, 'Claudia Patricia Torres Navarro'),
(61, 'Claudio Garrido'),
(12, 'Climaco Rojas Atencio'),
(67, 'Cristian Diebb'),
(69, 'Daniel Samper Ospina'),
(80, 'David González'),
(29, 'David Luna'),
(55, 'David Matoses'),
(8, 'Deyanira Castro Cárdenas'),
(111, 'Diego Fernando Barrero Castañeda'),
(96, 'Diego León Giraldo'),
(84, 'Edgar Alfonso Aroca Campo'),
(23, 'Elena Mesa Zuleta'),
(2, 'Elsa Patricia Peniche Martinez'),
(46, 'Felipe Lloreda'),
(94, 'Fernando Gómez Echeverri'),
(64, 'Fernando Molina Soto'),
(58, 'Fernando Quijano'),
(16, 'Fidel Cano Correa'),
(89, 'Gabriel Reyes Copello'),
(39, 'Gonzalo Córdoba Mallarino'),
(3, 'Gustavo Pérez Mier'),
(100, 'Hamilton Daza Gutiérrez'),
(36, 'Helman Villamizar'),
(85, 'Hernando Gómez Buendía'),
(13, 'Hernando Suárez Burgos'),
(109, 'Ignacio Greiffenstein'),
(49, 'Irene Gaviria Correa'),
(21, 'Isabel Cristina Valle Villa'),
(60, 'Jaime Eduardo Hoyos'),
(52, 'Jairo Dueñas Villamil'),
(86, 'James Arles Ruiz Medina'),
(31, 'Javier Ignacio Ramírez Munera'),
(79, 'Jerson Ortiz'),
(108, 'Johana Jaramillo Palacio'),
(1, 'Johanna Molano'),
(18, 'Jorge Iván Pareja Castaño'),
(77, 'José Clopatofsky L.'),
(112, 'José Dil Gutiérrez'),
(76, 'José Eustorgio Colmenares O.'),
(63, 'José Fernando Millan'),
(34, 'José Gregorio Esquea'),
(45, 'Juan David Correa'),
(32, 'Juan Guillermo Ángel'),
(91, 'Juan Manuel Vuelvas Díaz'),
(57, 'Juan Mario Laserna'),
(75, 'Juanita León'),
(72, 'Julio Sánchez Cristo'),
(102, 'Lennart Eliseo Rodríguez Lozano'),
(62, 'Lina María Molina'),
(74, 'Luis Alfredo Céspedes'),
(87, 'Luis Carlos Chamorro Burbano'),
(30, 'Luis Germán Rubiano Farak'),
(28, 'Luisa María Duque Cerón'),
(24, 'Marco Leonardo Espinosa'),
(11, 'Marco Leonardo Esponosa'),
(43, 'Marco Schwartz'),
(78, 'María Alejandra Villamizar'),
(9, 'María Elvira Dominguez Lloreda'),
(33, 'María Eugenia Velásquez Zapata'),
(6, 'María Pia Duque Rengifo'),
(98, 'Mariangela Rubbini'),
(95, 'Mario Jursich'),
(48, 'Martha Ortiz Gómez'),
(83, 'Martha Ruíz'),
(71, 'Mauricio Correa Peña'),
(92, 'Mauricio Prieto Calambas'),
(25, 'Mauricio Ríos Giraldo'),
(19, 'Mauricio Tobón Franco'),
(88, 'Miguel Ángel Cristancho'),
(7, 'Miguel Angel Rojas Arias'),
(113, 'Mónica Marcela Gutiérrez'),
(82, 'Nelson Alarcón'),
(73, 'Nicolás Restrepo Escobar'),
(97, 'Olga Viviana Guerrero Campo'),
(54, 'Óscar Ostos'),
(101, 'Radiopolis'),
(66, 'Ricardo Alarcón'),
(51, 'Ricardo Avila Pinto'),
(15, 'Roberto Pombo Holguín'),
(93, 'Roberto Vargas Galvis'),
(44, 'Rodrigo Morales'),
(10, 'Rosa María Agudelo Ayerbe'),
(35, 'Rosa Paulina Vives'),
(26, 'Rubén Darío Valencia'),
(27, 'Sandra Cecilia Macias Palacio'),
(37, 'Sebastián Hiler'),
(41, 'Tatiana Restrepo Pelaez'),
(70, 'Vicky Dávila'),
(103, 'Waldir Albeiro Ochoa Jimenez'),
(65, 'Wilinton Andrade'),
(4, 'William Salleg Tabaoda'),
(17, 'Wilson Santiago Diaz Castro');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_empresario`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_empresario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresario` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empresario` (`empresario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioscolombia_empresario`
--

INSERT INTO `medioscolombia_empresario` (`id`, `empresario`) VALUES
(1, 'Diego Fernando Barrero Castañeda');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_escrito`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_escrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `medio` varchar(255) NOT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `pagado_gratuito` varchar(100) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `circulacion` varchar(100) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `periodicidad_id` int(11) DEFAULT NULL,
  `lectoria` varchar(100) DEFAULT NULL,
  `infolectoria` varchar(255) NOT NULL,
  `fuentelectoria_id` int(11) DEFAULT NULL,
  `tiraje` varchar(255) DEFAULT NULL,
  `infotiraje` varchar(255) DEFAULT NULL,
  `fuentetiraje_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioscolombia_escrito_cb19349f` (`asociadoaescrito_id`),
  KEY `medioscolombia_escrito_c298a1ee` (`asociadoaradio_id`),
  KEY `medioscolombia_escrito_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioscolombia_escrito_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioscolombia_escrito_7bcc6f63` (`genero_id`),
  KEY `medioscolombia_escrito_67a22d87` (`ciudad_id`),
  KEY `medioscolombia_escrito_4a43cba4` (`periodicidad_id`),
  KEY `medioscolombia_escrito_c2e8d443` (`director_id`),
  KEY `medioscolombia_escrito_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioscolombia_escrito_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `medioscolombia_escrito`
--

INSERT INTO `medioscolombia_escrito` (`id`, `tipo`, `medio`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `genero_id`, `pagado_gratuito`, `inicio`, `inicioyear`, `circulacion`, `ciudad_id`, `periodicidad_id`, `lectoria`, `infolectoria`, `fuentelectoria_id`, `tiraje`, `infotiraje`, `fuentetiraje_id`, `direccion`, `sitioweb`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(80, 'Diario', 'El Espectador', NULL, NULL, NULL, 2, 1, NULL, NULL, 1887, 'Nacional', NULL, 3, '263327 semanal 506672 dominical', '', NULL, 'Para el tiraje volver a llamar al 4232300', '', NULL, 'Avda. 68 No. 23-71', 'http://www.elespectador.com/', 16, 17, 18, NULL, '', 'La empresa propietaria del periódico es Comunican SA con nit 860007590 - 6. MIRYAM por fa, determinemos que dato de lecturabilidad tomaremos,el semanal o el dominical, mientras lo decidimos pusé los dos. El dato del tiraje me lo dan hasta el 5 de enero, según Johana Millan de Inteligenca de Mercadeo. Confirmar lecturabilidad. ', '', 0),
(81, 'Diario', 'El Tiempo', NULL, NULL, NULL, 1, 1, 'Pago', NULL, 1911, 'Nacional', NULL, 3, '976251 semanal 1695107 dominical', '', NULL, '', '', NULL, 'Avda. Calle 26 # 68 b - 70', 'http://www.eltiempo.com/', 15, 55, 1, NULL, '', 'Fuente de la lecturabilidad http://www.eltiempo.com/economia/empresas/crece-audiencia-de-el-tiempo-casa-editorial/14031815. ', '', 0),
(82, 'Diario', 'Diario Mío Bogotá', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 1, 6, '', '', NULL, '', '', NULL, 'Calle 13 # 34-42', 'http://www.diariomio.co/', NULL, NULL, 1, NULL, '', 'No hay muchos datos de contacto. Verificar si el periódico sigue funcionando. ', '', 0),
(83, 'Diario', 'ADN Bogotá', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, 2007, 'Local', 1, 4, '700000', '', NULL, '', '', NULL, 'Av. Calle 26 # 68 B-70 ', 'http://diarioadn.co/', 63, NULL, 1, NULL, '', 'El dato del tiraje y el año se sacó de Wiki es necesario conformar. La cifra de lecturabilidad dada no se sabe si es por las cinco ciudades o sólo por Bogotá. ', '', 0),
(84, 'Diario', 'Publimetro', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, 2011, 'Local', NULL, 4, '350000', '', NULL, '140000', '', NULL, 'Calle 75 No. 5-88 pisos 7 y 8', 'http://www.publimetro.co/', 61, 62, 21, NULL, '', 'Se toma 2011 como año de inició en Colombia, el dato del tiraje es de 2012. ', '', 0),
(85, 'Diario', 'El Nuevo Siglo', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1936, 'Local', NULL, 5, '', '', NULL, '', '', NULL, 'Calle 25 DBIs No. 101B-04', 'http://www.elnuevosiglo.com.co/', 59, 60, NULL, NULL, '', 'Es necesario confirmar si circula de lunes a viernes o también los fines de semana', '', 0),
(86, 'Diario', 'La República', NULL, NULL, NULL, NULL, 2, 'Pago', NULL, 1954, 'Nacional', NULL, NULL, '36197', '', NULL, '', '', NULL, 'Calle 25 d bis #102 a - 63', 'http://www.larepublica.co/', 58, NULL, 10, NULL, '', '', '', 0),
(87, 'Revista', 'Revista Semana', NULL, NULL, NULL, 5, 9, 'Pagado', NULL, 1982, 'Nacional', NULL, 2, '120000', '', NULL, '', '', NULL, 'Carrera 11 No. 77-49', 'http://www.semana.com/', 20, 21, 4, NULL, '(1)  6468400', 'El primer periodo de la Revista Semana fue en 1946, la inició el ex presidente Carlos Lleras. ', '', 1),
(88, 'Revista', 'Revista Dinero', NULL, NULL, NULL, NULL, 2, 'Pagado', NULL, 1993, 'Nacional', NULL, 7, '50000', '', NULL, '', '', NULL, 'Cr 11 # 77 A-65', 'http://www.dinero.com/', 57, 21, 4, NULL, '(1) 6468400', '', '', 0),
(89, 'Revista', 'Revista Cromos', NULL, NULL, NULL, NULL, 8, 'Pago', NULL, NULL, 'Nacional', NULL, 7, '810600', '', NULL, '', '', NULL, '', 'http://www.cromos.com.co/', 52, NULL, 18, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(90, 'Diario', 'Portafolio', NULL, NULL, NULL, NULL, 2, 'Pago', NULL, 1993, 'Nacional', NULL, 4, '65295', '', NULL, '', '', NULL, 'Av Calle 26 # 68 b - 70', 'http://www.portafolio.co/', 51, NULL, 1, NULL, '', 'La lecturabilidad se basa en el EGM de la primera ola de 2014', '', 0),
(91, 'Diario', 'El Mundo', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1979, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 53 # 74 - 50', 'http://www.elmundo.com/portal/', 49, 50, NULL, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(92, 'Diario', 'El Colombiano', NULL, NULL, NULL, 7, 1, 'Pago', NULL, 1912, 'Departamental', NULL, 3, '282297', '', NULL, '', '', NULL, 'Carrera 48 # 30 sur - 119', 'http://www.elcolombiano.com/', 48, NULL, 10, NULL, '', 'La lecturabilidad se basa en el EGM de la primera ola de 2014', '', 0),
(93, 'Diario', 'ADN Medellin', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, 2007, 'Local', 2, NULL, '', '', NULL, '', '', NULL, '', 'http://diarioadn.co/medell%C3%ADn', 45, 47, 1, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(95, 'Diario', 'Q´hubo Medellín', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 2, NULL, '2306300', '', NULL, '', '', NULL, 'Cra 48 # 30 sur -119', 'http://qhubo.com/epaper/medellin/', 44, NULL, 10, NULL, '3359459 / 3393330', 'Es una marca del Grupo Nacional de Medios pero puede tener dueños diferentes, las familias Gómez y Hernández de Medellín.Faltan importantes datos, hacer llamada urgente. El número de lecturabilidad se asume que es la suma de todos los Q´hubo del país. ', '', 0),
(96, 'Diario', 'Diario Mio Medellín', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 2, 6, '', '', NULL, '', '', NULL, '', 'http://www.diariomio.co/medellin.pdf', NULL, NULL, 1, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(98, 'Diario', 'El Heraldo', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1933, 'Local', NULL, 3, '137137', '', NULL, '195544', '', NULL, 'Calle 53 B # 46 - 25 Barranquilla', 'http://www.elheraldo.co/', 43, NULL, 14, NULL, '(1) 218 5733/ (5) 3715000 / 3855050', 'El dato del tiraje fue sacado de wiki pedia pero no ha sido posible contrastarlo con otra fuente. La lecturabilidad según EGM de 2014 ola. ', '', 0),
(100, 'Diario', 'Q´hubo Barranquilla', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 138, NULL, '2306300', '', NULL, '', '', NULL, 'Cra 52 # 76 - 167', 'http://qhubo.com/epaper/barranquilla/', NULL, 42, 16, NULL, '(5) 3488780 ext 121', 'Faltan importantes datos, hacer llamada urgente. El número de lecturabilidad se asume que es la suma de todos los Q´hubo del país. ', '', 0),
(101, 'Diario', 'La Patria de Manizales ', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1921, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, 'Carrera 10 No. 65-35 Of: 702', 'http://www.lapatria.com/', NULL, NULL, NULL, NULL, '(1) 2497028', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(103, 'Diario', 'Q´hubo Manizales', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 331, 3, '2306300', '', NULL, '', '', NULL, 'Cra 20 # 46 - 54', 'http://qhubo.com/epaper/manizales/', 40, NULL, 16, NULL, '8730808 / cel 3116021055', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(104, 'Diario', 'La Opinión de Cúcuta', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1960, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, 'Av. 4 # 16 - 12', 'http://www.laopinion.com.co/demo/index.php?option=com_frontpage&Itemid=1', NULL, NULL, NULL, NULL, '(7) 5829999', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(105, 'Diario', 'Vanguardia Liberal', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1919, 'Departamental', NULL, 3, '200009', '', NULL, '', '', NULL, 'Calle 34 No. 13 – 42', 'http://www.vanguardia.com/', 37, 38, 3, NULL, '6300700', 'El dato de lecturabilidad es según el EGM de la ola de 2014. Faltan importantes datos, hacer llamada urgente. ', '', 0),
(107, 'Diario', 'El Frente', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 858, NULL, '', '', NULL, '', '', NULL, 'Carrera 12 # 31-24', 'http://elfrente.com.co/ahora/', NULL, NULL, NULL, NULL, '(7) 6305100', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(108, 'Diario', 'Q´hubo Bucaramanga', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 858, NULL, '2306300', '', NULL, '', '', NULL, 'Calle 34 # 13 - 43 Centro', 'http://www.vliberal.com/publicaciones/qhubobucaramanga/destino.php?archivo=NDBUC11012012', 36, NULL, 3, NULL, '6300700 / 6334426', 'La lecturabilidad es el dato ara todos los Q´hubo. Faltan importantes datos, hacer llamada urgente. ', '', 0),
(109, 'Diario', 'Q´hubo Sur de Santander', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 858, NULL, '2306300', '', NULL, '', '', NULL, 'Calle 34 # 13 - 43 Centro', 'http://qhubo.com/epaper/surdesantander/', 36, NULL, 3, NULL, '6300700 / 6334426', 'Es el mismo Q´hubo Bucaramanga, según la página no cambian en nada. ', '', 0),
(110, 'Diario', 'Q´hubo Barrancabermeja', NULL, NULL, NULL, NULL, 1, NULL, NULL, 2008, 'Local', 864, NULL, '2306300', '', NULL, '', '', NULL, 'Calle 34 # 13 - 43 Centro', 'http://www.vliberal.com/publicaciones/qhubobarranca/destino.php?archivo=NDBAR11012012', 36, NULL, 3, NULL, '6300701 / 6334426', 'Es el mismo Q´hubo Bucaramanga y Santander según la página no cambian en nada. ', '', 0),
(111, 'Diario', 'El Universal', NULL, NULL, NULL, 8, 1, NULL, NULL, 1948, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, 'Pie del Cerro Calle 30 # 17 - 36 ', 'http://www.eluniversal.com.co/', NULL, NULL, 11, NULL, '(5) 6424646', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(113, 'Diario', 'Q´hubo Cartagena', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 3, NULL, '2306300', '', NULL, '', '', NULL, 'Pied del Cerro Calle 30 # 17 - 36', 'http://qhubo.com/epaper/cartagena/', NULL, NULL, 11, NULL, '6424646 ext. 351/ 363', 'AVERIGUAR SI ES DE LOS GALVIS. Faltan importantes datos, hacer llamada urgente. ', '', 0),
(115, 'Diario', 'El Informador', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Regional', NULL, NULL, '5765', '', NULL, '', '', NULL, 'BOG. Carrera 13 A # 38 - 71 ofi 405', 'http://www.elinformador.com.co/', NULL, 35, NULL, NULL, '(1) 7008742 / 2320028 Cel. 310- 6895161', 'La cifra de lecturabilidad corresponde a 2012', '', 0),
(117, 'Diario', 'Hoy Diario del Magdalena', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, NULL, '22730', '', NULL, '', '', NULL, 'Carrera 4 # 19 - 49 Santa Marta', 'http://www.hoydiariodelmagdalena.com.co/', 34, NULL, NULL, NULL, '(5) 4214171', 'La cifra de lecturabilidad corresponde a 2012', '', 0),
(119, 'Diario', 'Q´hubo Pereira', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 844, NULL, '2306300', '', NULL, '', '', NULL, 'Kilometro 3 vía Armenia', 'http://qhubo.com/epaper/pereira/', 33, NULL, 13, NULL, '(6) 3137620 /70 ', 'AVERIGUAR SI ES DE LOS GALVIS. Faltan importantes datos, hacer llamada urgente. La lecturabilidad de 2012 73,977', '', 0),
(120, 'Diario', 'La Tarde de Pereira', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 844, 3, '20831', '', NULL, '', '', NULL, 'Kilometro 3 via Pereira - Armenia', 'http://www.latarde.com/', 32, NULL, 12, NULL, '(6) 313 7668', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(122, 'Diario', 'Diario del Otún', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1982, 'Departamental', NULL, 3, '29528', '', NULL, '', '', NULL, 'Carrera 8 A#  22-75 Telefax 3241900 Pereira', 'http://www.eldiario.com.co/inicio', 1, 31, 9, NULL, '(6) 3351313', 'LA LECTURABILIDAD ES DE 2012Faltan importantes datos, hacer llamada urgente. ', '', 0),
(123, 'Diario', 'El Meridiano de Sucre', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, 'Carrera 25B No. 25-14. Sincelejo', 'http://www.elmeridianodesucre.com.co/', 2, 30, 8, NULL, '(5) 2813737', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(124, 'Diario', 'El Propio de Sucre', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, 3, '', '', NULL, '14700', '', NULL, 'Carrera 25B No. 25-14. Sincelejo', '', 3, NULL, 8, NULL, '(5) 2813737', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(125, 'Diario', 'El Propio de Córdoba', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2009, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, '', '', NULL, NULL, 8, NULL, '(5) 2813737', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(126, 'Diario', 'El Meridiano de Córdoba', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1995, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, 'Carrera 14 # 38 - 01', 'http://elmeridianodecordoba.com.co/', 4, NULL, 8, NULL, '(4) 7826888', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(127, 'Diario', 'Diario del Cauca', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, '', '', NULL, NULL, 5, NULL, '8205962', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(129, 'Diario', 'Diario del Huila', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, 'Calle 8 # 6 - 30 Neiva', 'http://diariodelhuila.com/', 6, 28, 7, NULL, 'Celulares 3152245848 - 3176577073 - 3125130104 - 310 5726146', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(130, 'Diario', 'Extra Huila', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', 617, NULL, '33327', '', NULL, '', '', NULL, 'Carrera 6 No. 7-37, Neiva. ', 'http://diariodelhuila.com/', NULL, NULL, 5, NULL, '(8) 872 39 45 Cel. 321 220 74 95 - 318 275 73 55', 'LA LECTURABILIDAD ES DE 2012. Faltan importantes datos, hacer llamada urgente. Ha bajando el número de sus impresos', '', 0),
(131, 'Diario', 'El Nuevo Día', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1992, 'Departamental', NULL, NULL, '5497', '', NULL, '', '', NULL, 'Carrera 6 # 12 - 9', 'http://www.elnuevodia.com.co/nuevodia/', NULL, NULL, NULL, NULL, '(8) 2770050 / 51', 'LA LECTURABILIDAD ES DE 2012. Faltan importantes datos, hacer llamada urgente. Ha bajando el número de sus impresos', '', 0),
(132, 'Diario', 'Crónica del Quindio', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, 3, '33297', '', NULL, '', '', NULL, '', 'http://www.cronicadelquindio.com/', 7, 27, 6, NULL, '(6) 7469933', 'LA LECTURABILIDAD ES DE 2012. Faltan importantes datos, hacer llamada urgente. Ha bajando el número de sus impresos', '', 0),
(133, 'Diario', 'Extra Llanos', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, 3, '49568', '', NULL, '', '', NULL, '', '', NULL, NULL, 5, NULL, '(8) 6849716', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(135, 'Diario', 'Q´hubo Villavicencio', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Departamental', 699, 3, '8713', '', NULL, '', '', NULL, '', '', NULL, NULL, 3, NULL, '', 'LA LECTURABILIDAD ES DE 2012. Faltan importantes datos, hacer llamada urgente. ', '', 0),
(136, 'Diario', 'ADN Cali', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, 2007, 'Local', 4, 4, '153878', '', NULL, '', '', NULL, '', 'http://diarioadn.co/cali', NULL, NULL, 1, NULL, '', 'Faltan importantes datos, hacer llamada urgente. Ha bajando el número de sus impresos', '', 0),
(137, 'Diario', 'Q´hubo Cali', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 2008, 'Local', 4, NULL, '434410', '', NULL, '', '', NULL, '', 'http://qhubo.com/epaper/cali/', 8, 26, NULL, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(138, 'Diario', 'El País de Cali', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, 1950, 'Regional', 4, NULL, '238040', '', NULL, '', '', NULL, 'Carrera 2 # 24 - 46', 'http://www.elpais.com.co/elpais/', 9, 9, NULL, NULL, '(2) 8987000', 'Faltan importantes datos, hacer llamada urgente. Lecturabilidad de la segunda ola de 2014', '', 0),
(139, 'Diario', 'Diario Occidente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1961, 'Local', 4, NULL, '43556', '', NULL, '', '', NULL, 'Calle 8 # 5 - 70 Cali. ', 'http://occidente.co/', 10, NULL, NULL, NULL, '312-5855537', 'LA LECTURABILIDAD ES DE 2012. Faltan importantes datos, hacer llamada urgente. ', '', 0),
(141, NULL, 'Diario Mio Cali', NULL, NULL, NULL, NULL, NULL, 'Pago', NULL, NULL, 'Local', 4, NULL, '', '', NULL, '', '', NULL, '', 'http://www.diariomio.co/cali.pdf', NULL, NULL, NULL, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(142, 'Diario', 'Extra Cali', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 4, 3, '11342', '', NULL, '', '', NULL, '', '', NULL, NULL, 5, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(143, 'Diario', 'Boyacá 7 Días', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Departamental', NULL, 4, '', '', NULL, '', '', NULL, '', 'http://www.eltiempo.com/noticias/boyaca-7-dias', NULL, NULL, NULL, NULL, '', '', '', 0),
(147, 'Diario', 'Q´hubo Ibagué', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 971, NULL, '75365', '', NULL, '', '', NULL, '', 'http://www.qhuboibague.com/blog/', NULL, NULL, 3, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(148, 'Diario', 'El Pilón', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://elpilon.com.co/inicio/', NULL, NULL, NULL, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(149, 'Diario', 'Q´hubo Valledupar', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Local', 416, NULL, '', '', NULL, '', '', NULL, '', 'http://www.vliberal.com/publicaciones/qhubovalledupar/destino.php?archivo=NDVAL11012012', NULL, NULL, NULL, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(151, 'Diario', 'La Guajira Hoy', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.laguajirahoy.com/', 12, 14, NULL, NULL, '3012233166 / 3114380131', '', '', 0),
(152, 'Diario', 'El Líder Diario Caqueteño', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 11 # 13 - 20', 'http://www.ellider.com.co/category/mi-caqueta/', NULL, NULL, NULL, NULL, '(8) 4341212', '', '', 0),
(153, 'Diario', 'Diario del Sur', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Regional', NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, 13, NULL, NULL, '', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(154, 'Diario', 'El Isleño', NULL, NULL, NULL, NULL, 1, 'Pago', NULL, NULL, 'Departamental', 1099, NULL, '', '', NULL, '', '', NULL, 'C.C. New Point Plaza local 207', 'http://www.xn--elisleo-9za.com/', NULL, NULL, 2, NULL, '5127981. San Andres', 'Faltan importantes datos, hacer llamada urgente. ', '', 0),
(155, 'Revista', 'Revista Alo', NULL, NULL, NULL, NULL, 8, 'Pago', NULL, 1988, 'Nacional', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://alo.co/revistas', NULL, NULL, 1, NULL, '', '', '', 0),
(156, 'Revista', 'Don Juan', NULL, NULL, NULL, NULL, 7, 'Pago', NULL, NULL, 'Nacional', NULL, 1, '', '', NULL, '', '', NULL, 'Av. Calle 26 # 68 B-70', 'http://www.revistadonjuan.com/', NULL, NULL, 1, NULL, '(1) 2940100 ', '', '', 0),
(158, 'Revista', 'Soho', NULL, NULL, NULL, 19, 1, 'Pagado', NULL, 1999, NULL, NULL, 1, '', '', NULL, '', '', NULL, 'Carrera 13 Nº 93 B - 51', 'http://www.soho.com.co/', 69, NULL, NULL, NULL, '(1) 646 8400 ', '', '', 0),
(163, 'Diario', 'ADN Barranquilla', NULL, NULL, NULL, NULL, 1, 'Gratuito', NULL, 2007, 'Local', NULL, 4, '', '', NULL, '', '', NULL, '', 'http://diarioadn.co/barranquilla', NULL, NULL, NULL, NULL, '', '', '', 0),
(164, 'Diario', 'Ambito Jurídico', NULL, NULL, NULL, NULL, 11, 'Pagado', NULL, NULL, NULL, NULL, 7, '', '', NULL, '', '', NULL, 'Av. Cale 26 Nº 82 - 70 ', 'http://www.ambitojuridico.com/', NULL, NULL, NULL, NULL, '', '', '', 0),
(165, 'Diario', 'Choco 7 días', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, NULL, NULL, 3, '', '', NULL, '', '', NULL, 'Cra. 3 No. 26-43', 'http://www.choco7dias.com/', NULL, NULL, NULL, NULL, '(4) 6719122', '', '', 0),
(166, 'Diario', 'Semanario Voz', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1957, NULL, NULL, 2, '', '', NULL, '', '', NULL, 'Carrera 13 a Nº38-32', 'http://www.semanariovoz.com/', 99, NULL, NULL, NULL, '(1) 2321461', '', '', 0),
(167, 'Diario', 'El Nuevo Liberal', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.elpueblo.com.co/elnuevoliberal/', NULL, NULL, NULL, NULL, '', '', '', 0),
(168, 'Diario', 'El Nuevo Oriente', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1998, 'Regional', NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(169, 'Diario', 'El Periódico', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 100 Nº 69 b - 40', 'http://www.hsbnoticias.com/General.asp', NULL, NULL, NULL, NULL, '(1) 6134000', '', '', 0),
(170, 'Diario', 'El Periódico Deportivo', NULL, NULL, NULL, NULL, 3, 'Pagado', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 100 Nº 69b-40', 'http://www.elperiodicodeportivo.com.co/index.php', NULL, NULL, NULL, NULL, '(1) 6134000', '', '', 0),
(171, 'Diario', 'Extra Boyacá', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(172, 'Diario', 'Q´hubo Cúcuta', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Local', NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 16 # 4 -51 San José Cúcuta', 'http://qhubo.com/epaper/cucuta/', 93, NULL, NULL, NULL, '(7) 5719999', '', '', 0),
(173, 'Revista', 'Revista 15 Minutos', NULL, NULL, NULL, NULL, 8, 'Pagado', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.15minutos.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(174, 'Revista', 'Revista Arcadia', NULL, NULL, NULL, NULL, 12, 'Pagado', NULL, 2005, NULL, NULL, NULL, '', '', NULL, '', '', NULL, 'Carrera 11 Nº 77 - 49', 'http://www.revistaarcadia.com/inicio', 45, NULL, NULL, NULL, '(1) 6383504', '', '', 0),
(175, 'Revista', 'Revista Bocas', NULL, NULL, NULL, NULL, 13, 'Pagado', NULL, 2011, NULL, NULL, NULL, '', '', NULL, '', '', NULL, '', '', 94, NULL, NULL, NULL, '', '', '', 0),
(176, 'Revista', 'El Malpensante', NULL, NULL, NULL, NULL, 12, 'Pagado', NULL, 1996, NULL, NULL, 1, '', '', NULL, '', '', NULL, 'Calle 35 Nº 14-27', 'http://www.elmalpensante.com/', 95, NULL, NULL, NULL, '(1) 320 0120', '', '', 0),
(177, 'Revista', 'Revista Elenco', NULL, NULL, NULL, NULL, 8, 'Pagado', NULL, NULL, NULL, NULL, 7, '', '', NULL, '', '', NULL, '', '', 96, NULL, NULL, NULL, '', '', '', 0),
(178, 'Revista', 'Jet Set', NULL, NULL, NULL, NULL, 8, 'Pagado', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 93 B Nº 13 - 47', 'http://www.jetset.com.co/home', 97, NULL, NULL, NULL, '(1) 646 8400 ', '', '', 0),
(179, 'Revista', 'Shock', NULL, NULL, NULL, NULL, 8, 'Pagado', NULL, 1995, NULL, NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.shock.co/', 98, NULL, NULL, NULL, '', '', '', 0),
(180, 'Diario', 'El Extra, Semanario Popular', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.elextra.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(181, 'Diario', 'Siglo 21', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(182, 'Diario', 'Sur Noticias', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.surnoticias.net/', NULL, NULL, NULL, NULL, '', '', '', 0),
(183, 'Diario', 'The Archipielago Press', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.thearchipielagopress.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(184, 'Diario', 'Q´hubo Bogotá', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Local', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://qhubo.com/epaper/bogota/', NULL, NULL, NULL, NULL, '', '', '', 0),
(185, 'Diario', 'Prensa Libre Casanare', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.prensalibrecasanare.com/', NULL, NULL, NULL, NULL, '', '', '', 0),
(187, 'Diario', 'La Nación', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, NULL, NULL, 3, '', '', NULL, '', '', NULL, 'Calle 11 No. 5 - 101 Neiva - Huila', 'http://www.lanacion.com.co/', NULL, NULL, NULL, NULL, '(7) 8724200', '', '', 0),
(188, 'Agencia', 'Colprensa', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, 1981, 'Nacional', NULL, 3, '', '', NULL, '', '', NULL, 'Calle 25 d bis #102 a - 63', 'http://www.colprensa.co/final.html', 110, NULL, NULL, NULL, '(1) 5189090 Ext. 5100', '', '', 0),
(189, 'Diario', 'Diario Extra Putumayo', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Departamental', NULL, 3, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(190, 'Diario', 'Extra Bogotá', NULL, NULL, NULL, NULL, 1, 'Pagado', NULL, NULL, 'Local', NULL, 3, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(191, 'Revista', 'TV y Novelas', NULL, NULL, NULL, NULL, 8, 'Pagado', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', NULL, '', 'http://www.tvynovelas.com/co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(192, 'Diario', 'El Mirador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015, 'Regional', NULL, NULL, '', '', NULL, '', '', NULL, 'Calle 21 No 16 – 17', 'https://www.facebook.com/pages/PERIODICO-EL-MIRADOR/8987867786', 112, 113, NULL, NULL, '3153999868', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_escrito_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_escrito_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `medioscolombia_escrito_ciudad`
--

INSERT INTO `medioscolombia_escrito_ciudad` (`id`, `escrito_id`, `ciudad_id`) VALUES
(3, 172, 792),
(4, 163, 138),
(5, 184, 1),
(6, 190, 1),
(7, 192, 1060);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_escrito_propietario`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_escrito_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `medioscolombia_escrito_propietario`
--

INSERT INTO `medioscolombia_escrito_propietario` (`id`, `escrito_id`, `propietario_id`) VALUES
(5, 175, 1),
(7, 177, 1),
(9, 178, 4),
(10, 174, 4),
(11, 88, 4),
(12, 80, 18),
(13, 179, 18),
(14, 158, 4),
(15, 163, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_escrito_region`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_escrito_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escrito_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `escrito_id` (`escrito_id`,`region_id`),
  KEY `medioscolombia_escrito_region_aa6e6fa9` (`escrito_id`),
  KEY `medioscolombia_escrito_region_55a4ce96` (`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `medioscolombia_escrito_region`
--

INSERT INTO `medioscolombia_escrito_region` (`id`, `escrito_id`, `region_id`) VALUES
(10, 82, 73),
(9, 83, 73),
(4, 91, 1),
(83, 92, 1),
(82, 93, 1),
(81, 95, 1),
(80, 96, 1),
(87, 98, 3),
(88, 98, 72),
(89, 98, 79),
(90, 98, 80),
(91, 98, 84),
(92, 98, 85),
(93, 98, 92),
(86, 98, 98),
(70, 100, 72),
(69, 101, 76),
(68, 103, 76),
(67, 104, 88),
(66, 105, 91),
(65, 107, 91),
(64, 108, 91),
(63, 109, 91),
(105, 110, 91),
(103, 111, 3),
(60, 113, 3),
(52, 115, 3),
(53, 115, 72),
(54, 115, 79),
(55, 115, 80),
(56, 115, 84),
(57, 115, 85),
(58, 115, 92),
(51, 115, 98),
(49, 117, 85),
(48, 119, 90),
(47, 120, 90),
(84, 122, 90),
(44, 123, 92),
(43, 124, 92),
(42, 125, 80),
(41, 126, 80),
(40, 127, 78),
(38, 129, 83),
(37, 130, 83),
(94, 131, 93),
(35, 132, 89),
(34, 133, 86),
(32, 135, 86),
(31, 136, 4),
(30, 137, 4),
(29, 138, 4),
(85, 139, 4),
(27, 141, 4),
(26, 142, 4),
(102, 143, 75),
(20, 147, 93),
(19, 148, 79),
(18, 149, 79),
(17, 151, 84),
(13, 152, 77),
(15, 153, 78),
(16, 153, 87),
(14, 153, 97),
(11, 154, 98),
(96, 167, 78),
(98, 168, 2),
(99, 168, 75),
(100, 168, 86),
(101, 168, 95),
(97, 168, 96),
(106, 171, 75),
(107, 180, 98),
(108, 181, 82),
(110, 182, 97),
(111, 183, 98),
(112, 184, 73),
(113, 185, 96),
(114, 189, 97),
(115, 190, 73),
(117, 192, 95);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_fuente`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_fuente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuente` varchar(255) NOT NULL,
  `descripcionfuente` longtext,
  `linkfuente` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuente` (`fuente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `medioscolombia_fuente`
--

INSERT INTO `medioscolombia_fuente` (`id`, `fuente`, `descripcionfuente`, `linkfuente`) VALUES
(1, 'Estudio General de Medios', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_fuente_autor`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_fuente_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuente_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuente_id` (`fuente_id`,`autor_id`),
  KEY `medioscolombia_fuente_autor_407650da` (`fuente_id`),
  KEY `medioscolombia_fuente_autor_40e8bcf3` (`autor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_generocanaltv`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_generocanaltv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `medioscolombia_generocanaltv`
--

INSERT INTO `medioscolombia_generocanaltv` (`id`, `genero`) VALUES
(8, 'Cultural'),
(4, 'Deportes'),
(1, 'Generalista'),
(2, 'Infantil'),
(6, 'Juvenil'),
(3, 'Música'),
(5, 'Noticias'),
(7, 'Religioso');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_generoescrito`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_generoescrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `medioscolombia_generoescrito`
--

INSERT INTO `medioscolombia_generoescrito` (`id`, `genero`) VALUES
(10, 'Automotor'),
(12, 'Cultura'),
(3, 'Deportes'),
(2, 'Economía y Empresas'),
(8, 'Entretenimiento'),
(13, 'Entrevistas'),
(4, 'Espectáculos'),
(1, 'Generalista'),
(7, 'Hombres'),
(11, 'Judicial'),
(6, 'Madres'),
(5, 'Medio Ambiente'),
(9, 'Política');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_generomediodigital`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_generomediodigital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `medioscolombia_generomediodigital`
--

INSERT INTO `medioscolombia_generomediodigital` (`id`, `genero`) VALUES
(9, 'Automotor'),
(13, 'Conflicto Armado'),
(12, 'Crónica'),
(3, 'Deportivo'),
(4, 'Economía y Negocios'),
(2, 'Generalista'),
(10, 'Investigativo'),
(8, 'Músical'),
(11, 'Narrativo-investigativo'),
(1, 'Noticioso'),
(7, 'Político'),
(6, 'Radio en vivo'),
(5, 'Tecnología');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_generoradio`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_generoradio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioscolombia_generoradio`
--

INSERT INTO `medioscolombia_generoradio` (`id`, `genero`) VALUES
(1, 'Generalista'),
(2, 'Música');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_mediodigital`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_mediodigital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medio` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `nativoasociado` varchar(100) DEFAULT NULL,
  `pagado_gratuito` varchar(100) DEFAULT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `visitaspaginasvistas` int(11) DEFAULT NULL,
  `visitasunicas` int(11) DEFAULT NULL,
  `infovisitas` varchar(255) NOT NULL,
  `fuentevisitas_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioscolombia_mediodigital_7bcc6f63` (`genero_id`),
  KEY `medioscolombia_mediodigital_cb19349f` (`asociadoaescrito_id`),
  KEY `medioscolombia_mediodigital_c298a1ee` (`asociadoaradio_id`),
  KEY `medioscolombia_mediodigital_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioscolombia_mediodigital_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioscolombia_mediodigital_67a22d87` (`ciudad_id`),
  KEY `medioscolombia_mediodigital_c2e8d443` (`director_id`),
  KEY `medioscolombia_mediodigital_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioscolombia_mediodigital_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `medioscolombia_mediodigital`
--

INSERT INTO `medioscolombia_mediodigital` (`id`, `medio`, `sitioweb`, `genero_id`, `cobertura`, `nativoasociado`, `pagado_gratuito`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `inicio`, `inicioyear`, `visitaspaginasvistas`, `visitasunicas`, `infovisitas`, `fuentevisitas_id`, `region_id`, `ciudad_id`, `direccion`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(1, 'El Tiempo.com', 'http://www.eltiempo.com/', 2, 'Nacional', 'Asociado', NULL, 81, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, NULL, 'Avda. Calle 26 # 68 b - 70', 15, NULL, 1, NULL, '', '', '', 0),
(2, 'El Espectador', 'http://www.elespectador.com/noticias', 2, NULL, 'Nativo', NULL, 80, NULL, NULL, NULL, '1996-05-29', 1996, NULL, NULL, '', NULL, NULL, NULL, 'Avda. 68 No. 23-71', 16, 17, NULL, NULL, '', '', '', 0),
(3, 'Canal RCN', 'http://www.canalrcn.com/', 2, 'Nacional', 'Asociado', NULL, NULL, NULL, 1, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, NULL, 'Av. Americas con calle 68', NULL, NULL, NULL, NULL, '', '', '', 0),
(4, 'Minuto 30', 'http://www.minuto30.com/equipo-de-trabajo/', 2, 'Regional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, NULL, 'Carrera 43A N° 16Sur-47 Of: 704, Edif ''Panalpina'', Av. El Poblado, Medellín', 18, 19, NULL, NULL, '(4) 448 97 30', '', '', 0),
(5, 'Semana.com', 'http://www.semana.com/', 2, 'Nacional', 'Asociado', NULL, 87, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Carrera 11 No. 77A-65', 22, 23, 4, NULL, '', '', '', 0),
(6, 'Noticiasrcn.com', 'http://www.noticiasrcn.com/', 2, 'Nacional', 'Asociado', NULL, NULL, NULL, 1, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Av. Americas con calle 68', NULL, NULL, NULL, NULL, '', '', '', 0),
(7, 'El Colombiano.com', 'http://www.elcolombiano.com/', 2, 'Nacional', 'Asociado', NULL, 92, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 2, 'Carrera 48 N° 30 Sur- 119', NULL, NULL, 10, NULL, '', '', '', 0),
(8, 'El Universal.com', 'http://www.eluniversal.com.co/', 2, 'Nacional', 'Asociado', NULL, 111, NULL, NULL, NULL, NULL, 1997, NULL, NULL, '', NULL, NULL, 3, ' Pie del Cerro Cl. 30 No. 17-36 ', NULL, NULL, 11, NULL, '(5)  642 4646', '', '', 0),
(9, 'Caracol tv.com', 'http://www.caracoltv.com/', 2, 'Nacional', 'Asociado', NULL, NULL, NULL, 2, NULL, NULL, 1999, NULL, NULL, '', NULL, NULL, 1, 'Calle 103 69 B-43 ', 41, 39, 15, NULL, ' 6430430 ', 'En Caracol no existe la figura de Director, ni la de Gerente General, existe la de Presidente.  En el caso de Tatiana Restrepo ella es Gerente Digital Caracol TV.', '', 0),
(10, 'El País.com.co', 'http://www.elpais.com.co/elpais/', 2, 'Regional', NULL, NULL, 138, NULL, NULL, NULL, NULL, 2000, NULL, NULL, '', NULL, NULL, 4, 'Cra. 2 No. 24-46', 9, 46, 17, NULL, '(2) 6865000', '', '', 0),
(11, '90 minutos.com', 'http://www.90minutos.co/', 1, 'Departamental', 'Nativo', NULL, NULL, NULL, 7, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 4, '', NULL, 53, 20, NULL, '', '', '', 0),
(12, 'Futbolred.com', 'http://www.futbolred.com/', 3, 'Regional', 'Asociado', NULL, 81, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Av. Calle 26 # 68B-70', 54, 55, 1, NULL, '5714444', 'El director es el Editor General del sitio web.', '', 0),
(13, 'Las 2 Orillas.co', 'http://www.las2orillas.co/', 1, 'Regional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2013, NULL, NULL, '', NULL, NULL, 1, 'Calle 98a # 51-69', 56, NULL, NULL, NULL, '7564535', '', '', 0),
(15, 'Colombia.com', 'http://www.colombia.com/', 2, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2000, 16064, 16064, 'Las cifras son mensuales. Diciembre de 2014 a Enero 15 de 2015', NULL, NULL, NULL, 'Calle 100 # 19A - 50 oficina 203', NULL, 65, 26, NULL, '636 2811', 'Los datos de páginas vistas son de diciembre 16 de 2014 a enero 15 de 2015.', '', 0),
(16, 'Caracol.com.co', 'http://www.caracol.com.co/', 1, 'Nacional', 'Asociado', NULL, NULL, 169, NULL, NULL, NULL, 1996, NULL, NULL, '', NULL, NULL, 1, 'Calle 67 # 7 - 37', 67, 66, 27, NULL, '', '', '', 0),
(17, 'Pulzo.com', 'http://www.pulzo.com/', 2, 'Departamental', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, '', NULL, 68, NULL, NULL, '', '', '', 0),
(18, 'Portafolio.co', 'http://www.portafolio.co/', 4, 'Regional', 'Asociado', NULL, 90, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Av Calle 26 # 68 b - 70', NULL, NULL, 1, NULL, '2940100', '', '', 0),
(19, 'Soho.com', 'http://www.soho.com.co/', 2, 'Regional', 'Asociado', NULL, 158, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Carrera 13 No. 93 B - 51', 69, 20, 4, NULL, ' 646 8400 ', '', '', 0),
(20, 'El Heraldo.co', 'http://www.elheraldo.co/', 1, 'Regional', 'Asociado', NULL, 98, NULL, NULL, NULL, NULL, 1997, NULL, NULL, '', NULL, NULL, 138, 'Calle 53B N° 46 - 25', NULL, NULL, 14, NULL, '(5) 3715000', '', '', 0),
(21, 'Noticias Caracol.com', 'http://www.noticiascaracol.com/', 2, 'Regional', 'Asociado', NULL, NULL, NULL, 2, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 103 69 B-43 ', 66, NULL, 15, NULL, '', '', '', 0),
(22, 'Gol Caracol', 'http://www.golcaracol.com/', 3, 'Nacional', 'Asociado', NULL, NULL, NULL, 2, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 103 69 B-43 ', NULL, NULL, 15, NULL, '', '', '', 0),
(24, 'Diario ADN', 'http://www.diarioadn.co/', 2, 'Nacional', 'Asociado', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Av. Calle 26 # 68B-70', NULL, NULL, 1, NULL, '5714444', '', '', 0),
(25, 'Blu Radio.com', 'http://www.bluradio.com/', 1, 'Nacional', NULL, NULL, NULL, NULL, 2, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 103 No. 69B 43. Etapa 6. piso 6.', NULL, NULL, 15, NULL, '7051890', '', '', 0),
(26, 'Dinero.com', 'http://www.dinero.com/', 4, 'Nacional', 'Asociado', NULL, 88, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 93 B No. 13 - 47', NULL, NULL, 4, NULL, '646 8400', '', '', 0),
(27, 'Publimetro.co', 'http://www.publimetro.co/', 2, 'Nacional', 'Asociado', NULL, 84, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 75 No. 5-88 pisos 7 y 8', NULL, NULL, NULL, NULL, '', '', '', 0),
(28, 'La FM.com.co', 'http://www.lafm.com.co/', 2, 'Nacional', NULL, NULL, NULL, 170, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Av. Caracas 36 - 32', 70, 64, 24, NULL, '3147070 Ext. 1310', '', '', 0),
(29, 'Winsports.co', 'http://www.winsports.co/', 3, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, NULL, '', NULL, 71, NULL, NULL, '', '', '', 0),
(30, 'La W Radio.com.co', 'http://www.wradio.com.co/', 2, NULL, 'Asociado', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, NULL, '', 72, 66, 27, NULL, '3262325 / 3262550', '', '', 0),
(31, 'La República.co', 'http://www.larepublica.co/', 4, 'Nacional', 'Asociado', NULL, 86, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 25 d bis #102 a - 63', NULL, NULL, NULL, NULL, '227600', '', '', 0),
(32, 'Enter.co', 'http://www.enter.co/', 5, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Carrera 19C #86A-43 ofc 102', NULL, NULL, NULL, NULL, '7443600 ext 4000', '', '', 0),
(33, 'La Patria', 'http://www.lapatria.com/', 1, 'Regional', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1998, NULL, NULL, '', NULL, NULL, 331, 'Carrera 20 # 46- 35', 73, NULL, 7, NULL, '(6) 878 1740', '', '', 0),
(34, 'RCN mundo.com', 'http://www.rcnmundo.com/', 6, 'Nacional', 'Asociado', NULL, NULL, 170, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 37 Nro. 13A – 19', NULL, NULL, 24, NULL, '3147070 Ext. 1076', '', '', 0),
(35, 'Antena 2.com.co', 'http://www.antena2.com.co/', 3, 'Nacional', 'Asociado', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 37 Nro. 13A – 19', 74, NULL, NULL, NULL, '3147070 Ext. 1076', '', '', 0),
(36, 'Rcn Radio.com', 'http://www.rcnradio.com/', 2, 'Nacional', 'Asociado', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Av. Caracas 36 - 32', NULL, 64, NULL, NULL, '3147070 Ext. 1310', '', '', 0),
(37, 'Terra.com.co', 'http://www.terra.com.co/', 2, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 108 No. 45-30 Oficina 1601', NULL, NULL, NULL, NULL, '5932777', '', '', 0),
(38, 'La Silla Vacia.com', 'http://www.lasillavacia.com/', 7, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2009, NULL, NULL, '', NULL, NULL, 1, '', 75, NULL, NULL, NULL, '', '', '', 0),
(39, 'La Opinión.com.co', 'http://www.laopinion.com.co/', NULL, 'Departamental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 792, 'Av. 4 Nro. 16 - 12', NULL, 76, NULL, NULL, '(7) 5829999', '', '', 0),
(40, 'Radioactiva.com', 'http://www.radioacktiva.com/', 8, 'Nacional', 'Asociado', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Calle 67 # 7 - 37', NULL, NULL, 27, NULL, '646 8400', '', '', 0),
(42, 'Confidencial Colombia', 'http://www.confidencialcolombia.com/', 2, 'Municipal', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2011, NULL, NULL, '', NULL, NULL, 1, 'Calle 59 No 6 -31 of: 202 ', 78, NULL, NULL, NULL, '467 22 40 / 41 ', '', '', 0),
(43, 'Opanoticias.com', 'http://opanoticias.com/', 1, 'Municipal', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2010, NULL, NULL, '', NULL, NULL, 617, 'Calle 10 No. 3-40', 79, NULL, NULL, NULL, '', '', '', 0),
(50, 'Verdad Abierta.com', 'http://www.verdadabierta.com/', 13, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2008, NULL, NULL, '', NULL, NULL, 1, 'Carrera 11 No. 77A-65', 83, NULL, 4, NULL, '646 8400', '', '', 0),
(53, 'Razón Pública.com', 'http://www.razonpublica.com/', 2, 'Nacional', 'Nativo', NULL, NULL, NULL, NULL, NULL, NULL, 2015, NULL, NULL, '', NULL, NULL, 1, 'Carrera 11 No. 92 -20 Of. 301', 85, NULL, 40, NULL, '744 9099', '', '', 0),
(71, 'Kien & Ke', 'http://www.kienyke.com/', 2, NULL, 'Nativo', NULL, NULL, NULL, NULL, NULL, '2010-10-27', 2010, NULL, NULL, '', NULL, NULL, NULL, 'Carrera 7 No. 156 - 78 Piso 8 Oficina 802. ', 109, NULL, NULL, NULL, '(1)  6012310', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_mediodigital_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_mediodigital_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_mediodigital_propietario`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_mediodigital_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_mediodigital_region`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_mediodigital_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediodigital_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mediodigital_id` (`mediodigital_id`,`region_id`),
  KEY `medioscolombia_mediodigital_region_bc9ababc` (`mediodigital_id`),
  KEY `medioscolombia_mediodigital_region_55a4ce96` (`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `medioscolombia_mediodigital_region`
--

INSERT INTO `medioscolombia_mediodigital_region` (`id`, `mediodigital_id`, `region_id`) VALUES
(1, 4, 1),
(5, 5, 2),
(4, 6, 2),
(6, 7, 1),
(9, 8, 3),
(38, 9, 2),
(14, 10, 4),
(24, 11, 4),
(23, 11, 82),
(25, 11, 87),
(27, 12, 2),
(28, 13, 2),
(31, 16, 2),
(32, 17, 2),
(34, 18, 2),
(35, 19, 2),
(36, 20, 72),
(37, 21, 2),
(39, 22, 2),
(41, 24, 2),
(42, 25, 2),
(43, 26, 2),
(44, 27, 2),
(46, 28, 2),
(47, 31, 2),
(48, 32, 2),
(49, 33, 76),
(51, 34, 2),
(52, 35, 2),
(53, 36, 2),
(54, 37, 2),
(55, 38, 2),
(56, 39, 88),
(57, 40, 2),
(59, 42, 2),
(61, 43, 83),
(69, 50, 2),
(73, 53, 2);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_paissociedad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_paissociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paissociedad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paissociedad` (`paissociedad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioscolombia_paissociedad`
--

INSERT INTO `medioscolombia_paissociedad` (`id`, `paissociedad`) VALUES
(1, 'Chile'),
(2, 'Madrid');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_periodicidad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_periodicidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodicidad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `periodicidad` (`periodicidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `medioscolombia_periodicidad`
--

INSERT INTO `medioscolombia_periodicidad` (`id`, `periodicidad`) VALUES
(3, 'Diario'),
(6, 'Dos o tres veces por semana'),
(4, 'Lunes a sábado'),
(5, 'Lunes a viernes'),
(1, 'Mensual'),
(7, 'Quincenal'),
(2, 'Semanal');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_propietario`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propietario` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `tiposociedad_id` int(11) DEFAULT NULL,
  `presidentedirectorio_id` int(11) DEFAULT NULL,
  `representantelegal_id` int(11) DEFAULT NULL,
  `utilidades` int(11) DEFAULT NULL,
  `infoutilidades` varchar(255) DEFAULT NULL,
  `fuenteutilidades_id` int(11) DEFAULT NULL,
  `sociedadcontroladora_id` int(11) DEFAULT NULL,
  `pcentsociedadcontroladora` varchar(100) DEFAULT NULL,
  `otrasociedada_id` int(11) DEFAULT NULL,
  `pcentsociedada` varchar(100) DEFAULT NULL,
  `otrasociedadb_id` int(11) DEFAULT NULL,
  `pcentsociedadb` varchar(100) DEFAULT NULL,
  `otrasociedadc_id` int(11) DEFAULT NULL,
  `pcentsociedadc` varchar(100) DEFAULT NULL,
  `otrasociedadd_id` int(11) DEFAULT NULL,
  `pcentsociedadd` varchar(100) DEFAULT NULL,
  `otrasociedade_id` int(11) DEFAULT NULL,
  `pcentsociedade` varchar(100) DEFAULT NULL,
  `fuentepropietario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietario` (`propietario`),
  KEY `medioscolombia_propietario_e9a02f0c` (`tiposociedad_id`),
  KEY `medioscolombia_propietario_5f91a1f5` (`presidentedirectorio_id`),
  KEY `medioscolombia_propietario_f0eb20d7` (`representantelegal_id`),
  KEY `medioscolombia_propietario_5016b70d` (`sociedadcontroladora_id`),
  KEY `medioscolombia_propietario_b1d51043` (`otrasociedada_id`),
  KEY `medioscolombia_propietario_9b75c310` (`otrasociedadb_id`),
  KEY `medioscolombia_propietario_da5e7ff8` (`otrasociedadc_id`),
  KEY `medioscolombia_propietario_3d7488bc` (`otrasociedadd_id`),
  KEY `medioscolombia_propietario_f8949abe` (`otrasociedade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `medioscolombia_propietario`
--

INSERT INTO `medioscolombia_propietario` (`id`, `propietario`, `rutpropietario`, `tiposociedad_id`, `presidentedirectorio_id`, `representantelegal_id`, `utilidades`, `infoutilidades`, `fuenteutilidades_id`, `sociedadcontroladora_id`, `pcentsociedadcontroladora`, `otrasociedada_id`, `pcentsociedada`, `otrasociedadb_id`, `pcentsociedadb`, `otrasociedadc_id`, `pcentsociedadc`, `otrasociedadd_id`, `pcentsociedadd`, `otrasociedade_id`, `pcentsociedade`, `fuentepropietario_id`) VALUES
(1, 'Casa Editorial El Tiempo', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Casa Editorial Welcome', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Galvis Ramírez Y Cia S.A', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Publicaciones Semana S.A.', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Grupo Editorial del Periódico SAS', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'La Crónica SAS', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Editora del Huila Ltda', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Casa Editorial de la Sabana SAS', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'El Diario del Otún', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'El Colombiano S.A. & CIA. S.C.A.', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Editora del Mar S.A.', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Comunicadores de Risaralda', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Grupo de Medios de Risaralda', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Casa Editorial El Heraldo', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Caracol Televisión S.A', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Grupo Nacional de Medios', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'El País. S.A', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Comunican S.A.', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Sociedad Televisión del Pacífico -Telepacífico-', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Sociedad Canal Regional de Televisión del Pacífico Ltda.', NULL, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Metro Internacional', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Caracol Radio', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Grupo Editorial El Rayo', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'RCN Radio', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Interlatin Corporation', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'www.colombia.com Ltda', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Caracol S.A.', NULL, 1, NULL, NULL, NULL, '', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'R R Editores Ramirez Y Ramirez Ltda', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(40, 'Fundación Razón Pública', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(41, ' Casa Editorial Welcome', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(42, 'Agenda Propia', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(44, 'Cadena Súper', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(45, 'Todelar Radio', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(46, 'Radiopolis', '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_propietario_miembrosdirectorio`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_propietario_miembrosdirectorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propietario_id` int(11) NOT NULL,
  `empresario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietario_id` (`propietario_id`,`empresario_id`),
  KEY `medioscolombia_propietario_miembrosdirectorio_4cace989` (`propietario_id`),
  KEY `medioscolombia_propietario_miembrosdirectorio_91f3d441` (`empresario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_propietario_sectores`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_propietario_sectores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propietario_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietario_id` (`propietario_id`,`sector_id`),
  KEY `medioscolombia_propietario_sectores_4cace989` (`propietario_id`),
  KEY `medioscolombia_propietario_sectores_663ed8c9` (`sector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_radio`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_radio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medio` varchar(255) NOT NULL,
  `asociadoaescrito_id` int(11) DEFAULT NULL,
  `asociadoaradio_id` int(11) DEFAULT NULL,
  `asociadoacanaltv_id` int(11) DEFAULT NULL,
  `asociadoamediodigital_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `frecuencia` varchar(100) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `inicioyear` int(11) DEFAULT NULL,
  `indiceaudiencia` varchar(100) DEFAULT NULL,
  `infoaudiencia` varchar(255) NOT NULL,
  `fuenteaudiencia_id` int(11) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `sitioweb` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `gerentegeneral_id` int(11) DEFAULT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `fuentepropiedad_id` int(11) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `observaciones` longtext,
  `anexos` longtext,
  `check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medio` (`medio`),
  KEY `medioscolombia_radio_cb19349f` (`asociadoaescrito_id`),
  KEY `medioscolombia_radio_c298a1ee` (`asociadoaradio_id`),
  KEY `medioscolombia_radio_204ca36f` (`asociadoacanaltv_id`),
  KEY `medioscolombia_radio_a9c57ac0` (`asociadoamediodigital_id`),
  KEY `medioscolombia_radio_7bcc6f63` (`genero_id`),
  KEY `medioscolombia_radio_67a22d87` (`ciudad_id`),
  KEY `medioscolombia_radio_c2e8d443` (`director_id`),
  KEY `medioscolombia_radio_93dcd9ba` (`gerentegeneral_id`),
  KEY `medioscolombia_radio_4cace989` (`propietario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `medioscolombia_radio`
--

INSERT INTO `medioscolombia_radio` (`id`, `medio`, `asociadoaescrito_id`, `asociadoaradio_id`, `asociadoacanaltv_id`, `asociadoamediodigital_id`, `genero_id`, `frecuencia`, `inicio`, `inicioyear`, `indiceaudiencia`, `infoaudiencia`, `fuenteaudiencia_id`, `cobertura`, `ciudad_id`, `direccion`, `sitioweb`, `director_id`, `gerentegeneral_id`, `propietario_id`, `fuentepropiedad_id`, `telefono`, `observaciones`, `anexos`, `check`) VALUES
(169, 'Caracol Radio', NULL, NULL, NULL, NULL, NULL, 'AM y FM', NULL, 1948, '2049400', '', NULL, 'Nacional', NULL, 'Calle 67 # 7 - 37', 'http://www.caracol.com.co/', NULL, NULL, NULL, NULL, '(1) 3487600', 'Todos los datos de índice de audiencia que se dan acá fueron sacados del informe ejecutivo Ecar III de 2012. Considero que esta campo no aplica acá porque hay muchos directores de los diferentes programas. Lo que interesa es quien es el presidente o gerente de la cadena radial. Espero sus comentarios.', '', 0),
(170, 'RCN Radio', NULL, NULL, NULL, NULL, 1, 'AM y FM', NULL, 1948, '724400.000', '', NULL, 'Nacional', NULL, 'Av. Caracas 36 - 32', 'http://www.rcnradio.com/', NULL, NULL, NULL, NULL, '(1) 3147070 Ext. 1310', '', '', 0),
(171, 'La W Radio ', NULL, NULL, NULL, NULL, 1, 'AM y FM', NULL, 2003, '803900.000', '', NULL, 'Nacional', NULL, 'Calle 67 # 7 - 37', 'http://www.wradio.com.co/', NULL, NULL, NULL, NULL, '(1) 3262325 / 3262550', '', '', 0),
(172, 'La FM ', NULL, NULL, NULL, NULL, 1, 'AM y FM', NULL, 1995, '572300.000', '', NULL, 'Nacional', NULL, 'Av. Caracas 36 - 32', 'http://www.lafm.com.co/', NULL, NULL, NULL, NULL, '(1) 3147070 Ext. 1310', '', '', 0),
(173, 'Blu Radio ', NULL, NULL, NULL, NULL, 1, 'FM', NULL, 2012, '326000.000', '', NULL, 'Nacional', NULL, 'Calle 103 No. 69B 43. Etapa 6. Piso 6', 'http://www.bluradio.com/', NULL, NULL, NULL, NULL, '(1) 7051890', 'Esta es la única emisora que tiene el dato de índice de audiencia actualizado de 2014, esto porque en 2012 Blu era relativamente nueva.', '', 0),
(175, 'Radio Santa Fé', NULL, NULL, NULL, NULL, NULL, 'AM', NULL, 1938, '', '', NULL, 'Local', 1, 'Calle 57 # 17-48', 'http://www.radiosantafe.com/', NULL, NULL, NULL, NULL, '(1) 345 6781 | 345 6782', 'Aunque es una emisora con varios años de historia cada vez tiene menos oyentes, en el Ecar ola III de 2012 ni siquiera aparece en un ranking de 38 emisoras. Podría ponerse otras musicales, por ejemplo Tropicana, esa tiene muy buena sintonia y nos falta.', '', 0),
(176, 'Candela Stereo', NULL, NULL, NULL, NULL, 2, 'AM y FM', NULL, 1990, '751600.000', '', NULL, 'Nacional', NULL, 'Calle 56 # 37 - 34', 'http://www.candelaestereo.com/radio-en-vivo', NULL, NULL, NULL, NULL, '(1) 5941019', 'En principio puedo decir que el género fuerte de Candela es la música aunque también incursiona en el género noticioso y de entretenimiento. Me gustaría saber la opinión de ustedes frente al género de esta emisora popular.Karen es la gerente de la cadena Radiopolis', '', 0),
(177, 'Olímpica Stereo', NULL, NULL, NULL, NULL, 2, 'FM', NULL, 1969, '2029900', '', NULL, 'Nacional', NULL, 'Carrera 46 # 96 - 29', 'http://olimpicastereo.com.co/', NULL, NULL, NULL, NULL, '(7) 6798000/ 01/ 02', '', '', 0),
(178, 'Emisora del Atlántico ', NULL, NULL, NULL, NULL, 1, 'AM y FM', NULL, 1934, '127300.000', '', NULL, 'Regional', NULL, 'Calle 72 # 48 - 37 Piso 2', 'http://www.emisoraatlantico.com.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(179, 'Emisora UIS Stereo', NULL, NULL, NULL, NULL, NULL, 'FM', NULL, 1995, '', '', NULL, 'Regional', NULL, 'Carrera 27 # 9', 'https://www.uis.edu.co/webUIS/es/mediosComunicacion/radio/emisoras.html', NULL, NULL, NULL, NULL, '(7) 6344000', 'Emisora universitarias', '', 0),
(180, 'Colombia Estéreo', NULL, NULL, NULL, NULL, NULL, 'FM', NULL, 1954, NULL, '', NULL, 'Nacional', NULL, 'Calle 80 # 38 - 00. Escuela Militar de Cadetes', 'http://www.emisoraejercito.mil.co', NULL, NULL, NULL, NULL, '(1) 2407374/ 40', 'Es fundamental llamar para determinar si todas las emisoras que tiene el ejército a lo largo y ancho del país tienen el mismo contenido o no.', NULL, 0),
(181, 'Emisora Policía Nacional', NULL, NULL, NULL, NULL, NULL, 'FM', NULL, NULL, '301.000', '', NULL, 'Nacional', NULL, 'Carrera 59 # 26 -21', 'http://www.policia.gov.co/emisora/', NULL, NULL, NULL, NULL, '(1) 3159111 / 9112', '', '', 0),
(182, 'UN Radio', NULL, NULL, NULL, NULL, NULL, 'FM', NULL, 1991, NULL, '', NULL, 'Regional', NULL, '(1) 3165000 ext 1804', 'http://www.unradio.unal.edu.co', NULL, NULL, NULL, NULL, 'Carrera 45 No 26-85 - Edificio Uriel Gutiérrez Of. 518', 'Radio universitaria, presente también en Medellín', NULL, 0),
(183, 'Javeriana Stereo', NULL, NULL, NULL, NULL, 1, 'FM', NULL, 1977, '57000.000', '', NULL, 'Local', NULL, 'Carrera 7 # 40 - 62 Edifico Pablo VI. Piso 1. ', 'http://www.javerianaestereo.com/', NULL, NULL, NULL, NULL, '(1) 3384510 / 2850709', 'Este dato lo aportan ellos mismos en su página', '', 0),
(184, 'Boyacá 95.6', NULL, NULL, NULL, NULL, NULL, 'FM', NULL, 1995, '', '', NULL, 'Departamental', NULL, 'Calle 22 # 9 - 90. Edificio Loteria de Boyacá Piso 11. Tunja. ', 'http://www.sogamoso.com/radio-gobernacion-boyaca/', NULL, NULL, NULL, NULL, '(8) 7427923 / 3547. 3114841720 - 3202019667', 'Radio de la Gobernación de Boyacá. La otra dirección es http://admincomunica.wix.com/emisora956. Esta parece no ser muy conocida. ', '', 0),
(185, 'Sogamoso', NULL, NULL, NULL, NULL, NULL, 'FM', NULL, 1989, '', '', NULL, 'Regional', NULL, 'C.C. Meditropoli ofi 210. ', 'http://www.tocastereofm.com/sogamoso/', NULL, NULL, NULL, NULL, '7750262 – 7721020 – 7719961. Cel 310 8664350', '', '', 0),
(186, 'La Superestación ', NULL, NULL, NULL, NULL, 1, 'FM', NULL, NULL, '', '', NULL, 'Departamental', NULL, '', 'http://www.cadenasuper.com/', NULL, NULL, NULL, NULL, '310 8664350', 'Esto es una cadena radial, es necesario determinar cuál de las emisoras abordaremos.', '', 0),
(187, 'Ondas del Meta 1170 AM ', NULL, NULL, NULL, NULL, 1, 'AM', NULL, 1967, '', '', NULL, 'Regional', NULL, 'Calle 41B No. 30-11 Barrio la Grama', 'http://www.ondasdelmeta.com/', NULL, NULL, NULL, NULL, '(8) 684 83 73/ 683 66 55', '', '', 0),
(188, 'Voz de los Centauros', NULL, NULL, NULL, NULL, NULL, 'AM', NULL, 1973, NULL, '', NULL, 'Regional', NULL, 'Carrera 31 N° 37 - 71 Oficina 10-01 Edificio Los Centauros', 'http://www.lavozdeloscentauros.com/', NULL, NULL, NULL, NULL, '662 36 66/ 662 36 67', NULL, NULL, 0),
(189, 'Radio Calidad Cali', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, 'Local', 4, '', 'http://www.rcnmundo.com/movil/player.php?id=019', NULL, 64, 24, NULL, '', 'No entiendo cuál es.', '', 0),
(190, 'Radio Súper Cali', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, 'Local', NULL, '¿De cuál ciudad es esta?', 'http://supernoticiasdelvalle.com/', NULL, NULL, NULL, NULL, '', '', '', 0),
(191, 'Radio Guatapuri', NULL, NULL, NULL, NULL, 1, 'AM', NULL, 1963, '', '', NULL, 'Departamental', NULL, 'Calle 17 No. 15-67', 'http://www.radioguatapuri.com/', NULL, NULL, NULL, NULL, '(5) 5712371/ 320 549 00 99', '', '', 0),
(192, 'Archipielago Radio', NULL, NULL, NULL, NULL, 1, 'FM', NULL, NULL, '', '', NULL, 'Departamental', NULL, 'Centro Comercial New Point Plaza oficinas 228-229-230', 'http://www.archipielagoradio.com/', NULL, NULL, 23, NULL, '(8) 5124955- Cel:3184843316', '', '', 0),
(193, 'Arauca Stereo', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, NULL, NULL, '', 'http://www.araucastereo.com/contacto.php', NULL, NULL, NULL, NULL, '', '', '', 0),
(194, 'Tolima FM Stereo', NULL, NULL, NULL, NULL, 1, 'FM', NULL, NULL, '', '', NULL, 'Departamental', NULL, 'C. C.Pasaje Real Piso 8', 'http://www.tolimafm.com/', NULL, NULL, NULL, NULL, '(8) 2610732 - 2610429 - 261 1215 - 2617414 - 2630826', '', '', 0),
(195, 'Radio Activa', NULL, NULL, NULL, NULL, 2, 'FM', NULL, 1989, '592600', '', NULL, 'Nacional', NULL, '', 'http://www.radioacktiva.com/', NULL, NULL, 22, NULL, '', '', '', 0),
(200, 'Caracol Radio Cauca', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, 'Departamental', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(201, 'Caracol Radio Chocó', NULL, NULL, NULL, NULL, 1, NULL, NULL, 2015, '', '', NULL, 'Departamental', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(202, 'Caracol Radio San Andrés', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, 'Departamental', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(203, 'Cardenal Stereo', NULL, NULL, NULL, NULL, 1, 'FM', NULL, NULL, '', '', NULL, 'Regional', NULL, 'Calle 3 No 5-10. San Juan del Cesar, Guajira. ', 'http://www.cardenalstereo.com/', 100, NULL, NULL, NULL, '(5) 7740271 Cel. 3015643085 y 3135038954', '', '', 0),
(204, 'Ecos del Atrato', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, 'Departamental', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(205, 'Caracol Radio Yopal', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, 'Departamental', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(206, 'El Sol Medellín RCN Radio', NULL, NULL, NULL, NULL, 2, 'FM', NULL, NULL, '', '', NULL, 'Departamental', NULL, '', 'http://www.elsol.com.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(207, 'Violeta Stereo', NULL, NULL, NULL, NULL, 1, 'FM', NULL, NULL, '', '', NULL, 'Departamental', NULL, 'Carrera 20 N° 6-77 Tercer Piso Edificio Reinaldo Venegas', 'http://violetastereo.com/', NULL, NULL, NULL, NULL, '', '', '', 0),
(208, 'Guajira Estéreo', NULL, NULL, NULL, NULL, 1, 'FM', NULL, NULL, '', '', NULL, 'Departamental', NULL, '', 'http://www.guajiraestereo.com/', NULL, NULL, NULL, NULL, '', '', '', 0),
(209, 'La Voz de Yopal', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, 'Departamental', NULL, 'Calle 9 Nº 22-73 Yopal', 'http://www.lavozdeyopal.co/', NULL, NULL, NULL, NULL, '(8) 6359739', '', '', 0),
(210, 'La X', NULL, NULL, NULL, NULL, 2, 'FM', NULL, NULL, '', '', NULL, NULL, NULL, '', 'http://www.laxmasmusica.com/Portal/', NULL, NULL, NULL, NULL, '', '', '', 0),
(211, 'Olímpica Stereo Ibagué', NULL, NULL, NULL, NULL, 2, 'FM', NULL, 2015, '', '', NULL, 'Local', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(212, 'Radio Súper Popayán', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, 'Departamental', NULL, 'Carrera 8 Nº 5-41 Popayán – Cauca', 'http://radiosuperpopayan.com/', NULL, NULL, NULL, NULL, '(2) 8224600/ 8242530/ 8244885', '', '', 0),
(213, 'RCN La Radio San Andrés', NULL, NULL, NULL, NULL, 1, 'AM', NULL, NULL, '', '', NULL, 'Departamental', NULL, '', '', NULL, NULL, NULL, NULL, '', '', '', 0),
(214, 'Rumba', NULL, NULL, NULL, NULL, 2, 'FM', NULL, NULL, '', '', NULL, 'Local', NULL, '', 'http://www.rumba.com.co/', NULL, NULL, NULL, NULL, '', '', '', 0),
(215, 'Tropicana', NULL, NULL, NULL, NULL, 2, 'FM', NULL, NULL, '', '', NULL, 'Local', NULL, '', 'http://www.tropicanafm.com/', NULL, NULL, NULL, NULL, '', '', '', 0),
(216, 'Tropicana Medellín', NULL, NULL, NULL, NULL, 2, 'FM', NULL, 2015, '', '', NULL, 'Local', NULL, '', 'http://www.tropicanafm.com/audio-en-vivo/medellin/102-9-FM/player/TROPI_MEDELLIN', NULL, NULL, NULL, NULL, '', '', '', 0),
(217, 'Vibra Bogotá', NULL, NULL, NULL, NULL, 2, 'FM', NULL, NULL, '', '', NULL, 'Local', NULL, 'Calle 56 N° 37 – 34 ', 'http://www.vibra.fm/radio-en-vivo.html', NULL, NULL, NULL, NULL, '(1) 594 1012', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_radio_ciudad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_radio_ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `medioscolombia_radio_ciudad`
--

INSERT INTO `medioscolombia_radio_ciudad` (`id`, `radio_id`, `ciudad_id`) VALUES
(1, 211, 971),
(2, 190, 4),
(3, 214, 1),
(5, 216, 2),
(7, 217, 1),
(8, 215, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_radio_propietario`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_radio_propietario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `propietario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `medioscolombia_radio_propietario`
--

INSERT INTO `medioscolombia_radio_propietario` (`id`, `radio_id`, `propietario_id`) VALUES
(2, 186, 44),
(3, 210, 45),
(4, 190, 44),
(5, 217, 46),
(7, 215, 27),
(8, 176, 46),
(9, 173, 15);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_radio_region`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_radio_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `radio_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `radio_id` (`radio_id`,`region_id`),
  KEY `medioscolombia_radio_region_fb254052` (`radio_id`),
  KEY `medioscolombia_radio_region_55a4ce96` (`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `medioscolombia_radio_region`
--

INSERT INTO `medioscolombia_radio_region` (`id`, `radio_id`, `region_id`) VALUES
(22, 175, 73),
(21, 178, 72),
(17, 179, 1),
(16, 179, 3),
(18, 179, 75),
(19, 179, 91),
(12, 184, 75),
(8, 185, 2),
(10, 185, 76),
(9, 185, 83),
(11, 185, 93),
(23, 186, 86),
(14, 187, 2),
(15, 187, 86),
(13, 187, 96),
(4, 191, 79),
(3, 192, 98),
(2, 193, 95),
(39, 194, 93),
(24, 200, 78),
(25, 201, 82),
(27, 202, 98),
(29, 203, 79),
(28, 203, 84),
(30, 204, 82),
(31, 205, 96),
(32, 206, 1),
(33, 207, 96),
(34, 208, 84),
(35, 209, 96),
(36, 212, 78),
(37, 213, 98),
(38, 214, 73),
(43, 215, 73),
(42, 217, 73);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_region`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region` (`region`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `medioscolombia_region`
--

INSERT INTO `medioscolombia_region` (`id`, `region`) VALUES
(99, 'Amazonas'),
(1, 'Antioquia'),
(95, 'Arauca'),
(98, 'Archipiélago de San Andrés - Providencia - Santa Catalina'),
(72, 'Atlántico'),
(73, 'Bogotá - D.C.'),
(3, 'Bolívar'),
(75, 'Boyacá'),
(76, 'Caldas'),
(77, 'Caquetá'),
(96, 'Casanare'),
(78, 'Cauca'),
(79, 'Cesar'),
(82, 'Chocó'),
(80, 'Córdoba'),
(2, 'Cundinamarca'),
(100, 'Guainía'),
(101, 'Guaviare'),
(83, 'Huila'),
(84, 'La Guajira'),
(85, 'Magdalena'),
(86, 'Meta'),
(87, 'Nariño'),
(88, 'Norte de Santander'),
(97, 'Putumayo'),
(89, 'Quindio'),
(90, 'Risaralda'),
(91, 'Santander'),
(92, 'Sucre'),
(93, 'Tolima'),
(4, 'Valle del Cauca '),
(102, 'Vaupés'),
(103, 'Vichada');

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_regulacion`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_regulacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(255) NOT NULL,
  `tipodocumento_id` int(11) DEFAULT NULL,
  `descripciondocumento` longtext,
  `linkdocumento` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`documento`),
  KEY `medioscolombia_regulacion_f9ba3e61` (`tipodocumento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_sector`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_sector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sector` (`sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_sociedad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_sociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad` varchar(255) NOT NULL,
  `rutsociedad` varchar(255) DEFAULT NULL,
  `tiposociedad_id` int(11) DEFAULT NULL,
  `presidentedirectorio_id` int(11) DEFAULT NULL,
  `representantelegal_id` int(11) DEFAULT NULL,
  `utilidades` int(11) DEFAULT NULL,
  `infoutilidades` varchar(255) DEFAULT NULL,
  `fuenteutilidades_id` int(11) DEFAULT NULL,
  `sociedadcontroladora_id` int(11) DEFAULT NULL,
  `pcentsociedadcontroladora` varchar(100) DEFAULT NULL,
  `otrasociedada_id` int(11) DEFAULT NULL,
  `pcentsociedada` varchar(100) DEFAULT NULL,
  `otrasociedadb_id` int(11) DEFAULT NULL,
  `pcentsociedadb` varchar(100) DEFAULT NULL,
  `otrasociedadc_id` int(11) DEFAULT NULL,
  `pcentsociedadc` varchar(100) DEFAULT NULL,
  `otrasociedadd_id` int(11) DEFAULT NULL,
  `pcentsociedadd` varchar(100) DEFAULT NULL,
  `otrasociedade_id` int(11) DEFAULT NULL,
  `pcentsociedade` varchar(100) DEFAULT NULL,
  `paissocio_id` int(11) DEFAULT NULL,
  `fuentesociedad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sociedad` (`sociedad`),
  KEY `medioscolombia_sociedad_e9a02f0c` (`tiposociedad_id`),
  KEY `medioscolombia_sociedad_5f91a1f5` (`presidentedirectorio_id`),
  KEY `medioscolombia_sociedad_f0eb20d7` (`representantelegal_id`),
  KEY `medioscolombia_sociedad_5016b70d` (`sociedadcontroladora_id`),
  KEY `medioscolombia_sociedad_b1d51043` (`otrasociedada_id`),
  KEY `medioscolombia_sociedad_9b75c310` (`otrasociedadb_id`),
  KEY `medioscolombia_sociedad_da5e7ff8` (`otrasociedadc_id`),
  KEY `medioscolombia_sociedad_3d7488bc` (`otrasociedadd_id`),
  KEY `medioscolombia_sociedad_f8949abe` (`otrasociedade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioscolombia_sociedad`
--

INSERT INTO `medioscolombia_sociedad` (`id`, `sociedad`, `rutsociedad`, `tiposociedad_id`, `presidentedirectorio_id`, `representantelegal_id`, `utilidades`, `infoutilidades`, `fuenteutilidades_id`, `sociedadcontroladora_id`, `pcentsociedadcontroladora`, `otrasociedada_id`, `pcentsociedada`, `otrasociedadb_id`, `pcentsociedadb`, `otrasociedadc_id`, `pcentsociedadc`, `otrasociedadd_id`, `pcentsociedadd`, `otrasociedade_id`, `pcentsociedade`, `paissocio_id`, `fuentesociedad_id`) VALUES
(2, 'Sociedad Española de Radiodifusión S.L.', '', 2, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_sociedad_miembrosdirectorio`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_sociedad_miembrosdirectorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `empresario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sociedad_id` (`sociedad_id`,`empresario_id`),
  KEY `medioscolombia_sociedad_miembrosdirectorio_fb9c860f` (`sociedad_id`),
  KEY `medioscolombia_sociedad_miembrosdirectorio_91f3d441` (`empresario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_sociedad_sectores`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_sociedad_sectores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sociedad_id` (`sociedad_id`,`sector_id`),
  KEY `medioscolombia_sociedad_sectores_fb9c860f` (`sociedad_id`),
  KEY `medioscolombia_sociedad_sectores_663ed8c9` (`sector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodocumento` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipodocumento` (`tipodocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medioscolombia_tiposociedad`
--

CREATE TABLE IF NOT EXISTS `medioscolombia_tiposociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiposociedad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tiposociedad` (`tiposociedad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medioscolombia_tiposociedad`
--

INSERT INTO `medioscolombia_tiposociedad` (`id`, `tiposociedad`) VALUES
(1, 'Sociedad Anónima '),
(2, 'Sociedad Limitada ');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `medioschile_canaltv`
--
ALTER TABLE `medioschile_canaltv`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_17ea6d4b` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioschile_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_9e5fa3b8` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioschile_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_d478352c` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioschile_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_cc752439` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioschile_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_7f49a33c` FOREIGN KEY (`ciudad_id`) REFERENCES `medioschile_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_5fdbff91` FOREIGN KEY (`director_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_ea4a0628` FOREIGN KEY (`genero_id`) REFERENCES `medioschile_generocanaltv` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_5fdbff91` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_11ebb9ed` FOREIGN KEY (`propietario_id`) REFERENCES `medioschile_propietario` (`id`),
  ADD CONSTRAINT `region_id_refs_id_d5a40e32` FOREIGN KEY (`region_id`) REFERENCES `medioschile_region` (`id`);

--
-- Constraints for table `medioschile_cargoejecutivo`
--
ALTER TABLE `medioschile_cargoejecutivo`
  ADD CONSTRAINT `canaltv_id_refs_id_fc320ee1` FOREIGN KEY (`canaltv_id`) REFERENCES `medioschile_canaltv` (`id`),
  ADD CONSTRAINT `cargo_id_refs_id_cff6bd5c` FOREIGN KEY (`cargo_id`) REFERENCES `medioschile_cargo` (`id`),
  ADD CONSTRAINT `ejecutivocargo_id_refs_id_c67f5666` FOREIGN KEY (`ejecutivocargo_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `escrito_id_refs_id_d231cd37` FOREIGN KEY (`escrito_id`) REFERENCES `medioschile_escrito` (`id`),
  ADD CONSTRAINT `mediodigital_id_refs_id_7b227bc8` FOREIGN KEY (`mediodigital_id`) REFERENCES `medioschile_mediodigital` (`id`),
  ADD CONSTRAINT `radio_id_refs_id_2d35c4ac` FOREIGN KEY (`radio_id`) REFERENCES `medioschile_radio` (`id`);

--
-- Constraints for table `medioschile_escrito`
--
ALTER TABLE `medioschile_escrito`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_2fc8abd9` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioschile_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_20f14763` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioschile_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_25b48734` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioschile_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_fb0c420e` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioschile_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_644e50dc` FOREIGN KEY (`ciudad_id`) REFERENCES `medioschile_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_4ac4ba41` FOREIGN KEY (`director_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_47b51f0d` FOREIGN KEY (`genero_id`) REFERENCES `medioschile_generoescrito` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_4ac4ba41` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `periodicidad_id_refs_id_1db246ef` FOREIGN KEY (`periodicidad_id`) REFERENCES `medioschile_periodicidad` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_a68950c8` FOREIGN KEY (`propietario_id`) REFERENCES `medioschile_propietario` (`id`),
  ADD CONSTRAINT `region_id_refs_id_2f3c43f2` FOREIGN KEY (`region_id`) REFERENCES `medioschile_region` (`id`);

--
-- Constraints for table `medioschile_fuente_autor`
--
ALTER TABLE `medioschile_fuente_autor`
  ADD CONSTRAINT `autor_id_refs_id_3a22a949` FOREIGN KEY (`autor_id`) REFERENCES `medioschile_autor` (`id`),
  ADD CONSTRAINT `fuente_id_refs_id_3bdd0f1f` FOREIGN KEY (`fuente_id`) REFERENCES `medioschile_fuente` (`id`);

--
-- Constraints for table `medioschile_mediodigital`
--
ALTER TABLE `medioschile_mediodigital`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_50eb4bc7` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioschile_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_ac736bb1` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioschile_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_0e7dc0b5` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioschile_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_07e05246` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioschile_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_66509a42` FOREIGN KEY (`ciudad_id`) REFERENCES `medioschile_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_25982f89` FOREIGN KEY (`director_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_42b48981` FOREIGN KEY (`genero_id`) REFERENCES `medioschile_generomediodigital` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_25982f89` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_44f0afb4` FOREIGN KEY (`propietario_id`) REFERENCES `medioschile_propietario` (`id`),
  ADD CONSTRAINT `region_id_refs_id_7cad83ed` FOREIGN KEY (`region_id`) REFERENCES `medioschile_region` (`id`);

--
-- Constraints for table `medioschile_porcentajepropietario`
--
ALTER TABLE `medioschile_porcentajepropietario`
  ADD CONSTRAINT `fuenteporcentajesocio_id_refs_id_eb090df1` FOREIGN KEY (`fuenteporcentajesocio_id`) REFERENCES `medioschile_fuente` (`id`),
  ADD CONSTRAINT `propietarioporcentaje_id_refs_id_cb2eaf36` FOREIGN KEY (`propietarioporcentaje_id`) REFERENCES `medioschile_propietario` (`id`),
  ADD CONSTRAINT `socioporcentaje_id_refs_id_5903a237` FOREIGN KEY (`socioporcentaje_id`) REFERENCES `medioschile_sociedad` (`id`);

--
-- Constraints for table `medioschile_propietario`
--
ALTER TABLE `medioschile_propietario`
  ADD CONSTRAINT `otrasociedada_id_refs_id_32fe13d7` FOREIGN KEY (`otrasociedada_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadb_id_refs_id_32fe13d7` FOREIGN KEY (`otrasociedadb_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadc_id_refs_id_32fe13d7` FOREIGN KEY (`otrasociedadc_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadd_id_refs_id_32fe13d7` FOREIGN KEY (`otrasociedadd_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedade_id_refs_id_32fe13d7` FOREIGN KEY (`otrasociedade_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `presidentedirectorio_id_refs_id_e46f59fa` FOREIGN KEY (`presidentedirectorio_id`) REFERENCES `medioschile_empresario` (`id`),
  ADD CONSTRAINT `representantelegal_id_refs_id_8d541fab` FOREIGN KEY (`representantelegal_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `sociedadcontroladora_id_refs_id_32fe13d7` FOREIGN KEY (`sociedadcontroladora_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `tiposociedad_id_refs_id_7044dd3a` FOREIGN KEY (`tiposociedad_id`) REFERENCES `medioschile_tiposociedad` (`id`);

--
-- Constraints for table `medioschile_propietario_miembrosdirectorio`
--
ALTER TABLE `medioschile_propietario_miembrosdirectorio`
  ADD CONSTRAINT `empresario_id_refs_id_beba3ae6` FOREIGN KEY (`empresario_id`) REFERENCES `medioschile_empresario` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_e8d56e6c` FOREIGN KEY (`propietario_id`) REFERENCES `medioschile_propietario` (`id`);

--
-- Constraints for table `medioschile_propietario_sectores`
--
ALTER TABLE `medioschile_propietario_sectores`
  ADD CONSTRAINT `propietario_id_refs_id_f2a0a825` FOREIGN KEY (`propietario_id`) REFERENCES `medioschile_propietario` (`id`),
  ADD CONSTRAINT `sector_id_refs_id_0cb12c4a` FOREIGN KEY (`sector_id`) REFERENCES `medioschile_sector` (`id`);

--
-- Constraints for table `medioschile_radio`
--
ALTER TABLE `medioschile_radio`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_4ab1fb0d` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioschile_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_febeebf5` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioschile_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_308ad84c` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioschile_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_7623b4f2` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioschile_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_93a8213d` FOREIGN KEY (`ciudad_id`) REFERENCES `medioschile_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_63386c93` FOREIGN KEY (`director_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_9f0fcb04` FOREIGN KEY (`genero_id`) REFERENCES `medioschile_generoradio` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_63386c93` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_0b64425f` FOREIGN KEY (`propietario_id`) REFERENCES `medioschile_propietario` (`id`),
  ADD CONSTRAINT `region_id_refs_id_9116fe70` FOREIGN KEY (`region_id`) REFERENCES `medioschile_region` (`id`);

--
-- Constraints for table `medioschile_regulacion`
--
ALTER TABLE `medioschile_regulacion`
  ADD CONSTRAINT `tipodocumento_id_refs_id_8cb55ce0` FOREIGN KEY (`tipodocumento_id`) REFERENCES `medioschile_tipodocumento` (`id`);

--
-- Constraints for table `medioschile_sociedad`
--
ALTER TABLE `medioschile_sociedad`
  ADD CONSTRAINT `otrasociedada_id_refs_id_e83bf546` FOREIGN KEY (`otrasociedada_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadb_id_refs_id_e83bf546` FOREIGN KEY (`otrasociedadb_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadc_id_refs_id_e83bf546` FOREIGN KEY (`otrasociedadc_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadd_id_refs_id_e83bf546` FOREIGN KEY (`otrasociedadd_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedade_id_refs_id_e83bf546` FOREIGN KEY (`otrasociedade_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `presidentedirectorio_id_refs_id_1e5a3dcf` FOREIGN KEY (`presidentedirectorio_id`) REFERENCES `medioschile_empresario` (`id`),
  ADD CONSTRAINT `representantelegal_id_refs_id_8ff33c14` FOREIGN KEY (`representantelegal_id`) REFERENCES `medioschile_ejecutivo` (`id`),
  ADD CONSTRAINT `sociedadcontroladora_id_refs_id_e83bf546` FOREIGN KEY (`sociedadcontroladora_id`) REFERENCES `medioschile_sociedad` (`id`),
  ADD CONSTRAINT `tiposociedad_id_refs_id_ab2ee171` FOREIGN KEY (`tiposociedad_id`) REFERENCES `medioschile_tiposociedad` (`id`);

--
-- Constraints for table `medioschile_sociedad_miembrosdirectorio`
--
ALTER TABLE `medioschile_sociedad_miembrosdirectorio`
  ADD CONSTRAINT `empresario_id_refs_id_facbbb16` FOREIGN KEY (`empresario_id`) REFERENCES `medioschile_empresario` (`id`),
  ADD CONSTRAINT `sociedad_id_refs_id_b595d4f7` FOREIGN KEY (`sociedad_id`) REFERENCES `medioschile_sociedad` (`id`);

--
-- Constraints for table `medioschile_sociedad_sectores`
--
ALTER TABLE `medioschile_sociedad_sectores`
  ADD CONSTRAINT `sector_id_refs_id_9bac016c` FOREIGN KEY (`sector_id`) REFERENCES `medioschile_sector` (`id`),
  ADD CONSTRAINT `sociedad_id_refs_id_bcc9b8f5` FOREIGN KEY (`sociedad_id`) REFERENCES `medioschile_sociedad` (`id`);

--
-- Constraints for table `medioscolombia_canaltv`
--
ALTER TABLE `medioscolombia_canaltv`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_340f321d` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioscolombia_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_d3a9b8f2` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioscolombia_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_fe4b0224` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioscolombia_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_a81bcfd9` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioscolombia_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_70258146` FOREIGN KEY (`ciudad_id`) REFERENCES `medioscolombia_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_15fd1027` FOREIGN KEY (`director_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_4e7acb92` FOREIGN KEY (`genero_id`) REFERENCES `medioscolombia_generocanaltv` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_15fd1027` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_c5b3efa0` FOREIGN KEY (`propietario_id`) REFERENCES `medioscolombia_propietario` (`id`);

--
-- Constraints for table `medioscolombia_canaltv_region`
--
ALTER TABLE `medioscolombia_canaltv_region`
  ADD CONSTRAINT `canaltv_id_refs_id_23da942c` FOREIGN KEY (`canaltv_id`) REFERENCES `medioscolombia_canaltv` (`id`),
  ADD CONSTRAINT `region_id_refs_id_7e4e9b21` FOREIGN KEY (`region_id`) REFERENCES `medioscolombia_region` (`id`);

--
-- Constraints for table `medioscolombia_escrito`
--
ALTER TABLE `medioscolombia_escrito`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_3cc91a30` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioscolombia_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_3ac6db66` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioscolombia_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_e022130f` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioscolombia_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_123de691` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioscolombia_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_69fc5a87` FOREIGN KEY (`ciudad_id`) REFERENCES `medioscolombia_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_597fd610` FOREIGN KEY (`director_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_7f066762` FOREIGN KEY (`genero_id`) REFERENCES `medioscolombia_generoescrito` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_597fd610` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `periodicidad_id_refs_id_43026343` FOREIGN KEY (`periodicidad_id`) REFERENCES `medioscolombia_periodicidad` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_f9f3ae58` FOREIGN KEY (`propietario_id`) REFERENCES `medioscolombia_propietario` (`id`);

--
-- Constraints for table `medioscolombia_escrito_region`
--
ALTER TABLE `medioscolombia_escrito_region`
  ADD CONSTRAINT `escrito_id_refs_id_b4439517` FOREIGN KEY (`escrito_id`) REFERENCES `medioscolombia_escrito` (`id`),
  ADD CONSTRAINT `region_id_refs_id_61a43c9c` FOREIGN KEY (`region_id`) REFERENCES `medioscolombia_region` (`id`);

--
-- Constraints for table `medioscolombia_fuente_autor`
--
ALTER TABLE `medioscolombia_fuente_autor`
  ADD CONSTRAINT `autor_id_refs_id_285d8d2b` FOREIGN KEY (`autor_id`) REFERENCES `medioscolombia_autor` (`id`),
  ADD CONSTRAINT `fuente_id_refs_id_debd2d7f` FOREIGN KEY (`fuente_id`) REFERENCES `medioscolombia_fuente` (`id`);

--
-- Constraints for table `medioscolombia_mediodigital`
--
ALTER TABLE `medioscolombia_mediodigital`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_c5b8a22b` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioscolombia_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_f4dfe018` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioscolombia_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_45791ebb` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioscolombia_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_dd541468` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioscolombia_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_97620207` FOREIGN KEY (`ciudad_id`) REFERENCES `medioscolombia_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_6ad6b364` FOREIGN KEY (`director_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_36bff71f` FOREIGN KEY (`genero_id`) REFERENCES `medioscolombia_generomediodigital` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_6ad6b364` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_71329a5a` FOREIGN KEY (`propietario_id`) REFERENCES `medioscolombia_propietario` (`id`);

--
-- Constraints for table `medioscolombia_mediodigital_region`
--
ALTER TABLE `medioscolombia_mediodigital_region`
  ADD CONSTRAINT `mediodigital_id_refs_id_9493bb46` FOREIGN KEY (`mediodigital_id`) REFERENCES `medioscolombia_mediodigital` (`id`),
  ADD CONSTRAINT `region_id_refs_id_16514384` FOREIGN KEY (`region_id`) REFERENCES `medioscolombia_region` (`id`);

--
-- Constraints for table `medioscolombia_propietario`
--
ALTER TABLE `medioscolombia_propietario`
  ADD CONSTRAINT `otrasociedada_id_refs_id_57def1bb` FOREIGN KEY (`otrasociedada_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadb_id_refs_id_57def1bb` FOREIGN KEY (`otrasociedadb_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadc_id_refs_id_57def1bb` FOREIGN KEY (`otrasociedadc_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadd_id_refs_id_57def1bb` FOREIGN KEY (`otrasociedadd_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedade_id_refs_id_57def1bb` FOREIGN KEY (`otrasociedade_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `presidentedirectorio_id_refs_id_c6883c29` FOREIGN KEY (`presidentedirectorio_id`) REFERENCES `medioscolombia_empresario` (`id`),
  ADD CONSTRAINT `representantelegal_id_refs_id_9195e1dd` FOREIGN KEY (`representantelegal_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `sociedadcontroladora_id_refs_id_57def1bb` FOREIGN KEY (`sociedadcontroladora_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `tiposociedad_id_refs_id_0bb7374f` FOREIGN KEY (`tiposociedad_id`) REFERENCES `medioscolombia_tiposociedad` (`id`);

--
-- Constraints for table `medioscolombia_propietario_miembrosdirectorio`
--
ALTER TABLE `medioscolombia_propietario_miembrosdirectorio`
  ADD CONSTRAINT `empresario_id_refs_id_343f6bea` FOREIGN KEY (`empresario_id`) REFERENCES `medioscolombia_empresario` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_e205d289` FOREIGN KEY (`propietario_id`) REFERENCES `medioscolombia_propietario` (`id`);

--
-- Constraints for table `medioscolombia_propietario_sectores`
--
ALTER TABLE `medioscolombia_propietario_sectores`
  ADD CONSTRAINT `propietario_id_refs_id_f1219de8` FOREIGN KEY (`propietario_id`) REFERENCES `medioscolombia_propietario` (`id`),
  ADD CONSTRAINT `sector_id_refs_id_d7de7b62` FOREIGN KEY (`sector_id`) REFERENCES `medioscolombia_sector` (`id`);

--
-- Constraints for table `medioscolombia_radio`
--
ALTER TABLE `medioscolombia_radio`
  ADD CONSTRAINT `asociadoacanaltv_id_refs_id_9f4f3bad` FOREIGN KEY (`asociadoacanaltv_id`) REFERENCES `medioscolombia_canaltv` (`id`),
  ADD CONSTRAINT `asociadoaescrito_id_refs_id_5b9569d6` FOREIGN KEY (`asociadoaescrito_id`) REFERENCES `medioscolombia_escrito` (`id`),
  ADD CONSTRAINT `asociadoamediodigital_id_refs_id_0f8e3acb` FOREIGN KEY (`asociadoamediodigital_id`) REFERENCES `medioscolombia_mediodigital` (`id`),
  ADD CONSTRAINT `asociadoaradio_id_refs_id_7270455b` FOREIGN KEY (`asociadoaradio_id`) REFERENCES `medioscolombia_radio` (`id`),
  ADD CONSTRAINT `ciudad_id_refs_id_316664bb` FOREIGN KEY (`ciudad_id`) REFERENCES `medioscolombia_ciudad` (`id`),
  ADD CONSTRAINT `director_id_refs_id_f2ba2fe0` FOREIGN KEY (`director_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `genero_id_refs_id_bf85a764` FOREIGN KEY (`genero_id`) REFERENCES `medioscolombia_generoradio` (`id`),
  ADD CONSTRAINT `gerentegeneral_id_refs_id_f2ba2fe0` FOREIGN KEY (`gerentegeneral_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `propietario_id_refs_id_6ac6a797` FOREIGN KEY (`propietario_id`) REFERENCES `medioscolombia_propietario` (`id`);

--
-- Constraints for table `medioscolombia_radio_region`
--
ALTER TABLE `medioscolombia_radio_region`
  ADD CONSTRAINT `radio_id_refs_id_40238bfb` FOREIGN KEY (`radio_id`) REFERENCES `medioscolombia_radio` (`id`),
  ADD CONSTRAINT `region_id_refs_id_a53d6b7f` FOREIGN KEY (`region_id`) REFERENCES `medioscolombia_region` (`id`);

--
-- Constraints for table `medioscolombia_regulacion`
--
ALTER TABLE `medioscolombia_regulacion`
  ADD CONSTRAINT `tipodocumento_id_refs_id_49387a3f` FOREIGN KEY (`tipodocumento_id`) REFERENCES `medioscolombia_tipodocumento` (`id`);

--
-- Constraints for table `medioscolombia_sociedad`
--
ALTER TABLE `medioscolombia_sociedad`
  ADD CONSTRAINT `otrasociedada_id_refs_id_90034ff8` FOREIGN KEY (`otrasociedada_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadb_id_refs_id_90034ff8` FOREIGN KEY (`otrasociedadb_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadc_id_refs_id_90034ff8` FOREIGN KEY (`otrasociedadc_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedadd_id_refs_id_90034ff8` FOREIGN KEY (`otrasociedadd_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `otrasociedade_id_refs_id_90034ff8` FOREIGN KEY (`otrasociedade_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `presidentedirectorio_id_refs_id_51454c8d` FOREIGN KEY (`presidentedirectorio_id`) REFERENCES `medioscolombia_empresario` (`id`),
  ADD CONSTRAINT `representantelegal_id_refs_id_94a394ae` FOREIGN KEY (`representantelegal_id`) REFERENCES `medioscolombia_ejecutivo` (`id`),
  ADD CONSTRAINT `sociedadcontroladora_id_refs_id_90034ff8` FOREIGN KEY (`sociedadcontroladora_id`) REFERENCES `medioscolombia_sociedad` (`id`),
  ADD CONSTRAINT `tiposociedad_id_refs_id_1f08c42a` FOREIGN KEY (`tiposociedad_id`) REFERENCES `medioscolombia_tiposociedad` (`id`);

--
-- Constraints for table `medioscolombia_sociedad_miembrosdirectorio`
--
ALTER TABLE `medioscolombia_sociedad_miembrosdirectorio`
  ADD CONSTRAINT `empresario_id_refs_id_7c318ff3` FOREIGN KEY (`empresario_id`) REFERENCES `medioscolombia_empresario` (`id`),
  ADD CONSTRAINT `sociedad_id_refs_id_734f07a2` FOREIGN KEY (`sociedad_id`) REFERENCES `medioscolombia_sociedad` (`id`);

--
-- Constraints for table `medioscolombia_sociedad_sectores`
--
ALTER TABLE `medioscolombia_sociedad_sectores`
  ADD CONSTRAINT `sector_id_refs_id_f3fe9152` FOREIGN KEY (`sector_id`) REFERENCES `medioscolombia_sector` (`id`),
  ADD CONSTRAINT `sociedad_id_refs_id_f9b7789e` FOREIGN KEY (`sociedad_id`) REFERENCES `medioscolombia_sociedad` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
