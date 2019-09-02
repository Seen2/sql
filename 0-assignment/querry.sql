--03. On Retrive
--name of all clients
select name from client_master;
--entire content of client master
select * from client_master;
--name and cities of all clients
select name,city from client_master;
--all products
select description from product_master;
-- clients from bombay
select name from client_master where city='Bombay';
-- salesman with salary=3000
select salesman_name from salesman_master where sal_amt=3000;


--04. updating
-- client_no='C00005' city to bomabay
update client_master set city='Bombay' where  client_no='C00005';
--change bal_due of client_no='C00001' to 1000
update client_master set bal_due=1000 where  client_no='C00001';
--change price of 1.22 Floppies to 950.00
update product_master set sell_price=950.00 where  description='1.22 Floppies';
--change city of salesman to Mumbai
update salesman_master set city='Mumbai' where  city='Bombay';

--05. deleting 
--delet slaseman where sal=3000
delete from salesman_master where sal_amt=3000;
--delete product whose quantity on hand equal to 100
delete from product_master where qt_on_hand=100;
--delete clients wher state is tamil nadu
delete from client_master where state='Tamil Nadu';

--06. Alter
alter table client_master add(telephone number(10));
alter table product_master modify sell_price number(10,2);
                                               
--07. destroy table client_master with its data
drop table client_master;

--08. rename salesman_master to sman_master;
rename salesman_master to sman_master;





