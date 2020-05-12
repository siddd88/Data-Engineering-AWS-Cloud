CREATE TABLE mysql_dwh.orders (
	order_id VARCHAR(50) , 
	order_status VARCHAR(35) , 
	customer_id VARCHAR(100) , 
	order_approved_at TIMESTAMP, 
	order_delivered_carrier_date TIMESTAMP, 
	order_delivered_customer_date TIMESTAMP, 
	order_estimated_delivery_date TIMESTAMP, 
	order_purchase_timestamp TIMESTAMP, 
	customer_city VARCHAR(50) , 
	customer_state VARCHAR(10) , 
	customer_zip_code_prefix DECIMAL 
);

CREATE TABLE mysql_dwh.order_items (
	order_id VARCHAR(100) , 
	order_item_id DECIMAL , 
	product_id VARCHAR(100) , 
	seller_id VARCHAR(100) , 
	shipping_limit_date TIMESTAMP, 
	price DECIMAL , 
	freight_value DECIMAL , 
	order_purchase_timestamp TIMESTAMP,
	product_category_name VARCHAR(100)
);

CREATE TABLE mysql_dwh.order_payments (
	order_id VARCHAR(100) , 
	payment_sequential DECIMAL , 
	payment_type VARCHAR(100) , 
	payment_installments DECIMAL ,
	payment_value DECIMAL,
	order_purchase_timestamp TIMESTAMP
);

CREATE TABLE mysql_dwh.order_reviews (
	review_id VARCHAR(100) , 
	order_id VARCHAR(100) , 
	review_score INTEGER , 
	review_comment_title VARCHAR(255) , 
	review_comment_message VARCHAR(255) ,
	review_creation_date TIMESTAMP,
	review_answer_timestamp TIMESTAMP
);

CREATE TABLE mysql_dwh.geolocation (
	geolocation_zip_code_prefix BIGINT , 
	geolocation_lat INTEGER , 
	geolocation_lng INTEGER , 
	geolocation_city VARCHAR(50) , 
	geolocation_state VARCHAR(50)
);

CREATE TABLE mysql_dwh.sellers (
	seller_id VARCHAR(255) , 
	seller_zip_code_prefix BIGINT , 
	seller_city VARCHAR(50) , 
	seller_state VARCHAR(50)
);


CREATE TABLE mysql_dwh.product_category_name_translation (
	product_category_name VARCHAR(255) , 
	product_category_name_english VARCHAR(255)	
);


create table external_data_schema.user_behaviour(
	session_id varchar(255),
	event_timestamp TIMESTAMP,
	event_type varchar(50),
	userid varchar(255),
	product_id varchar(255),
	category_id varchar(255)
	)