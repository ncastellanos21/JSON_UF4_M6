-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2023 a las 17:08:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas_db`
--
CREATE DATABASE IF NOT EXISTS `peliculas_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `peliculas_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `duracion` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `lanzamiento` int(11) NOT NULL,
  `poster` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `genero`, `duracion`, `director`, `sinopsis`, `lanzamiento`, `poster`) VALUES
(2, 'La milla verde', 'Drama', 188, 'Frank Darabont', 'Paul Edgecomb es un funcionario de prisiones que vigila \'la milla verde\', el pasillo de linóleo que los condenados a muerte recorren hasta llegar a la silla eléctrica. John Coffey, un gigantesco convicto acusado de violar y asesinar a dos niñas de nueve años, está esperando su inminente ejecución. Tras una personalidad ingenua, John esconde un don sobrenatural con el que contagia su sentido de espiritualidad y humanidad a todos sus compañeros de prisión.', 1999, 'la_milla_verde'),
(3, 'La huerfana', 'Terror', 123, 'Jaume Collet-Serra', 'Devastada por la perdida del bebé que estaban esperando, Kate y su marido deciden adoptar a una niña en el orfanato local. Sin embargo, al poco tiempo de tener a la pequeña en casa, la niña no parece ser tan inocente como Kate cree.\r\n', 2009, 'la_huerfana'),
(4, 'The Unborn', 'Terror', 87, 'David S. Goyer', 'Casey es una joven que sufre los ataques de un dybbuk, un alma en pena. Este alma corresponde a un joven que murió en el campo de concentración de Auschwitz. Tendrá que recurrir a un especialista en temas paranormales para acabar con esta maldición.\r\n', 2009, 'the_unborn'),
(5, 'In time', 'Drama', 109, 'Andrew Niccol', 'El hallazgo de una fórmula contra el envejecimiento trae consigo no sólo superpoblación, sino también la transformación del tiempo en moneda de cambio que permite sufragar tanto lujos como necesidades. En este contexto, Will, un obrero que consigue casualmente una inmensa cantidad de tiempo, debe huir de unos policías corruptos, acompañado de una rehén adinerada.\r\n', 2011, 'in_time'),
(6, 'El código Da Vinci', 'Drama', 148, 'Ron Howard', 'Un asesinato en el Louvre y una serie de pistas en los cuadros de Leonardo conducen a un misterio que podría sacudir los cimientos del cristianismo. Basada en la novela de Dan Brown.\r\n', 2006, 'da_vinci'),
(7, 'A dos metros de ti', 'Drama', 148, 'Ron Howard', 'Dos adolescentes, Stella y Will, se encuentran en un hospital debido a las graves enfermedades que padecen y que amenazan su vida. Poco a poco comienzan a conocerse y enamorarse, pero deberán enfrentarse a las reglas hospitalarias que los alejan.\r\n', 2006, 'a_dos_metros_de_ti'),
(8, 'Yo antes de ti', 'Romance', 110, 'Thea Sharrock', 'Louisa una chica inestable y creativa, reside en un pequeño pueblo de la campiña inglesa. Vive sin rumbo y va de un trabajo a otro para ayudar a su familia a llegar a fin de mes. Sin embargo, un nuevo trabajo pondrá a prueba su habitual alegría. En el castillo local, se ocupa de cuidar y acompañar a Will Traynor, un joven y rico banquero que se quedó paralítico tras un accidente.\r\n', 2016, 'yo_antes_de_ti'),
(9, '3 metros sobre el cielo', 'Romance', 118, 'Fernando González Molina', 'En Barcelona, dos jóvenes que pertenecen a mundos opuestos se conocen. Él, es un joven apuesto y problemático con tendencias violentas llamado Hugo (\'H\'), y ella, es una niña de bien llamada Babi. Hugo y Babi vivirán una relación intensa con la que aprenderán lo que significa el primer amor.\r\n', 2010, '3msc'),
(10, 'La casa del lago', 'Romance', 105, 'Alejandro Agresti', 'Una doctora solitaria que en el pasado habitaba en una hermosa casa a la orilla de un lago se enamora, a través de la correspondencia, de su más actual residente, un arquitecto frustrado. Cuando ellos descubren que en realidad están viviendo con dos años de diferencia, la pareja debe resolver el misterio que protagonizan.', 2006, 'la_casa_del_lago'),
(11, 'Novia a la fuga', 'Romance', 116, 'Garry Marshall', 'Un periodista escucha la historia de Maggie, una mujer que siempre deja plantados a sus novios en el altar, y escribe un artículo ofensivo por el que es despedido. Ahora el único modo de recuperar su trabajo es conocer a Maggie y contar la verdad.\r\n', 1999, 'novia_fugitiva'),
(12, 'El aro 2', 'Terror', 95, 'Hideo Nakata', 'Una mujer investiga a fondo una leyenda mortal sobre una videocinta mensajera, que trae la muerte en siete días.\r\n', 1999, 'el_aro_2'),
(13, 'Hachiko', 'Drama', 85, 'Lasse Hallström', 'Un perro fiel llamado Hachiko acompaña cada mañana a su amo a la estación de tren y regresa cada tarde para darle la bienvenida después del trabajo. Sin embargo, esta rutina se ve rota por una desgracia.', 2009, 'hachiko');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
