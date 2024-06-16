SELECT product_name, unit_price, units_in_stock,
	CASE WHEN units_in_stock >= 100 THEN 'LOTS OF'
		 WHEN units_in_stock >= 50 AND units_in_stock < 100 THEN 'average'
		 WHEN units_in_stock < 50 THEN 'LOW NUMBER'
		 ELSE 'UNKNOWN'
	END AS amount
FROM products
ORDER BY units_in_stock DESC;

SELECT order_id, order_date,
	CASE WHEN date_part('month', order_date) BETWEEN 3 and 5 THEN 'Spring'
		 WHEN date_part('month', order_date) BETWEEN 6 and 8 THEN 'Summer'
		 WHEN date_part('month', order_date) BETWEEN 9 and 11 THEN 'autumn'
		 ELSE 'winter'
	END AS season
FROM orders

SELECT product_name, unit_price,
	CASE WHEN unit_price >= 30 THEN 'Expensive'
		 WHEN unit_price < 30 THEN 'Inexpensive'
		 ELSE 'Unknown'
	END AS price_desc
FROM products;