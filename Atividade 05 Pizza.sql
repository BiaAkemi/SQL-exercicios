CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributo.
CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (tipo, descricao)
VALUES('Salgada', 'Pizzas salgadas com diversos sabores'),
('Doce', 'Pizzas doces deliciosas'),
('Vegetariana', 'Pizzas sem carne, com ingredientes vegetarianos'),
('Vegana', 'Pizza sem origem animal, feita somente com ingredientes veganos'),
('Especial', 'Pizzas especiais da casa');

SELECT * FROM tb_categorias;

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
ingredientes varchar(255) NOT NULL,
categorias_id BIGINT NOT NULL,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas (nome, preco, ingredientes, categorias_id)
VALUES 
("Margarita", 40.00, "Molho de tomate, mussarela, manjericão", 1),
("Quatro Queijos", 50.00, "Molho de tomate, mussarela, provolone, parmesão, gorgonzola", 1),
("Calabresa", 35.00, "Molho de tomate, calabresa, cebola, mussarela", 1),
("Chocolate com Morango", 60.00, "Chocolate, morango", 2),
("Vegetariana", 45.00, "Molho de tomate, mussarela, tomate, cebola, pimentão, azeitona, cogumelos", 3),
("Frango Catupiry", 55.00, "Molho de tomate, frango desfiado, catupiry", 5),
("Vegana", 40.00, "Queijo vegano, Pimentão, Orégano, Abobrinha, Calabresa vegana, Tomate", 4),
("Banana com Canela", 35.00, "Banana, canela, leite condensado", 2);

-- Teste deletando id's
DELETE FROM tb_pizzas WHERE id BETWEEN 9 AND 16;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN  50 AND 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT nome, preco, ingredientes, tb_categorias.id
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";