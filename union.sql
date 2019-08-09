CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL,
    dateofFight DATE,
    timeOfTakeup TIMESTAMP
);
INSERT INTO flights VALUES(1,'IN','US',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(2,'IN','NZ',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(3,'US','NZ',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(4,'IN','NZ',10,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(5,'IN','US',12,null, SYSTIMESTAMP);
alter table flights add priority Integer;
INSERT INTO flights VALUES(6,'IN','NZ',10,'30-Jul-2018', SYSTIMESTAMP,10);
INSERT INTO flights VALUES(7,'IN','NZ',10,'30-Jul-2018', SYSTIMESTAMP,9);
INSERT INTO flights VALUES(8,'NZ','US',10,'30-Jul-2018', SYSTIMESTAMP,9);
INSERT INTO flights VALUES(9,'NZ','IN',8,'30-Jul-2018', SYSTIMESTAMP,1);

CREATE TABLE students(
stId INTEGER PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO students VALUES(1,'Alex');
INSERT INTO students VALUES(2,'MacGyver');
INSERT INTO students VALUES(3,'Isac');
INSERT INTO students VALUES(4,'Nick');

/*
number of column in both output should be same to make union
takes column name from first result
*/
select origin || ' - ' || destination as Flight from flights where origin like 'I%' or destination like '%S'
UNION
select name from students where name like 'I%' or name like 'M%';

select origin || ' - ' || destination as SearchResults from flights where origin like 'I%' or destination like '%S'
UNION
select name as SearchResults from students where name like 'I%' or name like 'M%';

select origin || ' - ' || destination as SearchResults, 'Flights' as source from flights where origin like 'I%' or destination like '%S'
UNION
select name as SearchResults, 'students' as source from students where name like 'I%' or name like 'M%';
