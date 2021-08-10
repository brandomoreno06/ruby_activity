-- CREATE TABLE
CREATE TABLE students (
  id integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  first_name character varying(255) NOT NULL,
  middle_name character varying(255) NOT NULL,
  last_name character varying(255) NOT NULL,
  age integer NOT NULL,
  location text NOT NULL
);


--UPDATE TABLE
INSERT INTO students (first_name, middle_name, last_name, age, location)
VALUES ('Ivan', 'Ingram', 'Howard', 25, 'Bulacan');

INSERT INTO students (first_name, middle_name, last_name, age, location)
VALUES ('Avion', 'Middle', 'School', 25, 'Pampanga');



--DELETE LAST RECORD
DELETE FROM students WHERE id=(SELECT MAX(id) FROM students);