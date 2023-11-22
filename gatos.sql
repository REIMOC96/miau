-- phpMyAdmin SQL Dump

-- version 5.2.0

-- https://www.phpmyadmin.net/

--

-- Servidor: 127.0.0.1

-- Tiempo de generación: 06-06-2023 a las 03:45:02

-- Versión del servidor: 10.4.24-MariaDB

-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Base de datos: `gatinero`

--

-- --------------------------------------------------------

--

-- Estructura de tabla para la tabla `gatos`

--

CREATE TABLE
    `gatos` (
        `ID_gato` int(100) NOT NULL,
        `nombre_gato` varchar(100) DEFAULT NULL,
        `color_gato` varchar(100) DEFAULT NULL,
        `edad_gato` int(100) DEFAULT NULL,
        `pelaje_gato` varchar(100) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Volcado de datos para la tabla `gatos`

--

INSERT INTO
    `gatos` (
        `ID_gato`,
        `nombre_gato`,
        `color_gato`,
        `edad_gato`,
        `pelaje_gato`
    )
VALUES (20, 'michifu', 'negro', 10, ''), (21, 'gardield', 'naranja', 5, ''), (
        22,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (23, 'gatuvela', 'negro', 7, ''), (24, 'michifu', 'negro', 10, ''), (25, 'gardield', 'naranja', 5, ''), (
        26,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (27, 'gatuvela', 'negro', 7, ''), (28, 'michifu', 'negro', 10, ''), (29, 'gardield', 'naranja', 5, ''), (
        30,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (31, 'gatuvela', 'negro', 7, ''), (32, 'michifu', 'negro', 10, ''), (33, 'gardield', 'naranja', 5, ''), (
        34,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (35, 'gatuvela', 'negro', 7, ''), (36, 'michifu', 'negro', 10, ''), (37, 'gardield', 'naranja', 5, ''), (
        38,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (39, 'gatuvela', 'negro', 7, ''), (40, 'michifu', 'negro', 10, ''), (41, 'gardield', 'naranja', 5, ''), (
        42,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (43, 'gatuvela', 'negro', 7, ''), (44, 'michifu', 'negro', 10, ''), (45, 'gardield', 'naranja', 5, ''), (
        46,
        'silvestre',
        'manchado negro blanco',
        8,
        ''
    ), (47, 'gatuvela', 'negro', 7, ''), (
        54,
        'michifu',
        'negro',
        10,
        'liso'
    ), (
        55,
        'gardield',
        'naranja',
        5,
        'esponjoso'
    ), (
        56,
        'silvestre',
        'manchado negro blanco',
        8,
        'liso'
    ), (
        57,
        'gatuvela',
        'negro',
        7,
        'semi esponjoso'
    );

--

-- Índices para tablas volcadas

--

--

-- Indices de la tabla `gatos`

--

ALTER TABLE `gatos` ADD PRIMARY KEY (`ID_gato`);

--

-- AUTO_INCREMENT de las tablas volcadas

--

--

-- AUTO_INCREMENT de la tabla `gatos`

--

ALTER TABLE
    `gatos` MODIFY `ID_gato` int(100) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 59;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;