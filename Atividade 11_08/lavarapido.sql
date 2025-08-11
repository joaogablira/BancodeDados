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
-- Banco de dados: `lavarapido`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codos` int(11) NOT NULL,
  `codcarro` int(11) NOT NULL,
  `totalgeral` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codos`, `codcarro`, `totalgeral`, `data`) VALUES
(1, 1, 80.00, '2025-01-10'),
(2, 2, 150.00, '2025-01-12'),
(3, 3, 120.00, '2025-01-15'),
(4, 4, 50.00, '2025-01-18'),
(5, 5, 200.00, '2025-01-20'),
(6, 6, 250.00, '2025-01-25'),
(7, 7, 90.00, '2025-01-28'),
(8, 8, 40.00, '2025-02-01'),
(9, 9, 300.00, '2025-02-05'),
(10, 10, 100.00, '2025-02-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `cosdatendimentoservico` int(11) NOT NULL,
  `codos` int(11) NOT NULL,
  `codoservico` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  `totalserv` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`cosdatendimentoservico`, `codos`, `codoservico`, `qtde`, `totalserv`) VALUES
(1, 1, 3, 1, 80.00),
(2, 2, 4, 1, 150.00),
(3, 3, 5, 1, 120.00),
(4, 4, 2, 1, 50.00),
(5, 5, 7, 1, 200.00),
(6, 6, 10, 1, 250.00),
(7, 7, 8, 1, 90.00),
(8, 8, 9, 1, 40.00),
(9, 9, 1, 2, 60.00),
(10, 10, 6, 1, 100.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `ano` int(11) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `codmodelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `placa`, `ano`, `codcliente`, `codmodelo`) VALUES
(1, 'ABC1A23', 2018, 1, 1),
(2, 'DEF4B56', 2020, 2, 2),
(3, 'GHI7C89', 2017, 3, 3),
(4, 'JKL0D12', 2021, 4, 4),
(5, 'MNO3E45', 2016, 5, 5),
(6, 'PQR6F78', 2019, 6, 6),
(7, 'STU9G01', 2015, 7, 7),
(8, 'VWX2H34', 2022, 8, 8),
(9, 'YZA5I67', 2018, 9, 9),
(10, 'BCD8J90', 2020, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codendereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `codendereco`) VALUES
(1, 'João Silva', '1985-04-12', '11999990001', 'joao.silva@email.com', 1),
(2, 'Maria Souza', '1990-07-23', '11999990002', 'maria.souza@email.com', 2),
(3, 'Carlos Pereira', '1982-09-15', '41999990003', 'carlos.pereira@email.com', 3),
(4, 'Ana Costa', '1995-01-05', '21999990004', 'ana.costa@email.com', 4),
(5, 'Pedro Lima', '1978-05-30', '31999990005', 'pedro.lima@email.com', 5),
(6, 'Fernanda Rocha', '1993-11-08', '31999990006', 'fernanda.rocha@email.com', 6),
(7, 'Lucas Martins', '1988-03-18', '62999990007', 'lucas.martins@email.com', 7),
(8, 'Patrícia Alves', '1991-08-21', '48999990008', 'patricia.alves@email.com', 8),
(9, 'Rafael Gomes', '1984-12-11', '51999990009', 'rafael.gomes@email.com', 9),
(10, 'Beatriz Fernandes', '1996-06-14', '81999990010', 'beatriz.fernandes@email.com', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `num` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP', '01000-000'),
(2, 'Av. Paulista', '1500', 'Bela Vista', 'São Paulo', 'SP', '01310-200'),
(3, 'Rua XV de Novembro', '45', 'Centro', 'Curitiba', 'PR', '80020-310'),
(4, 'Av. Atlântica', '300', 'Copacabana', 'Rio de Janeiro', 'RJ', '22070-000'),
(5, 'Rua Bahia', '87', 'Savassi', 'Belo Horizonte', 'MG', '30160-011'),
(6, 'Rua Pernambuco', '54', 'Funcionários', 'Belo Horizonte', 'MG', '30130-150'),
(7, 'Av. Brasil', '2000', 'Jardim América', 'Goiânia', 'GO', '74170-010'),
(8, 'Rua das Palmeiras', '12', 'Centro', 'Florianópolis', 'SC', '88010-101'),
(9, 'Av. Independência', '500', 'Centro', 'Porto Alegre', 'RS', '90035-076'),
(10, 'Rua do Sol', '77', 'Boa Vista', 'Recife', 'PE', '50030-150');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Ford'),
(4, 'Chevrolet'),
(5, 'Volkswagen'),
(6, 'Hyundai'),
(7, 'Fiat'),
(8, 'Nissan'),
(9, 'Renault'),
(10, 'Peugeot');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `codmarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Civic', 2),
(3, 'Focus', 3),
(4, 'Onix', 4),
(5, 'Golf', 5),
(6, 'HB20', 6),
(7, 'Argo', 7),
(8, 'Versa', 8),
(9, 'Kwid', 9),
(10, '208', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codoservico` int(11) NOT NULL,
  `servico` varchar(100) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codoservico`, `servico`, `valor`) VALUES
(1, 'Lavagem Simples', 30.00),
(2, 'Lavagem Completa', 50.00),
(3, 'Higienização Interna', 80.00),
(4, 'Polimento', 150.00),
(5, 'Enceramento', 120.00),
(6, 'Lavagem do Motor', 70.00),
(7, 'Cristalização de Pintura', 200.00),
(8, 'Limpeza de Bancos', 90.00),
(9, 'Aspiração Completa', 40.00),
(10, 'Lavagem Premium', 250.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codos`),
  ADD KEY `codcarro` (`codcarro`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`cosdatendimentoservico`),
  ADD KEY `codos` (`codos`),
  ADD KEY `codoservico` (`codoservico`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `codendereco` (`codendereco`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `codmarca` (`codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codoservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `cosdatendimentoservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codoservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codcarro`) REFERENCES `carro` (`codcarro`);

--
-- Restrições para tabelas `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`codos`) REFERENCES `atendimento` (`codos`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`codoservico`) REFERENCES `servico` (`codoservico`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
