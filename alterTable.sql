CREATE TABLE students(
    name VARCHAR(20),
    roll INTEGER
);

INSERT INTO students VALUES('Shintu',9);

SELECT * FROM students;
DESC students;

ALTER TABLE students ADD (stdId INTEGER) ;
/*for add and delete to alter it with more than one column use parenthesis: ADD(stdid INTEGER,intro VARCHAR(150))*/
UPDATE students SET stdId=009 WHERE roll=9;
ALTER TABLE students DROP(roll) ;

/*
to change data type(only if column is empty) or size of var we can also use ALTER .
*/
ALTER TABLE students ADD roll INTEGER ;
ALTER TABLE students MODIFY roll NUMBER(3) ;
ALTER TABLE students RENAME COLUMN stdid TO sid;

drop table students

ALTER TABLE flight ADD CONSTRAINT id_flight_prim primary  key(flightid);


--disable and enable constraint
alter table TableName desable constraint constraintname;
alter table TableName enable constraint constraintname;

