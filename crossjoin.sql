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

/*cross join
--->n*m number of rows
*/

select foods.name as food_name, drinks.name as drink_name,
foods.price as food_price, drinks.price as drink_price 
from foods cross join drinks;
/*
don't use as for shorting table name
once shorten name for table use that name only
*/
select f.name as food_name, d.name as drink_name,
f.price as food_price, d.price as drink_price 
from foods f cross join drinks d;

select f.*, d.price as drink_price 
from foods f cross join drinks d;

alter table drinks rename column name to dname;
alter table drinks rename column price to dprice;


select * from foods cross join drinks;
select name, dname, (price+dprice)*0.9 as combopack from foods cross join drinks;
select name || ' + ' || dname || '-combo' as combomeal, (price+dprice)*0.9 as combopack from foods cross join drinks;
