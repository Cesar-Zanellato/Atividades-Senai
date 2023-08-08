DROP DATABASE IF EXISTS DBMECANICA;
CREATE DATABASE DBMECANICA;
USE DBMECANICA;
CREATE TABLE MECANICO (
	IDMECANICO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	TELEFONE_RESIDENCIAL VARCHAR(15),
	TELEFONE_COMERCIAL VARCHAR(15),
	TELEFONE_RECADO VARCHAR(15)
);
INSERT INTO MECANICO(NOME, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO)VALUES('Guilherme Maril'	, '48 2222 1111', '48 2222 2222', '48 2222 3333');
INSERT INTO MECANICO(NOME, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO)VALUES('Aline Cristina', '48 3322 1111', '48 3322 2222', '48 3322 3333');
INSERT INTO MECANICO(NOME, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO)VALUES('Jer�nimo DalaSi'	, '48 4444 1111', '48 4444 2222', '48 4444 3333');
INSERT INTO MECANICO(NOME, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO)VALUES('Thiago Ciello', '48 5555 1111', '48 5555 2222', '48 5555 3333');

CREATE TABLE SERVICO (
	IDSERVICO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	VALOR NUMERIC(8,2)
);

INSERT INTO SERVICO (NOME, VALOR)VALUES('RODIZIO DOS PNEUS', '45.00');
INSERT INTO SERVICO (NOME, VALOR)VALUES('BALANCEAMENTO'	, '25.00');
INSERT INTO SERVICO (NOME, VALOR)VALUES('GEOMETRIA', '25.00');
INSERT INTO SERVICO (NOME, VALOR)VALUES('TROCA DE FLUIDO DE FREIO', '50.00');
INSERT INTO SERVICO (NOME, VALOR)VALUES('VERIFICA��O DA SUSPENS�O', '25.00');
INSERT INTO SERVICO (NOME, VALOR)VALUES('TROCA DE �LEO'	, '35.00');
INSERT INTO SERVICO (NOME, VALOR)VALUES('MAO DE OBRA', '50.00');

CREATE TABLE PRODUTO (
	IDPRODUTO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	VALOR NUMERIC(8,2)
);
INSERT INTO PRODUTO (NOME, VALOR)VALUES('distribuidor', '190.88');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('farol', '10.00');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('interruptor de farol'	, '25.30');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('interruptor de marcha r�', '25.30');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('l�mpada de dire��o (seta)', '39.70');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('l�mpada de farol', '15.90');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('bomba de combust�vel'	, '390.25');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('junta do carter motor', '1099.99');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('junta tampa de v�lvula', '999.98');
INSERT INTO PRODUTO (NOME, VALOR)VALUES('v�lvulas', '10.85');

CREATE TABLE PROPRIETARIO (
	IDPROPRIETARIO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	CPF CHAR(11) NOT NULL,
	RG VARCHAR(16),
	LOGRADOURO VARCHAR(100),
	NUMERO VARCHAR(10),
	BAIRRO VARCHAR(100),
	CIDADE VARCHAR(100),
	UF CHAR(2),
	COMPLEMENTO VARCHAR(100),
	DT_NASCIMENTO DATE,
	TELEFONE_RESIDENCIAL VARCHAR(15),
	TELEFONE_COMERCIAL VARCHAR(15),
	TELEFONE_RECADO VARCHAR(15)
);

INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Lucas Logrini', '1111111111', NULL, 'RUA MATHEUS Lorb'	, 26	, 'BEIRA MAR NORTE', 'S�O JOS�', 'SC', NULL, '48 2222 222222', '48 2222 3333', '48 2222 4444', '1985-04-21');
INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Lucas Mellva', '2222222222', NULL, 'AV. Rhuan Rorti', 28, 'BEIRA MAR NORTE'	, 'S�O JOS�', 'SC', NULL, '48 3333 222222', '48 3333 3333', '48 2222 4444', '1983-01-25');
INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Beatriz AlVinO', '3333333333', NULL, 'AV. Rhuan Rorti', 56, 'BEIRA MAR NORTE', 'S�O JOS�', 'SC', NULL, '48 4444 222222', '48 3333 3333', '48 2222 4444', '1984-10-28');
INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Roberto Adez', '4444444444', NULL, 'RUA Paulo Heqt', 19	, 'BEIRA MAR SUL', 'S�O JOS�', 'SC', NULL, '48 5555 222222', '48 3333 3333', '48 2222 4444', '1982-05-19');
INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Pedro Siues', '5555555555', NULL, 'RUA Victoria Cuehler', 27, 'BEIRA MAR SUL', 'S�O JOS�', 'SC', NULL, '48 6666 222222', '48 3333 3333', '48 2222 4444', '1989-05-13');
INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Nathan Sendil', '6666666666', NULL, 'RUA Victoria Cuehler', 1227, 'BEIRA MAR SUL', 'S�O JOS�', 'SC', NULL, '48 7777 222222', '48 3333 3333', '48 2222 4444', '1987-07-07');
INSERT INTO PROPRIETARIO (NOME, CPF, RG, LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, COMPLEMENTO, TELEFONE_RESIDENCIAL, TELEFONE_COMERCIAL, TELEFONE_RECADO, DT_NASCIMENTO)VALUES('Gabriela Cristina'	, '7777777777', NULL, 'AV Jo�o Saebr', 30	, 'BEIRA MAR SUL', 'S�O JOS�', 'SC', NULL, '48 8888 222222', '48 3333 3333', '48 2222 4444', '1988-08-11');

CREATE TABLE VEICULO (
	IDVEICULO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	IDPROPRIETARIO INT NOT NULL,
	MARCA VARCHAR(100) NOT NULL,
	MODELO VARCHAR(100) NOT NULL,
	VERSAO VARCHAR(100) NOT NULL,
	ANO_FABRICACAO INT,
	ANO_MODELO INT,
	PLACA CHAR(7),
	CONSTRAINT FK_VEICULO_PROPRIETARIO FOREIGN KEY (IDPROPRIETARIO) REFERENCES PROPRIETARIO (IDPROPRIETARIO)
);



INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Fiat', 'Strada'	, '', 2014, 2014, 'AAA1111' FROM PROPRIETARIO LIMIT 1,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'VW', 'Saveiro', '', 2014, 2014, 'BBB1111' FROM PROPRIETARIO LIMIT 1,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Ford', 'EcoSport', '', 2013, 2014, 'CCC1111' FROM PROPRIETARIO LIMIT 2,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'GM', 'S10', '', 2014, 2014, 'DDD1111' FROM PROPRIETARIO LIMIT 3,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'GM', 'Montana', '', 2014, 2014, 'EEE1111' FROM PROPRIETARIO LIMIT 4,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Renault'	, 'Duster', '', 2014, 2014, 'FFF1111' FROM PROPRIETARIO LIMIT 5,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Toyota', 'Hilux'	, '', 2014, 2014, 'GGG1111' FROM PROPRIETARIO LIMIT 6,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Fiat', 'Fiorino'	, '', 2014, 2014, 'HHH1111' FROM PROPRIETARIO LIMIT 6,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Chevrolet', 'Tracker', '', 2014, 2014, 'III1111' FROM PROPRIETARIO LIMIT 4,1;

INSERT INTO VEICULO(IDPROPRIETARIO, MARCA, MODELO, VERSAO, ANO_FABRICACAO, ANO_MODELO, PLACA)
SELECT IDPROPRIETARIO, 'Ford', 'Ranger', '', 2014, 2014, 'JJJ1111' FROM PROPRIETARIO LIMIT 3,1;

CREATE TABLE ORCAMENTO (
	IDORCAMENTO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	IDMECANICO INT NOT NULL,
	IDVEICULO INT NOT NULL,
	DT_ORCAMENTO DATETIME NOT NULL,
	CONSTRAINT FK_ORCAMENTO_VEICULO FOREIGN KEY (IDVEICULO) REFERENCES VEICULO (IDVEICULO),
	CONSTRAINT FK_ORCAMENTO_MECANICO FOREIGN KEY (IDMECANICO) REFERENCES MECANICO (IDMECANICO)
);

INSERT INTO ORCAMENTO(IDMECANICO, IDVEICULO, DT_ORCAMENTO)
SELECT (SELECT IDMECANICO FROM MECANICO LIMIT 0,1), IDVEICULO, DATE_ADD(NOW(), INTERVAL -5 DAY) FROM VEICULO LIMIT 0, 1;

INSERT INTO ORCAMENTO(IDMECANICO, IDVEICULO, DT_ORCAMENTO)
SELECT (SELECT IDMECANICO FROM MECANICO LIMIT 1,1), IDVEICULO, DATE_ADD(NOW(), INTERVAL -37 DAY) FROM VEICULO LIMIT 1, 1;

