--IMPORTANTE, FAZER OS INSERTS NA ORDEM MOSTRADA. Ou seja, primeiro cozinheiro, depois ingredientes, forncedores, pratos, etc. Thanks.

--Insert dos cozinheiros
--Template do insert (por enquanto)
--INSERT INTO Cozinheiro VALUES (*CPF*, *NOME_COZINEHIRO*, *CARGA_HORARIA*, *ESPECIALIZACAO*);

INSERT INTO Cozinheiro VALUES (165.186.270-26, "Renato dos Santos", 40, "Chef");
INSERT INTO Cozinheiro VALUES (301.773.805-19, "Severino Victor José Nascimento", 30, "Saucier");
INSERT INTO Cozinheiro VALUES (318.080.898-55, "Levi Roberto da Luz", 30, "Rôtisseur");
INSERT INTO Cozinheiro VALUES (411.690.657-32, "Cristiane Alice Elisa Carvalho", 36, "Souschef");
INSERT INTO Cozinheiro VALUES (589.348.390-15, "Marli Luzia Drumond", 36, "Pâtissier");


--Insert dos igredientes
--Template do insert (por enquanto)
--INSERT INTO Ingrediente VALUES (*CODIGO*, *NOME_INGREDIENTE*, *TIPO_INGREDIENTE*, VALIDADE_INGREDIENTE*);

INSERT INTO Ingrediente VALUES (1, "Leite", "Laticíneos", 7);
INSERT INTO Ingrediente VALUES (2, "Queijo", "Laticíneos", 10);
INSERT INTO Ingrediente VALUES (3, "Leite Consensado", "Laticíneos", 15);
INSERT INTO Ingrediente VALUES (4, "File mignon", "Carnes", 120);
INSERT INTO Ingrediente VALUES (5, "Salmão", "Carnes", 40);
INSERT INTO Ingrediente VALUES (6, "Peito de frango", "Carnes", 120);
INSERT INTO Ingrediente VALUES (7, "Sal", "Temperos", 300);
INSERT INTO Ingrediente VALUES (8, "Pimenta", "Tempreos", 300);
INSERT INTO Ingrediente VALUES (9, "Mangericão", "Temperos", 100);
INSERT INTO Ingrediente VALUES (10, "Cenoura", "Legumes", 50);
INSERT INTO Ingrediente VALUES (11, "Batata", "Legumes", 45);
INSERT INTO Ingrediente VALUES (12, "Beringela", "Legumes", 60);
INSERT INTO Ingrediente VALUES (13, "Tomate", "Fruta", 15);
INSERT INTO Ingrediente VALUES (14, "Óleo vegetal", "Óleos", 150);
INSERT INTO Ingrediente VALUES (15, "Azeite", "Óleos", 160);
INSERT INTO Ingrediente VALUES (16, "Ovo de galinha", "Ovos", 7);
INSERT INTO Ingrediente VALUES (17, "Açúcar", "Temperos", 70);
INSERT INTO Ingrediente VALUES (18, "Mostarda", "Temperos", 60);
INSERT INTO Ingrediente VALUES (19, "Arroz", "Grãos", 120);
INSERT INTO Ingrediente VALUES (20, "Cebola", "Legume", 20);
INSERT INTO Ingrediente VALUES (21, "Farinha", "Cereais", 60);
INSERT INTO Ingrediente VALUES (22, "Creme de leite", "Laticíneos", 30);
INSERT INTO Ingrediente VALUES (23, "Chocolate", "Laticíneos", 50);
INSERT INTO Ingrediente VALUES (24, "Alho", "Temperos", 20);
INSERT INTO Ingrediente VALUES (25, "Manteiga", "Oleos", 120);
INSERT INTO Ingrediente VALUES (26, "Limão", "Frutas", 10);
INSERT INTO Ingrediente VALUES (27, "Mandioca", "Legumes", 30);
INSERT INTO Ingrediente VALUES (28, "Orégano", "Temperos", 300);
INSERT INTO Ingrediente VALUES (29, "Lagosta", "Carnes", 60);
INSERT INTO Ingrediente VALUES (30, "Champignon", "Temperos", 80);
INSERT INTO Ingrediente VALUES (31, "Vinho", "Temperos", 160);


