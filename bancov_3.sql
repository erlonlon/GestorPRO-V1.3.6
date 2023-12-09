-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Nov-2023 às 20:55
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `finan6`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carteira`
--

CREATE TABLE `carteira` (
  `Id` int(11) NOT NULL,
  `idm` varchar(9) DEFAULT NULL,
  `valor` varchar(250) DEFAULT NULL,
  `entrada` timestamp NULL DEFAULT current_timestamp(),
  `vjurus` varchar(255) DEFAULT NULL,
  `login` varchar(15) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT '1',
  `status` varchar(2) DEFAULT '1',
  `nome` varchar(120) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `nascimento` varchar(15) DEFAULT NULL,
  `cpf` varchar(25) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `cep` varchar(25) DEFAULT NULL,
  `endereco` varchar(120) DEFAULT NULL,
  `numero` varchar(9) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `uf` varchar(5) DEFAULT NULL,
  `tokenmp` varchar(255) DEFAULT NULL,
  `tokenasaas` varchar(255) DEFAULT NULL,
  `nomecom` varchar(160) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `enderecom` varchar(160) NOT NULL,
  `contato` varchar(15) NOT NULL,
  `msg` varchar(2) DEFAULT '1',
  `msgqr` varchar(2) DEFAULT '1',
  `msgpix` varchar(2) DEFAULT '1',
  `tokenapi` varchar(60) DEFAULT NULL,
  `pagamentos` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `carteira`
--

INSERT INTO `carteira` (`Id`, `idm`, `valor`, `entrada`, `vjurus`, `login`, `senha`, `tipo`, `status`, `nome`, `celular`, `nascimento`, `cpf`, `email`, `cep`, `endereco`, `numero`, `bairro`, `complemento`, `cidade`, `uf`, `tokenmp`, `tokenasaas`, `nomecom`, `cnpj`, `enderecom`, `contato`, `msg`, `msgqr`, `msgpix`, `tokenapi`, `pagamentos`) VALUES
(1, NULL, '', '0000-00-00 00:00:00', '2076', '123456', '62080ddb606f97ed669b753828d6842264de99e7', '1', '1', 'ADMINISTRADOR MASTER', '45988080667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'APP_USR-7112687985369635-111108-25c55d81e3609918def31907ffa54fc5-107671554', '$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAyODcxMjY6OiRhYWNoXzMyZjYxNzdmLWY3MTMtNDI3MC05MjBkLTlkZDQ1ODNlNzE5Ng==', 'MODELO TESTE', '45988080667', 'RUA XXX', '45988080667', '1', '1', '1', 'e06dab6d3f37844ea3d3787c94be7616', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `idu` varchar(9) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL,
  `idm` varchar(9) DEFAULT NULL,
  `idc` varchar(9) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `entrada` timestamp NULL DEFAULT current_timestamp(),
  `vjurus` varchar(5) DEFAULT '100',
  `login` varchar(15) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT '1',
  `status` varchar(2) DEFAULT '1',
  `nome` varchar(120) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `nascimento` varchar(15) DEFAULT NULL,
  `cpf` varchar(25) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `cep` varchar(25) DEFAULT NULL,
  `endereco` varchar(120) DEFAULT NULL,
  `numero` varchar(9) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `uf` varchar(5) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `emissao` varchar(30) DEFAULT NULL,
  `uf2` varchar(6) DEFAULT NULL,
  `mae` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conexoes`
--

CREATE TABLE `conexoes` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `conn` int(11) DEFAULT 0,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `tokenid` varchar(60) DEFAULT NULL,
  `apikey` varchar(60) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conexoes`
--

INSERT INTO `conexoes` (`id`, `id_usuario`, `qrcode`, `conn`, `data_cadastro`, `data_alteracao`, `tokenid`, `apikey`) VALUES
(25, 1, '', 0, '2023-05-27 17:28:15', '2023-11-11 15:48:14', '25', '0'),
(51, 1, '', 0, '2023-11-08 17:36:54', '2023-11-11 15:48:14', 'f70d4a6245302b8d91a9e91729d6d60c', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `financeiro1`
--

CREATE TABLE `financeiro1` (
  `Id` int(11) NOT NULL,
  `idc` varchar(5) DEFAULT 'n',
  `idm` varchar(9) DEFAULT NULL,
  `idcob` varchar(5) DEFAULT 'n',
  `valorsolicitado` decimal(10,2) DEFAULT 0.00,
  `taxaj` varchar(5) DEFAULT 'n',
  `valorjurus` decimal(10,2) DEFAULT 0.00,
  `valorfinal` decimal(10,2) DEFAULT 0.00,
  `formapagamento` varchar(3) DEFAULT 'n',
  `parcelas` varchar(3) DEFAULT 'n',
  `primeiraparcela` varchar(20) DEFAULT 'n',
  `chave` varchar(60) DEFAULT 'n',
  `status` varchar(2) DEFAULT '1',
  `vparcela` decimal(10,2) DEFAULT 0.00,
  `pagoem` varchar(15) DEFAULT 'n',
  `entrada` varchar(15) DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `financeiro2`
--

CREATE TABLE `financeiro2` (
  `Id` int(11) NOT NULL,
  `idc` varchar(9) DEFAULT NULL,
  `idm` varchar(9) DEFAULT NULL,
  `chave` varchar(60) DEFAULT 'n',
  `parcela` decimal(10,2) DEFAULT 0.00,
  `datapagamento` varchar(20) DEFAULT 'n',
  `pagoem` varchar(20) DEFAULT 'n',
  `status` varchar(2) DEFAULT '1',
  `tempo` varchar(2) DEFAULT '5',
  `temp5` varchar(2) DEFAULT '1',
  `temp3` varchar(2) DEFAULT '1',
  `temp0` varchar(2) DEFAULT '1',
  `obsv` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `financeiro3`
--

CREATE TABLE `financeiro3` (
  `id` int(11) NOT NULL,
  `idm` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataentrada` datetime DEFAULT current_timestamp(),
  `valor` decimal(10,2) DEFAULT NULL,
  `datavencimento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datapagamento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observacao` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `data` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `idu` varchar(5) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `idu`, `msg`, `tipo`, `status`) VALUES
