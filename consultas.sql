--recuperar a data de validade de cada lote de certo ingrediente
SELECT cod_lote AS Codigo, data_vencimento AS Vence_em FROM Ingrediente, Lote WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '18';

--Recuperar a quantidade total de um ingrediente
SELECT SUM(quantidade_lote) FROM Lote, Ingrediente WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '1';

--Recuperar a media dos preços de todos os pratos
SELECT AVG(preco_prato) FROM Prato;

--Recuperar Quais pratos determinado cozinheiro faz
SELECT nome_prato FROM Prato Where Prato.CPF = '165.186.270-26';
