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

/*multi aggrigate func in single querry*/
select * from flights;
select origin,sum(duration),max(duration),avg(duration),min(duration) from flights group by origin;

/*orderby and group by
only use order by with o/p columns of group by
*/
select * from flights;
select origin,sum(duration),max(duration),avg(duration),min(duration) from flights group by origin order by MIN(DURATION) desc ;
/*two combination for order by*/
select origin,destination, sum(duration) from flights group by origin, destination ;

/*
neseted aggrigate functions
always use with group by
2 level of nesting only
*/
select origin , count(id) from flights group by origin
select max(count(id)) from flights group by origin 
/* err: bcoz we can't use where for filtering of aggrigated column
use having only with aggrigated column else use where 
its okay to use diffrent aggrigate func in having and group by
select origin , count(id) from flights where count(id)>=1 group by origin */
select origin , count(id) from flights group by origin having count(id)>=1            


