-- Consultas realizadas no banco de dados

--recuperar a data de validade de cada lote de certo ingrediente
-- Autor: Giovani
-- Exemplo de <codingrediente> = '18'
SELECT cod_lote AS Codigo, data_vencimento AS Vence_em FROM Ingrediente, Lote WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = <codingrediente>;

--Recuperar a quantidade total de um ingrediente
-- Autor: Giovani
-- Exemplo de <codingrediente> = '4'
SELECT Ingrediente.cod_ingrediente, SUM(quantidade_lote) FROM Lote, Ingrediente WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = <codingrediente> GROUP BY Ingrediente.cod_ingrediente;

--Recuperar a media dos preços dos pratos que cada cozinheiro faz
-- Autor: André
SELECT nome_cozinheiro, AVG(preco_prato) AS media_preco_prato FROM Prato, Cozinheiro WHERE Prato.CPF = Cozinheiro.CPF GROUP BY nome_cozinheiro;

--Recuperar receita (ingrediente e quantidade) de determinado prato
-- Autor: André
-- Exemplo de <codprato> = '8'
SELECT nome_ingrediente, quantidade_usada FROM Ingrediente, Usa WHERE cod_prato = <codprato> AND Ingrediente.cod_ingrediente = Usa.cod_ingrediente;

--recuperar quais lotes um fornecedor provê
-- Autor: Mariane
-- Exemplo de <cnpj> = '17.274.942/0001-60'
SELECT nome_fornecedor, Prove.cod_lote FROM Fornecedor, Prove WHERE Fornecedor.cnpj = Prove.cnpj AND Fornecedor.cnpj = <cnpj>;

--Recuperar os números de telefone de um fornecedor
-- Autor: Mariane
-- Exemplo de <cnpj> = '83.358.102/0001-00'
select telefone_fornecedor from telefone,  fornecedor where telefone.cnpj = fornecedor.cnpj AND fornecedor.cnpj = <cnpj>;

-- Implementação da Trigger
CREATE OR REPLACE FUNCTION calcula_salario() RETURNS trigger AS $calcula_salario$
	BEGIN
        IF NEW.salario_cozinheiro > (NEW.carga_horaria_cozinheiro * 80) + 500 OR NEW.salario_cozinheiro < NEW.carga_horaria_cozinheiro * 80 - 500 THEN
            UPDATE Cozinheiro SET salario_cozinheiro = ( carga_horaria_cozinheiro * 80 ) WHERE Cozinheiro.CPF = NEW.CPF;
        END IF;
		RETURN NEW;
	END;
$calcula_salario$ LANGUAGE plpgsql;

CREATE TRIGGER calcula_salario AFTER INSERT ON Cozinheiro
	FOR EACH ROW EXECUTE PROCEDURE calcula_salario();

DROP TRIGGER calcula_salario ON Cozinheiro;
