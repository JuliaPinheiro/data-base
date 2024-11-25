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
('Console PlayStation 5', 'Console de última geração para jogos', 4999.99, 'Jogos', 150),
('Xbox Series X', 'Console da nova geração com gráficos 4K', 4899.00, 'Jogos', 120),
('Controle Xbox Elite', 'Controle de alto desempenho para Xbox', 849.00, 'Jogos', 80),
('FIFA 24', 'Jogo de futebol para PlayStation e Xbox', 299.99, 'Jogos', 200),
('Minecraft', 'Jogo de construção e exploração mundial', 129.90, 'Jogos', 250),
('The Legend of Zelda: Tears of the Kingdom', 'Jogo de aventura exclusivo para Nintendo Switch', 399.99, 'Jogos', 100),
('Cadeira Gamer DXRacer', 'Cadeira ergonômica especialmente para jogos', 1200.00, 'Jogos', 50),
('Headset Razer Kraken', 'Headset com som surround e microfone', 499.00, 'Jogos', 120);


SELECT * FROM tb_produtos 
WHERE  preco > 500;

SELECT * FROM tb_produtos 
WHERE  preco < 500;

UPDATE tb_produtos
SET preco = 55.90
WHERE nome = "Xbox Series X";

