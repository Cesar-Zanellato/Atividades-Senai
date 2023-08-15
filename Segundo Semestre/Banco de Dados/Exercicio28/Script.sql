set sql_safe_updates = 0;

DROP DATABASE IF EXISTS DBEMPRESA;

CREATE DATABASE DBEMPRESA;

USE DBEMPRESA;

CREATE TABLE DEPARTAMENTO (
	IDDEPARTAMENTO INT NOT NULL PRIMARY KEY auto_increment,
	NOME VARCHAR(100)
);

INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(1, 'FINANCEIRO');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(2, 'COBRAN�A');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(3, 'CONTABILIDADE');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(4, 'AUDITORIA');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(5, 'LOGISTICA');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(6, 'PRODU��O');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(7, 'OPERA��ES');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(8, 'RECURSOS HUMANOS');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(9, 'TI');
INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOME)VALUES(10, 'MARKETING');

CREATE TABLE FUNCAO (
	IDFUNCAO INT NOT NULL PRIMARY KEY auto_increment,
	NOME VARCHAR(100)
);

INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(1, 'ANALISTA ADMINISTRATIVO');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(2, 'ANALISTA FINANCEIRO');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(3, 'ANALISTA DE SISTEMAS');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(4, 'ANALISTA DE RECURSOS HUMANOS');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(5, 'ASSISTENTE DE MANUTEN��O');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(6, 'ASSISTENTE ADMINISTRATIVO');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(7, 'SECRET�RIA');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(8, 'AUXILIAR ADMINISTRATIVO');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(9, 'AUXILIAR DE PRODU��O');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(10, 'OPERADOR');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(11, 'ENCARREGADO');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(12, 'PROGRAMADOR');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(13, 'PUBLICITARIO');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(14, 'DIAGRAMADOR');
INSERT INTO FUNCAO (IDFUNCAO, NOME)VALUES(15, 'JORNALISTA');

CREATE TABLE FUNCIONARIO (
	IDFUNCIONARIO INT NOT NULL PRIMARY KEY auto_increment,
	IDDEPARTAMENTO INT,
	IDFUNCAO INT,
	NOME VARCHAR(100),
	SEXO CHAR(1),
	IDADE INT,
	DTADMISSAO DATETIME NOT NULL,
	DTDEMISSAO DATETIME,
	SALARIO NUMERIC(9,2),
	CONSTRAINT FK_FUNCIONARIO_DEPARTAMENTO FOREIGN KEY (IDDEPARTAMENTO) REFERENCES DEPARTAMENTO (IDDEPARTAMENTO),
	CONSTRAINT FK_FUNCIONARIO_FUNCAO FOREIGN KEY (IDFUNCAO) REFERENCES FUNCAO (IDFUNCAO) 
);

INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(1,  2, 'Robert Pers'		, 'M', 19, '2012-01-16 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(1,  8, 'Roberto Garcam'	, 'M', 25, '2011-08-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(1,  8, 'Guilherme Maril'	, 'M', 25, '2012-02-17 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(1,  7, 'Aline Cristina'	, 'F', 19, '2000-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(2,  1, 'Jer�nimo DalaSi'	, 'M', 26, '2012-01-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(2,  6, 'Thiago Ciello'		, 'M', 29, '2011-11-17 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(2,  7, 'Aline Batista'		, 'F', 19, '2001-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(3,  NULL, 'Lucas Logrini'		, 'M', 28, '2012-07-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(3,  6, 'Lucas Mellva'		, 'M', 29, '2012-08-18 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(3,  7, 'Beatriz AlVinO'	, 'F', 22, '2004-10-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  1, 'Roberto Adez'		, 'M', 26, '2012-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  6, 'Pedro Siues'		, 'M', 19, '2011-01-28 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  6, 'Nathan Sendil'		, 'M', 25, '2012-10-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  7, 'Gabriela Cristina'	, 'F', 30, '2012-05-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(5,  1, 'Paulo Cerasa'		, 'M', 22, '2002-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(5,  NULL, 'Lucas Olivio'		, 'M', 28, '2012-12-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(5,  6, 'Jo�o Viwerz'		, 'M', 19, '2011-08-13 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(3,  7, 'Beatriz AlVinO'	, 'F', 22, '2004-10-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  1, 'Roberto Adez'		, 'M', 26, '2012-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  6, 'Pedro Siues'		, 'M', 19, '2011-01-28 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  6, 'Nathan Sendil'		, 'M', 25, '2012-10-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(4,  7, 'Gabriela Cristina'	, 'F', 30, '2012-05-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL,  1, 'Paulo Cerasa'		, 'M', 22, '2002-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL,  6, 'Lucas Olivio'		, 'M', 28, '2012-12-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL,  6, 'Jo�o Viwerz'		, 'M', 19, '2011-08-13 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL,  7, 'Gabrielle Alenade'	, 'F', 25, '2012-11-13 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(6,  5, 'Matheus kamp'		, 'M', 30, '2012-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(6,  9, 'Matheus Lorb'		, 'M', 26, '2001-04-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(6, 10, 'Rhuan Rorti'		, 'M', 28, '2012-02-13 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(6, 10, 'Paulo Heqt'		, 'M', 19, '2002-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(6,  7, 'Victoria Cuehler'	, 'F', 27, '2012-12-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL,  6, 'Jo�o Saebr'		, 'M', 30, '2002-08-14 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL, 11, 'Lucas Furil'		, 'M', 22, '2001-03-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL, 10, 'Rhamon Rool'		, 'M', 31, '2012-07-14 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(NULL, 10, 'Matheus Moricensk'	, 'M', 19, '2002-08-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(8,  4, 'Rodrigo Livier'	, 'M', 22, '2012-03-16 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(8,  NULL, 'Guilherme Freder'	, 'M', 26, '2001-09-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(8,  NULL, 'Ricardo Rodess'	, 'M', 19, '2012-08-22 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(9,  3, 'Gabriel Aller'		, 'M', 27, '2010-05-12 14:00:00', 0000.00);
INSERT INTO FUNCIONARIO (IDDEPARTAMENTO, IDFUNCAO, NOME, SEXO, IDADE, DTADMISSAO, SALARIO)VALUES(9, 12, 'Breno BeieRosa'	, 'M', 19, '2012-08-26 14:00:00', 0000.00);

update funcionario set SALARIO = RAND() * 1000 * 2;
update funcionario set SALARIO =  SALARIO * 20 where SALARIO < 200;
update funcionario set SALARIO =  SALARIO * 10 where SALARIO < 100;
update funcionario set SALARIO =  SALARIO * 4 where SALARIO < 300;
update funcionario set SALARIO =  SALARIO * 2 where SALARIO < 700;