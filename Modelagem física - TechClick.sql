-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 15/06/2024 às 22:21
-- Versão do servidor: 10.5.20-MariaDB
-- Versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id21173090_banco`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbEsqueci_senha`
--

CREATE TABLE `TbEsqueci_senha` (
  `id_esqueci_senha` int(11) NOT NULL,
  `nome_func` varchar(100) NOT NULL,
  `email_func` varchar(100) NOT NULL,
  `cpf_func` varchar(14) NOT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbEsqueci_senhaAprovada`
--

CREATE TABLE `TbEsqueci_senhaAprovada` (
  `id_esqueci_senha` int(11) NOT NULL,
  `nome_func` varchar(100) NOT NULL,
  `email_func` varchar(100) NOT NULL,
  `cpf_func` varchar(14) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TbEsqueci_senhaAprovada`
--

INSERT INTO `TbEsqueci_senhaAprovada` (`id_esqueci_senha`, `nome_func`, `email_func`, `cpf_func`, `id_funcionario`) VALUES
(5, 'testeparasenha', 'testeparasenha@teste.com', '147.258.369-09', 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbEsqueci_senhaDeletada`
--

CREATE TABLE `TbEsqueci_senhaDeletada` (
  `id_esqueci_senha` int(11) NOT NULL,
  `nome_func` varchar(100) NOT NULL,
  `email_func` varchar(100) NOT NULL,
  `cpf_func` varchar(14) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TbEsqueci_senhaDeletada`
--

INSERT INTO `TbEsqueci_senhaDeletada` (`id_esqueci_senha`, `nome_func`, `email_func`, `cpf_func`, `id_funcionario`) VALUES
(4, 'Ana Tonão', 'teste@gmail.com', '123.321.123-22', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbFuncionario`
--

CREATE TABLE `TbFuncionario` (
  `id_funcionario` int(11) NOT NULL,
  `funcao_funcionario` varchar(50) NOT NULL,
  `cpf_funcionario` varchar(14) NOT NULL,
  `nome_login` varchar(50) NOT NULL,
  `senha_login` varchar(50) NOT NULL,
  `datanasc_funcionario` date NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `email_funcionario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TbFuncionario`
--

INSERT INTO `TbFuncionario` (`id_funcionario`, `funcao_funcionario`, `cpf_funcionario`, `nome_login`, `senha_login`, `datanasc_funcionario`, `nome_funcionario`, `email_funcionario`) VALUES
(1, 'Administrador', '111.111.111-11', 'Will', '123', '2002-01-05', 'Willian Ferreira', 'sgwcraft777@gmail.com'),
(2, 'Funcionário', '123.123.123-12', 'teste', 'teste123', '2006-04-13', 'teste1', 'teste1@gmail.com'),
(7, 'Administrador', '437.704.508-33', 'Arthur Pires', '234', '2003-03-15', 'Arthur Pires', 'arthur.pires@fatec.sp.gov.br'),
(10, 'Administrador', '382.274.158-22', 'Pedro', '1234', '2004-05-26', 'Pedro', 'pedrocoiado26@gmail.com'),
(11, 'Funcionário', '123.321.123-22', 'Ana', '987', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(17, 'Funcionário', '123.321.123-22', 'testeparaaprovar', 'testeparaaprovar', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(18, 'Funcionário', '123.321.123-22', 'testeparaaprovar', 'testeparaaprovar', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(19, 'Funcionário', '123.321.123-22', 'testeparaaprovar', 'testeparaaprovar', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(20, 'Funcionário', '123.143.456-77', 'testeaprove', 'testeaprove', '2006-05-02', 'testeaprove', 'testeaprove@teste.com'),
(21, 'Funcionário', '147.258.369-09', 'testeparasenha', 'senhamudada', '2006-05-02', 'testeparasenha', 'testeparasenha@teste.com'),
(22, 'Funcionário', '123.143.456-77', 'testeadd', 'testeadd', '2006-05-02', 'testeaprove', 'testeaprove@teste.com'),
(24, 'Funcionário', '123.345.567-89', 'Francisco', '123123', '2006-06-06', 'Francisco', 'fran@teste.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbFuncionarioAprovado`
--

CREATE TABLE `TbFuncionarioAprovado` (
  `id_funcionario` int(11) NOT NULL,
  `funcao_funcionario` varchar(50) NOT NULL,
  `cpf_funcionario` varchar(14) NOT NULL,
  `nome_login` varchar(50) NOT NULL,
  `senha_login` varchar(50) NOT NULL,
  `datanasc_funcionario` date NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `email_funcionario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TbFuncionarioAprovado`
--

INSERT INTO `TbFuncionarioAprovado` (`id_funcionario`, `funcao_funcionario`, `cpf_funcionario`, `nome_login`, `senha_login`, `datanasc_funcionario`, `nome_funcionario`, `email_funcionario`) VALUES
(20, 'Funcionário', '123.143.456-77', 'testeaprove', 'testeaprove', '2006-05-02', 'testeaprove', 'testeaprove@teste.com'),
(22, 'Funcionário', '123.143.456-77', 'testeadd', 'testeadd', '2006-05-02', 'testeaprove', 'testeaprove@teste.com'),
(23, 'Funcionário', '123.143.456-77', 'testeadd2', 'testeadd2', '2006-05-02', 'testeaprove', 'testeaprove@teste.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbFuncionarioDeletado`
--

CREATE TABLE `TbFuncionarioDeletado` (
  `id_funcionario` int(11) NOT NULL,
  `funcao_funcionario` varchar(50) NOT NULL,
  `cpf_funcionario` varchar(14) NOT NULL,
  `nome_login` varchar(50) NOT NULL,
  `senha_login` varchar(50) NOT NULL,
  `datanasc_funcionario` date NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `email_funcionario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TbFuncionarioDeletado`
--

INSERT INTO `TbFuncionarioDeletado` (`id_funcionario`, `funcao_funcionario`, `cpf_funcionario`, `nome_login`, `senha_login`, `datanasc_funcionario`, `nome_funcionario`, `email_funcionario`) VALUES
(4, 'Funcionário', '147.258.369-10', 'Anderson', '12345', '2002-02-12', 'Anderson Alves', 'andalv@gmail.com'),
(12, 'Funcionário', '123.123.124-56', 'testeparadelete', '42445', '2006-05-02', 'testeparadelete', 'testeparadelete@gmail.com'),
(13, 'Funcionário', '123.321.123-22', 'testeparaaprovar', 'testeparaaprovar', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(14, 'Funcionário', '123.321.123-22', 'testeparaaprovar', 'testeparaaprovar', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(16, 'Funcionário', '123.321.123-22', 'testeparaaprovar', 'testeparaaprovar', '2000-01-19', 'Ana Tonão', 'teste@gmail.com'),
(23, 'Funcionário', '123.143.456-77', 'testeadd2', 'testeadd2', '2006-05-02', 'testeaprove', 'testeaprove@teste.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbMensagem_atualizacao`
--

CREATE TABLE `TbMensagem_atualizacao` (
  `id_mensagematualizacao` int(11) NOT NULL,
  `nome_mensagematualizacao` varchar(100) NOT NULL,
  `mensagem_atualizacao` varchar(500) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbProduto`
--

CREATE TABLE `TbProduto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `quantidade_produto` int(13) NOT NULL,
  `tipo_produto` varchar(50) NOT NULL,
  `descricao_produto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbSolicitacao`
--

CREATE TABLE `TbSolicitacao` (
  `id_solicitacao` int(11) NOT NULL,
  `hora_solicitacao` time NOT NULL,
  `data_solicitacao` date NOT NULL,
  `quantidade_solicitacao` int(5) NOT NULL,
  `quantidade_produto` int(11) DEFAULT NULL,
  `item_solicitacao` varchar(100) NOT NULL,
  `descricao_solicitacao` varchar(300) NOT NULL,
  `solicitante_solicitacao` varchar(100) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbSolicitacao_cadastro`
--

CREATE TABLE `TbSolicitacao_cadastro` (
  `id_solicitacao_cadastro` int(11) NOT NULL,
  `nome_func_cadastro` varchar(100) NOT NULL,
  `funcao_func_cadastro` varchar(50) NOT NULL,
  `cpf_func_cadastro` varchar(14) NOT NULL,
  `datanasc_func_cadastro` date NOT NULL,
  `email_func_cadastro` varchar(100) NOT NULL,
  `data_func_cadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TbSolicitacao_cadastroNegada`
--

CREATE TABLE `TbSolicitacao_cadastroNegada` (
  `id_solicitacao_cadastro` int(11) NOT NULL,
  `nome_func_cadastro` varchar(100) NOT NULL,
  `funcao_func_cadastro` varchar(50) NOT NULL,
  `cpf_func_cadastro` varchar(14) NOT NULL,
  `datanasc_func_cadastro` date NOT NULL,
  `email_func_cadastro` varchar(100) NOT NULL,
  `data_func_cadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `TbSolicitacao_cadastroNegada`
--

INSERT INTO `TbSolicitacao_cadastroNegada` (`id_solicitacao_cadastro`, `nome_func_cadastro`, `funcao_func_cadastro`, `cpf_func_cadastro`, `datanasc_func_cadastro`, `email_func_cadastro`, `data_func_cadastro`) VALUES
(7, 'testedelete', 'Funcionário', '123.124.345-34', '2006-05-09', 'testedelete@teste.com', '2024-05-20 21:27:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TbEsqueci_senha`
--
ALTER TABLE `TbEsqueci_senha`
  ADD PRIMARY KEY (`id_esqueci_senha`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `TbFuncionario`
--
ALTER TABLE `TbFuncionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `TbFuncionarioDeletado`
--
ALTER TABLE `TbFuncionarioDeletado`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `TbMensagem_atualizacao`
--
ALTER TABLE `TbMensagem_atualizacao`
  ADD PRIMARY KEY (`id_mensagematualizacao`),
  ADD KEY `fk_Funci_mensagem` (`id_funcionario`);

--
-- Índices de tabela `TbProduto`
--
ALTER TABLE `TbProduto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `TbSolicitacao`
--
ALTER TABLE `TbSolicitacao`
  ADD PRIMARY KEY (`id_solicitacao`),
  ADD KEY `fk_Produto_Solicitacao` (`id_produto`),
  ADD KEY `fk_Funcionario_Solicitacao` (`id_funcionario`);

--
-- Índices de tabela `TbSolicitacao_cadastro`
--
ALTER TABLE `TbSolicitacao_cadastro`
  ADD PRIMARY KEY (`id_solicitacao_cadastro`);

--
-- Índices de tabela `TbSolicitacao_cadastroNegada`
--
ALTER TABLE `TbSolicitacao_cadastroNegada`
  ADD PRIMARY KEY (`id_solicitacao_cadastro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TbEsqueci_senha`
--
ALTER TABLE `TbEsqueci_senha`
  MODIFY `id_esqueci_senha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `TbFuncionario`
--
ALTER TABLE `TbFuncionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `TbMensagem_atualizacao`
--
ALTER TABLE `TbMensagem_atualizacao`
  MODIFY `id_mensagematualizacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TbProduto`
--
ALTER TABLE `TbProduto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TbSolicitacao`
--
ALTER TABLE `TbSolicitacao`
  MODIFY `id_solicitacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TbSolicitacao_cadastro`
--
ALTER TABLE `TbSolicitacao_cadastro`
  MODIFY `id_solicitacao_cadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TbEsqueci_senha`
--
ALTER TABLE `TbEsqueci_senha`
  ADD CONSTRAINT `TbEsqueci_senha_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `TbFuncionario` (`id_funcionario`);

--
-- Restrições para tabelas `TbMensagem_atualizacao`
--
ALTER TABLE `TbMensagem_atualizacao`
  ADD CONSTRAINT `fk_Funci_mensagem` FOREIGN KEY (`id_funcionario`) REFERENCES `TbFuncionario` (`id_funcionario`);

--
-- Restrições para tabelas `TbSolicitacao`
--
ALTER TABLE `TbSolicitacao`
  ADD CONSTRAINT `fk_Funcionario_Solicitacao` FOREIGN KEY (`id_funcionario`) REFERENCES `TbFuncionario` (`id_funcionario`),
  ADD CONSTRAINT `fk_Produto_Solicitacao` FOREIGN KEY (`id_produto`) REFERENCES `TbProduto` (`id_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
