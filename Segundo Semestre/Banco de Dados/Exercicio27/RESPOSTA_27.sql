SET SQL_SAFE_UPDATES = 0;

DROP DATABASE IF EXISTS DBCANTINA;
CREATE DATABASE DBCANTINA;

USE DBCANTINA;

CREATE TABLE CLIENTE (
	IDCLIENTE INT NOT NULL AUTO_INCREMENT
	, NOME VARCHAR(100)
	, SEXO CHAR(1)
	, PRIMARY KEY (IDCLIENTE)
);

CREATE TABLE PRODUTO (
	IDPRODUTO INT NOT NULL AUTO_INCREMENT
	, NOME VARCHAR(100)
	, PRECO NUMERIC(8,2)
	, CATEGORIA VARCHAR(50)
	, PRIMARY KEY (IDPRODUTO)
);

CREATE TABLE PEDIDO (
	IDPEDIDO INT NOT NULL AUTO_INCREMENT
	, IDCLIENTE INT NOT NULL
	, DTPEDIDO DATE
	, PRIMARY KEY(IDPEDIDO)
	, FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);

CREATE TABLE ITEM_PEDIDO (
	IDPEDIDO INT NOT NULL 
	, IDPRODUTO INT NOT NULL
	, QTDE INT
	, PRECO_UNITARIO NUMERIC(8,2)
	, PRIMARY KEY (IDPEDIDO, IDPRODUTO)
	, FOREIGN KEY (IDPEDIDO) REFERENCES PEDIDO (IDPEDIDO)
	, FOREIGN KEY (IDPRODUTO) REFERENCES PRODUTO (IDPRODUTO)
);

INSERT INTO CLIENTE (NOME, SEXO)VALUES('JOAO', 'M');
INSERT INTO CLIENTE (NOME, SEXO)VALUES('MARIA', 'F');
INSERT INTO CLIENTE (NOME, SEXO)VALUES('ANA', 'F');
INSERT INTO CLIENTE (NOME, SEXO)VALUES('CARLOS', 'M');
INSERT INTO CLIENTE (NOME, SEXO)VALUES('ANTONIO', 'M');

INSERT INTO PRODUTO (NOME, PRECO, CATEGORIA)VALUES('BOLO DE CHOCOLATE', 2.5, 'DOCE');
INSERT INTO PRODUTO (NOME, PRECO, CATEGORIA)VALUES('BOLO DE CENOURA', 2.5, 'DOCE');
INSERT INTO PRODUTO (NOME, PRECO, CATEGORIA)VALUES('SUCO DE LARANJA', 3.0, 'SUCO');
INSERT INTO PRODUTO (NOME, PRECO, CATEGORIA)VALUES('SUCO DE MORANGO', 4.0, 'SUCO');
INSERT INTO PRODUTO (NOME, PRECO, CATEGORIA)VALUES('MISTO QUENTE', 1.5, 'SALGADO');

INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(1, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(1, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(2, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(2, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(3, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(1, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(1, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(2, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(2, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(2, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(5, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(3, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(5, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(1, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));
INSERT INTO PEDIDO (IDCLIENTE, DTPEDIDO)VALUES(2, DATE_ADD(NOW(), INTERVAL RAND() * - 100 DAY));

INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (01, 1, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (02, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (03, 3, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (01, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (02, 1, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (04, 4, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (05, 5, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (06, 1, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (05, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (07, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (08, 3, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (11, 4, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (12, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (10, 3, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (11, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (09, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (09, 4, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (10, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (11, 5, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (12, 4, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (10, 5, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (11, 1, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (14, 2, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (15, 5, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (13, 4, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (14, 4, RAND() * 10);
INSERT INTO ITEM_PEDIDO (IDPEDIDO, IDPRODUTO, QTDE)VALUES (15, 3, RAND() * 10);

UPDATE ITEM_PEDIDO AS PED
SET PRECO_UNITARIO = (SELECT PRECO FROM PRODUTO WHERE IDPRODUTO = PED.IDPRODUTO);

-- QUESTAO 07
SELECT 
	CLIENTE.SEXO
    , COUNT(CLIENTE.IDCLIENTE)
FROM
	CLIENTE
GROUP BY 
	CLIENTE.SEXO;

-- QUESTAO 08
SELECT 
	PRODUTO.NOME
    , PRODUTO.PRECO
FROM
	PRODUTO
ORDER BY 
	PRODUTO.CATEGORIA
    , PRODUTO.NOME;

-- QUESTAO 09
SELECT 
	PRODUTO.CATEGORIA
    , COUNT(PRODUTO.IDPRODUTO)
    , AVG(PRODUTO.PRECO)
FROM
	PRODUTO
GROUP BY 
	PRODUTO.CATEGORIA;
    
-- QUESTAO 10
SELECT
	ITEM_PEDIDO.IDPRODUTO
    , SUM(ITEM_PEDIDO.QTDE)
    , ITEM_PEDIDO.PRECO_UNITARIO
FROM
	ITEM_PEDIDO
GROUP BY 
	ITEM_PEDIDO.IDPRODUTO
    , ITEM_PEDIDO.PRECO_UNITARIO;

-- QUESTAO 11
SELECT 
	ITEM_PEDIDO.IDPEDIDO
    , ITEM_PEDIDO.IDPRODUTO
    , ITEM_PEDIDO.PRECO_UNITARIO
    , ITEM_PEDIDO.QTDE
    , (ITEM_PEDIDO.QTDE * ITEM_PEDIDO.PRECO_UNITARIO)
FROM
	ITEM_PEDIDO
ORDER BY
	ITEM_PEDIDO.IDPEDIDO
    , ITEM_PEDIDO.IDPRODUTO;

-- QUESTAO 12
SELECT 
	COUNT( DISTINCT ITEM_PEDIDO.IDPEDIDO)
    , AVG(ITEM_PEDIDO.QTDE)
    , AVG(ITEM_PEDIDO.QTDE * ITEM_PEDIDO.PRECO_UNITARIO)
FROM
	ITEM_PEDIDO;
    
-- QUESTAO 13
SELECT 
	PEDIDO.*
FROM
	PEDIDO
WHERE
	PEDIDO.IDCLIENTE = 3;
    
-- QUESTAO 14
SELECT
	CLIENTE.IDCLIENTE
    , CLIENTE.NOME
    , COUNT(PEDIDO.IDPEDIDO)
FROM
	CLIENTE
    INNER JOIN PEDIDO ON
    CLIENTE.IDCLIENTE = PEDIDO.IDCLIENTE
GROUP BY 
	CLIENTE.IDCLIENTE
    , CLIENTE.NOME;

-- QUESTAO 15
SELECT
	CLIENTE.IDCLIENTE
    , CLIENTE.NOME
    , COUNT(PEDIDO.IDPEDIDO)
FROM
	CLIENTE
    LEFT JOIN PEDIDO ON
    CLIENTE.IDCLIENTE = PEDIDO.IDCLIENTE
GROUP BY 
	CLIENTE.IDCLIENTE
    , CLIENTE.NOME;

-- QUESTAO 16
SELECT
	PRODUTO.IDPRODUTO
	, PRODUTO.NOME
    , COUNT(DISTINCT ITEM_PEDIDO.IDPEDIDO)
    , SUM(ITEM_PEDIDO.QTDE)
    , AVG(ITEM_PEDIDO.PRECO_UNITARIO)
FROM
	PRODUTO
    INNER JOIN ITEM_PEDIDO ON
    ITEM_PEDIDO.IDPRODUTO = PRODUTO.IDPRODUTO
GROUP BY
	PRODUTO.IDPRODUTO
	, PRODUTO.NOME
ORDER BY 
	PRODUTO.NOME
    , SUM(ITEM_PEDIDO.QTDE);

-- QUESTAO 17
SELECT
	PRODUTO.NOME
    , SUM(ITEM_PEDIDO.QTDE)
FROM
	PRODUTO
    LEFT JOIN ITEM_PEDIDO ON
    ITEM_PEDIDO.IDPRODUTO = PRODUTO.IDPRODUTO
GROUP BY
	PRODUTO.NOME
;

-- QUESTAO 18
SELECT
	CLIENTE.IDCLIENTE
    , CLIENTE.NOME
    , COUNT(PEDIDO.IDPEDIDO)
FROM
	CLIENTE
    INNER JOIN PEDIDO ON
    CLIENTE.IDCLIENTE = PEDIDO.IDCLIENTE
GROUP BY 
	CLIENTE.IDCLIENTE
    , CLIENTE.NOME
HAVING COUNT(PEDIDO.IDPEDIDO) > 5
ORDER BY
	COUNT(PEDIDO.IDPEDIDO) DESC;
    
-- QUESTAO 19
SELECT 
	PEDIDO.IDPEDIDO
    , PEDIDO.DT_PEDIDO
    , CLIENTE.IDCLIENTE
	, CLIENTE.NOME
    , PRODUTO.IDPRODUTO
    , PRODUTO.NOME
    , ITEM_PEDIDO.PRECO_UNITARIO
    , ITEM_PEDIDO.QTDE
    , (ITEM_PEDIDO.PRECO_UNITARIO * ITEM_PEDIDO.QTDE) AS TOTAL
FROM 
	CLIENTE
    INNER JOIN PEDIDO ON
    PEDIDO.IDCLIENTE = CLIENTE.IDCLIENTE
    INNER JOIN ITEM_PEDIDO ON
    PEDIDO.IDPEDIDO = ITEM_PEDIDO.IDPEDIDO
    INNER JOIN PRODUTO ON
    ITEM_PEDIDO.IDPRODUTO = PRODUTO.IDPRODUTO
WHERE
	PEDIDO.IDPEDIDO = 10;
    
-- QUESTAO 20
SELECT 
	CLIENTE.SEXO
    , PRODUTO.CATEGORIA
    , SUM(ITEM_PEDIDO.QTDE)
FROM 
	CLIENTE
    INNER JOIN PEDIDO ON
    PEDIDO.IDCLIENTE = CLIENTE.IDCLIENTE
    INNER JOIN ITEM_PEDIDO ON
    PEDIDO.IDPEDIDO = ITEM_PEDIDO.IDPEDIDO
    INNER JOIN PRODUTO ON
    ITEM_PEDIDO.IDPRODUTO = PRODUTO.IDPRODUTO
GROUP BY 
	CLIENTE.SEXO
    , PRODUTO.CATEGORIA
;