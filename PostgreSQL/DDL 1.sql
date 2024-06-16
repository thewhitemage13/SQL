CREATE TABLE student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
)

CREATE TABLE cathedra
(
	cathedra_id serial,
	cathedra_name varchar,
	dean varchar
)

ALTER TABLE student
ADD COLUMN middle_name varchar;
ALTER TABLE student
ADD COLUMN rating float;
ALTER TABLE student
ADD COLUMN ebrolled date;

ALTER TABLE student
DROP COLUMN middle_name

ALTER TABLE cathedra
RENAME TO chair

ALTER TABLE chair
RENAME cathedra_id TO chair_id;

ALTER TABLE chair
RENAME cathedra_name TO chair_name;

ALTER TABLE student
ALTER COLUMN first_name SET DATA TYPE varchar(64);
ALTER TABLE student
ALTER COLUMN last_name SET DATA TYPE varchar(64);
ALTER TABLE student
ALTER COLUMN phone SET DATA TYPE varchar(30)

CREATE TABLE faculty
(
	faculty_id serial,
	faculty_name varchar
);

INSERT INTO faculty (faculty_name)
VALUES('faculty 1'),
	  ('faculty 2'),
      ('faculty 3');

TRUNCATE TABLE faculty RESTART IDENTITY

SELECT * FROM faculty

DROP TABLE faculty 