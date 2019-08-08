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
drop  table flights;


select * from flights order by id asc; /* default*/
select * from flights order by id desc;
select * from flights order by origin ;
select * from flights order by id,duration desc; /* first sorted by id then subsorted by duration*/
