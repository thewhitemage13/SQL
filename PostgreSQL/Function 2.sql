CREATE OR REPLACE FUNCTION get_product_price_by_name(prod_name varchar) RETURNS real AS $$
	SELECT unit_price
	FROM products
	WHERE product_name = prod_name
$$ LANGUAGE SQL;

SELECT get_product_price_by_name('Chocolade') AS price;

CREATE OR REPLACE FUNCTION get_price_boundaries(OUT max_price real, OUT min_price real) AS $$
	SELECT MAX(unit_price), MIN(unit_price)
	FROM products
$$ LANGUAGE SQL;

SELECT get_price_boundaries();

CREATE OR REPLACE FUNCTION get_price_boundaries_by_discontinuity(is_discontinued int, OUT max_price real, OUT min_price real) AS $$
	SELECT MAX(unit_price), MIN(unit_price)
	FROM products
	WHERE discontinued = is_discontinued
$$ LANGUAGE SQL;

SELECT get_price_boundaries_by_discontinuity(1);
SELECT * FROM get_price_boundaries_by_discontinuity(1);

 CREATE OR REPLACE FUNCTION get_price_boundaries_by_discontinuity_two(is_discontinued int DEFAULT 1, OUT max_price real, OUT min_price real) AS $$
	SELECT MAX(unit_price), MIN(unit_price)
	FROM products
	WHERE discontinued = is_discontinued
$$ LANGUAGE SQL;

SELECT get_price_boundaries_by_discontinuity_two();
SELECT * FROM get_price_boundaries_by_discontinuity_two(0);