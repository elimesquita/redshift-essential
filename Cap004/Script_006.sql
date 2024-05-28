## Tabela: products - Arquivo: products.json 
COPY products
FROM 's3://ia16-emesquita/dataset/products/products.json'
IAM_ROLE 'arn:aws:iam::913912361750:role/ia16RedshiftS3FullAccessRole'
JSON as 'auto';

SELECT count(*) FROM products;
SELECT * FROM products limit 10;

--Tabela de Logs de Erro
SELECT * FROM stl_load_errors;

SELECT 
  userid,
  starttime,
  filename,
  line_number,
  colname,
  type,
  col_length,
  err_reason,
  raw_line
FROM stl_load_errors;


-- Solução:
ALTER TAble products alter column product_name type varchar(255);

## Tabela: order - Arquivo: order.csv 
COPY orders
FROM 's3://ia16-emesquita/dataset/orders/orders.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/ia16RedshiftS3FullAccessRole'
CSV DELIMITER ',';

SELECT count(*) FROM order;
SELECT * FROM order limit 10;

--Tabela de Logs de Erro
SELECT * FROM stl_load_errors;

-- Isso não vai funcionar, era exemplo:
ALTER TABLE orders ALTER COLUMN order_date TYPE DATETIME;

-- Essa é a solução que usamos
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATETIME,
  order_customer_id INT ,
  order_status VARCHAR(45)
);