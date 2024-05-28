-- Visão Geral do Comando COPY

--Comando COPY com AWS ROLE

-- Criando IAM ROLE
IAM ==> ROLE ==> AWS Service ==> Redshift ==> Redshift Customizable
Adicionar a politica: AmazonS3FullAccess
Nome da Role: ia16RedshiftS3FullAccessRole

Copiar o ARN da Role
arn:aws:iam::913912361750:role/ia16RedshiftS3FullAccessRole

-- Tabelas que serão usadas:
Tabela: departments - Arquivo: departments.json 
Tabela: products - Arquivo: products.json 
Tabela: order - Arquivo: order.csv 

--Sintaxe do Comando COPY (Comando COPY com IAM_ROLE)
COPY {NOME DA TABELA} 
FROM '{CAMINHO DO BUKET}'
IAM_ROLE '{ARN_da_ROLE}';
csv;

## Tabela: departments - Arquivo: departments.json 
COPY departments
FROM 's3://ia16-emesquita/dataset/departments/departments'
IAM_ROLE 'arn:aws:iam::913912361750:role/ia16RedshiftS3FullAccessRole'
JSON as 'auto';

SELECT count(*) FROM departments;
SELECT * FROM departments limit 10;