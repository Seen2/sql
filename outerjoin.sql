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
INSERT INTO students VALUES(3,'Jack');
INSERT INTO students VALUES(4,'Jakob');
INSERT INTO courses VALUES(1001,'Science');
INSERT INTO courses VALUES(2001,'Defence');
INSERT INTO courses VALUES(3001,'Art');

INSERT INTO marksdetails VALUES(1001,1,35);
INSERT INTO marksdetails VALUES(2001,1,90);
INSERT INTO marksdetails VALUES(1001,2,100);
INSERT INTO marksdetails VALUES(2001,2,90);
INSERT INTO marksdetails VALUES(2001,3,90);
INSERT INTO marksdetails(courseid) VALUES(3001);


select * from students;

select * from courses;
select * from marksdetails;


/*
left outer join will give all values from left table
adhusting with null values
*/
select s.name,m.courseid,m.marks from students s left outer join marksdetails m on s.stid=m.stid;
select s.name,m.courseid,m.marks from students s inner join marksdetails m on s.stid=m.stid;

select s.name,count(m.courseid) from students s inner join marksdetails m on s.stid=m.stid group by s.name,m.stid;
select s.name,count(m.courseid) from students s left outer join marksdetails m on s.stid=m.stid group by s.name,m.stid;


select s.name,m.courseid,m.marks from students s inner join marksdetails m on s.stid=m.stid;
select s.name,m.courseid,m.marks from marksdetails m left outer join students s on s.stid=m.stid;
/*
outer join
left -> right
simply replace left key word with right and swap tables name
*/
select s.name,m.courseid,m.marks,m.stid from marksdetails m right outer join  students s on s.stid=m.stid;

/*
outer join
null value from both sides

*/
select s.name,m.courseid,m.marks,m.stid from marksdetails m full outer join  students s on s.stid=m.stid;

/*outer join with filter
only apply filter on the side of join
ie. for left join apply filter on left table
*/

select s.name,m.courseid,m.marks,m.stid from marksdetails m full outer join  students s on s.stid=m.stid where m.courseid in (2001,3001);




