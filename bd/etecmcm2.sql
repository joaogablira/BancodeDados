-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/05/2025 às 14:07
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
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'Lacticínios'),
(3, 'Frios'),
(4, 'Enlatados'),
(5, 'Carnes'),
(6, 'Hortifrut'),
(7, 'Perfumaria'),
(8, 'Bebidas'),
(9, 'Eletroeletrônico'),
(10, 'Congelados'),
(11, 'Embalagens');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `preco` decimal(10,2) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `id_produto` int(11) NOT NULL,
  `marca` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `fk_categoria_id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em barra', 2.50, 50, 'Ypê', 1, 'uni'),
(2, 'Água sanitária', 3.00, 40, 'Candura', 1, '1L'),
(3, 'Queijo mussarela', 9.00, 30, 'Itambé', 2, '300g'),
(4, 'Óculos de leitura', 120.00, 10, 'Genérico', 3, 'uni'),
(5, 'Carne moída', 20.00, 20, 'Friboi', 4, '500g'),
(6, 'Milho verde enlatado', 4.00, 25, 'Quero', 5, '200g'),
(7, 'Fone de ouvido', 50.00, 15, 'Multilaser', 6, 'uni'),
(8, 'Desodorante aerosol', 12.00, 35, 'Rexona', 7, '150ml'),
(9, 'Refrigerante cola', 5.00, 60, 'Coca-Cola', 8, '2L'),
(10, 'Banana prata', 6.00, 45, 'Genérico', 9, '1kg'),
(11, 'Pizza congelada', 15.00, 20, 'Sadia', 10, '400g'),
(12, 'Presunto fatiado', 7.00, 30, 'Sadia', 2, '200g'),
(13, 'Óculos escuros', 80.00, 5, 'Genérico', 3, 'uni'),
(14, 'Frango congelado', 18.00, 12, 'Perdigão', 4, '1kg'),
(15, 'Sardinha em lata', 3.50, 40, 'Gomes da Costa', 5, '125g'),
(16, 'Carregador USB', 25.00, 18, 'Multilaser', 6, 'uni'),
(17, 'Sabonete', 2.00, 100, 'Lux', 7, '90g'),
(18, 'Suco de laranja', 6.00, 28, 'Del Valle', 8, '1L'),
(19, 'Tomate', 7.00, 35, 'Genérico', 9, '1kg'),
(20, 'Hambúrguer bovino', 14.00, 22, 'Seara', 10, '300g');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;