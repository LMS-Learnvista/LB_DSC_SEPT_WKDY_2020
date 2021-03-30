use demo;
create table Emp_Sal(EID int, DEPT varchar(50), DESI varchar(50), DOJ date, 
SALARY int);
describe Emp_sal;
drop table Emp_sal;
insert into Emp_sal values(10,"HR","ASSO","2017-05-03",10000);
insert into Emp_sal values(11,"MIS","MGR","2018-06-04",15000);
insert into Emp_sal values(12,"OPS","VP","2018-11-03",20000);
insert into Emp_sal values(13,"IT","DIR","2019-09-22",25000);
insert into Emp_sal values(14,"ADMIN","MGR","2019-07-18",30000);
insert into Emp_sal values(15,"TEMP","DIR","2020-02-10",35000);
insert into Emp_sal values(16,"TEMP","VR","2021-01-14",40000);
select * from Emp_sal;
update Emp_sal set SALARY= SALARY + (SALARY * 10 / 100);












