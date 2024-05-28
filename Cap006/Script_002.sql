
-- Executar no PostGres
set password_encryption = 'md5';
alter user postgres with password 'mudar123';

-- Liberar os acessos no Security Group


--SINTAXE PADRÃO [Executar no Redsfhit]
CREATE EXTERNAL SCHEMA apg
FROM POSTGRES
DATABASE 'database-1' SCHEMA 'myschema'
URI 'endpoint to aurora hostname'
IAM_ROLE 'arn:aws:iam::123456789012:role/Redshift-SecretsManager-RO'
SECRET_ARN 'arn:aws:secretsmanager:us-west-2:123456789012:secret:federation/test/dataplane-apg-creds-YbVKQw';

