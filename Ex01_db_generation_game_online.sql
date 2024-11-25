CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    nivel INT,
	poderataque BIGINT,
    poderdefesa BIGINT,
    PRIMARY KEY (id)
);

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    classe VARCHAR(255),
    arma VARCHAR(255),
    alcance VARCHAR(255),
    evolucao BOOLEAN,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classeid BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
	FOREIGN KEY (classeid) REFERENCES tb_classes (id);

INSERT INTO tb_classes (classe, arma, alcance, evolucao) VALUES 
    ("Mago", "Cajado", "Longo Alcance", true),
    ("Guerreiro", "Espada e Escudo", "Corpo a Corpo", false),
    ("Arqueiro", "Arco e flecha", "Longo Alcance", true),
    ("Assassino", "Adagas", "Corpo a Corpo", false),
    ("Curandeiro", "Poção", "Médio Alcance", true);
    
UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 1 WHERE id = 2;
UPDATE tb_personagens SET classeid = 2 WHERE id = 3;
UPDATE tb_personagens SET classeid = 2 WHERE id = 4;
UPDATE tb_personagens SET classeid = 3 WHERE id = 5;
UPDATE tb_personagens SET classeid = 3 WHERE id = 6;
UPDATE tb_personagens SET classeid = 4 WHERE id = 7;
UPDATE tb_personagens SET classeid = 4 WHERE id = 8;
UPDATE tb_personagens SET classeid = 5 WHERE id = 9;
UPDATE tb_personagens SET classeid = 5 WHERE id = 10;
    
INSERT INTO tb_personagens (nome, poderataque, poderdefesa, nivel, classeid) VALUES
	-- Mago --
    ("Gandalf", 5000, 500, 10, 1),
    ("Merlin", 5000, 500, 15, 1),
    
    -- Guerreiro --
    ("Link", 2500, 2500, 12, 2),
    ("Arthur", 2500, 2500, 14, 2),
    
    -- Arqueiro --
    ("Legolas", 4000, 1500, 8, 3),
    ("Artemis", 4000, 1500, 3, 3),
    
    -- Assassino --
    ("Ezio", 2000, 3500, 9, 4),
    ("Sheikah", 2000, 3500, 8, 4),
    
    -- Curandeiro --
    ("Harvey", 1000, 4500, 8, 5),
    ("Sophia", 1000, 4500, 6, 5);

SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE poderataque > 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, classe FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id WHERE classe LIKE "%Mago%";

SELECT nome, classe FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id WHERE classe LIKE "%Curandeiro%";