(1, '1', '#EMPRESA#\r\nCNPJ: #CNPJ#\r\nEndereço: #ENDERECO#\r\nContato: #CONTATO#\r\n\r\n==================================\r\n\r\nOlá *#NOME#*,\r\n\r\nPassando para informar que em *5* dias vence sua mensalidade no valor de:\r\n*R$: #VALOR#*\r\n\r\nPara realizar o pagamento agora basta clicar no link abaixo:\r\n#LINK#\r\n\r\nSe preferir estou te enviando nossa chave pix *Copia e Cola* logo abaixo.\r\n\r\nBasta copiar a chave e abrir seu aplicativo para realizar o pagamento.', '1', '1'),
(2, '1', 'Olá #NOME#,\r\n\r\nPassamos para informar que hoje vence sua mensalidade no valor de R$: #VALOR#.\r\n\r\nCopie a chave abaixo e no seu aplicativo na opção PIX procura a opção Pagar com chave Copia e Cola.\r\n\r\n#COPIAECOLA#\r\n\r\nVocê também poderá pagar clicando no link abaixo:\r\n\r\n#LINK#\r\n\r\n*Caso já tenha efetuado o pagamento favor desconsiderar esta cobrança.*\r\n\r\nEsta é uma mensagem automática e não precisa ser respondida.', '2', '1'),
(3, '1', 'Olá #NOME#,\r\n\r\nPassamos para informar que hoje vence sua mensalidade no valor de R$: #VALOR#.\r\n\r\nPara realizar o pagamento basta clicar no link abaixo:\r\n\r\n#LINK#\r\n\r\nCaso já tenha efetuado o pagamento por favor desconsiderar.\r\n\r\nEsta é uma mensagem automática e não precisa ser respondida.', '3', '1'),
(4, '1', '#EMPRESA#\r\nCNPJ: #CNPJ#\r\nEndereço: #ENDERECO#\r\nContato: #CONTATO#\r\n\r\n=============================\r\n\r\nOlá *#NOME#*,\r\n\r\nPassando para informar que sua mensalidade no valor de:\r\n*R$: #VALOR#* encontra-se vencida desde o dia #VENCIMENTO#.\r\n\r\nPara realizar o pagamento agora basta clicar no link abaixo:\r\n\r\n#LINK#\r\n\r\nSe preferir estou te enviando nossa chave pix *Copia e Cola* logo abaixo.\r\n\r\nBasta copiar a chave e abrir seu aplicativo para realizar o pagamento.', '4', '1'),
(5, '1', '#EMPRESA#\r\nCNPJ: #CNPJ#\r\nEndereço: #ENDERECO#\r\nContato: #CONTATO#\r\n\r\n==================================\r\n*RECIBO DE PAGAMENTO*\r\n==================================\r\nCliente: *#NOME#*\r\nData de Vencimento: #VENCIMENTO#\r\nData de Pagamento: #DATAPAGAMENTO#\r\nValor: R$: #VALOR#\r\n==================================\r\n\r\nEsta é uma mensagem automática e não precisa ser respondida.', '5', '1'),
(6, '1', '#EMPRESA#\r\nCNPJ: #CNPJ#\r\nEndereço: #ENDERECO#\r\nContato: #CONTATO#\r\n\r\n=============================\r\n\r\nOlá *#NOME#*,\r\n\r\nPassando para informar que sua mensalidade no valor de:\r\n*R$: #VALOR#* já está disponível para pagamento.\r\n\r\nPara realizar o pagamento agora basta clicar no link abaixo:\r\n\r\n#LINK#\r\n\r\nSe preferir estou te enviando nossa chave pix *Copia e Cola* logo abaixo.\r\n\r\nBasta copiar a chave e abrir seu aplicativo para realizar o pagamento.', '6', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercadopago`
--

CREATE TABLE `mercadopago` (
  `id` int(11) NOT NULL,
  `idc` varchar(20) DEFAULT NULL,
  `status` varchar(60) DEFAULT NULL,
  `instancia` varchar(60) DEFAULT NULL,
  `data` datetime NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `idp` varchar(60) NOT NULL,
  `qrcode` text NOT NULL,
  `linhad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentofun`
--

CREATE TABLE `pagamentofun` (
  `id` int(11) NOT NULL,
  `idc` varchar(9) DEFAULT NULL,
  `idm` varchar(9) DEFAULT NULL,
  `data` varchar(20) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carteira`
--
ALTER TABLE `carteira`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `conexoes`
--
ALTER TABLE `conexoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `financeiro1`
--
ALTER TABLE `financeiro1`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `financeiro2`
--
ALTER TABLE `financeiro2`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `financeiro3`
--
ALTER TABLE `financeiro3`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mercadopago`
--
ALTER TABLE `mercadopago`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagamentofun`
--
ALTER TABLE `pagamentofun`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carteira`
--
ALTER TABLE `carteira`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conexoes`
--
ALTER TABLE `conexoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `financeiro1`
--
ALTER TABLE `financeiro1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `financeiro2`
--
ALTER TABLE `financeiro2`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `financeiro3`
--
ALTER TABLE `financeiro3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de tabela `mercadopago`
--
ALTER TABLE `mercadopago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagamentofun`
--
ALTER TABLE `pagamentofun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
