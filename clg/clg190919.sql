create table employee_42(
  empno varchar(6) primary key,
  name varchar(10),
  mgr_no varchar(6)
);
insert into employee_42 values('E001','Basu','E002');
insert into employee_42 values('E002','Rukmani','E005');
insert into employee_42 values('E003','Carol','E004');
insert into employee_42 values('E004','Cyntheia',null);
insert into employee_42 values('E005','Ivan',null);

--minus
--employee who ain't manager
select empno from employee_42 minus select mgr_no from employee_42;
select name,empno, from employee_42 minus select name,mgr_no from employee_42;


--intersection
--employee who are manager
select empno from employee_42 intersect select mgr_no from employee_42;


--alter table employee_42 modify mgr_no varchar2(6) references employee_42(empno);

--index, view, sequence

--            index
--          /         \
--     simple          composite
--    /     \           /     \
--unique  duplicate  unique  duplicate

--simple
--create <unique> index <index_name> on <table_name>(<column_name>);


--composite
--create <unique> index <index_name> on <table_name>(<column_name1>,<column_name2>,...);

--droping index
--drop index <index_name>

--view
--i) read only 
--ii)updatable
/*
A table contains data, a view is just a SELECT statement which has been saved in the database (more or less, depending on your database).

The advantage of a view is that it can join data from several tables thus creating a new view of it.
Say you have a database with salaries and you need to do some complex statistical queries on it.

Instead of sending the complex query to the database all the time, you can save the query as a view and then SELECT * FROM view

materalized view: it is physically on the database.
*/

--DCL
--grant, revoke
--grant all to <user>
/*
plsql block

declare

begin

exception (optional)

end
*/

