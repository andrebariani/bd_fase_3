CREATE TABLE Cozinheiro(
CPF 		    			varchar(11) PRIMARY KEY,
nome_cozinheiro		   		varchar(100) NOT NULL,
salario_cozinheiro			decimal NOT NULL,
carga_horaria_cozinheiro	smallint NOT NULL CHECK(carga_horaria_cozinheiro >= 0 AND carga_horaria_cozinheiro <= 50),
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

CREATE TABLE Prato(
cod_prato		    smallint PRIMARY KEY,
CPF 		    	varchar(11),
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

FOREIGN KEY(CPF) 	REFERENCES Cozinheiro(CPF) ON DELETE SET NULL
);

CREATE TABLE Ingrediente(
cod_ingrediente		    smallint PRIMARY KEY,
nome_ingrediente		varchar(50) NOT NULL,
tipo_ingrediente		varchar(30) NOT NULL NOT NULL CHECK(
								tipo_ingrediente IN (
									'Laticinios',
									'Frutas',
									'Legumes',
									'Verduras',
									'Carnes',
									'Ovos',
									'Graos',
									'Cereais',
									'Oleos',
									'Temperos'
								)
							),
quantidade_total		smallint NOT NULL,
validade_ingrediente	smallint NOT NULL CHECK(validade_ingrediente > 0)
);

CREATE TABLE Lote(
cod_lote		    smallint PRIMARY KEY NOT NULL,
cod_ingrediente		smallint,
data_vencimento		varchar(10) NOT NULL,
quantidade_lote		smallint NOT NULL CHECK(quantidade_lote > 0),

FOREIGN KEY(cod_ingrediente) REFERENCES Ingrediente(cod_ingrediente) ON DELETE SET NULL
);

CREATE TABLE Fornecedor(
CNPJ		    	varchar(14) PRIMARY KEY,
email_fornecedor	varchar(30) NOT NULL,
rua					varchar(50) NOT NULL,
bairro				varchar(30) NOT NULL,
CEP					varchar(8) NOT NULL,
numero				varchar(8) NOT NULL,
nome_fornecedor		varchar(30) NOT NULL
);

CREATE TABLE Usa (
cod_prato 		smallint,
cod_ingrediente 	smallint,
quantidade_usada	text,

PRIMARY KEY (cod_prato, cod_ingrediente),
FOREIGN KEY (cod_prato) REFERENCES Prato(cod_prato),
FOREIGN KEY (cod_ingrediente) REFERENCES Ingrediente(cod_ingrediente)
);

CREATE TABLE Prove (
cod_lote 			smallint,
CNPJ			 	varchar(14),
data_entrega		varchar(10) NOT NULL,
PRIMARY KEY (cod_lote, CNPJ),
FOREIGN KEY (cod_lote) REFERENCES Lote(cod_lote),
FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ)
);

CREATE TABLE Telefone_Fornecedor (
CNPJ 				varchar(14) PRIMARY KEY,
FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ) ON DELETE SET NULL,
telefone_fornecedor	varchar(10)
);

DROP TABLE Telefone_Fornecedor;
DROP TABLE Prove;
DROP TABLE Usa;
DROP TABLE Fornecedor;
DROP TABLE Lote;
DROP TABLE Ingrediente;
DROP TABLE Prato;
DROP TABLE Cozinheiro;
