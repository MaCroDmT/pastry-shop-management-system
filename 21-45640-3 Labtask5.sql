    VIEW

1 create table Teacher101 (tID Number(10), tName Varchar2(10), tDepartment Varchar2(10));

2 insert into Teacher101 values(1, 'PROTTOY', 'CS');
  insert into Teacher101 values(2, 'PRONOY','CS');
  insert into Teacher101 values(3,'PRANTO','ETE');
  insert into Teacher101 values(4,'ANGSHU','IPE');
  

3 create view Teacher101View 
  as select tName,tDepartment
  from Teacher101;

4 select * from Teacher101View;

5 select tName from Teacher101View
  where tDepartment='CS';

6 drop view Teacher101View;


SEQUENCE 

1  create sequence DEPT_ID_SEQ
   increment by 10
   start with 60
   maxvalue 200
   nocycle
   nocache;

2  select sequence_name,max_value,increment_by,last_number 
   from user_sequences;

3  insert into dept(deptno, dname, loc) values(dept_deptno.nextval,'Finance', 'DHAKA');

4  select	dept_deptno.currval
   from dual;

5  select	dept_deptno.nextval
   from dual;

USER ACCESS CONTROL

1 create user Rahul identified by ret23erz;

2 create role Accounts;

3 grant create table, create view, create sequence 
  to Accounts;

4 grant Accounts to Rahul;

5 alter user Rahul
  identified by rec34tg;