--Insert dos fornecedores
--Template do insert (por enquanto)
--INSERT INTO Fornecedor VELUES (*CNPJ*, *EMAIL_FORNECEDOR*, *RUA*, *BAIRRO*, *CEP*, *NUMERO*, *NOME_FORNECEDOR*);

INSERT INTO Fornecedor VELUES (83.358.102/0001-00, "diretoria@mateusehenrycomerciodebebidasme.com.br", "Rua João Rosa da Silva", "Vera Tereza", 17253442, 643, "Mateus e Henry Comercio de Bebidas ME");
INSERT INTO Fornecedor VELUES (17.274.942/0001-60, "presidencia@calebeevelynpadariame.com.br", "Rua Arezzo", "Parque Residencial Roland", 52157243, 270, Caleb e Evelyn Padaria ME);
INSERT INTO Fornecedor VELUES (37.166.179/0001-61, "marketing@luciaeterezaadegame.com.br", "Rua Benedito Gonçalves", "Chácara São Francisco", 62125893, 554, "Lúcia e Tereza Adega ME");
INSERT INTO Fornecedor VELUES (33.961.520/0001-10, "treinamento@raulemanuelalimentosme.com.br", "Rua Santa Virgília", "Vila Sagrado Coração de Maria", 64301923, 464, "Raul e Manuel Alimentos ME");

--Insert dos pratos
--Template do insert (por enquanto)
--INSERT INTO Prato VALUES (*CODIGO_PRATO*, *CPF*, *PRECO_PRATO*, *NOME_PRATO*, *TIPO_PRATO*);

