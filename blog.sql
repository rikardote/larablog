-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2015 at 03:40 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.15-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Codeigniter 3.0', '<p><b>CodeIgniter</b> is a powerful PHP framework with a very small footprint, built for developers who need a simple and elegant toolkit to create full-featured web applications.</p>', 11, 1, '2015-12-14 17:25:24', '2015-12-14 17:25:24', 'codeigniter-3-0'),
(2, 'Laravel 5.1', '<p><strong>Laravel</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;es un&nbsp;</span><a href="https://es.wikipedia.org/wiki/Framework" title="Framework" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">framework</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;de&nbsp;</span><a href="https://es.wikipedia.org/wiki/C%C3%B3digo_abierto" title="Código abierto" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">código abierto</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;para desarrollar aplicaciones y servicios web con&nbsp;</span><a href="https://es.wikipedia.org/wiki/PHP" title="PHP" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">PHP</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;5. Su filosofía es desarrollar código PHP de forma elegante y simple, evitando el "código espagueti". Fue creado en 2011 y tiene una gran influencia de frameworks como Ruby on Rails, Sinatra y ASP.NET MVC.</span><sup id="cite_ref-introduccion_2-0" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate; color: rgb(37, 37, 37); font-family: sans-serif;"><a href="https://es.wikipedia.org/wiki/Laravel#cite_note-introduccion-2" style="color: rgb(11, 0, 128); white-space: nowrap; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">2</a></sup></p>', 11, 1, '2015-12-14 17:29:13', '2015-12-14 17:29:13', 'laravel-5-1'),
(3, 'Ruby on rails for dummies', '<p><strong>Ruby on Rails</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, también conocido como&nbsp;</span><strong>RoR</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;o&nbsp;</span><strong>Rails</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, es un&nbsp;</span><a href="https://es.wikipedia.org/wiki/Framework" title="Framework" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">framework</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;de&nbsp;</span><a href="https://es.wikipedia.org/wiki/Aplicaci%C3%B3n_web" title="Aplicación web" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">aplicaciones web</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;de&nbsp;</span><a href="https://es.wikipedia.org/wiki/C%C3%B3digo_abierto" title="Código abierto" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">código abierto</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;escrito en el lenguaje de programación&nbsp;</span><a href="https://es.wikipedia.org/wiki/Ruby" title="Ruby" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Ruby</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, siguiendo el paradigma de la arquitectura&nbsp;</span><a href="https://es.wikipedia.org/wiki/Modelo_Vista_Controlador" title="Modelo Vista Controlador" class="mw-redirect" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Modelo Vista Controlador</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;(MVC). Trata de combinar la simplicidad con la posibilidad de desarrollar aplicaciones del mundo real escribiendo menos código que con otros frameworks y con un mínimo de configuración. El lenguaje de programación Ruby permite la&nbsp;</span><a href="https://es.wikipedia.org/wiki/Metaprogramaci%C3%B3n" title="Metaprogramación" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">metaprogramación</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, de la cual Rails hace uso, lo que resulta en una sintaxis que muchos de sus usuarios encuentran muy legible. Rails se distribuye a través de&nbsp;</span><a href="https://es.wikipedia.org/wiki/RubyGems" title="RubyGems" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">RubyGems</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, que es el formato oficial de paquete y canal de distribución de bibliotecas y aplicaciones Ruby.</span></p>', 11, 2, '2015-12-14 20:20:37', '2015-12-14 20:20:37', 'ruby-on-rails-for-dummies'),
(4, 'Ruby on Rails - El desarrollo web que no molesta', '<p><strong>Ruby</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;es un&nbsp;</span><a href="https://es.wikipedia.org/wiki/Lenguaje_de_programaci%C3%B3n" title="Lenguaje de programación" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">lenguaje de programación</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;</span><a href="https://es.wikipedia.org/wiki/Lenguaje_de_programaci%C3%B3n_interpretado" title="Lenguaje de programación interpretado" class="mw-redirect" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">interpretado</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">,&nbsp;</span><a href="https://es.wikipedia.org/wiki/Reflexi%C3%B3n_(inform%C3%A1tica)" title="Reflexión (informática)" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">reflexivo</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;y&nbsp;</span><a href="https://es.wikipedia.org/wiki/Programaci%C3%B3n_orientada_a_objetos" title="Programación orientada a objetos" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">orientado a objetos</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, creado por el programador&nbsp;</span><a href="https://es.wikipedia.org/wiki/Jap%C3%B3n" title="Japón" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">japonés</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;</span><a href="https://es.wikipedia.org/wiki/Yukihiro_Matsumoto" title="Yukihiro Matsumoto" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Yukihiro "Matz" Matsumoto</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, quien comenzó a trabajar en Ruby en&nbsp;</span><a href="https://es.wikipedia.org/wiki/1993" title="1993" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">1993</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">, y lo presentó públicamente en&nbsp;</span><a href="https://es.wikipedia.org/wiki/1995" title="1995" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">1995</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">. Combina una sintaxis inspirada en&nbsp;</span><a href="https://es.wikipedia.org/wiki/Python" title="Python" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Python</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;y&nbsp;</span><a href="https://es.wikipedia.org/wiki/Perl" title="Perl" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Perl</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;con características de programación orientada a objetos similares a&nbsp;</span><a href="https://es.wikipedia.org/wiki/Smalltalk" title="Smalltalk" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Smalltalk</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">. Comparte también funcionalidad con otros lenguajes de programación como&nbsp;</span><a href="https://es.wikipedia.org/wiki/Lisp" title="Lisp" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Lisp</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">,&nbsp;</span><a href="https://es.wikipedia.org/wiki/Lua" title="Lua" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Lua</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">,&nbsp;</span><a href="https://es.wikipedia.org/wiki/Dylan_(lenguaje_de_programaci%C3%B3n)" title="Dylan (lenguaje de programación)" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Dylan</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;y&nbsp;</span><a href="https://es.wikipedia.org/wiki/CLU" title="CLU" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">CLU</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">. Ruby es un lenguaje de programación interpretado en una sola pasada y su implementación oficial es distribuida bajo una&nbsp;</span><a href="https://es.wikipedia.org/wiki/Ruby#Licencia" title="Ruby" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">licencia</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;de&nbsp;</span><a href="https://es.wikipedia.org/wiki/Software_libre" title="Software libre" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">software libre</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">.</span></p>', 11, 1, '2015-12-14 22:12:23', '2015-12-14 22:12:23', 'ruby-on-rails-el-desarrollo-web-que-no-molesta'),
(5, 'The Definitive C++ Book Guide and List', '<p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;"><strong>C++</strong>&nbsp;es un&nbsp;<a href="https://es.wikipedia.org/wiki/Lenguaje_de_programaci%C3%B3n" title="Lenguaje de programación" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">lenguaje de programación</a>&nbsp;diseñado a mediados de los años 1980 por&nbsp;<a href="https://es.wikipedia.org/wiki/Bjarne_Stroustrup" title="Bjarne Stroustrup" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Bjarne Stroustrup</a>. La intención de su creación fue el extender al lenguaje de programación&nbsp;<a href="https://es.wikipedia.org/wiki/C_(lenguaje_de_programaci%C3%B3n)" title="C (lenguaje de programación)" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">C</a>&nbsp;mecanismos que permiten la manipulación de&nbsp;<a href="https://es.wikipedia.org/wiki/Objeto_(programaci%C3%B3n)" title="Objeto (programación)" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">objetos</a>. En ese sentido, desde el punto de vista de los&nbsp;<a href="https://es.wikipedia.org/wiki/Programaci%C3%B3n_orientada_a_objetos" title="Programación orientada a objetos" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">lenguajes orientados a objetos</a>, el C++ es un lenguaje híbrido.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">Posteriormente se añadieron facilidades de&nbsp;<a href="https://es.wikipedia.org/wiki/Programaci%C3%B3n_gen%C3%A9rica" title="Programación genérica" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">programación genérica</a>, que se sumaron a los paradigmas de&nbsp;<a href="https://es.wikipedia.org/wiki/Programaci%C3%B3n_estructurada" title="Programación estructurada" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">programación estructurada</a>&nbsp;y&nbsp;<a href="https://es.wikipedia.org/wiki/Programaci%C3%B3n_orientada_a_objetos" title="Programación orientada a objetos" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">programación orientada a objetos</a>. Por esto se suele decir que el C++ es un&nbsp;<a href="https://es.wikipedia.org/wiki/Lenguaje_de_programaci%C3%B3n_multiparadigma" title="Lenguaje de programación multiparadigma" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">lenguaje de programación multiparadigma</a>.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">Actualmente existe un estándar, denominado ISO C++, al que se han adherido la mayoría de los fabricantes de compiladores más modernos. Existen también algunos intérpretes, tales como ROOT.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">Una particularidad del C++ es la posibilidad de redefinir los&nbsp;<a href="https://es.wikipedia.org/wiki/Operadores_de_C_y_C%2B%2B" title="Operadores de C y C++" class="mw-redirect" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">operadores</a>, y de poder crear nuevos&nbsp;<a href="https://es.wikipedia.org/wiki/Tipo_de_datos" title="Tipo de datos" class="mw-redirect" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">tipos</a>&nbsp;que se comporten como tipos fundamentales.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">El nombre&nbsp;<strong>C++</strong>&nbsp;fue propuesto por&nbsp;<a href="https://es.wikipedia.org/w/index.php?title=Rick_Mascitti&amp;action=edit&amp;redlink=1" class="new" title="Rick Mascitti (aún no redactado)" style="color: rgb(165, 88, 88); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Rick Mascitti</a>&nbsp;en el año 1983, cuando el lenguaje fue utilizado por primera vez fuera de un laboratorio científico. Antes se había usado el nombre "C con clases". En C++, la expresión "C++" significa "incremento de C" y se refiere a que C++ es una extensión de C.</p>', 11, 2, '2015-12-14 22:17:15', '2015-12-14 22:21:03', 'the-definitive-c-book-guide-and-list'),
(6, 'Java: A Beginner''s Guide, Sixth Edition', '<p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;"><span class="vp-dropcap vp-mode-default" style="display: block; float: left; font-size: 72px; line-height: 72px; margin: 0px 11px 0px 2px; color: rgb(119, 119, 119); font-family: Lato, Helvetica, Arial;">F</span><span style="color: rgb(119, 119, 119); font-family: Lato, Helvetica, Arial; line-height: 24px;">ully updated for Java Platform, Standard Edition 8 (Java SE 8), Java: A Beginner’s Guide, Sixth Edition gets you started programming in Java right away. Bestselling programming author Herb Schildt begins with the basics, such as how to create, compile, and run a Java program. He then moves on to the keywords, syntax, and constructs that form the core of the Java language. This Oracle Press resource also covers some of Java’s more advanced features, including multithreaded programming, generics, and Swing. Of course, new Java SE 8 features such as lambda expressions and default interface methods are described. An introduction to JavaFX, Java’s newest GUI, concludes this step-by-step tutorial.</span><br></p>', 4, 3, '2015-12-15 00:48:15', '2015-12-15 01:22:34', 'java-a-beginner-s-guide-sixth-edition'),
(7, 'Libro de oro de matemáticas', '<p><span style="color: rgb(59, 56, 53); font-family: ''Helvetica Neue'', Helvetica, Roboto, Arial, sans-serif; line-height: 22.4px; background-color: rgb(238, 238, 238);">Un libro que trata sobre las situaciones curiosas y prácticas que aborda la Ciencia Matemática:</span></p>', 4, 3, '2015-12-15 00:50:48', '2015-12-15 00:50:48', 'libro-de-oro-de-matematicas'),
(8, 'King Diamond', '<p><strong>King Diamond</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;es el&nbsp;</span><a href="https://es.wikipedia.org/wiki/Seud%C3%B3nimo" title="Seudónimo" class="mw-redirect" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">seudónimo</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;del&nbsp;</span><a href="https://es.wikipedia.org/wiki/M%C3%BAsico" title="Músico" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">músico</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;</span><strong>Kim Bendix Petersen</strong><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;(</span><a href="https://es.wikipedia.org/wiki/Copenhague" title="Copenhague" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Copenhague</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">,&nbsp;</span><a href="https://es.wikipedia.org/wiki/14_de_junio" title="14 de junio" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">14 de junio</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;de&nbsp;</span><a href="https://es.wikipedia.org/wiki/1956" title="1956" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">1956</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">). King Diamond da nombre también a su tercer proyecto musical (después de&nbsp;</span><a href="https://es.wikipedia.org/wiki/Black_Rose_(banda)" title="Black Rose (banda)" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Black Rose</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;y&nbsp;</span><a href="https://es.wikipedia.org/wiki/Mercyful_Fate" title="Mercyful Fate" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Mercyful Fate</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">), en el cual es líder como vocalista y compositor. La revista&nbsp;</span><a href="https://es.wikipedia.org/wiki/Hit_Parader" title="Hit Parader" style="color: rgb(11, 0, 128); font-family: sans-serif; line-height: 22.4px; background: none rgb(255, 255, 255);">Hit Parader</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; line-height: 22.4px;">&nbsp;lo clasificó en el número 85 en la lista de los 100 mejores vocalistas de Metal del mundo.</span><sup id="cite_ref-1" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate; color: rgb(37, 37, 37); font-family: sans-serif;"><a href="https://es.wikipedia.org/wiki/King_Diamond#cite_note-1" style="color: rgb(11, 0, 128); white-space: nowrap; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">1</a></sup></p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">King Diamond hizo su debut con&nbsp;<a href="https://es.wikipedia.org/wiki/Black_Rose_(banda)" title="Black Rose (banda)" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Black Rose</a>, una banda con influencias del&nbsp;<a href="https://es.wikipedia.org/wiki/Rock_psicod%C3%A9lico" title="Rock psicodélico" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">rock psicodélico</a>&nbsp;y del&nbsp;<a href="https://es.wikipedia.org/wiki/Hard_rock" title="Hard rock" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">hard rock</a>, formada en el año&nbsp;<a href="https://es.wikipedia.org/wiki/1979" title="1979" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">1979</a>. En&nbsp;<a href="https://es.wikipedia.org/wiki/1981" title="1981" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">1981</a>&nbsp;conformaría la banda&nbsp;<a href="https://es.wikipedia.org/wiki/Mercyful_Fate" title="Mercyful Fate" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Mercyful Fate</a>, su primer gran proyecto, mezclando un complejo y oscuro heavy metal con letras explícitamente satánicas. Finalmente creó King Diamond como su proyecto solista, activo desde&nbsp;<a href="https://es.wikipedia.org/wiki/1985" title="1985" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">1985</a>, antes de suspender la actividad de&nbsp;<a href="https://es.wikipedia.org/wiki/Mercyful_Fate" title="Mercyful Fate" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Mercyful Fate</a>&nbsp;en&nbsp;<a href="https://es.wikipedia.org/wiki/1999" title="1999" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">1999</a>.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">Otros proyectos en los cuales se vio involucrado con anterioridad fueron:&nbsp;<a href="https://es.wikipedia.org/w/index.php?title=Banda_Brats&amp;action=edit&amp;redlink=1" class="new" title="Banda Brats (aún no redactado)" style="color: rgb(165, 88, 88); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Brats</a>, banda de&nbsp;<a href="https://es.wikipedia.org/wiki/Hard_rock" title="Hard rock" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">hard rock</a>/<a href="https://es.wikipedia.org/wiki/Punk" title="Punk" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">punk</a>&nbsp;en la cual participó como vocalista en&nbsp;<a href="https://es.wikipedia.org/wiki/1981" title="1981" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">1981</a>, y en el proyecto&nbsp;<a href="https://es.wikipedia.org/wiki/Heavy_metal" title="Heavy metal" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">heavy metal</a>&nbsp;Danger Zone, en ese mismo año. También colaboró en 2004 en el proyecto&nbsp;<a href="https://es.wikipedia.org/wiki/Probot" title="Probot" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Probot</a>&nbsp;de&nbsp;<a href="https://es.wikipedia.org/wiki/Dave_Grohl" title="Dave Grohl" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Dave Grohl</a>, en la canción "Sweet Dreams" del álbum homónimo.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">King Diamond se casó en sus primeras nupcias con&nbsp;<a href="https://es.wikipedia.org/wiki/Livia_Zita" title="Livia Zita" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Livia Zita</a>, una cantante de origen húngaro 28 años menor que él. La pareja reside habitualmente en&nbsp;<a href="https://es.wikipedia.org/wiki/Dallas" title="Dallas" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Dallas</a>,<a href="https://es.wikipedia.org/wiki/Texas" title="Texas" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Texas</a>,&nbsp;<a href="https://es.wikipedia.org/wiki/Estados_Unidos" title="Estados Unidos" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Estados Unidos</a>.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">Zita ha hecho apariciones como vocalista de apoyo en los álbumes&nbsp;<em><a href="https://es.wikipedia.org/wiki/The_Puppet_Master_(%C3%A1lbum)" title="The Puppet Master (álbum)" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">The Puppet Master</a></em>&nbsp;y&nbsp;<em><a href="https://es.wikipedia.org/wiki/Give_Me_Your_Soul...Please" title="Give Me Your Soul...Please" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Give Me Your Soul...Please</a></em>, así como durante las actuaciones en directo.</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif;">Ella es también su socia en los negocios musicales, y actualmente trabaja con él para compilar material antiguo de King Diamond y Mercyful Fate para dos lanzamientos en DVD; éste proyecto estaría compuesto de diversas actuaciones en vivo.. De igual forma, también colaboró junto a su marido para remasterizar ediciones de los discos de King Diamond&nbsp;<em><a href="https://es.wikipedia.org/wiki/The_Spider%27s_Lullabye" title="The Spider''s Lullabye" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">The Spider''s Lullabye</a></em>,&nbsp;<em><a href="https://es.wikipedia.org/wiki/The_Graveyard" title="The Graveyard" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">The Graveyard</a></em>,&nbsp;<em><a href="https://es.wikipedia.org/wiki/Voodoo_(%C3%A1lbum)" title="Voodoo (álbum)" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Voodoo</a></em>&nbsp;y&nbsp;<em><a href="https://es.wikipedia.org/wiki/House_of_God_(%C3%A1lbum)" title="House of God (álbum)" style="color: rgb(11, 0, 128); background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">House of God</a></em>.</p>', 10, 4, '2015-12-15 03:36:47', '2015-12-15 03:36:47', 'king-diamond');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 5, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 6, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 7, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 8, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 8, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programacion', '2015-12-14 17:23:07', '2015-12-14 17:23:07'),
(2, 'Estudio', '2015-12-14 17:23:19', '2015-12-14 17:23:19'),
(3, 'Books', '2015-12-15 00:47:35', '2015-12-15 00:47:35'),
(4, 'Musica', '2015-12-15 03:35:02', '2015-12-15 03:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'blogfacilito_1450113924.png', 1, '2015-12-14 17:25:24', '2015-12-14 17:25:24'),
(2, 'blogfacilito_1450114153.png', 2, '2015-12-14 17:29:13', '2015-12-14 17:29:13'),
(3, 'blogfacilito_1450124437.png', 3, '2015-12-14 20:20:37', '2015-12-14 20:20:37'),
(4, 'blogfacilito_1450131143.png', 4, '2015-12-14 22:12:23', '2015-12-14 22:12:23'),
(5, 'blogfacilito_1450131434.png', 5, '2015-12-14 22:17:15', '2015-12-14 22:17:15'),
(6, 'blogfacilito_1450140495.png', 6, '2015-12-15 00:48:15', '2015-12-15 00:48:15'),
(7, 'blogfacilito_1450140648.jpg', 7, '2015-12-15 00:50:48', '2015-12-15 00:50:48'),
(8, 'blogfacilito_1450150607.jpg', 8, '2015-12-15 03:36:47', '2015-12-15 03:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_12_210546_add_categories_table', 1),
('2015_12_12_211050_add_articles_table', 1),
('2015_12_12_211807_add_images_table', 1),
('2015_12_12_212003_add_tags_table', 1),
('2015_12_13_003339_add_slug_to_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '2015-12-14 17:23:31', '2015-12-14 17:23:31'),
(2, 'Codeigniter', '2015-12-14 17:23:40', '2015-12-14 17:23:40'),
(3, 'Ruby on Rails', '2015-12-14 17:23:45', '2015-12-14 17:23:59'),
(4, 'Ruby', '2015-12-14 17:23:51', '2015-12-14 17:23:51'),
(5, 'Laravel', '2015-12-14 17:28:42', '2015-12-14 17:28:42'),
(6, 'C', '2015-12-14 22:16:19', '2015-12-14 22:16:19'),
(7, 'C++', '2015-12-14 22:16:24', '2015-12-14 22:16:24'),
(8, 'Java', '2015-12-15 00:47:10', '2015-12-15 00:47:10'),
(9, 'Book', '2015-12-15 00:47:42', '2015-12-15 00:47:42'),
(10, 'Heavy-Metal', '2015-12-15 03:34:23', '2015-12-15 03:34:23'),
(11, 'Musica', '2015-12-15 03:34:35', '2015-12-15 03:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elinor Senger', 'tHackett@Hayes.net', '$2y$10$mnOykwxi8.x6GBZeXsxT7.wP5MoropQHWaQM1OY3fCPR03kNjgdHq', 'member', 'Cin0ttTs0pf3I1f9IxCxUU2znt4bkznHfgTxbBZuGmQxgl6pbDaZLIZGVdUd', '2015-12-14 17:20:00', '2015-12-14 17:22:37'),
(3, 'Mr. Daren Heller', 'pDickinson@yahoo.com', '$2y$10$uFWX.aBVmkCEg4jL2yOxIeIztnwnsejyWVuIXcbPKyogHKfS.Uv3a', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(4, 'Prof. Coleman Yundt', 'zOReilly@Raynor.com', '$2y$10$PkIiOib8y39QzQ3QM1xVLuNt39kwepMrK9ugIQncfrKviKjSJKbZi', 'member', '9bmgnjzX85i2Ci1kuixaoDEWFNJw4RwWdcqZ30tOEaxiq8YU2tvzsTFUgF5x', '2015-12-14 17:20:00', '2015-12-15 02:15:03'),
(5, 'Shaun Murray', 'cSawayn@hotmail.com', '$2y$10$NwRl9kNYfutRCGhXHWs1UO5smoh5fZzp4o4RF/UcK.XlgFNz5DUuW', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(6, 'Paris Lang', 'Rosie.Kulas@Cole.com', '$2y$10$Swn.ZghWltsq5nVebUl5m.Vz2P3mV/W993XtpduPoOJYcy.aFyZXK', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(7, 'Cecile Yundt IV', 'Reyna.Green@gmail.com', '$2y$10$xcMY1EVBV17t5DTk4UQ/bOcKfRUi7fGgNh5HdaX8lIkMwK3UjwA1a', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(8, 'Maida Hartmann', 'Ransom.Corwin@Bradtke.com', '$2y$10$IaFKgcO0Pp9RajjTlsP2IujBJAZuspGznWhkyNvPjQvRDg.G3Gfe.', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(9, 'Isaac Wolf', 'Keeley.Gleason@gmail.com', '$2y$10$8v/3DYhE9TMFuC8iYwl1belLRmejcijtCVQCjz.rK3Xu4L0ELqrjK', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(10, 'Toby O''Reilly', 'Judah54@hotmail.com', '$2y$10$WlM7UGI77l9q2A89zDZYr.3.z.KagVV/TNZRwFL4DpFLzBBiAInYu', 'member', NULL, '2015-12-14 17:20:00', '2015-12-14 17:20:00'),
(11, 'Ricardo Fuentes', 'ricardofa1980@gmail.com', '$2y$10$Bt33xyrVLRC/1hJ1h/29..5ZFi8T/Fe.5vbpTuRBCCzmYYVq49NOC', 'admin', 'Kg5exOvIAnnRWf4ulZK1NSe78Cy67P28GYqHSviELtcjI1WscL7fiMdOnx5k', '2015-12-14 17:22:15', '2015-12-15 03:33:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_article_id_foreign` (`article_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
