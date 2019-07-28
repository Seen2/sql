CREATE TABLE students(
stId INTEGER PRIMARY KEY,
name VARCHAR(20)
);

CREATE TABLE courses(
courseId INTEGER PRIMARY KEY,
courseName VARCHAR(20)
);
CREATE TABLE marksdetails(
courseId INTEGER  REFERENCES courses(courseId),
stid INTEGER REFERENCES students(stid) ,
marks INTEGER
);

INSERT INTO students VALUES(1,'Alex');
INSERT INTO students VALUES(2,'MacGyver');
INSERT INTO courses VALUES(1001,'Science');
INSERT INTO courses VALUES(2001,'Defence');
INSERT INTO marksdetails VALUES(1001,1,100);
INSERT INTO marksdetails VALUES(2001,1,40);
INSERT INTO marksdetails VALUES(1001,1,35);
INSERT INTO marksdetails VALUES(2001,1,90);

drop table marksdetails




DESC StudentS;
SELECT * FROM StudenTS;

DESC courseS;
SELECT * FROM courseS;

DESC  marksdetails;
SELECT * FROM marksdetails;