INSERT INTO ORCAMENTO(IDMECANICO, IDVEICULO, DT_ORCAMENTO)
SELECT (SELECT IDMECANICO FROM MECANICO LIMIT 2,1), IDVEICULO, DATE_ADD(NOW(), INTERVAL -5 DAY) FROM VEICULO LIMIT 1, 1;

INSERT INTO ORCAMENTO(IDMECANICO, IDVEICULO, DT_ORCAMENTO)
SELECT (SELECT IDMECANICO FROM MECANICO LIMIT 3,1), IDVEICULO, DATE_ADD(NOW(), INTERVAL -370 DAY) FROM VEICULO LIMIT 2, 1;

INSERT INTO ORCAMENTO(IDMECANICO, IDVEICULO, DT_ORCAMENTO)
SELECT (SELECT IDMECANICO FROM MECANICO LIMIT 3,1), IDVEICULO, DATE_ADD(NOW(), INTERVAL -30 DAY) FROM VEICULO LIMIT 3, 1;

INSERT INTO ORCAMENTO(IDMECANICO, IDVEICULO, DT_ORCAMENTO)
SELECT (SELECT IDMECANICO FROM MECANICO LIMIT 2,1), IDVEICULO, DATE_ADD(NOW(), INTERVAL -36 DAY) FROM VEICULO LIMIT 4, 1;

CREATE TABLE ITEM_SERVICO (
	IDORCAMENTO INT NOT NULL,
	IDSERVICO INT NOT NULL,
	QTDE INT,
	CONSTRAINT PK_ITEM_SERVICO PRIMARY KEY (IDORCAMENTO, IDSERVICO),
	CONSTRAINT FK_ITEM_SERVICO_ORCAMENTO FOREIGN KEY (IDORCAMENTO) REFERENCES ORCAMENTO (IDORCAMENTO),
	CONSTRAINT FK_ITEM_SERVICO_SERVICO FOREIGN KEY (IDSERVICO) REFERENCES SERVICO (IDSERVICO)
);

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 2,1), 1 FROM ORCAMENTO LIMIT 0, 1;

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 0,1), 1 FROM ORCAMENTO LIMIT 1, 1;

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 1,1), 1 FROM ORCAMENTO LIMIT 1, 1;

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 1,1), 1 FROM ORCAMENTO LIMIT 0, 1;

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 2,1), 1 FROM ORCAMENTO LIMIT 2, 1;

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 3,1), 1 FROM ORCAMENTO LIMIT 4, 1;

INSERT INTO ITEM_SERVICO (IDORCAMENTO, IDSERVICO, QTDE)
SELECT IDORCAMENTO, (SELECT IDSERVICO FROM SERVICO LIMIT 4,1), 1 FROM ORCAMENTO LIMIT 5, 1;


CREATE TABLE ITEM_PRODUTO (
	IDORCAMENTO INT NOT NULL,
	IDPRODUTO INT NOT NULL,
	QTDE INT,
	CONSTRAINT PK_ITEM_PRODUTO PRIMARY KEY (IDORCAMENTO, IDPRODUTO),
	CONSTRAINT FK_ITEM_PRODUTO_ORCAMENTO FOREIGN KEY (IDORCAMENTO) REFERENCES ORCAMENTO (IDORCAMENTO),
	CONSTRAINT FK_ITEM_PRODUTO_PRODUTO FOREIGN KEY (IDPRODUTO) REFERENCES PRODUTO (IDPRODUTO)
);


INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 1,1), 1 FROM ORCAMENTO LIMIT 0, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 0,1), 1 FROM ORCAMENTO LIMIT 1, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 3,1), 1 FROM ORCAMENTO LIMIT 1, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 6,1), 1 FROM ORCAMENTO LIMIT 1, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 1,1), 1 FROM ORCAMENTO LIMIT 1, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 3,1), 1 FROM ORCAMENTO LIMIT 0, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 4,1), 1 FROM ORCAMENTO LIMIT 0, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 1,1), 1 FROM ORCAMENTO LIMIT 2, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 3,1), 1 FROM ORCAMENTO LIMIT 4, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 4,1), 1 FROM ORCAMENTO LIMIT 5, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 3,1), 1 FROM ORCAMENTO LIMIT 5, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 6,1), 1 FROM ORCAMENTO LIMIT 5, 1;

