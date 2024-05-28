CREATE EXTERNAL SCHEMA myspectrum_schema 
FROM data catalog 
DATABASE 'myspectrum_db' 
IAM_ROLE 'arn:aws:iam::123456789012:role/myspectrum_role'
CREATE EXTERNAL DATABASE if not exists;


--Executando consulta federeda com spectrum
select * from ia16_spectrum.categories;

SELECT
    d.department_name ,
    p.product_name,
    c.category_name
FROM 
    rds_postgres.departments d,
    public.products p,
    ia16_spectrum.categories c
WHERE
    d.department_id = c.category_department_id
AND
    p.product_category_id = c.category_id


--Criando View
CREATE VIEW v_federada AS
SELECT
    d.department_name ,
    p.product_name,
    c.category_name
FROM 
    rds_postgres.departments d,
    public.products p,
    ia16_spectrum.categories c
WHERE
    d.department_id = c.category_department_id
AND
    p.product_category_id = c.category_id

WITH NO SCHEMA BINDING;

--selecionar view
SELECT * FROM v_federada ;

SELECT * FROM rds_postgres.orders LIMIT 5;
SELECT * FROM ia16_spectrum.categories LIMIT 5;
SELECT * FROM public.products LIMIT 5;

