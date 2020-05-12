SELECT *
FROM pg_table_def
WHERE schemaname = 'mysql_dwh' 
    

SELECT 
	"column", 
	type, 
	distkey, 
	sortkey
FROM 	
	pg_table_def
WHERE 
	schemaname = 'mysql_dwh' 
AND 
	tablename = 'orders'


ALTER TABLE mysql_dwh.orders_test 
ALTER COMPOUND SORTKEY(order_purchase_timestamp,order_id)

ALTER TABLE mysql_dwh.orders_test 
ALTER DISTKEY order_id

ALTER TABLE old_table_name RENAME TO new_table_name;
