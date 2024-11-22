CREATE DATABASE db_zagiagrove;

USE db_zagiagrove;

CREATE TABLE tb_ovos (
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255),
    tipo VARCHAR(255),
    cor VARCHAR(255),
    quantidade INT,
    preco DECIMAL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_joias (
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255),
    tipo VARCHAR(255),
    material VARCHAR(255),
    quantidade INT,
    preco DECIMAL,
    PRIMARY KEY (id)
);

INSERT INTO tb_ovos(produto, tipo, cor, quantidade, preco) VALUES
	("Dragão Prismático", "Ovo de Dragão", "MultiColorido", 1, 12367.8),
	("Dragão de Lava", "Ovo de Dragão", "Vermelho", 3, 6677.88),
	("Dragão Aquático", "Ovo de Dragão", "Turquesa", 2, 3900.99),
	("Dragão Tatu", "Ovo de Dragão", "Marrom Escuro", 28, 300),
	("Dragão Nuvem", "Ovo de Dragão", "Branco e Azul", 0, 1098),
	("Dragão Musgo", "Ovo de Dragão", "Verde", 62, 150),
	("Dragão Mimico", "Ovo de Dragão", "Preto e Branco", 1, NULL),
	("Dragão Estígio", "Ovo de Dragão", "Preto", 1, 25000.7);

SELECT * FROM tb_ovos;

INSERT INTO tb_joias(produto, tipo, material, quantidade, preco) VALUES
	("Colar de Gelo", "Jóias Dracônicas", "Gelo do Ártico", 5, 1398),
	("Brincos Simples", "Jóias Dracônicas", "Ouro", 3, 500),
	("Brincos Especiais", "Jóias Dracônicas", "Cristal da Vida", 1, 1290);

SELECT * FROM tb_joias;

SELECT * FROM tb_ovos WHERE preco >= 500;
SELECT * FROM tb_ovos WHERE preco <= 500;

SELECT * FROM tb_joias WHERE preco = 500;

UPDATE tb_joias SET quantidade = 0 WHERE id = 3;
SELECT * FROM tb_joias;
