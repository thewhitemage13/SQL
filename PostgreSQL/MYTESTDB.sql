CREATE OR REPLACE TABLE person
(
	person_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	last_name VARCHAR(128),
	first_name VARCHAR(128),
	birthday date
);

INSERT INTO person(last_name, first_name, birthday)
VALUES 
    ('Lolo', 'Mukhammed', TO_DATE('04.02.2005', 'DD.MM.YYYY')),
    ('Nogai', 'Katya', TO_DATE('02.02.2005', 'DD.MM.YYYY')),
    ('Bazelyan', 'Ivan', TO_DATE('08.25.2002', 'MM.DD.YYYY')),
    ('Mokanu', 'Ivan', TO_DATE('13.08.2005', 'DD.MM.YYYY')),
    ('Moeseev', 'Anton', TO_DATE('02.07.2003', 'DD.MM.YYYY'));

SELECT * FROM person;

CREATE TABLE phone
(
	phone_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	phone_number VARCHAR(256),
	person_id BIGINT REFERENCES person(person_id)
)

INSERT INTO phone(phone_number, person_id)
VALUES ('0687680687', 2),
	   ('0232456532', 4)

SELECT * FROM phone

SELECT phone_id, phone_number, person_id, last_name, first_name, birthday
FROM phone
RIGHT JOIN person USING(person_id)