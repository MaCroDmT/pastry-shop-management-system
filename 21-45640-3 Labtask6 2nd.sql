create table address(a_id number(4) Not null primary key,
		    a_city varchar2(20),
		    a_country varchar2(20));

insert into address values(123,'Peace land city ','PEACELAND');
insert into address values(124,'RIMTENC ','PEACELAND');
insert into address values(1213,'DOHA ','QATAR');
insert into address values(122,'DHAKA ','BANGLADESH');

create table doctor(d_id number(6) NOT NULL primary key,
		    d_name varchar2(10) NOT NULL,
		    d_speciality1 varchar2(10),
		    d_speciality2 varchar2(10),
		    a_id number(6),
                constraint dck foreign key (a_id) references address(a_id));

insert into doctor values(12,'PROTTOY ','ORTHO','CARDIO',123);
insert into doctor values(124,'PRATAP ','ORAL','FECO',123);
insert into doctor values(125,'PRONOY ','SKIN','EYE',124);
insert into doctor values(122,'BONHI ','FORENSIC','BONESPEC',123);

create table medicine(m_id number (6) NOT NULL primary key, 
                      m_name Varchar2(10) NOT NULL,
                      m_company Varchar2(10),
                      d_id number(10),
                constraint medicine foreign key (d_id) references doctor(d_id));

insert into medicine values(4455,'DIXER','ACI',12);
insert into medicine values(4456,'XLDRIN','ACI',124);
insert into medicine values(4457,'REVERSAIR','ACI',122);
insert into medicine values(4458,'RIVOTRIL','ACI',12);
insert into medicine values(4459,'PARICEL','ACI',122);
insert into medicine values(4460,'ACICAL-D','ACI',125);
insert into medicine values(4461,'BIOCAL-D','ACI',125);
insert into medicine values(4462,'TENOCAB','ACI',125);


create table pharmacy (p_id number (6) Not null primary key,
                       p_name varchar2(10),
                       p_location1 varchar2(10),
                       p_location2 varchar2(10));

insert into pharmacy values(991,'AZPHARMA ','DOHA','DHAKA');
insert into pharmacy values(992,'ARMEDI','DUBAI','DHAKA');
insert into pharmacy values(993,'PBPHARMA ','MASCOTT','DHAKA');
insert into pharmacy values(994,'PPPHARMA ','NAPIDO','DHAKA');
insert into pharmacy values(995,'RBPHARMA ','MASCOO','DHAKA');
insert into pharmacy values(996,'SKBPHARMA','SEOUL','DHAKA');

create table composite (p_id number (10),m_id number (12),constraint  dvs primary key(p_id, m_id));

insert into composite values(991,4455);
insert into composite values(992,445);
insert into composite values(9922,4455);
insert into composite values(931,4455);
insert into composite values(9912,4333);