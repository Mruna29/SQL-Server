create database employee121
use employee121

create table emp_record1
(
id int identity(1,1),
Name varchar(50),
Gender varchar(50),
Department int
);

insert into emp_record1(Name,Gender,Department)values('Manu','Female',101);
insert into emp_record1(Name,Gender,Department)values('Shone','Male',102);
insert into emp_record1(Name,Gender,Department)values('Madhav','Male',103);

select * from emp_record1;
/* Stored procedure in SQL without parameters*/
create procedure getemp1
as
begin
select * from emp_record1 where Name='Manu'
end
exec getemp1

/*stored procedure with parameteres*/

create procedure getemp2
@dept int,
@gen varchar(50)
as
begin
select * from emp_record1 where Department=@dept and Gender=@gen
end

drop procedure getemp2

exec getemp2 102,'Male' 






