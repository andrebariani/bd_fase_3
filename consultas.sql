--recuperar a data de validade de cada lote de certo ingrediente
SELECT cod_lote AS Codigo, data_vencimento AS Vence_em FROM Ingrediente, Lote WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '18';

--Recuperar a quantidade total de um ingrediente
SELECT cod_ingrediente, SUM(quantidade_lote) FROM Lote, Ingrediente WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '1' GROUP BY cod_ingrediente;

--Recuperar a media dos preços dos pratos que cada cozinheiro faz
SELECT nome_cozinheiro, AVG(preco_prato) AS media_preco_prato FROM Prato, Cozinheiro WHERE Prato.CPF = Cozinheiro.CPF GROUP BY nome_cozinheiro;

--Recuperar os pratos feitos por cada cozinheiro
SELECT nome_cozinheiro, nome_prato FROM Prato, Cozinheiro WHERE Prato.CPF = Cozinheiro.CPF;

--Recuperar receita (ingrediente e quantidade) de determinado prato
SELECT nome_ingrediente, quantidade_usada FROM Ingrediente, Usa WHERE cod_prato = '8' AND Ingrediente.cod_ingrediente = Usa.cod_ingrediente;

--recuperar quais lotes um fornecedor provê
--Versao com nome do ingrediente e data de entrega
SELECT nome_fornecedor, Prove.cod_lote, nome_ingrediente, data_entrega FROM Fornecedor, Prove, Lote, Ingrediente WHERE Fornecedor.cnpj = Prove.cnpj AND Prove.cod_lote = Lote.cod_lote AND Lote.cod_ingrediente = Ingrediente.cod_ingrediente AND Fornecedor.cnpj = '83.358.102/0001-00';
--Versao só com nome e cod
SELECT nome_fornecedor, Prove.cod_lote FROM Fornecedor, Prove, Lote WHERE Fornecedor.cnpj = Prove.cnpj AND Prove.cod_lote = Lote.cod_lote AND Fornecedor.cnpj = '83.358.102/0001-00';

--Recuperar os números de telefone de um fornecedor
select telefone_fornecedor from telefone,  fornecedor where telefone.cnpj = fornecedor.cnpj AND fornecedor.cnpj = '83.358.102/0001-00';

CREATE OR REPLACE FUNCTION calcula_salario() RETURNS trigger AS $calcula_salario$
	BEGIN
        IF NEW.salario_cozinheiro > NEW.carga_horaria_cozinheiro * 80 + 500 OR NEW.salario_cozinheiro < NEW.carga_horaria_cozinheiro * 80 - 500 THEN
            UPDATE Cozinheiro SET NEW.salario_cozinheiro = ( NEW.carga_horaria_cozinheiro * 80 );
        END IF;
		RETURN NEW;
	END;
$calcula_salario$ LANGUAGE plpgsql;

CREATE TRIGGER calcula_salario AFTER INSERT ON Cozinheiro
	FOR EACH ROW EXECUTE PROCEDURE calcula_salario();

DROP TRIGGER calcula_salario ON Cozinheiro;
