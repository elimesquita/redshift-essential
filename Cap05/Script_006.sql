##############################################
##     Tabela com DISTSTYLE do tipo AUTO    ##
##############################################

-> AUTO : Amazon Redshift atribui um estilo de distribuição ideal com base 
          no tamanho dos dados da tabela


-> EVEN: A distribuição EVEN é apropriada quando uma tabela não participa de JOIN.

-- Tabela: customers

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_fname VARCHAR(45),
  customer_lname VARCHAR(45),
  customer_email VARCHAR(45),
  customer_password VARCHAR(45),
  customer_street VARCHAR(255),
  customer_city VARCHAR(45),
  customer_state VARCHAR(45),
  customer_zipcode VARCHAR(45)
) DISTSTYLE AUTO; 

insert into customers 
values(9365842, 'Eliezio', 'Mesquita', 'eliezio.mesquita@ia16.com.br','123','rua 2','São Paulo','SP','4444-000')

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'customers';

COPY customers
FROM 's3://ia16-emesquita/dataset/customers/customers.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16'
CSV DELIMITER ',';
