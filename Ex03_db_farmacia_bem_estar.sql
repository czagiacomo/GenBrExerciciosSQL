CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255),
    receita BOOLEAN
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(5,2)
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (categoria, receita) VALUES
("Medicamentos", TRUE),
("Cosméticos", FALSE),
("Higiene", FALSE),
("Vitaminas e Suplementos", TRUE),
("Primeiros Socorros", FALSE);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid) VALUES
-- Medicamentos --
("Dipirona", 1020, "2025-03-08", 5, 1),
-- Cosméticos --
("Colírio", 1200, "2025-03-15", 1, 2),
("Protetor Solar", 200, "2025-03-07", 70, 2),
-- Higiene --
("Creme Dental", 1500, "2025-03-06", 3, 3),
("Sabonete", 1800, "2025-03-09", 3.50, 3),
("Álcool em Gel", 100, "2025-03-12", 1.50, 3),
-- Vitaminas e Suplementos --
("Vitaminas", 1000, "2025-03-07", 35, 4),
-- Primeiros Socorros --
("Kit de Primeiros Socorros", 3000, "2025-03-13", 50, 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50 ;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoriaid
	WHERE tb_categorias.id = 2;
