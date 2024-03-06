CREATE DATABASE escola_isabelli;
USE escola_isabelli;

-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

-- 2)
INSERT INTO professor (nome, email, senha)
VALUES ('João Silva','joao@example.com',123456);

-- 3)
INSERT INTO turma  (numero, nome, id_professor)
VALUES (‘T01’, 'Matemática Avançada', 3);

-- 4)
INSERT INTO atividade  (numero, descricao, id_turma)
VALUES (‘A001, 'Prova de Matemática', 2);

-- 5)
INSERT INTO professor  (nome, email, senha)
VALUES ('Ana Oliveira', 'ana@example.com', 'senha123');

-- 6)
INSERT INTO turma (numero, nome, id_professor)
VALUES ('T02', 'Física Experimental', 4);

-- 7)
SELECT * FROM professor WHERE id_professor = 1;

-- 8)
SELECT turma.*, professor.nome
FROM turma
INNER JOIN professor ON turma.id_professor = professor.id_professor;

 -- 9)
SELECT atividade.*, turma.nome
FROM atividade
INNER JOIN turma ON atividade.id_turma = atividade.id_turma;
 
-- 10)
UPDATE professor
SET email = 'carlos@example.com'
WHERE id_professor = 2;

-- 11)
UPDATE turma
SET nome = 'Inglês Intermediário'
WHERE id_turma = 3;

-- 12)
UPDATE atividade
SET descricao = 'Trabalho de Laboratório'
WHERE id_atividade = 1;

-- 13)
UPDATE professor
SET senha = 'mudeiasenha'
WHERE email  = 'joao@example.com';

-- 14)
UPDATE turma
SET nome = 'Química Orgânica'
WHERE id_turma  = 3;

-- 15)
UPDATE turma
SET id_professor = 1
WHERE id_professor = 4;

DELETE FROM professor
WHERE email = 'ana@example.com';

-- 16)
DELETE FROM turma
WHERE id_turma = 1;

-- 17)
SELECT * FROM professor;

-- 18)
SELECT * FROM turma;

-- 19)
SELECT * FROM atividade;