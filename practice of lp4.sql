alter table <table> add constraint <constraint name> <constraint type> (<col>);

alter table student add constraint pk primary key (s_id);

alter table student add constraint nn not null (s_name);

alter table student modify s_name not null; 

alter table student add constraint uq unique (email);

alter table student add constraint fk foreign key (Deptno) references department (deptid);

alter table student
add check (Gender in ('M','F')); 

alter table student enable constraint pk primary key (s_id) ; 

alter table student add constraint ck Gender check (Gender in ('M','F')); 

alter table student
ADD CHECK (Gender='M'); 

alter table
   student
DISABLE constraint
   primary key;

alter table student disable constraint primary key;

alter table student drop SYS_C004372 check Gender;

ALTER TABLE student
DROP CHECK SYS_C004372 gender; 

alter table  

ALTER TABLE student
DROP CONSTRAINT SYS_C004366 Gender check;

select constraint_name,column_name from user_cons_columns where table_name='STUDENT';

select constraint_name,column_name from user_cons_columns where table_name='STUDENT';



create table department (deptid number (3)not null primary key, dept_name varchar(6) check(dept_name in('CSE','EEE','BBA','Eng','Arch')), budget number (6) default (0));


desc department;


create table student (s_id Number,s_name Varchar2(20), phone Number, Address Varchar2(50),Email Varchar2(30),credit_completed Number(3), course_completed Number(2), CGPA Number (3,2),Deptno number(5),Gender Varchar2(6));

drop table student;

desc student;