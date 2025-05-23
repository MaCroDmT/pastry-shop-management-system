create table publishers (pubid Number (20) not null primary key, pname varchar2 (40), email1 varchar2(50), email2 varchar2(50),phone1 number (30),phone2 number (30));  

create table subjects (subid number (20) not null primary key, sname varchar2(50));

create table titles ( titleid Number (20) not null primary key, title varchar2(50),pubdate date, cover varchar2 (40), price number(30),pubid number (10), subid number (20), constraint fkl foreign key (pubid) references publishers (pubid),constraint pu foreign key (subid) references subjects (subid));

create table titleauthors (authid  number (10) not null primary key , titleid number (20) , importance  varchar2 (50), constraint ad foreign key (authid) references titleauthors (authid), constraint tt foreign key(titleid) references titles (titleid)); 

create table authors (auid number (20) not null primary key, aname varchar2 (40), email1 varchar2 (50),email2 varchar2 (50), phone1 number(30),  phone2 number (30),authid number (20), constraint ati foreign key (authid) references titleauthors (authid));