-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Maio-2018 às 02:30
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicianhall`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `cities`
--

TRUNCATE TABLE `cities`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `connections`
--

CREATE TABLE IF NOT EXISTS `connections` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `connection_id` int(9) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `favorite` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `connections`
--

TRUNCATE TABLE `connections`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(9) NOT NULL,
  `file_type` int(6) DEFAULT NULL,
  `obs` tinytext COLLATE utf8mb4_unicode_ci,
  `users_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `files`
--

TRUNCATE TABLE `files`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `file_types`
--

CREATE TABLE IF NOT EXISTS `file_types` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `file_types`
--

TRUNCATE TABLE `file_types`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `functions`
--

CREATE TABLE IF NOT EXISTS `functions` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `functions`
--

TRUNCATE TABLE `functions`;
--
-- Extraindo dados da tabela `functions`
--

INSERT INTO `functions` (`id`, `name`, `description`, `type`) VALUES
(1, 'Vocalista', 'Aquele que canta em uma banda ou conjunto musical', 1),
(2, 'Guitarrista', 'Aquele que toca guitarra em uma banda ou conjunto musical', 2),
(3, 'Baixista', 'Aquele que toca contra-baixo em uma banda ou conjunto musical', 2),
(4, 'Baterista', 'Aquele que toca bateria em uma banda ou conjunto musical', 3),
(5, 'Tecladista', 'Aquele que toca teclado em uma banda ou conjunto musical', 4),
(6, 'Produtor', 'Aquele que cuida da produção musical de uma banda ou conjunto musical', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `type` int(6) NOT NULL,
  `log` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(9) NOT NULL,
  `action` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `logs`
--

TRUNCATE TABLE `logs`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sender_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `status_message_id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `messages`
--

TRUNCATE TABLE `messages`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(9) NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(6) DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `modules`
--

TRUNCATE TABLE `modules`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `paying_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `value` decimal(8,5) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `status_payment_id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `payments`
--

TRUNCATE TABLE `payments`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `invitation_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `date_event` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `status_event_id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `schedule`
--

TRUNCATE TABLE `schedule`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `states`
--

TRUNCATE TABLE `states`;
--
-- Extraindo dados da tabela `states`
--

INSERT INTO `states` (`id`, `description`, `uf`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amapá', 'AP'),
(4, 'Amazonas', 'AM'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espirito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará', 'PA'),
(15, 'Paraiba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piaui', 'PI'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rio Grande do Sul', 'RS'),
(22, 'Rondônia', 'RO'),
(23, 'Roraima', 'RR'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_events`
--

CREATE TABLE IF NOT EXISTS `status_events` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `status_events`
--

TRUNCATE TABLE `status_events`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `status_messages`
--

CREATE TABLE IF NOT EXISTS `status_messages` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `status_messages`
--

TRUNCATE TABLE `status_messages`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `status_payments`
--

CREATE TABLE IF NOT EXISTS `status_payments` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `status_payments`
--

TRUNCATE TABLE `status_payments`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`) VALUES
(1, 'William Richard Mangoni', 'willrpg@hotmail.com', '6ae199a93c381bf6d5de27491139d3f9', 1),
(2, 'João Zinho', 'joaozinho@mail.com', 'dccd96c256bc7dd39bae41a405f25e43', 2),
(3, 'Alfredo Silva', 'alf@mail.com', '893f53c159eab9178ab181bad8da4262', 2),
(4, 'Marcos Machado Macedo Mendonça', 'mmmm@mail.com', '9de37a0627c25684fdd519ca84073e34', 2),
(5, 'Dabura', 'dabura@mail.com', 'b02794347876624e7e8b4c3fb68ba47a', 2),
(6, 'Zarbon', 'zarbon@mail.com', '121ee21944ac577c7246579a849d900e', 2),
(7, 'Freza', 'freza@mail.com', '98747bac0f48f2c9687961bfae2e356d', 2),
(8, 'Rei Cold', 'reicold@mail.com', '541ed33c55c95df8fd7533780c9b270e', 2),
(9, 'Mr. Popo dbz', 'popo@mail.com', '3b2285b348e95774cb556cb36e583106', 2),
(10, 'Dodoria', 'dodoria@mail.com', '6c75bbf46f4e1332c666a61f2a8679ab', 2),
(11, 'Capitão  Guinyu', 'ginyu@mail.com', '178a3f18a924c71b3153f2790729d203', 2),
(12, 'Izzy', 'izzy@mail.com', '9db2de8e59c24b79edfad1c6e695aaee', 2),
(13, 'Rinkun', 'rinkun@mail.com', '2feb61b589e028dd3618c90ab9885fdf', 2),
(14, 'Botter', 'botter@mail.com', '0e0c534e1d6740256d87b6038563b5b2', 2),
(15, 'Nappa', 'nappa@mail.com', '7361723e3ca22a606553f20de47a72bf', 2),
(16, 'Principe dos Sayajins Vegeta', 'vegeta@mail.com', '22298fb40914e48b1556ce0c8ffa7c93', 2),
(17, 'Android Número 20', 'a20@mail.com', '550748639a1675e04db3d8a4135094a0', 2),
(18, 'Cell Júnior 1', 'celljunior1@mail.com', '05fdb81e55116b9843e93a0ff5f7fd24', 2),
(19, 'Android Número 19', 'a19@mail.com', '7db183c15847634a301761dc8b88e035', 2),
(20, 'Cell Júnior 2', 'celljunior2@mail.com', 'b9e2b08a3f6cbc7a1768b7225ac3ceaf', 2),
(21, 'Android Número 17 Lapis', 'a17@mail.com', '62a0e3d0e8d9db40e64419904a137c32', 2),
(22, 'Android Número 16', 'a16@mail.com', 'd7b24e66a3c4ea77a4a224995bc3899a', 2),
(23, 'Cell Imperfect First Form', 'cell1@mail.com', 'fb7015d29832324d57e6d020374a5c2e', 2),
(24, 'Android Número 18 Lazuli', 'a18@mail.com', '547d9b61ebf6828f37f3f1616b06eb94', 2),
(25, 'Cell Imperfect Second Form', 'cell2@mail.com', 'c88e5ab92bfa861dc6d9ba7a77aca40c', 2),
(26, 'Super Perfect Cell Last Form', 'cell4@mail.com', '4d636d672f288b78815927d5b4761f2b', 2),
(27, 'Cell Perfect Tird Form', 'cell3@mail.com', 'db6b45db0b51a6ebdc41dc54bf6322ce', 2),
(28, 'Cell Júnior 3', 'celljunior3@mail.com', 'ec7b4c501f656b750e671273c0a84fac', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `city_id` int(9) NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `function_id` int(9) NOT NULL,
  `phone_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_terms` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `user_info`
--

TRUNCATE TABLE `user_info`;
--
-- Extraindo dados da tabela `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `city_id`, `address`, `description`, `function_id`, `phone_1`, `phone_2`, `accepted_terms`) VALUES
(1, 1, 99, 'Rua Taveira Júnior, 736 - Nonoai', 'Descrição de teste', 2, '(51)98958-0602', NULL, 1),
(2, 2, 55, 'Rua das Flores, 54', 'Baixista com experiência de 5 anos, tocando em banda de rock', 3, '(51)59595-5955', NULL, 1),
(3, 3, 34, 'Rua Florentina, 1', 'Vocalista de banda gospel com mais de 2 anos de experiência', 1, '(51)59595-5955', NULL, 1),
(4, 4, 54, 'Rua Santos dos Santos, 9999', 'Baterista iniciante procurnado banda de rock ou pop', 4, '(51)59595-5955', NULL, 1),
(5, 5, 23, 'Rua Dragin Ball Z', 'Descrição que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(6, 6, 44, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(7, 7, 43, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(8, 8, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 5, '(51)59595-5955', NULL, 1),
(9, 9, 66, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 6, '(51)59595-5955', NULL, 1),
(10, 10, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 4, '(51)59595-5955', NULL, 1),
(11, 11, 45, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 3, '(51)59595-5955', NULL, 1),
(12, 12, 44, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 1, '(51)59595-5955', NULL, 1),
(13, 13, 12, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(14, 14, 53, 'Rua das Flores, 54', 'Baixista com pouca experiência, tocando em banda de pagode', 3, '(51)59595-5955', NULL, 1),
(15, 15, 33, 'Rua Florentina, 1', 'Vocalista de banda punk com mais de 2 anos de experiência', 1, '(51)59595-5955', NULL, 1),
(16, 16, 22, 'Rua Santos dos Santos, 9999', 'Baterista profissional, 10 anos de experiência procurnado banda de metal', 4, '(51)59595-5955', NULL, 1),
(17, 17, 23, 'Rua Dragin Ball Z', 'Descrição que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(18, 18, 21, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(19, 19, 98, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(20, 20, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 5, '(51)59595-5955', NULL, 1),
(21, 21, 66, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 6, '(51)59595-5955', NULL, 1),
(22, 22, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 4, '(51)59595-5955', NULL, 1),
(23, 23, 45, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 3, '(51)59595-5955', NULL, 1),
(24, 24, 44, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 1, '(51)59595-5955', NULL, 1),
(25, 25, 12, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, 1),
(26, 26, 55, 'Rua das Flores, 54', 'Baixista com experiência de 5 anos, tocando em banda de rock', 3, '(51)59595-5955', NULL, 1),
(27, 27, 34, 'Rua Florentina, 1', 'Vocalista de banda gospel com mais de 2 anos de experiência', 1, '(51)59595-5955', NULL, 1),
(28, 28, 54, 'Rua Santos dos Santos, 9999', 'Baterista iniciante procurnado banda de rock ou pop', 4, '(51)59595-5955', NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
