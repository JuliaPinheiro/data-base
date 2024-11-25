CREATE DATABASE db_escola;


CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    nota DECIMAL(4, 2) NOT NULL,
    turma VARCHAR(50),
    datamatricula DATE
);


INSERT INTO tb_estudantes (nome, idade, nota, turma, datamatricula)
VALUES
('João Silva', 16, 8.5, '1º Ano', '2023-02-10'),
('Maria Oliveira', 17, 6.5, '2º Ano', '2023-03-15'),
('Pedro Santos', 15, 9.0, '1º Ano', '2023-01-20'),
('Ana Souza', 18, 7.5, '3º Ano', '2022-11-30'),
('Carlos Pereira', 17, 5.8, '2º Ano', '2023-04-05'),
('Beatriz Lima', 16, 10.0, '1º Ano', '2023-02-25'),
('Lucas Costa', 15, 7.2, '1º Ano', '2023-03-10'),
('Juliana Rocha', 18, 6.0, '3º Ano', '2022-12-01');


SELECT * FROM tb_estudantes
WHERE nota > 7.0;


SELECT * FROM tb_estudantes
WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_estudantes
SET nota = 7.5
WHERE nome = 'Maria Oliveira';
