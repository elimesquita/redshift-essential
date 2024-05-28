Se o padrão de consulta for incerto ou diversificado, 
a opção AUTO permite que o Redshift determine automaticamente a chave de classificação 
ideal com base nos dados e nos padrões de acesso.

DROP TABLE orders;

SELECT * FROM SVV_TABLE_INFO
WHERE  "table" = 'orders';

SELECT * FROM orders limit 10;
SELECT count(*) FROM orders;

CREATE TABLE orders (
  order_id INT PRIMARY KEY DISTKEY,
  order_date DATETIME,
  order_customer_id INT ,
  order_status VARCHAR(45)
) SORTKEY AUTO -- Chave de classificação automática;

SELECT * FROM orders limit 10;

COPY orders
FROM 's3://ia16-emesquita/dataset/orders/orders.csv'
IAM_ROLE 'arn:aws:iam::913912361750:role/Role_Treinamento_RDFT_ia16_v1'
CSV DELIMITER ',';

CREATE TABLE orders (
  order_id INT PRIMARY KEY DISTKEY,
  order_date DATETIME ,
  order_customer_id INT ,
  order_status VARCHAR(45)
  ); 

--Neste exemplo, a coluna order_date é definida como a chave de classificação,
--pois as consultas frequentemente filtram pedidos por data.


CREATE TABLE orders (
  order_id INT PRIMARY KEY DISTKEY,
  order_date DATETIME SORTKEY, -- Definindo 'order_date' como a chave de classificação
  order_customer_id INT ,
  order_status VARCHAR(45)
) DISTSTYLE KEY;


-- Exemplo 2: Sort Key para Junções com Clientes

--Se as consultas frequentes envolvem JOIN com a tabela de clientes para obter informações 
--adicionais do cliente, a coluna customer_id pode ser definida como a chave de classificação.

CREATE TABLE orders (
  order_id INT PRIMARY KEY DISTKEY,
  order_date DATETIME,
  order_customer_id INT SORTKEY, -- Definindo 'customer_id' como a chave de classificação
  order_status VARCHAR(45)
) DISTSTYLE KEY;

--Se as consultas filtram pedidos por data e status do pedido, 
--ambas as colunas podem ser usadas como uma chave de classificação composta.

CREATE TABLE orders (
  order_id INT PRIMARY KEY DISTKEY,
  order_date DATETIME,
  order_customer_id INT,
  order_status VARCHAR(45),
  SORTKEY (order_date, order_status) -- Chave de classificação composta
);


Se o padrão de consulta for incerto ou diversificado, a opção AUTO permite que o Redshift determine automaticamente a chave de classificação ideal com base nos dados e nos padrões de acesso.

Lembre-se de considerar os padrões de consulta e acesso de dados ao escolher a chave de classificação.
O Redshift permite alterar a chave de classificação posteriormente, mas isso envolve a movimentação de dados e pode impactar o desempenho durante a operação.
Utilize ferramentas de monitoramento para analisar o desempenho de consultas e identificar oportunidades de otimização com base na chave de classificação escolhida.
Recursos Adicionais:

Documentação do Redshift sobre Chaves de Classificação: https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html
Melhores Práticas para Chaves de Classificação no Redshift: https://docs.aws.amazon.com/redshift/latest/dg/c_best-practices-sort-key.html
Otimizando Desempenho de Consultas com Chaves de Classificação no Redshift: https://m.youtube.com/watch?v=mfV4GMBDQVg