1.  create table Teacher(t_id Number (10),t_name varchar2(10),phone Number(11),salary Number(7),email Varchar2(30),blood_group Varchar2(3),published_paper Number(2),designantion Varchar2(15));


2. Alter table Teacher add (depertment Varchar2(5),gender Varchar2(6));

3. Alter table Teacher RENAME COLUMN depertment to dept;

4. Alter table Teacher modify salary number (7,3);

5. Alter table Teacher drop column email;

6. Rename Teacher to Teachers;

7. Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(1 , 'Harry' , 123  , 455.866 , 'B+' , 2 , 'Lecturer' , 'CSE' , 'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(2,  'Ron'  , 456 , 245.78 , 'O+' , 1 , 'Lecturer', 'BBA' , 'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(3, 'Hermione' , 789 , 789.56 ,'A+' ,8 ,'Professor' , 'CSE' , 'Female');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(4, 'Malfoy' , 101 , 234.93 , 'O-' , 3 ,'Instructor' , 'LAW' ,'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(5 , 'Bill' , 102 , 999.78 , 'B-' ,7 , 'Professor' , 'EEE' ,'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(6 ,'Ginny' ,103 , 567.85 , 'A-' , 2 , 'Lecturer' ,'CSE', 'Female');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(7 ,'Hagrid' ,104, 242.89, 'AB+' , 0 , 'Instructor' , 'ENG' , 'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(8 ,'Cedric' ,105 , 567.88 , 'B+' , 7 , 'Lecturer' ,'CSE' , 'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(9 ,'Krum' ,106 ,667.34 , 'AB-',4 ,'Instructor' ,'LAW' ,'Male');
Insert into Teachers (t_id,t_name,phone,salary,blood_group,published_paper,designantion,dept,gender) Values
(10 ,'Neville' , 107 ,787.89 , 'O+' ,6 ,'Lecturer' ,'BBA','Male');


8. delete from teachers where published_paper<2;

9. update Teachers set designantion='Professor';
