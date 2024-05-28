-- Visão Geral do Comando COPY
-- Tabelas que serão usadas:
Tabela: order_items - Arquivo: order_items.csv
Tabela: categories - Arquivo: categories.json
Tabela: customers - Arquivo: customers.csv

--Sintaxe do Comando COPY (Comando COPY com CREDENTIALS)
COPY nome_da_tabela 
FROM 's3://mybucket/mydata’ 
CREDENTIALS 'aws_access_key_id=<temporary-access-key-id>;aws_secret_access_key=<temporary-secret-access-key>’
cvs|json;

## Tabela: customers - Arquivo: customers.csv
COPY {NOME DA TABELA} 
FROM '{CAMINHO DO BUKET}'
CREDENTIALS 'aws_access_key_id={CHAVE};aws_secret_access_key={SECRET}' 
csv;

SELECT count(*) FROM customers;
SELECT * FROM customers limit 10;

## Tabela: categories - Arquivo: categories.json
COPY {NOME DA TABELA} 
FROM '{CAMINHO DO BUKET}'
CREDENTIALS 'aws_access_key_id={CHAVE};aws_secret_access_key={SECRET}' 
JSON as 'auto';

SELECT count(*) FROM categories;
SELECT * FROM categories limit 10;


## Tabela: order_items - Arquivo: order_items.csv 
COPY {NOME DA TABELA} 
FROM '{CAMINHO DO BUKET}'
CREDENTIALS 'aws_access_key_id={CHAVE};aws_secret_access_key={SECRET}' 
csv DELIMITER ',';

SELECT count(*) FROM order_items;
SELECT * FROM order_items limit 10;