DROP DATABASE IF EXISTS DESAFIO2;

CREATE DATABASE DESAFIO2;

USE DESAFIO2;

CREATE TABLE PERGUNTA(
	IDPERGUNTA INT NOT NULL,
    TEXTO VARCHAR(100),
    PRIMARY KEY (IDPERGUNTA)
);

CREATE TABLE OPCAO(
	IDOPCAO INT NOT NULL,
    TEXTO_OPCAO VARCHAR(45),
    IDPERGUNTA INT NOT NULL,
    primary key (IDOPCAO, IDPERGUNTA),
    foreign key (IDPERGUNTA) REFERENCES PERGUNTA(IDPERGUNTA)
    
);

CREATE TABLE ALUNO(
	IDALUNO INT NOT NULL,
    NOME VARCHAR(45),
    primary key (IDALUNO)
);
    
CREATE TABLE RESPOSTA(
	IDRESPOSTA INT NOT NULL,
    DTRESPOSTA DATETIME,
    IDPERGUNTA INT NOT NULL,
    IDALUNO INT NOT NULL,
    IDOPCAO INT NOT NULL,
    primary key (IDOPCAO, IDPERGUNTA, IDALUNO),
    foreign key (IDPERGUNTA) REFERENCES PERGUNTA(IDPERGUNTA),
    foreign key (IDOPCAO) REFERENCES OPCAO(IDOPCAO),
    foreign key (IDALUNO) REFERENCES ALUNO(IDALUNO)
    
);