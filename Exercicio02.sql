CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(100),
    estoque INT NOT NULL
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria, estoque)
VALUES
('Camiseta Básica', 'Camiseta de algodão simples', 45.90, 'Roupas', 100),
('Tênis Esportivo', 'Tênis confortável para corrida', 299.99, 'Calçados', 50),
('Relógio de Pulso', 'Relógio elegante de metal', 799.90, 'Acessórios', 30),
('Smartphone X100', 'Smartphone com 128GB de armazenamento', 1500.00, 'Eletrônicos', 200),
('Jaqueta de Couro', 'Jaqueta de couro genuíno', 450.00, 'Roupas', 70),
('Cadeira Gamer', 'Cadeira ergonômica para jogos', 899.00, 'Móveis', 20),
('Fone Bluetooth', 'Fone de ouvido com cancelamento de ruído', 250.00, 'Eletrônicos', 150),
('Mochila de Viagem', 'Mochila grande para viagens', 350.00, 'Acessórios', 80);