INSERT INTO ITEM_PRODUTO (IDORCAMENTO, IDPRODUTO, QTDE)
SELECT IDORCAMENTO, (SELECT IDPRODUTO FROM PRODUTO LIMIT 5,1), 1 FROM ORCAMENTO LIMIT 5, 1;

/*QUESTAO 01*/
SELECT 
	PROPRIETARIO.NOME
    , PROPRIETARIO.TELEFONE_RESIDENCIAL
    , PROPRIETARIO.TELEFONE_COMERCIAL
    , PROPRIETARIO.TELEFONE_RECADO
FROM
	PROPRIETARIO
ORDER BY
	PROPRIETARIO.NOME;

/*QUESTAO 02*/
SELECT
	SERVICO.NOME
    , SERVICO.VALOR
FROM
	SERVICO
ORDER BY
	SERVICO.NOME;

/*QUESTAO 03*/
SELECT 
	PRODUTO.NOME
    , PRODUTO.VALOR
FROM
	PRODUTO
ORDER BY 
		PRODUTO.NOME;
    
/*QUESTAO 04*/    
SELECT 
	VEICULO.MARCA
    , COUNT(VEICULO.IDVEICULO)
FROM
	VEICULO
GROUP BY
	VEICULO.MARCA;

/*QUESTAO 05*/ 
SELECT
	NOME
	, DT_NASCIMENTO
    , DATE_ADD(DT_NASCIMENTO, INTERVAL YEAR(NOW()) - YEAR(DT_NASCIMENTO) YEAR) AS NIVER
FROM	
	PROPRIETARIO
WHERE 
	DATE_ADD(DT_NASCIMENTO, INTERVAL YEAR(NOW()) - YEAR(DT_NASCIMENTO) YEAR)
    BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 45 DAY);
    
/*QUESTAO 06*/ 
SELECT
	PROPRIETARIO.IDPROPRIETARIO
	, PROPRIETARIO.NOME
	, VEICULO.IDVEICULO
	, VEICULO.MARCA
	, VEICULO.MODELO
	, VEICULO.PLACA
FROM
	PROPRIETARIO
    LEFT JOIN VEICULO ON
    PROPRIETARIO.IDPROPRIETARIO = VEICULO.IDPROPRIETARIO;
    
/*QUESTAO 07*/ 
SELECT
	PROPRIETARIO.IDPROPRIETARIO
	, PROPRIETARIO.NOME
	, VEICULO.IDVEICULO
	, VEICULO.MARCA
	, VEICULO.MODELO
	, VEICULO.PLACA
FROM
	PROPRIETARIO
    INNER JOIN VEICULO ON
    PROPRIETARIO.IDPROPRIETARIO = VEICULO.IDPROPRIETARIO
ORDER BY 
	PROPRIETARIO.NOME;

/*QUESTAO 08*/ 
SELECT 
	*
FROM
	MECANICO;

/*QUESTAO 09*/ 
SELECT DISTINCT
	PRODUTO.IDPRODUTO
    , PRODUTO.NOME
    , PRODUTO.VALOR
FROM
	PRODUTO
    INNER JOIN ITEM_PRODUTO ON
    PRODUTO.IDPRODUTO = ITEM_PRODUTO.IDPRODUTO;

/*QUESTAO 10*/
SELECT 
	VEICULO.IDVEICULO
    , VEICULO.MARCA
    , VEICULO.MODELO
    , VEICULO.PLACA
    , ORCAMENTO.IDORCAMENTO
    , ORCAMENTO.DT_ORCAMENTO
    , SUM(ITEM_SERVICO.QTDE) AS QTDE_SERVICO
    , SUM(SERVICO.VALOR * ITEM_SERVICO.QTDE) AS TOTAL
FROM
	VEICULO
    INNER JOIN ORCAMENTO ON
    VEICULO.IDVEICULO = ORCAMENTO.IDVEICULO
    INNER JOIN ITEM_SERVICO ON
    ITEM_SERVICO.IDORCAMENTO = ORCAMENTO.IDORCAMENTO
    INNER JOIN SERVICO ON
    SERVICO.IDSERVICO = ITEM_SERVICO.IDSERVICO
WHERE
	VEICULO.IDVEICULO = 3
