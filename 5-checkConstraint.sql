CREATE TABLE student(
    name VARCHAR(20),
    gender VARCHAR(1) CHECK(gender IN('M','F','X')),
    age INTEGER CHECK(age>10)
);
INSERT INTO Student VALUES('Alex','M');

/*
will cause error
INSERT INTO Student VALUES('Alex','T');
but NULL can be inserted

common check are IN LIKE BETWEEN AND OR NOT > < etc

*/

DESC Student;
SELECT * FROM Student;

