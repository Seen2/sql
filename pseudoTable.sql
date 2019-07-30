CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
INSERT INTO flights(id,origin,destination,duration) VALUES(1,'IN','US',12);
INSERT INTO flights(id,origin,destination,duration) VALUES(2,'IN','NZ',12);
INSERT INTO flights(id,origin,destination,duration) VALUES(3,'US','NZ',12);

select * from flights;
select id,origin Departure,destination as "Destination" ,duration  from flights where origin='IN' and duration=12;

select id,origin Departure,destination as "Destination" ,duration  from flights where id between 1 and 3;
select id,origin Departure,destination as "Destination" ,duration  from flights where id in (2,3);
alter table flights drop column comoany;
alter table flights rename column comoany to company;
select id,origin Departure,destination as "Destination" ,duration  from flights where company is NULL;
alter table flights modify company varchar(20) default 'Air India';
INSERT INTO flights(id,origin,destination,duration) VALUES(4,'US','NZ',10);
INSERT INTO flights(id,origin,destination,duration) VALUES(5,'US','NZ',9);
INSERT INTO flights(company,id,origin,destination,duration) VALUES('iN',9,'US','NZ',9);

select sysdate from dual;

select * from dual;

/*is via-media to fetch some common table it doesnt have anything in it*/

/*
sysdate, sytime stamp are system  and called as pseudo column
*/


select sysdate,systimestamp,user from dual;
/* not good*/
select sysdate,systimestamp,user,id from flights;







