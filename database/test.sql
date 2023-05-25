-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/05/2023 às 06:15
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_test`
--

CREATE TABLE `tabela_test` (
  `id` int(11) NOT NULL,
  `titulo` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sinopse` varchar(1084) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `images` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tabela_test`
--

INSERT INTO `tabela_test` (`id`, `titulo`, `sinopse`, `images`) VALUES
(0, 'Tropa de Elite', 'No filme \'Tropa de Elite\', um capitão implacável lidera uma equipe de elite no combate ao crime no Rio de Janeiro. Enfrentando corrupção policial e o tráfico de drogas, eles travam uma guerra urbana violenta e intensa. Uma história de ação e suspense que expõe a dura realidade do sistema e a luta por justiça.', '/zzz/images/im2.jpeg'),
(1, 'Spyderman', 'Em \'Spyderman\', um jovem gênio da informática se torna um vigilante cibernético para enfrentar uma conspiração global. Com a combinação de suas habilidades tecnológicas e coragem, ele luta contra inimigos poderosos para proteger a justiça. Uma aventura eletrizante repleta de ação e reviravoltas.', '/zzz/images/im1.jpeg'),
(2, 'Perdidos em Marte', 'No filme Perdidos em Marte, um astronauta é deixado para trás durante uma missão em Marte. Agora, ele precisa usar sua engenhosidade e determinação para sobreviver no planeta hostil enquanto a NASA trabalha freneticamente para resgatá-lo. Uma emocionante história de sobrevivência e esperança no espaço.', '/zzz/images/im3.jpeg'),
(3, 'Street Fighter', 'No filme Street Fighter, um grupo de heróis se une para enfrentar um ditador implacável que ameaça dominar o mundo. Com habilidades únicas de luta, eles lutam em uma batalha épica repleta de ação e artes marciais, defendendo a paz e a liberdade contra as forças do mal. Uma aventura cheia de adrenalina baseada no popular jogo de videogame.', '/zzz/images/im4.jpeg'),
(4, 'Bee movie', 'No filme \'Bee Movie\', uma abelha chamada Barry decide processar os humanos por roubar o mel das abelhas. Nessa jornada inusitada, ele descobre o impacto das suas ações no equilíbrio da natureza e na relação entre as espécies. Uma animação divertida e reflexiva sobre amizade, ecologia e o poder de fazer a diferença', '/zzz/images/im5.jpeg'),
(5, 'Planeta dos Macacos', 'No filme \'Planeta dos Macacos\', um cientista viaja para o futuro e descobre uma sociedade dominada por macacos inteligentes. Enfrentando preconceitos e desafios, ele lidera uma rebelião contra os opressores, questionando a natureza da humanidade e os limites da evolução. Uma saga épica de ficção científica repleta de ação e reflexões sobre o destino da humanidade.', '/zzz/images/im6.jpeg'),
(6, 'Exterminador', 'No filme \'Exterminador\', um ciborgue assassino é enviado do futuro para eliminar uma mulher crucial na resistência humana contra as máquinas. Ela precisa lutar pela sua sobrevivência com a ajuda de um guerreiro do futuro. Uma intensa batalha pelo destino da humanidade, repleta de suspense, ação e reviravoltas surpreendentes.', '/zzz/images/im7.jpeg'),
(7, 'Transformes', 'No filme \'Transformers\', dois grupos de robôs alienígenas, os Autobots e os Decepticons, travam uma batalha épica na Terra em busca de um artefato poderoso. Um adolescente se torna o protagonista inesperado nessa guerra, enquanto descobre segredos sobre os Transformers e luta pela sobrevivência da humanidade. Uma aventura cheia de ação, efeitos visuais impressionantes e emocionantes confrontos entre gigantes robóticos.', '/zzz/images/im8.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tabela_test`
--
ALTER TABLE `tabela_test`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
