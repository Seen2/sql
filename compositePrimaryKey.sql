CREATE TABLE students(
stId INTEGER PRIMARY KEY,
name VARCHAR(20)
);

CREATE TABLE courses(
courseId INTEGER PRIMARY KEY,
courseName VARCHAR(20)
);
CREATE TABLE marksdetails(
    stid INTEGER REFERENCES students(stid),
    courseId INTEGER REFERENCES courses(courseID),
    marks INTEGER,
    PRIMARY KEY(stid,courseId) /* here is composite primary key having more than and no coulmn can have null*/
);


INSERT INTO students VALUES(1,'Alex');
INSERT INTO students VALUES(2,'MacGyver');
INSERT INTO courses VALUES(1001,'Science');
INSERT INTO courses VALUES(2001,'Defence');
INSERT INTO marksdetails VALUES(1,1001,100);
INSERT INTO marksdetails VALUES(1,2001,40);
INSERT INTO marksdetails VALUES(2,1001,35);
INSERT INTO marksdetails VALUES(2,2001,90);





DESC StudentS;
SELECT * FROM StudenTS;

DESC courseS;
SELECT * FROM courseS;

DESC  marksdetails;
SELECT * FROM marksdetails;
