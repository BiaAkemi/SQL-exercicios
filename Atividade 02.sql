CREATE 	DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL (6,2) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, marca) 
VALUES ("Mineral 89", 5, "2027-11-05", 250.00, "Vichy"),
("Batom Dior Addict", "19", "2026-07-10", 149.00, "Dior"),
("Absolut Repair Kit", "6", "2029-05-03", 362.90, "L'oréal Professionnel"),
("Paleta de Sombras - Sweet Peach", "24", "2035-11-18", 366.75, "Too Faced"),
("212 Vip Rosé Kit", "10", "2030-10-20", 603.40, "Carolina Herrera"),
("Sérum Concentrado", "90", "2033-04-27", 117.52, "Bioderma"),
("Base Fluída Studio Fix", "56", "2024-03-09", 176.32, "MAC"),
("Contorno Cremoso em Bastão", "44", "2028-01-05", 4500.00, "Océane");

UPDATE tb_produtos SET preco = 41.00 WHERE id = 8;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;