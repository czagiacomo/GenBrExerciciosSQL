CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    periodo VARCHAR(255),
    turma CHAR,
    nota DECIMAL(3,1),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, sobrenome, periodo, turma, nota) VALUES
    ("Joaquim", "Zagiacomo", "Manhã", "A", 9),
    ("Litha", "Zagiacomo", "Interal", "B", 7),
    ("Khepri", "De LaRue", "Interal", "C", 6.5),
    ("Zaria", "De LaRue", "Interal", "C", 0),
    ("Sunny", "De LaRue", "Interal", "C", 4),
    ("Cinnamon", "Rotolo", "Integral", "D", 10),
    ("Styx", "Kretzschmar", "Noite", "A", 2),
    ("Titania", "Zagiacomo Kretzschmar", "Noite", "D", 10);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota >= 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 6.9 WHERE id = 6;
UPDATE tb_alunos SET turma = "A" WHERE id = 8;
UPDATE tb_alunos SET nome = "Hekate" WHERE id = 8;

SELECT * FROM tb_alunos;
