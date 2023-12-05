-- Criando o Banco de Dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Criando a tabela classes
CREATE TABLE  tb_classes (
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
tipo varchar(255),
PRIMARY KEY (id)
);

-- Inserindo tb_classes
INSERT INTO tb_classes (classe, tipo) 
VALUES ("Mago", "Mágico"),
("Arqueiro", "Arco e flecha"),
("Lutador", "Corpo a corpo"),
("Curandeiro", "Cura"),
("Guerreiro", "Espada");

SELECT * FROM tb_classes;

-- Criando a tabela tb_personagens
CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
pa INT,
pd INT,
classes_id BIGINT,
FOREIGN KEY (classes_id) REFERENCES tb_classes(id),
PRIMARY KEY (id)
);

-- Inserindo registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, pa, pd, classes_id)
VALUES 
("Lux", 2500, 1500, 1),
("Varus", 2200, 1300, 2),
("Syndra", 2000, 1200, 1),
("Soraka", 1800, 1000, 4),
("Vayne", 3000, 2000, 2),
("Ziggs", 2700, 1800, 1),
("Sett", 2400, 1600, 3),
("Garen", 2600, 1700, 3);

UPDATE tb_personagens SET pd = 2500 WHERE id = 8;
UPDATE tb_personagens SET nome = "Cassiopeia" WHERE id = 1;

SELECT * FROM tb_personagens;

-- PA MAIOR QUE 2000
SELECT * FROM tb_personagens WHERE pa > 2000;

-- PD ENTRE 1000 E 2000
SELECT * FROM tb_personagens WHERE pd BETWEEN 1000 AND 2000;

-- PERSONAGENS QUE TENHAM C NO NOME
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

--  INNER JOIN
SELECT nome, pa, pd, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

-- INNER JOIN Somente magos
SELECT nome, pa, pd, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.classe = "Mago";