INSERT INTO Prato VALUES (1, 301.773.805-19, 60, "Vichyssoise", "Sopas");
INSERT INTO Prato VALUES (2, 301.773.805-19, 70, "Carpaccio", "Sopas");
INSERT INTO Prato VALUES (3, 301.773.805-19, 40, "Sopa de Legumes", "Sopas");
INSERT INTO Prato VALUES (4, 318.080.898-55, 120, "File mignon", "Carnes");
INSERT INTO Prato VALUES (5, 318.080.898-55, 100, "Frango frito", "Carnes");
INSERT INTO Prato VALUES (6, 318.080.898-55, 110, "Salmão com molho a mostarda", "Carnes");
INSERT INTO Prato VALUES (7, 589.348.390-15, 70, "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Prato VALUES (8, 589.348.390-15, 80, "Bolo de chocolate", "Doces");
INSERT INTO Prato VALUES (9, 589.348.390-15, 65, "Mousse de limão", "Doces");
INSERT INTO Prato VALUES (10, 165.186.270-26, 90, "Lasagna a bolonhesa", "Massas");
INSERT INTO Prato VALUES (11, 165.186.270-26, 100, "Raviolli de carne", "Massas");
INSERT INTO Prato VALUES (12, 165.186.270-26, 80, "Pizza de mussarela", "Massas");
INSERT INTO Prato VALUES (13, 411.690.657-32, 120, "Lagosta a thermidor", "Carnes");
INSERT INTO Prato VALUES (14, 411.690.657-32, 50, "Risoto de limão siciliano", "Acompanhamentos");
INSERT INTO Prato VALUES (15, 411.690.657-32, 60, "Brusquetas", "Acompanhamentos");

--Insert dos lotes
--Template do insert (por enquanto)
--INSERT INTO Lote VALUES (*CODIGO_LOTE*, *CODIGO_INGREDIENTE*, *DATA_VENCIMENTO*, *QUANTIDADE_LOTE*);
INSERT INTO Lote VALUES (1, 1, "15/05/2017", 5);
INSERT INTO Lote VALUES (2, 1, "20/05/2017", 10);
INSERT INTO Lote VALUES (3, 1, "23/05/2017", 12);
INSERT INTO Lote VALUES (4, 2, "12/05/2017", 2);
INSERT INTO Lote VALUES (5, 2, "22/05/2017", 6);
INSERT INTO Lote VALUES (6, 2, "10/06/2017", 8);
INSERT INTO Lote VALUES (7, 3, "17/05/2017", 5);
INSERT INTO Lote VALUES (8, 3, "27/05/2017", 4);
INSERT INTO Lote VALUES (9, 3, "06/06/2017", 7);
INSERT INTO Lote VALUES (10, 4, "20/12/2017", 2);
INSERT INTO Lote VALUES (11, 4, "19/12/2017", 3);
INSERT INTO Lote VALUES (12, 4, "30/12/2017", 2);
INSERT INTO Lote VALUES (13, 5, "14/06/2017", 5);
INSERT INTO Lote VALUES (14, 5, "17/07/2017", 3);
INSERT INTO Lote VALUES (15, 5, "03/06/2017", 7);
INSERT INTO Lote VALUES (16, 6, "02/08/2017", 5);
INSERT INTO Lote VALUES (17, 6, "09/08/2017", 2);
INSERT INTO Lote VALUES (18, 6, "17/08/2017", 9);
INSERT INTO Lote VALUES (19, 7, "02/03/2018", 24);
INSERT INTO Lote VALUES (20, 7, "05/05/2018", 40);
INSERT INTO Lote VALUES (21, 7, "12/04/2018", 37);
INSERT INTO Lote VALUES (22, 8, "04/02/2018", 6);
INSERT INTO Lote VALUES (23, 8, "12/04/2018", 12);
INSERT INTO Lote VALUES (24, 8, "21/06/2018", 50);
INSERT INTO Lote VALUES (25, 9, "29/08/2017", 14);
INSERT INTO Lote VALUES (26, 9, "13/07/2017", 8);
INSERT INTO Lote VALUES (27, 9, "02/08/2017", 30);
INSERT INTO Lote VALUES (28, 10, "12/05/2017", 12);
INSERT INTO Lote VALUES (29, 10, "23/06/2017", 20);
INSERT INTO Lote VALUES (30, 10, "04/07/2017", 31);
INSERT INTO Lote VALUES (31, 11, "10/05/2017", 4);
INSERT INTO Lote VALUES (32, 11, "05/06/2017", 20);
INSERT INTO Lote VALUES (33, 11, "20/06/2017", 13);
INSERT INTO Lote VALUES (34, 12, "20/06/2017", 9);
INSERT INTO Lote VALUES (35, 12, "10/06/2017", 2);
INSERT INTO Lote VALUES (36, 12, "04/07/2017", 30);
INSERT INTO Lote VALUES (37, 13, "23/05/2017", 12);
INSERT INTO Lote VALUES (38, 13, "28/05/2017", 23);
INSERT INTO Lote VALUES (39, 13, "04/06/2017", 41);
INSERT INTO Lote VALUES (40, 14, "02/10/2017", 2);
INSERT INTO Lote VALUES (41, 14, "25/12/2017", 10);
INSERT INTO Lote VALUES (42, 14, "17/01/2018", 20);
INSERT INTO Lote VALUES (43, 15, "18/10/2017", 7);
INSERT INTO Lote VALUES (44, 15, "02/01/2018", 20);
INSERT INTO Lote VALUES (45, 15, "09/03/2018", 20);
INSERT INTO Lote VALUES (46, 16, "10/05/2017", 1);
INSERT INTO Lote VALUES (47, 16, "18/05/2017", 7);
INSERT INTO Lote VALUES (48, 16, "27/05/2017", 12);
INSERT INTO Lote VALUES (49, 17, "08/07/2017", 2);
INSERT INTO Lote VALUES (50, 17, "15/08/2017", 5);
INSERT INTO Lote VALUES (51, 17, "23/07/2017", 4);
INSERT INTO Lote VALUES (52, 18, "12/06/2017", 2);
INSERT INTO Lote VALUES (53, 18, "21/06/2017", 5);
INSERT INTO Lote VALUES (54, 18, "07/07/2017", 8);
INSERT INTO Lote VALUES (55, 19, "23/08/2017", 2);
INSERT INTO Lote VALUES (56, 19, "02/09/2017", 3);
INSERT INTO Lote VALUES (57, 19, "18/09/2017", 6);
INSERT INTO Lote VALUES (58, 20, "30/05/2017", 8);
INSERT INTO Lote VALUES (59, 20, "04/06/2017", 12);
INSERT INTO Lote VALUES (60, 20, "18/06/2017", 20);
INSERT INTO Lote VALUES (61, 21, "08/07/2017", 3);
INSERT INTO Lote VALUES (62, 21, "12/07/2017", 8);
INSERT INTO Lote VALUES (63, 21, "25/07/2017", 8);
INSERT INTO Lote VALUES (64, 22, "10/06/2017", 4);
INSERT INTO Lote VALUES (65, 22, "16/06/2017", 8);
INSERT INTO Lote VALUES (66, 22, "24/06/2017", 10);
INSERT INTO Lote VALUES (67, 23, "12/06/2017", 7);
INSERT INTO Lote VALUES (68, 23, "19/06/2017", 10);
INSERT INTO Lote VALUES (69, 23, "28/06/2017", 14);
INSERT INTO Lote VALUES (70, 24, "29/05/2017", 19);
INSERT INTO Lote VALUES (71, 24, "07/06/2017", 28);
INSERT INTO Lote VALUES (72, 24, "15/06/2017", 40);
INSERT INTO Lote VALUES (73, 25, "11/09/2017", 2);
INSERT INTO Lote VALUES (74, 25, "19/09/2017", 3);
INSERT INTO Lote VALUES (75, 25, "30/09/2017", 5);
INSERT INTO Lote VALUES (76, 26, "19/05/2017", 10);
INSERT INTO Lote VALUES (77, 26, "24/05/2017", 24);
INSERT INTO Lote VALUES (78, 26, "29/05/2017", 35);
INSERT INTO Lote VALUES (79, 27, "10/06/2017", 12);
INSERT INTO Lote VALUES (80, 27, "29/06/2017", 24);
INSERT INTO Lote VALUES (81, 27, "06/07/2017", 27);
INSERT INTO Lote VALUES (82, 28, "12/03/2018", 1);
INSERT INTO Lote VALUES (83, 28, "30/03/2018", 3);
INSERT INTO Lote VALUES (84, 28, "04/04/2018", 4);
INSERT INTO Lote VALUES (85, 29, "12/07/2017", 13);
INSERT INTO Lote VALUES (86, 29, "20/07/2017", 29);
INSERT INTO Lote VALUES (87, 29, "27/07/2017", 30);
INSERT INTO Lote VALUES (88, 30, "03/08/2017", 9);
INSERT INTO Lote VALUES (89, 30, "15/08/2017", 13);
INSERT INTO Lote VALUES (90, 30, "20/08/2017", 18);
INSERT INTO Lote VALUES (91, 31, "18/10/2017", 3);
INSERT INTO Lote VALUES (92, 31, "02/11/2017", 5);
INSERT INTO Lote VALUES (93, 31, "30/11/2017", 7);


--Insert do usa
--Template do insert (por enquanto)
--INSERT INTO Usa VALUES (*CODIGO_PRATO*, *CODIGO_INGREDIENTE*, *QUANTIDADE_USADA*);
INSERT INTO Usa VALUES (1, 11, "600g"); --"Vichyssoise"
INSERT INTO Usa VALUES (1, 24, "1 unidade"); --"Vichyssoise"
INSERT INTO Usa VALUES (1, 20, "100g"); --"Vichyssoise"
INSERT INTO Usa VALUES (1, 1, "200ml"); --"Vichyssoise"
INSERT INTO Usa VALUES (1, 22, "200ml"); --"Vichyssoise"
INSERT INTO Usa VALUES (1, 25, "100g"); --"Vichyssoise"
INSERT INTO Usa VALUES (2, 4, "300g"); -- "Carpaccio", "Sopas");
INSERT INTO Usa VALUES (2, 26, "1 unidade"); -- "Carpaccio", "Sopas");
INSERT INTO Usa VALUES (2, 15, "50ml"); -- "Carpaccio", "Sopas");
INSERT INTO Usa VALUES (2, 2, "200g"); -- "Carpaccio", "Sopas");
INSERT INTO Usa VALUES (2, 7, "uma pitada"); -- "Carpaccio", "Sopas");
INSERT INTO Usa VALUES (3, 11, "2 unidades"); -- "Sopa de Legumes", "Sopas");
INSERT INTO Usa VALUES (3, 10, "1 unidade"); -- "Sopa de Legumes", "Sopas");
INSERT INTO Usa VALUES (3, 20, "1/2 unidade"); -- "Sopa de Legumes", "Sopas");
INSERT INTO Usa VALUES (3, 1, "500ml"); -- "Sopa de Legumes", "Sopas");
INSERT INTO Usa VALUES (4, 4, "1Kg"); -- "File mignon", "Carnes");
INSERT INTO Usa VALUES (4, 7, "20g"); -- "File mignon", "Carnes");
INSERT INTO Usa VALUES (4, 8, "10g"); -- "File mignon", "Carnes");
INSERT INTO Usa VALUES (5, 6, "500g"); -- "Frango frito", "Carnes");
INSERT INTO Usa VALUES (5, 24, "2 dentes"); -- "Frango frito", "Carnes");
INSERT INTO Usa VALUES (5, 18, "2 colheres (sopa)"); -- "Frango frito", "Carnes");
INSERT INTO Usa VALUES (5, 8, "uma pitada"); -- "Frango frito", "Carnes");
INSERT INTO Usa VALUES (6, 5, "500Kg"); -- "Salmão com molho a mostarda", "Carnes");
INSERT INTO Usa VALUES (6, 24, "1 dentes"); -- "Salmão com molho a mostarda", "Carnes");
INSERT INTO Usa VALUES (6, 26, "1 colher (sopa)"); -- "Salmão com molho a mostarda", "Carnes");
INSERT INTO Usa VALUES (6, 18, "4 colheres (sopa)"); -- "Salmão com molho a mostarda", "Carnes");
INSERT INTO Usa VALUES (6, 22, "300ml"); -- "Salmão com molho a mostarda", "Carnes");
INSERT INTO Usa VALUES (7, 28, "uma pitada"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (7, 13, "1 unidade"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (7, 9, "uma pitada"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (7, 16, "3 unidades"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (7, 21, "3 xícaras"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (8, 21, "2 xícaras"); -- "Bolo de chocolate", "Doces");
INSERT INTO Usa VALUES (8, 16, "3 ovos"); -- "Bolo de chocolate", "Doces");
INSERT INTO Usa VALUES (8, 1, "300ml"); -- "Bolo de chocolate", "Doces");
INSERT INTO Usa VALUES (8, 23, "2 xícaras"); -- "Bolo de chocolate", "Doces");
INSERT INTO Usa VALUES (9, 26, "2 unidade"); -- "Mousse de limão", "Doces");
INSERT INTO Usa VALUES (9, 22, "200ml"); -- "Mousse de limão", "Doces");
INSERT INTO Usa VALUES (9, 22, "300ml"); -- "Mousse de limão", "Doces");
INSERT INTO Usa VALUES (10, 28, "uma pitada"); --  "Lasagna a bolonhesa", "Massas");
INSERT INTO Usa VALUES (10, 13, "1 unidade"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (10, 9, "uma pitada"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (10, 16, "3 unidades"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (10, 21, "3 xícaras"); -- "Spaggeti com molho a bolonhesa", "Massas")
INSERT INTO Usa VALUES (11, 28, "uma pitada"); --  "Raviolli
INSERT INTO Usa VALUES (11, 13, "1 unidade"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (11, 9, "uma pitada"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (11, 16, "3 unidades"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (11, 21, "3 xícaras"); -- "Spaggeti com molho a bolonhesa", "
INSERT INTO Usa VALUES (12, 2, "500g"); -- "Pizza de mussarela", "Massas");
INSERT INTO Usa VALUES (12, 28, "uma pitada"); --  "Raviolli
INSERT INTO Usa VALUES (12, 13, "1 unidade"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (12, 9, "uma pitada"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (12, 16, "3 unidades"); -- "Spaggeti com molho a bolonhesa", "Massas");
INSERT INTO Usa VALUES (12, 21, "3 xícaras"); -- "Spaggeti com molho a bolonhesa", "
INSERT INTO Usa VALUES (13, 29, "350g"); -- "Lagosta a thermidor", "Carnes");
INSERT INTO Usa VALUES (13, 25, "2 colheres (sopa)"); -- "Lagosta a thermidor", "Carnes");
INSERT INTO Usa VALUES (13, 21, "3 colheres (sopa)"); -- "Lagosta a thermidor", "Carnes");
INSERT INTO Usa VALUES (13, 2, "200g"); -- "Lagosta a thermidor", "Carnes");
INSERT INTO Usa VALUES (14, 26, "1 unidade"); -- "Risoto de limão siciliano", "Acompanhamentos");
INSERT INTO Usa VALUES (14, 19, "2 xícaras"); -- "Risoto de limão siciliano", "Acompanhamentos");
INSERT INTO Usa VALUES (14, 25, "100g"); -- "Risoto de limão siciliano", "Acompanhamentos");
INSERT INTO Usa VALUES (14, 31, "1 xícara"); -- "Risoto de limão siciliano", "Acompanhamentos");
INSERT INTO Usa VALUES (15, 21, "1 xícara"); -- "Brusquetas", "Acompanhamentos");
INSERT INTO Usa VALUES (15, 24, "2 dentes"); -- "Brusquetas", "Acompanhamentos");
INSERT INTO Usa VALUES (15, 15, "100ml"); -- "Brusquetas", "Acompanhamentos");
INSERT INTO Usa VALUES (15, 30, "100g"); -- "Brusquetas", "Acompanhamentos");
INSERT INTO Usa VALUES (15, 6, "300g"); -- "Brusquetas", "Acompanhamentos");

