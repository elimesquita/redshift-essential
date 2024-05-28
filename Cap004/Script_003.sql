-- Criando o Banco de Dados e a Tabela
CREATE DATABASE retail;

-- Duplicar e alterar a conexão para o banco retail
-- Alterar a conexão no Query Editor
-- Feche o editor e abra novamente


-- Criar as tabelas

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  order_customer_id INT ,
  order_status VARCHAR(45)
);


CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_item_order_id INT,
  order_item_product_id INT,
  order_item_quantity INT,
  order_item_subtotal REAL,
  order_item_product_price REAL
);

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(45)
);


CREATE TABLE categories (
  category_id INT PRIMARY KEY,
  category_department_id INT,
  category_name VARCHAR(45)
); 


CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_category_id INT,
  product_name VARCHAR(45),
  product_description VARCHAR(255),
  product_price REAL,
  product_image VARCHAR(255)
);

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
); 

-- Checar a quantidade de linhas
select count(*) from categories c;
select count(*) from customers l ;
select count(*) from departments d;
select count(*) from orders o ;
select count(*) from order_items i; 
select count(*) from products p;
