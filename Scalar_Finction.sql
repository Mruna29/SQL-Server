/*Functions in SQL*
Step1 : declare variables
step2 : create function with block of code
step3 : create table with all colimns you want in that table with correct datatypes
step 4: insert values in table
step 5: show the whole table
*/

declare @no1 float;
declare @no2 float;
declare @no3 float;

create function totalr
(@no1 float,@no2 float,@no3 float)
returns float
as
begin
return(@no1+@no2+@no3)
end

create function cgpa1
(@no1 float,@no2 float,@no3 float)
returns float
as
begin
return(dbo.totalr(@no1,@no2,@no3)/3)
end

create table mark2
(
roll_no int identity(1,1) not null primary key,
Name varchar(100),
Marathi int,
Hindi int,
English int,
Totalm as dbo.totalr(Marathi,Hindi,English),
Average as dbo.cgpa1(Marathi,Hindi,English)
);

 insert into mark2(Name,Marathi,Hindi,English)values('Mrunmayee',40,41,42);
 insert into mark2(Name,Marathi,Hindi,English)values('Shalmali',50,51,52);
 insert into mark2(Name,Marathi,Hindi,English)values('Shree',60,61,62);
 insert into mark2(Name,Marathi,Hindi,English)values('Ram',70,71,72);
 
 select * from mark2;