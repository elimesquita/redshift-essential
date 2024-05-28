--Para exibir o estilo de distribuição de uma tabela, consulte a exibição: SVV_TABLE_INFO.
SELECT * FROM SVV_TABLE_INFO;

-- Obs. Por padrão os usuáios criados não tem acesso as tabelas do schema pg_catalog
Conecte-se ao Redshift com usuário administrador para liberar o grant para os usuários desejados
GRANT SELECT ON ALL TABLES IN SCHEMA pg_catalog TO mesquita;

Remover Permissão
REVOKE SELECT ON ALL TABLES IN SCHEMA pg_catalog FROM mesquita;

-- Execute o select novamente: 
SELECT * FROM SVV_TABLE_INFO;

COPY orders
FROM 's3://ia16-emesquita/dataset/orders/orders.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/ia16RedshiftS3FullAccessRole'
CSV DELIMITER ',';


## Tabela: order_items - Arquivo: order_items.csv 
COPY order_items
FROM 's3://ia16-emesquita/dataset/order_items/order_items.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/ia16RedshiftS3FullAccessRole'
CSV DELIMITER ',';

-- Execute o select novamente: 
SELECT * FROM SVV_TABLE_INFO;


--Armazena informações sobre colunas de tabela.
SELECT * FROM pg_table_def;

SELECT * FROM pg_table_def where schemaname = 'vendas'
show search_path

SET search_path = '$user',public,vendas

-- Criar um novo paramenter group para o cluster
-- search_path = '$user',public,vendas

vendas-multi-customizado