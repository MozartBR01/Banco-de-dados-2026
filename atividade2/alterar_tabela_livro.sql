ALTER TABLE livro
DROP COLUMN autor,
DROP COLUMN editora,
DROP COLUMN categoria,
ADD data_cadastro TIMESTAMP,
ADD data_atualizacao TIMESTAMP,
ADD id_usuario INT,
ADD id_autor INT,
ADD id_editora INT,
ADD id_categoria INT,
ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
ADD CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
ADD CONSTRAINT fk_editora FOREIGN KEY (id_editora) REFERENCES editora(id_editora),
ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);