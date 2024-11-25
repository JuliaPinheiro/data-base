CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(8,2) NOT NULL,
    tamanho VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas tradicionais com sabores clássicos'),
('Premium', 'Pizzas com ingredientes diferenciados e sofisticados'),
('Vegetariana', 'Pizzas feitas sem carne, com vegetais frescos'),
('Doce', 'Pizzas com coberturas doces, ideais como sobremesas'),
('Especial', 'Pizzas exclusivas e sazonais da casa');


INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES
('Margherita', 'Pizza clássica com molho de tomate, mozzarella e manjericão', 42.00, 'Grande', 1),
('Pepperoni', 'Pizza com fatias de pepperoni e queijo', 48.00, 'Grande', 1),
('Veggie Delight', 'Pizza vegetariana com mix de legumes e queijo', 39.00, 'Média', 3),
('Frango com Catupiry', 'Pizza com frango desfiado e catupiry cremoso', 53.00, 'Grande', 1),
('Chocolate', 'Pizza doce com chocolate ao leite derretido', 49.00, 'Média', 4),
('Romeu e Julieta', 'Pizza doce com goiabada e cream cheese', 51.00, 'Grande', 4),
('Especial da Casa', 'Pizza exclusiva com mix de queijos e trufas', 75.00, 'Grande', 5),
('Quatro Queijos', 'Pizza com muçarela, parmesão, gorgonzola e provolone', 56.00, 'Grande', 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;


SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT 
    p.id_pizza, 
    p.nome_pizza, 
    p.preco, 
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT 
    p.id_pizza, 
    p.nome_pizza, 
    p.preco, 
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';



