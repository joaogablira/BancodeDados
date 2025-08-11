-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:28
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
-- Banco de dados: `restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arearestaurante`
--

CREATE TABLE `arearestaurante` (
  `codarea` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arearestaurante`
--

INSERT INTO `arearestaurante` (`codarea`, `descricao`) VALUES
(1, 'Salão Principal'),
(2, 'Varanda'),
(3, 'Área VIP'),
(4, 'Mezanino'),
(5, 'Jardim Externo'),
(6, 'Lounge Bar'),
(7, 'Área Kids'),
(8, 'Pátio Interno'),
(9, 'Balcão'),
(10, 'Terraço Panorâmico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `codgarcom` int(11) NOT NULL,
  `codmesa` int(11) NOT NULL,
  `horarioentrada` datetime NOT NULL,
  `horariosaida` datetime NOT NULL,
  `qtdpessoas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `codgarcom`, `codmesa`, `horarioentrada`, `horariosaida`, `qtdpessoas`) VALUES
(1, 1, 1, '2025-08-10 19:00:00', '2025-08-10 21:00:00', 4),
(2, 2, 2, '2025-08-10 20:00:00', '2025-08-10 21:30:00', 2),
(3, 3, 3, '2025-08-09 18:30:00', '2025-08-09 20:45:00', 6),
(4, 4, 4, '2025-08-08 19:15:00', '2025-08-08 21:15:00', 4),
(5, 5, 5, '2025-08-07 20:00:00', '2025-08-07 22:30:00', 8),
(6, 6, 6, '2025-08-06 19:45:00', '2025-08-06 21:20:00', 4),
(7, 7, 7, '2025-08-05 18:50:00', '2025-08-05 20:10:00', 2),
(8, 8, 8, '2025-08-04 19:05:00', '2025-08-04 21:00:00', 4),
(9, 9, 9, '2025-08-03 20:10:00', '2025-08-03 22:40:00', 6),
(10, 10, 10, '2025-08-02 19:40:00', '2025-08-02 21:10:00', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conta`
--

CREATE TABLE `conta` (
  `codconta` int(11) NOT NULL,
  `data` date NOT NULL,
  `valortotal` decimal(10,2) NOT NULL,
  `valorppessoa` decimal(10,2) NOT NULL,
  `codmesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conta`
--

INSERT INTO `conta` (`codconta`, `data`, `valortotal`, `valorppessoa`, `codmesa`) VALUES
(1, '2025-08-10', 180.00, 45.00, 1),
(2, '2025-08-10', 96.00, 48.00, 2),
(3, '2025-08-09', 300.00, 50.00, 3),
(4, '2025-08-08', 200.00, 50.00, 4),
(5, '2025-08-07', 680.00, 85.00, 5),
(6, '2025-08-06', 160.00, 40.00, 6),
(7, '2025-08-05', 80.00, 40.00, 7),
(8, '2025-08-04', 140.00, 35.00, 8),
(9, '2025-08-03', 360.00, 60.00, 9),
(10, '2025-08-02', 96.00, 48.00, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcom`
--

CREATE TABLE `garcom` (
  `codgarcom` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `garcom`
--

INSERT INTO `garcom` (`codgarcom`, `nome`) VALUES
(1, 'Carlos Mendes'),
(2, 'Fernanda Silva'),
(3, 'João Pereira'),
(4, 'Ana Souza'),
(5, 'Lucas Oliveira'),
(6, 'Mariana Costa'),
(7, 'Paulo Henrique'),
(8, 'Patrícia Rocha'),
(9, 'Ricardo Alves'),
(10, 'Beatriz Santos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `coditem` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item`
--

INSERT INTO `item` (`coditem`, `nome`, `preco`) VALUES
(1, 'Pizza Margherita', 45.00),
(2, 'Pizza Calabresa', 48.00),
(3, 'Lasanha à Bolonhesa', 55.00),
(4, 'Spaghetti Carbonara', 50.00),
(5, 'Salada Caesar', 35.00),
(6, 'Filé Mignon ao Molho Madeira', 85.00),
(7, 'Frango Grelhado', 40.00),
(8, 'Batata Frita', 20.00),
(9, 'Suco Natural', 12.00),
(10, 'Refrigerante Lata', 8.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `itensconta`
--

CREATE TABLE `itensconta` (
  `cod_itensconta` int(11) NOT NULL,
  `codconta` int(11) NOT NULL,
  `coditem` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  `totalitem` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itensconta`
--

INSERT INTO `itensconta` (`cod_itensconta`, `codconta`, `coditem`, `qtde`, `totalitem`) VALUES
(1, 1, 1, 2, 90.00),
(2, 1, 9, 2, 24.00),
(3, 2, 2, 2, 96.00),
(4, 3, 3, 3, 165.00),
(5, 3, 8, 3, 60.00),
(6, 4, 4, 4, 200.00),
(7, 5, 6, 4, 340.00),
(8, 5, 5, 4, 140.00),
(9, 6, 7, 4, 160.00),
(10, 7, 2, 2, 96.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `codmesa` int(11) NOT NULL,
  `comporta` int(11) NOT NULL,
  `codarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mesa`
--

INSERT INTO `mesa` (`codmesa`, `comporta`, `codarea`) VALUES
(1, 4, 1),
(2, 2, 1),
(3, 6, 2),
(4, 4, 3),
(5, 8, 4),
(6, 4, 5),
(7, 2, 6),
(8, 4, 7),
(9, 6, 8),
(10, 2, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  ADD PRIMARY KEY (`codarea`);

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `codgarcom` (`codgarcom`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Índices de tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`codconta`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Índices de tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`codgarcom`);

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`coditem`);

--
-- Índices de tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD PRIMARY KEY (`cod_itensconta`),
  ADD KEY `codconta` (`codconta`),
  ADD KEY `coditem` (`coditem`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`codmesa`),
  ADD KEY `codarea` (`codarea`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  MODIFY `codarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `codconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `garcom`
--
ALTER TABLE `garcom`
  MODIFY `codgarcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `coditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itensconta`
--
ALTER TABLE `itensconta`
  MODIFY `cod_itensconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `codmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codgarcom`) REFERENCES `garcom` (`codgarcom`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Restrições para tabelas `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Restrições para tabelas `itensconta`
--
ALTER TABLE `itensconta`
  ADD CONSTRAINT `itensconta_ibfk_1` FOREIGN KEY (`codconta`) REFERENCES `conta` (`codconta`),
  ADD CONSTRAINT `itensconta_ibfk_2` FOREIGN KEY (`coditem`) REFERENCES `item` (`coditem`);

--
-- Restrições para tabelas `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`codarea`) REFERENCES `arearestaurante` (`codarea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
