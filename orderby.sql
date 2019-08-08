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
drop  table flights;


select * from flights order by id asc; /* default*/
select * from flights order by id desc;
select * from flights order by origin ; /*= select * from flights order by 2 ; column number*/
select * from flights order by id,duration desc; /* first sorted by id then subsorted by duration*/

/*by default null are treated as highest*/

select * from flights order by priority;


/*by default null are treated as highest to fix*/

select * from flights order by nvl(priority,0);

select * from flights where duration<12  order by nvl(priority,0) ;

