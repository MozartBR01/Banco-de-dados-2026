USE biblioteca_pessoal;

INSERT INTO Usuario (nome, email, senha, data_cadastro, data_atualizacao) VALUES
('Ana Souza', 'ana@email.com', '123456', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Carlos Lima', 'carlos@email.com', '654321', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Mariana Rocha', 'mariana@email.com', 'abc123', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Categoria (nome) VALUES
('Fantasia'),
('Filosofia'),
('Romance');

INSERT INTO Editora (nome) VALUES
('Rocco'),
('Companhia das Letras'),
('Saraiva');

INSERT INTO Autor (nome, ano_nascimento, ano_morte) VALUES
('J.K. Rowling', 1965, NULL),
('Platao', 1920, 1980),
('Machado de Assis', 1839, 1908);

INSERT INTO Livro (titulo, ano_publicacao, data_cadastro, data_atualizacao, id_usuario, id_autor, id_editora, id_categoria) VALUES
('Harry Potter e a Pedra Filosofal', 1997, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 1, 1),
('Harry Potter e a Camara Secreta', 1998, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1, 1, 1),
('A Republica', 1950, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2, 2, 2, 2),
('Dom Casmurro', 1899, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3, 3, 3, 3);

SELECT l.titulo
FROM Livro l
INNER JOIN Autor a ON l.id_autor = a.id_autor
WHERE a.nome = 'J.K. Rowling';

SELECT l.titulo
FROM Livro l
INNER JOIN Categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Filosofia';

UPDATE Categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';

DELETE l
FROM Livro l
INNER JOIN Categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Censurado';
