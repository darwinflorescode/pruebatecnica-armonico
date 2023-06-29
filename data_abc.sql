-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2023 a las 02:15:29
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_abc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Equipos Electromecánicos', '2017-12-21 20:53:29'),
(2, 'Taladros', '2017-12-21 20:53:29'),
(3, 'Andamios', '2017-12-21 20:53:29'),
(4, 'Generadores de energía', '2017-12-21 20:53:29'),
(5, 'Equipos para construcción', '2017-12-21 20:53:29'),
(6, 'Martillos mecánicos', '2017-12-21 23:06:40'),
(7, 'Cereales', '2019-07-23 13:07:14'),
(8, 'desinfectantes y detergentes', '2019-07-23 13:09:06'),
(9, 'desechables', '2019-07-23 13:09:37'),
(10, 'ARROZ', '2019-08-08 16:03:20'),
(11, 'Cereales', '2019-08-08 16:05:31'),
(12, 'ROLLO LISO TERMINADO', '2019-08-08 16:49:24'),
(13, 'CEREALES', '2020-08-12 20:55:22'),
(14, 'alimentos', '2020-12-03 17:02:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(503) 734-12345', 'Calle 23 # 45 - 56', '1980-11-02', 83, '2022-02-26 21:54:45', '2022-02-27 02:54:45'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(503) 287-65432', 'Calle 34 N33 -56', '1970-08-07', 4, '2022-02-26 21:53:37', '2022-02-27 02:53:37'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(503) 245-34465', 'calle 34 # 34 - 23', '1976-03-04', 18, '2020-12-03 12:22:03', '2020-12-03 17:22:03'),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(503) 234-56678', 'Calle 45 # 34 - 56', '1976-11-30', 1, '2019-08-08 11:11:05', '2019-08-08 16:11:05'),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(503) 267-45453', 'Carrera 45 # 54 - 56', '1980-04-05', 2, '2019-07-23 14:36:58', '2019-07-23 19:36:58'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(503) 224-63463', 'Carrera 34 # 45- 56', '1956-06-05', 0, '0000-00-00 00:00:00', '2019-07-23 17:05:10'),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(503) 223-46565', 'Carrera 67 # 45sur', '1978-03-04', 0, '0000-00-00 00:00:00', '2019-07-23 17:05:01'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(503) 246-34634', 'calle 45 # 23  colonia Bosque de Lourdes', '1956-03-04', 108, '2021-04-14 16:53:47', '2021-04-14 21:53:47'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(503) 227-45634', 'Carretera a Santa Ana km 36', '1967-05-04', 3, '2021-04-14 13:01:06', '2021-04-14 18:01:06'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 234-63464', 'Carretera a Santa Ana km 36', '1967-08-09', 12, '0000-00-00 00:00:00', '2019-07-23 17:03:07'),
(13, 'Jorge Gozalez', 333434445, 'jorge.gonzalez@hotmail.com', '(503) 896-52425', 'Carretera Troncal del Norte km 45 ', '1987-11-09', 14, '2020-07-20 11:00:32', '2020-07-20 16:00:32'),
(14, 'RICARDO ANTONIO MONTENEGRO', 377, 'chepe@gmail.com', '(503) 758-44444', 'Usualutan', '2000-06-14', 52, '2022-08-23 15:29:04', '2022-08-23 20:29:04'),
(15, 'test', 4554, 'jmcv@arm.com', '(403) 444-4444', 'direccion', '2020-09-11', 0, '0000-00-00 00:00:00', '2021-04-14 02:59:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` float NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/101/105.png', 15, 1000, 1200, 0, '2019-07-23 17:00:28'),
(2, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/102/940.jpg', 9, 4500, 6300, 0, '2019-07-23 17:02:30'),
(3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/763.jpg', 20, 3000, 4200, 0, '2019-07-23 17:02:17'),
(4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/957.jpg', 20, 4000, 5600, 0, '2019-07-23 17:02:17'),
(5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/630.jpg', 20, 1540, 2156, 0, '2019-07-23 17:02:17'),
(6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/635.jpg', 20, 1100, 1540, 0, '2019-07-23 17:02:39'),
(7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/848.jpg', 20, 1540, 2156, 0, '2019-07-23 17:02:30'),
(8, 1, '108', 'Guadañadora ', 'vistas/img/productos/108/163.jpg', 20, 1540, 2156, 0, '2019-07-23 17:02:24'),
(9, 1, '109', 'Hidrolavadora Eléctrica ', 'vistas/img/productos/109/769.jpg', 20, 2600, 3640, 0, '2019-07-23 17:02:46'),
(10, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/110/582.jpg', 20, 2210, 3094, 0, '2019-07-23 17:02:46'),
(11, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2860, 4004, 0, '2017-12-21 21:56:28'),
(12, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, 0, '2017-12-21 21:56:28'),
(13, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, 0, '2017-12-21 21:56:28'),
(14, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, 0, '2017-12-21 21:56:28'),
(15, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 20, 1980, 2772, 0, '2017-12-21 21:56:28'),
(16, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 20, 4200, 5880, 0, '2017-12-21 21:56:28'),
(17, 1, '117', 'Torre de iluminacion ', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2017-12-21 21:56:28'),
(18, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, 0, '2017-12-21 21:56:28'),
(19, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(20, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(21, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(22, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2017-12-21 22:28:24'),
(23, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 20, 3900, 5460, 0, '2017-12-21 21:56:28'),
(24, 2, '207', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 20, 4600, 6440, 0, '2017-12-21 21:56:28'),
(25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, 0, '2017-12-21 21:56:28'),
(26, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, 0, '2017-12-21 21:56:28'),
(27, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(28, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2017-12-21 21:56:28'),
(29, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 20, 162, 226, 0, '2017-12-21 21:56:28'),
(30, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 20, 270, 378, 0, '2017-12-21 21:56:28'),
(31, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 75, 105, 0, '2017-12-21 21:56:28'),
(32, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, 0, '2017-12-21 21:56:28'),
(33, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 1750, 2450, 0, '2017-12-21 21:56:28'),
(34, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 20, 175, 245, 0, '2017-12-21 21:56:28'),
(35, 3, '311', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2017-12-21 21:56:28'),
(36, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3500, 4900, 0, '2017-12-21 21:56:28'),
(37, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, 0, '2017-12-21 21:56:28'),
(38, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3600, 5040, 0, '2017-12-21 21:56:28'),
(39, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3650, 5110, 0, '2017-12-21 21:56:28'),
(40, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3700, 5180, 0, '2017-12-21 21:56:28'),
(41, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3750, 5250, 0, '2017-12-21 21:56:28'),
(42, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, 0, '2017-12-21 21:56:28'),
(43, 4, '408', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(44, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2017-12-21 21:56:28'),
(45, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 19, 370, 518, 1, '2022-08-23 20:29:04'),
(46, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(47, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(48, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 20, 480, 672, 0, '2017-12-21 21:56:28'),
(49, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2017-12-21 21:56:28'),
(50, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(51, 5, '508', 'Tensor', 'vistas/img/productos/508/500.jpg', 20, 1.6, 2.24, 0, '2019-07-23 17:05:22'),
(52, 5, '509', 'Bascula ', 'vistas/img/productos/509/878.jpg', 20, 25.6, 35.84, 0, '2019-07-23 17:05:22'),
(53, 5, '510', 'Bomba Hidrostatica', 'vistas/img/productos/510/870.jpg', 20, 51, 71.4, 0, '2019-07-23 17:05:22'),
(54, 5, '511', 'Chapeta', 'vistas/img/productos/511/239.jpg', 19, 32, 44.8, 1, '2019-08-08 16:14:09'),
(55, 5, '512', 'Cilindro muestra de concreto', 'vistas/img/productos/512/266.jpg', 20, 22.3, 31.22, 0, '2019-07-23 17:05:39'),
(56, 5, '513', 'Guillotina de Palanca', 'vistas/img/productos/513/445.jpg', 18, 21, 29.4, 2, '2019-07-30 22:12:02'),
(57, 5, '514', 'Guillotina de Tijera', 'vistas/img/productos/514/249.jpg', 31, 8, 11.2, 2, '2019-08-08 16:14:09'),
(58, 5, '515', 'Coche llanta neumatica', 'vistas/img/productos/515/174.jpg', 17, 42, 58.8, 3, '2021-11-25 02:53:28'),
(59, 5, '516', 'Cono slump', 'vistas/img/productos/516/228.jpg', 14, 1.5, 2.1, 6, '2021-11-25 02:53:28'),
(60, 5, '517', 'Cortadora de Baldosin', 'vistas/img/productos/517/746.jpg', 17, 21, 29.4, 3, '2019-07-30 22:12:02'),
(61, 7, '701', 'Quintal frijol rojo seda', 'vistas/img/productos/default/anonymous.png', 165, 40, 56, 135, '2022-02-24 00:11:59'),
(62, 10, '1001', 'Arroz blanco', 'vistas/img/productos/default/anonymous.png', 0, 1, 1.4, 1, '2019-08-08 16:09:13'),
(63, 11, '1101', 'Frijol de seda', 'vistas/img/productos/default/anonymous.png', 0, 1, 1.4, 1, '2019-08-08 16:14:09'),
(64, 12, '1201', 'DILISA LISO  3 100 Yds  BLANCO', 'vistas/img/productos/default/anonymous.png', 5, 1, 1.01, 7, '2020-07-20 16:00:32'),
(66, 7, '', 'avena hojulea', 'vistas/img/productos/default/anonymous.png', 298, 10, 12.9, 57, '2022-08-23 20:29:04'),
(68, 14, '1401', 'Manzana Gala', 'vistas/img/productos/1401/754.png', 982.5, 20, 28, 18, '2022-02-27 02:54:45'),
(69, 14, '1402', 'Manzana Gala', 'vistas/img/productos/1402/862.png', 466.5, 10, 14, 34, '2022-08-23 20:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id` int(11) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `email_contacto` varchar(100) NOT NULL,
  `idpais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_clientes`
--

INSERT INTO `tb_clientes` (`id`, `nombre_cliente`, `email_contacto`, `idpais`) VALUES
(1, 'José Antonio Ramirez', 'josea@gmail.com', 225),
(2, 'Alfonso Flores Colindres', 'alfonso@gmail.com', 68),
(3, 'Marcos Heriberto Ayala', 'marcos@gmail.com', 42),
(4, 'Julio Joel Fernández', 'julio@gmail.com', 94),
(5, 'Marvin Daniel Hernández Nuñez', 'marvin@gmail.com', 146),
(6, 'Omar Juarez', 'omarjuarez@gmail.com', 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_paises`
--

CREATE TABLE `tb_paises` (
  `id` int(11) NOT NULL,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tb_paises`
--

INSERT INTO `tb_paises` (`id`, `iso`, `nombre`) VALUES
(1, 'AF', 'Afganistán'),
(2, 'AX', 'Islas Gland'),
(3, 'AL', 'Albania'),
(4, 'DE', 'Alemania'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antártida'),
(9, 'AG', 'Antigua y Barbuda'),
(10, 'AN', 'Antillas Holandesas'),
(11, 'SA', 'Arabia Saudí'),
(12, 'DZ', 'Argelia'),
(13, 'AR', 'Argentina'),
(14, 'AM', 'Armenia'),
(15, 'AW', 'Aruba'),
(16, 'AU', 'Australia'),
(17, 'AT', 'Austria'),
(18, 'AZ', 'Azerbaiyán'),
(19, 'BS', 'Bahamas'),
(20, 'BH', 'Bahréin'),
(21, 'BD', 'Bangladesh'),
(22, 'BB', 'Barbados'),
(23, 'BY', 'Bielorrusia'),
(24, 'BE', 'Bélgica'),
(25, 'BZ', 'Belice'),
(26, 'BJ', 'Benin'),
(27, 'BM', 'Bermudas'),
(28, 'BT', 'Bhután'),
(29, 'BO', 'Bolivia'),
(30, 'BA', 'Bosnia y Herzegovina'),
(31, 'BW', 'Botsuana'),
(32, 'BV', 'Isla Bouvet'),
(33, 'BR', 'Brasil'),
(34, 'BN', 'Brunéi'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'CV', 'Cabo Verde'),
(39, 'KY', 'Islas Caimán'),
(40, 'KH', 'Camboya'),
(41, 'CM', 'Camerún'),
(42, 'CA', 'Canadá'),
(43, 'CF', 'República Centroafricana'),
(44, 'TD', 'Chad'),
(45, 'CZ', 'República Checa'),
(46, 'CL', 'Chile'),
(47, 'CN', 'China'),
(48, 'CY', 'Chipre'),
(49, 'CX', 'Isla de Navidad'),
(50, 'VA', 'Ciudad del Vaticano'),
(51, 'CC', 'Islas Cocos'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoras'),
(54, 'CD', 'República Democrática del Congo'),
(55, 'CG', 'Congo'),
(56, 'CK', 'Islas Cook'),
(57, 'KP', 'Corea del Norte'),
(58, 'KR', 'Corea del Sur'),
(59, 'CI', 'Costa de Marfil'),
(60, 'CR', 'Costa Rica'),
(61, 'HR', 'Croacia'),
(62, 'CU', 'Cuba'),
(63, 'DK', 'Dinamarca'),
(64, 'DM', 'Dominica'),
(65, 'DO', 'República Dominicana'),
(66, 'EC', 'Ecuador'),
(67, 'EG', 'Egipto'),
(68, 'SV', 'El Salvador'),
(69, 'AE', 'Emiratos Árabes Unidos'),
(70, 'ER', 'Eritrea'),
(71, 'SK', 'Eslovaquia'),
(72, 'SI', 'Eslovenia'),
(73, 'ES', 'España'),
(74, 'UM', 'Islas ultramarinas de Estados Unidos'),
(75, 'US', 'Estados Unidos'),
(76, 'EE', 'Estonia'),
(77, 'ET', 'Etiopía'),
(78, 'FO', 'Islas Feroe'),
(79, 'PH', 'Filipinas'),
(80, 'FI', 'Finlandia'),
(81, 'FJ', 'Fiyi'),
(82, 'FR', 'Francia'),
(83, 'GA', 'Gabón'),
(84, 'GM', 'Gambia'),
(85, 'GE', 'Georgia'),
(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 'GH', 'Ghana'),
(88, 'GI', 'Gibraltar'),
(89, 'GD', 'Granada'),
(90, 'GR', 'Grecia'),
(91, 'GL', 'Groenlandia'),
(92, 'GP', 'Guadalupe'),
(93, 'GU', 'Guam'),
(94, 'GT', 'Guatemala'),
(95, 'GF', 'Guayana Francesa'),
(96, 'GN', 'Guinea'),
(97, 'GQ', 'Guinea Ecuatorial'),
(98, 'GW', 'Guinea-Bissau'),
(99, 'GY', 'Guyana'),
(100, 'HT', 'Haití'),
(101, 'HM', 'Islas Heard y McDonald'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong'),
(104, 'HU', 'Hungría'),
(105, 'IN', 'India'),
(106, 'ID', 'Indonesia'),
(107, 'IR', 'Irán'),
(108, 'IQ', 'Iraq'),
(109, 'IE', 'Irlanda'),
(110, 'IS', 'Islandia'),
(111, 'IL', 'Israel'),
(112, 'IT', 'Italia'),
(113, 'JM', 'Jamaica'),
(114, 'JP', 'Japón'),
(115, 'JO', 'Jordania'),
(116, 'KZ', 'Kazajstán'),
(117, 'KE', 'Kenia'),
(118, 'KG', 'Kirguistán'),
(119, 'KI', 'Kiribati'),
(120, 'KW', 'Kuwait'),
(121, 'LA', 'Laos'),
(122, 'LS', 'Lesotho'),
(123, 'LV', 'Letonia'),
(124, 'LB', 'Líbano'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libia'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lituania'),
(129, 'LU', 'Luxemburgo'),
(130, 'MO', 'Macao'),
(131, 'MK', 'ARY Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MY', 'Malasia'),
(134, 'MW', 'Malawi'),
(135, 'MV', 'Maldivas'),
(136, 'ML', 'Malí'),
(137, 'MT', 'Malta'),
(138, 'FK', 'Islas Malvinas'),
(139, 'MP', 'Islas Marianas del Norte'),
(140, 'MA', 'Marruecos'),
(141, 'MH', 'Islas Marshall'),
(142, 'MQ', 'Martinica'),
(143, 'MU', 'Mauricio'),
(144, 'MR', 'Mauritania'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'México'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldavia'),
(149, 'MC', 'Mónaco'),
(150, 'MN', 'Mongolia'),
(151, 'MS', 'Montserrat'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Níger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Isla Norfolk'),
(162, 'NO', 'Noruega'),
(163, 'NC', 'Nueva Caledonia'),
(164, 'NZ', 'Nueva Zelanda'),
(165, 'OM', 'Omán'),
(166, 'NL', 'Países Bajos'),
(167, 'PK', 'Pakistán'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestina'),
(170, 'PA', 'Panamá'),
(171, 'PG', 'Papúa Nueva Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Perú'),
(174, 'PN', 'Islas Pitcairn'),
(175, 'PF', 'Polinesia Francesa'),
(176, 'PL', 'Polonia'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'GB', 'Reino Unido'),
(181, 'RE', 'Reunión'),
(182, 'RW', 'Ruanda'),
(183, 'RO', 'Rumania'),
(184, 'RU', 'Rusia'),
(185, 'EH', 'Sahara Occidental'),
(186, 'SB', 'Islas Salomón'),
(187, 'WS', 'Samoa'),
(188, 'AS', 'Samoa Americana'),
(189, 'KN', 'San Cristóbal y Nevis'),
(190, 'SM', 'San Marino'),
(191, 'PM', 'San Pedro y Miquelón'),
(192, 'VC', 'San Vicente y las Granadinas'),
(193, 'SH', 'Santa Helena'),
(194, 'LC', 'Santa Lucía'),
(195, 'ST', 'Santo Tomé y Príncipe'),
(196, 'SN', 'Senegal'),
(197, 'CS', 'Serbia y Montenegro'),
(198, 'SC', 'Seychelles'),
(199, 'SL', 'Sierra Leona'),
(200, 'SG', 'Singapur'),
(201, 'SY', 'Siria'),
(202, 'SO', 'Somalia'),
(203, 'LK', 'Sri Lanka'),
(204, 'SZ', 'Suazilandia'),
(205, 'ZA', 'Sudáfrica'),
(206, 'SD', 'Sudán'),
(207, 'SE', 'Suecia'),
(208, 'CH', 'Suiza'),
(209, 'SR', 'Surinam'),
(210, 'SJ', 'Svalbard y Jan Mayen'),
(211, 'TH', 'Tailandia'),
(212, 'TW', 'Taiwán'),
(213, 'TZ', 'Tanzania'),
(214, 'TJ', 'Tayikistán'),
(215, 'IO', 'Territorio Británico del Océano Índico'),
(216, 'TF', 'Territorios Australes Franceses'),
(217, 'TL', 'Timor Oriental'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad y Tobago'),
(222, 'TN', 'Túnez'),
(223, 'TC', 'Islas Turcas y Caicos'),
(224, 'TM', 'Turkmenistán'),
(225, 'TR', 'Turquía'),
(226, 'TV', 'Tuvalu'),
(227, 'UA', 'Ucrania'),
(228, 'UG', 'Uganda'),
(229, 'UY', 'Uruguay'),
(230, 'UZ', 'Uzbekistán'),
(231, 'VU', 'Vanuatu'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Islas Vírgenes Británicas'),
(235, 'VI', 'Islas Vírgenes de los Estados Unidos'),
(236, 'WF', 'Wallis y Futuna'),
(237, 'YE', 'Yemen'),
(238, 'DJ', 'Yibuti'),
(239, 'ZM', 'Zambia'),
(240, 'ZW', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` varchar(10) NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `documento`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', '05268799-8', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2023-06-28 08:13:09', '2023-06-28 14:13:09'),
(57, 'Juan Fernando Urrego', '', 'juan', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 0, '2018-02-06 16:58:50', '2022-08-23 20:23:01'),
(58, 'Julio Gómez', '', 'julio', '$2a$07$asxx54ahjppf45sd87a5auU1DVMJW5/Jug1igF5pJpqZdaiiXlyPu', 'Especial', 'vistas/img/usuarios/julio/970.jpg', 1, '2018-02-06 17:09:22', '2023-06-27 22:53:57'),
(59, 'Ana Gonzalez', '54054545-4', 'ana', '$2a$07$asxx54ahjppf45sd87a5auzGfz9GaOjSPJ5jEDpHii9vSQEEqY1Zm', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2019-07-23 08:10:00', '2023-06-28 22:31:25'),
(60, 'Mario Cartagena', '', 'marioca', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Especial', '', 1, '0000-00-00 00:00:00', '2022-02-23 23:20:36'),
(61, 'Rudy', '', 'rudy', '$2a$07$asxx54ahjppf45sd87a5auLasbpyqaBYrFolN.Sfb2F.AydeTleaq', 'Administrador', '', 1, '2019-07-25 07:28:17', '2019-07-25 13:28:17'),
(62, 'Alex', '', 'alex', '$2a$07$asxx54ahjppf45sd87a5auNvGRBP67HwteI1werOGGwt8t1BsO7QW', 'Administrador', '', 0, '2019-08-08 18:02:51', '2022-02-23 23:51:42'),
(63, 'Vendedor 1', '', 'vendedor1', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Vendedor', '', 1, '2022-02-23 18:39:37', '2022-02-24 00:39:37'),
(65, 'dilisa', '', 'dilisa', '$2a$07$asxx54ahjppf45sd87a5au0tca5cwDw4mMISyfgciaS1q8Wq3jJPe', 'Administrador', '', 1, '2019-08-20 11:50:44', '2019-08-20 17:50:44'),
(66, 'Daniel Erazo', '45487978-7', 'derazo', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Vendedor', 'vistas/img/usuarios/derazo/226.png', 1, '2021-04-14 15:50:55', '2023-06-28 22:31:37'),
(68, 'Alfonso Colindres', '05544514-7', 'alfonso', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Especial', 'vistas/img/usuarios/alfonso/512.jpg', 1, '0000-00-00 00:00:00', '2023-06-28 22:24:32'),
(70, 'José Flores', '06506056-9', 'jose', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Administrador', 'vistas/img/usuarios/jose/390.jpg', 1, '2023-06-28 16:51:19', '2023-06-28 22:51:19'),
(71, 'Juan Hernández', '65401200-0', 'juanh', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Vendedor', 'vistas/img/usuarios/juanh/617.jpg', 1, '0000-00-00 00:00:00', '2023-06-28 22:34:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(38, 10022, 13, 59, '[{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"3\",\"stock\":\"297\",\"precio\":\"84\",\"total\":\"252\"}]', 32.76, 252, 284.76, 'Efectivo', '2019-07-23 13:21:34'),
(39, 10023, 13, 1, '[{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"8\",\"stock\":\"289\",\"precio\":\"56\",\"total\":\"448\"}]', 58.24, 448, 506.24, 'Efectivo', '2019-07-23 14:08:56'),
(40, 10024, 7, 1, '[{\"id\":\"57\",\"descripcion\":\"Guillotina de Tijera\",\"cantidad\":\"1\",\"stock\":\"32\",\"precio\":\"11.2\",\"total\":\"11.2\"},{\"id\":\"56\",\"descripcion\":\"Guillotina de Palanca\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"29.4\",\"total\":\"29.4\"}]', 5.278, 40.6, 45.878, 'TC-45213', '2019-07-23 19:36:58'),
(41, 10025, 11, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"29.4\",\"total\":\"29.4\"}]', 3.822, 29.4, 33.222, 'Efectivo', '2019-07-28 23:11:47'),
(42, 10026, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"29.4\",\"total\":\"58.8\"},{\"id\":\"56\",\"descripcion\":\"Guillotina de Palanca\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"29.4\",\"total\":\"29.4\"}]', 115807, 88.2, 115895, 'Efectivo', '2019-07-30 22:12:02'),
(43, 10027, 6, 62, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2.1\",\"total\":\"2.1\"}]', 0.273, 2.1, 2.373, 'Efectivo', '2019-08-08 16:11:05'),
(44, 10028, 4, 62, '[{\"id\":\"62\",\"descripcion\":\"Arroz blanco\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1.4\",\"total\":\"1.4\"},{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"1\",\"stock\":\"288\",\"precio\":\"56\",\"total\":\"56\"}]', 7.462, 57.4, 64.862, 'Efectivo', '2019-08-08 16:09:13'),
(45, 10029, 10, 62, '[{\"id\":\"63\",\"descripcion\":\"Frijol de seda\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"1.4\",\"total\":\"1.4\"},{\"id\":\"57\",\"descripcion\":\"Guillotina de Tijera\",\"cantidad\":\"1\",\"stock\":\"31\",\"precio\":\"11.2\",\"total\":\"11.2\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"44.8\",\"total\":\"44.8\"}]', 0, 57.4, 57.4, 'Efectivo', '2019-08-08 16:14:09'),
(46, 10030, 14, 65, '[{\"id\":\"64\",\"descripcion\":\"DILISA LISO  3 100 Yds  BLANCO\",\"cantidad\":\"2\",\"stock\":\"10\",\"precio\":\"1.01\",\"total\":\"2.02\"}]', 0.2626, 2.02, 2.2826, 'Efectivo', '2019-08-08 16:56:52'),
(47, 10031, 14, 65, '[{\"id\":\"64\",\"descripcion\":\"DILISA LISO  3 100 Yds  BLANCO\",\"cantidad\":\"03\",\"stock\":\"7\",\"precio\":\"1.01\",\"total\":\"3.03\"}]', 39.7839, 3.03, 42.8139, 'Efectivo', '2019-08-08 17:00:10'),
(48, 10032, 3, 1, '[{\"id\":\"64\",\"descripcion\":\"DILISA LISO  3 100 Yds  BLANCO\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"1.01\",\"total\":\"1.01\"}]', 0.1313, 1.01, 1.1413, 'Efectivo', '2019-10-19 17:41:44'),
(49, 10033, 3, 1, '[{\"id\":\"65\",\"descripcion\":\"DB07G2Z9VHW\",\"cantidad\":\"1\",\"stock\":\"30\",\"precio\":\"36.25\",\"total\":\"36.25\"}]', 0.3625, 36.25, 36.6125, 'TC-131481561', '2019-10-22 18:03:50'),
(50, 10034, 13, 1, '[{\"id\":\"65\",\"descripcion\":\"DB07G2Z9VHW\",\"cantidad\":\"1\",\"stock\":\"29\",\"precio\":\"36.25\",\"total\":\"36.25\"},{\"id\":\"64\",\"descripcion\":\"DILISA LISO  3 100 Yds  BLANCO\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"1.01\",\"total\":\"1.01\"},{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"1\",\"stock\":\"287\",\"precio\":\"56\",\"total\":\"56\"}]', 12.1238, 93.26, 105.384, 'Efectivo', '2020-07-20 16:00:32'),
(51, 10035, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"avena hojulea\",\"cantidad\":\"50\",\"stock\":\"350\",\"precio\":\"12.9\",\"total\":\"645\"},{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"1\",\"stock\":\"286\",\"precio\":\"56\",\"total\":\"56\"}]', 21.03, 701, 722.03, 'Efectivo', '2020-08-12 21:04:05'),
(52, 10036, 5, 1, '[{\"id\":\"67\",\"descripcion\":\"descripcion\",\"cantidad\":\"6\",\"stock\":\"494\",\"precio\":\"14\",\"total\":\"84\"},{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"6\",\"stock\":\"280\",\"precio\":\"56\",\"total\":\"336\"}]', 54.6, 420, 474.6, 'Efectivo', '2020-12-03 17:22:03'),
(53, 10037, 14, 1, '[{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"10\",\"stock\":\"270\",\"precio\":\"56\",\"total\":\"560\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"4\",\"stock\":\"15\",\"precio\":\"2.1\",\"total\":\"8.4\"}]', 73.892, 568.4, 642.292, 'Efectivo', '2020-12-03 17:58:54'),
(54, 10038, 11, 66, '[{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"02\",\"stock\":\"18\",\"precio\":\"58.8\",\"total\":\"117.6\"}]', 15.288, 117.6, 132.888, 'Efectivo', '2021-04-14 18:01:06'),
(55, 10039, 10, 66, '[{\"id\":\"66\",\"descripcion\":\"avena hojulea\",\"cantidad\":\"05\",\"stock\":\"345\",\"precio\":\"12.9\",\"total\":\"64.5\"},{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"100\",\"stock\":\"170\",\"precio\":\"56\",\"total\":\"5600\"}]', 736.385, 5664.5, 6400.88, 'Efectivo', '2021-04-14 21:53:47'),
(56, 10040, 14, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"15\",\"stock\":\"485\",\"precio\":\"14\",\"total\":\"210\"},{\"id\":\"68\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"15\",\"stock\":\"985\",\"precio\":\"28\",\"total\":\"420\"}]', 81.9, 630, 711.9, 'Efectivo', '2021-07-12 17:10:04'),
(57, 10041, 3, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"6\",\"stock\":\"479\",\"precio\":\"14\",\"total\":\"84\"}]', 0.84, 84, 84.84, 'Efectivo', '2021-10-13 23:25:49'),
(58, 10042, 3, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"4\",\"stock\":\"475\",\"precio\":\"14\",\"total\":\"56\"}]', 0.56, 56, 56.56, 'Efectivo', '2021-10-13 23:26:11'),
(59, 10043, 3, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"1\",\"stock\":\"474\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"66\",\"descripcion\":\"avena hojulea\",\"cantidad\":\"1\",\"stock\":\"299\",\"precio\":\"12.9\",\"total\":\"12.9\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"2.1\",\"total\":\"2.1\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"58.8\",\"total\":\"58.8\"}]', 11.414, 87.8, 99.214, 'Efectivo', '2021-11-25 02:53:28'),
(60, 10044, 3, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"5\",\"stock\":\"469\",\"precio\":\"14\",\"total\":\"70\"},{\"id\":\"61\",\"descripcion\":\"Quintal frijol rojo seda\",\"cantidad\":\"5\",\"stock\":\"165\",\"precio\":\"56\",\"total\":\"280\"}]', 35, 350, 385, 'Efectivo', '2022-02-24 00:11:59'),
(61, 10045, 4, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"1.5\",\"stock\":\"467.5\",\"precio\":\"14\",\"total\":\"21\"}]', 0.63, 21, 21.63, 'Efectivo', '2022-02-27 02:53:37'),
(62, 10046, 3, 1, '[{\"id\":\"68\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"2.5\",\"stock\":\"982.5\",\"precio\":\"28\",\"total\":\"70\"}]', 0.7, 70, 70.7, 'Efectivo', '2022-02-27 02:54:45'),
(63, 10047, 14, 1, '[{\"id\":\"69\",\"descripcion\":\"Manzana Gala\",\"cantidad\":\"1\",\"stock\":\"466.5\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"45\",\"descripcion\":\"Extension Electrica \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"518\",\"total\":\"518\"},{\"id\":\"66\",\"descripcion\":\"avena hojulea\",\"cantidad\":\"1\",\"stock\":\"298\",\"precio\":\"12.9\",\"total\":\"12.9\"}]', 70.837, 544.9, 615.737, 'Efectivo', '2022-08-23 20:29:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_paises` (`idpais`);

--
-- Indices de la tabla `tb_paises`
--
ALTER TABLE `tb_paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_paises`
--
ALTER TABLE `tb_paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD CONSTRAINT `fk_cliente_paises` FOREIGN KEY (`idpais`) REFERENCES `tb_paises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
