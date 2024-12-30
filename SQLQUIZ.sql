create schema Demo;
go

use QuizDB
go

create table Demo.Employees
(           
Id int primary key identity (1,1) not null,
Name nvarchar(50) not null,
Position nvarchar (50) not null,
Salary decimal (19,1) not null,
Department_Id int  not null,
Date_of_joining Datetime

)

go
create table Demo.Departments
(
Id int primary key identity (1,1) not null,
Name nvarchar (50) not null,
Location nvarchar(50)

)

insert into Demo.Employees
values ('John Doe', 'Manager', 6000, 1, '10-05-2020'),
       ('JJane Smith','Developer', 4500, 2,'15-06-2021'),
	   ('Alan Turing', 'Analyst', 4000, 3, '20-03-2022'),
	   ('Grace Hopper', 'sceintist', 7000, 1, '25-11-2019'),
	   ('Ada Lovelace', 'Developer', 5000, 2, '10-01-2023')



insert into Demo.Departments
values ('HR', 'New York'),
       ('IT', 'San Francisco'),
	   ('Finance', 'Chicago')


insert into Demo.Employees
values (' Zainab nabeel', 'Engineer' , 3000, 4, '30-12-2024')
  

select * from Demo.Employees

UPDATE Demo.Employees
Set Salary =5000
where Name= ' Jane Smith' 

Delete from Demo.Employees
where Department_Id=3

select * from Demo.Employees
where Department_Id =( select id from Demo.Departments where name= 'IT')

insert into Demo.Departments
values ( ' Marking ', 'Chicago')

select * from Demo.Departments
where location = ' New york' 

UPDATE Demo.Departments
SET location ='Boston'
where name = 'HR'

UPDATE Demo.Employees
SET Salary = Salary *1.10;

Delete from Demo.Employees
where Department_Id =( select id from Demo.Departments where name = 'Finance')

insert into Demo.Employees
values ( 'ahmad damra' , 'sql' , 5000, 2,GETDATE())

select * from Demo.Employees