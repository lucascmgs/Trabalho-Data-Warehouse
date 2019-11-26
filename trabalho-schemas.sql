DROP SCHEMA IF EXISTS trabalhodtw;
CREATE SCHEMA trabalhodtw;
USE trabalhodtw;



CREATE TABLE Cliente (
    cliente_id INT NOT NULL,
    PRIMARY KEY (cliente_id),
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco_1 VARCHAR(50) NOT NULL,
    endereco_2 VARCHAR(50) DEFAULT NULL,
    distrito VARCHAR(20) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) DEFAULT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Data (
    data_id INT NOT NULL,
    dia INT NOT NULL,
    mes INT NOT NULL,
    ano INT NOT NULL,
    trimestre INT NOT NULL,
    dia_da_semana INT NOT NULL,
    fim_de_semanaSN BOOLEAN NOT NULL,
    PRIMARY KEY (data_id)
);

CREATE TABLE Filme (
    filme_id INT NOT NULL,
    titulo VARCHAR(50),
    ano_de_lancamento DATE NOT NULL,
    classificacao_etaria INT NOT NULL,
    custo DECIMAL NOT NULL,
    duracao_mins INT NOT NULL,
    preco_por_dia DECIMAL NOT NULL,
    
    PRIMARY KEY (filme_id)
);


CREATE TABLE Funcionario (
    funcionario_id INT NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    gerenteSN BOOLEAN NOT NULL,
    PRIMARY KEY (funcionario_id)
);


CREATE TABLE Loja (
    loja_id INT NOT NULL,
    endereco_1 VARCHAR(70) NOT NULL,
    endereco_2 VARCHAR(70) NOT NULL,
    distrito VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    codigo_postal INT NOT NULL,
    PRIMARY KEY (loja_id)
);



CREATE TABLE Linguagem(
    linguagem_id INT NOT NULL,
    nome_linguagem VARCHAR(50),
    PRIMARY KEY (linguagem_id)
);


CREATE TABLE Aluguel (
    aluguel_id INT NOT NULL,

    valor_pago DECIMAL NOT NULL,
    duracao_dias INT NOT NULL,

    id_cliente INT NOT NULL,
    id_data_pagamento INT NOT NULL,
    id_data_retirada INT NOT NULL,
    id_data_devolucao INT NOT NULL,
    id_filme INT NOT NULL,
    id_funcionario INT NOT NULL,
    id_linguagem INT NOT NULL,
    id_loja INT NOT NULL,

    PRIMARY KEY (aluguel_id),
    CONSTRAINT fk_data_pagamento FOREIGN KEY (id_data_pagamento) REFERENCES Data (data_id),
    CONSTRAINT fk_data_retirada FOREIGN KEY (id_data_retirada) REFERENCES Data (data_id),
    CONSTRAINT fk_data_devolucao FOREIGN KEY (id_data_devolucao) REFERENCES Data (data_id),
    CONSTRAINT fk_filme FOREIGN KEY (id_filme) REFERENCES Filme (filme_id),
    CONSTRAINT fk_linguagem FOREIGN KEY (id_linguagem) REFERENCES Linguagem (linguagem_id),
    CONSTRAINT fk_loja FOREIGN KEY (id_loja) REFERENCES Loja (loja_id),
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente (cliente_id)
);
