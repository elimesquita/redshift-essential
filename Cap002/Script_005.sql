--Visão geral de JOIN usando Tabelas Redshift
-- Usando o WHERE para fazer JOIN
--Opção 1
--Nome dos compradores, quantidade comprada, preço pago, comissão paga e percentual da comissão
--SALES (Dados das vendas)
--USERS (Dados dos clientes)


SELECT
    salesid,
    (firstname ||' '|| lastname) as name,
    qtysold,
    pricepaid,
    commission,
    (commission/pricepaid)*100 as Percomission
FROM sales, users
WHERE sales.sellerid = users.userid;

--Opção 2
SELECT
    salesid,
    (firstname ||' '|| lastname) as name,
    qtysold,
    pricepaid,
    commission,
    (commission/pricepaid)*100 as Percomission
FROM 
    sales S,
    users U
WHERE 
    S.sellerid = U.userid;

--Opção 2 LEFT OUTER JOIN

SELECT 
    listing.listid, 
    sum(pricepaid) as price, 
    sum(commission) as comm
FROM listing LEFT OUTER JOIN sales 
    ON sales.listid = listing.listid
WHERE listing.listid BETWEEN 1 AND 5
GROUP BY 1
ORDER BY 1;

--Opção 2 RIGHT OUTER JOIN 

SELECT 
    listing.listid, 
    sum(pricepaid) as price, 
    sum(commission) as comm
FROM listing RIGHT OUTER JOIN sales 
    ON sales.listid = listing.listid
WHERE listing.listid BETWEEN 1 AND 5
GROUP BY 1
ORDER BY 1;

--Opção 3 FULL JOIN 

SELECT 
    listing.listid, 
    sum(pricepaid) as price, 
    sum(commission) as comm
FROM listing FULL JOIN sales 
    ON sales.listid = listing.listid
WHERE listing.listid BETWEEN 1 AND 5
GROUP BY 1
ORDER BY 1;


--Opção 4 Cláusula USING

SELECT
    salesid,
    (firstname ||' '|| lastname) as name,
    qtysold,
    pricepaid,
    commission,
    (commission/pricepaid)*100 as Percomission
FROM 
    sales JOIN users
USING(sellerid,userid)

--Opção 4 NATURAL JOIN

SELECT 
    listid, 
    sellerid, 
    eventid, 
    dateid, 
    numtickets
FROM listing NATURAL JOIN sales
ORDER BY 1
LIMIT 5;

--Opção 5 CROSS JOIN
SELECT 
    sales.listid as sales_listid, 
    listing.listid as listing_listid
FROM sales CROSS JOIN listing
WHERE sales.listid BETWEEN 1 AND 5
AND listing.listid BETWEEN 1 AND 5
ORDER BY 1,2;

