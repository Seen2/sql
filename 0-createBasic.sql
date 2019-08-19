CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
/* INSERT INTO flights VALUES(1,'IN','US',12);
INSERT INTO flights VALUES(2,'IN','NZ',12);
INSERT INTO flights VALUES(3,'US','NZ',12);
varchar for large datasize and char for small
integer for whole number
number allows to restrict the length or size of integer data
for deciamal number NUMBER(percision=5,scale=2)--->  _ _ _ . _ _  
    default goes to max limit
*/

SELECT * FROM flights;
SELECT Length(origin),Length(destination) FROM flights;
DESC flights;


/*college lab*/

create table student(
rollnumber number(12) primary key,
snmae varchar2(30),
dob date,
address varchar2(50)
);

SELECT owner, table_name FROM all_tables; /*show list of all table on computer*/
rename student to student_42;
desc student_42;

insert into student_42 values(1,'sb',systimestamp,'dsd');

insert into student_42 values(&r,'&sn','&d','&add'); /*interactive mode for char and date use '' and for number don't */

create view stud_42 as select * from student_42; /* point to same memory location */
SELECT owner, view_name FROM all_views; 
insert into stud_42 values(1,'sb',systimestamp,'dsd');


create table st_42 as select * from student_42; /* as backup of student_42 */

