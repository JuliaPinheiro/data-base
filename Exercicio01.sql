CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL,         
    cargo VARCHAR(50) NOT NULL,        
    departamento VARCHAR(50) NOT NULL,  
    salario DECIMAL(10, 2) NOT NULL,   
    data_admissao DATE NOT NULL      
);

INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES
('Aline S', 'Analista de RH', 'Recursos Humanos', 3500.00, '2021-03-15'),
('Pedrinho P', 'Assistente Administrativo', 'Financeiro', 1800.00, '2022-05-20'),
('Vini', 'Gerente de Projetos', 'TI', 15500.00, '2019-10-01'),
('Rafa', 'CTO', 'TI', 1111500.00, '2022-07-10'),
('Lorena', 'Desenvolvedora', 'TI', 12000.00, '2020-12-05');


SELECT * FROM tb_colaboradores where salario > 2000;

SELECT * FROM tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores 
SET salario = 15000 
WHERE id = 2;
