##############################################
##     Tabela com DISTSTYLE do tipo ALL     ##
##############################################

-> ALL: Uma cópia de toda a tabela é distribuída para cada nó. 
   O ALL multiplica o armazenamento exigido pelo número de nós no cluster


DROP TABLE vendas.departments CASCADE;
DROP TABLE vendas.categories CASCADE;
DROP TABLE vendas.products CASCADE;
DROP TABLE vendas.orders CASCADE;
DROP TABLE vendas.order_items CASCADE;
DROP TABLE vendas.customers CASCADE;

-- Tabela: departments
CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(45)
) DISTSTYLE ALL;

COPY departments
FROM 's3://ia16-emesquita/dataset/departments/departments.json'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16'
JSON as 'auto';

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'departments';

CREATE TABLE categories (
  category_id INT PRIMARY KEY,
  category_department_id INT,
  category_name VARCHAR(45)
) DISTSTYLE ALL; 

COPY categories
FROM 's3://ia16-emesquita/dataset/categories/categories.json'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16'
JSON as 'auto';

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'categories';

-- Tabela: products

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_category_id INT,
  product_name VARCHAR(45),
  product_description VARCHAR(255),
  product_price REAL,
  product_image VARCHAR(255)
) DISTSTYLE ALL;

SELECT * FROM products LIMIT 5;

COPY products
FROM 's3://ia16-emesquita/dataset/products/products.json'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16'
JSON as 'auto';

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'products';