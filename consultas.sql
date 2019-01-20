--recuperar a data de validade de cada lote de certo ingrediente
SELECT cod_lote AS Codigo, data_vencimento AS Vence_em FROM Ingrediente, Lote WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '18';

--Recuperar a quantidade total de um ingrediente
SELECT Ingrediente.cod_ingrediente, SUM(quantidade_lote) FROM Lote, Ingrediente WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '1';

--Recuperar a media dos preços dos pratos que cada cozinheiro faz
SELECT nome_cozinheiro, AVG(preco_prato) AS media_preco_prato FROM Prato, Cozinheiro GROUP BY nome_cozinheiro;

--Recuperar Quais pratos determinado cozinheiro faz
SELECT cod_prato, nome_prato FROM Prato WHERE Prato.CPF = '165.186.270-26';

--recuperar quais lotes um fornecedor provê
--Versao com nome do ingrediente e data de entrega
SELECT nome_fornecedor, Prove.cod_lote, nome_ingrediente, data_entrega FROM Fornecedor, Prove, Lote, Ingrediente WHERE Fornecedor.cnpj = Prove.cnpj AND Prove.cod_lote = Lote.cod_lote AND Lote.cod_ingrediente = Ingrediente.cod_ingrediente AND Fornecedor.cnpj = '83.358.102/0001-00';
--Versao só com nome e cod
SELECT nome_fornecedor, Prove.cod_lote FROM Fornecedor, Prove, Lote WHERE Fornecedor.cnpj = Prove.cnpj AND Prove.cod_lote = Lote.cod_lote AND Fornecedor.cnpj = '83.358.102/0001-00';
