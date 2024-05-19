CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    tipo VARCHAR(20)
);

INSERT INTO tb_classes (nome, tipo)
VALUES
    ('Guerreiro', 'Melee'),
    ('Mago', 'Ranged'),
    ('Arqueiro', 'Ranged'),
    ('Ladrão', 'Melee'),
    ('Cavaleiro', 'Melee');

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nivel INT,
    ataque INT,
    defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens 
(nome, nivel, ataque, defesa, classe_id)
VALUES
    ('Herói A', 10, 2500, 1800, 1),
    ('Herói B', 8, 2200, 1600, 2);
    
SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';

INSERT INTO tb_personagens 
(nome, nivel, ataque, defesa, classe_id)
VALUES
    ('Herói c', 14, 4500, 3100, 3),
    ('Herói d', 5, 1400, 1200, 4),
	('Herói e', 20 , 8400, 5200, 5);
    
