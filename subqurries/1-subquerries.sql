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
 

create table passengers(
    id INTEGER PRIMARY KEY,
    name varchar(20),
    flightID INTEGER references flights(id) NOT NULL
);

insert into passengers values(1,'MacGyver',2);
insert into passengers values(2,'Jack',2);
insert into passengers values(3,'Riley',9);
insert into passengers values(4,'Bozer',9);
insert into passengers values(5,'MacGyver',9);
insert into passengers values(6,'Jack',3);
insert into passengers values(7,'Riley',3);
insert into passengers values(8,'MacGyver',3);
insert into passengers values(9,'Bozer',4);
select journey, duration from 
(select f.origin || ' - ' || f.destination as journey, duration  from flights f order by duration asc) e where rownum <4;

select s.name, count(s.courseid) from students s group by s.name;

/*inline subqurries*/
select fid , count(pid) freq from
(select f.id as fid,p.flightid as pid from flights f left outer join passengers p on f.id=p.flightid) 
group by fid order by count(pid) desc ;
