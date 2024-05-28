
--Para exibir o novo esquema, consulte a tabela de catálogo PG_NAMESPACE
SELECT 
	nspname as schema, 
	usename as owner
FROM 
	pg_namespace, pg_user
where
	pg_namespace.nspowner = pg_user.usesysid
AND 
	pg_user.usename ='mesquita';
--Conecte-se no banco VAREJO com o usuário criado, em meu caso usuário MESQUITA

--Vamos criar a tabela no schema VENDAS.

--Se não declarar o schema, por padrão ele vai criar a tabela no schema PUBLIC.
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATETIME,
  order_customer_id INT ,
  order_status VARCHAR(45)
);

CREATE TABLE vendas.orders (
  order_id INT PRIMARY KEY,
  order_date DATETIME,
  order_customer_id INT ,
  order_status VARCHAR(45)
) DISTSTYLE AUTO;

CREATE TABLE vendas.order_items (
  order_item_id INT PRIMARY KEY,
  order_item_order_id INT,
  order_item_product_id INT,
  order_item_quantity INT,
  order_item_subtotal REAL,
  order_item_product_price REAL
);