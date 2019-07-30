/*
numeric
  round, abs, floor, ceil
manipulate text data
  upper,lower, concat, length, substr
perfor data coversion
  to_char, to_date, to_number
perform date operation
  add_months,months_between
provide default value of null
  nvl
compute aggregates
  avf,count, sum, min, max
*/

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


/* some are multi row and some are called single row function as result output in one row for all and 
output row by row for each row respectively.
*/
/*text manipulation*/
select upper(company) from flights;
select lower(company) from flights;

/*ignore null values and for both null gives null*/
select concat(concat(origin,' to '),destination) from flights;
select origin ||' to ' || destination from flights;

/*sustr subtstr(string, start char , upto what length(defaault length of str aftr start index))  */
select substr(origin,1,2)  as result from flights;
select substr(origin,2,2)  as result from flights;/*--> one char*/

/*to_char
use for formting string
if patter is smaller than input returns #####
commas get ommite if they are first char of op
*/
select to_char('123.65') as unformat from dual;
/*formating only change visible to display no data changes
*/
select to_char('123.655','999.99') as unformat from dual;
select to_char('111123.655','9,99,999.99') as unformat from dual;
select to_char('1111123.655','9,999,999.99') as unformat from dual;





/*numeric function */
select sum(duration) from flights;
select avg(duration) from flights;
select abs(duration) from flights;
select floor(duration*90/100) as ninties from flights;


