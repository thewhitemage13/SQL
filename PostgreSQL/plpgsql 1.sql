CREATE OR REPLACE FUNCTION get_total_number_of_goods()RETURNS bigint AS $$
BEGIN
	RETURN SUM(units_in_stock)
	FROM products;
END;
$$LANGUAGE plpgsql

SELECT get_total_number_of_goods();

CREATE OR REPLACE FUNCTION get_max_price_from_discontinued()RETURNS bigint AS $$
BEGIN
	RETURN MAX(unit_price)
	FROM products
	WHERE discontinued = 1;
END;
$$LANGUAGE plpgsql

SELECT get_max_price_from_discontinued();

CREATE OR REPLACE FUNCTION get_price_bounderies(OUT max_price real, OUT min_price real) AS $$
BEGIN
	max_price:=MAX(unit_price) FROM products;
	min_price:=MIN(unit_price) FROM products;
END;
$$LANGUAGE plpgsql;

SELECT get_price_bounderies();

CREATE OR REPLACE FUNCTION get_price_bounderies_2(OUT max_price real, OUT min_price real) AS $$
BEGIN
	SELECT MAX(unit_price), MIN(unit_price)
	INTO max_price, min_price
	FROM products;
END;
$$LANGUAGE plpgsql;

SELECT get_price_bounderies_2();

CREATE OR REPLACE FUNCTION get_sum(x int, y int, OUT RESULT int) AS $$
BEGIN
	RESULT := x+y;
END;

CREATE OR REPLACE FUNCTION get_customers_by_country(customer_country varchar) RETURNS SETOF customers AS $$
BEGIN 
	RETURN QUERY
	SELECT *
	FROM customers
	WHERE country = customer_country;
END;
$$LANGUAGE plpgsql;

SELECT * FROM get_customers_by_country('USA'); 

