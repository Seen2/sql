select to_char(sysdate) as unformateddate from dual;
/*Indian format*/
select to_char(sysdate,'dd/mm/yy') as formateddate from dual;
/*american format*/
select to_char(sysdate,'mm/dd/yy') as formateddate from dual;

/*
Dy    -> Abbreviated name of the day -> Wed
Day   ->  Full name of the day       -> Wednesay
DD    ->  1-31                       -> 01
DDD   ->  1-366                      -> 250
MM    ->  1-12                       -> 03
Mon   -> Abbreviated name of Month   -> Mar
Month -> Full name                   -> March
YYYY  -> Four digit                  -> 2020
YY    -> Two digit                   -> 20

*/
select to_char(sysdate,'Day DD Month YYYY') as formateddate from dual;
select to_char(sysdate,'Dy DD Mon YYYY') as formateddate from dual;
select to_char(sysdate,'Day') as formateddate from dual;
select to_char(sysdate,'Dy') as formateddate from dual;