--Insert do provê
--Template do insert (por enquanto)
--INSERT INTO Prove VALUES (*CODIGO_LOTE*, *CNPJ*, *DATA_ENTREGA*);
INSERT INTO Prove VALUES (1, 83.358.102/0001-00, "08/05/2017");
INSERT INTO Prove VALUES (2, 83.358.102/0001-00, "13/05/2017");
INSERT INTO Prove VALUES (3, 83.358.102/0001-00, "16/05/2017");
INSERT INTO Prove VALUES (4, 37.166.179/0001-61, "02/05/2017");
INSERT INTO Prove VALUES (5, 37.166.179/0001-61, "12/05/2017");
INSERT INTO Prove VALUES (6, 37.166.179/0001-61, "30/05/2017");
INSERT INTO Prove VALUES (7, 83.358.102/0001-00, "02/05/2017");
INSERT INTO Prove VALUES (8, 83.358.102/0001-00, "12/05/2017");
INSERT INTO Prove VALUES (9, 83.358.102/0001-00, "18/05/2017");
INSERT INTO Prove VALUES (10, 17.274.942/0001-60, "19/05/2017");
INSERT INTO Prove VALUES (11, 17.274.942/0001-60, "04/05/2017");
INSERT INTO Prove VALUES (12, 17.274.942/0001-60, "27/04/2017");
INSERT INTO Prove VALUES (13, 33.961.520/0001-10, "29/04/2017");
INSERT INTO Prove VALUES (14, 33.961.520/0001-10, "02/05/2017");
INSERT INTO Prove VALUES (15, 33.961.520/0001-10, "18/05/2017");
INSERT INTO Prove VALUES (16, 17.274.942/0001-60, "07/04/2017");
INSERT INTO Prove VALUES (17, 17.274.942/0001-60, "14/03/2017");
INSERT INTO Prove VALUES (18, 17.274.942/0001-60, "24/03/2017");
INSERT INTO Prove VALUES (19, 37.166.179/0001-61, "07/03/2017");
INSERT INTO Prove VALUES (20, 37.166.179/0001-61, "16/05/2017");
INSERT INTO Prove VALUES (21, 37.166.179/0001-61, "26/04/2017");
INSERT INTO Prove VALUES (22, 37.166.179/0001-61, "08/02/2017");
INSERT INTO Prove VALUES (23, 37.166.179/0001-61, "19/04/2017");
INSERT INTO Prove VALUES (24, 37.166.179/0001-61, "24/06/2017");
INSERT INTO Prove VALUES (25, 83.358.102/0001-00, "03/05/2017");
INSERT INTO Prove VALUES (26, 83.358.102/0001-00, "24/04/2017");
INSERT INTO Prove VALUES (27, 83.358.102/0001-00, "21/05/2017");
INSERT INTO Prove VALUES (28, 33.961.520/0001-10, "16/03/2017");
INSERT INTO Prove VALUES (29, 33.961.520/0001-10, "03/04/2017");
INSERT INTO Prove VALUES (30, 33.961.520/0001-10, "21/05/2017");
INSERT INTO Prove VALUES (31, 17.274.942/0001-60, "26/04/2017");
INSERT INTO Prove VALUES (32, 17.274.942/0001-60, "11/05/2017");
INSERT INTO Prove VALUES (33, 17.274.942/0001-60, "02/05/2017");
INSERT INTO Prove VALUES (34, 33.961.520/0001-10, "04/05/2017");
INSERT INTO Prove VALUES (35, 33.961.520/0001-10, "12/05/2017");
INSERT INTO Prove VALUES (36, 33.961.520/0001-10, "09/06/2017");
INSERT INTO Prove VALUES (37, 83.358.102/0001-00, "04/05/2017");
INSERT INTO Prove VALUES (38, 83.358.102/0001-00, "19/05/2017");
INSERT INTO Prove VALUES (39, 83.358.102/0001-00, "26/05/2017");
INSERT INTO Prove VALUES (40, 33.961.520/0001-10, "07/03/2017");
INSERT INTO Prove VALUES (41, 33.961.520/0001-10, "16/04/2017");
INSERT INTO Prove VALUES (42, 33.961.520/0001-10, "21/05/2018");
INSERT INTO Prove VALUES (43, 83.358.102/0001-00, "12/01/2017");
INSERT INTO Prove VALUES (44, 83.358.102/0001-00, "21/03/2018");
INSERT INTO Prove VALUES (45, 83.358.102/0001-00, "29/05/2018");
INSERT INTO Prove VALUES (46, 37.166.179/0001-61, "03/05/2017");
INSERT INTO Prove VALUES (47, 37.166.179/0001-61, "11/05/2017");
INSERT INTO Prove VALUES (48, 37.166.179/0001-61, "20/05/2017");
INSERT INTO Prove VALUES (49, 17.274.942/0001-60, "01/05/2017");
INSERT INTO Prove VALUES (50, 17.274.942/0001-60, "13/05/2017");
INSERT INTO Prove VALUES (51, 17.274.942/0001-60, "26/04/2017");
INSERT INTO Prove VALUES (52, 33.961.520/0001-10, "24/04/2017");
INSERT INTO Prove VALUES (53, 33.961.520/0001-10, "14/04/2017");
INSERT INTO Prove VALUES (54, 33.961.520/0001-10, "02/05/2017");
INSERT INTO Prove VALUES (55, 17.274.942/0001-60, "13/04/2017");
INSERT INTO Prove VALUES (56, 17.274.942/0001-60, "01/05/2017");
INSERT INTO Prove VALUES (57, 17.274.942/0001-60, "11/05/2017");
INSERT INTO Prove VALUES (58, 33.961.520/0001-10, "10/05/2017");
INSERT INTO Prove VALUES (59, 33.961.520/0001-10, "06/05/2017");
INSERT INTO Prove VALUES (60, 33.961.520/0001-10, "02/05/2017");
INSERT INTO Prove VALUES (61, 83.358.102/0001-00, "16/04/2017");
INSERT INTO Prove VALUES (62, 83.358.102/0001-00, "28/04/2017");
INSERT INTO Prove VALUES (63, 83.358.102/0001-00, "10/05/2017");
INSERT INTO Prove VALUES (64, 17.274.942/0001-60, "28/04/2017");
INSERT INTO Prove VALUES (65, 17.274.942/0001-60, "02/05/2017");
INSERT INTO Prove VALUES (66, 17.274.942/0001-60, "12/05/2017");
INSERT INTO Prove VALUES (67, 33.961.520/0001-10, "25/05/2017");
INSERT INTO Prove VALUES (68, 33.961.520/0001-10, "15/05/2017");
INSERT INTO Prove VALUES (69, 33.961.520/0001-10, "02/05/2017");
INSERT INTO Prove VALUES (70, 37.166.179/0001-61, "09/05/2017");
INSERT INTO Prove VALUES (71, 37.166.179/0001-61, "17/04/2017");
INSERT INTO Prove VALUES (72, 37.166.179/0001-61, "04/04/2017");
INSERT INTO Prove VALUES (73, 83.358.102/0001-00, "02/04/2017");
INSERT INTO Prove VALUES (74, 83.358.102/0001-00, "11/04/2017");
INSERT INTO Prove VALUES (75, 83.358.102/0001-00, "27/03/2017");
INSERT INTO Prove VALUES (76, 17.274.942/0001-60, "09/05/2017");
INSERT INTO Prove VALUES (77, 17.274.942/0001-60, "10/05/2017");
INSERT INTO Prove VALUES (78, 17.274.942/0001-60, "14/05/2017");
INSERT INTO Prove VALUES (79, 33.961.520/0001-10, "10/05/2017");
INSERT INTO Prove VALUES (80, 33.961.520/0001-10, "19/05/2017");
INSERT INTO Prove VALUES (81, 33.961.520/0001-10, "29/04/2017");
INSERT INTO Prove VALUES (82, 37.166.179/0001-61, "31/05/2017");
INSERT INTO Prove VALUES (83, 37.166.179/0001-61, "11/05/2017");
INSERT INTO Prove VALUES (84, 37.166.179/0001-61, "13/04/2017");
INSERT INTO Prove VALUES (85, 83.358.102/0001-00, "24/04/2017");
INSERT INTO Prove VALUES (86, 83.358.102/0001-00, "15/04/2017");
INSERT INTO Prove VALUES (87, 83.358.102/0001-00, "04/04/2017");
INSERT INTO Prove VALUES (88, 17.274.942/0001-60, "01/05/2017");
INSERT INTO Prove VALUES (89, 17.274.942/0001-60, "08/05/2017");
INSERT INTO Prove VALUES (90, 17.274.942/0001-60, "12/05/2017");
INSERT INTO Prove VALUES (91, 33.961.520/0001-10, "02/03/2017");
INSERT INTO Prove VALUES (92, 33.961.520/0001-10, "15/04/2017");
INSERT INTO Prove VALUES (93, 33.961.520/0001-10, "25/04/2017");


--Insert do telefone_fornecedor
--Template do insert (por enquanto)
--INSERT INTO Telefone_fornecedor VALUES (*CNPJ*, *TELEFONE_FORNECEDOR*);

INSERT INTO Telefone_fornecedor VALUES (83.358.102/0001-00, 15-0771.8030);
INSERT INTO Telefone_fornecedor VALUES (83.358.102/0001-00, 15-4213.2505);
INSERT INTO Telefone_fornecedor VALUES (17.274.942/0001-60, 15-1348.4559);
INSERT INTO Telefone_fornecedor VALUES (37.166.179/0001-61, 15-1390.2413);
INSERT INTO Telefone_fornecedor VALUES (37.166.179/0001-61, 15-9321.5469);
INSERT INTO Telefone_fornecedor VALUES (37.166.179/0001-61, 15-4164.2492);
INSERT INTO Telefone_fornecedor VALUES (33.961.520/0001-10, 15-0874.2100);
INSERT INTO Telefone_fornecedor VALUES (33.961.520/0001-10, 15-1274.0923);
