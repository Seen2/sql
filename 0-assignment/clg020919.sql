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
  --  to_char,to_date,to_number,substr,soundex,avg,min,max,power,abs,count,sum,round
  --example
  select 100*to_number(substr('S1123',2)) from dual;
  -->112300                              
  select power(2,3) Num from dual;
  -->8
  select abs(-20) Num from dual;
  -->20
  select sum(dept) from std_42;
  -->9
  select round(23.333333,2) from dual;
  -->23.33
  select to_char(sysdate,'yy-mm-dd dy HH:MM:SS') from dual;
  -->19-09-02 mon 03:09:04
  select to_char(12342231,'09999999999999') from dual;
  -->00000012342231
  select to_char(12342231,'09999999999999') from dual;
  -->12342231
  
                              
  
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


