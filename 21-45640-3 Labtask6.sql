create table address(ad_id number(4) Not null primary key,
		    d_city varchar2(20),
		    d_country varchar2(20));


create table doctor(d_id number(6) NOT NULL primary key,
		    d_name varchar2(10) NOT NULL,
		    d_speciality1 varchar2(10),
		    d_speciality2 varchar2(10),
		    ad_id number(6),
                constraint fKK foreign key (ad_id) references address(ad_id) );

create table medicine(m_id number (6) NOT NULL primary key, 
                      m_name Varchar2(10) NOT NULL,
                      m_company Varchar2(10),
                      d_id number(10),
                constraint medi foreign key (d_id) references doctor(d_id) );


create table pharmacy (p_id number (6) Not null primary key,
                       p_name varchar2(10),
                       p_location1 varchar2(10),
                       p_location2 varchar2(10));

create table FOREIGN (p_id number(10), m_id number(10));

alter table FOREIGN add constraint f foreign key (m_id) references medicine (m_id);


insert into adrs values (52, 'DHAKA', 'BANGLADESH');
insert into adrs values (89, 'TEXAS', 'USA');
insert into adrs values (811, 'POKHRA', 'NEPAL');

insert into  pharmacy values (51100, 'S PHARMACY', 'KHILKHET', 'BADDA');
insert into  pharmacy values (47123, 'U PHARMA', 'KURIL', 'UTTARA');
insert into  pharmacy values (12789, 'G PHARMACY', 'GULSHAN-1', 'GULSHAN-2');

insert into doctor values (2297, 'PROTTOY', 'NUROLOGIST', 'CARDIOLOGIST', 4500);
insert into doctor values (2298, 'PRATAP', 'HEARTSPECIALIST', 'PYCHOLOGIST', 4770);
insert into doctor values (2299, 'PRONOY', 'ORTHOPEDIC', 'CHILD SPECIALIST', 8411);

insert into medicine values (1101, 'MYLOX', 'SQUARE', 5591);
insert into medicine values (2202, 'DIXER', 'ACI', 4298);
insert into medicine values (3033, 'PARICEL', 'RENETA', 2599);

insert into FOREIGN values (51100, 1101);
insert into FOREIGN values (47123, 2202);
insert into FOREIGN values (12789,3033);




