CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade VARCHAR(255),
    aniversario DATE,
	salario DECIMAL (7,2) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_colaboradores RENAME COLUMN idade to genero;
ALTER TABLE tb_colaboradores MODIFY genero VARCHAR(255);

INSERT INTO tb_colaboradores (nome, genero, aniversario, salario, cargo) 
VALUES ("Pedro", "M", "2003-11-05", 4500.00, "Desenvolvedor FullStack"),
("Kaellen", "F", "2000-05-12", 8000.00, "Desenvolvedora FrontEnd"),
("Isabella", "F", "2005-01-13", 12000.00, "Desenvolvedora BackEnd"),
("Kevin", "M", "2000-06-26", 6000.00, "QA tester"),
("Bianca", "F", "1998-03-18", 9000.00, "Desenvolvedora FullStack"),
("Rodrigo", "M", "2000-08-09", 5600.00, "Técnico de T.I.");

UPDATE tb_colaboradores SET salario = 1800.00 WHERE id = 6;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
