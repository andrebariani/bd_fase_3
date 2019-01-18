CREATE TABLE Cozinheiro(
CPF 		    			varchar(11) PRIMARY KEY,
nome_cozinheiro		   		varchar(100) NOT NULL,
salario_cozinheiro			decimal NOT NULL,
carga_horaria_cozinheiro	smallint NOT NULL CHECK(carga_horaria_cozinheiro > 0),
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
FOREIGN KEY(CPF) 	REFERENCES Cozinheiro(CPF) ON DELETE SET NULL
preco_prato			Decimal NOT NULL,
nome_prato			varchar(50),
tipo_prato			varchar(50)
);

CREATE TABLE Ingrediente(
cod_ingrediente		    smallint PRIMARY KEY,
nome_ingrediente		varchar(50),
tipo_ingrediente		varchar(30),
quantidade_total		smallint,
validade_ingrediente	smallint
);

CREATE TABLE Lote(
cod_lote		    smallint PRIMARY KEY,
FOREIGN KEY(cod_ingrediente) REFERENCES Ingrediente(cod_ingrediente) ON DELETE SET NULL
data_vencimento		date,
quantidade_lote		smallint
);

CREATE TABLE Fornecedor(
CNPJ		    	varchar(11) PRIMARY KEY,
email_fornecedor	varchar(30),
rua					varchar(50),
bairro				varchar(30),
CEP					varchar(8),
numero				varchar(8),
nome_fornecedor		varchar(30)
);
