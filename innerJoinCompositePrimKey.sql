create table customers(
    name varchar(20),
    cid INTEGER PRIMARY KEY
);
create table recivers(
    rid INTEGER PRIMARY KEY,
    name varchar(20),
    acc INTEGER NOT NULL UNIQUE
);

create table transactions(
tid INTEGER PRIMARY KEY,
amt INTEGER,
rid INTEGER references recivers(rid) NOT null,
cid INTEGER references customers(cid) NOT null
);

insert into customers values('Kirti',1);
insert into customers values('Anshika',2);

insert into recivers values(1001,'Rohit',1077807);
insert into recivers values(1002,'Ankit',1077826);
insert into recivers values(1003,'Amalendu',1077805);

insert into transactions(tid,amt,rid,cid) values(10081901,30000,1001,1);
insert into transactions(tid,amt,rid,cid) values(10081902,20000,1001,2);
insert into transactions(tid,amt,rid,cid) values(10081903,20000,1003,2);
insert into transactions(tid,amt,rid,cid) values(10081904,10000,1001,1);
insert into transactions(tid,amt,rid,cid) values(10081905,22000,1001,2);
insert into transactions(tid,amt,rid,cid) values(10081906,30000,1003,1);


select c.name as customers,r.name recivers,t.amt,t.tid as "Transactoin Id." from
    transactions t inner join customers c on t.cid=c.cid
    inner join recivers r on t.rid=r.rid;

select * from customers;
select * from recivers;
select * from transactions;



select *
from
    customers a
        inner join
    transactions b
        on a.cid = b.cid
        inner join
    recivers c
        on b.rid = c.rid
