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

select id,origin ||' - '|| destination as journey ,round( duration/(select avg(duration) from flights),2) as durationratio from flights;
 
/*we can also make equivalent of outer join with subquerries
but we preffer join because while making selection of more columns it becomes weed.
first outer querry runs then inner.
*/

create table passengers(
    id INTEGER PRIMARY KEY,
    name varchar(20),
    flightID INTEGER references flights(id) NOT NULL
);

insert into passengers values(1,'MacGyver',2);
insert into passengers values(2,'Jack',2);
insert into passengers values(3,'Riley',9);
insert into passengers values(4,'Bozer',9);

select  p.id as id,p.name name, p.flightid as flight from 
passengers p left outer join flights f on p.flightid=f.id;

select  p.id as id,p.name name, 
(select id from flights f where p.flightid=f.id) as flight 
from passengers p;


select  p.id as id,p.name name, p.flightid as flight, f.origin || ' - ' || f.destination as journey from passengers p left outer join flights f on p.flightid=f.id;

select  p.id as id,p.name name,
    (select id from flights f where p.flightid=f.id) as flight,
    (select f.origin || ' - ' || f.destination from flights f where p.flightid=f.id) as journey
from passengers p;
