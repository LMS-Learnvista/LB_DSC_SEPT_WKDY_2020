create database Demo;
use Demo;
create table Employee(Eid int, Emp_name varchar(255), Address varchar(255), City varchar(255), DOB date, Phone varchar(10), Email_id varchar(255));
describe Employee;
insert into Employee values(1,"Sonu","Vastral","Ahmedabad", '1999-05-03', '7854547855', 'nagarsonu159@gmail.com');
insert into Employee values(2,"Juveria","Kalupur","Ahmedabad", '1998-09-04', '8956231478', 'Juveriamaniar@gmail.com');
insert into Employee values(3,"kesha","Vastrapur","Ahmedabad", '1997-10-20', '9658423758', 'Keshadesai@gmail.com');
insert into Employee values(4,"Tanvi","Nicol","Ahmedabad", '1999-02-08', '7856942358', 'Tanvidhakecha@gmail.com');
insert into Employee values(5,"Surbhi","Market Road","Surat", '1999-08-18', '9458263756', 'Surbhidhanani@gmail.com');
insert into Employee values(6,"Jayshree","Apartment","Vadora", '1999-12-24', '968532147', 'Jayshreerathod@gmail.com');
insert into Employee values(7,"Anu","Nagarpet","Banglore", '1998-06-15', '8652347895', 'Anuagrawal@gmail.com');
insert into Employee values(8,"Vaishali","CTM","Ahmedabad", '1999-04-18', '9563284569', 'Vaishalyadav@gmail.com');
insert into Employee values(9,"Heena","Khokhora","Ahmedabad", '1999-02-28', '7852369412', 'Heenapatel@gmail.com');
insert into Employee values(10,"Divya","Maninagar","Ahmedabad", '1999-03-22', '7321569845', 'DivyaJennifier@gmail.com');
select * from Employee;

