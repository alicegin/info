-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2023 a las 05:36:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20866633_alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Matricula` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Facultad` varchar(30) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Carrera` varchar(40) NOT NULL,
  `Imagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Matricula`, `Nombre`, `Apellido`, `Correo`, `Password`, `Facultad`, `Semestre`, `Carrera`, `Imagen`) VALUES
(167284, 'Valeria', 'Sánchez', 'vale@outlook.com', 'vale123', 'Informática', 1, 'Ingeniería de Software', 'img\\girl1.jpg'),
(167285, 'Fernanda', 'González', 'fer@gmail.com', 'fer123', 'Informática', 3, 'Ingeniería en Computación', 'img\\girl2.jpg'),
(167286, 'Esteban', 'Hernández', 'este@outlook.com', 'esteban123', 'Informática', 2, 'Ingeniería de Software', 'img\\boy1.jpg'),
(167287, 'Juan', 'Zabala', 'juan@gmail.com', 'juan123', 'Ingeniería', 1, 'Ingeniería Física', 'img\\boy2.jpg'),
(167288, 'Paulina', 'López', 'pau@outlook.com', 'pau123', 'Ingeniería', 2, 'Licenciatura en Arquitectura', 'img\\girl3.jpg'),
(167289, 'Victor', 'Pérez', 'vic@outlook.com', 'vic123', 'Ingeniería', 3, 'Licenciatura en Animación Digital', 'img\\boy3.jpg'),
(167290, 'Daniel', 'Malagón', 'dani@outlook.com', 'dani123', 'Informática', 4, 'Ingeniería de Software', 'img\\boy4.jpg'),
(167291, 'Agustín', 'Ontiveros', 'agus@outlook.com', 'agus123', 'Informática', 1, 'Ingeniería en Computación', 'img\\boy5.jpg'),
(167292, 'Diego', 'Fábila', 'vale@outlook.com', 'diego123', 'Ingeniería', 1, 'Ingeniería Física', 'img\\boy6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargahoraria`
--

