--Visão geral do uso de VIEWS em consultas SQL do Redshift

--Apresentar o Modelo de Dados que estamos usando
--https://docs.aws.amazon.com/pt_br/redshift/latest/dg/c_sampledb.html

SELECT
    sellerid, 
    username, 
    (firstname ||' '|| lastname) as name,
city, sum(qtysold)
FROM sales, date, users
WHERE sales.sellerid = users.userid
AND sales.dateid = date.dateid
AND year = 2008
AND city = 'San Diego'
GROUP BY sellerid, username, name, city
ORDER BY  5 DESC
LIMIT 5;


--Criando uma VIEW
CREATE VIEW Vendas AS

SELECT
    sellerid, 
    username, 
    (firstname ||' '|| lastname) as name,
city, sum(qtysold)
FROM sales, date, users
WHERE sales.sellerid = users.userid
AND sales.dateid = date.dateid
AND year = 2008
AND city = 'San Diego'
GROUP BY sellerid, username, name, city
ORDER BY  5 DESC
LIMIT 5;

-- REPLACE
CREATE OR REPLACE VIEW Vendas AS
SELECT
    sellerid as Codigo_Usuario, 
    username Login, 
    (firstname ||' '|| lastname) as Nome,
    city as Cidade, 
    sum(qtysold) as Total_Venda
FROM sales, date, users
WHERE sales.sellerid = users.userid
AND sales.dateid = date.dateid
GROUP BY sellerid, username, Nome, city
ORDER BY  5 DESC;

--Nota: Erro no Group by (O nome da coluna no group by, tem que ser o mesmo do aliás da coluna ou a posição da coluna)
-- (firstname ||' '|| lastname) as Nome por conta da junção

DROP VIEW Vendas;

--Nota: Para usar o REPLACE, 
--Você só pode substituir uma VIEW com uma consulta nova que gere o conjunto idêntico de colunas, usando os
--mesmos nomes de coluna e tipos de dados. 

CREATE OR REPLACE VIEW Vendas AS
SELECT
    sellerid, 
    username, 
    (firstname ||' '|| lastname) as name,
city, sum(qtysold)
FROM sales, date, users
WHERE sales.sellerid = users.userid
AND sales.dateid = date.dateid
GROUP BY sellerid, username, name, city
ORDER BY  5 DESC;

CREATE OR REPLACE VIEW Vendas(Codigo,Usuario,Nome,Cidade,Total) 
AS 
    SELECT
        sellerid, 
        username, 
        (firstname ||' '|| lastname) nome,
        city, 
        sum(qtysold)
    FROM sales, date, users
    WHERE sales.sellerid = users.userid
    AND sales.dateid = date.dateid
    GROUP BY sellerid, username, Nome, city
    ORDER BY  5 DESC;

--Não recomendo usar o LIMIT na View
LIMIT 5;
AND year = 2008
AND city = 'San Diego'


--Select na View
SELECT * 
FROM Vendas 
WHERE cidade = 'San Diego'




