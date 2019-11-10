DROP SCHEMA IF EXISTS trabalhodtw;
CREATE SCHEMA trabalhodtw;
USE trabalhodtw;

CREATE TABLE aluguel (
    aluguel_id INT NOT NULL,
    valor_pago DECIMAL NOT NULL,
    dias_aluguel INT NOT NULL,
    PRIMARY KEY (aluguel_id)
);


CREATE TABLE adata (
    data_id INT NOT NULL AUTO_INCREMENT,
    dia INT NOT NULL,
    mes INT NOT NULL,
    ano INT NOT NULL,
    trimestre INT NOT NULL,
    dia_da_semana ENUM ('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado')
);
CREATE TABLE cliente ();
CREATE TABLE funcionario ();
CREATE TABLE loja ();
CREATE TABLE linguagem ();

CREATE TABLE filme (
    filme_id INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR NOT NULL,
    lingua_original VARCHAR NOT NULL,
    lingua_falada VARCHAR NOT NULL
);


