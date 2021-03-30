use demo;
create table EMP(EMPID int, NAME varchar(50) not null, ADDR varchar(255), CITY varchar(50), 
PHNO varchar(10) unique, EMAIL varchar(50) check (EMAIL like '%_@gmail%.__%' or EMAIL like '%_@yahoo%.__%') , 
DOB date check (DOB<='1990-01-01') , primary key(EMPID));
create table Emp_Sal(EID int references EMP, DEPT varchar(50) default 'TEMP', DESI varchar(50), DOJ date, 
BASIC int check (BASIC>=20000));
describe EMP;
describe EMP_sal;
alter table Emp_sal add constraint FKId foreign key (EID) references EMP(EMPID);
insert into EMP values(1,"Sonu","Vastral","Ahmedabad", '7854547855', 'nagarsonu@gmail.com', '1989-05-03');
insert into EMP values(2,"Juveria","Kalupur","Ahmedabad", '8956231478', 'Juveriamaniar@gmail.com', '1987-09-04');
insert into EMP values(3,"kesha","Vastrapur","Ahmedabad", '9658423758', 'Keshadesai@gmail.com', '1988-10-20');
insert into EMP values(4,"Tanvi","Nicol","Ahmedabad", '7856942358', 'Tanvidhakecha@yahoo.com', '1989-02-08');
insert into EMP values(5,"Surbhi","Market Road","Surat", '9458263756', 'Surbhidhanani@yahoo.com', '1989-08-18');
insert into EMP values(6,"Jayshree","Apartment","Vadora", '968532147', 'Jayshreerathod@gmail.com', '1989-12-24');
insert into EMP values(7,"Anu","Nagarpet","Banglore", '8652347895', 'Anuagrawal@yahoo.com', '1988-06-15');
insert into EMP values(8,"Vaishali","CTM","Ahmedabad", '9563284569', 'Vaishalyadav@gmail.com', '1989-04-18');
insert into EMP values(9,"Heena","Khokhora","Ahmedabad", '7852369412', 'Heenapatel@gmail.com', '1989-02-28');
insert into EMP values(10,"Divya","Maninagar","Ahmedabad", '7321569845', 'DivyaJennifier@yahoo.com', '1989-03-22');
select * from EMP;
insert into Emp_sal values(1,"HR","ASSO","2017-05-03",50000);
insert into Emp_sal values(2,"MIS","MGR","2018-06-04",45000);
insert into Emp_sal values(3,"OPS","VP","2018-11-03",30000);
insert into Emp_sal values(4,"IT","DIR","2019-09-22",35000);
insert into Emp_sal values(5,"ADMIN","MGR","2019-07-18",33000);
insert into Emp_sal values(6,default,"DIR","2020-02-10",32000);
insert into Emp_sal values(1,"HR","MGR","2021-01-14",25000);
insert into Emp_sal values(2,"MIS","VP","2021-01-14",20000);
insert into Emp_sal values(4,"IT","ASSO","2021-01-14",28000);
insert into Emp_sal values(5,"ADMIN","DIR","2021-01-14",48000);
select * from Emp_sal;
select CITY,count(EMPID) as EMP_COUNT from EMP group by CITY order by COUNT(EMPID) desc ;
select NAME from EMP where EMAIL not like '%_@yahoo%.__%';
select DESI,sum(BASIC) as TOTAL_COST from EMP_SAL group by DESI order by sum(BASIC) desc;
