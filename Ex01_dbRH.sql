CREATE DATABASE db_zagiatecontrata;

USE db_zagiatecontrata;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    nascimento DATE,
    cargo VARCHAR(255),
    salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, nascimento, cargo, salario) VALUES
	("Zagia", "1999-07-29", "Diretora de Contratos", 9999.99),
    ("Aigaz", "2001-01-01", "Estagiária", 0.99),
    ("Styx", "2022-06-25", "Recepcionista", 2009.22),
    ("Joaquim", "2010-06-28", "Recrutador", 2805.11),
    ("Martin", "1995-09-16", "Gerente de Crises", 1408.21),
    ("Litha", "2022-12-23", "Gerente de Demissões", 2212.23),
    ("Candidato", NULL , "Futuro Estagiário", 0.99);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario >= 2000;
SELECT * FROM tb_colaboradores WHERE salario <= 2000;

ALTER TABLE tb_colaboradores CHANGE salario salario DECIMAL(7,2);

UPDATE tb_colaboradores SET salario = 3110.24 WHERE id = 5;
UPDATE tb_colaboradores SET cargo = "Cliente" WHERE id = 2;
UPDATE tb_colaboradores SET salario = 0 WHERE id = 2;

SELECT * FROM tb_colaboradores;
