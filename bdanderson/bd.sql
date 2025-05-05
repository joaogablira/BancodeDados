CREATE DATABASE etecmcm2;

USE etecmcm2;

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_cat varchar(255)
);
 
CREATE TABLE produtos (
    preco decimal(10,2),
    qtde INT,
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    marca INT,
    nome varchar(255),
    fk_categoria_id_categoria INT
);

ALTER TABLE produtos ADD CONSTRAINT FK_produtos_2
    FOREIGN KEY (fk_categoria_id_categoria)
    REFERENCES categoria (id_categoria)
    ON DELETE RESTRICT;