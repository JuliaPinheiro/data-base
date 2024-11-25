CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao_produto TEXT,
    preco DECIMAL(8,2) NOT NULL,
    data_validade DATE,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Medicamentos', 'Produtos para tratamento de doenças e sintomas'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Higiene', 'Produtos para higiene pessoal e limpeza'),
('Suplementos', 'Vitaminas e produtos alimentares suplementares'),
('Bebidas', 'Bebidas não alcoólicas como chás e sucos');


INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, data_validade, id_categoria) VALUES
('Paracetamol', 'Medicamento para febre e dor', 15.00, '2025-12-31', 1),
('Ibuprofeno', 'Anti-inflamatório', 25.00, '2025-06-30', 1),
('Creme Nivea', 'Hidratante para pele', 35.00, '2026-01-15', 2),
('Shampoo Seda', 'Shampoo para cabelos secos', 20.00, '2025-11-10', 2),
('Sabonete Dove', 'Sabonete hidratante para pele sensível', 10.00, '2024-12-31', 3),
('Vitamina C', 'Suplemento alimentar com vitamina C', 55.00, '2026-07-01', 4),
('Chá Verde', 'Bebida saudável e antioxidante', 12.00, '2025-03-15', 5),
('Multivitamínico', 'Suplemento alimentar completo', 75.00, '2027-01-01', 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT 
    p.id_produto, 
    p.nome_produto, 
    p.preco, 
    p.data_validade, 
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT 
    p.id_produto, 
    p.nome_produto, 
    p.preco, 
    p.data_validade, 
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Medicamentos';