CREATE TABLE `cargahoraria` (
  `IdCarga` int(11) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `IdHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargahoraria`
--

INSERT INTO `cargahoraria` (`IdCarga`, `Matricula`, `IdHorario`) VALUES
(142, 167287, 48),
(148, 167284, 14),
(154, 167284, 15),
(156, 167284, 29),
(158, 167284, 42),
(159, 167285, 9),
(160, 167285, 13),
(161, 167284, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `IdHorario` int(11) NOT NULL,
  `Carrera` varchar(40) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Materia` varchar(40) NOT NULL,
  `IdProfe` int(11) NOT NULL,
  `Dia` varchar(30) NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`IdHorario`, `Carrera`, `Semestre`, `Materia`, `IdProfe`, `Dia`, `Hora`) VALUES
(1, 'Ingeniería de Software', 1, 'Administración', 1, 'Lunes', '07:00:00'),
(2, 'Ingeniería de Software', 1, 'Introducción a la Programación', 2, 'Lunes', '07:00:00'),
(3, 'Ingeniería en Computación', 1, 'Introducción a las T.I', 3, 'Lunes', '09:00:00'),
(4, 'Ingeniería en Computación', 1, 'Introducción a la Programación', 4, 'Lunes', '09:00:00'),
(5, 'Ingeniería de Software', 2, 'Álgebra Lineal', 5, 'Lunes', '07:00:00'),
(6, 'Ingeniería de Software', 2, 'Programación Orientada a Objetos', 6, 'Lunes', '07:00:00'),
(7, 'Ingeniería Física', 1, 'Cálculo Diferencial', 7, 'Viernes', '09:00:00'),
(8, 'Ingeniería Física', 1, 'Cálculo Diferencial', 8, 'Viernes', '09:00:00'),
(9, 'Ingeniería en Computación', 3, 'Probabilidad y Estadística', 9, 'Viernes', '07:00:00'),
(10, 'Ingeniería en Computación', 3, 'Cálculo Vectorial', 10, 'Viernes', '07:00:00'),
(11, 'Licenciatura en Arquitectura', 2, 'Expresión Gráfica', 11, 'Lunes', '09:00:00'),
(12, 'Licenciatura en Animación Digital', 3, 'Ilustración Digital', 12, 'Lunes', '09:00:00'),
(13, 'Ingeniería en Computación', 3, 'Algoritmos y Estructura de Datos', 13, 'Lunes', '07:00:00'),
(14, 'Ingeniería de Software', 1, 'Introducción a las T.I.', 14, 'Martes', '10:00:00'),
(15, 'Ingeniería de Software', 1, 'Introducción a la Investigación', 15, 'Viernes', '10:00:00'),
(16, 'Ingeniería en Computación', 1, 'Introducción a la Investigación', 16, 'Martes', '12:00:00'),
(17, 'Ingeniería en Computación', 1, 'Administración', 17, 'Martes', '13:00:00'),
(18, 'Ingeniería de Software', 2, 'Inglés', 18, 'Martes', '15:00:00'),
(19, 'Ingeniería de Software', 2, 'Interfaces de Software', 19, 'Martes', '15:00:00'),
(20, 'Ingeniería Física', 1, 'Álgebra Lineal', 20, 'Martes', '17:00:00'),
(21, 'Ingeniería Física', 1, 'Física I', 21, 'Martes', '15:00:00'),
(22, 'Ingeniería en Computación', 3, 'Electrónica Analógica y Digital', 23, 'Viernes', '08:00:00'),
(24, 'Ingeniería en Computación', 3, 'Probabilidad y Estadística', 24, 'Martes', '07:00:00'),
(25, 'Licenciatura en Arquitectura', 2, 'Diseño Arquitectónico II', 25, 'Martes', '10:00:00'),
(26, 'Licenciatura en Animación Digital', 3, 'Fundamentos Animación II', 26, 'Viernes', '09:00:00'),
(27, 'Ingeniería en Computación', 3, 'Electrónica Analógica y Digital', 27, 'Martes', '07:00:00'),
(28, 'Ingeniería de Software', 1, 'Introducción a la Investigación', 28, 'Miércoles', '11:00:00'),
(29, 'Ingeniería de Software', 1, 'Introducción a las T.I.', 29, 'Miércoles', '07:00:00'),
(30, 'Ingeniería en Computación', 1, 'Administración', 30, 'Miércoles', '13:00:00'),
(31, 'Ingeniería en Computación', 1, 'Introducción a la Programación', 31, 'Viernes', '10:00:00'),
(32, 'Ingeniería de Software', 2, 'Programación Orientada a Objetos', 32, 'Miércoles', '08:00:00'),
(33, 'Ingeniería de Software', 2, 'Inglés', 33, 'Miércoles', '11:00:00'),
(34, 'Ingeniería Física', 1, 'Química', 34, 'Miércoles', '17:00:00'),
(35, 'Ingeniería Física', 1, 'Física I', 35, 'Viernes', '15:00:00'),
(36, 'Ingeniería en Computación', 3, 'Probabilidad y Estadística', 36, 'Miércoles', '08:00:00'),
(37, 'Ingeniería en Computación', 1, 'Introducción a la Programación', 37, 'Miércoles', '09:00:00'),
(38, 'Licenciatura en Arquitectura', 2, 'Forma y Estructura', 38, 'Viernes', '10:00:00'),
(39, 'Licenciatura en Animación Digital', 3, 'Fundamentos de Física', 39, 'Miércoles', '09:00:00'),
(40, 'Ingeniería en Computación', 3, 'Algoritmos y Estructura de Datos', 40, 'Miércoles', '07:00:00'),
(41, 'Ingeniería de Software', 1, 'Introducción a la Programación', 1, 'Jueves', '10:00:00'),
(42, 'Ingeniería de Software', 1, 'Administración', 2, 'Jueves', '10:00:00'),
(43, 'Ingeniería en Computación', 1, 'Administración', 3, 'Jueves', '12:00:00'),
(44, 'Ingeniería en Computación', 1, 'Introducción a las T.I', 4, 'Jueves', '13:00:00'),
(45, 'Ingeniería de Software', 2, 'Interfaces de Software', 5, 'Jueves', '15:00:00'),
(46, 'Ingeniería de Software', 2, 'Álgebra Lineal', 6, 'Jueves', '15:00:00'),
(47, 'Ingeniería Física', 1, 'Química', 7, 'Viernes', '17:00:00'),
(48, 'Ingeniería Física', 1, 'Álgebra Lineal', 8, 'Jueves', '15:00:00'),
(49, 'Ingeniería en Computación', 1, 'Introducción a la Investigación', 9, 'Jueves', '08:00:00'),
(50, 'Ingeniería en Computación', 1, 'Introducción a las T.I', 40, 'Viernes', '07:00:00'),
(51, 'Licenciatura en Arquitectura', 2, 'Dibujo Técnico', 11, 'Jueves', '10:00:00'),
(52, 'Licenciatura en Animación Digital', 3, 'Modelado II', 12, 'Jueves', '09:00:00'),
(53, 'Ingeniería en Computación', 3, 'Cálculo Vectorial', 13, 'Viernes', '07:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `IdMateria` int(11) NOT NULL,
  `Carrera` varchar(40) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `NombreMateria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`IdMateria`, `Carrera`, `Semestre`, `NombreMateria`) VALUES
(111, 'Ingeniería de Software', 1, 'Administración'),
(112, 'Ingeniería de Software', 1, 'Introducción a la Programación'),
(113, 'Ingeniería de Software', 1, 'Introducción a las T.I.'),
(114, 'Ingeniería de Software', 1, 'Introducción a la Investigación'),
(121, 'Ingeniería en Computación', 1, 'Administración'),
(122, 'Ingeniería en Computación', 1, 'Introducción a la Programación'),
(123, 'Ingeniería en Computación', 1, 'Introducción a las T.I'),
(124, 'Ingeniería en Computación', 1, 'Introducción a la Investigación'),
(131, 'Ingeniería Física', 1, 'Álgebra Lineal'),
(132, 'Ingeniería Física', 1, 'Cálculo Diferencial'),
(133, 'Ingeniería Física', 1, 'Física I'),
(134, 'Ingeniería Física', 1, 'Química'),
(211, 'Ingeniería de Software', 2, 'Álgebra Lineal'),
(212, 'Ingeniería de Software', 2, 'Programación Orientada a Objetos'),
(213, 'Ingeniería de Software', 2, 'Inglés'),
(214, 'Ingeniería de Software', 2, 'Interfaces de Software'),
(241, 'Licenciatura en Arquitectura', 2, 'Diseño Arquitectónico II'),
(242, 'Licenciatura en Arquitectura', 2, 'Forma y Estructura'),
(243, 'Licenciatura en Arquitectura', 2, 'Dibujo Técnico'),
(244, 'Licenciatura en Arquitectura', 2, 'Expresión Gráfica'),
(321, 'Ingeniería en Computación', 3, 'Probabilidad y Estadística'),
(322, 'Ingeniería en Computación', 3, 'Algoritmos y Estructura de Datos'),
(323, 'Ingeniería en Computación', 3, 'Cálculo Vectorial'),
(324, 'Ingeniería en Computación', 3, 'Electrónica Analógica y Digital'),
(351, 'Licenciatura en Animación Digital', 3, 'Modelado II'),
(352, 'Licenciatura en Animación Digital', 3, 'Fundamentos Animación II'),
(353, 'Licenciatura en Animación Digital', 3, 'Ilustración Digital'),
(354, 'Licenciatura en Animación Digital', 3, 'Fundamentos de Física'),
(411, 'Ingeniería de Software', 4, 'Teoría de la Computación'),
(412, 'Ingeniería de Software', 4, 'Estructura de Datos'),
(413, 'Ingeniería de Software', 4, 'Redes II'),
(414, 'Ingeniería de Software', 4, 'Base de Datos II');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `IdProfe` int(11) NOT NULL,
  `NombreProfe` varchar(40) NOT NULL,
  `ApellidoProfe` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`IdProfe`, `NombreProfe`, `ApellidoProfe`) VALUES
