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

/* sum of duration of flight from india(IN) and fron usa (US)*/

select sum(duration) from flights where origin='IN';
select sum(duration) from flights where origin='US';

/*group by makes
uses
aggricated column, column on which it have to be group by
aggricated column: column used aggrigated func.
don't select more column it will give you an error
*/

select origin,sum(duration) from flights group by origin;

