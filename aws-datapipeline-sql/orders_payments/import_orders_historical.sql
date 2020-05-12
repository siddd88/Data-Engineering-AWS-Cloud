select 
	* 
from 
	ecommerce_db.order_payments 
where date(order_purchase_timestamp)<='2018-09-31'