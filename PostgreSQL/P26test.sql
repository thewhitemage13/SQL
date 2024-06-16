CREATE TABLE students
(
    student_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_surname VARCHAR(264) NOT NULL,
    student_first_name VARCHAR(264) NOT NULL,
    student_last_name VARCHAR(264) NOT NULL
);

CREATE TABLE teachers
(
    teacher_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    teacher_surname VARCHAR(264) NOT NULL,
    teacher_first_name VARCHAR(264) NOT NULL,
    teacher_last_name VARCHAR(264) NOT NULL
);

CREATE TABLE group_academy
(
    group_academy_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    group_academy_name text NOT NULL
);

CREATE TABLE group_academy_student
(
	group_academy_id BIGINT REFERENCES group_academy(group_academy_id),
	student_id BIGINT REFERENCES students(student_id),
	PRIMARY KEY(group_academy_id, student_id)
);

CREATE TABLE home_work_grades
(
    home_work_grade_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    home_work_grade INTEGER ARRAY,
    student_id BIGINT REFERENCES students(student_id) NOT NULL
);

CREATE TABLE exams_grade
(
    exams_grade_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    exams_grade INTEGER ARRAY,
    student_id BIGINT REFERENCES students(student_id) NOT NULL
);

CREATE TABLE practics_grade
(
    practic_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    practic_grade INTEGER ARRAY,
    student_id BIGINT REFERENCES students(student_id) NOT NULL
);