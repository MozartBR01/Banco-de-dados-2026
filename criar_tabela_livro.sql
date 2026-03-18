CREATE TABLE livro (
    id_livro INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT NOT NULL,
    autor VARCHAR(128) NOT NULL,
    editora VARCHAR(128) NOT NULL,
    categoria VARCHAR(128) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    PRIMARY KEY (id_livro)
);