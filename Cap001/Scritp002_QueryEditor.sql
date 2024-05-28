--## Execute Consultas de Teste
Query Editor V1
SELECT * FROM sales LIMIT 5;
SELECT * FROM users LIMIT 3;

Query Editor V2 (Run e Run All - Ateção ao ponto e virgula)
SELECT * FROM sales LIMIT 5;
SELECT * FROM users LIMIT 3;

#### Obter informações dos metadados ####
-- Consultar Tabelas do Sistema
SELECT * FROM information_schema.tables

SELECT * FROM information_schema.tables
WHERE table_schema = 'public';

-- Consultar os bancos de dados existentes
SELECT 
	database_name,
    database_owner,
    database_type
FROM svv_redshift_databases;

--Listar todos os esquemas do Amazon Redshift de todos os bancos de dados no cluster.
SELECT 
    database_name, 
    schema_name, 
    schema_owner, 
    schema_type
FROM svv_redshift_schemas;

--Listar todas as tabelas ou views do Amazon Redshift de todos os bancos de dados no cluster.
SELECT 
    database_name,
    schema_name,
    table_name,
    table_type
FROM svv_redshift_tables
where database_name in ('dev') and schema_name in ('public');

--Listar todas as colunas de uma tabela
SELECT 
	database_name,
    schema_name,
    table_name,
    column_name,
    data_type,
    numeric_precision
FROM svv_all_columns
WHERE database_name = 'dev'
AND table_name = 'sales'
ORDER BY column_name, schema_name
LIMIT 5; 

## Guia do desenvolvedor de banco de dados (Amazon Redshift)
https://docs.aws.amazon.com/pt_br/redshift/latest/dg/redshift-dg.pdf

--Tabelas do Sistema
• SVV_ALL_COLUMNS (p. 1488)
• SVV_ALL_SCHEMAS (p. 1489)
• SVV_ALL_TABLES (p. 1490)
• SVV_ALTER_TABLE_RECOMMENDATIONS (p. 1491)
• SVV_ATTACHED_MASKING_POLICY (p. 1492)
• SVV_COLUMNS (p. 1494)
• SVV_COLUMN_PRIVILEGES (p. 1495)
• SVV_DATABASE_PRIVILEGES (p. 1496)
• SVV_DATASHARE_PRIVILEGES (p. 1497)
• SVV_DATASHARES (p. 1498)
• SVV_DATASHARE_CONSUMERS (p. 1500)
• SVV_DATASHARE_OBJECTS (p. 1500)
• SVV_DEFAULT_PRIVILEGES (p. 1502)
• SVV_DISKUSAGE (p. 1503)
• SVV_EXTERNAL_COLUMNS (p. 1505)
• SVV_EXTERNAL_DATABASES (p. 1505)
• SVV_EXTERNAL_PARTITIONS (p. 1506)
• SVV_EXTERNAL_SCHEMAS (p. 1507)
• SVV_EXTERNAL_TABLES (p. 1507)
• SVV_FUNCTION_PRIVILEGES (p. 1509)
• SVV_GEOGRAPHY_COLUMNS (p. 1510)
• SVV_GEOMETRY_COLUMNS (p. 1510)
• SVV_IAM_PRIVILEGES (p. 1511)
• SVV_IDENTITY_PROVIDERS (p. 1512)
• SVV_INTEGRATION (visualização prévia) (p. 1513)
• SVV_INTEGRATION_TABLE_STATE (visualização prévia) (p. 1514)
• SVV_INTERLEAVED_COLUMNS (p. 1515)
• SVV_LANGUAGE_PRIVILEGES (p. 1516)
• SVV_MASKING_POLICY (p. 1517)
• SVV_ML_MODEL_INFO (p. 1518)
• SVV_ML_MODEL_PRIVILEGES (p. 1518)
• SVV_MV_DEPENDENCY (p. 1519)
• SVV_MV_INFO (p. 1520)
• SVV_QUERY_INFLIGHT (p. 1522)
• SVV_QUERY_STATE (p. 1523)
• SVV_REDSHIFT_COLUMNS (p. 1525)
• SVV_REDSHIFT_DATABASES (p. 1527)
• SVV_REDSHIFT_FUNCTIONS (p. 1527)
• SVV_REDSHIFT_SCHEMAS (p. 1528)
• SVV_REDSHIFT_TABLES (p. 1529)
• SVV_RELATION_PRIVILEGES (p. 1530)
• SVV_RLS_APPLIED_POLICY (p. 1531)
• SVV_RLS_ATTACHED_POLICY (p. 1532)
• SVV_RLS_POLICY (p. 1533)
• SVV_RLS_RELATION (p. 1534)
• SVV_ROLES (p. 1535)
• SVV_ROLE_GRANTS (p. 1535)
• SVV_SCHEMA_QUOTA_STATE (p. 1536)
• SVV_SCHEMA_PRIVILEGES (p. 1537)
• SVV_SYSTEM_PRIVILEGES (p. 1538)
• SVV_TABLES (p. 1539)
• SVV_TABLE_INFO (p. 1539)
• SVV_TRANSACTIONS (p. 1542)
• SVV_USER_INFO (p. 1544)
• SVV_USER_GRANTS (p. 1544)
• SVV_VACUUM_PROGRESS (p. 1545)
• SVV_VACUUM_SUMMARY (p. 1547)