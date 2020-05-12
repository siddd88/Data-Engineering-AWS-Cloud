select 
	a.order_id,
	a.order_status,
	a.customer_id,
	a.order_approved_at,
	a.order_delivered_carrier_date,
	a.order_delivered_customer_date,
	a.order_estimated_delivery_date,
	a.order_purchase_timestamp,
	b.customer_city,
	b.customer_state,
	b.customer_zip_code_prefix
from 
	ecommerce_db.orders a 
join 
	ecommerce_db.customers b
on 
	a.customer_id = b.customer_id
where 
	(a.order_purchase_timestamp BETWEEN '2018-10-17' - INTERVAL 180 DAY AND '2018-10-17')