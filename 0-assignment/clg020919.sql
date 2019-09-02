create table std_42(
roll number(2),
name varchar2(19),
dept number(2)
);

insert into std_42 values(1,'AB',2);
insert into std_42 values(5,'BD',1);
insert into std_42 values(6,'BN',1);
insert into std_42 values(7,'ANB',3);
insert into std_42 values(6,'XY',2);

--select name, dept having dept count is grater than 1

select name ,dept from std_42 where dept in (select dept from std_42 group by dept having count(dept)>1);


 -- inbuilt func
  --  to_char,to_date,substr,soundex,avg,min,max,power,abs,count,sum,round
  
--String
      --length
      select length('chandrayan') from dual;
      -->10

      --SUBSTR
      select substr('chandrayan',3,5) from dual;
      --> andra
      select substr('chandrayan',-1,-5) from dual;
      --> ''

      -- trim
      select ltrim('nnchandrayann','n') from dual;
      -->chandrayannn
      select rtrim('nnchandrayann','n') from dual;
      -->nnchandraya

      --padding func
      select rpad('chandrayan',12,'$') from dual;
      -->chandrayan$$
      select rpad('chandrayan',7,'$') from dual;
      -->chandrayan
      select lpad('chandrayan',12,'$') from dual;
      -->$$andrayan
      select lpad('chandrayan',7,'$') from dual;
      -->chandra


