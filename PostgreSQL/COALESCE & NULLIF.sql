SELECT * FROM orders
LIMIT 10
	
SELECT order_id, order_date, COALESCE(ship_region, 'unknown') AS ship_region
FROM orders
LIMIT 10

SELECT * FROM employees

SELECT employee_id, last_name, first_name, city, COALESCE(region, 'unknown') AS region
FROM employees

SELECT * FROM customers

SELECT contact_name, COALESCE(NULLIF(city,'Warszawa'), 'Unknown') AS city
FROM customers