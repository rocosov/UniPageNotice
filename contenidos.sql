-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2019 a las 02:10:18
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unidb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` longtext NOT NULL,
  `fecha_publicacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipo` varchar(20) NOT NULL,
  `fecha` varchar(40) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `contacto` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `cod_zona` int(11) DEFAULT NULL,
  `urlimagen` varchar(200) DEFAULT NULL,
  `resumen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `titulo`, `contenido`, `fecha_publicacion`, `tipo`, `fecha`, `categoria`, `alias`, `contacto`, `direccion`, `cod_zona`, `urlimagen`, `resumen`) VALUES
(3, 'Inicio', '%3Cp%3E&nbsp;%3C/p%3E%0A%0A%3Cp%3E&nbsp;%3C/p%3E%0A%0A%3Cp%3E&nbsp;%3C/p%3E%0A%0A%3Cp%3E&nbsp;%3C/p%3E%0A', '2019-02-02 00:03:44', 'PAGE', '', '', '', NULL, '', NULL, '', ''),
(27, 'Titulo Noticia editado', '%3Cdiv%3E%0A%3Ch2%3EWhat%20is%20Lorem%20Ipsum?%3C/h2%3E%0A%0A%3Cp%3E%3Cstrong%3ELorem%20Ipsum%3C/strong%3E%20is%20simply%20dummy%20text%20of%20the%20printing%20and%20typesetting%20industry.%20Lorem%20Ipsum%20has%20been%20the%20industry&#39;s%20standard%20dummy%20text%20ever%20since%20the%201500s,%20when%20an%20unknown%20printer%20took%20a%20galley%20of%20type%20and%20scrambled%20it%20to%20make%20a%20type%20specimen%20book.%20It%20has%20survived%20not%20only%20five%20centuries,%20but%20also%20the%20leap%20into%20electronic%20typesetting,%20remaining%20essentially%20unchanged.%20It%20was%20popularised%20in%20the%201960s%20with%20the%20release%20of%20Letraset%20sheets%20containing%20Lorem%20Ipsum%20passages,%20and%20more%20recently%20with%20desktop%20publishing%20software%20like%20Aldus%20PageMaker%20including%20versions%20of%20Lorem%20Ipsum.%20contenido%3C/p%3E%0A%0A%3Cp%3E%3Cimg%20alt=%22%22%20src=%22https://via.placeholder.com/800x600%22%20style=%22border-style:solid;%20border-width:1px;%20float:left;%20height:150px;%20margin:14px;%20width:200px%22%20/%3E%3C/p%3E%0A%3C/div%3E%0A', '2019-06-05 00:18:13', 'POST', '04-06-2019', '1', 'noticia.php', NULL, 'Paraguay', NULL, 'http://localhost/UniPageNotice/images/latest_1.jpg', 'resumen del contenido de la noticia'),
(28, 'dsdfsa', '%3Cdiv%20class=%22news_post%22%3E%0A%3Cdiv%20class=%22news_post_image%22%3E%3Cimg%20alt=%22https://unsplash.com/@dsmacinnes%22%20src=%22../images/news_1.jpg%22%20/%3E%3C/div%3E%0A%0A%3Cdiv%20class=%22d-flex%20flex-column%20flex-sm-row%20news_post_top%22%3E%0A%3Cdiv%20class=%22news_post_date_container%22%3E%0A%3Cdiv%20class=%22align-items-center%20d-flex%20flex-column%20justify-content-center%20news_post_date%22%3E%0A%3Cdiv%3E18%3C/div%3E%0A%0A%3Cdiv%3Edec%3C/div%3E%0A%3C/div%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_title_container%22%3E%0A%3Cdiv%20class=%22news_post_title%22%3E%3Ca%20href=%22news_post.html%22%3EWhy%20do%20you%20need%20a%20qualification?%3C/a%3E%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_meta%22%3E%3Ca%20href=%22#%22%3EBy%20Christian%20Smith%3C/a%3E%20%7C%20%3Ca%20href=%22#%22%3E3%20Comments%3C/a%3E%3C/div%3E%0A%3C/div%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_text%22%3E%0A%3Cp%3EIn%20aliquam,%20augue%20a%20gravida%20rutrum,%20ante%20nisl%20fermentum%20nulla,%20vitae%20tempor%20nisl%20ligula%20vel%20nunc.%20Proin%20quis%20mi%20malesuada,%20finibus%20tortor%20fermentum.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies%20venenatis.%20Suspendisse%20fermentum%20sodales%20lacus,%20lacinia%20gravida%20elit%20dapibus%20sed.%20Cras%20in%20lectus%20elit.%20Maecenas%20tempus%20nunc%20vitae%20mi%20egestas%20venenatis.%20Aliquam%20rhoncus,%20purus%20in%20vehicula%20porttitor,%20lacus%20ante%20consequat%20purus,%20id%20elementum%20enim%20purus%20nec%20enim.%20In%20sed%20odio%20rhoncus,%20tristique%20ipsum%20id,%20pharetra%20neque.%3C/p%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_quote%22%3E%0A%3Cp%3EEtiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies%20venena%20tis.%20Suspendisse%20fermentum%20sodales%20lacus,%20lacinia%20gravida%20elit.%3C/p%3E%0A%3C/div%3E%0A%0A%3Cp%3EIn%20aliquam,%20augue%20a%20gravida%20rutrum,%20ante%20nisl%20fermentum%20nulla,%20vitae%20tempor%20nisl%20ligula%20vel%20nunc.%20Proin%20quis%20mi%20malesuada,%20finibus%20tortor%20fermentum.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies%20venenatis.%20Suspendisse%20fermentum%20sodales%20lacus,%20lacinia%20gravida%20elit%20dapibus%20sed.%20Cras%20in%20lectus%20elit.%20Maecenas%20tempus%20nunc%20vitae%20mi%20egestas%20venenatis.%20Aliquam%20rhoncus,%20purus%20in%20vehicula%20porttitor,%20lacus%20ante%20consequat%20purus,%20id%20elementum%20enim%20purus%20nec%20enim.%20In%20sed%20odio%20rhoncus,%20tristique%20ipsum%20id,%20pharetra%20neque.%3C/p%3E%0A%3C/div%3E%0A', '2019-05-23 00:09:20', 'POST', '', '1', 'estructura.php', NULL, '', NULL, '../images/latest_3.jpg', 'resumen resumen'),
(30, 'Student Festival', '%3Cp%3EIn%20aliquam,%20augue%20a%20gravida%20rutrum,%20ante%20nisl%20fermentum%20nulla,%20vitae%20tempor%20nisl%20ligula%20vel%20nunc.%20Proin%20quis%20mi%20malesuada,%20finibus%20tortor.%3Cimg%20alt=%22%22%20src=%22https://i.ibb.co/0p7KHDm/imgur-com-2d61-vot-DKZV.jpg%22%20style=%22height:186px;%20width:331px%22%20/%3E%3C/p%3E%0A', '2019-06-05 22:40:11', 'EVENTO', '04-06-2019', '1', 'evento.php', NULL, 'Grand Central Park', NULL, 'https://i.ibb.co/0p7KHDm/imgur-com-2d61-vot-DKZV.jpg', 'In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor.'),
(31, 'noticia prueba', '%3Cdiv%20class=%22news_post%22%3E%0A%3Cdiv%20class=%22news_post_image%22%3E%3Cimg%20alt=%22https://unsplash.com/@dsmacinnes%22%20src=%22../images/news_1.jpg%22%20/%3E%3C/div%3E%0A%0A%3Cdiv%20class=%22d-flex%20flex-column%20flex-sm-row%20news_post_top%22%3E%0A%3Cdiv%20class=%22news_post_date_container%22%3E%0A%3Cdiv%20class=%22align-items-center%20d-flex%20flex-column%20justify-content-center%20news_post_date%22%3E%0A%3Cdiv%3E19%3C/div%3E%0A%0A%3Cdiv%3Emay%3C/div%3E%0A%3C/div%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_title_container%22%3E%0A%3Cdiv%20class=%22news_post_title%22%3E%3Ca%20href=%22news_post.html%22%3ETtiulo%20de%20la%20noticia%3C/a%3E%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_meta%22%3E%3Ca%20href=%22#%22%3Ede%20Carlos%3C/a%3E%3C/div%3E%0A%3C/div%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_text%22%3E%0A%3Cp%3EIn%20aliquam,%20augue%20a%20gravida%20rutrum,%20ante%20nisl%20fermentum%20nulla,%20vitae%20tempor%20nisl%20ligula%20vel%20nunc.%20Proin%20quis%20mi%20malesuada,%20finibus%20tortor%20fermentum.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies%20venenatis.%20Suspendisse%20fermentum%20sodales%20lacus,%20lacinia%20gravida%20elit%20dapibus%20sed.%20Cras%20in%20lectus%20elit.%20Maecenas%20tempus%20nunc%20vitae%20mi%20egestas%20venenatis.%20Aliquam%20rhoncus,%20purus%20in%20vehicula%20porttitor,%20lacus%20ante%20consequat%20purus,%20id%20elementum%20enim%20purus%20nec%20enim.%20In%20sed%20odio%20rhoncus,%20tristique%20ipsum%20id,%20pharetra%20neque.%3C/p%3E%0A%3C/div%3E%0A%3C/div%3E%0A', '2019-05-30 01:42:42', 'POST', '', '1', 'noticiaprueba.php', NULL, '', NULL, 'http://localhost/UniPageNotice/images/bg.jpg', 'resumen de la noticia resumen de la noticia resumen de la noticia'),
(32, 'Charla informativa sobre', '%3Cdiv%20class=%22news_post%22%3E%0A%3Cdiv%20class=%22news_post_image%22%3E%3Cimg%20alt=%22https://unsplash.com/@dsmacinnes%22%20src=%22../images/news_1.jpg%22%20/%3E%3C/div%3E%0A%0A%3Cdiv%20class=%22d-flex%20flex-column%20flex-sm-row%20news_post_top%22%3E%0A%3Cdiv%20class=%22news_post_date_container%22%3E%0A%3Cdiv%20class=%22align-items-center%20d-flex%20flex-column%20justify-content-center%20news_post_date%22%3E%0A%3Cdiv%3E29%3C/div%3E%0A%0A%3Cdiv%3Emay%3C/div%3E%0A%3C/div%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_title_container%22%3E%0A%3Cdiv%20class=%22news_post_title%22%3E%3Ca%20href=%22news_post.html%22%3ETitulo%3C/a%3E%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_meta%22%3E%3Ca%20href=%22#%22%3EBy%20Christian%20Smith%3C/a%3E%3C/div%3E%0A%3C/div%3E%0A%3C/div%3E%0A%0A%3Cdiv%20class=%22news_post_text%22%3E%0A%3Cp%3EIn%20aliquam,%20augue%20a%20gravida%20rutrum,%20ante%20nisl%20fermentum%20nulla,%20vitae%20tempor%20nisl%20ligula%20vel%20nunc.%20Proin%20quis%20mi%20malesuada,%20finibus%20tortor%20fermentum.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies.%20Etiam%20eu%20purus%20nec%20eros%20varius%20luctus.%20Praesent%20finibus%20risus%20facilisis%20ultricies%20venenatis.%20Suspendisse%20fermentum%20sodales%20lacus,%20lacinia%20gravida%20elit%20dapibus%20sed.%20Cras%20in%20lectus%20elit.%20Maecenas%20tempus%20nunc%20vitae%20mi%20egestas%20venenatis.%20Aliquam%20rhoncus,%20purus%20in%20vehicula%20porttitor,%20lacus%20ante%20consequat%20purus,%20id%20elementum%20enim%20purus%20nec%20enim.%20In%20sed%20odio%20rhoncus,%20tristique%20ipsum%20id,%20pharetra%20neque.%3C/p%3E%0A%0A%3Cp%3Etsdasdfsdfsdfsdgsg%3C/p%3E%0A%3C/div%3E%0A%3C/div%3E%0A', '2019-05-30 01:26:58', 'POST', '', '1', '12344', NULL, '', NULL, 'http://localhost/UniPageNotice/images/latest_1.jpg', 'resumen de la noticia'),
(33, 'post1', '%3Cp%3Econtenido%3C/p%3E%0A', '2019-06-05 23:35:18', 'POST', '05-06-2019', '1', 'post1', NULL, 'Grand Central Park', NULL, 'http://localhost/UniPageNotice/images/latest_1.jpg', 'resumeeen'),
(34, 'tituloo', '%3Cp%3Econtenido%3C/p%3E%0A', '2019-06-05 23:36:14', 'POST', '05-06-2019', '1', 'post3.php', NULL, 'Coronel Bogado', NULL, 'https://via.placeholder.com/800x600', 'resumen de la noticia resumen de la noticia resumen de la noticia'),
(35, 'prueba titulo', '%3Cp%3Econtenido%3C/p%3E%0A', '2019-06-05 23:36:51', 'POST', '05-06-2019', '1', 'urls', NULL, '', NULL, 'http://localhost/UniPageNotice/images/latest_1.jpg', 'rsuem'),
(36, 'prueba titulo', '%3Cp%3Eaa%3C/p%3E%0A', '2019-06-05 23:42:59', 'POST', '05-06-2019', '1', 'w4et', NULL, 'Coronel Bogado', NULL, 'http://localhost/UniPageNotice/images/latest_1.jpg', 'resuemn'),
(37, 'post1ds', '%3Cp%3Edesfes%3C/p%3E%0A', '2019-06-05 23:43:26', 'POST', '05-06-2019', '1', '234325', NULL, 'Coronel Bogado', NULL, 'https://i.ibb.co/0p7KHDm/imgur-com-2d61-vot-DKZV.jpg', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
