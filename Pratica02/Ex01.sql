CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, com alta resistência.'),
('Mago', 'Usuário de magia, com ataques poderosos à distância.'),
('Arqueiro', 'Especialista em combate à distância, com alta agilidade.'),
('Paladino', 'Combina habilidades defensivas com magias de suporte.'),
('Assassino', 'Mestre em ataques rápidos e furtividade.');

CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel INT NOT NULL DEFAULT 1,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe INT NOT NULL,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome_personagem, nivel, poder_ataque, poder_defesa, id_classe) VALUES
('Arthas', 10, 2500, 1500, 1),
('Merlin', 12, 3000, 800, 2),
('Legolas', 8, 1800, 1200, 3),
('Uther', 15, 2000, 2500, 4),
('Zed', 7, 2700, 700, 5),
('Cassandra', 11, 2300, 1000, 3),
('Garen', 9, 2200, 2000, 1),
('Cain', 6, 1900, 1100, 5);

SELECT * 
FROM tb_personagens 
WHERE poder_ataque > 2000;

SELECT * 
FROM tb_personagens 
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * 
FROM tb_personagens 
WHERE nome_personagem LIKE '%C%';

SELECT p.id_personagem, p.nome_personagem, c.nome_classe, p.nivel, p.poder_ataque, p.poder_defesa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe;

SELECT p.id_personagem, p.nome_personagem, c.nome_classe, p.nivel, p.poder_ataque, p.poder_defesa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';
