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
name VARCHAR(20),
flightid Integer references flights(id)
);

INSERT INTO students VALUES(1,'Alex',2);
INSERT INTO students VALUES(2,'MacGyver',2);
INSERT INTO students VALUES(3,'Isac',4);
INSERT INTO students VALUES(4,'Nick',9);

/*
inner join is used to relate two table on same values of foreign key
on basis of cond'n
same as cross join but filtered on basis of condition
*/


select s.stid,s.name,s.flightid as std_flight_id, f.id as flightId from students s inner join flights f on s.flightid=f.id;

select s.stid,s.name,s.flightid as std_flight_id, f.id as flightId from students s cross join flights f where s.flightid=f.id;

select s.stid,s.name,s.flightid as std_flight_id from students s inner join flights f on s.flightid=f.id;
