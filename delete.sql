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

update flights set company='JET AIRWAYS' where  id between 1 and 3;
select * from flights;

/*delete all tables*/

delete from flights;/*= delete flights*/

update flights set company=NULL ;/*cant delete a column from table so set all to null*/

truncate table flights ;/*= delete flights and create what lefts of*/


