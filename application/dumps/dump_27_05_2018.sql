-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Maio-2018 às 02:23
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

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `connections`
--

CREATE TABLE `connections` (
  `id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `connection_id` int(9) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `favorite` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `connections`
--

INSERT INTO `connections` (`id`, `user_id`, `connection_id`, `created_at`, `updated_at`, `deleted_at`, `favorite`) VALUES
(1, 1, 2, '2018-05-18', NULL, NULL, 0),
(2, 1, 5, '2018-05-19', NULL, NULL, 0),
(3, 1, 22, '2018-05-19', NULL, NULL, 0),
(4, 1, 13, '2018-05-19', NULL, NULL, 0),
(5, 1, 27, '2018-05-19', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `files`
--

CREATE TABLE `files` (
  `id` int(9) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(9) NOT NULL,
  `file_type` int(6) DEFAULT NULL,
  `obs` tinytext COLLATE utf8mb4_unicode_ci,
  `users_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `file_types`
--

CREATE TABLE `file_types` (
  `id` int(6) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `functions`
--

CREATE TABLE `functions` (
  `id` int(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estrutura da tabela `instruments`
--

CREATE TABLE `instruments` (
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `category` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `instruments`
--

INSERT INTO `instruments` (`name`, `description`, `category`, `id`) VALUES
('Cravo', NULL, 'Cordas Pinçadas', 1),
('Espineta', NULL, 'Cordas Pinçadas', 2),
('Guitarra portuguesa', NULL, 'Instrumentos de cordas com braço', 3),
('Alaúde', NULL, 'Instrumentos de cordas com braço', 4),
('Baixo', NULL, 'Instrumentos de cordas com braço', 5),
('Bandola', NULL, 'Instrumentos de cordas com braço', 6),
('Balalaica', NULL, 'Instrumentos de cordas com braço', 7),
('Bandolim', NULL, 'Instrumentos de cordas com braço', 8),
('Banjo', NULL, 'Instrumentos de cordas com braço', 9),
('Berimbau', NULL, 'Instrumentos de cordas com braço', 10),
('Cavaquinho', NULL, 'Instrumentos de cordas com braço', 11),
('Charango', NULL, 'Instrumentos de cordas com braço', 12),
('Cistre', NULL, 'Instrumentos de cordas com braço', 13),
('Cítara', NULL, 'Instrumentos de cordas com braço', 14),
('Dobro', NULL, 'Instrumentos de cordas com braço', 15),
('Guitarra', NULL, 'Instrumentos de cordas com braço', 16),
('Guitarra Baiana', NULL, 'Instrumentos de cordas com braço', 17),
('Guitarra elétrica', NULL, 'Instrumentos de cordas com braço', 18),
('Tricordino', NULL, 'Instrumentos de cordas com braço', 19),
('Ukulele', NULL, 'Instrumentos de cordas com braço', 20),
('Viola caipira', NULL, 'Instrumentos de cordas com braço', 21),
('Violão', NULL, 'Instrumentos de cordas com braço', 22),
('Violão de 7 cordas', NULL, 'Instrumentos de cordas com braço', 23),
('Violão de 12 cordas', NULL, 'Instrumentos de cordas com braço', 24),
('Armontino', NULL, 'Cordas friccionadas com arco', 25),
('Contrabaixo', NULL, 'Cordas friccionadas com arco', 26),
('Hardanger Fiddle', NULL, 'Cordas friccionadas com arco', 27),
('Rabeca', NULL, 'Cordas friccionadas com arco', 28),
('Rebab', NULL, 'Cordas friccionadas com arco', 29),
('Viola', NULL, 'Cordas friccionadas com arco', 30),
('Viola de gamba', NULL, 'Cordas friccionadas com arco', 31),
('Violino', NULL, 'Cordas friccionadas com arco', 32),
('Violoncelo ou Cello', NULL, 'Cordas friccionadas com arco', 33),
('Berimbau com baqueta', NULL, 'Cordas percutidas', 34),
('Harpa Eólica', NULL, 'Cordas percutidas', 35),
('Piano', NULL, 'Cordas percutidas', 36),
('Clavicórdio', NULL, 'Cordas percutidas', 37),
('Órgão', NULL, 'Instrumentos de teclas', 38),
('Cravo', NULL, 'Instrumentos de teclas', 39),
('Acordeão', NULL, 'Instrumentos de teclas', 40),
('Vibrafone', NULL, 'Instrumentos de teclas', 41),
('Xilofone', NULL, 'Instrumentos de teclas', 42),
('Ondas Martenot', NULL, 'Instrumentos musicais eléctricos', 43),
('Teclado', NULL, 'Instrumentos musicais eléctricos', 44),
('Sintetizador', NULL, 'Instrumentos musicais eléctricos', 45),
('Sampler', NULL, 'Instrumentos musicais eléctricos', 46),
('Teremim', NULL, 'Instrumentos musicais eléctricos', 47),
('Agogô', NULL, 'Instrumentos de percussão', 48),
('Afoxé', NULL, 'Instrumentos de percussão', 49),
('Bloco sonoro', NULL, 'Instrumentos de percussão', 50),
('Cowbell', NULL, 'Instrumentos de percussão', 51),
('Carrilhão', NULL, 'Instrumentos de percussão', 52),
('Casaca', NULL, 'Instrumentos de percussão', 53),
('Castanhola', NULL, 'Instrumentos de percussão', 54),
('Caxixi', NULL, 'Instrumentos de percussão', 55),
('Chimbau', NULL, 'Instrumentos de percussão', 56),
('Chocalho', NULL, 'Instrumentos de percussão', 57),
('Drums', NULL, 'Instrumentos de percussão', 58),
('Ganzá', NULL, 'Instrumentos de percussão', 59),
('Pratos', NULL, 'Instrumentos de percussão', 60),
('Recorreco', NULL, 'Instrumentos de percussão', 61),
('Sino', NULL, 'Instrumentos de percussão', 62),
('Sinos tubulares', NULL, 'Instrumentos de percussão', 63),
('Triângulo', NULL, 'Instrumentos de percussão', 64),
('Xequerê', NULL, 'Instrumentos de percussão', 65),
('Vibrafone', NULL, 'Instrumentos de percussão', 66),
('Xilofone', NULL, 'Instrumentos de percussão', 67),
('Ceramofone', NULL, 'Instrumentos de percussão', 68),
('Marimba', NULL, 'Instrumentos de percussão', 69),
('Atabaque', NULL, 'Instrumentos membranofones percutidos', 70),
('Batá', NULL, 'Instrumentos membranofones percutidos', 71),
('Bateria', NULL, 'Instrumentos membranofones percutidos', 72),
('Bongô', NULL, 'Instrumentos membranofones percutidos', 73),
('Caixa (instrumento)', NULL, 'Instrumentos membranofones percutidos', 74),
('Cuíca', NULL, 'Instrumentos membranofones percutidos', 75),
('Pandeiro', NULL, 'Instrumentos membranofones percutidos', 76),
('Repinique', NULL, 'Instrumentos membranofones percutidos', 77),
('Surdo', NULL, 'Instrumentos membranofones percutidos', 78),
('Tantã (tambor)', NULL, 'Instrumentos membranofones percutidos', 79),
('Tambor', NULL, 'Instrumentos membranofones percutidos', 80),
('Tamborim', NULL, 'Instrumentos membranofones percutidos', 81),
('Tomtom', NULL, 'Instrumentos membranofones percutidos', 82),
('Tímpano', NULL, 'Instrumentos membranofones percutidos', 83),
('Zabumba', NULL, 'Instrumentos membranofones percutidos', 84),
('Darbuka', NULL, 'Instrumentos membranofones percutidos', 85),
('Conga', NULL, 'Instrumentos membranofones percutidos', 86),
('Cornetas de madeira ou corpo de madeira', NULL, NULL, 87),
('Corneta de pistões', NULL, NULL, 88),
('Didjeridu', NULL, NULL, 89),
('Eufônio', NULL, 'Feliscornes e tubas', 90),
('Fliscorne', NULL, 'Feliscornes e tubas', 91),
('Melofone', NULL, 'Feliscornes e tubas', 92),
('Sousafone', NULL, 'Feliscornes e tubas', 93),
('Tuba ou cuba', NULL, 'Feliscornes e tubas', 94),
('Bugle', NULL, 'Trompas de chaves', 95),
('Oficleide', NULL, 'Trompas de chaves', 96),
('Quinticlave', NULL, 'Trompas de chaves', 97),
('Trompa de chaves', NULL, 'Trompas de chaves', 98),
('Bombardão', NULL, 'Saxotrompas', 99),
('Bombardino', NULL, 'Saxotrompas', 100),
('Saxotrompa Alto', NULL, 'Saxotrompas', 101),
('Cisnopare', NULL, 'Saxotrompas', 102),
('Tripar', NULL, 'Saxotrompas', 103),
('Verinosecam', NULL, 'Saxotrompas', 104),
('Trompa de postilhão', NULL, 'Saxotrompas', 105),
('Shofar', NULL, NULL, 106),
('Sacabuxa', NULL, 'Trombones', 107),
('Trombone', NULL, 'Trombones', 108),
('Trompa', NULL, 'Trompas', 109),
('Trompa alpina', NULL, 'Trompas', 110),
('Trompa de caça', NULL, 'Trompas', 111),
('Clarim', NULL, 'Trompetes', 112),
('Trompete', NULL, 'Trompetes', 113),
('Trompete piccolo', NULL, 'Trompetes', 114);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(9) NOT NULL,
  `type` int(6) NOT NULL,
  `log` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(9) NOT NULL,
  `action` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` int(9) NOT NULL,
  `sender_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `status_message_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modules`
--

CREATE TABLE `modules` (
  `id` int(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(9) NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(6) DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `payments`
--

CREATE TABLE `payments` (
  `id` int(9) NOT NULL,
  `paying_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `value` decimal(8,5) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `status_payment_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `schedule`
--

CREATE TABLE `schedule` (
  `id` int(9) NOT NULL,
  `invitation_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `date_event` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `status_event_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `states`
--

CREATE TABLE `states` (
  `id` int(10) NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `status_events` (
  `id` int(9) NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_messages`
--

CREATE TABLE `status_messages` (
  `id` int(9) NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_payments`
--

CREATE TABLE `status_payments` (
  `id` int(9) NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Estrutura da tabela `users_instruments`
--

CREATE TABLE `users_instruments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users_profile`
--

INSERT INTO `users_profile` (`id`, `name`, `initials`) VALUES
(1, 'Cantor', 'C'),
(2, 'Instrumentista', 'I'),
(3, 'Produtor', 'P'),
(4, 'Professor', 'S'),
(5, 'Aluno', 'A'),
(6, 'Empresário', 'E'),
(7, 'Roadie', 'R'),
(8, 'Outro', 'O');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_info`
--

CREATE TABLE `user_info` (
  `id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `city_id` int(9) NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `function_id` int(9) NOT NULL,
  `phone_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_search` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_cc` varchar(26) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` int(6) DEFAULT NULL,
  `name_cc` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validate_cc` date DEFAULT NULL,
  `accepted_terms` tinyint(4) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `city_id`, `address`, `description`, `function_id`, `phone_1`, `phone_2`, `profile_type`, `priority_search`, `number_cc`, `cvv`, `name_cc`, `validate_cc`, `accepted_terms`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 99, 'Rua Taveira Júnior, 736 - Nonoai', 'Músico formado pela UFRGS em 2002, 5 anos de experiência tocando guitarra em banda de metal melódico, 4 anos de experiência tocando baixo em banda de rock e atualmente tocando violão clássico na orchestra da Ospa ', 2, '(51)98958-0602', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', '2018-05-27', NULL),
(2, 2, 55, 'Rua das Flores, 54', 'Baixista com experiência de 5 anos, tocando em banda de rock', 3, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(3, 3, 34, 'Rua Florentina, 1', 'Vocalista de banda gospel com mais de 2 anos de experiência', 1, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(4, 4, 54, 'Rua Santos dos Santos, 9999', 'Baterista iniciante procurnado banda de rock ou pop', 4, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(5, 5, 23, 'Rua Dragin Ball Z', 'Descrição que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(6, 6, 44, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(7, 7, 43, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(8, 8, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 5, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(9, 9, 66, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 6, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(10, 10, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 4, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(11, 11, 45, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 3, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(12, 12, 44, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 1, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(13, 13, 12, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(14, 14, 53, 'Rua das Flores, 54', 'Baixista com pouca experiência, tocando em banda de pagode', 3, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-12', NULL, NULL),
(15, 15, 33, 'Rua Florentina, 1', 'Vocalista de banda punk com mais de 2 anos de experiência', 1, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(16, 16, 22, 'Rua Santos dos Santos, 9999', 'Baterista profissional, 10 anos de experiência procurnado banda de metal', 4, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(17, 17, 23, 'Rua Dragin Ball Z', 'Descrição que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(18, 18, 21, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(19, 19, 98, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(20, 20, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 5, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(21, 21, 66, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 6, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(22, 22, 55, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 4, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(23, 23, 45, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 3, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(24, 24, 44, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 1, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(25, 25, 12, 'Rua Dragin Ball Z', 'Uma descrição qualquer que ocupe um bom espaço e tenha uma boa quantidade de palavras', 2, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(26, 26, 55, 'Rua das Flores, 54', 'Baixista com experiência de 5 anos, tocando em banda de rock', 3, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(27, 27, 34, 'Rua Florentina, 1', 'Vocalista de banda gospel com mais de 2 anos de experiência', 1, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL),
(28, 28, 54, 'Rua Santos dos Santos, 9999', 'Baterista iniciante procurnado banda de rock ou pop', 4, '(51)59595-5955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-05-18', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_types`
--
ALTER TABLE `file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_events`
--
ALTER TABLE `status_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_messages`
--
ALTER TABLE `status_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_payments`
--
ALTER TABLE `status_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_instruments`
--
ALTER TABLE `users_instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_types`
--
ALTER TABLE `file_types`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `status_events`
--
ALTER TABLE `status_events`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_messages`
--
ALTER TABLE `status_messages`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_payments`
--
ALTER TABLE `status_payments`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users_instruments`
--
ALTER TABLE `users_instruments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
