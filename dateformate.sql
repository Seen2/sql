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

/*
to_date: formated string to date
Pattern ain't require when input is default DD-MM-YY
correct pattern must used
parse if / instead of _ - or other chars

*/


select to_date('01-09-2020', 'MM/DD/YY') as dt from dual;
select to_date('01-09-2020', 'DD/MM/YY') as dt from dual;
select to_date('01-09-20', 'DD-MM-YY') as dt from dual;
/* err:
    select to_date('01-09-2020', 'DayMM/YY') as dt from dual;
    select to_date('01-09-20', 'Day/MM/YY') as dt from dual;
*/
select to_date('06-Mon-08-18', 'DD/Dy/MM/YY') as dt from dual;