(1, 'Carlos', 'Martínez'),
(2, 'Marina', 'Hernández'),
(3, 'Ulises', 'Soria'),
(4, 'Uriel', 'Marin'),
(5, 'Liliana', 'Fernández'),
(6, 'Daniela', 'Ochoa'),
(7, 'Alejandra', 'Montes de Oca'),
(8, 'Sofia', 'Diez'),
(9, 'Raúl', 'Ávila'),
(10, 'Leticia', 'Izquierdo'),
(11, 'Santiago', 'Morales'),
(12, 'Estefanía', 'Nieto'),
(13, 'Karla', 'Mendoza'),
(14, 'Melanie', 'Salas'),
(15, 'Alix', 'García'),
(16, 'Mauricio', 'Mendez'),
(17, 'Pablo', 'Luna'),
(18, 'Gerardo', 'Alcántara'),
(19, 'Maribel', 'Martínez'),
(20, 'Fabio', 'Guerrero'),
(21, 'Ricardo', 'Rojas'),
(22, 'Julia', 'Hurtado'),
(23, 'Rosalba', 'Ramírez'),
(24, 'Leonardo', 'Casas'),
(25, 'José', 'Castro'),
(26, 'Gabriel', 'Lagunas'),
(27, 'Monserrat', 'Bravo'),
(28, 'Edgar', 'González'),
(29, 'Gael', 'Padilla'),
(30, 'Karla', 'Saucedo'),
(31, 'Jorge', 'Tames'),
(32, 'Carmen', 'Aguilar'),
(33, 'Luisa', 'Mendoza'),
(34, 'Juan', 'López'),
(35, 'Mario', 'Corona'),
(36, 'Alejandro', 'Hernández'),
(37, 'Cristian', 'Ortega'),
(38, 'Miguel', 'Requena'),
(39, 'Eduardo', 'Olvera'),
(40, 'Fernando', 'Camacho');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `cargahoraria`
--
ALTER TABLE `cargahoraria`
  ADD PRIMARY KEY (`IdCarga`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`IdHorario`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`IdMateria`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`IdProfe`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargahoraria`
--
ALTER TABLE `cargahoraria`
  MODIFY `IdCarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `IdHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `IdMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `IdProfe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
