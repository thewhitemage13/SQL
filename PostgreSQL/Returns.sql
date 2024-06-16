CREATE OR REPLACE FUNCTION get_average_prces_by_prod_categories()
	RETURNS SETOF double precision AS $$
  SELECT AVG(unit_price)
  FROM products
  GROUP BY category_id
$$ LANGUAGE SQL;

SELECT * FROM get_average_prces_by_prod_categories();

CREATE OR REPLACE FUNCTION get_avg_prices_by_prod_cats(OUT sum_price real, OUT avg_price float8)
	RETURNS SETOF RECORD AS $$
	SELECT SUM(unit_price), AVG(unit_price)
	FROM products
	GROUP BY category_id
$$ LANGUAGE SQL;

SELECT sum_price FROM get_avg_prices_by_prod_cats();
SELECT sum_price, avg_price FROM get_avg_prices_by_prod_cats();