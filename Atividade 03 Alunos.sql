CREATE 	DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	nota INT,
    datanascimento DATE,
    email VARCHAR(255) NOT NULL,
    cpf BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_alunos MODIFY nota DECIMAL (4,2);

INSERT INTO tb_alunos (nome, nota, datanascimento, email, cpf) 
VALUES
("Antonio", 10, '2009-05-18', 'antonio@gmail.com', '45763894820'),
("Maria", 8.5, '2010-02-12', 'maria@gmail.com', '59874213569'),
("João", 3, '2008-11-30', 'joao@gmail.com', '87451236987'),
("Carla", 7, '2011-07-25', 'carla@gmail.com', '32587496123'),
("Pedro", 6.5, '2010-09-08', 'pedro@gmail.com', '74589631247'),
("Ana", 5, '2009-04-03', 'ana@gmail.com', '63251478965'),
("Carlos", 7.5, '2011-01-15', 'carlos@gmail.com', '95148723654'),
("Julia", 9.5, '2008-08-22', 'julia@gmail.com', '87459632145');

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;