GROUP BY
	VEICULO.IDVEICULO
    , VEICULO.MARCA
    , VEICULO.MODELO
    , VEICULO.PLACA
    , ORCAMENTO.IDORCAMENTO
    , ORCAMENTO.DT_ORCAMENTO;

/*QUESTAO 11*/
SELECT 
	VEICULO.IDVEICULO
    , VEICULO.MARCA
    , VEICULO.MODELO
    , VEICULO.PLACA
    , ORCAMENTO.IDORCAMENTO
    , ORCAMENTO.DT_ORCAMENTO
    , SUM(ITEM_PRODUTO.QTDE) AS QTDE_PRODUTO
    , SUM(PRODUTO.VALOR * ITEM_PRODUTO.QTDE) AS TOTAL
FROM
	VEICULO
    INNER JOIN ORCAMENTO ON
    VEICULO.IDVEICULO = ORCAMENTO.IDVEICULO
    INNER JOIN ITEM_PRODUTO ON
    ITEM_PRODUTO.IDORCAMENTO = ORCAMENTO.IDORCAMENTO
    INNER JOIN PRODUTO ON
    PRODUTO.IDPRODUTO = ITEM_PRODUTO.IDPRODUTO
WHERE
	VEICULO.IDVEICULO = 3
GROUP BY
	VEICULO.IDVEICULO
    , VEICULO.MARCA
    , VEICULO.MODELO
    , VEICULO.PLACA
    , ORCAMENTO.IDORCAMENTO
    , ORCAMENTO.DT_ORCAMENTO;

/*QUESTAO 12*/
SELECT 
	VEICULO.IDVEICULO
    , VEICULO.MARCA
    , VEICULO.MODELO
    , VEICULO.PLACA
    , ORCAMENTO.IDORCAMENTO
    , ORCAMENTO.DT_ORCAMENTO
    , MECANICO.NOME
FROM
	VEICULO
    INNER JOIN ORCAMENTO ON
    VEICULO.IDVEICULO = ORCAMENTO.IDVEICULO
    INNER JOIN MECANICO ON
    MECANICO.IDMECANICO = ORCAMENTO.IDMECANICO
WHERE
	VEICULO.IDVEICULO = 2;

/*QUESTAO 13*/
SELECT 
	VEICULO.IDVEICULO
	, VEICULO.MARCA
	, VEICULO.MODELO
	, VEICULO.PLACA
	, VEICULO.ANO_FABRICACAO
	, COUNT(ORCAMENTO.IDORCAMENTO) AS QTDE_ORCAMENTO
FROM
	VEICULO
	INNER JOIN ORCAMENTO ON
	VEICULO.IDVEICULO = ORCAMENTO.IDVEICULO
WHERE
	VEICULO.ANO_FABRICACAO = 2014
GROUP BY
	VEICULO.IDVEICULO
	, VEICULO.MARCA
	, VEICULO.MODELO
	, VEICULO.PLACA
	, VEICULO.ANO_FABRICACAO;

/*QUESTAO 14*/
SELECT AVG(VALOR)
FROM (
SELECT 
	IDORCAMENTO
	, SUM(VALOR) AS VALOR
FROM
	(
		SELECT 
			ORCAMENTO.IDORCAMENTO
			, SUM(ITEM_SERVICO.QTDE * SERVICO.VALOR) AS VALOR
			, 'SERVICO' AS TIPO
		FROM
			ORCAMENTO
			INNER JOIN ITEM_SERVICO ON
			ITEM_SERVICO.IDORCAMENTO = ORCAMENTO.IDORCAMENTO
			INNER JOIN SERVICO ON
			SERVICO.IDSERVICO = ITEM_SERVICO.IDSERVICO
		GROUP BY
			ORCAMENTO.IDORCAMENTO
		 UNION ALL
		 SELECT 
			ORCAMENTO.IDORCAMENTO
			, SUM(ITEM_PRODUTO.QTDE * PRODUTO.VALOR) AS VALOR
			, 'PRODUTO' AS TIPO
		FROM
			ORCAMENTO
			INNER JOIN ITEM_PRODUTO ON
			ITEM_PRODUTO.IDORCAMENTO = ORCAMENTO.IDORCAMENTO
			INNER JOIN PRODUTO ON
			PRODUTO.IDPRODUTO = ITEM_PRODUTO.IDPRODUTO
		GROUP BY
			ORCAMENTO.IDORCAMENTO
	) AS CONSULTA
GROUP BY
	IDORCAMENTO) AS RESULTADO;








