CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    data_cadastro DATE NOT NULL,
    PRIMARY KEY (id_usuario)
);