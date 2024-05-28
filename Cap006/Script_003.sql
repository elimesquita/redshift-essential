
-- Fazendo Consultas Federadas:
select * from rds_postgres.orders limit 5

-- Fazendo Consultas Federadas[JOIN]
select 
	c.firstname,
	c.email,
	o.order_status
from 
	public.users c, 
	rds_postgres.orders o
where 
	c.userid  = o.order_customer_id
and  
	o.order_status = 'PENDING_PAYMENT';