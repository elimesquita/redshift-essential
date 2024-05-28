##############################################
##     Tabela com DISTSTYLE do tipo KEY     ##
##############################################

-> KEY : As linhas são distribuídas de acordo com os valores em uma coluna. 
         Se você distribuir um par de tabelas nas chaves de JOIN, 
         o nó líder coloca as linhas nas fatias(slice) de acordo com os 
         valores nas colunas de JOIN


-- Tabela: orders
CREATE TABLE orders (
  order_id INT PRIMARY KEY DISTKEY,
  order_date DATETIME,
  order_customer_id INT ,
  order_status VARCHAR(45)
) DISTSTYLE KEY;

COPY orders
FROM 's3://ia16-emesquita/dataset/orders/orders.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16'
CSV DELIMITER ',';

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'orders';

-- Tabela: order_items
CREATE TABLE order_items (
  order_item_id INT primary key,
  order_item_order_id INT DISTKEY,
  order_item_product_id INT,
  order_item_quantity INT,
  order_item_subtotal REAL,
  order_item_product_price REAL,
  FOREIGN KEY (order_item_order_id) REFERENCES public.orders(order_id)
) ;

COPY order_items
FROM 's3://ia16-emesquita/dataset/order_items/order_items.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16'
CSV DELIMITER ',';

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'order_items';

SELECT * FROM  pg_table_def
WHERE schemaname = 'public'
AND tablename = 'customers'

select * from pg_table_def
where schemaname = 'public'
and tablename = 'orders';

select * from pg_table_def
where schemaname = 'public'
and tablename = 'order_items';


