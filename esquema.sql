-- Script de Criação do Banco de Dados para o projeto do restaurante Luigi's
-- Todas as denominação e estruturas das entidades refletem o modelo relacional da Figura 3 no relatório.

-- Criação da Tabela da entidade Cozinheiro
CREATE TABLE Cozinheiro(
CPF 		    			varchar(14) PRIMARY KEY,
nome_cozinheiro		   		varchar(100) NOT NULL,
salario_cozinheiro			decimal NOT NULL CHECK(salario_cozinheiro > 0) DEFAULT 0,
carga_horaria_cozinheiro	smallint NOT NULL CHECK(carga_horaria_cozinheiro >= 0 AND carga_horaria_cozinheiro <= 50) DEFAULT 0,
especializacao_cozinheiro 	varchar(15) NOT NULL CHECK(
								especializacao_cozinheiro IN (
									'Souschef',
									'Saucier' ,
									'Entremetier',
									'Patissier',
									'Rotisseur'
								)
							)
);

-- Criação da Tabela da Entidade Prato
CREATE TABLE Prato(
cod_prato		    smallint PRIMARY KEY,
CPF 		    	varchar(14),
preco_prato			Decimal NOT NULL CHECK(preco_prato > 0),
nome_prato			varchar(50) NOT NULL,
tipo_prato			varchar(50) NOT NULL CHECK(
								tipo_prato IN (
									'Entrada',
									'Acompanhamento',
									'Prato principal',
									'Sobremesa'
								)
							),

FOREIGN KEY(CPF) 	REFERENCES Cozinheiro(CPF) ON DELETE CASCADE
);

-- Criação da Tabela da Entidade Ingrediente
CREATE TABLE Ingrediente(
cod_ingrediente		    smallint PRIMARY KEY,
nome_ingrediente		varchar(50) NOT NULL,
tipo_ingrediente		varchar(30) NOT NULL NOT NULL CHECK(
								tipo_ingrediente IN (
									'Laticínios',
									'Frutas',
									'Legumes',
									'Verduras',
									'Carnes',
									'Ovos',
									'Grãos',
									'Cereais',
									'Óleos',
									'Temperos'
								)
							),
quantidade_total		smallint NOT NULL
);

-- Criação da Tabela da Entidade Lote
CREATE TABLE Lote(
cod_lote		    smallint PRIMARY KEY NOT NULL,
cod_ingrediente		smallint,
data_vencimento		varchar(10) NOT NULL,
quantidade_lote		smallint NOT NULL CHECK(quantidade_lote > 0),

FOREIGN KEY(cod_ingrediente) REFERENCES Ingrediente(cod_ingrediente) ON DELETE CASCADE
);

-- Criação da Tabela da Entidade Fornecedor
CREATE TABLE Fornecedor(
CNPJ		    	varchar(18) PRIMARY KEY,
email_fornecedor	varchar(50) NOT NULL,
rua					varchar(50) NOT NULL,
bairro				varchar(50) NOT NULL,
CEP					varchar(9) NOT NULL,
numero				smallint NOT NULL,
nome_fornecedor		varchar(50) NOT NULL
);

-- Criação da Tabela do relacionamento Usa
CREATE TABLE Usa (
cod_prato 		smallint,
cod_ingrediente 	smallint,
quantidade_usada	text,

PRIMARY KEY (cod_prato, cod_ingrediente),
FOREIGN KEY (cod_prato) REFERENCES Prato(cod_prato) ON DELETE CASCADE,
FOREIGN KEY (cod_ingrediente) REFERENCES Ingrediente(cod_ingrediente) ON DELETE CASCADE
);

-- Criação da Tabela do relacionamento Provê
CREATE TABLE Prove (
cod_lote 			smallint,
CNPJ			 	varchar(18),
data_entrega		varchar(10) NOT NULL,

PRIMARY KEY (cod_lote, CNPJ),
FOREIGN KEY (cod_lote) REFERENCES Lote(cod_lote) ON DELETE CASCADE,
FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ) ON DELETE CASCADE
);

-- Criação da Tabela do atributo multi-valorado Telefone_Fornecedor
CREATE TABLE Telefone_Fornecedor (
cod_telefone 		smallint PRIMARY KEY,
CNPJ			 	varchar(18),
telefone_fornecedor	varchar(14),

FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ) ON DELETE CASCADE
);

DROP TABLE Telefone_Fornecedor;
DROP TABLE Prove;
DROP TABLE Usa;
DROP TABLE Fornecedor;
DROP TABLE Lote;
DROP TABLE Ingrediente;
DROP TABLE Prato;
DROP TABLE Cozinheiro;

SELECT * FROM Telefone_Fornecedor;
SELECT * FROM Prove;
SELECT * FROM Usa;
SELECT * FROM Fornecedor;
SELECT * FROM Lote;
SELECT * FROM Ingrediente;
SELECT * FROM Prato;
SELECT * FROM Cozinheiro;
