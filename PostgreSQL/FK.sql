CREATE TABLE book
(
	book_id int,
	title text NOT NULL,
	isbn VARCHAR(32) NOT NULL,
	publisher_id INT,
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id)
)

ALTER TABLE book
ADD COLUMN price decimal CONSTRAINT CHK_book_price CHECK(price > 0)

INSERT INTO book
VALUES (1, 'title', 'isbn', 1, 1.5);

SELECT * FROM book