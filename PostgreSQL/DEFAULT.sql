CREATE TABLE customer
(
	customer_id serial,
	full_name text,
	status char DEFAULT 'r',
	CONSTRAINT PK_customer_id PRIMARY KEY(customer_id)
);

INSERT INTO customer(full_name)
VALUES ('name');

SELECT * FROM customer