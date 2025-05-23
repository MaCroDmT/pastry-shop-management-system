Data Constraints


1 create table department (deptid number (3)not null primary key, dept_name varchar(6) check(dept_name in('CSE','EEE','BBA','Eng','Arch')), budget number (6) default (0));


2 create table course (crs_id number (4) primary key,crs_name varchar2(20) NOT NULL,deptid number(3), constraint nn  foreign key (deptid) references department(deptid));



Edit Constraints


1 create table student (s_id Number,s_name Varchar2(20), phone Number, Address Varchar2(50),Email Varchar2(30),credit_completed Number(3), course_completed Number(2), CGPA Number (3,2),Deptno number(5),Gender Varchar2(6));

2 alter table student add constraint pk primary key (s_id);

3 alter table student modify s_name not null; 

4 alter table student add constraint uq unique (email);

5 alter table student add constraint fk foreign key (Deptno) references department (deptid); 

6 alter table student add check (Gender in ('M','F')); 

7 alter table student DISABLE constraint pk;

8 alter table student disable constraint SYS_C004371;  

9 select constraint_name,column_name from user_cons_columns where table_name='STUDENT';

10 alter table student enable constraint pk;


