--recuperar a data de validade de cada lote de certo ingrediente
SELECT cod_lote AS Codigo, data_vencimento AS Vence_em FROM Ingrediente, Lote WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '18';

--Recuperar a quantidade total de um ingrediente
SELECT cod_ingrediente, SUM(quantidade_lote) FROM Lote, Ingrediente WHERE Ingrediente.cod_ingrediente = Lote.cod_ingrediente AND Ingrediente.cod_ingrediente = '1' GROUP BY cod_ingrediente;

--Recuperar a media dos preços dos pratos que cada cozinheiro faz
SELECT nome_cozinheiro, AVG(preco_prato) AS media_preco_prato FROM Prato, Cozinheiro WHERE Prato.CPF = Cozinheiro.CPF GROUP BY nome_cozinheiro;

--Recuperar os pratos feitos por cada cozinheiro
SELECT nome_cozinheiro, nome_prato FROM Prato, Cozinheiro WHERE Prato.CPF = Cozinheiro.CPF;

--Recuperar receita de determinado prato
SELECT nome_prato, nome_ingrediente, quantidade_usada FROM Prato, Ingrediente, Usa WHERE Prato.cod_prato = Usa.cod_prato AND Ingrediente.cod_ingrediente = Usa.cod_ingrediente AND nome_prato = 'Bolo de chocolate';

--recuperar quais lotes um fornecedor provê
--Versao com nome do ingrediente e data de entrega
SELECT nome_fornecedor, Prove.cod_lote, nome_ingrediente, data_entrega FROM Fornecedor, Prove, Lote, Ingrediente WHERE Fornecedor.cnpj = Prove.cnpj AND Prove.cod_lote = Lote.cod_lote AND Lote.cod_ingrediente = Ingrediente.cod_ingrediente AND Fornecedor.cnpj = '83.358.102/0001-00';
--Versao só com nome e cod
SELECT nome_fornecedor, Prove.cod_lote FROM Fornecedor, Prove, Lote WHERE Fornecedor.cnpj = Prove.cnpj AND Prove.cod_lote = Lote.cod_lote AND Fornecedor.cnpj = '83.358.102/0001-00';
