select 
	a.* ,
	b.product_category_name
from 
	ecommerce_db.order_items a 
join 
	ecommerce_db.products b 
on 
	a.product_id = b.product_id
where 
	date(a.order_purchase_timestamp) BETWEEN '2018-10-17' - INTERVAL 180 DAY AND '2018-10-17'