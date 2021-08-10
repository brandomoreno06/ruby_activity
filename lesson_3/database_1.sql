-- CREATE TABLE
CREATE TABLE students (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name character varying(255) NOT NULL,
  middle_name character varying(255) DEFAULT 'Blank',
  last_name character varying(255) NOT NULL,
  age integer NOT NULL,
  location text NOT NULL
);


--INSERT RECORDS
INSERT INTO students (first_name, last_name, age, location)
VALUES ('Juan', 'Cruz', 18, 'Manila');

INSERT INTO students (first_name, last_name, age, location)
VALUES ('Anne', 'Wall', 20, 'Manila');

INSERT INTO students (first_name, last_name, age, location)
VALUES ('Theresa', 'Joseph', 21, 'Manila');

INSERT INTO students (first_name, last_name, age, location)
VALUES ('Isaac', 'Gray', 19, 'Laguna');

INSERT INTO students (first_name, last_name, age, location)
VALUES ('Zack', 'Matthews', 22, 'Marikina');

INSERT INTO students (first_name, last_name, age, location)
VALUES ('Finn', 'Lam', 25, 'Manila');



--UPDATE TABLE
UPDATE students SET first_name='Ivan', middle_name='Ingram', last_name='Howard', age=25, location='Bulacan' WHERE id=1;


--DELETE LAST RECORD
DELETE FROM students WHERE id=(SELECT MAX(id) FROM students);


--DISPLAY THE COUNT OF ALL STUDENTS
SELECT COUNT(id) FROm students;


--DISPLAY ALL STUDENTS WITH LOCATION "MANILA"
SELECT * FROM students WHERE location='Manila';


--DISPLAY THE AVERAGE AGE OF ALL STUDENTS
SELECT AVG(age) FROM students;


--DISPLAY ALL STUDENTS ORDER BY AGE DESCENDING;
SELECT * FROM students ORDER BY AGE DESC;