--Executando agregações com GROUP BY usando Redshift SQL
--Filtrando em resultados agregados usando HAVING em GROUP BY
--Usando o ORDER com GROUP BY e HAVING

--Total de Venda por Estado
SELECT 
    sum(venueseats) 
FROM venue
WHERE venuestate = 'TX';


SELECT 
    venuestate as estado,
    sum(venueseats) as valor_venda
FROM venue
GROUP BY venuestate;


SELECT 
    venuestate as estado,
    sum(venueseats) as valor_venda
FROM venue
GROUP BY venuestate;


--WHERE: Filtra depois agrupa
SELECT 
    venuestate as estado,
    sum(venueseats) as valor_venda
FROM venue
WHERE venueseats > 0
GROUP BY venuestate;



--HAVING: Agrupa e depois filtra
SELECT 
    venuestate as estado,
    sum(venueseats) as valor_venda
FROM venue
GROUP BY venuestate
HAVING SUM(venueseats) > 0


--ORDER BY
SELECT 
    venuestate as estado,
    sum(venueseats) as valor_venda
FROM venue
GROUP BY venuestate
HAVING SUM(venueseats) > 0
ORDER BY valor_venda;