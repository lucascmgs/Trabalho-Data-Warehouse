DROP SCHEMA IF EXISTS trabalhodtw;
CREATE SCHEMA trabalhodtw;
USE trabalhodtw;



CREATE TABLE data (
    data_id INT NOT NULL,
    dia INT NOT NULL,
    mes INT NOT NULL,
    ano INT NOT NULL,
    trimestre INT NOT NULL,
    dia_da_semana INT NOT NULL,
    fim_de_semana BOOLEAN NOT NULL,
    PRIMARY KEY (data_id)
);


CREATE TABLE cliente (
    cliente_id INT NOT NULL,
    PRIMARY KEY (cliente_id),
    endereco VARCHAR(50) NOT NULL,
    endereco2 VARCHAR(50) DEFAULT NULL,
    distrito VARCHAR(20) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) DEFAULT NULL,
    telefone VARCHAR(20) NOT NULL
);


CREATE TABLE funcionario (
    funcionario_id INT NOT NULL,
    eh_gerente BOOLEAN NOT NULL,
    PRIMARY KEY (funcionario_id)
);


CREATE TABLE loja (
    loja_id INT NOT NULL,
    PRIMARY KEY (loja_id)
);


CREATE TABLE filme (
    filme_id INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    lingua_original VARCHAR(50) NOT NULL,
    lingua_falada VARCHAR(50) NOT NULL,
    PRIMARY KEY (filme_id)
);


CREATE TABLE aluguel (
    aluguel_id INT NOT NULL,
    valor_pago DECIMAL NOT NULL,
    dias_aluguel INT NOT NULL,
    id_data_pagamento INT NOT NULL,
    id_data_retirada INT NOT NULL,
    id_data_devolucao INT NOT NULL,
    PRIMARY KEY (aluguel_id),
    CONSTRAINT fk_data_pagamento FOREIGN KEY (id_data_pagamento) REFERENCES data (data_id),
    CONSTRAINT fk_data_retirada FOREIGN KEY (id_data_retirada) REFERENCES data (data_id),
    CONSTRAINT fk_data_devolucao FOREIGN KEY (id_data_devolucao) REFERENCES data (data_id)
);
