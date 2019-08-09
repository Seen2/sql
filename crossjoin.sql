create table foods(
name varchar(14),
price integer
);
create table drinks(
name varchar(14),
price integer
);

Insert into foods values('Sandwich',50);
Insert into foods values('Burger',70);
Insert into foods values('Pizza',80);
Insert into foods values('Chowmin',30);


Insert into drinks values('Cofee',10);
Insert into drinks values('Cold Drink',20);
Insert into drinks values('Milk Shake',30);

alter table drinks rename column name to dname;
alter table drinks rename column price to dprice;


/*cross join
--->n*m number of rows
*/

select * from foods cross join drinks;
select name, dname, (price+dprice)*0.9 as combopack from foods cross join drinks;
select name || ' + ' || dname || '-combo' as combomeal, (price+dprice)*0.9 as combopack from foods cross join drinks;
