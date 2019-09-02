create table client_master(
client_no varchar2(6),
name varchar2(20),
addres1 varchar2(30),
addres2 varchar2(30),
city varchar2(15),
pincode number(8),
state varchar2(15),
bal_due number(10,2)
);

create table product_master(
product_no varchar2(6),
description varchar2(15),
profit_percent number(4,2),
unit_measure varchar2(10),
qty_on_hand number(8),
record_lvl number(8),
sell_price number(8,2),
cost_price number(8,2)
);

create table salesman_master(
salesman_no varchar2(6),
salesman_name varchar2(20),
addres1 varchar2(30),
addres2 varchar2(30),
city varchar2(20),
pincode number(8),
state varchar2(15),
sal_amt number(8,2),
tgt_to_get number(6,2),
ytd_to_sales number(6,2),
remarks varchar2(60)
);
