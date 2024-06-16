SELECT DISTINCT company_name 
FROM customers
JOIN orders USING(customer_id)
JOIN order_details USING(order_id)
WHERE quantity > 50

SELECT customer_id
FROM orders
JOIN order_details USING(order_id)
WHERE quantity > 40

SELECT DISTINCT company_name
FROM customers
WHERE customer_id = ANY(SELECT customer_id
FROM orders
JOIN order_details USING(order_id)
WHERE quantity > 40)

SELECT AVG(quantity)
FROM order_details

SELECT  DISTINCT product_name, quantity
FROM products
JOIN order_details USING(product_id)
WHERE quantity > (SELECT AVG(quantity)
FROM order_details)

SELECT AVG(quantity)
FROM order_details
GROUP BY product_id

SELECT DISTINCT product_name, quantity
FROM products
JOIN order_details USING(product_id)
WHERE quantity > ALL(SELECT AVG(quantity)
FROM order_details
GROUP BY product_id
)