select 
	*
from 
	ecommerce_db.order_payments 
where 
	order_purchase_timestamp BETWEEN '2018-10-17' - INTERVAL 180 DAY AND '2018-10-17'