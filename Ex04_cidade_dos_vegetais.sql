DROP DATABASE cidade_dos_vegetais;

CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255),
    perecivel BOOLEAN
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

INSERT INTO tb_categorias (categoria, perecivel) VALUES
("Frutas", TRUE),
("Legumes", TRUE),
("Vegetais", TRUE),
("Ervas Secas", FALSE),
("Outros", FALSE);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid) VALUES
-- Frutas --
("Morango", 50, '2024-12-10', 8.50, 1),
("Banana", 100, '2024-12-12', 6, 1),
("Melão Japonês", 2, '2024-12-14', 75, 1),

-- Legumes --
("Cenoura", 80, '2024-12-08', 4, 2),

-- Vegetais --
("Alho Poró", 40, '2024-12-05', 7.50, 3),

-- Ervas Secas --
("Alecrim", 20, NULL, 10, 4),
("Manjericão", 15, NULL, 12, 4),
("Sálvia", 25, NULL, 15, 4),

-- Outros --
("Sacola de Papel", 200, NULL, 1.50, 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50 ;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoriaid
	WHERE tb_categorias.id = 4;
