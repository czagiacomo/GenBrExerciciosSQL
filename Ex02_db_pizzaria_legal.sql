CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
	sabor VARCHAR(255),
    tamanho VARCHAR(255),
    preco DECIMAL(5,2),
    PRIMARY KEY (id)
);

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(255),
    menu VARCHAR(255),
	PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD categoriaid BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, menu) VALUES
    ("Tradicional", "Cardápio Principal"),
    ("Doces", "Cardápio Principal"),
    ("Saudáveis", "Cardápio Principal"),
    ("Veganas", "Cardápio Principal"),
    ("Infantil", "Menu Infantil");

INSERT INTO tb_pizzas (nome, sabor, tamanho, preco, categoriaid) VALUES
    -- Tradicional --
    ("Pizza Margherita", "Pizza tradicional com queijo mussarela, molho de tomate e manjericão.", "Grande", 35, 1),
    ("Pizza Pepperoni", "Pizza com pepperoni, queijo mussarela e molho de tomate.", "Grande", 45 , 1),
    
    -- Doces --
    ("Pizza Chocolate", "Pizza com chocolate ao leite, morango e leite condensado.", "Média", 45 , 2),
    ("Pizza Banana com Canela", "Pizza doce com banana, canela e açúcar.", "Média", 75 , 2),
    
    -- Saudáveis --
    ("Pizza Mediterrânea", "Pizza com massa integral, queijo feta, tomates cereja, azeitonas pretas, manjericão fresco e azeite de oliva.", "Média", 48 , 3),
    
    -- Veganas --
    ("Pizza Vegana", "Pizza sem ingredientes de origem animal, com cogumelos, pimentões e espinafre.", "Média", 50 , 4),

    -- Infantil --
    ("Pizza Mini Margherita", "Pizza pequena tradicional com queijo e manjericão.", "Pequena", 18 , 5),
    ("Pizza Mini Chocolate", "Pizza doce com chocolate e granulado.", "Pequena", 22 , 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco < 45 ;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoriaid WHERE tb_categorias.id = 5;
